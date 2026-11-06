################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Bsp/bsp_adc.c \
../User/Bsp/bsp_gpio.c \
../User/Bsp/bsp_i2c.c \
../User/Bsp/bsp_pwm.c \
../User/Bsp/bsp_uart.c 

OBJS += \
./User/Bsp/bsp_adc.o \
./User/Bsp/bsp_gpio.o \
./User/Bsp/bsp_i2c.o \
./User/Bsp/bsp_pwm.o \
./User/Bsp/bsp_uart.o 

C_DEPS += \
./User/Bsp/bsp_adc.d \
./User/Bsp/bsp_gpio.d \
./User/Bsp/bsp_i2c.d \
./User/Bsp/bsp_pwm.d \
./User/Bsp/bsp_uart.d 


# Each subdirectory must supply rules for building sources it contributes
User/Bsp/%.o User/Bsp/%.su User/Bsp/%.cyclo: ../User/Bsp/%.c User/Bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/App" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Bsp" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Device" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Logic" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Utils" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-User-2f-Bsp

clean-User-2f-Bsp:
	-$(RM) ./User/Bsp/bsp_adc.cyclo ./User/Bsp/bsp_adc.d ./User/Bsp/bsp_adc.o ./User/Bsp/bsp_adc.su ./User/Bsp/bsp_gpio.cyclo ./User/Bsp/bsp_gpio.d ./User/Bsp/bsp_gpio.o ./User/Bsp/bsp_gpio.su ./User/Bsp/bsp_i2c.cyclo ./User/Bsp/bsp_i2c.d ./User/Bsp/bsp_i2c.o ./User/Bsp/bsp_i2c.su ./User/Bsp/bsp_pwm.cyclo ./User/Bsp/bsp_pwm.d ./User/Bsp/bsp_pwm.o ./User/Bsp/bsp_pwm.su ./User/Bsp/bsp_uart.cyclo ./User/Bsp/bsp_uart.d ./User/Bsp/bsp_uart.o ./User/Bsp/bsp_uart.su

.PHONY: clean-User-2f-Bsp

