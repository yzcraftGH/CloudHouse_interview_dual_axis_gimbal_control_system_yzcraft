################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Logic/attitude.c \
../User/Logic/gimbal.c \
../User/Logic/key.c \
../User/Logic/led.c \
../User/Logic/oled_ui.c \
../User/Logic/protocol.c \
../User/Logic/track.c \
../User/Logic/uart_event.c 

OBJS += \
./User/Logic/attitude.o \
./User/Logic/gimbal.o \
./User/Logic/key.o \
./User/Logic/led.o \
./User/Logic/oled_ui.o \
./User/Logic/protocol.o \
./User/Logic/track.o \
./User/Logic/uart_event.o 

C_DEPS += \
./User/Logic/attitude.d \
./User/Logic/gimbal.d \
./User/Logic/key.d \
./User/Logic/led.d \
./User/Logic/oled_ui.d \
./User/Logic/protocol.d \
./User/Logic/track.d \
./User/Logic/uart_event.d 


# Each subdirectory must supply rules for building sources it contributes
User/Logic/%.o User/Logic/%.su User/Logic/%.cyclo: ../User/Logic/%.c User/Logic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/App" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Bsp" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Device" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Logic" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Utils" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-User-2f-Logic

clean-User-2f-Logic:
	-$(RM) ./User/Logic/attitude.cyclo ./User/Logic/attitude.d ./User/Logic/attitude.o ./User/Logic/attitude.su ./User/Logic/gimbal.cyclo ./User/Logic/gimbal.d ./User/Logic/gimbal.o ./User/Logic/gimbal.su ./User/Logic/key.cyclo ./User/Logic/key.d ./User/Logic/key.o ./User/Logic/key.su ./User/Logic/led.cyclo ./User/Logic/led.d ./User/Logic/led.o ./User/Logic/led.su ./User/Logic/oled_ui.cyclo ./User/Logic/oled_ui.d ./User/Logic/oled_ui.o ./User/Logic/oled_ui.su ./User/Logic/protocol.cyclo ./User/Logic/protocol.d ./User/Logic/protocol.o ./User/Logic/protocol.su ./User/Logic/track.cyclo ./User/Logic/track.d ./User/Logic/track.o ./User/Logic/track.su ./User/Logic/uart_event.cyclo ./User/Logic/uart_event.d ./User/Logic/uart_event.o ./User/Logic/uart_event.su

.PHONY: clean-User-2f-Logic

