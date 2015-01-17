OBJECTS=Backend.o \
		Emit.o \
		ToplevelGen.o \
		AnnotationGen.o

CXXFLAGS=-Wall

all: libBackend.a

libBackend.a: $(OBJECTS)
	ar rs libBackend.a $+

%.o:%.cpp
	c++ $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f *.o libBackend.a
