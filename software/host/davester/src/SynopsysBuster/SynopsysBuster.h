#ifndef SYNOPSYSBUSTER_H_
#define SYNOPSYSBUSTER_H_

#include "../IR/IR.h"

#include <string>
#include <iostream>
#include <sstream>

class SynopsysBuster
{
public:
  SynopsysBuster();
  virtual
  ~SynopsysBuster();
  static void execute(IR*,string toplevel);
};

#endif /* SYNOPSYSBUSTER_H_ */
