RM := rm -rf

INC_DIR += include

OBJS += faultify_communication_test.o \
	src/faultify_communication.o

all: faultify_communication_test

faultify_communication_test: $(OBJS)
	@echo 'Building target: $@'
	gcc -Wall -o faultify_communication_test $(OBJS)

src/%.o: src/%.c
	@echo 'Building file: $<'
	gcc -Wall -c -I $(INC_DIR) -o "$@" "$<"

%.o: %.c
	@echo 'Building file: $<'
	gcc -Wall -c -I $(INC_DIR) -o "$@" "$<"

clean:

	-$(RM) $(OBJS) faultify_communication_test

