#include "Backend.h"

#include <fstream>
#include <iostream>
#include "Emit.h"
#include "ToplevelGen.h"
#include "AnnotationGen.h"

void Backend::emit(IR* ir,string output,string toplevel,string clk,string rst) {
  std::ofstream of;
  of.open (output.c_str());
  vector<Module*> mod = ir->getModules();
  for (vector<Module*>::iterator it=mod.begin(); it!=mod.end(); ++it) {
      ModuleEmit me;
      me.emit(ir,of,*it,toplevel);
  }
  std::ofstream of2,of3;
  of2.open ("goc_wrapper.v");
  of3.open ("cut_wrapper.v");
  ModuleToplevelGen topMe;
  topMe.emitCutWrapper(of3,ir->getOriginalTopNets(),ir->getInjectionPins(),toplevel,clk,rst);
  topMe.emitGocWrapper(of2,ir->getOriginalTopNets(),ir->getInjectionPins(),toplevel,clk,rst);

  ModuleAnnotationGen anne;
  std::ofstream of4;
  of4.open("faultify.ann");
  anne.emitAnnotation(ir,of4);
}

