C_SRCS += \
common/src/echo.c \
common/src/main.c \
sp605/src/platform.c \
sp605/src/platform_mb.c \
sp605/src/platform_ppc.c \
sp605/src/platform_zynq.c 

LD_SRCS += \
sp605/src/lscript.ld 

OBJS += \
common/src/echo.o \
common/src/main.o \
sp605/src/platform.o \
sp605/src/platform_mb.o \
sp605/src/platform_ppc.o \
sp605/src/platform_zynq.o 

C_DEPS += \
common/src/echo.d \
common/src/main.d \
sp605/src/platform.d \
sp605/src/platform_mb.d \
sp605/src/platform_ppc.d \
sp605/src/platform_zynq.d 

INC_DIR += \
sp605/src/ 


# Each subdirectory must supply rules for building sources it contributes
sp605/src/%.o: sp605/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../bsps/sp605/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


common/src/%.o: common/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../bsps/sp605/microblaze_0/include -I $(INC_DIR) -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


