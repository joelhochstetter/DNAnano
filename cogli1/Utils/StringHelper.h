/*
 * StringHelper.h
 *
 *  Created on: 30/apr/2012
 *      Author: lorenzo
 */

#ifndef STRINGHELPER_H_
#define STRINGHELPER_H_

#include <algorithm>
#include <functional>
#include <locale>
#include <sstream>
#include <vector>
#include <cstdarg>
#include "../glm/glm.hpp"

class StringHelper {
public:
	StringHelper();
	virtual ~StringHelper();

	static std::string sformat(const std::string &fmt, ...);
	static std::string sformat_ap(const std::string &fmt, va_list &ap);

	template<class T> static bool from_string(const std::string& s, T& t);
	template<class T> static std::string to_string(const T& t);
	static std::vector<std::string> split(const std::string &s, char delim=' ');
	static std::string join(const std::vector<std::string> &spl, const std::string &glue);
	static bool get_vec3(const std::vector<std::string> &to_parse, int start, glm::vec3 &dest);

	static std::string sanitize_filename(std::string);

	// trim from both ends, it works like Python's own trim
	static inline std::string &trim(std::string &s) {
		return ltrim(rtrim(s));
	}

	// trim from start
	static inline std::string &ltrim(std::string &s) {
		s.erase(s.begin(), std::find_if(s.begin(), s.end(), std::not1(std::ptr_fun<int, int>(std::isspace))));
		return s;
	}

	// trim from end
	static inline std::string &rtrim(std::string &s) {
		s.erase(std::find_if(s.rbegin(), s.rend(), std::not1(std::ptr_fun<int, int>(std::isspace))).base(), s.end());
		return s;
	}

	static inline std::string &to_upper(std::string &s) {
		std::transform(s.begin(), s.end(), s.begin(), ::toupper);
		return s;
	}

	static inline std::string &to_lower(std::string &s) {
		std::transform(s.begin(), s.end(), s.begin(), ::tolower);
		return s;
	}
};

#endif /* STRINGHELPER_H_ */
