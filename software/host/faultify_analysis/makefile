RM := rm -rf

INC_DIR += include \
	-I ../faultify_communication/include/

MAIN_DPCP = faultify_dpcp_standalone.o
MAIN_INJECT = faultify_inject_faults.o 
MAIN_VITERBI = faultify_dpcp_viterbi.o
MAIN_VITERBI_INJ = faultify_inject_faults_viterbi.o

OBJS_COMMON +=	src/faultify_simulation_campaigns.o \
        ../faultify_communication/src/faultify_communication.o

GLIB_INC = `pkg-config --cflags --libs glib-2.0`
GLIB_LIB = `pkg-config --libs glib-2.0`

all: faultify_dpcp_standalone faultify_inject_faults faultify_dpcp_viterbi faultify_inject_faults_viterbi

faultify_dpcp_standalone: $(MAIN_DPCP) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_dpcp_standalone $(MAIN_DPCP) $(OBJS_COMMON) $(GLIB_LIB)
faultify_dpcp_viterbi: $(MAIN_VITERBI) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_dpcp_viterbi $(MAIN_VITERBI) $(OBJS_COMMON) $(GLIB_LIB)

faultify_inject_faults : $(MAIN_INJECT) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_inject_faults $(MAIN_INJECT) $(OBJS_COMMON) $(GLIB_LIB)
faultify_inject_faults_viterbi : $(MAIN_VITERBI_INJ) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_inject_faults_viterbi $(MAIN_VITERBI_INJ) $(OBJS_COMMON) $(GLIB_LIB)

src/%.o: src/%.c
	@echo 'Building file: $<'
	gcc -Wall $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<"

%.o: %.c
	@echo 'Building file: $<'
	gcc -Wall $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<"

clean:

	-$(RM) $(OBJS_COMMON) $(MAIN_DPCP) $(MAIN_INJECT) faultify_dpcp_standalone faultify_inject_faults faultify_dpcp_viterbi faultify_inject_faults_viterbi

