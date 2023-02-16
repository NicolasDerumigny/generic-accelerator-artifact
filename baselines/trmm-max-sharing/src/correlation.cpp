#include "correlation.hpp"
#include "ap_utils.h"
#include "dma.hpp"
#include "hls_math.h"
#include "hls_print.h"

#define max(a, b) ((a > b) ? a : b)

static inline int access(int i, int j) {
#pragma HLS inline
    return i * N + j;
}

static inline half cast_half(DMA_TYPE val) {
#pragma HLS inline
    return *(half *)&val;
}

static inline DMA_TYPE cast_dma_type(half val0, half val1, half val2, half val3) {
#pragma HLS inline
    DMA_TYPE cast0 = *(ap_uint<16> *)&val0;
    DMA_TYPE cast1 = *(ap_uint<16> *)&val1;
    DMA_TYPE cast2 = *(ap_uint<16> *)&val2;
    DMA_TYPE cast3 = *(ap_uint<16> *)&val3;

    return (cast0 | (cast1 << 16) | (cast2 << 32) | (cast3 << 48));
}

static inline void recv_data_burst(DMA_TYPE data_in[DMA_SIZE],
                                   half reg_file[REG_SIZ][N * N]) {
#pragma HLS inline off
    int reg_id, i, j, idx;

    // for (reg_id=0; reg_id<REG_SIZ; reg_id++) {
    //	for (i=0; i<N; i++) {
    //		for (j=0; j<N; j+=4) {
    i = 0;
    j = 0;
    reg_id = 0;
    for (idx = 0; idx < DMA_SIZE; idx++) {
#pragma HLS pipeline
#pragma HLS dependence dependent = false type = inter variable = reg_file
#pragma HLS dependence dependent = false type = intra variable = reg_file
        const DMA_TYPE val = data_in[idx];
        int addr = access(i, j);
        half *write_dst = reg_file[reg_id] + addr;
        write_dst[0] = cast_half((val >> 0) & 0xffff);
        write_dst[1] = cast_half((val >> 16) & 0xffff);
        write_dst[2] = cast_half((val >> 32) & 0xffff);
        write_dst[3] = cast_half((val >> 48) & 0xffff);

        /*hls::print("INCOMING REC:\n");
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 0] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 1] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 2] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 3] );
                */
        j += 4;
        if (j == N) {
            j = 0;
            i++;
            if (i == N) {
                i = 0;
                reg_id++;
            }
        }
    }
}

static inline void send_data_burst(DMA_TYPE data_out[DMA_SIZE],
                                   half reg_file[REG_SIZ][N * N]) {
#pragma HLS inline off
    int reg_id, i, j, idx;

    // for (reg_id=0; reg_id<REG_SIZ; reg_id++) {
    //	for (i=0; i<N; i++) {
    //		for (j=0; j<N/4; j++) {
    i = 0;
    j = 0;
    reg_id = 0;
    for (idx = 0; idx < DMA_SIZE; idx++) {
#pragma HLS pipeline
        int addr = access(i, j);
        /*hls::print("OUTGOING PACKET:\n");
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 0] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 1] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 2] );
        hls::print("Rec: %f\n",
                (float) reg_file[reg_id][addr + 3] );*/
        const DMA_TYPE val =
            cast_dma_type(reg_file[reg_id][addr + 0], reg_file[reg_id][addr + 1],
                          reg_file[reg_id][addr + 2], reg_file[reg_id][addr + 3]);
        data_out[idx] = val;
        j += 4;
        if (j == N) {
            j = 0;
            i++;
            if (i == N) {
                i = 0;
                reg_id++;
            }
        }
    }
}

inline half minus(half value) {
    ap_uint<16> minus_in1 = *(ap_uint<16> *)&value;
    minus_in1 = (((~minus_in1) & 0x8000) | (minus_in1 & 0x7FFF));
    return *(half *)&minus_in1;
}

void compute(half reg_file[REG_SIZ][N * N]) {
#pragma HLS inline off

#define alpha reg_file[0][0]
#define beta reg_file[1][0]
#define A reg_file[2]
#define B reg_file[3]
#define C reg_file[4]
#define R reg_file[5]
#define x reg_file[6]
#define y reg_file[7]
    int i, j, k;

    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++)
#pragma HLS pipeline
#pragma HLS allocation operation instances = hadd limit = 1
#pragma HLS allocation operation instances = hmul limit = 1
            C[access(i, j)] = 0;
        for (k = i; k < N; k++) {
#pragma HLS allocation operation instances = hadd limit = 1
#pragma HLS allocation operation instances = hmul limit = 1
			half tmp = alpha * A[access(i,k)];
            for (j = 0; j < N; j++)
#pragma HLS pipeline
#pragma HLS allocation operation instances = hadd limit = 1
#pragma HLS allocation operation instances = hmul limit = 1
                C[access(i, j)] += tmp * B[access(k, j)];
        }
    }
}

void corr_accel(DMA_TYPE data_in[DMA_SIZE], DMA_TYPE data_out[DMA_SIZE],
                volatile ap_uint<64> *counter, ap_uint<64> *start_time,
                ap_uint<64> *end_time) {
#pragma HLS INTERFACE mode = s_axilite port = return
#pragma HLS INTERFACE mode = s_axilite port = start_time
#pragma HLS INTERFACE mode = ap_none port = start_time register
#pragma HLS INTERFACE mode = s_axilite port = end_time
#pragma HLS INTERFACE mode = ap_none port = end_time register
#pragma HLS INTERFACE mode = ap_none port = counter register = off
#pragma HLS INTERFACE mode = m_axi bundle = data port = data_in offset = slave
#pragma HLS INTERFACE mode = m_axi bundle = data port = data_out offset = slave

    half reg_file[REG_SIZ][N * N];
#pragma HLS BIND_STORAGE variable = reg_file type = ram_t2p impl = bram
#pragma HLS ARRAY_PARTITION variable = reg_file dim = 1 complete
#pragma HLS ARRAY_PARTITION variable = reg_file dim = 2 type = cyclic factor = 2

measure : {
#pragma HLS PROTOCOL mode = fixed
    recv_data_burst(data_in, reg_file);
    ap_wait();
    *start_time = *counter;
    ap_wait();
    compute(reg_file);
    ap_wait();
    *end_time = *counter;
    ap_wait();
    send_data_burst(data_out, reg_file);
}
}
