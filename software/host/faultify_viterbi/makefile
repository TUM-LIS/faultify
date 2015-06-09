RM := rm -rf

INC_DIR += include \
	-I ../faultify_communication/include/

MAIN_VITERBI = faultify_viterbi_test.o
MAIN_BL_200 = faultify_viterbi_bl_200.o
MAIN_FAST = faultify_viterbi_fast.o

OBJS_COMMON += ../faultify_communication/src/faultify_communication.o

GLIB_INC = `pkg-config --cflags --libs glib-2.0`
GLIB_LIB = `pkg-config --libs glib-2.0`

FLAGS = 

all: faultify_viterbi_test faultify_viterbi_bl_200 faultify_viterbi_fast


faultify_viterbi_test: $(MAIN_VITERBI) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_viterbi_test $(MAIN_VITERBI) $(OBJS_COMMON) $(GLIB_LIB)

faultify_viterbi_bl_200: $(MAIN_BL_200) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_viterbi_bl_200 $(MAIN_BL_200) $(OBJS_COMMON) $(GLIB_LIB) $(FLAGS)

faultify_viterbi_fast: $(MAIN_FAST) $(OBJS_COMMON)
	@echo 'Building target: $@'
	gcc -Wall $(GLIB_INC) -o faultify_viterbi_fast $(MAIN_FAST) $(OBJS_COMMON) $(GLIB_LIB) $(FLAGS)

src/%.o: src/%.c
	@echo 'Building file: $<'
	gcc -Wall $(FLAGS) $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<" 

%.o: %.c
	@echo 'Building file: $<'
	gcc -Wall $(FLAGS) $(GLIB_INC) -c -I $(INC_DIR) -o "$@" "$<" 

clean:
	-$(RM) $(OBJS_COMMON) $(MAIN_VITERBI) faultify_viterbi_test faultify_viterbi_bl_200 faultify_viterbi_fast

