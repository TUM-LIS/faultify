#include "AnnotationGen.h"
#include <algorithm>
void ModuleAnnotationGen::emitAnnotation(IR *ir,ofstream &of) {
  
  vector<string> annF = ir->getAnnotatedFiles();
  int fnum = 0;
  reverse(annF.begin(),annF.end()); 
  for (vector<string>::iterator vanf=annF.begin();vanf!=annF.end();++vanf){
    of << fnum++ << ": " << (*vanf) << endl;
  }
  of << endl;
  of << "file#" << ";" << "line#" << ";" << "module" << ";" << "instance" << ";" << "orig instance" << ";" << "injection port" << endl;
  vector<vector<string> > ann = ir->getAnnotations();
  for (vector<vector<string> >::iterator vit=ann.begin();vit!=ann.end();++vit) {
    of << (*vit).at(0) << ";" << (*vit).at(1) << ";" << (*vit).at(2) << ";" << (*vit).at(3) << ";" << (*vit).at(4) << ";" << (*vit).at(5) << endl;    
  }

}
