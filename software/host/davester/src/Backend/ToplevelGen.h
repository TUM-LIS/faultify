/*
 *
 *  Created on: Jan, 2011
 *      Author: ne86sud
 */

#ifndef TOPLEVELGEN_H_
#define TOPLEVELGEN_H_

#include <fstream>
#include <sstream>
#include <iostream>
#include <stdlib.h>     /* abs */

#include "../IR/IR.h"

using namespace std;


class ToplevelGen
{

};

class ModuleToplevelGen : public ToplevelGen {
public:
  void emitGocWrapper(ofstream &of,vector<Net*> origPins,vector<string> injPins,string toplevel,string clk,string rst);
  void emitCutWrapper(ofstream &of,vector<Net*> origPins,vector<string> injPins,string toplevel,string clk, string rst);
};

#endif /* TOPLEVELGEN_H_ */
