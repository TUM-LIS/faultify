#include "Instantiation.h"

Instantiation::Instantiation(string module,string name,vector<Pin*> pins,string file_annotation,string line_annotation )
  : m_module(module), m_name(name), m_pins(pins), m_file_annotation(file_annotation), m_line_annotation(line_annotation) {

  m_orig_name = m_name;

}

string Instantiation::getModule() {
  return m_module;
}

string Instantiation::getName() {
  return m_name;
}

string Instantiation::getOrigName() {

  return m_orig_name;
}

void Instantiation::setModule(string n) {
  m_module = n;
}

void Instantiation::setName(string n) {
  m_name = n;
}

void Instantiation::addParam(string name,string value) {
  m_params[name] = value;
}

map<string,string> Instantiation::getParams() {
  return m_params;
}

vector<Pin*> Instantiation::getPins() {
	return m_pins;
}

void Instantiation::addPin(Pin * newPin) {
	m_pins.push_back(newPin);
}

string Instantiation::getFileAnnotation() {
  return m_file_annotation;
}
string Instantiation::getLineAnnotation() {
  return m_line_annotation;
}


