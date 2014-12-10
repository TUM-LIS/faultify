qRM := rm -rf

-include sources.mk
-include sp605/sp605.mk
-include subdir.mk
-include objects.mk

all: ml605.elf sp605.elf


sp605.elf: $(OBJS) sp605/src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,sp605/src/lscript.ld -L../bsps/sp605/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o   "sp605.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

ml605.elf: $(OBJS) ml605/src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,ml605/src/lscript.ld -L../bsps/ml605/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "ml605.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '


download_sp605 : 
	@echo 'downloading elf file'
	xmd -tcl download_sp605.tcl

download_ml605 :
	@echo 'downloading elf file'
	xmd -tcl download_ml605.tcl

clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) sp605.elf
	-@echo ' '
