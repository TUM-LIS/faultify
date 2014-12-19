/* (c) David May */

#include "Frontend.h"

#include <iostream>
#include <string>
#include <cstdio>

extern int yyparse();
extern FILE* yyin;
extern IR* parserIR;
extern int line_num;

void yyerror(char const * s) {
  std::cout << "ERROR: " << s << "line:" << line_num << std::endl;
}

IR* Frontend::parse(string filename) {
  IR* ir = new IR();
  parserIR = ir;

  yyin=fopen(filename.c_str(),"r");

  yyparse();

  fclose(yyin);
  return ir;
}
