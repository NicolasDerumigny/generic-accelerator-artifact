<project xmlns="com.autoesl.autopilot.project" name="gemm-max-throughput" top="corr_accel">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="gemm-max-throughput/src/dma.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="gemm-max-throughput/src/correlation.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="gemm-max-throughput/src/correlation.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="zcu104" status="active"/>
    </solutions>
</project>

