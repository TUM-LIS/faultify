C_SRCS += \
common/src/echo.c \
common/src/main.c \
common/src/main_test.c \
common/src/packet_parser.c \
common/src/faultify_simulation.c \
ml605/src/platform.c \
ml605/src/platform_mb.c \
ml605/src/platform_ppc.c \
ml605/src/platform_zynq.c 

LD_SRCS += \
ml605/src/lscript.ld 

OBJS_ML605 += \
common/src/echo.o \
common/src/main.o \
common/src/packet_parser.o \
common/src/faultify_simulation.o \
ml605/src/platform.o \
ml605/src/platform_mb.o \
ml605/src/platform_ppc.o \
ml605/src/platform_zynq.o 


OBJS_ML605_SIM += \
common/src/main_test.o \
common/src/faultify_simulation.o \
ml605/src/platform.o \
ml605/src/platform_mb.o \



C_DEPS += \
common/src/echo.d \
common/src/main.d \
common/src/packet_parser.d \
common/src/faultify_simulation.d \
ml605/src/platform.d \
ml605/src/platform_mb.d \
ml605/src/platform_ppc.d \
ml605/src/platform_zynq.d 

INC_DIR += \
ml605/src/ 


# Each subdirectory must supply rules for building sources it contributes
ml605/src/%.o: ml605/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../bsps/ml605/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


common/src/%.o: common/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../bsps/ml605/microblaze_0/include -I $(INC_DIR) -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


