//      Pin.cpp
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


#include "Pin.h"


Pin::Pin(string pinName,vector<pair<Net*,pair<string,string> > > netList) : m_pinName(pinName), m_netList(netList) {

}

string Pin::getName() {
  return m_pinName;
}

vector<pair<Net*,pair<string,string> > > Pin::getNetList() {
	return m_netList;
}

void Pin::setName(string newName) {
	m_pinName = newName;
}


/*
Net * Pin::getNet() {
  return m_net;
}

string Pin::getMsb() {
	return m_msb;
	}
	
string Pin::getLsb() {
	return m_lsb;
	}

*/
