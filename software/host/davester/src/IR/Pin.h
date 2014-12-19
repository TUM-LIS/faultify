//      Pin.h
//      
//      Copyright 2011 May <ne86sud@labws05>
//      
//      This program is free software; you can redistribute it and/or modify
//      it under the terms of the GNU General Public License as published by
//      the Free Software Foundation; either version 2 of the License, or
//      (at your option) any later version.
//      
//      This program is distributed in the hope that it will be useful,
//      but WITHOUT ANY WARRANTY; without even the implied warranty of
//      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//      GNU General Public License for more details.
//      
//      You should have received a copy of the GNU General Public License
//      along with this program; if not, write to the Free Software
//      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//      MA 02110-1301, USA.

#ifndef PIN_H_
#define PIN_H_

#include <string>

#include <vector>

#include "Net.h"

using namespace std;


class Pin {

private:
  string m_pinName;
  vector<pair<Net*,pair<string,string> > > m_netList;
  //Net* m_net;
  //string m_msb;
  //string m_lsb;
public:
  Pin();
  Pin(string,vector<pair<Net*,pair<string,string> > >);
  void setName(string);
  string getName();
  vector<pair<Net*,pair<string,string> > > getNetList();
  //Net* getNet();
  //string getMsb();
  //string getLsb();
};

#endif /* NET_H_ */
