################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/syscalls/subdir.mk
-include src/stm_lib/src/subdir.mk
-include src/ioLibrary_Driver/Internet/httpServer/subdir.mk
-include src/ioLibrary_Driver/Internet/TFTP/subdir.mk
-include src/ioLibrary_Driver/Internet/SNTP/subdir.mk
-include src/ioLibrary_Driver/Internet/FTPServer/subdir.mk
-include src/ioLibrary_Driver/Internet/FTPClient/subdir.mk
-include src/ioLibrary_Driver/Internet/DNS/subdir.mk
-include src/ioLibrary_Driver/Internet/DHCP/subdir.mk
-include src/ioLibrary_Driver/Ethernet/W5500/subdir.mk
-include src/ioLibrary_Driver/Ethernet/W5300/subdir.mk
-include src/ioLibrary_Driver/Ethernet/W5200/subdir.mk
-include src/ioLibrary_Driver/Ethernet/W5100S/subdir.mk
-include src/ioLibrary_Driver/Ethernet/W5100/subdir.mk
-include src/ioLibrary_Driver/Ethernet/subdir.mk
-include src/ioLibrary_Driver/Application/loopback/subdir.mk
-include src/cmsis_boot/startup/subdir.mk
-include src/cmsis_boot/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
W6100-EVB-gcc-eclipse.bin \

SECONDARY_SIZE += \
W6100-EVB-gcc-eclipse.siz \


# All Target
all: W6100-EVB-gcc-eclipse.elf secondary-outputs

# Tool invocations
W6100-EVB-gcc-eclipse.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM GNU C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -T mem.ld -T libs.ld -T sections.ld -nostartfiles -Xlinker --gc-sections -L"../ldscripts" -Wl,-Map,"W6100-EVB-gcc-eclipse.map" --specs=nano.specs -o "W6100-EVB-gcc-eclipse.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

W6100-EVB-gcc-eclipse.bin: W6100-EVB-gcc-eclipse.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O binary "W6100-EVB-gcc-eclipse.elf"  "W6100-EVB-gcc-eclipse.bin"
	@echo 'Finished building: $@'
	@echo ' '

W6100-EVB-gcc-eclipse.siz: W6100-EVB-gcc-eclipse.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "W6100-EVB-gcc-eclipse.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) W6100-EVB-gcc-eclipse.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
