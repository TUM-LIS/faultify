#include "ProbabilityInjection.h"

void check(IR* ir, Module* mod,vector<string>,string);

ProbabilityInjection::ProbabilityInjection()
{
}

ProbabilityInjection::~ProbabilityInjection()
{
}

void ProbabilityInjection::execute(IR* ir,string toplevel,vector<string> elements) {
  vector<Module*> mod = ir->getModules();
  int count=0;
  
  /* save original top module ports*/  
  Module* topMod = ir->getModule(toplevel);
  vector<Net*> origPorts = topMod->getNets();
  
  ir->setOriginalTopNets(origPorts);
  
  for (unsigned int i=0;i<elements.size();i+=2) {
    /* find Instances about to replace in all instances of all modules */
    for (vector<Module*>::iterator it = mod.begin(); it != mod.end(); ++it) {
	// dgb
	//cout << (*it)->getName() << ":" << (*it)->getName().compare("Inter_pred") << endl;
	//if (((*it)->getName().compare("Inter") > 1) || ((*it)->getName().compare("Intra") > 1)) 
	//{
	//cout << "got module..." << endl;
	// dbg
      vector<Instantiation*> inst = (*it)->getInstantiations();
      vector<string> errorNets;
      for (vector<Instantiation*>::iterator iit=inst.begin(); iit!= inst.end(); ++iit) {
	/* replace instance */
	if ((*iit)->getModule() == elements[i]) {
	  (*iit)->setModule(elements[i+1]);
	  count++;
	  /* add prob. Net to module */
	  string pName;
	  if ((*iit)->getName().at(0)==92)  {
	    pName = ((*iit)->getName());
	    pName.insert(1,"p_");
	    pName.insert(pName.size()-2,"_");
	  } else {
	    pName = "p_" + (*iit)->getName() + "_"  + (*iit)->getModule();
	  }
	  Net *net = new Net(Net::UNDEFINED,pName,Net::INPUT,"0","0");
	  (*it)->addNet(net);
	  /* add net to port list */
	  pair<string,string> bus_1;
	  vector<pair<Net*,pair<string,string> > > netList_1; 
	  pair<Net*,pair<string,string> > netBusPair_1;
	  bus_1 = pair<string,string> ("NULL","NULL");
	  netBusPair_1 = pair<Net*,pair<string,string> > (net,bus_1);
	  netList_1.push_back(netBusPair_1);
	  Pin *aPin = new Pin(pName,netList_1);
	  (*it)->addPin(aPin);
	  if ((*it)->getName()==toplevel) {             
	    /*cout << pName << "\n";*/
	    ir->addInjectionPin(pName);
	}
	    /* file annotation */
	    vector<string> iamap;
	    iamap.push_back((*iit)->getFileAnnotation());
	    iamap.push_back((*iit)->getLineAnnotation());
	    iamap.push_back((*iit)->getModule());
	    iamap.push_back((*iit)->getName());
	    iamap.push_back((*iit)->getOrigName());
	    iamap.push_back(pName);
	    ir->addInjectionAnnotation(iamap);
	  //}
          
	  /* add prob. Net to instance pins */
	  pair<string,string> bus ("0","0");
	  pair<Net*,pair<string,string> > netBusPair (net,bus);
	  vector<pair<Net*,pair<string,string> > > netList;
	  netList.push_back(netBusPair);
	  Pin * pin = new Pin("E",netList);
	  (*iit)->addPin(pin);     
	  /* remember errorInj nets */
	  errorNets.push_back(pName);   
	  
	  
	}
	
      }
      if (!errorNets.empty()) {
	check(ir,(*it),errorNets,toplevel);		
	errorNets.clear();
      }
	// dbg
	//}
	// dbg
    } 
    cout << "replaced " << count << " " << elements[i] << "\n";
    count = 0;

  }
}

void check(IR* ir, Module* mod, vector<string> errorNets,string toplevel) {
  vector<string> newErrorNets;
  vector<Module*> mods = ir->getModules();
  for (vector<Module*>::iterator it=mods.begin(); it!=mods.end(); ++it) {
	// dgb
	//cout << (*it)->getName() << endl;
	//if ((*it)->getName()== "Inter_") 
	//{
	//cout << "got module..." << endl;
	// dbg
    vector<Instantiation*> insts = (*it)->getInstantiations();
    for (vector<Instantiation*>::iterator iit=insts.begin();iit!=insts.end();++iit){
      if (mod->getName() == (*iit)->getModule()){
	for (vector<string>::iterator eit=errorNets.begin();eit!=errorNets.end();++eit) {
	  // add nets to module
	  string newName = *eit;
	  if (newName.at(0)==92)  {
	    newName.insert(newName.size()-2,"_");
	    if (mod->getName().at(0)==92) {
	      newName.insert(newName.size()-2,(mod->getName().substr(1,mod->getName().size()-2)));
	    }
	    else {
	      newName.insert(newName.size()-2,mod->getName());
	    }
	  } else {
	    if (mod->getName().at(0)==92) {
	      newName.insert(0,"\\");
	      newName.append(".");
	      newName.insert(newName.size()-1,(mod->getName().substr(1,mod->getName().size()-2)));
	      newName.append(" ");
	    }
	    else {
	      newName.append("_");
	      newName.insert(newName.size()-1,mod->getName());
	    }
	  }
	  Net *net = new Net(Net::UNDEFINED,newName,Net::INPUT,"0","0");
	  (*it)->addNet(net);
	  /* add net to port list */
	  pair<string,string> bus_1;
	  vector<pair<Net*,pair<string,string> > > netList_1; 
	  pair<Net*,pair<string,string> > netBusPair_1;
	  bus_1 = pair<string,string> ("NULL","NULL");
	  netBusPair_1 = pair<Net*,pair<string,string> > (net,bus_1);
	  netList_1.push_back(netBusPair_1);
	  Pin *aPin = new Pin(newName,netList_1);
	  (*it)->addPin(aPin);
	  if ((*it)->getName()==toplevel) {             
	    /*cout << newName << "\n";*/
	    ir->addInjectionPin(newName);								
	  }
	  
	  // add Pins to instance
	  pair<string,string> bus ("0","0");
	  pair<Net*,pair<string,string> > netBusPair (net,bus);
	  vector<pair<Net*,pair<string,string> > > netList;
	  netList.push_back(netBusPair);
	  Pin * pin = new Pin((*eit),netList);
	  (*iit)->addPin(pin);
	  
	  // add new netName to list
	  newErrorNets.push_back(newName);
	}
	// recursive...
	check(ir,(*it),newErrorNets,toplevel);	
      }
	}
//
//}
//
    
  }
}
