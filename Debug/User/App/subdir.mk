################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/App/app_mode.c \
../User/App/app_task.c 

OBJS += \
./User/App/app_mode.o \
./User/App/app_task.o 

C_DEPS += \
./User/App/app_mode.d \
./User/App/app_task.d 


# Each subdirectory must supply rules for building sources it contributes
User/App/%.o User/App/%.su User/App/%.cyclo: ../User/App/%.c User/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/App" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Bsp" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Device" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Logic" -I"D:/DYW_STM32_workspace/dual-axis_gimbal_control_system/User/Utils" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-User-2f-App

clean-User-2f-App:
	-$(RM) ./User/App/app_mode.cyclo ./User/App/app_mode.d ./User/App/app_mode.o ./User/App/app_mode.su ./User/App/app_task.cyclo ./User/App/app_task.d ./User/App/app_task.o ./User/App/app_task.su

.PHONY: clean-User-2f-App

