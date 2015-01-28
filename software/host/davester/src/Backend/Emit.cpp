/*
 * Emit.cpp
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#include "Emit.h"

void ModuleEmit::emit(IR* ir,ofstream &of, Module* mod, string toplevel) {
  
  
  if (!mod->getName().compare(toplevel)){
    of << "module " << mod->getName() << "_inj " << "(";
  }
  else {
    of << "module " << mod->getName() << "_inj " << "(";
  }
  /* PORTS */  
    vector<Net*> nets = mod->getNets();
    /*
    for (vector<Net*>::iterator nit=nets.begin(); nit!=nets.end();++nit) {
    if ((*nit)->getPortDirection()!=Net::NONE) {
    if (nit!=nets.begin())
    of << ",";
    of << (*nit)-> getName();
    }
    }
    of << "); "<< std::endl;
  */
  vector<Pin*> pins = mod->getPins();
  Net* net;
  for (vector<Pin*>::iterator pit=pins.begin(); pit!=pins.end(); ++pit) {
    if (pit!=pins.begin())
      of << ",";	   
    vector<pair<Net*,pair<string,string> > > netList = (*pit)->getNetList();
    //no concatenation
    
    if (netList.size()==1)
      {
	net = (netList.front()).first;	
	of <<  net->getName();	
	if (((net)->getMsb() + (net)->getLsb()) != "00")
	  if ((netList[0]).second.first != "NULL")
	  of << "[" << (netList[0]).second.first << ":" << (netList[0]).second.second << "]";
      }
    // concatenation
    
    else if (netList.size()>1) {
      of << "." << (*pit)->getName() << "(";
      of << "{";
      for (vector<pair<Net*,pair<string,string> > >::iterator vit=netList.begin(); vit!=netList.end();++vit){
	if (vit!=netList.begin())
	  of << ",";
	Net* net = (*vit).first;	
	of << net->getName();	
	if (((net)->getMsb() + (net)->getLsb()) != "00")
	  if ((*vit).second.first != "NULL")
	    of << "[" << (*vit).second.first << ":" << (*vit).second.second << "]";
      }
      of << "}";
      of << ")";
    }
    
  }  
    of << ");" << std::endl;
 

/* NETS */
  for (vector<Net*>::iterator nit=nets.begin(); nit!=nets.end();++nit) {
	switch ((*nit)->getPortDirection()) {
		case Net::INPUT:
			of << "input" << " ";
			if (((*nit)->getLsb() + (*nit)->getMsb()) != "00")
					of << "[" << (*nit)->getMsb() << ":" << (*nit)->getLsb() << "]" << " ";
			of <<(*nit)->getName() << " " << ";" << std::endl;
			break;
		case Net::OUTPUT:
			of << "output" << " ";
			if (((*nit)->getLsb() + (*nit)->getMsb()) != "00")
					of << "[" << (*nit)->getMsb() << ":" << (*nit)->getLsb() << "]" << " ";
			of <<(*nit)->getName() << " " << ";" << std::endl;
			break;
		case Net::INOUT:
			of << "inout" << " ";
			if (((*nit)->getLsb() + (*nit)->getMsb()) != "00")
					of << "[" << (*nit)->getMsb() << ":" << (*nit)->getLsb() << "]" << " ";
				of <<(*nit)->getName() << " " << ";" << std::endl;
			break;
		case Net::NONE:
			if ((*nit)->getType()==Net::WIRE)
				of << "wire" << " " ;
				if (((*nit)->getLsb() + (*nit)->getMsb()) != "00")
					of << "[" << (*nit)->getMsb() << ":" << (*nit)->getLsb() << "]" << " ";
				of <<(*nit)->getName() << " " << ";" << std::endl;
			/*	
			else if ((*nit)->getType()==Net::REG)
				of << "reg" << " " << (*nit)->getName() << ";" << std::endl;
			*/
			break;
		default:
			break;	
	}
  }
  
  /* INSTANCES */
  of << "// instances" << std::endl;
  vector<Instantiation*> inst = mod->getInstantiations();
  for (vector<Instantiation*>::iterator iit=inst.begin(); iit!=inst.end(); ++iit) {
      if (ir->getModule((*iit)->getModule()) != NULL) {
	of << "  " << (*iit)->getModule() << "_inj" << " " << (*iit)->getName() << "(" ;
	} else {
      of << "  " << (*iit)->getModule() << " " << (*iit)->getName() << "(" ;
	}
      //PINS
      vector<Pin*> pins = (*iit)->getPins();
      Net* net;
      for (vector<Pin*>::iterator pit=pins.begin(); pit!=pins.end(); ++pit) {
			if (pit!=pins.begin())
				of << ",";	   
			vector<pair<Net*,pair<string,string> > > netList = (*pit)->getNetList();
			//no concatenation
			
			if (netList.size()==1)
			{
			net = (netList.front()).first;	
			of << "." << (*pit)->getName() << "(" << net->getName();

			// DEBUG
			if ((*pit)->getName() == "A" && net->getName() == "TX0CONTA") {
			  cout << "ahah" << endl;
			  cout << (net)->getMsb()+  (net)->getLsb() << endl;
			  if (((net)->getMsb() + (net)->getLsb()) != "00") {
			    cout << "jappa" << endl;
			    cout << "[" << (netList[0]).second.first << ":" << (netList[0]).second.second << "]";
			  }
			}

			if (((net)->getMsb() + (net)->getLsb()) != "00") {
			  //			  if ((*vit).second.first != "NULL")
			  if ((netList[0]).second.first != "NULL" && (netList[0]).second.second != "NULL") {
			    of << "[" << (netList[0]).second.first << ":" << (netList[0]).second.second << "]";
			    
			  }

			}
			of << ")"; 
			}
			// concatenation
			else if (netList.size()>1) {
				of << "." << (*pit)->getName() << "(";
				of << "{";
				for (vector<pair<Net*,pair<string,string> > >::iterator vit=netList.begin(); vit!=netList.end();++vit){
					if (vit!=netList.begin())
						of << ",";
					Net* net = (*vit).first;	
					of << net->getName();	
					if (((net)->getMsb() + (net)->getLsb()) != "00")
					  if ((*vit).second.first != "NULL")
					    of << "[" << (*vit).second.first << ":" << (*vit).second.second << "]";
				}
				of << "}";
				of << ")";
			}
			 	
			
		}
		of << ");" << std::endl;

       
       //PARAMS
       map<string,string> param = (*iit)->getParams();
       if (param.size()!=0) {
		   for (map<string,string>::iterator pit=param.begin(); pit!=param.end(); ++pit) 
				of << "defparam" << " " << (*iit)->getName() << "." << pit->first << "=" << pit->second << ";" << std::endl; 
       }
        
  }

  
  /* Assignments */
  map<Net*,Net*> assis = mod->getAssignments();
  for (map<Net*,Net*>::iterator ait=assis.begin(); ait!=assis.end(); ++ait){
    of << "assign" << " " << ait->first->getName();
    if (ait->first->getMsb() != "NULL")
      of << "[" << ait->first->getMsb() << ":" << ait->first->getLsb() << "]";
    of << "=" << ait->second->getName();
    if (ait->second->getMsb() != "NULL")
      of << "[" << ait->second->getMsb() << ":" << ait->second->getLsb() << "]";
    of  << ";" << std::endl;
  }
  
  of << "endmodule" << std::endl;
}
