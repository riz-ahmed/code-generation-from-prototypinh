# code-generation-from-prototyping
contains embedded code generated for micro-controllers after prototyping control algorithms on Matlab/Simulink

# PiL (Processor in the Loop) software testing using Arduino as the Processor
PiL generally follows testing process after SiL as the software structure is tested in SiL under a siumation test environment by compiling the software to simulation PC specific architecture. In PiL the software structure related performance and acceptance testing can be conducted on the system level by running the compiled code directly on the target hardware. In PiL the C-code is compiled to target specific hardware - Arduino in this case.

## Test Procedures
_Test item_: Control Algorithm running on Arduino
_Test Env_: Simulink Plant model

PiL block is generated using sFuncitons automatically using the C-Code generator and deployer in Simulink. This block can be generated after creating a control algorithm in Simulink and then right click on the control block, select C/C++ options and then select _**Deploy this Subsystem to Hardware**_. Befor doing this step, PiL block generation should be activated under the verification options inside the Hardware Configuration.
