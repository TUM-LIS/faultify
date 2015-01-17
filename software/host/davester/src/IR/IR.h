#ifndef IR_H_
#define IR_H_

#include "Module.h"
#include "Instantiation.h"

#include <vector>

using namespace std;

class IR
{
private:
  vector<Module*> m_modules;
  string m_timescale;
  map<string,Module*> m_modulelookup;
  vector<string> m_injectionPins;
  vector<vector<string> > m_injectionAnnotation;
  vector<Net*> m_originalNets;
  vector<string> m_annotatedFiles;

public:
  IR();

  // functions called by parser
  void addModule(Module *mod);
  void eraseModule(string name);
  void setTimescale(string ts1,string ts2);
  void addAnnotatedFile(string path);
  void addInjectionAnnotation(vector<string> annotMap);
  
  // functions called by davester
  void validate();

  // functions called by backend or IR
  vector<Module*> getModules();
  vector<vector<string> > getAnnotations();
  vector<string> getAnnotatedFiles();
  // convenience functions
  void print();

  void addInjectionPin(string);
  void setOriginalTopNets(vector<Net*>);
  
  vector<string> getInjectionPins();
   vector<Net*> getOriginalTopNets();
  
  Module* getModule(string);

};

#endif /* IR_H_ */
