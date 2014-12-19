/*
 * Emit.h
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#ifndef EMIT_H_
#define EMIT_H_

#include <fstream>
#include <iostream>
#include "../IR/IR.h"

using namespace std;


class Emit
{

};

class ModuleEmit : public Emit {
public:
  void emit(IR* ir,ofstream &of,Module* mod, string toplevel);
};

#endif /* EMIT_H_ */
