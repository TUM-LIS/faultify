/*
 * ASTModule.h
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#ifndef ASTMODULE_H_
#define ASTMODULE_H_

#include <vector>

#include "../IR/Module.h"
#include "ASTNode.h"

class ASTModule
{
private:
  Module *m_mod;
  std::vector<ASTNode*> m_nodes;
  vector<ASTNodePin*> m_ports;
public:
  ASTModule(string name,vector<ASTNodePin*> *ports,vector<ASTNode*> *nodes);
  ~ASTModule();
  Module* getModule();
};

#endif /* ASTMODULE_H_ */
