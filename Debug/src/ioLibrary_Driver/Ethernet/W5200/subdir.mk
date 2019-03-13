################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ioLibrary_Driver/Ethernet/W5200/w5200.c 

OBJS += \
./src/ioLibrary_Driver/Ethernet/W5200/w5200.o 

C_DEPS += \
./src/ioLibrary_Driver/Ethernet/W5200/w5200.d 


# Each subdirectory must supply rules for building sources it contributes
src/ioLibrary_Driver/Ethernet/W5200/%.o: ../src/ioLibrary_Driver/Ethernet/W5200/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -DUSE_STDPERIPH_DRIVER -DSTM32F10X_HD -DSTM32F103VC -DDEBUG -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/STM32F103VCT6" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\cmsis" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\cmsis_boot" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\stm_lib" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\stm_lib\inc" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\syscalls" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\ioLibrary_Driver" -I"C:\workspace\eclipse_workspace\W6100-EVB-gcc-eclipse\src\ioLibrary_Driver\Ethernet" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


