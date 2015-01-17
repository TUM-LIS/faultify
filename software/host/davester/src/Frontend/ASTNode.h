/*
 * ASTNode.h
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#ifndef ASTNODE_H_
#define ASTNODE_H_

#include <string>
#include <vector>

#include "../IR/Net.h"
#include "../IR/Pin.h"

class Module;

using namespace std;

class ASTNode;
class ASTNodePin;
class ASTNodeConcatItem;

class ASTNode {
 private:
  ASTNode *m_next;
 public:
  ASTNode();
  ASTNode *getNext();
  void setNext(ASTNode *n);
  virtual void callback(Module*);
};

class ASTNodeInst : public ASTNode {
 private:
  string m_module,m_name;
  vector<ASTNodePin*> m_pins;
  string m_file_annotation;
  string m_line_annotation;
  string m_annotation;
 public:
  ASTNodeInst(string,string,vector<ASTNodePin*> pins,string);
  void callback(Module* mod);
};

class ASTNodePortDecl : public ASTNode {
 private:
  string m_name;
 public:
  ASTNodePortDecl();
  void callback(Module* mod);
};

class ASTNodeNet : public ASTNode {
 private:
  vector<string> m_name;
  Net::type m_type;
  Net::port_direction m_port_direction;
  string m_msb;
  string m_lsb;
 public:
  ASTNodeNet(vector<string>,Net::type,Net::port_direction,string,string);
  void callback(Module* mod);
};

class ASTNodeDefParam : public ASTNode {
 private:
  string m_module;
  string m_param;
  string m_value;
 public:
  ASTNodeDefParam(string,string,string);
  void callback(Module* mod);
};

class ASTNodeAssignment : public ASTNode {
 private:
  //string m_name;
  ASTNodeConcatItem * m_name;
  //string m_value;
  ASTNodeConcatItem * m_value;
 public:
  ASTNodeAssignment(ASTNodeConcatItem*,ASTNodeConcatItem*);
  void callback(Module* mod);
};


class ASTNodePin : public ASTNode {
 private:
  string m_pinName;
  vector<ASTNodeConcatItem*> m_netList;
  //string m_netName;
  //string m_msb;
  //string m_lsb;
 public:
  ASTNodePin(string,vector<ASTNodeConcatItem*>);
  string getPinName();
  vector<ASTNodeConcatItem*> getNetList();
  //string getMSB();
  //string getLSB();
  
};

class ASTNodeConcatItem : public ASTNode {
 private:
  string m_netName;
  string m_msb;
  string m_lsb;
 public:
  ASTNodeConcatItem(string,string,string);
  string getNetName();
  string getMSB();
  string getLSB();
  
};


#endif /* ASTNODE_H_ */
