################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Device/dev_mpu6050.c \
../User/Device/dev_oled.c \
../User/Device/dev_servo.c 

OBJS += \
./User/Device/dev_mpu6050.o \
./User/Device/dev_oled.o \
./User/Device/dev_servo.o 

C_DEPS += \
./User/Device/dev_mpu6050.d \
./User/Device/dev_oled.d \
./User/Device/dev_servo.d 


# Each subdirectory must supply rules for building sources it contributes
User/Device/%.o User/Device/%.su User/Device/%.cyclo: ../User/Device/%.c User/Device/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/App" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Bsp" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Device" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Logic" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Utils" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-User-2f-Device

clean-User-2f-Device:
	-$(RM) ./User/Device/dev_mpu6050.cyclo ./User/Device/dev_mpu6050.d ./User/Device/dev_mpu6050.o ./User/Device/dev_mpu6050.su ./User/Device/dev_oled.cyclo ./User/Device/dev_oled.d ./User/Device/dev_oled.o ./User/Device/dev_oled.su ./User/Device/dev_servo.cyclo ./User/Device/dev_servo.d ./User/Device/dev_servo.o ./User/Device/dev_servo.su

.PHONY: clean-User-2f-Device

