#ifndef ANNOTATIONGEN_H_
#define ANNOTATIONGEN_H_

#include <fstream>
#include <sstream>
#include <iostream>

#include "../IR/IR.h"

using namespace std;


class AnnotationGen
{

};

class ModuleAnnotationGen : public AnnotationGen {
public:
  void emitAnnotation(IR *ir,ofstream &of);
};

#endif
