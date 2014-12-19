/*
 * Net.cpp
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#include "Net.h"

Net::Net() : m_type(Net::UNDEFINED), m_msb("0"), m_lsb("0") {

}

Net::Net(Net::type t, string name,port_direction d, string msb, string lsb) : m_type(t), m_name(name), m_port_direction(d), m_msb(msb), m_lsb(lsb) {

}

string Net::getName() {
  return m_name;
}

void Net::setName(string newName) {
  m_name = newName;
}

Net::port_direction Net::getPortDirection() {
  return m_port_direction;
}

Net::type Net::getType() {
  return m_type;
}

string Net::getMsb() {
	return m_msb;
	}
	
string Net::getLsb() {
	return m_lsb;
	}
