/*
 * ASTModule.cpp
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#include "ASTModule.h"

#include <iostream>

ASTModule::ASTModule(string name,vector<ASTNodePin*> *ports,vector<ASTNode*> *nodes) {
  m_mod = new Module(name);
  if (ports)
    m_ports = *ports;
  if (nodes)
    m_nodes = *nodes;
}

ASTModule::~ASTModule() {

}

Module* ASTModule::getModule() {

  //for (vector<vector<ASTNodeConcatItem*> >::iterator it=m_ports.begin(); it!=m_ports.end(); ++it) {
  //	for (vector<ASTNodeConcatItem*>::iterator pit=it->begin(); pit!=it->end(); ++pit) {
  //    		m_m_mod->addPort((*pit)->getNetName());
  //	  }
  //}
  


  for (vector<ASTNodePin*>::iterator it=m_ports.begin();it!=m_ports.end();++it) {
    vector<ASTNodeConcatItem*> items = ((*it)->getNetList());
    vector<pair<Net*,pair<string,string> > > netList;
    pair<Net*,pair<string,string> > netBusPair;
    Net* net; 
    pair<string,string> bus;
    
    for (vector<ASTNodeConcatItem*>::iterator cit=items.begin();cit!=items.end();++cit) {
      bus = pair<string,string> ((*cit)->getMSB(),(*cit)->getLSB());
      net = new Net(Net::WIRE,(*cit)->getNetName(),Net::NONE,"NULL","NULL");
      netBusPair = pair<Net*,pair<string,string> > (net,bus);
      netList.push_back(netBusPair);
    }
    Pin *aPin = new Pin((*it)->getPinName(),netList);
    m_mod->addPin(aPin);
    
    
  }
  for (vector<ASTNode*>::iterator it=m_nodes.begin(); it!=m_nodes.end(); ++it ) {
    (*it)->callback(m_mod);
  }
  return m_mod;
}

