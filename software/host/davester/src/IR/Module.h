#ifndef MODULE_H_
#define MODULE_H_

#include <string>
#include <vector>
#include <map>

using namespace std;

#include "Instantiation.h"
#include "Net.h"
#include "Pin.h"

class Module {
private:
  string m_name;
  vector<Instantiation*> m_inst;
  map<string,Instantiation*> m_instlookup;
  vector<Net*> m_nets;
  map<string,Net*> m_portlookup;
  map<string,Net*> m_netlookup;
  map<Net*,Net*> m_assignments;
  vector<Pin*> m_pins;

public:
  Module();
  Module(string name);
  virtual ~Module();

  string getName();
  void setName(string name);

  void addInstantiation(Instantiation *inst);
  vector<Instantiation*> getInstantiations();

  void addParamToInstantiation(string,string,string);

  void addPort(string name);
  void addPin(Pin*);
  map<string,Net*> getPorts();

  void addNet(Net *net);
  vector<Net*> getNets();
  Net* getNet(string);
  Net* getPort(string);
  vector<Pin*> getPins();
  void addAssignment(string,string,string,string,string,string);
  map<Net*,Net*> getAssignments();
};

#endif /* MODULE_H_ */
