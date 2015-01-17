OBJECTS=ProbabilityInjection.o

CXXFLAGS=-Wall

all: libProbabilityInjection.a

libProbabilityInjection.a: $(OBJECTS)
	ar rs libProbabilityInjection.a $+

%.o:%.cpp
	c++ $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f *.o libProbabilityInjection.a