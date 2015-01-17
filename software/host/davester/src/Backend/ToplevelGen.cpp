/*
 *
 *  Created on: Jan, 2011
 *      Author: ne86sud
 */

#include "ToplevelGen.h"

void ModuleToplevelGen::emitCutWrapper(ofstream &of, vector<Net*> origPins, vector<string> injPins, string toplevel,string clk, string rst) {
  /* count ports */
  unsigned int numInp=0,numOutp=0,numInOut=0,numInj=0;
  unsigned int msb,lsb;
  unsigned int absNumIn=0,absNumOut=0,absNumInOut=0;
  
  for (vector<Net*>::iterator nit=origPins.begin(); nit!=origPins.end();++nit) {
    if ((*nit)->getPortDirection()==Net::INPUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb))>0) {
	absNumIn = absNumIn + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumIn++;
      }
    }
    if ((*nit)->getPortDirection()==Net::OUTPUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb)) >0) {
	absNumOut = absNumOut + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumOut++;
      }
    }
    if ((*nit)->getPortDirection()==Net::INOUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb))>0) {
	absNumOut = absNumOut + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumOut++;
      }
    }

  }
  if (clk.compare("NONE"))
    absNumIn--;
  if (rst.compare("NONE"))
    absNumIn--;
  
  
  of << "`timescale 100 ps/100 ps" << "\n";
  of << "module circuit_under_test (" << "\n";
  of << "clk,\n";
  of << "rst,\n";
  of << "testVector,\n";
  of << "resultVector,\n";
  of << "injectionVector\n";
  of << ");\n";
  of << "input clk;\n";
  of << "input rst;\n";
  of << "input" << "[" << absNumIn-1 <<":" << "0" << "]" << " testVector;\n";
  of << "output" << "[" << absNumOut-1 << ":" << "0" <<"]" << " resultVector;\n";
  of << "input" << "[" << injPins.size()-1 << ":" << "0" << "]" << " injectionVector;\n";
  of << toplevel << "_inj"<< " toplevel_instance " << "(" << "\n";
  
  for (vector<Net*>::iterator nit=origPins.begin(); nit!=origPins.end();++nit) {
    
    
    if ((*nit)->getPortDirection()==Net::INPUT) {
      
      if (!(*nit)-> getName().compare(clk)) {
	of << "." << clk << "(clk),\n";
      }
      else if (!(*nit)-> getName().compare(rst)) {
	of << "." << rst << "(rst),\n";
      }
      else {
	of << "." << (*nit)-> getName() << "(";
	stringstream ss1((*nit)->getMsb()); ss1 >> msb;
	stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
	if ( ((int(msb)-int(lsb))) > 0 ) {
	  of << "testVector [" <<  numInp+msb << ":" << numInp+lsb << "]),\n";
	  numInp = numInp + (abs(int(msb)-int(lsb)) + 1);
	}
	else if ( ((int(msb)-int(lsb))) < 0 ) {
	  of << "testVector [" <<  numInp+lsb << ":" << numInp+msb << "]),\n";
	  numInp = numInp + (abs(int(msb)-int(lsb)) + 1);
	}
	else {
	  of << "testVector[" << numInp << "]),\n";
	  numInp++;
	}
      }
    }
    if ((*nit)->getPortDirection()==Net::OUTPUT) {
      of << "." << (*nit)-> getName() << "(";
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if ( ((int(msb)-int(lsb))) > 0) {
	of << "resultVector [" <<  numOutp+msb << ":" << numOutp+lsb << "]),\n";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else if ( ((int(msb)-int(lsb))) < 0 ) {
	of << "resultVector [" <<  numOutp+lsb << ":" << numOutp+msb << "]),\n";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	of << "resultVector[" << numOutp << "]),\n";
	numOutp++;
      }
    }
  }
  
  /* Injection Inputs */
  for (unsigned int i=0;i<injPins.size();i++) {
    of << "." << injPins[i] << "(injectionVector" << "[" << i << "])";
    
    /* comma or end of ports */
    if (i<injPins.size()-1) {
      of << ",\n";
    }
  }
  of << ");\n";
  of << "endmodule";
}





void ModuleToplevelGen::emitGocWrapper(ofstream &of, vector<Net*> origPins, vector<string> injPins, string toplevel, string clk, string rst) {
	/* count ports */
  unsigned int numInp=0,numOutp=0,numInOut=0,numInj=0;
  unsigned int msb,lsb;
  unsigned int absNumIn=0,absNumOut=0;
  
  for (vector<Net*>::iterator nit=origPins.begin(); nit!=origPins.end();++nit) {
    if ((*nit)->getPortDirection()==Net::INPUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb))>0) {
	absNumIn = absNumIn + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumIn++;
      }
    }
    if ((*nit)->getPortDirection()==Net::OUTPUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb))>0) {
	absNumOut = absNumOut + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumOut++;
      }
    }
    if ((*nit)->getPortDirection()==Net::INOUT) {
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if (abs(int(msb)-int(lsb))>0) {
	absNumOut = absNumOut + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	absNumOut++;
      }
    }
    
  }
  
  if (clk.compare("NONE"))
    absNumIn--;
  if (rst.compare("NONE"))
    absNumIn--;
  

  cout << "NumIn: " << absNumIn << "\n";
  cout << "NumOut: " << absNumOut << "\n";
  cout << "NumInj: " << injPins.size() << "\n";
  
  of << "`timescale 100 ps/100 ps" << "\n";
  of << "module golden_circuit (" << "\n";
  of << "clk,\n";
  of << "rst,\n";
  of << "testVector,\n";
  of << "resultVector,\n";
  of << ");\n";
  of << "input clk;\n";
  of << "input rst;\n";
  of << "input" << "[" << absNumIn-1 <<":" << "0" << "]" << " testVector;\n";
  of << "output" << "[" << absNumOut-1 << ":" << "0" <<"]" << " resultVector;\n";
  of << toplevel << " toplevel_instance " << "(" << "\n";
  
  for (vector<Net*>::iterator nit=origPins.begin(); nit!=origPins.end();++nit) {
    
    if ((*nit)->getPortDirection()==Net::INPUT) {
      if (!(*nit)-> getName().compare(clk)) {
	if (numInp+numOutp == absNumIn+absNumOut) {
	  of << ",\n";
	}
	of << "." << clk << "(clk)";
      }
      else if (!(*nit)-> getName().compare(rst)) {
	      if (numInp+numOutp == absNumIn+absNumOut) {
		of << ",\n";
	      }
	      of << "." << rst << "(rst)";
      }
      else {
	of << "." << (*nit)-> getName() << "(";
	stringstream ss1((*nit)->getMsb()); ss1 >> msb;
	stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
	if ((int(msb)-int(lsb))>0) {
	  of << "testVector [" <<  numInp+msb << ":" << numInp+lsb << "])";
	  numInp = numInp + (abs(int(msb)-int(lsb)) + 1);
	}
	else if ((int(msb)-int(lsb))<0) {
	  of << "testVector [" <<  numInp+lsb << ":" << numInp+msb << "])";
	  numInp = numInp + (abs(int(msb)-int(lsb)) + 1);
	}
	else {
	  of << "testVector[" << numInp << "])";
	  numInp++;
	}
      }
    }
    if ((*nit)->getPortDirection()==Net::OUTPUT) {
      of << "." << (*nit)-> getName() << "(";
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if ((int(msb)-int(lsb))>0) {
	of << "resultVector [" <<  numOutp+msb << ":" << numOutp+lsb << "])";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else if ((int(msb)-int(lsb))<0) {
	of << "resultVector [" <<  numOutp+lsb << ":" << numOutp+msb << "])";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	of << "resultVector[" << numOutp << "])";
	numOutp++;
      }
    }
    if ((*nit)->getPortDirection()==Net::INOUT) {
      of << "." << (*nit)-> getName() << "(";
      stringstream ss1((*nit)->getMsb()); ss1 >> msb;
      stringstream ss2((*nit)->getLsb()); ss2 >> lsb;
      if ((int(msb)-int(lsb))>0) {
	of << "resultVector [" <<  numOutp+msb << ":" << numOutp+lsb << "])";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else if ((int(msb)-int(lsb))<0) {
	of << "resultVector [" <<  numOutp+lsb << ":" << numOutp+msb << "])";
	numOutp = numOutp + (abs(int(msb)-int(lsb)) + 1);
      }
      else {
	of << "resultVector[" << numOutp << "])";
	numOutp++;
      }
    }
    
    if ((*nit)->getPortDirection()!=Net::NONE && (numInp+numOutp < absNumIn+absNumOut)) {
      of << ",\n";
    }
  }
  of << ");\n";
  of << "endmodule";
}
