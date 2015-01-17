OBJECTS=IR.o \
		Module.o \
		Instantiation.o \
		Net.o \
		Pin.o

CXXFLAGS=-Wall

all: libIR.a

libIR.a: $(OBJECTS)
	ar rs libIR.a $+

%.o:%.cpp
	c++ $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f *.o libIR.a
