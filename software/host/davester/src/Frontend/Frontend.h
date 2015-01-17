#ifndef FRONTEND_H_
#define FRONTEND_H_

#include <string>

using namespace std;

#include "../IR/IR.h"

class Frontend {
public:
  static IR* parse(string filename);
};

#endif /* FRONTEND_H_ */
