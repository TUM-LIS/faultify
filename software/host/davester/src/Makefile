
davester-libs:
	make -C Frontend all
	make -C IR all
	make -C SynopsysBuster all
	make -C ProbabilityInjection all
	make -C Backend all

davester: davester-libs davester.o
	c++  -o davester davester.o Frontend/libFrontend.a IR/libIR.a SynopsysBuster/libSynopsysBuster.a ProbabilityInjection/libProbabilityInjection.a Backend/libBackend.a

davester.o: davester.cpp
	c++  -o davester.o -c davester.cpp

clean:
	make -C Frontend clean
	make -C IR clean
	make -C SynopsysBuster clean
	make -C ProbabilityInjection clean
	make -C Backend clean	
	rm -f davester.o
