OBJECTS=parser.o tokens.o Frontend.o ASTModule.o ASTNode.o
CXXFLAGS=-Wall

all: libFrontend.a

libFrontend.a: $(OBJECTS)
	ar rs libFrontend.a $+

%.o:%.cpp
	c++ $(CXXFLAGS) -o $@ -c $<

tokens.cpp: davester.lex
	lex -o tokens.cpp davester.lex

parser.cpp: davester.y
	bison -t -d -o parser.cpp davester.y

clean:
	rm -f parser.cpp parser.hpp tokens.cpp *.o libFrontend.a