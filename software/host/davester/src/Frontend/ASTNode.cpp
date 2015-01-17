/*
 * ASTNode.cpp
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#include "ASTNode.h"
#include "../IR/Module.h"
#include "../IR/Instantiation.h"
#include "../IR/Pin.h"

#include <iostream>
#include <utility>
#include <string>
#include <sstream>

ASTNode::ASTNode() : m_next(NULL) {}

ASTNode *ASTNode::getNext() { return m_next; }
void ASTNode::setNext(ASTNode *n) { m_next = n; }
void ASTNode::callback(Module*) {   std::cout << "Unhandled callback" << std::endl; }

ASTNodeInst::ASTNodeInst(string module,string name,vector<ASTNodePin*> pins,string annotation) : m_module(module), m_name(name), m_pins(pins), m_annotation(annotation){

}

void ASTNodeInst::callback(Module* mod) {
  //std::cout << m_annotation << std::endl;

  // Slice synopsys annotation
  istringstream iss(m_annotation);
  getline(iss,m_file_annotation,'@');
  getline(iss,m_file_annotation,':');
  getline(iss,m_line_annotation,' ');
  //std::cout << m_file_annotation << " " << m_line_annotation << endl;

  
  vector<Pin*> pins;
  for (vector<ASTNodePin*>::iterator it=m_pins.begin();it!=m_pins.end();++it) {
    vector<ASTNodeConcatItem*> items = (*it)->getNetList();
    vector<pair<Net*,pair<string,string> > > netList;
    pair<Net*,pair<string,string> > netBusPair;
    Net* net; 
    pair<string,string> bus;
    for (vector<ASTNodeConcatItem*>::iterator cit=items.begin();cit!=items.end();++cit) {
      bus = pair<string,string> ((*cit)->getMSB(),(*cit)->getLSB());
      if ((mod->getNet((*cit)->getNetName()))!=NULL)
	net = (mod->getNet((*cit)->getNetName()));
      else if ((mod->getPort((*cit)->getNetName()))!=NULL)
	net = (mod->getPort((*cit)->getNetName()));	
      else if ((mod->getNet((*cit)->getNetName())==NULL) && (mod->getPort((*cit)->getNetName())==NULL)){
	cout << "error, couldnt find:" << (*cit)->getNetName() << " in " << mod->getName() <<"\n";
	net = new Net(Net::WIRE,(*cit)->getNetName(),Net::NONE,"0","0");
      }
      netBusPair = pair<Net*,pair<string,string> > (net,bus);
      netList.push_back(netBusPair);
    }
    Pin *aPin = new Pin((*it)->getPinName(),netList);
    pins.push_back(aPin);
  }
  Instantiation *inst = new Instantiation(m_module,m_name,pins,m_file_annotation,m_line_annotation);
  mod->addInstantiation(inst);
}

ASTNodeNet::ASTNodeNet(vector<string> name,Net::type t,Net::port_direction d, string msb, string lsb) : m_name(name), m_type(t), m_port_direction(d), m_msb(msb), m_lsb(lsb) {
}

void ASTNodeNet::callback(Module* mod) {
  for (vector<string>::iterator it=m_name.begin();it!=m_name.end();++it) {
    Net *net = new Net(m_type,(*it),m_port_direction,m_msb,m_lsb);
    mod->addNet(net);
  }
}

ASTNodeDefParam::ASTNodeDefParam(string mod,string param,string val) : m_module(mod), m_param(param), m_value(val) {
  
}

void ASTNodeDefParam::callback(Module* mod) {
  mod->addParamToInstantiation(m_module,m_param,m_value);
}

ASTNodeAssignment::ASTNodeAssignment(ASTNodeConcatItem* name, ASTNodeConcatItem* value) : m_name(name), m_value(value) {
  
}

void ASTNodeAssignment::callback(Module* mod) {
  
  mod->addAssignment(m_name->getNetName(),m_name->getMSB(),m_name->getLSB(),m_value->getNetName(),m_value->getMSB(),m_value->getLSB());
  
}


ASTNodePin::ASTNodePin(string pinName,vector<ASTNodeConcatItem*> netList) : m_pinName(pinName), m_netList(netList) {
  
}

string ASTNodePin::getPinName() {
	return m_pinName;
}


vector<ASTNodeConcatItem*> ASTNodePin::getNetList() {
  return m_netList;
}

ASTNodeConcatItem::ASTNodeConcatItem(string name,string msb,string lsb) : m_netName(name), m_msb(msb), m_lsb(lsb) {
  
}
string ASTNodeConcatItem::getNetName() {
  return m_netName;
}

string ASTNodeConcatItem::getMSB() {
	return m_msb;
}

string ASTNodeConcatItem::getLSB() {
  return m_lsb;
}


