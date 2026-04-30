<project xmlns="com.autoesl.autopilot.project" name="ProjectOne" top="inference_top">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" optimizeCompile="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../pipeline/tb_inference.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="pipeline/C_CNN.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/C_Conv.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/C_Dense.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/C_Pool.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/D_CNN.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/D_Conv.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/D_Pool.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/common.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="pipeline/inference_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

