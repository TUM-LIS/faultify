OBJECTS=SynopsysBuster.o

CXXFLAGS=-Wall

all: libSynopsysBuster.a

libSynopsysBuster.a: $(OBJECTS)
	ar rs libSynopsysBuster.a $+

%.o:%.cpp
	c++ $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f *.o libSynopsysBuster.a
