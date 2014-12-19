/*
 * Net.h
 *
 *  Created on: Dec 7, 2011
 *      Author: gu45zin
 */

#ifndef NET_H_
#define NET_H_

#include <string>

using namespace std;


class Net {
public:
  typedef enum { UNDEFINED, WIRE } type;
  typedef enum { NONE, INPUT, OUTPUT, INOUT } port_direction;
private:
  type m_type;
  string m_name;
  port_direction m_port_direction;
  string m_msb;
  string m_lsb;
public:
  Net();
  Net(Net::type,string,port_direction,string,string);

  string getName();
  void setName(string);
  port_direction getPortDirection();
  type getType();
  string getMsb();
  string getLsb();
};

#endif /* NET_H_ */
