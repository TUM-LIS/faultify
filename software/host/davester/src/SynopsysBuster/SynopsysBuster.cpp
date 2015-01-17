#include "SynopsysBuster.h"

void SynopsysBuster::execute(IR* ir,string toplevel) {
  vector<Module*> mod = ir->getModules();
  unsigned int numCorr=0;
  string newName;
  string oldName;
  
  for (vector<Module*>::iterator it = mod.begin(); it != mod.end(); ++it) {
    vector<Instantiation*> inst = (*it)->getInstantiations();
    /* Replace wrong module names */
    //cout << (*it)->getName() << endl;
    if ((*it)->getName().at(0)==92)  {
	stringstream Str; 
	string numStr;
	oldName = (*it)->getName();
	Str << numCorr;
	newName = "desc" + Str.str(); 
	//cout << "replaced module: " << (*it)->getName() << "with: " << newName << endl;
	(*it)->setName(newName);
	numCorr++;
	/* replace Instance names */
	for (vector<Module*>::iterator it2 = mod.begin(); it2 != mod.end(); ++it2) {
	  vector<Instantiation*> inst2 = (*it2)->getInstantiations();
	  for (vector<Instantiation*>::iterator iit2=inst2.begin(); iit2!= inst2.end(); ++iit2) {
	    if ((*iit2)->getModule()==oldName)
	      (*iit2)->setModule(newName);
	  }
	}
	ir->addModule(*it);
	ir->eraseModule(oldName);
	
    }
    /* Replace wrong Instance names */
    for (vector<Instantiation*>::iterator iit=inst.begin(); iit!= inst.end(); ++iit) {
      if ((*iit)->getName().at(0)==92)  {
	stringstream Str; 
	string numStr;
	Str << numCorr;
	newName = "desc" + Str.str(); 
	//cout << "replaced: " << (*iit)->getName() << "with: " << newName << endl;
	(*iit)->setName(newName);
	numCorr++;
      }
    }
  

#if 0
	vector<Net*> nets = (*it)->getNets();
	for (vector<Net*>::iterator netit = nets.begin(); netit != nets.end(); ++netit) {
		if ((*netit)->getName().at(0)==92)  {	
			stringstream Str; 
			string numStr;
			oldName = (*netit)->getName();
			Str << numCorr;
			newName = "desc" + Str.str(); 
			(*netit)->setName(newName);
			cout << "wrong Net: " << oldName << " replaced with: " << newName << endl;
			numCorr++;
			for (vector<Module*>::iterator it2 = mod.begin(); it2 != mod.end(); ++it2) {
	  			vector<Instantiation*> inst2 = (*it2)->getInstantiations();
				for (vector<Instantiation*>::iterator iit2=inst2.begin(); iit2!= inst2.end(); ++iit2) {
					if ((*iit2)->getModule()==(*it)->getName()) {
						vector<Pin*> pins = (*iit2)->getPins();
						for (vector<Pin*>::iterator pinit = pins.begin(); pinit!=pins.end(); ++pinit) {
							if ((*pinit)->getName()==oldName) {
								(*pinit)->setName(newName);
							}
						}
					}
				}
			}

			
		}
	}	
	
#endif
  }
}
