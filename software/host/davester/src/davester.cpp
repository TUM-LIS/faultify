/* (c) David May */


#include <iostream>
#include "IR/IR.h"
#include "ProbabilityInjection/ProbabilityInjection.h"
#include "Frontend/Frontend.h"
#include "SynopsysBuster/SynopsysBuster.h"
#include "Backend/Backend.h"

#define DEBUG 0
#define PRINT_DBG_TREE 0

using namespace std;

extern unsigned int yydebug;

int main(int argc,char* argv[]) {
   if (argc<7) {
     cerr << "usage: davester [verilog netlist] [toplevel name] [clock name / NONE] [reset name / NONE] [original element] [replacing element] ..." << endl;
     return 1;
   } else {
     cout << "davester - verilog netlist instrumenter" << endl;
     cout << endl;
     cout << "(c) David May 2013" << endl;
     
   }
   
#if DEBUG
   yydebug = 1; // enable to debug parser
#endif
   
   
   /* Parse input netlist */
   cout << "Parsing file" << argv[1] << endl;
   IR* ir = Frontend::parse(argv[1]);
   
#if PRINT_DBG_TREE
   /* Print tree */
   cout << "Printing Tree" << endl;
   ir->print();
#endif
   
   /* Removing escaped net names */
   cout << "Synopsys Buster!" << endl;
   SynopsysBuster::execute(ir,argv[2]);
   
   /* Executing probability injection */
   cout << "Runing ProbabilityInjection" << endl;
   vector<string> elements;
   for (int i=5;i<argc;i++)
     elements.push_back(argv[i]);
   ProbabilityInjection::execute(ir,argv[2],elements);
   
#if PRINT_DBG_TREE  
   cout << "(ii) Print Modified Tree" << endl;
   r->print();
#endif
   
   /* Emit modified netlist */
   cout << "Emitting Code" << endl;
   Backend::emit(ir,"output.v",argv[2],argv[3],argv[4]);
   
   return 0;
}

