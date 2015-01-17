#ifndef PROBABILITYINJECTION_H_
#define PROBABILITYINJECTION_H_

#include "../IR/IR.h"

#include <string>
#include <iostream>

class ProbabilityInjection
{
public:
  ProbabilityInjection();
  virtual
  ~ProbabilityInjection();
  static void execute(IR*,string toplevel, vector<string> elements);
};

#endif /* PROBABILITYINJECTION_H_ */
