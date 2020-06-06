/*
 * StringHelper.cpp
 *
 *  Created on: 30/apr/2012
 *      Author: lorenzo
 */

#include <algorithm>
#include <iostream>

#include "StringHelper.h"

using namespace std;

StringHelper::StringHelper() {

}

StringHelper::~StringHelper() {

}

std::string StringHelper::sformat(const std::string &fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    std::string str = StringHelper::sformat_ap(fmt, ap);
    va_end(ap);
    return str;
}

// c++ wrapper around sprintf (WTF?)
std::string StringHelper::sformat_ap(const std::string &fmt, va_list &ap) {
    int size = 500;
    std::string str;
    while(1) {
        str.resize(size);
        int n = vsnprintf((char *)str.c_str(), size, fmt.c_str(), ap);
        if (n > -1 && n < size) {
            str.resize(n);
            return str;
        }
        if (n > -1) size = n + 1;
        else size *= 2;
    }
    return str;
}

bool StringHelper::get_vec3(const vector<string> &to_parse, int start, glm::vec3 &dest) {
	if(to_parse.size() < 3) return false;
	if(!StringHelper::from_string<float>(to_parse[start], dest[0])) return false;
	if(!StringHelper::from_string<float>(to_parse[start+1], dest[1])) return false;
	if(!StringHelper::from_string<float>(to_parse[start+2], dest[2])) return false;

	return true;
}

template<>
bool StringHelper::from_string(const string &s, bool &t) {
	string ns(s);
	std::transform(ns.begin(), ns.end(), ns.begin(), ::tolower);
	if(ns == "0" || ns == "false" ) {
		t = false;
		return true;
	}

	if(ns == "1" || ns == "true" ) {
		t = true;
		return true;
	}

	return false;
}

template<class T>
bool StringHelper::from_string(const string &s, T &t) {
	istringstream iss(s);
	return !(iss >> t).fail();
}

template<class T>
string StringHelper::to_string(const T &t) {
	stringstream iss;
	iss << t;

	return iss.str();
}

vector<string> StringHelper::split(const string &s, char delim) {
	string s_copy(s);
	if(delim == ' ') StringHelper::trim(s_copy);
	vector<string> elems;
	stringstream ss(s_copy);
	string item;

	while(getline(ss, item, delim)) {
		if(delim == ' ') {
			StringHelper::trim(item);
			if(item.length() > 0) elems.push_back(item);
		}
		else elems.push_back(item);
	}

	return elems;
}

string StringHelper::join(const vector<string> &spl, const string &glue) {
	string res = spl[0];

	vector<string>::const_iterator it = spl.begin();
	for(++it; it != spl.end(); it++) {
		res += glue;
		res += *it;
	}

	return res;
}

string StringHelper::sanitize_filename(string filename) {
	cout << filename << endl;
	filename.erase(remove(filename.begin(), filename.end(), ':'), filename.end());
	cout << filename << endl;
	filename.erase(remove(filename.begin(), filename.end(), ','), filename.end());
	cout << filename << endl;
	replace(filename.begin(), filename.end(), ' ', '_');
	return filename;
}

template bool StringHelper::from_string<float>(const string &s, float &t);
template bool StringHelper::from_string<unsigned long int>(const string &s, unsigned long int &t);
template bool StringHelper::from_string<unsigned int>(const string &s, unsigned int &t);
template bool StringHelper::from_string<double>(const string &s, double &t);
template bool StringHelper::from_string<int>(const string &s, int &t);
template bool StringHelper::from_string<long long int>(const string &s, long long int &t);
template bool StringHelper::from_string<bool>(const string &s, bool &t);
template string StringHelper::to_string<double>(const double &t);
template string StringHelper::to_string<int>(const int &t);
