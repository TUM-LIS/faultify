#ifndef BACKEND_H_
#define BACKEND_H_

#include <string>
#include "../IR/IR.h"

using namespace std;

class Backend
{
private:

public:
  static void emit(IR* ir,string output,string toplevel,string clk, string rst);
 	
};

#endif /* BACKEND_H_ */
