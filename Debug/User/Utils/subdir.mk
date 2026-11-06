################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Utils/delay.c \
../User/Utils/filter.c \
../User/Utils/ring_buffer.c 

OBJS += \
./User/Utils/delay.o \
./User/Utils/filter.o \
./User/Utils/ring_buffer.o 

C_DEPS += \
./User/Utils/delay.d \
./User/Utils/filter.d \
./User/Utils/ring_buffer.d 


# Each subdirectory must supply rules for building sources it contributes
User/Utils/%.o User/Utils/%.su User/Utils/%.cyclo: ../User/Utils/%.c User/Utils/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/App" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Bsp" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Device" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Logic" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Utils" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-User-2f-Utils

clean-User-2f-Utils:
	-$(RM) ./User/Utils/delay.cyclo ./User/Utils/delay.d ./User/Utils/delay.o ./User/Utils/delay.su ./User/Utils/filter.cyclo ./User/Utils/filter.d ./User/Utils/filter.o ./User/Utils/filter.su ./User/Utils/ring_buffer.cyclo ./User/Utils/ring_buffer.d ./User/Utils/ring_buffer.o ./User/Utils/ring_buffer.su

.PHONY: clean-User-2f-Utils

