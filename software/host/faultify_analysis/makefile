RM := rm -rf

INC_DIR += include \
	-I ../faultify_communication/include/

OBJS += faultify_dpcp_standalone.o \
	src/faultify_simulation_campaigns.o \
        ../faultify_communication/src/faultify_communication.o

GLIB_INC = `pkg-config --cflags --libs glib-2.0`
GLIB_LIB = `pkg-config --libs glib-2.0`

all: faultify_dpcp_standalone

faultify_dpcp_standalone: $(OBJS)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_dpcp_standalone $(OBJS) $(GLIB_LIB)

src/%.o: src/%.c
	@echo 'Building file: $<'
	gcc -Wall $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<"

%.o: %.c
	@echo 'Building file: $<'
	gcc -Wall $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<"

clean:

	-$(RM) $(OBJS) faultify_dpcp_standalone

