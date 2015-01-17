#ifndef INSTANTIATION_H_
#define INSTANTIATION_H_

#include <string>
#include <map>
#include <vector>

using namespace std;


#include "Net.h"
#include "Pin.h"



class Instantiation {
private:
  string m_module,m_name,m_orig_name;
  map<string,string> m_params;
  vector<Pin*> m_pins;
  string m_file_annotation;
  string m_line_annotation;
  
public:
  Instantiation(string module,string name,vector<Pin*> pins,string,string);
  string getModule();
  string getOrigName();
  string getName();
  string getFileAnnotation();
  string getLineAnnotation();
  void setModule(string);
  void setName(string);
  void addParam(string name,string value);
  map<string,string> getParams();
  vector<Pin*> getPins();
  void addPin(Pin*);
};

#endif /* INSTANTIATION_H_ */
