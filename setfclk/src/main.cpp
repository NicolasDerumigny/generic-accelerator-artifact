#include <cstdio>
#include <cstdint>
#include <cstdlib>

#include <getopt.h>

#ifdef __arm__ // Zynq 7000
#include "clocks_zynq.hpp"
#endif

#ifdef __aarch64__ // Zynq Ultrascale
#include "clocks_ultrascale.hpp"
#endif

constexpr int DEFAULT_FPGA_CLOCK_ID = 0;
constexpr int DEFAULT_DIV = 0;
constexpr float DEFAULT_FREQ = 0;

void print_clocks() {
	printf("CPU CLK:       %7.3f MHz\n", Clocks::get_cpu_mhz());
	printf("FPGA CLK 0:    %7.3f MHz\n", Clocks::get_fclk0_mhz());
	printf("FPGA CLK 1:    %7.3f MHz\n", Clocks::get_fclk1_mhz());
	printf("FPGA CLK 2:    %7.3f MHz\n", Clocks::get_fclk2_mhz());
	printf("FPGA CLK 3:    %7.3f MHz\n", Clocks::get_fclk3_mhz());
}

void print_help(char* executable) {
	std::cerr << "Usage:" << std::endl;
	std::cerr << "\t" << executable;
	std::cerr << " [{-c | --clock} <clock_id>]";
	std::cerr << " [{-0 | --div0} <div0>]";
	std::cerr << " [{-1 | --div1} <div1>]";
	std::cerr << " [{-f | --freq} <freq>]";
	std::cerr << " [{-p | --print}]";
	std::cerr << " [{-h | --help}]";
	std::cerr << std::endl << std::endl;

	std::cerr << "With:" << std::endl;
	std::cerr << "\t{-c | --clock} <clock_id>: sets the target FPGA clock. Valid option are [0-3] (Default: "
			<< DEFAULT_FPGA_CLOCK_ID <<  ")" << std::endl;
	std::cerr << "\t{-0 | --div0} <div0>: sets to <div0> the coefficient written to the divisor 0" << std::endl;
	std::cerr << "\t{-1 | --div1} <div1>: sets to <div1> the coefficient written to the divisor 1" << std::endl;
	std::cerr << "\t{-f | --freq} <freq>: sets the frequency of the clock <clock_id> to <freq> MHz" << std::endl;
	std::cerr << "\t{-p | --print}: prints the current operating frequencies" << std::endl;
	std::cerr << "\t{-h | --help}: prints this help" << std::endl;
}

int main(int argc, char* argv[]){
	unsigned div0 = DEFAULT_DIV;
	unsigned div1 = DEFAULT_DIV;
	unsigned clock_id = DEFAULT_FPGA_CLOCK_ID;
	float freq = DEFAULT_FREQ;
	bool print_clks = false;

	int opt;
	int option_index = 0;
	const struct option longopt[] = {
		{"div0",    required_argument, NULL, '0'},
		{"div1",    required_argument, NULL, '1'},
		{"clock",	required_argument, NULL, 'c'},
		{"freq",	required_argument, NULL, 'f'},
		{"help",    no_argument,       NULL, 'h'},
		{"print", 	no_argument,       NULL, 'p'},
		{NULL,      0,                 NULL,  0}
	};

	bool passed = false;
	while ((opt = getopt_long(argc, argv, "0:1:c:f:hp", longopt, &option_index)) != -1) {
		passed = true;

		switch(opt) {
		case '0':
			div0 = strtoul(optarg, NULL, 10);
		break;

		case '1':
			div1 = strtoul(optarg, NULL, 10);
		break;

		case 'c':
			clock_id = strtoul(optarg, NULL, 10);
		break;

		case 'f':
			freq = strtof(optarg, NULL);
		break;

		case 'h':
			print_help(argv[0]);
			return(EXIT_SUCCESS);
		break;

		case 'p':
			print_clks = true;
		break;

		default:
			std::cerr<< "[ERROR] Invalid arguement: " << optarg << std::endl;
			print_help(argv[0]);
			return(EXIT_FAILURE);
		break;
		}
	}

	// Default behavior is to print. Also print and quit if there is not other command. Else,
	// print after having set the frequency
	if (not passed or (freq == 0 and div0 == 0 and div1 == 0 and print_clks)) {
		print_clocks();
		return(EXIT_SUCCESS);
	}

	if (freq < 0) {
		std::cerr << "[ERROR] Invalid frequency (" << freq << "), must be positive" << std::endl;
		return(EXIT_FAILURE);
	} else if (freq == 0 and (div0 == 0 or div1 == 0)) {
		std::cerr << "[ERROR] Frequency value needed if one divisor is left unspecified" << std::endl;
		return(EXIT_FAILURE);
	} else if (freq != 0 and (div0 != 0 and div1 != 0)) {
		std::cerr << "[ERROR] Frequency value superfluous if both divisors are specified" << std::endl;
		return(EXIT_FAILURE);
	} else if (clock_id > 3) {
		std::cerr << "[ERROR] Invalid FPGA clock identifier (" << clock_id << "), must be [0-3]" << std::endl;
		return(EXIT_FAILURE);
	} else {
		Clocks::set_fclk_mhz(clock_id, freq, div0, div1);
	}

	if (print_clks) {
		print_clocks();
	}

	return(EXIT_SUCCESS);
}
