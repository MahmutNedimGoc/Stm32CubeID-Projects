################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/deneme.c \
../Src/main.c 

OBJS += \
./Src/deneme.o \
./Src/main.o 

C_DEPS += \
./Src/deneme.d \
./Src/main.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DNUCLEO_L073RZ -DSTM32 -DSTM32L073RZTx -DSTM32L0 -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/deneme.cyclo ./Src/deneme.d ./Src/deneme.o ./Src/deneme.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su

.PHONY: clean-Src

