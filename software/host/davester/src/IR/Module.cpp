#include "Module.h"

#include <iostream>

Module::Module() {

}

Module::Module(string name) : m_name(name) {

}

Module::~Module()
{
}

string Module::getName() {
  return m_name;
}


void Module::setName(string name) {
  m_name = name;
}


void Module::addInstantiation(Instantiation *inst) {
  m_inst.push_back(inst);
  m_instlookup[inst->getName()] = inst;
}

vector<Instantiation*> Module::getInstantiations() {
  return m_inst;
}

void Module::addPort(string name) {
  m_portlookup[name] = NULL;
}

void Module::addPin(Pin * newPin) {
	m_pins.push_back(newPin);
}
map<string,Net*> Module::getPorts() {
  return m_portlookup;
}

void Module::addNet(Net *net) {
  //cout << "new net " << endl;
  m_nets.push_back(net);
  if (net->getPortDirection() != Net::NONE) {
      m_portlookup[net->getName()] = net;
  } else {
	  m_netlookup[net->getName()] = net;
  }
}

vector<Net*> Module::getNets() {
  return m_nets;
}
Net * Module::getNet(string name) {
	return m_netlookup[name];	
}

Net * Module::getPort(string name) {
	return m_portlookup[name];	
}

vector<Pin*> Module::getPins() {
  return m_pins;
}
void Module::addParamToInstantiation(string mod,string param,string value) {
  m_instlookup[mod]->addParam(param,value);
}

void Module::addAssignment(string name_a,string msb_a,string lsb_a,string value_b,string msb_b,string lsb_b) {
	//if (m_netlookup[name_a]!=NULL) {
	Net *net_a = new Net(Net::WIRE,name_a,Net::NONE,msb_a,lsb_a);
	Net *net_b = new Net(Net::WIRE,value_b,Net::NONE,msb_b,lsb_b);
		m_assignments[net_a] = net_b;

	//}
}

  map<Net*,Net*> Module::getAssignments() {
	  return m_assignments;
  }

