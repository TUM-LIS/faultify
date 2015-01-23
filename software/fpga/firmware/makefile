RM := rm -rf

-include sources.mk
-include ml605/ml605.mk
-include subdir.mk
-include objects.mk

all: ml605.elf 



ml605.elf: $(OBJS_ML605) ml605/src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,ml605/src/lscript.ld -L../bsps/ml605/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -mhard-float -Wl,--no-relax -Wl,--gc-sections -o "ml605.elf" $(OBJS_ML605) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

sim_ml605.elf:	$(OBJS_ML605_SIM) ml605/src/lscript_sim.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,ml605/src/lscript_sim.ld -L../bsps/ml605/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "sim_ml605.elf" $(OBJS_ML605_SIM) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

download_sp605 : 
	@echo 'downloading elf file'
	xmd -tcl download_sp605.tcl

download_ml605 :
	@echo 'downloading elf file'
	xmd -tcl download_ml605.tcl

clean:
	-$(RM) $(OBJS_SP605) $(OBJS_ML605) $(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) sp605.elf ml605.elf
	-@echo ' '
