/*
 * IR.cpp
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#include "IR.h"

#include <iostream>
#include <sstream>

IR::IR() {

}

void IR::print() {
  if (m_timescale.length()>0) {
    std::cout << "  + Timescale: " << m_timescale << std::endl;
  }
  for (vector<Module*>::iterator it=m_modules.begin(); it!=m_modules.end(); ++it) {
    std::cout << "  + Module " << (*it)->getName() << std::endl;
    map<string,Net*> ports = (*it)->getPorts();
    if (ports.size()==0) {
      std::cout << "    + No Ports " << std::endl;
    } else {
      std::cout << "    + Ports:" << std::endl;
      for (map<string,Net*>::iterator iit=ports.begin(); iit!=ports.end(); ++iit) {
	std::cout << "      + " << iit->first << ": ";
	if (iit->second) {
	  switch (iit->second->getPortDirection()) {
	  case Net::INPUT:
	    std::cout << "input" << std::endl;
	    break;
	  case Net::OUTPUT:
	    std::cout << "output" << std::endl;
	    break;
	  default:
	    std::cout << "invalid port declaration" << std::endl;
	    break;
	  }
	} else {
	  std::cout << "missing port declaration!" << std::endl;
	}
      }
    }
    
    std::cout << "    + Nets:" << std::endl;
    vector<Net*> nets = (*it)->getNets();
    for (vector<Net*>::iterator nit=nets.begin(); nit!=nets.end(); ++nit) {
      std::cout << "      + " << (*nit)->getName() << " (";
      switch ((*nit)->getType()) {
      case Net::WIRE:
	std::cout << "wire";
	break;
      default:
	std::cout << "undefined type";
	break;
      }
      if ((*nit)->getPortDirection()!=Net::NONE) {
	std::cout << ",port";
      }
      std::cout << ")" << std::endl;
    }
    
    std::cout << "    + Instantiations:" << std::endl;
    vector<Instantiation*> inst = (*it)->getInstantiations();
    for (vector<Instantiation*>::iterator iit=inst.begin(); iit!=inst.end(); ++iit) {
      std::cout << "      + " << (*iit)->getName() << " (" << (*iit)->getModule() << ")" << std::endl;
      map<string,string> params = (*iit)->getParams();
      if (params.size()>0) {
	std::cout << "        + Parameters:" <<std::endl;
	for (map<string,string>::iterator pit=params.begin(); pit!= params.end(); ++pit) {
	  std::cout << "         + " << pit->first << " " << pit->second<< std::endl;
	}
      }
    }
  }
}

void IR::addModule(Module *mod) {
  m_modules.push_back(mod);
  m_modulelookup[mod->getName()] = mod;
}


void IR::eraseModule(string name){
  m_modulelookup.erase(name);
  m_modules.clear();
  for (map<string,Module*>::iterator iit=m_modulelookup.begin(); iit!=m_modulelookup.end(); ++iit) {
    m_modules.push_back(iit->second);
  }
}


void IR::setTimescale(string ts1,string ts2) {
  m_timescale = ts1 + "/" + ts2;
}

void IR::addAnnotatedFile(string path) {
  istringstream iss(path);
  string str;
  getline(iss,str,'"');
  getline(iss,str,'"');
  m_annotatedFiles.push_back(str);
  cout << "annotated file:" << str << endl;
}

void IR::addInjectionAnnotation(vector<string> annotMap) {
  m_injectionAnnotation.push_back(annotMap);
}

vector<vector<string> > IR::getAnnotations() {
  return m_injectionAnnotation;

}

vector<string> IR::getAnnotatedFiles() {
  return m_annotatedFiles;
}

vector<Module*> IR::getModules() {
  return m_modules;
}

Module* IR::getModule(string name) {
	return m_modulelookup[name];
}

void IR::addInjectionPin(string name) {
	m_injectionPins.push_back(name);
}
void IR::setOriginalTopNets(vector<Net*> nets) {
	m_originalNets=nets;

}
vector<string> IR::getInjectionPins() {
	return m_injectionPins;
}

vector<Net*> IR::getOriginalTopNets() {
	return m_originalNets;

}

void IR::validate() {

}
