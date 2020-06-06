// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.775143, 34.604519, 35.291607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524748, 34.916370, 35.284397>,  <24.374512, 35.103481, 35.280071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524748, 34.916370, 35.284397>,  <24.775143, 34.604519, 35.291607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524748, 34.916370, 35.284397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615111, -0.507834, -0.603112,
		-0.479349, -0.366460, 0.797453,
		-0.625990, 0.779623, -0.018017,
		24.336952, 35.150257, 35.278992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948057, 35.304558, 35.279514>,  <24.775143, 34.604519, 35.291607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948057, 35.304558, 35.279514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730181, 35.560314, 35.496582>,  <24.599455, 35.713768, 35.626823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730181, 35.560314, 35.496582>,  <24.948057, 35.304558, 35.279514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730181, 35.560314, 35.496582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751692, -0.085310, -0.653974,
		-0.371848, -0.764136, 0.527091,
		-0.544691, 0.639388, 0.542672,
		24.566772, 35.752132, 35.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140673, 35.396427, 35.965080>,  <24.948057, 35.304558, 35.279514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140673, 35.396427, 35.965080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504709, 35.556740, 36.007229>,  <25.723131, 35.652927, 36.032516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504709, 35.556740, 36.007229>,  <25.140673, 35.396427, 35.965080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504709, 35.556740, 36.007229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196466, -0.193414, -0.961245,
		-0.364871, 0.895524, -0.254765,
		0.910094, 0.400783, 0.105369,
		25.777737, 35.676975, 36.038841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603872, 34.922203, 35.490280>,  <25.140673, 35.396427, 35.965080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603872, 34.922203, 35.490280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793552, 34.802204, 35.821373>,  <25.907360, 34.730206, 36.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793552, 34.802204, 35.821373>,  <25.603872, 34.922203, 35.490280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793552, 34.802204, 35.821373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063839, -0.949396, -0.307525,
		0.878101, 0.092987, -0.469353,
		0.474198, -0.300001, 0.827729,
		25.935812, 34.712204, 36.069691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125776, 34.462132, 35.348007>,  <25.603872, 34.922203, 35.490280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125776, 34.462132, 35.348007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032209, 34.350613, 35.720577>,  <25.976068, 34.283703, 35.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032209, 34.350613, 35.720577>,  <26.125776, 34.462132, 35.348007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032209, 34.350613, 35.720577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038290, -0.959903, -0.277705,
		0.971502, -0.029296, 0.235213,
		-0.233917, -0.278798, 0.931426,
		25.962034, 34.266972, 36.000004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499973, 34.059647, 35.625027>,  <26.125776, 34.462132, 35.348007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499973, 34.059647, 35.625027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606890, 34.291313, 35.316971>,  <26.671040, 34.430313, 35.132137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606890, 34.291313, 35.316971>,  <26.499973, 34.059647, 35.625027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606890, 34.291313, 35.316971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457351, -0.779718, -0.427633,
		-0.848165, -0.237923, -0.473295,
		0.267293, 0.579165, -0.770144,
		26.687077, 34.465061, 35.085926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171026, 33.808731, 34.897297>,  <26.499973, 34.059647, 35.625027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171026, 33.808731, 34.897297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523222, 33.998344, 34.895119>,  <26.734539, 34.112114, 34.893814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523222, 33.998344, 34.895119>,  <26.171026, 33.808731, 34.897297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523222, 33.998344, 34.895119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434249, -0.811084, -0.391881,
		-0.190179, 0.342683, -0.920000,
		0.880489, 0.474036, -0.005442,
		26.787369, 34.140556, 34.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422266, 33.825378, 34.216469>,  <26.171026, 33.808731, 34.897297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422266, 33.825378, 34.216469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703236, 33.819267, 34.501106>,  <26.871817, 33.815601, 34.671890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703236, 33.819267, 34.501106>,  <26.422266, 33.825378, 34.216469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703236, 33.819267, 34.501106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362973, -0.852309, -0.376590,
		0.612253, 0.522816, -0.593136,
		0.702422, -0.015276, 0.711597,
		26.913961, 33.814686, 34.714584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417995, 33.238480, 33.730488>,  <26.422266, 33.825378, 34.216469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417995, 33.238480, 33.730488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339409, 32.951210, 33.463467>,  <26.292257, 32.778847, 33.303253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339409, 32.951210, 33.463467>,  <26.417995, 33.238480, 33.730488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339409, 32.951210, 33.463467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215015, 0.695805, -0.685292,
		0.956645, 0.008897, -0.291122,
		-0.196467, -0.718176, -0.667551,
		26.280468, 32.735756, 33.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784901, 33.458431, 33.218014>,  <26.417995, 33.238480, 33.730488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784901, 33.458431, 33.218014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481358, 33.228428, 33.095703>,  <26.299232, 33.090424, 33.022316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481358, 33.228428, 33.095703>,  <26.784901, 33.458431, 33.218014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481358, 33.228428, 33.095703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387978, 0.776257, -0.496888,
		0.523076, -0.258433, -0.812160,
		-0.758858, -0.575010, -0.305775,
		26.253700, 33.055923, 33.003971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677130, 33.364594, 32.389915>,  <26.784901, 33.458431, 33.218014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677130, 33.364594, 32.389915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329107, 33.321049, 32.582230>,  <26.120295, 33.294922, 32.697617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329107, 33.321049, 32.582230>,  <26.677130, 33.364594, 32.389915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329107, 33.321049, 32.582230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361703, 0.803632, -0.472595,
		-0.334924, -0.585085, -0.738581,
		-0.870055, -0.108864, 0.480783,
		26.068090, 33.288391, 32.726463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900286, 33.993687, 32.159603>,  <26.677130, 33.364594, 32.389915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900286, 33.993687, 32.159603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915482, 33.654556, 31.948038>,  <26.924599, 33.451077, 31.821100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915482, 33.654556, 31.948038>,  <26.900286, 33.993687, 32.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915482, 33.654556, 31.948038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523717, 0.433886, -0.733119,
		0.851045, 0.304850, -0.427539,
		0.037988, -0.847826, -0.528912,
		26.926878, 33.400208, 31.789364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625032, 34.622505, 32.149498>,  <26.900286, 33.993687, 32.159603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625032, 34.622505, 32.149498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694725, 34.925140, 31.897396>,  <26.736542, 35.106720, 31.746136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694725, 34.925140, 31.897396>,  <26.625032, 34.622505, 32.149498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694725, 34.925140, 31.897396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106528, 0.621801, 0.775896,
		0.978925, -0.202327, 0.027740,
		0.174233, 0.756589, -0.630251,
		26.746996, 35.152119, 31.708321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288525, 34.741856, 32.092106>,  <26.625032, 34.622505, 32.149498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288525, 34.741856, 32.092106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036415, 35.051006, 32.121529>,  <26.885149, 35.236496, 32.139183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036415, 35.051006, 32.121529>,  <27.288525, 34.741856, 32.092106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036415, 35.051006, 32.121529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592554, 0.417662, 0.688794,
		0.501632, 0.477718, -0.721215,
		-0.630274, 0.772880, 0.073561,
		26.847334, 35.282871, 32.143597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687012, 35.365368, 32.252811>,  <27.288525, 34.741856, 32.092106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687012, 35.365368, 32.252811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312532, 35.449207, 32.365665>,  <27.087845, 35.499512, 32.433380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312532, 35.449207, 32.365665>,  <27.687012, 35.365368, 32.252811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312532, 35.449207, 32.365665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339389, 0.330407, 0.880708,
		0.091375, 0.920272, -0.380462,
		-0.936198, 0.209599, 0.282139,
		27.031673, 35.512089, 32.450306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605522, 36.034718, 32.620571>,  <27.687012, 35.365368, 32.252811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605522, 36.034718, 32.620571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329046, 35.765511, 32.725868>,  <27.163160, 35.603985, 32.789047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329046, 35.765511, 32.725868>,  <27.605522, 36.034718, 32.620571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329046, 35.765511, 32.725868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367850, -0.014113, 0.929778,
		-0.622045, 0.739489, 0.257325,
		-0.691192, -0.673021, 0.263242,
		27.121689, 35.563602, 32.804840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473635, 36.284836, 33.261890>,  <27.605522, 36.034718, 32.620571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473635, 36.284836, 33.261890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375332, 35.898876, 33.224838>,  <27.316349, 35.667301, 33.202606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375332, 35.898876, 33.224838>,  <27.473635, 36.284836, 33.261890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375332, 35.898876, 33.224838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302927, -0.167229, 0.938227,
		-0.920781, 0.202516, 0.333391,
		-0.245758, -0.964895, -0.092634,
		27.301605, 35.609409, 33.197048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384535, 36.531609, 33.974007>,  <27.473635, 36.284836, 33.261890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384535, 36.531609, 33.974007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089289, 36.379650, 34.197029>,  <26.912142, 36.288475, 34.330841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089289, 36.379650, 34.197029>,  <27.384535, 36.531609, 33.974007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089289, 36.379650, 34.197029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382556, 0.445040, 0.809685,
		-0.555733, 0.810934, -0.183157,
		-0.738114, -0.379901, 0.557551,
		26.867855, 36.265678, 34.364296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180756, 37.074192, 34.387638>,  <27.384535, 36.531609, 33.974007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180756, 37.074192, 34.387638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070335, 36.737095, 34.572498>,  <27.004084, 36.534836, 34.683414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070335, 36.737095, 34.572498>,  <27.180756, 37.074192, 34.387638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070335, 36.737095, 34.572498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338981, 0.364573, 0.867282,
		-0.899382, 0.396074, 0.185033,
		-0.276050, -0.842741, 0.462152,
		26.987520, 36.484272, 34.711143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717983, 36.718056, 34.821400>,  <27.180756, 37.074192, 34.387638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717983, 36.718056, 34.821400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930765, 37.020802, 34.973286>,  <28.058434, 37.202450, 35.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930765, 37.020802, 34.973286>,  <27.717983, 36.718056, 34.821400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930765, 37.020802, 34.973286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811115, -0.326689, -0.485146,
		-0.243141, 0.566067, -0.787687,
		0.531954, 0.756863, 0.379714,
		28.090351, 37.247860, 35.087200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095001, 37.050503, 34.300236>,  <27.717983, 36.718056, 34.821400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095001, 37.050503, 34.300236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319546, 37.150780, 34.615711>,  <28.454273, 37.210945, 34.804996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319546, 37.150780, 34.615711>,  <28.095001, 37.050503, 34.300236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319546, 37.150780, 34.615711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825033, -0.244106, -0.509640,
		0.064760, 0.936784, -0.343862,
		0.561362, 0.250694, 0.788686,
		28.487955, 37.225986, 34.852318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713274, 37.249958, 34.040703>,  <28.095001, 37.050503, 34.300236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713274, 37.249958, 34.040703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798265, 37.142647, 34.416550>,  <28.849260, 37.078262, 34.642059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798265, 37.142647, 34.416550>,  <28.713274, 37.249958, 34.040703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798265, 37.142647, 34.416550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857302, -0.410259, -0.310999,
		0.468920, 0.871617, 0.142821,
		0.212479, -0.268275, 0.939618,
		28.862009, 37.062164, 34.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413212, 37.452316, 34.138668>,  <28.713274, 37.249958, 34.040703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413212, 37.452316, 34.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350420, 37.192730, 34.436447>,  <29.312746, 37.036976, 34.615112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350420, 37.192730, 34.436447>,  <29.413212, 37.452316, 34.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350420, 37.192730, 34.436447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932569, -0.345519, -0.104559,
		0.325075, 0.677831, 0.659447,
		-0.156978, -0.648969, 0.744444,
		29.303326, 36.998039, 34.659779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014120, 37.445824, 34.565777>,  <29.413212, 37.452316, 34.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014120, 37.445824, 34.565777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860519, 37.076900, 34.583195>,  <29.768358, 36.855549, 34.593643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860519, 37.076900, 34.583195>,  <30.014120, 37.445824, 34.565777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860519, 37.076900, 34.583195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873605, -0.378185, -0.306253,
		0.298925, -0.079564, 0.950954,
		-0.384003, -0.922305, 0.043542,
		29.745319, 36.800209, 34.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367994, 37.407623, 35.173664>,  <30.014120, 37.445824, 34.565777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367994, 37.407623, 35.173664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697746, 37.348270, 34.955170>,  <30.895597, 37.312656, 34.824074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697746, 37.348270, 34.955170>,  <30.367994, 37.407623, 35.173664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697746, 37.348270, 34.955170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565073, 0.159501, 0.809476,
		-0.032990, -0.975982, 0.215339,
		0.824381, -0.148387, -0.546239,
		30.945061, 37.303753, 34.791298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849901, 37.228279, 35.673992>,  <30.367994, 37.407623, 35.173664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849901, 37.228279, 35.673992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107847, 37.337120, 35.388306>,  <31.262615, 37.402424, 35.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107847, 37.337120, 35.388306>,  <30.849901, 37.228279, 35.673992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107847, 37.337120, 35.388306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701687, 0.159643, 0.694370,
		0.302962, -0.948932, -0.087985,
		0.644863, 0.272106, -0.714219,
		31.301306, 37.418751, 35.174038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438055, 36.769646, 35.617489>,  <30.849901, 37.228279, 35.673992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438055, 36.769646, 35.617489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554785, 37.130604, 35.490673>,  <31.624823, 37.347179, 35.414581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554785, 37.130604, 35.490673>,  <31.438055, 36.769646, 35.617489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554785, 37.130604, 35.490673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704680, 0.021282, 0.709206,
		0.646734, -0.430377, -0.629691,
		0.291825, 0.902398, -0.317042,
		31.642332, 37.401321, 35.395561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047985, 36.819698, 35.912861>,  <31.438055, 36.769646, 35.617489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047985, 36.819698, 35.912861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025459, 37.204582, 35.806290>,  <32.011944, 37.435513, 35.742348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025459, 37.204582, 35.806290>,  <32.047985, 36.819698, 35.912861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025459, 37.204582, 35.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512260, 0.256896, 0.819508,
		0.856982, -0.090331, -0.507368,
		-0.056314, 0.962208, -0.266428,
		32.008564, 37.493244, 35.726360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693630, 36.999912, 35.982010>,  <32.047985, 36.819698, 35.912861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693630, 36.999912, 35.982010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479206, 37.330841, 36.049152>,  <32.350552, 37.529400, 36.089439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479206, 37.330841, 36.049152>,  <32.693630, 36.999912, 35.982010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479206, 37.330841, 36.049152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482404, 0.137036, 0.865163,
		0.692770, 0.544750, -0.472564,
		-0.536056, 0.827326, 0.167856,
		32.318390, 37.579041, 36.099510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091618, 37.610195, 36.009293>,  <32.693630, 36.999912, 35.982010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091618, 37.610195, 36.009293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782284, 37.543724, 36.254025>,  <32.596684, 37.503841, 36.400864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782284, 37.543724, 36.254025>,  <33.091618, 37.610195, 36.009293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782284, 37.543724, 36.254025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603444, 0.103050, 0.790719,
		-0.194451, 0.980696, 0.020589,
		-0.773333, -0.166180, 0.611833,
		32.550285, 37.493870, 36.437576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907345, 38.097725, 36.360397>,  <33.091618, 37.610195, 36.009293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907345, 38.097725, 36.360397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822834, 37.780758, 36.589287>,  <32.772129, 37.590580, 36.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822834, 37.780758, 36.589287>,  <32.907345, 38.097725, 36.360397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822834, 37.780758, 36.589287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791986, 0.204310, 0.575340,
		-0.572819, 0.574750, 0.584415,
		-0.211275, -0.792414, 0.572226,
		32.759453, 37.543034, 36.760956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709976, 38.206303, 35.670872>,  <32.907345, 38.097725, 36.360397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709976, 38.206303, 35.670872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043030, 38.285248, 35.877861>,  <33.242863, 38.332615, 36.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043030, 38.285248, 35.877861>,  <32.709976, 38.206303, 35.670872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043030, 38.285248, 35.877861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178493, 0.788866, -0.588073,
		-0.524276, 0.582013, 0.621607,
		0.832631, 0.197360, 0.517469,
		33.292820, 38.344456, 36.033100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337914, 38.592873, 35.454502>,  <32.709976, 38.206303, 35.670872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337914, 38.592873, 35.454502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144791, 38.251640, 35.375355>,  <33.028915, 38.046902, 35.327866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144791, 38.251640, 35.375355>,  <33.337914, 38.592873, 35.454502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144791, 38.251640, 35.375355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471864, 0.063077, 0.879412,
		-0.737726, 0.517957, -0.432990,
		-0.482809, -0.853078, -0.197872,
		32.999947, 37.995716, 35.315994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853024, 39.236465, 35.260021>,  <33.337914, 38.592873, 35.454502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853024, 39.236465, 35.260021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740894, 39.604958, 35.367908>,  <32.673618, 39.826054, 35.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740894, 39.604958, 35.367908>,  <32.853024, 39.236465, 35.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740894, 39.604958, 35.367908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773680, 0.383160, -0.504587,
		-0.568188, 0.067232, -0.820147,
		-0.280323, 0.921232, 0.269723,
		32.656796, 39.881329, 35.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882095, 39.583599, 34.541561>,  <32.853024, 39.236465, 35.260021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882095, 39.583599, 34.541561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866154, 39.543694, 34.143875>,  <32.856586, 39.519749, 33.905266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866154, 39.543694, 34.143875>,  <32.882095, 39.583599, 34.541561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866154, 39.543694, 34.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890842, 0.447111, -0.080579,
		0.452562, -0.888897, 0.071057,
		-0.039856, -0.099767, -0.994212,
		32.854198, 39.513763, 33.845612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355831, 39.048489, 34.261040>,  <32.882095, 39.583599, 34.541561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355831, 39.048489, 34.261040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270370, 39.370163, 34.039181>,  <33.219093, 39.563168, 33.906063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270370, 39.370163, 34.039181>,  <33.355831, 39.048489, 34.261040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270370, 39.370163, 34.039181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965430, 0.260593, 0.005955,
		0.149327, -0.534203, -0.832063,
		-0.213649, 0.804188, -0.554649,
		33.206276, 39.611420, 33.872787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821556, 39.059002, 33.647255>,  <33.355831, 39.048489, 34.261040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821556, 39.059002, 33.647255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677479, 39.423210, 33.728470>,  <33.591034, 39.641735, 33.777199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677479, 39.423210, 33.728470>,  <33.821556, 39.059002, 33.647255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677479, 39.423210, 33.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930254, 0.366881, 0.005011,
		-0.069926, 0.190678, -0.979159,
		-0.360190, 0.910517, 0.203033,
		33.569420, 39.696365, 33.789379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903046, 39.550743, 33.164448>,  <33.821556, 39.059002, 33.647255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903046, 39.550743, 33.164448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900845, 39.730907, 33.521568>,  <33.899525, 39.839005, 33.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900845, 39.730907, 33.521568>,  <33.903046, 39.550743, 33.164448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900845, 39.730907, 33.521568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955979, 0.264309, -0.127454,
		-0.293383, 0.852802, -0.432036,
		-0.005498, 0.450410, 0.892805,
		33.899197, 39.866032, 33.789410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973030, 40.294384, 33.208805>,  <33.903046, 39.550743, 33.164448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973030, 40.294384, 33.208805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124046, 40.059132, 33.494900>,  <34.214657, 39.917980, 33.666557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124046, 40.059132, 33.494900>,  <33.973030, 40.294384, 33.208805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124046, 40.059132, 33.494900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922394, 0.306884, -0.234545,
		-0.081552, 0.748281, 0.658349,
		0.377543, -0.588130, 0.715237,
		34.237309, 39.882694, 33.709473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618683, 40.490028, 33.379887>,  <33.973030, 40.294384, 33.208805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618683, 40.490028, 33.379887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650009, 40.165096, 33.611053>,  <34.668804, 39.970139, 33.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650009, 40.165096, 33.611053>,  <34.618683, 40.490028, 33.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650009, 40.165096, 33.611053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995505, 0.094690, -0.001806,
		-0.053256, 0.575461, 0.816093,
		0.078315, -0.812329, 0.577917,
		34.673504, 39.921398, 33.784428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202873, 40.596748, 33.844185>,  <34.618683, 40.490028, 33.379887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202873, 40.596748, 33.844185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129593, 40.226177, 33.712624>,  <35.085625, 40.003834, 33.633686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129593, 40.226177, 33.712624>,  <35.202873, 40.596748, 33.844185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129593, 40.226177, 33.712624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954634, -0.087761, -0.284556,
		0.234755, -0.366111, 0.900473,
		-0.183205, -0.926423, -0.328900,
		35.074631, 39.948250, 33.613953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537754, 40.070320, 34.191345>,  <35.202873, 40.596748, 33.844185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537754, 40.070320, 34.191345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470673, 39.945950, 33.817135>,  <35.430424, 39.871326, 33.592609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470673, 39.945950, 33.817135>,  <35.537754, 40.070320, 34.191345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470673, 39.945950, 33.817135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983288, 0.015465, -0.181401,
		0.070869, -0.950310, 0.303132,
		-0.167699, -0.310922, -0.935524,
		35.420364, 39.852673, 33.536476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993164, 39.448147, 34.023060>,  <35.537754, 40.070320, 34.191345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993164, 39.448147, 34.023060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929398, 39.672058, 33.697792>,  <35.891140, 39.806404, 33.502632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929398, 39.672058, 33.697792>,  <35.993164, 39.448147, 34.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929398, 39.672058, 33.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986186, 0.052753, -0.157018,
		-0.044998, -0.826964, -0.560451,
		-0.159414, 0.559775, -0.813166,
		35.881573, 39.839989, 33.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238834, 39.132706, 33.325039>,  <35.993164, 39.448147, 34.023060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238834, 39.132706, 33.325039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256035, 39.532276, 33.318077>,  <36.266354, 39.772018, 33.313900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256035, 39.532276, 33.318077>,  <36.238834, 39.132706, 33.325039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256035, 39.532276, 33.318077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982540, -0.045437, -0.180418,
		-0.181015, -0.009342, -0.983436,
		0.042999, 0.998924, -0.017403,
		36.268936, 39.831955, 33.312855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492054, 39.515141, 32.536537>,  <36.238834, 39.132706, 33.325039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492054, 39.515141, 32.536537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585186, 39.687584, 32.885235>,  <36.641064, 39.791050, 33.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585186, 39.687584, 32.885235>,  <36.492054, 39.515141, 32.536537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585186, 39.687584, 32.885235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960421, 0.039013, -0.275808,
		-0.152913, 0.901455, -0.404965,
		0.232829, 0.431112, 0.871741,
		36.655033, 39.816917, 33.146759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841599, 40.003376, 32.400520>,  <36.492054, 39.515141, 32.536537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841599, 40.003376, 32.400520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973904, 39.865185, 32.751801>,  <37.053288, 39.782269, 32.962570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973904, 39.865185, 32.751801>,  <36.841599, 40.003376, 32.400520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973904, 39.865185, 32.751801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908160, -0.136496, -0.395746,
		0.256593, 0.928446, 0.268602,
		0.330766, -0.345479, 0.878201,
		37.073132, 39.761539, 33.015263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432995, 40.406490, 32.468567>,  <36.841599, 40.003376, 32.400520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432995, 40.406490, 32.468567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442951, 40.069828, 32.684341>,  <37.448925, 39.867832, 32.813808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442951, 40.069828, 32.684341>,  <37.432995, 40.406490, 32.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442951, 40.069828, 32.684341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844279, -0.271255, -0.462184,
		0.535326, 0.466944, 0.703839,
		0.024894, -0.841655, 0.539441,
		37.450420, 39.817333, 32.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944489, 40.346748, 33.062607>,  <37.432995, 40.406490, 32.468567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944489, 40.346748, 33.062607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902287, 39.985725, 32.895626>,  <37.876965, 39.769112, 32.795437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902287, 39.985725, 32.895626>,  <37.944489, 40.346748, 33.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902287, 39.985725, 32.895626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952066, 0.029528, -0.304464,
		0.287122, -0.429563, 0.856175,
		-0.105506, -0.902554, -0.417451,
		37.870636, 39.714958, 32.770390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608875, 39.890263, 33.098698>,  <37.944489, 40.346748, 33.062607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608875, 39.890263, 33.098698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383690, 39.786068, 32.784954>,  <38.248577, 39.723549, 32.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383690, 39.786068, 32.784954>,  <38.608875, 39.890263, 33.098698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383690, 39.786068, 32.784954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740042, 0.263668, -0.618722,
		0.367982, -0.928775, 0.044339,
		-0.562963, -0.260492, -0.784357,
		38.214802, 39.707920, 32.549648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006443, 39.776264, 32.637619>,  <38.608875, 39.890263, 33.098698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006443, 39.776264, 32.637619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680122, 39.786724, 32.406521>,  <38.484329, 39.792999, 32.267860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680122, 39.786724, 32.406521>,  <39.006443, 39.776264, 32.637619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680122, 39.786724, 32.406521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571948, 0.184564, -0.799257,
		0.085733, -0.982473, -0.165521,
		-0.815797, 0.026147, -0.577747,
		38.435383, 39.794567, 32.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130501, 39.214951, 32.082542>,  <39.006443, 39.776264, 32.637619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130501, 39.214951, 32.082542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898685, 39.533215, 32.012058>,  <38.759594, 39.724174, 31.969767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898685, 39.533215, 32.012058>,  <39.130501, 39.214951, 32.082542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898685, 39.533215, 32.012058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659478, 0.330856, -0.674998,
		-0.478771, -0.507398, -0.716468,
		-0.579540, 0.795664, -0.176214,
		38.724823, 39.771915, 31.959194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087784, 39.226337, 31.408312>,  <39.130501, 39.214951, 32.082542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087784, 39.226337, 31.408312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020782, 39.597980, 31.540195>,  <38.980579, 39.820965, 31.619326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020782, 39.597980, 31.540195>,  <39.087784, 39.226337, 31.408312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020782, 39.597980, 31.540195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720343, 0.343672, -0.602491,
		-0.673088, 0.136582, -0.726840,
		-0.167505, 0.929104, 0.329708,
		38.970531, 39.876713, 31.639109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806034, 39.556187, 30.945621>,  <39.087784, 39.226337, 31.408312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806034, 39.556187, 30.945621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015800, 39.795868, 31.187593>,  <39.141663, 39.939678, 31.332777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015800, 39.795868, 31.187593>,  <38.806034, 39.556187, 30.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015800, 39.795868, 31.187593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544673, 0.310003, -0.779249,
		-0.654459, 0.738142, -0.163799,
		0.524418, 0.599204, 0.604930,
		39.173126, 39.975628, 31.369072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802185, 40.299129, 30.647461>,  <38.806034, 39.556187, 30.945621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802185, 40.299129, 30.647461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112110, 40.134357, 30.839285>,  <39.298065, 40.035496, 30.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112110, 40.134357, 30.839285>,  <38.802185, 40.299129, 30.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112110, 40.134357, 30.839285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500305, -0.064193, -0.863467,
		0.386471, 0.908952, 0.156352,
		0.774813, -0.411929, 0.479562,
		39.344555, 40.010780, 30.983154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506859, 40.623917, 30.569958>,  <38.802185, 40.299129, 30.647461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506859, 40.623917, 30.569958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569397, 40.239124, 30.659525>,  <39.606922, 40.008247, 30.713264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569397, 40.239124, 30.659525>,  <39.506859, 40.623917, 30.569958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569397, 40.239124, 30.659525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542034, -0.105949, -0.833651,
		0.825684, 0.251712, 0.504864,
		0.156350, -0.961985, 0.223916,
		39.616302, 39.950527, 30.726700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158344, 40.467297, 30.571571>,  <39.506859, 40.623917, 30.569958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158344, 40.467297, 30.571571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994389, 40.112862, 30.485003>,  <39.896015, 39.900200, 30.433062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994389, 40.112862, 30.485003>,  <40.158344, 40.467297, 30.571571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994389, 40.112862, 30.485003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548983, -0.050169, -0.834326,
		0.728429, -0.460794, 0.507011,
		-0.409889, -0.886088, -0.216424,
		39.871422, 39.847034, 30.420074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657970, 39.894444, 30.494055>,  <40.158344, 40.467297, 30.571571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657970, 39.894444, 30.494055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322933, 39.843414, 30.281576>,  <40.121910, 39.812798, 30.154089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322933, 39.843414, 30.281576>,  <40.657970, 39.894444, 30.494055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322933, 39.843414, 30.281576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539540, -0.345667, -0.767731,
		-0.085676, -0.929645, 0.358357,
		-0.837589, -0.127572, -0.531195,
		40.071655, 39.805141, 30.122217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631512, 39.215290, 30.225822>,  <40.657970, 39.894444, 30.494055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631512, 39.215290, 30.225822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450687, 39.480499, 29.987143>,  <40.342194, 39.639626, 29.843935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450687, 39.480499, 29.987143>,  <40.631512, 39.215290, 30.225822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450687, 39.480499, 29.987143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546882, -0.322462, -0.772618,
		-0.704673, -0.675591, -0.216822,
		-0.452057, 0.663019, -0.596699,
		40.315071, 39.679405, 29.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088394, 38.639229, 30.386936>,  <40.631512, 39.215290, 30.225822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088394, 38.639229, 30.386936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381508, 38.857933, 30.224909>,  <41.557377, 38.989155, 30.127693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381508, 38.857933, 30.224909>,  <41.088394, 38.639229, 30.386936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381508, 38.857933, 30.224909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674651, -0.661404, 0.327705,
		-0.088736, -0.513415, -0.853540,
		0.732784, 0.546762, -0.405067,
		41.601341, 39.021961, 30.103390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569603, 38.263275, 30.029177>,  <41.088394, 38.639229, 30.386936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569603, 38.263275, 30.029177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776375, 38.584110, 30.148806>,  <41.900436, 38.776611, 30.220583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776375, 38.584110, 30.148806>,  <41.569603, 38.263275, 30.029177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776375, 38.584110, 30.148806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720208, -0.596342, 0.354510,
		0.462698, 0.032139, -0.885933,
		0.516925, 0.802087, 0.299073,
		41.931454, 38.824738, 30.238527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114147, 38.000900, 30.402132>,  <41.569603, 38.263275, 30.029177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114147, 38.000900, 30.402132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183617, 38.391590, 30.452499>,  <42.225296, 38.626003, 30.482719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183617, 38.391590, 30.452499>,  <42.114147, 38.000900, 30.402132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183617, 38.391590, 30.452499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846729, -0.213387, 0.487356,
		0.502880, 0.021981, -0.864077,
		0.173670, 0.976720, 0.125921,
		42.235718, 38.684605, 30.490276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832027, 38.192299, 30.165880>,  <42.114147, 38.000900, 30.402132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832027, 38.192299, 30.165880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722027, 38.462341, 30.439699>,  <42.656025, 38.624367, 30.603991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722027, 38.462341, 30.439699>,  <42.832027, 38.192299, 30.165880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722027, 38.462341, 30.439699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776118, -0.264354, 0.572501,
		0.567462, 0.688728, -0.451265,
		-0.275004, 0.675108, 0.684545,
		42.639526, 38.664875, 30.645063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184795, 37.627499, 30.603252>,  <42.832027, 38.192299, 30.165880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184795, 37.627499, 30.603252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868778, 37.458359, 30.780804>,  <42.679169, 37.356876, 30.887335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868778, 37.458359, 30.780804>,  <43.184795, 37.627499, 30.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868778, 37.458359, 30.780804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212115, -0.867876, -0.449220,
		0.575182, -0.260752, 0.775354,
		-0.790046, -0.422848, 0.443877,
		42.631763, 37.331505, 30.913967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265766, 37.004410, 30.987501>,  <43.184795, 37.627499, 30.603252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265766, 37.004410, 30.987501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900642, 37.003979, 30.824144>,  <42.681568, 37.003719, 30.726131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900642, 37.003979, 30.824144>,  <43.265766, 37.004410, 30.987501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900642, 37.003979, 30.824144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267370, -0.757470, -0.595611,
		-0.308702, -0.652869, 0.691712,
		-0.912807, -0.001077, -0.408390,
		42.626801, 37.003654, 30.701628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916653, 37.613617, 31.344337>,  <43.265766, 37.004410, 30.987501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916653, 37.613617, 31.344337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778076, 37.911392, 31.572647>,  <42.694931, 38.090057, 31.709633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778076, 37.911392, 31.572647>,  <42.916653, 37.613617, 31.344337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778076, 37.911392, 31.572647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168453, 0.647936, -0.742834,
		-0.922823, -0.161200, -0.349875,
		-0.346442, 0.744442, 0.570775,
		42.674145, 38.134724, 31.743879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425568, 37.680416, 31.918867>,  <42.916653, 37.613617, 31.344337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425568, 37.680416, 31.918867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324043, 38.035259, 32.073071>,  <42.263130, 38.248165, 32.165592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324043, 38.035259, 32.073071>,  <42.425568, 37.680416, 31.918867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324043, 38.035259, 32.073071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048978, -0.409837, 0.910843,
		0.966014, 0.212297, 0.147469,
		-0.253808, 0.887110, 0.385510,
		42.247902, 38.301392, 32.188725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833092, 37.691460, 32.485672>,  <42.425568, 37.680416, 31.918867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833092, 37.691460, 32.485672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521706, 37.926155, 32.574875>,  <42.334873, 38.066971, 32.628399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521706, 37.926155, 32.574875>,  <42.833092, 37.691460, 32.485672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521706, 37.926155, 32.574875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175274, -0.544349, 0.820343,
		0.602721, 0.599520, 0.526596,
		-0.778464, 0.586737, 0.223010,
		42.288166, 38.102177, 32.641777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862911, 38.022278, 33.144783>,  <42.833092, 37.691460, 32.485672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862911, 38.022278, 33.144783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474922, 37.967075, 33.064682>,  <42.242126, 37.933952, 33.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474922, 37.967075, 33.064682>,  <42.862911, 38.022278, 33.144783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474922, 37.967075, 33.064682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076525, -0.608385, 0.789944,
		-0.230849, 0.781551, 0.579557,
		-0.969976, -0.138007, -0.200253,
		42.183929, 37.925674, 33.004604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424805, 38.403591, 33.666950>,  <42.862911, 38.022278, 33.144783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424805, 38.403591, 33.666950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212204, 38.104954, 33.506897>,  <42.084644, 37.925774, 33.410866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212204, 38.104954, 33.506897>,  <42.424805, 38.403591, 33.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212204, 38.104954, 33.506897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007107, -0.468433, 0.883471,
		-0.847026, 0.472413, 0.243668,
		-0.531505, -0.746590, -0.400132,
		42.052753, 37.880978, 33.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902081, 38.254524, 34.161919>,  <42.424805, 38.403591, 33.666950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902081, 38.254524, 34.161919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901031, 37.942753, 33.911324>,  <41.900402, 37.755688, 33.760967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901031, 37.942753, 33.911324>,  <41.902081, 38.254524, 34.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901031, 37.942753, 33.911324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272228, -0.602267, 0.750443,
		-0.962229, 0.172517, -0.210602,
		-0.002625, -0.779430, -0.626483,
		41.900246, 37.708923, 33.723377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264023, 37.981789, 34.340199>,  <41.902081, 38.254524, 34.161919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264023, 37.981789, 34.340199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467529, 37.699261, 34.143314>,  <41.589634, 37.529743, 34.025185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467529, 37.699261, 34.143314>,  <41.264023, 37.981789, 34.340199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467529, 37.699261, 34.143314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234637, -0.663854, 0.710101,
		-0.828315, -0.245782, -0.503473,
		0.508763, -0.706321, -0.492211,
		41.620159, 37.487366, 33.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835018, 37.540539, 34.273674>,  <41.264023, 37.981789, 34.340199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835018, 37.540539, 34.273674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191990, 37.360901, 34.256363>,  <41.406174, 37.253117, 34.245975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191990, 37.360901, 34.256363>,  <40.835018, 37.540539, 34.273674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191990, 37.360901, 34.256363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261671, -0.593339, 0.761234,
		-0.367547, -0.668026, -0.647032,
		0.892433, -0.449099, -0.043277,
		41.459721, 37.226170, 34.243382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690929, 36.873608, 34.203789>,  <40.835018, 37.540539, 34.273674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690929, 36.873608, 34.203789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064026, 36.870434, 34.347977>,  <41.287884, 36.868530, 34.434490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064026, 36.870434, 34.347977>,  <40.690929, 36.873608, 34.203789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064026, 36.870434, 34.347977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233789, -0.774409, 0.587907,
		0.274489, -0.632636, -0.724174,
		0.932737, -0.007930, 0.360469,
		41.343845, 36.868053, 34.456116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919769, 36.320446, 34.037582>,  <40.690929, 36.873608, 34.203789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919769, 36.320446, 34.037582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141823, 36.419159, 34.355305>,  <41.275055, 36.478386, 34.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141823, 36.419159, 34.355305>,  <40.919769, 36.320446, 34.037582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141823, 36.419159, 34.355305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278048, -0.844971, 0.456852,
		0.783912, -0.474469, -0.400452,
		0.555133, 0.246787, 0.794307,
		41.308361, 36.493195, 34.593597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146690, 35.618923, 34.294628>,  <40.919769, 36.320446, 34.037582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146690, 35.618923, 34.294628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218559, 35.873478, 34.594688>,  <41.261681, 36.026211, 34.774723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218559, 35.873478, 34.594688>,  <41.146690, 35.618923, 34.294628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218559, 35.873478, 34.594688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435238, -0.632437, 0.640774,
		0.882205, -0.441624, 0.163348,
		0.179674, 0.636389, 0.750151,
		41.272461, 36.064396, 34.819733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447578, 35.200695, 34.847004>,  <41.146690, 35.618923, 34.294628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447578, 35.200695, 34.847004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302010, 35.525837, 35.028915>,  <41.214668, 35.720921, 35.138062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302010, 35.525837, 35.028915>,  <41.447578, 35.200695, 34.847004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302010, 35.525837, 35.028915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578184, -0.579950, 0.573900,
		0.730248, -0.054091, 0.681037,
		-0.363925, 0.812854, 0.454782,
		41.192833, 35.769691, 35.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388706, 34.957294, 35.393799>,  <41.447578, 35.200695, 34.847004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388706, 34.957294, 35.393799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180470, 35.297104, 35.427967>,  <41.055527, 35.500988, 35.448467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180470, 35.297104, 35.427967>,  <41.388706, 34.957294, 35.393799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180470, 35.297104, 35.427967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645636, -0.457156, 0.611688,
		0.558695, 0.263287, 0.786473,
		-0.520591, 0.849522, 0.085423,
		41.024292, 35.551960, 35.453594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266148, 35.136395, 36.206085>,  <41.388706, 34.957294, 35.393799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266148, 35.136395, 36.206085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981953, 35.284981, 35.967014>,  <40.811436, 35.374134, 35.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981953, 35.284981, 35.967014>,  <41.266148, 35.136395, 36.206085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981953, 35.284981, 35.967014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694896, -0.504348, 0.512593,
		-0.111026, 0.779515, 0.616465,
		-0.710487, 0.371468, -0.597678,
		40.768806, 35.396420, 35.787712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656528, 35.223785, 36.723850>,  <41.266148, 35.136395, 36.206085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656528, 35.223785, 36.723850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524101, 35.234840, 36.346569>,  <40.444645, 35.241474, 36.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524101, 35.234840, 36.346569>,  <40.656528, 35.223785, 36.723850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524101, 35.234840, 36.346569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794588, -0.547292, 0.262871,
		-0.508941, 0.836485, 0.203154,
		-0.331072, 0.027638, -0.943201,
		40.424778, 35.243134, 36.063610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002899, 35.495583, 36.712898>,  <40.656528, 35.223785, 36.723850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002899, 35.495583, 36.712898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023449, 35.286755, 36.372356>,  <40.035778, 35.161457, 36.168034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023449, 35.286755, 36.372356>,  <40.002899, 35.495583, 36.712898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023449, 35.286755, 36.372356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891197, -0.408684, 0.196842,
		-0.450700, 0.748610, -0.486265,
		0.051371, -0.522074, -0.851352,
		40.038860, 35.130131, 36.116951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321251, 35.526150, 36.412621>,  <40.002899, 35.495583, 36.712898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321251, 35.526150, 36.412621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502659, 35.225819, 36.220543>,  <39.611504, 35.045620, 36.105297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502659, 35.225819, 36.220543>,  <39.321251, 35.526150, 36.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502659, 35.225819, 36.220543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821015, -0.561595, 0.102694,
		-0.346777, 0.347670, -0.871132,
		0.453520, -0.750824, -0.480190,
		39.638714, 35.000572, 36.076485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863155, 35.367817, 35.983494>,  <39.321251, 35.526150, 36.412621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863155, 35.367817, 35.983494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058735, 35.024509, 36.045864>,  <39.176083, 34.818527, 36.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058735, 35.024509, 36.045864>,  <38.863155, 35.367817, 35.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058735, 35.024509, 36.045864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816782, -0.387687, 0.427276,
		-0.306266, -0.336272, -0.890574,
		0.488945, -0.858266, 0.155925,
		39.205418, 34.767029, 36.092640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334465, 34.934937, 36.078266>,  <38.863155, 35.367817, 35.983494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334465, 34.934937, 36.078266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653740, 34.719696, 36.186596>,  <38.845303, 34.590549, 36.251595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653740, 34.719696, 36.186596>,  <38.334465, 34.934937, 36.078266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653740, 34.719696, 36.186596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591717, -0.615984, 0.520033,
		-0.113008, -0.575333, -0.810074,
		0.798185, -0.538103, 0.270823,
		38.893196, 34.558266, 36.267841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097076, 34.232685, 36.054928>,  <38.334465, 34.934937, 36.078266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097076, 34.232685, 36.054928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423687, 34.243435, 36.285603>,  <38.619652, 34.249886, 36.424007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423687, 34.243435, 36.285603>,  <38.097076, 34.232685, 36.054928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423687, 34.243435, 36.285603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496797, -0.476119, 0.725606,
		0.294072, -0.878970, -0.375412,
		0.816526, 0.026877, 0.576682,
		38.668644, 34.251499, 36.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131008, 33.516464, 36.334660>,  <38.097076, 34.232685, 36.054928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131008, 33.516464, 36.334660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337093, 33.741508, 36.593277>,  <38.460743, 33.876537, 36.748447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337093, 33.741508, 36.593277>,  <38.131008, 33.516464, 36.334660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337093, 33.741508, 36.593277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362232, -0.540747, 0.759197,
		0.776755, -0.625345, -0.074801,
		0.515209, 0.562615, 0.646548,
		38.491657, 33.910294, 36.787243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529675, 33.077049, 36.799942>,  <38.131008, 33.516464, 36.334660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529675, 33.077049, 36.799942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473438, 33.418823, 37.000011>,  <38.439697, 33.623886, 37.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473438, 33.418823, 37.000011>,  <38.529675, 33.077049, 36.799942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473438, 33.418823, 37.000011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431667, -0.507548, 0.745693,
		0.891009, -0.111071, 0.440188,
		-0.140592, 0.854434, 0.500176,
		38.431259, 33.675152, 37.150063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775543, 32.957977, 37.505505>,  <38.529675, 33.077049, 36.799942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775543, 32.957977, 37.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507809, 33.254829, 37.519531>,  <38.347168, 33.432941, 37.527946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507809, 33.254829, 37.519531>,  <38.775543, 32.957977, 37.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507809, 33.254829, 37.519531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514932, -0.497413, 0.698159,
		0.535566, 0.449248, 0.715084,
		-0.669338, 0.742130, 0.035065,
		38.307007, 33.477467, 37.530052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641712, 32.913704, 38.174622>,  <38.775543, 32.957977, 37.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641712, 32.913704, 38.174622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351261, 33.164268, 38.061237>,  <38.176991, 33.314606, 37.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351261, 33.164268, 38.061237>,  <38.641712, 32.913704, 38.174622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351261, 33.164268, 38.061237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616590, -0.410851, 0.671579,
		0.304224, 0.662431, 0.684568,
		-0.726130, 0.626408, -0.283458,
		38.133423, 33.352192, 37.976200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288162, 33.319519, 38.729355>,  <38.641712, 32.913704, 38.174622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288162, 33.319519, 38.729355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000607, 33.313644, 38.451366>,  <37.828072, 33.310120, 38.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000607, 33.313644, 38.451366>,  <38.288162, 33.319519, 38.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000607, 33.313644, 38.451366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632898, -0.399634, 0.663123,
		-0.287473, 0.916557, 0.277998,
		-0.718888, -0.014685, -0.694971,
		37.784939, 33.309238, 38.242874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751846, 33.575874, 39.065990>,  <38.288162, 33.319519, 38.729355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751846, 33.575874, 39.065990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564495, 33.419628, 38.748997>,  <37.452084, 33.325882, 38.558800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564495, 33.419628, 38.748997>,  <37.751846, 33.575874, 39.065990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564495, 33.419628, 38.748997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734997, -0.325494, 0.594838,
		-0.490303, 0.861089, -0.134645,
		-0.468382, -0.390615, -0.792489,
		37.423981, 33.302444, 38.511250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056480, 33.771168, 39.152355>,  <37.751846, 33.575874, 39.065990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056480, 33.771168, 39.152355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053997, 33.458035, 38.903477>,  <37.052505, 33.270153, 38.754150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053997, 33.458035, 38.903477>,  <37.056480, 33.771168, 39.152355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053997, 33.458035, 38.903477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572517, -0.507356, 0.644061,
		-0.819869, 0.360218, -0.445036,
		-0.006210, -0.782836, -0.622197,
		37.052135, 33.223183, 38.716816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399918, 33.507233, 39.240654>,  <37.056480, 33.771168, 39.152355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399918, 33.507233, 39.240654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590675, 33.186859, 39.095840>,  <36.705132, 32.994633, 39.008953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590675, 33.186859, 39.095840>,  <36.399918, 33.507233, 39.240654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590675, 33.186859, 39.095840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553455, -0.593615, 0.584217,
		-0.682831, -0.078239, -0.726375,
		0.476895, -0.800937, -0.362037,
		36.733746, 32.946579, 38.987228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896183, 32.961468, 39.100403>,  <36.399918, 33.507233, 39.240654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896183, 32.961468, 39.100403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241306, 32.762173, 39.134621>,  <36.448380, 32.642597, 39.155151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241306, 32.762173, 39.134621>,  <35.896183, 32.961468, 39.100403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241306, 32.762173, 39.134621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462290, -0.709165, 0.532328,
		-0.204557, -0.498846, -0.842205,
		0.862812, -0.498234, 0.085547,
		36.500149, 32.612701, 39.160286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742073, 32.235569, 39.051788>,  <35.896183, 32.961468, 39.100403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742073, 32.235569, 39.051788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104012, 32.220001, 39.221371>,  <36.321175, 32.210659, 39.323120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104012, 32.220001, 39.221371>,  <35.742073, 32.235569, 39.051788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104012, 32.220001, 39.221371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362785, -0.591627, 0.719976,
		0.222799, -0.805272, -0.549452,
		0.904847, -0.038923, 0.423954,
		36.375465, 32.208324, 39.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842896, 31.533773, 39.127869>,  <35.742073, 32.235569, 39.051788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842896, 31.533773, 39.127869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081310, 31.714308, 39.393513>,  <36.224358, 31.822628, 39.552898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081310, 31.714308, 39.393513>,  <35.842896, 31.533773, 39.127869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081310, 31.714308, 39.393513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252349, -0.679877, 0.688539,
		0.762274, -0.577981, -0.291337,
		0.596036, 0.451337, 0.664106,
		36.260120, 31.849709, 39.592743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120701, 30.926634, 39.446156>,  <35.842896, 31.533773, 39.127869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120701, 30.926634, 39.446156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183681, 31.247892, 39.675995>,  <36.221470, 31.440647, 39.813896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183681, 31.247892, 39.675995>,  <36.120701, 30.926634, 39.446156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183681, 31.247892, 39.675995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316207, -0.510215, 0.799809,
		0.935533, -0.307625, 0.173625,
		0.157455, 0.803148, 0.574596,
		36.230919, 31.488836, 39.848373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474403, 30.660656, 40.066422>,  <36.120701, 30.926634, 39.446156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474403, 30.660656, 40.066422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304543, 31.012474, 40.152283>,  <36.202625, 31.223564, 40.203800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304543, 31.012474, 40.152283>,  <36.474403, 30.660656, 40.066422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304543, 31.012474, 40.152283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506610, -0.427341, 0.748816,
		0.750347, 0.209238, 0.627056,
		-0.424648, 0.879544, 0.214652,
		36.177147, 31.276337, 40.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621365, 30.769405, 40.798817>,  <36.474403, 30.660656, 40.066422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621365, 30.769405, 40.798817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307701, 31.005735, 40.722904>,  <36.119503, 31.147533, 40.677357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307701, 31.005735, 40.722904>,  <36.621365, 30.769405, 40.798817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307701, 31.005735, 40.722904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497663, -0.416052, 0.761073,
		0.370701, 0.691252, 0.620283,
		-0.784163, 0.590823, -0.189780,
		36.072453, 31.182981, 40.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360355, 31.100842, 41.416862>,  <36.621365, 30.769405, 40.798817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360355, 31.100842, 41.416862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057743, 31.119904, 41.155975>,  <35.876175, 31.131340, 40.999443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057743, 31.119904, 41.155975>,  <36.360355, 31.100842, 41.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057743, 31.119904, 41.155975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614869, -0.391487, 0.684598,
		-0.222713, 0.918949, 0.325471,
		-0.756528, 0.047653, -0.652222,
		35.830784, 31.134199, 40.960308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741638, 31.322042, 41.839939>,  <36.360355, 31.100842, 41.416862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741638, 31.322042, 41.839939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636097, 31.145290, 41.496983>,  <35.572773, 31.039240, 41.291206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636097, 31.145290, 41.496983>,  <35.741638, 31.322042, 41.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636097, 31.145290, 41.496983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748438, -0.466937, 0.470968,
		-0.608460, 0.765971, -0.207518,
		-0.263850, -0.441880, -0.857395,
		35.556942, 31.012726, 41.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982224, 31.285759, 41.855270>,  <35.741638, 31.322042, 41.839939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982224, 31.285759, 41.855270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070686, 31.000883, 41.588776>,  <35.123764, 30.829958, 41.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070686, 31.000883, 41.588776>,  <34.982224, 31.285759, 41.855270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070686, 31.000883, 41.588776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622766, -0.628859, 0.465509,
		-0.750502, 0.311960, -0.582605,
		0.221156, -0.712192, -0.666238,
		35.137032, 30.787226, 41.388905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351547, 30.847174, 41.825966>,  <34.982224, 31.285759, 41.855270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351547, 30.847174, 41.825966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634277, 30.632807, 41.641273>,  <34.803913, 30.504187, 41.530457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634277, 30.632807, 41.641273>,  <34.351547, 30.847174, 41.825966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634277, 30.632807, 41.641273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480309, -0.842785, 0.242934,
		-0.519332, 0.050062, -0.853105,
		0.706822, -0.535918, -0.461731,
		34.846325, 30.472031, 41.502754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015121, 30.466789, 41.293495>,  <34.351547, 30.847174, 41.825966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015121, 30.466789, 41.293495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340149, 30.265314, 41.410820>,  <34.535164, 30.144430, 41.481216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340149, 30.265314, 41.410820>,  <34.015121, 30.466789, 41.293495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340149, 30.265314, 41.410820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582760, -0.711616, 0.392420,
		0.011070, -0.489799, -0.871765,
		0.812569, -0.503686, 0.293313,
		34.583920, 30.114208, 41.498814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008411, 29.744244, 41.041111>,  <34.015121, 30.466789, 41.293495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008411, 29.744244, 41.041111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255013, 29.712523, 41.354450>,  <34.402973, 29.693489, 41.542454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255013, 29.712523, 41.354450>,  <34.008411, 29.744244, 41.041111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255013, 29.712523, 41.354450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672434, -0.570587, 0.471448,
		0.409581, -0.817400, -0.405094,
		0.616503, -0.079303, 0.783349,
		34.439964, 29.688732, 41.589455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137814, 29.034094, 41.177574>,  <34.008411, 29.744244, 41.041111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137814, 29.034094, 41.177574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207390, 29.220272, 41.524700>,  <34.249134, 29.331980, 41.732975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207390, 29.220272, 41.524700>,  <34.137814, 29.034094, 41.177574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207390, 29.220272, 41.524700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723055, -0.537900, 0.433423,
		0.668534, -0.702868, 0.242981,
		0.173939, 0.465446, 0.867816,
		34.259571, 29.359905, 41.785046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247448, 28.509745, 41.579777>,  <34.137814, 29.034094, 41.177574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247448, 28.509745, 41.579777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243046, 28.740797, 41.906265>,  <34.240402, 28.879429, 42.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243046, 28.740797, 41.906265>,  <34.247448, 28.509745, 41.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243046, 28.740797, 41.906265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640392, -0.630983, 0.437901,
		0.767969, -0.517883, 0.376856,
		-0.011008, 0.577630, 0.816224,
		34.239742, 28.914085, 42.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251110, 28.049406, 42.138863>,  <34.247448, 28.509745, 41.579777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251110, 28.049406, 42.138863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085651, 28.377947, 42.295975>,  <33.986378, 28.575071, 42.390240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085651, 28.377947, 42.295975>,  <34.251110, 28.049406, 42.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085651, 28.377947, 42.295975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630273, -0.569664, 0.527484,
		0.657002, -0.029365, 0.753317,
		-0.413648, 0.821353, 0.392778,
		33.961555, 28.624353, 42.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101006, 27.901413, 42.829666>,  <34.251110, 28.049406, 42.138863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101006, 27.901413, 42.829666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868843, 28.221235, 42.767902>,  <33.729546, 28.413128, 42.730843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868843, 28.221235, 42.767902>,  <34.101006, 27.901413, 42.829666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868843, 28.221235, 42.767902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737040, -0.435157, 0.517117,
		0.346270, 0.413944, 0.841871,
		-0.580404, 0.799555, -0.154411,
		33.694721, 28.461102, 42.721581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750935, 28.204618, 43.490444>,  <34.101006, 27.901413, 42.829666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750935, 28.204618, 43.490444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520420, 28.273851, 43.170959>,  <33.382111, 28.315392, 42.979267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520420, 28.273851, 43.170959>,  <33.750935, 28.204618, 43.490444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520420, 28.273851, 43.170959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786764, -0.381939, 0.484896,
		-0.221133, 0.907836, 0.356279,
		-0.576283, 0.173081, -0.798712,
		33.347534, 28.325775, 42.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262024, 28.700403, 43.760162>,  <33.750935, 28.204618, 43.490444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262024, 28.700403, 43.760162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130314, 28.478374, 43.454620>,  <33.051289, 28.345158, 43.271297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130314, 28.478374, 43.454620>,  <33.262024, 28.700403, 43.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130314, 28.478374, 43.454620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780464, -0.295332, 0.551049,
		-0.531463, 0.777607, -0.335968,
		-0.329277, -0.555073, -0.763852,
		33.031532, 28.311852, 43.225464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531734, 28.799625, 43.736568>,  <33.262024, 28.700403, 43.760162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531734, 28.799625, 43.736568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606594, 28.454023, 43.549606>,  <32.651512, 28.246662, 43.437428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606594, 28.454023, 43.549606>,  <32.531734, 28.799625, 43.736568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606594, 28.454023, 43.549606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758979, -0.429256, 0.489582,
		-0.623639, 0.263127, -0.736097,
		0.187151, -0.864004, -0.467409,
		32.662739, 28.194822, 43.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914785, 28.641745, 43.236282>,  <32.531734, 28.799625, 43.736568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914785, 28.641745, 43.236282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115765, 28.369799, 43.449951>,  <32.236351, 28.206631, 43.578152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115765, 28.369799, 43.449951>,  <31.914785, 28.641745, 43.236282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115765, 28.369799, 43.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778484, -0.086929, 0.621616,
		-0.376179, -0.728168, -0.572940,
		0.502446, -0.679863, 0.534167,
		32.266499, 28.165840, 43.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767172, 27.938660, 43.039902>,  <31.914785, 28.641745, 43.236282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767172, 27.938660, 43.039902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476749, 27.947853, 42.764999>,  <31.302496, 27.953369, 42.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476749, 27.947853, 42.764999>,  <31.767172, 27.938660, 43.039902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476749, 27.947853, 42.764999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611818, 0.477808, -0.630379,
		0.313886, -0.878163, -0.360977,
		-0.726054, 0.022985, -0.687253,
		31.258934, 27.954748, 42.558823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967764, 27.694138, 42.446594>,  <31.767172, 27.938660, 43.039902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967764, 27.694138, 42.446594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684723, 27.963717, 42.361652>,  <31.514898, 28.125463, 42.310688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684723, 27.963717, 42.361652>,  <31.967764, 27.694138, 42.446594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684723, 27.963717, 42.361652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660133, 0.523301, -0.538870,
		-0.252044, -0.521488, -0.815184,
		-0.707601, 0.673948, -0.212357,
		31.472443, 28.165901, 42.297947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699364, 26.982433, 42.420105>,  <31.967764, 27.694138, 42.446594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699364, 26.982433, 42.420105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628811, 26.669039, 42.181763>,  <31.586479, 26.481003, 42.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628811, 26.669039, 42.181763>,  <31.699364, 26.982433, 42.420105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628811, 26.669039, 42.181763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142001, 0.578759, -0.803040,
		0.974025, -0.226253, 0.009174,
		-0.176381, -0.783484, -0.595854,
		31.575897, 26.433994, 42.003006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271507, 26.875149, 41.930401>,  <31.699364, 26.982433, 42.420105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271507, 26.875149, 41.930401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920387, 26.748215, 41.786865>,  <31.709715, 26.672054, 41.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920387, 26.748215, 41.786865>,  <32.271507, 26.875149, 41.930401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920387, 26.748215, 41.786865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105664, 0.602379, -0.791185,
		0.467229, -0.732419, -0.495237,
		-0.877799, -0.317336, -0.358839,
		31.657047, 26.653013, 41.679214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317989, 26.588219, 41.238403>,  <32.271507, 26.875149, 41.930401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317989, 26.588219, 41.238403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958864, 26.750340, 41.307285>,  <31.743389, 26.847612, 41.348614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958864, 26.750340, 41.307285>,  <32.317989, 26.588219, 41.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958864, 26.750340, 41.307285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140042, 0.633531, -0.760938,
		-0.417511, -0.659065, -0.625554,
		-0.897815, 0.405304, 0.172210,
		31.689520, 26.871931, 41.358948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910362, 26.527313, 40.631130>,  <32.317989, 26.588219, 41.238403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910362, 26.527313, 40.631130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780607, 26.834949, 40.851410>,  <31.702755, 27.019531, 40.983578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780607, 26.834949, 40.851410>,  <31.910362, 26.527313, 40.631130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780607, 26.834949, 40.851410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108562, 0.608607, -0.786010,
		-0.939674, -0.195185, -0.280917,
		-0.324386, 0.769091, 0.550702,
		31.683292, 27.065678, 41.016621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677496, 27.003635, 40.163673>,  <31.910362, 26.527313, 40.631130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677496, 27.003635, 40.163673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741354, 27.237040, 40.482178>,  <31.779669, 27.377083, 40.673279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741354, 27.237040, 40.482178>,  <31.677496, 27.003635, 40.163673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741354, 27.237040, 40.482178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167063, 0.779000, -0.604359,
		-0.972935, 0.229508, 0.026880,
		0.159645, 0.583511, 0.796259,
		31.789248, 27.412092, 40.721054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405846, 27.584517, 40.034370>,  <31.677496, 27.003635, 40.163673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405846, 27.584517, 40.034370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649126, 27.699482, 40.330338>,  <31.795094, 27.768461, 40.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649126, 27.699482, 40.330338>,  <31.405846, 27.584517, 40.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649126, 27.699482, 40.330338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241407, 0.821020, -0.517348,
		-0.756184, 0.493273, 0.429961,
		0.608201, 0.287414, 0.739922,
		31.831587, 27.785706, 40.552315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362040, 28.371939, 40.063423>,  <31.405846, 27.584517, 40.034370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362040, 28.371939, 40.063423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696838, 28.275070, 40.259701>,  <31.897718, 28.216949, 40.377468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696838, 28.275070, 40.259701>,  <31.362040, 28.371939, 40.063423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696838, 28.275070, 40.259701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467186, 0.783145, -0.410391,
		-0.284903, 0.572745, 0.768631,
		0.836999, -0.242172, 0.490699,
		31.947939, 28.202419, 40.406910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480080, 28.956823, 40.449051>,  <31.362040, 28.371939, 40.063423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480080, 28.956823, 40.449051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824915, 28.758266, 40.408257>,  <32.031815, 28.639133, 40.383778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824915, 28.758266, 40.408257>,  <31.480080, 28.956823, 40.449051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824915, 28.758266, 40.408257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440865, 0.833884, -0.332076,
		0.249886, 0.241315, 0.937723,
		0.862088, -0.496390, -0.101988,
		32.083542, 28.609350, 40.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006992, 29.434113, 40.615143>,  <31.480080, 28.956823, 40.449051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006992, 29.434113, 40.615143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184277, 29.145967, 40.401733>,  <32.290646, 28.973082, 40.273689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184277, 29.145967, 40.401733>,  <32.006992, 29.434113, 40.615143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184277, 29.145967, 40.401733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594691, 0.681622, -0.426303,
		0.670752, -0.128337, 0.730494,
		0.443210, -0.720362, -0.533520,
		32.317238, 28.929859, 40.241676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785980, 29.532383, 40.656349>,  <32.006992, 29.434113, 40.615143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785980, 29.532383, 40.656349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712303, 29.296984, 40.341454>,  <32.668098, 29.155745, 40.152515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712303, 29.296984, 40.341454>,  <32.785980, 29.532383, 40.656349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712303, 29.296984, 40.341454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597439, 0.568962, -0.565111,
		0.780475, -0.574414, 0.246795,
		-0.184191, -0.588500, -0.787237,
		32.657047, 29.120434, 40.105282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441864, 29.516874, 40.387016>,  <32.785980, 29.532383, 40.656349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441864, 29.516874, 40.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198170, 29.404751, 40.090298>,  <33.051952, 29.337477, 39.912266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198170, 29.404751, 40.090298>,  <33.441864, 29.516874, 40.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198170, 29.404751, 40.090298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437493, 0.661386, -0.609236,
		0.661386, -0.695698, -0.280308,
		0.609236, 0.280308, 0.741794,
		33.015400, 29.320658, 39.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861328, 29.435850, 39.843784>,  <33.441864, 29.516874, 40.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861328, 29.435850, 39.843784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495625, 29.481550, 39.688309>,  <33.276203, 29.508970, 39.595024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495625, 29.481550, 39.688309>,  <33.861328, 29.435850, 39.843784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495625, 29.481550, 39.688309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378335, 0.583912, -0.718268,
		0.144897, -0.803737, -0.577072,
		-0.914258, 0.114252, -0.388689,
		33.221348, 29.515825, 39.571701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893528, 29.565189, 39.114933>,  <33.861328, 29.435850, 39.843784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893528, 29.565189, 39.114933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519119, 29.696951, 39.164509>,  <33.294476, 29.776009, 39.194256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519119, 29.696951, 39.164509>,  <33.893528, 29.565189, 39.114933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519119, 29.696951, 39.164509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230931, 0.840571, -0.490012,
		-0.265591, -0.430039, -0.862860,
		-0.936019, 0.329404, 0.123939,
		33.238312, 29.795773, 39.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612774, 29.808125, 38.437592>,  <33.893528, 29.565189, 39.114933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612774, 29.808125, 38.437592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429466, 29.988712, 38.743835>,  <33.319481, 30.097065, 38.927582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429466, 29.988712, 38.743835>,  <33.612774, 29.808125, 38.437592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429466, 29.988712, 38.743835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311473, 0.888338, -0.337402,
		-0.832450, 0.083846, -0.547719,
		-0.458270, 0.451470, 0.765613,
		33.291985, 30.124153, 38.973518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250793, 30.302103, 38.139256>,  <33.612774, 29.808125, 38.437592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250793, 30.302103, 38.139256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269997, 30.437590, 38.515121>,  <33.281521, 30.518881, 38.740643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269997, 30.437590, 38.515121>,  <33.250793, 30.302103, 38.139256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269997, 30.437590, 38.515121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234335, 0.910673, -0.340237,
		-0.970970, 0.236531, -0.035650,
		0.048011, 0.338714, 0.939664,
		33.284401, 30.539204, 38.797020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834534, 30.885212, 38.156891>,  <33.250793, 30.302103, 38.139256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834534, 30.885212, 38.156891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060528, 30.911304, 38.485897>,  <33.196125, 30.926960, 38.683300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060528, 30.911304, 38.485897>,  <32.834534, 30.885212, 38.156891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060528, 30.911304, 38.485897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360624, 0.877091, -0.317272,
		-0.742118, 0.475874, 0.472022,
		0.564988, 0.065231, 0.822516,
		33.230022, 30.930874, 38.732651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756378, 31.532408, 38.262226>,  <32.834534, 30.885212, 38.156891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756378, 31.532408, 38.262226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085121, 31.419695, 38.460274>,  <33.282368, 31.352068, 38.579102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085121, 31.419695, 38.460274>,  <32.756378, 31.532408, 38.262226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085121, 31.419695, 38.460274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443197, 0.862319, -0.244912,
		-0.357941, 0.420720, 0.833591,
		0.821860, -0.281781, 0.495121,
		33.331680, 31.335161, 38.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033245, 32.152985, 38.512440>,  <32.756378, 31.532408, 38.262226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033245, 32.152985, 38.512440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336395, 31.895094, 38.552330>,  <33.518288, 31.740358, 38.576263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336395, 31.895094, 38.552330>,  <33.033245, 32.152985, 38.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336395, 31.895094, 38.552330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627227, 0.678026, -0.383233,
		0.179467, 0.352993, 0.918252,
		0.757878, -0.644730, 0.099723,
		33.563759, 31.701675, 38.582249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576950, 32.593826, 38.715130>,  <33.033245, 32.152985, 38.512440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576950, 32.593826, 38.715130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752728, 32.262413, 38.576324>,  <33.858192, 32.063564, 38.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752728, 32.262413, 38.576324>,  <33.576950, 32.593826, 38.715130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752728, 32.262413, 38.576324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613100, 0.558991, -0.558245,
		0.656504, 0.032562, 0.753619,
		0.439444, -0.828534, -0.347016,
		33.884560, 32.013851, 38.472221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222713, 32.745239, 38.793110>,  <33.576950, 32.593826, 38.715130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222713, 32.745239, 38.793110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216946, 32.464367, 38.508369>,  <34.213486, 32.295841, 38.337524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216946, 32.464367, 38.508369>,  <34.222713, 32.745239, 38.793110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216946, 32.464367, 38.508369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557677, 0.585263, -0.588612,
		0.829933, -0.405471, 0.383151,
		-0.014421, -0.702183, -0.711850,
		34.212620, 32.253712, 38.294815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919800, 32.608189, 38.605797>,  <34.222713, 32.745239, 38.793110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919800, 32.608189, 38.605797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692783, 32.495190, 38.296452>,  <34.556572, 32.427391, 38.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692783, 32.495190, 38.296452>,  <34.919800, 32.608189, 38.605797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692783, 32.495190, 38.296452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409072, 0.718408, -0.562628,
		0.714538, -0.635673, -0.292156,
		-0.567535, -0.282506, -0.773365,
		34.522522, 32.410439, 38.064442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390835, 32.476032, 38.140087>,  <34.919800, 32.608189, 38.605797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390835, 32.476032, 38.140087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054901, 32.491867, 37.923527>,  <34.853340, 32.501369, 37.793591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054901, 32.491867, 37.923527>,  <35.390835, 32.476032, 38.140087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054901, 32.491867, 37.923527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495585, 0.462905, -0.734924,
		0.221522, -0.885523, -0.408383,
		-0.839835, 0.039586, -0.541396,
		34.802952, 32.503742, 37.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540092, 32.532177, 37.350651>,  <35.390835, 32.476032, 38.140087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540092, 32.532177, 37.350651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161747, 32.661659, 37.360039>,  <34.934738, 32.739349, 37.365673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161747, 32.661659, 37.360039>,  <35.540092, 32.532177, 37.350651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161747, 32.661659, 37.360039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199644, 0.637313, -0.744295,
		-0.255892, -0.699317, -0.667439,
		-0.945866, 0.323709, 0.023469,
		34.877987, 32.758774, 37.367081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272141, 32.428249, 36.654140>,  <35.540092, 32.532177, 37.350651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272141, 32.428249, 36.654140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028126, 32.696777, 36.822514>,  <34.881718, 32.857895, 36.923538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028126, 32.696777, 36.822514>,  <35.272141, 32.428249, 36.654140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028126, 32.696777, 36.822514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186922, 0.638164, -0.746864,
		-0.770009, -0.376933, -0.514788,
		-0.610037, 0.671318, 0.420935,
		34.845116, 32.898174, 36.948795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872364, 32.688553, 36.122948>,  <35.272141, 32.428249, 36.654140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872364, 32.688553, 36.122948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834423, 32.973087, 36.401516>,  <34.811657, 33.143806, 36.568657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834423, 32.973087, 36.401516>,  <34.872364, 32.688553, 36.122948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834423, 32.973087, 36.401516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196259, 0.699207, -0.687453,
		-0.975954, 0.071473, -0.205927,
		-0.094852, 0.711338, 0.696421,
		34.805969, 33.186489, 36.610443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590424, 33.300346, 35.744598>,  <34.872364, 32.688553, 36.122948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590424, 33.300346, 35.744598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736538, 33.449043, 36.085976>,  <34.824207, 33.538261, 36.290802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736538, 33.449043, 36.085976>,  <34.590424, 33.300346, 35.744598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736538, 33.449043, 36.085976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343110, 0.798489, -0.494663,
		-0.865357, 0.473520, 0.164127,
		0.365286, 0.371746, 0.853447,
		34.846123, 33.560566, 36.342010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253857, 33.908173, 35.932678>,  <34.590424, 33.300346, 35.744598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253857, 33.908173, 35.932678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596424, 33.931141, 36.137913>,  <34.801964, 33.944923, 36.261051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596424, 33.931141, 36.137913>,  <34.253857, 33.908173, 35.932678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596424, 33.931141, 36.137913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184810, 0.893845, -0.408517,
		-0.482074, 0.444683, 0.754891,
		0.856417, 0.057424, 0.513082,
		34.853348, 33.948368, 36.291836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353779, 34.594692, 36.150833>,  <34.253857, 33.908173, 35.932678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353779, 34.594692, 36.150833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722786, 34.440311, 36.151768>,  <34.944191, 34.347683, 36.152328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722786, 34.440311, 36.151768>,  <34.353779, 34.594692, 36.150833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722786, 34.440311, 36.151768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327936, 0.780624, -0.532057,
		0.203523, 0.491598, 0.846705,
		0.922516, -0.385951, 0.002338,
		34.999542, 34.324528, 36.152470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710464, 35.111843, 36.362766>,  <34.353779, 34.594692, 36.150833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710464, 35.111843, 36.362766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951744, 34.872391, 36.151939>,  <35.096512, 34.728718, 36.025444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951744, 34.872391, 36.151939>,  <34.710464, 35.111843, 36.362766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951744, 34.872391, 36.151939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444333, 0.800988, -0.401232,
		0.662363, 0.007828, 0.749142,
		0.603195, -0.598630, -0.527066,
		35.132702, 34.692802, 35.993820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241096, 35.587490, 36.453743>,  <34.710464, 35.111843, 36.362766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241096, 35.587490, 36.453743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366135, 35.316780, 36.187130>,  <35.441158, 35.154354, 36.027164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366135, 35.316780, 36.187130>,  <35.241096, 35.587490, 36.453743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366135, 35.316780, 36.187130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679155, 0.649822, -0.341291,
		0.664102, -0.345990, 0.662766,
		0.312597, -0.676773, -0.666530,
		35.459915, 35.113747, 35.987171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000355, 35.476555, 36.489109>,  <35.241096, 35.587490, 36.453743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000355, 35.476555, 36.489109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871288, 35.383881, 36.122021>,  <35.793850, 35.328278, 35.901768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871288, 35.383881, 36.122021>,  <36.000355, 35.476555, 36.489109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871288, 35.383881, 36.122021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620749, 0.680150, -0.389957,
		0.714535, -0.695498, -0.075639,
		-0.322661, -0.231685, -0.917721,
		35.774490, 35.314377, 35.846703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552246, 35.338203, 36.096336>,  <36.000355, 35.476555, 36.489109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552246, 35.338203, 36.096336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269402, 35.447163, 35.835323>,  <36.099697, 35.512539, 35.678715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269402, 35.447163, 35.835323>,  <36.552246, 35.338203, 36.096336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269402, 35.447163, 35.835323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631555, 0.658331, -0.409559,
		0.318021, -0.701713, -0.637544,
		-0.707107, 0.272396, -0.652533,
		36.057270, 35.528881, 35.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820747, 35.206791, 35.450310>,  <36.552246, 35.338203, 36.096336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820747, 35.206791, 35.450310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526909, 35.475811, 35.414410>,  <36.350605, 35.637222, 35.392872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526909, 35.475811, 35.414410>,  <36.820747, 35.206791, 35.450310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526909, 35.475811, 35.414410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616858, 0.606889, -0.501170,
		-0.282594, -0.423518, -0.860682,
		-0.734593, 0.672546, -0.089747,
		36.306530, 35.677574, 35.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791424, 35.407253, 34.807545>,  <36.820747, 35.206791, 35.450310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791424, 35.407253, 34.807545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572437, 35.704765, 34.960945>,  <36.441044, 35.883274, 35.052986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572437, 35.704765, 34.960945>,  <36.791424, 35.407253, 34.807545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572437, 35.704765, 34.960945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507591, 0.659496, -0.554451,
		-0.665305, -0.108883, -0.738589,
		-0.547467, 0.743780, 0.383498,
		36.408195, 35.927898, 35.075993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581882, 35.799007, 34.246048>,  <36.791424, 35.407253, 34.807545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581882, 35.799007, 34.246048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549179, 36.044956, 34.559799>,  <36.529556, 36.192528, 34.748051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549179, 36.044956, 34.559799>,  <36.581882, 35.799007, 34.246048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549179, 36.044956, 34.559799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579114, 0.669824, -0.464718,
		-0.811137, 0.416250, -0.410844,
		-0.081755, 0.614875, 0.784375,
		36.524654, 36.229420, 34.795113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600811, 36.514679, 33.955860>,  <36.581882, 35.799007, 34.246048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600811, 36.514679, 33.955860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662468, 36.591454, 34.343552>,  <36.699463, 36.637520, 34.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662468, 36.591454, 34.343552>,  <36.600811, 36.514679, 33.955860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662468, 36.591454, 34.343552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493440, 0.834909, -0.243811,
		-0.856013, 0.515837, 0.033986,
		0.154141, 0.191935, 0.969227,
		36.708710, 36.649033, 34.634319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493576, 37.258003, 34.074013>,  <36.600811, 36.514679, 33.955860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493576, 37.258003, 34.074013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746952, 37.112625, 34.347263>,  <36.898979, 37.025398, 34.511215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746952, 37.112625, 34.347263>,  <36.493576, 37.258003, 34.074013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746952, 37.112625, 34.347263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658304, 0.717104, -0.228904,
		-0.406680, 0.594703, 0.693499,
		0.633441, -0.363443, 0.683127,
		36.936985, 37.003593, 34.552200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838879, 37.865650, 34.368267>,  <36.493576, 37.258003, 34.074013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838879, 37.865650, 34.368267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078171, 37.578835, 34.511360>,  <37.221745, 37.406746, 34.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078171, 37.578835, 34.511360>,  <36.838879, 37.865650, 34.368267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078171, 37.578835, 34.511360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787336, 0.609015, -0.095930,
		-0.149077, 0.339041, 0.928885,
		0.598229, -0.717044, 0.357729,
		37.257641, 37.363720, 34.618679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391449, 38.068871, 34.829880>,  <36.838879, 37.865650, 34.368267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391449, 38.068871, 34.829880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543041, 37.724270, 34.694717>,  <37.633995, 37.517509, 34.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543041, 37.724270, 34.694717>,  <37.391449, 38.068871, 34.829880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543041, 37.724270, 34.694717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791914, 0.490843, -0.363244,
		0.478797, -0.129933, 0.868258,
		0.378981, -0.861505, -0.337909,
		37.656734, 37.465816, 34.593346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051785, 38.195045, 34.911896>,  <37.391449, 38.068871, 34.829880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051785, 38.195045, 34.911896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032482, 37.884373, 34.660683>,  <38.020901, 37.697968, 34.509953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032482, 37.884373, 34.660683>,  <38.051785, 38.195045, 34.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032482, 37.884373, 34.660683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851940, 0.296224, -0.431799,
		0.521412, -0.555886, 0.647395,
		-0.048257, -0.776686, -0.628036,
		38.018005, 37.651367, 34.472271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631626, 37.961403, 34.895599>,  <38.051785, 38.195045, 34.911896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631626, 37.961403, 34.895599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506351, 37.813564, 34.545670>,  <38.431187, 37.724861, 34.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506351, 37.813564, 34.545670>,  <38.631626, 37.961403, 34.895599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506351, 37.813564, 34.545670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802553, 0.389511, -0.451873,
		0.507765, -0.843610, 0.174635,
		-0.313182, -0.369599, -0.874822,
		38.412395, 37.702686, 34.283222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110512, 37.456287, 34.617558>,  <38.631626, 37.961403, 34.895599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110512, 37.456287, 34.617558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899567, 37.573956, 34.298721>,  <38.772999, 37.644554, 34.107418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899567, 37.573956, 34.298721>,  <39.110512, 37.456287, 34.617558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899567, 37.573956, 34.298721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847142, 0.253933, -0.466763,
		0.065102, -0.921403, -0.383116,
		-0.527363, 0.294167, -0.797091,
		38.741356, 37.662205, 34.059593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431519, 37.160988, 33.978737>,  <39.110512, 37.456287, 34.617558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431519, 37.160988, 33.978737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183472, 37.443325, 33.841774>,  <39.034645, 37.612728, 33.759598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183472, 37.443325, 33.841774>,  <39.431519, 37.160988, 33.978737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183472, 37.443325, 33.841774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708771, 0.316964, -0.630220,
		-0.336308, -0.633495, -0.696836,
		-0.620113, 0.705846, -0.342406,
		38.997437, 37.655079, 33.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414867, 36.987423, 33.270554>,  <39.431519, 37.160988, 33.978737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414867, 36.987423, 33.270554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301224, 37.370319, 33.292374>,  <39.233036, 37.600056, 33.305466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301224, 37.370319, 33.292374>,  <39.414867, 36.987423, 33.270554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301224, 37.370319, 33.292374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737670, 0.254580, -0.625325,
		-0.612474, -0.137418, -0.778455,
		-0.284110, 0.957238, 0.054555,
		39.215992, 37.657490, 33.308739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231182, 37.279366, 32.548752>,  <39.414867, 36.987423, 33.270554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231182, 37.279366, 32.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334774, 37.581638, 32.789375>,  <39.396931, 37.763004, 32.933750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334774, 37.581638, 32.789375>,  <39.231182, 37.279366, 32.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334774, 37.581638, 32.789375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720962, 0.263212, -0.641041,
		-0.642761, 0.599717, -0.476653,
		0.258982, 0.755684, 0.601556,
		39.412468, 37.808342, 32.969841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658463, 37.681084, 32.204372>,  <39.231182, 37.279366, 32.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658463, 37.681084, 32.204372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611427, 37.588345, 31.818125>,  <38.583206, 37.532703, 31.586376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611427, 37.588345, 31.818125>,  <38.658463, 37.681084, 32.204372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611427, 37.588345, 31.818125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106442, -0.963821, 0.244373,
		-0.987342, 0.131517, 0.088652,
		-0.117584, -0.231844, -0.965620,
		38.576153, 37.518791, 31.528439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985088, 37.386833, 32.220989>,  <38.658463, 37.681084, 32.204372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985088, 37.386833, 32.220989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184933, 37.252529, 31.901575>,  <38.304840, 37.171947, 31.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184933, 37.252529, 31.901575>,  <37.985088, 37.386833, 32.220989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184933, 37.252529, 31.901575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321184, -0.927921, 0.189217,
		-0.804507, 0.161941, -0.571440,
		0.499610, -0.335763, -0.798532,
		38.334816, 37.151802, 31.662016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532707, 37.013481, 31.911230>,  <37.985088, 37.386833, 32.220989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532707, 37.013481, 31.911230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889095, 36.873116, 31.795967>,  <38.102928, 36.788895, 31.726810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889095, 36.873116, 31.795967>,  <37.532707, 37.013481, 31.911230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889095, 36.873116, 31.795967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330085, -0.936337, 0.119655,
		-0.311800, -0.011493, -0.950078,
		0.890968, -0.350915, -0.288156,
		38.156387, 36.767841, 31.709520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347336, 36.329067, 31.551821>,  <37.532707, 37.013481, 31.911230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347336, 36.329067, 31.551821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742874, 36.318771, 31.610497>,  <37.980198, 36.312592, 31.645702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742874, 36.318771, 31.610497>,  <37.347336, 36.329067, 31.551821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742874, 36.318771, 31.610497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067355, -0.955765, 0.286315,
		0.132832, -0.293002, -0.946840,
		0.988847, -0.025743, 0.146691,
		38.039528, 36.311047, 31.654505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659817, 35.846401, 31.102507>,  <37.347336, 36.329067, 31.551821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659817, 35.846401, 31.102507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920120, 35.892387, 31.402719>,  <38.076302, 35.919979, 31.582848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920120, 35.892387, 31.402719>,  <37.659817, 35.846401, 31.102507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920120, 35.892387, 31.402719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087625, -0.970494, 0.224640,
		0.754215, -0.211951, -0.621479,
		0.650754, 0.114969, 0.750533,
		38.115345, 35.926880, 31.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015984, 35.167950, 31.140005>,  <37.659817, 35.846401, 31.102507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015984, 35.167950, 31.140005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078766, 35.348557, 31.491344>,  <38.116436, 35.456921, 31.702148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078766, 35.348557, 31.491344>,  <38.015984, 35.167950, 31.140005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078766, 35.348557, 31.491344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352932, -0.805002, 0.476877,
		0.922390, -0.384846, 0.033004,
		0.156956, 0.451515, 0.878350,
		38.125854, 35.484013, 31.754850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432377, 34.761959, 31.533823>,  <38.015984, 35.167950, 31.140005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432377, 34.761959, 31.533823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237850, 34.972210, 31.813025>,  <38.121136, 35.098362, 31.980545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237850, 34.972210, 31.813025>,  <38.432377, 34.761959, 31.533823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237850, 34.972210, 31.813025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342643, -0.849568, 0.401035,
		0.803798, -0.044136, 0.593263,
		-0.486317, 0.525629, 0.698004,
		38.091953, 35.129898, 32.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628185, 34.436863, 32.170422>,  <38.432377, 34.761959, 31.533823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628185, 34.436863, 32.170422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288063, 34.627697, 32.259293>,  <38.083988, 34.742199, 32.312614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288063, 34.627697, 32.259293>,  <38.628185, 34.436863, 32.170422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288063, 34.627697, 32.259293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302959, -0.788927, 0.534612,
		0.430343, 0.387272, 0.815369,
		-0.850306, 0.477090, 0.222182,
		38.032970, 34.770824, 32.325947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497719, 34.442101, 32.895901>,  <38.628185, 34.436863, 32.170422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497719, 34.442101, 32.895901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136364, 34.469822, 32.726624>,  <37.919552, 34.486454, 32.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136364, 34.469822, 32.726624>,  <38.497719, 34.442101, 32.895901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136364, 34.469822, 32.726624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342685, -0.709943, 0.615263,
		-0.257800, 0.700841, 0.665102,
		-0.903386, 0.069306, -0.423191,
		37.865349, 34.490612, 32.599667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980576, 34.312672, 33.499653>,  <38.497719, 34.442101, 32.895901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980576, 34.312672, 33.499653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775749, 34.252846, 33.161324>,  <37.652855, 34.216949, 32.958324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775749, 34.252846, 33.161324>,  <37.980576, 34.312672, 33.499653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775749, 34.252846, 33.161324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481841, -0.765173, 0.427013,
		-0.711071, 0.626211, 0.319748,
		-0.512063, -0.149568, -0.845826,
		37.622131, 34.207973, 32.907578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464195, 34.042248, 33.814938>,  <37.980576, 34.312672, 33.499653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464195, 34.042248, 33.814938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382191, 33.972076, 33.429775>,  <37.332989, 33.929974, 33.198677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382191, 33.972076, 33.429775>,  <37.464195, 34.042248, 33.814938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382191, 33.972076, 33.429775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625065, -0.733584, 0.266735,
		-0.753168, 0.656565, 0.040738,
		-0.205014, -0.175433, -0.962909,
		37.320686, 33.919445, 33.140903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705326, 34.131218, 33.780190>,  <37.464195, 34.042248, 33.814938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705326, 34.131218, 33.780190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827576, 33.918758, 33.464092>,  <36.900925, 33.791283, 33.274433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827576, 33.918758, 33.464092>,  <36.705326, 34.131218, 33.780190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827576, 33.918758, 33.464092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812918, -0.577673, 0.073876,
		-0.495740, 0.619822, -0.608328,
		0.305624, -0.531144, -0.790240,
		36.919262, 33.759415, 33.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135101, 34.141384, 33.427002>,  <36.705326, 34.131218, 33.780190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135101, 34.141384, 33.427002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377560, 33.837486, 33.332867>,  <36.523033, 33.655148, 33.276386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377560, 33.837486, 33.332867>,  <36.135101, 34.141384, 33.427002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377560, 33.837486, 33.332867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755391, -0.642523, 0.128644,
		-0.248946, 0.099796, -0.963362,
		0.606144, -0.759740, -0.235339,
		36.559402, 33.609566, 33.262264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720177, 33.690701, 33.057808>,  <36.135101, 34.141384, 33.427002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720177, 33.690701, 33.057808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017452, 33.478889, 33.221405>,  <36.195816, 33.351803, 33.319561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017452, 33.478889, 33.221405>,  <35.720177, 33.690701, 33.057808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017452, 33.478889, 33.221405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668660, -0.566056, 0.482156,
		-0.023804, -0.631807, -0.774760,
		0.743187, -0.529528, 0.408989,
		36.240410, 33.320030, 33.344101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444324, 33.035343, 32.982735>,  <35.720177, 33.690701, 33.057808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444324, 33.035343, 32.982735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719612, 33.014515, 33.272186>,  <35.884785, 33.002018, 33.445858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719612, 33.014515, 33.272186>,  <35.444324, 33.035343, 32.982735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719612, 33.014515, 33.272186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534590, -0.710700, 0.457296,
		0.490473, -0.701566, -0.516954,
		0.688222, -0.052066, 0.723629,
		35.926079, 32.998894, 33.489277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641144, 32.212574, 33.062737>,  <35.444324, 33.035343, 32.982735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641144, 32.212574, 33.062737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761005, 32.406281, 33.391541>,  <35.832920, 32.522507, 33.588821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761005, 32.406281, 33.391541>,  <35.641144, 32.212574, 33.062737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761005, 32.406281, 33.391541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487795, -0.662697, 0.568234,
		0.819919, -0.571241, 0.037648,
		0.299649, 0.484269, 0.822006,
		35.850899, 32.551559, 33.638142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835632, 31.648373, 33.484741>,  <35.641144, 32.212574, 33.062737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835632, 31.648373, 33.484741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821224, 31.951778, 33.745007>,  <35.812580, 32.133823, 33.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821224, 31.951778, 33.745007>,  <35.835632, 31.648373, 33.484741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821224, 31.951778, 33.745007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418420, -0.602714, 0.679456,
		0.907539, -0.247774, 0.339089,
		-0.036022, 0.758514, 0.650660,
		35.810417, 32.179333, 33.940205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211739, 31.479855, 34.116177>,  <35.835632, 31.648373, 33.484741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211739, 31.479855, 34.116177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941406, 31.748497, 34.237633>,  <35.779205, 31.909683, 34.310505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941406, 31.748497, 34.237633>,  <36.211739, 31.479855, 34.116177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941406, 31.748497, 34.237633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467992, -0.709276, 0.527173,
		0.569417, 0.214179, 0.793657,
		-0.675831, 0.671606, 0.303640,
		35.738655, 31.949978, 34.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149681, 31.345068, 34.782246>,  <36.211739, 31.479855, 34.116177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149681, 31.345068, 34.782246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825832, 31.559935, 34.687622>,  <35.631523, 31.688854, 34.630848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825832, 31.559935, 34.687622>,  <36.149681, 31.345068, 34.782246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825832, 31.559935, 34.687622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566897, -0.611195, 0.552330,
		0.152111, 0.581283, 0.799357,
		-0.809623, 0.537169, -0.236558,
		35.582947, 31.721085, 34.616653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917423, 31.496193, 35.406956>,  <36.149681, 31.345068, 34.782246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917423, 31.496193, 35.406956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616280, 31.539764, 35.147316>,  <35.435593, 31.565908, 34.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616280, 31.539764, 35.147316>,  <35.917423, 31.496193, 35.406956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616280, 31.539764, 35.147316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583723, -0.566137, 0.582028,
		-0.304080, 0.817082, 0.489808,
		-0.752863, 0.108930, -0.649101,
		35.390419, 31.572443, 34.952587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328701, 31.758339, 35.788738>,  <35.917423, 31.496193, 35.406956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328701, 31.758339, 35.788738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170441, 31.589151, 35.462658>,  <35.075485, 31.487638, 35.267010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170441, 31.589151, 35.462658>,  <35.328701, 31.758339, 35.788738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170441, 31.589151, 35.462658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735299, -0.385944, 0.557120,
		-0.550268, 0.819844, -0.158309,
		-0.395653, -0.422969, -0.815203,
		35.051746, 31.462261, 35.218098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621563, 31.965645, 35.840195>,  <35.328701, 31.758339, 35.788738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621563, 31.965645, 35.840195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658997, 31.649246, 35.598347>,  <34.681458, 31.459406, 35.453239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658997, 31.649246, 35.598347>,  <34.621563, 31.965645, 35.840195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658997, 31.649246, 35.598347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509674, -0.559739, 0.653394,
		-0.855262, 0.247008, -0.455536,
		0.093588, -0.790999, -0.604618,
		34.687073, 31.411947, 35.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946106, 31.657560, 35.954884>,  <34.621563, 31.965645, 35.840195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946106, 31.657560, 35.954884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183289, 31.394127, 35.769554>,  <34.325600, 31.236067, 35.658356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183289, 31.394127, 35.769554>,  <33.946106, 31.657560, 35.954884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183289, 31.394127, 35.769554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445070, -0.747564, 0.493012,
		-0.671052, -0.086126, -0.736391,
		0.592960, -0.658583, -0.463322,
		34.361176, 31.196552, 35.630558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479168, 31.198660, 35.834538>,  <33.946106, 31.657560, 35.954884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479168, 31.198660, 35.834538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848503, 31.046955, 35.858570>,  <34.070103, 30.955933, 35.872990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848503, 31.046955, 35.858570>,  <33.479168, 31.198660, 35.834538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848503, 31.046955, 35.858570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352980, -0.776721, 0.521641,
		-0.151174, -0.502857, -0.851047,
		0.923337, -0.379261, 0.060078,
		34.125504, 30.933176, 35.876595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403301, 30.526417, 35.599758>,  <33.479168, 31.198660, 35.834538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403301, 30.526417, 35.599758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733685, 30.534342, 35.825115>,  <33.931915, 30.539097, 35.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733685, 30.534342, 35.825115>,  <33.403301, 30.526417, 35.599758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733685, 30.534342, 35.825115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318907, -0.807682, 0.495932,
		0.464864, -0.589285, -0.660790,
		0.825954, 0.019811, 0.563390,
		33.981472, 30.540285, 35.994133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748955, 29.823421, 35.611885>,  <33.403301, 30.526417, 35.599758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748955, 29.823421, 35.611885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907375, 30.013332, 35.926270>,  <34.002426, 30.127279, 36.114899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907375, 30.013332, 35.926270>,  <33.748955, 29.823421, 35.611885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907375, 30.013332, 35.926270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152298, -0.810130, 0.566123,
		0.905512, -0.343911, -0.248542,
		0.396047, 0.474779, 0.785959,
		34.026188, 30.155766, 36.162056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167648, 29.318651, 35.869221>,  <33.748955, 29.823421, 35.611885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167648, 29.318651, 35.869221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 29.561554, 36.186890>,  <34.152969, 29.707294, 36.377491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158474, 29.561554, 36.186890>,  <34.167648, 29.318651, 35.869221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158474, 29.561554, 36.186890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188747, -0.782729, 0.593051,
		0.981758, -0.136295, 0.132572,
		-0.022938, 0.607255, 0.794176,
		34.151592, 29.743731, 36.425144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431328, 28.961855, 36.402256>,  <34.167648, 29.318651, 35.869221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431328, 28.961855, 36.402256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234764, 29.241846, 36.609547>,  <34.116825, 29.409840, 36.733921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234764, 29.241846, 36.609547>,  <34.431328, 28.961855, 36.402256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234764, 29.241846, 36.609547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060074, -0.620846, 0.781627,
		0.868857, 0.352964, 0.347137,
		-0.491405, 0.699976, 0.518223,
		34.087341, 29.451839, 36.765015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824730, 29.095238, 37.112919>,  <34.431328, 28.961855, 36.402256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824730, 29.095238, 37.112919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441360, 29.209194, 37.119305>,  <34.211338, 29.277567, 37.123135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441360, 29.209194, 37.119305>,  <34.824730, 29.095238, 37.112919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441360, 29.209194, 37.119305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147360, -0.542096, 0.827295,
		0.244340, 0.790550, 0.561541,
		-0.958427, 0.284890, 0.015960,
		34.153831, 29.294661, 37.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585384, 29.123205, 37.795723>,  <34.824730, 29.095238, 37.112919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585384, 29.123205, 37.795723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 29.105293, 37.598495>,  <34.029331, 29.094545, 37.480160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 29.105293, 37.598495>,  <34.585384, 29.123205, 37.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237850, 29.105293, 37.598495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371181, -0.600137, 0.708562,
		-0.327640, 0.798642, 0.504799,
		-0.868836, -0.044781, -0.493071,
		33.977200, 29.091858, 37.450573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036049, 29.011967, 38.312202>,  <34.585384, 29.123205, 37.795723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036049, 29.011967, 38.312202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849525, 28.893221, 37.978874>,  <33.737614, 28.821974, 37.778877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849525, 28.893221, 37.978874>,  <34.036049, 29.011967, 38.312202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849525, 28.893221, 37.978874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532434, -0.658094, 0.532378,
		-0.706451, 0.691941, 0.148811,
		-0.466306, -0.296867, -0.833324,
		33.709633, 28.804161, 37.728878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384861, 28.800898, 38.543156>,  <34.036049, 29.011967, 38.312202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384861, 28.800898, 38.543156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373421, 28.654371, 38.171135>,  <33.366558, 28.566456, 37.947922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373421, 28.654371, 38.171135>,  <33.384861, 28.800898, 38.543156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373421, 28.654371, 38.171135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623015, -0.721071, 0.303165,
		-0.781687, 0.588106, -0.207599,
		-0.028600, -0.366317, -0.930050,
		33.364841, 28.544476, 37.892120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645847, 28.674202, 38.361061>,  <33.384861, 28.800898, 38.543156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645847, 28.674202, 38.361061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860287, 28.423195, 38.135208>,  <32.988953, 28.272591, 37.999695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860287, 28.423195, 38.135208>,  <32.645847, 28.674202, 38.361061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860287, 28.423195, 38.135208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653226, -0.732055, 0.193370,
		-0.534687, 0.265168, -0.802369,
		0.536102, -0.627520, -0.564635,
		33.021118, 28.234940, 37.965816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149143, 28.255495, 37.944817>,  <32.645847, 28.674202, 38.361061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149143, 28.255495, 37.944817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502411, 28.068155, 37.955063>,  <32.714371, 27.955751, 37.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502411, 28.068155, 37.955063>,  <32.149143, 28.255495, 37.944817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502411, 28.068155, 37.955063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468998, -0.880941, 0.063120,
		-0.006997, -0.067758, -0.997677,
		0.883171, -0.468350, 0.025615,
		32.767361, 27.927650, 37.962746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054203, 27.614891, 37.430305>,  <32.149143, 28.255495, 37.944817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054203, 27.614891, 37.430305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358036, 27.527105, 37.675209>,  <32.540337, 27.474434, 37.822151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358036, 27.527105, 37.675209>,  <32.054203, 27.614891, 37.430305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358036, 27.527105, 37.675209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426277, -0.878967, 0.213787,
		0.491240, -0.423383, -0.761203,
		0.759586, -0.219463, 0.612262,
		32.585911, 27.461267, 37.858887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058578, 26.864599, 37.370895>,  <32.054203, 27.614891, 37.430305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058578, 26.864599, 37.370895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280190, 26.918503, 37.699505>,  <32.413155, 26.950846, 37.896671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280190, 26.918503, 37.699505>,  <32.058578, 26.864599, 37.370895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280190, 26.918503, 37.699505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171223, -0.947269, 0.270859,
		0.814701, -0.290726, -0.501737,
		0.554026, 0.134760, 0.821520,
		32.446396, 26.958931, 37.945961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699242, 26.279390, 37.383682>,  <32.058578, 26.864599, 37.370895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699242, 26.279390, 37.383682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587364, 26.436905, 37.733929>,  <32.520237, 26.531414, 37.944077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587364, 26.436905, 37.733929>,  <32.699242, 26.279390, 37.383682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587364, 26.436905, 37.733929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274478, -0.906747, 0.320113,
		0.920019, -0.150805, 0.361693,
		-0.279689, 0.393787, 0.875617,
		32.503456, 26.555040, 37.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909725, 25.818262, 37.979145>,  <32.699242, 26.279390, 37.383682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909725, 25.818262, 37.979145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615902, 26.039812, 38.135937>,  <32.439610, 26.172741, 38.230011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615902, 26.039812, 38.135937>,  <32.909725, 25.818262, 37.979145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615902, 26.039812, 38.135937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337513, -0.799387, 0.497057,
		0.588648, 0.232820, 0.774137,
		-0.734559, 0.553873, 0.391978,
		32.395535, 26.205975, 38.253529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892559, 26.313900, 38.463600>,  <32.909725, 25.818262, 37.979145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892559, 26.313900, 38.463600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052292, 25.950228, 38.416405>,  <33.148132, 25.732025, 38.388088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052292, 25.950228, 38.416405>,  <32.892559, 26.313900, 38.463600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052292, 25.950228, 38.416405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434916, 0.301156, -0.848619,
		0.807081, 0.287568, 0.515680,
		0.399335, -0.909181, -0.117989,
		33.172092, 25.677473, 38.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580627, 26.375774, 38.282772>,  <32.892559, 26.313900, 38.463600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580627, 26.375774, 38.282772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521706, 25.999632, 38.160118>,  <33.486351, 25.773947, 38.086525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521706, 25.999632, 38.160118>,  <33.580627, 26.375774, 38.282772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521706, 25.999632, 38.160118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637181, 0.146897, -0.756586,
		0.756506, -0.306834, 0.577539,
		-0.147308, -0.940358, -0.306638,
		33.477512, 25.717524, 38.068127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237064, 26.215803, 38.155346>,  <33.580627, 26.375774, 38.282772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237064, 26.215803, 38.155346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994690, 25.980940, 37.940651>,  <33.849266, 25.840023, 37.811836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994690, 25.980940, 37.940651>,  <34.237064, 26.215803, 38.155346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994690, 25.980940, 37.940651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619355, 0.075222, -0.781499,
		0.499237, -0.805970, 0.318079,
		-0.605938, -0.587157, -0.536736,
		33.812908, 25.804792, 37.779629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672497, 25.865839, 37.752254>,  <34.237064, 26.215803, 38.155346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672497, 25.865839, 37.752254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323757, 25.828629, 37.559914>,  <34.114513, 25.806301, 37.444508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323757, 25.828629, 37.559914>,  <34.672497, 25.865839, 37.752254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323757, 25.828629, 37.559914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453408, 0.217941, -0.864247,
		0.185196, -0.971518, -0.147833,
		-0.871850, -0.093027, -0.480856,
		34.062202, 25.800720, 37.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803532, 25.409725, 37.108696>,  <34.672497, 25.865839, 37.752254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803532, 25.409725, 37.108696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451717, 25.582653, 37.029171>,  <34.240631, 25.686409, 36.981457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451717, 25.582653, 37.029171>,  <34.803532, 25.409725, 37.108696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451717, 25.582653, 37.029171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352323, 0.310837, -0.882751,
		-0.319832, -0.846452, -0.425707,
		-0.879532, 0.432318, -0.198809,
		34.187859, 25.712349, 36.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674770, 25.219439, 36.396851>,  <34.803532, 25.409725, 37.108696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674770, 25.219439, 36.396851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442505, 25.534105, 36.480740>,  <34.303146, 25.722906, 36.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442505, 25.534105, 36.480740>,  <34.674770, 25.219439, 36.396851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442505, 25.534105, 36.480740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216737, 0.397669, -0.891563,
		-0.784764, -0.472243, -0.401412,
		-0.580664, 0.786668, 0.209723,
		34.268307, 25.770105, 36.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324654, 25.386436, 35.845406>,  <34.674770, 25.219439, 36.396851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324654, 25.386436, 35.845406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313564, 25.741798, 36.028694>,  <34.306911, 25.955015, 36.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313564, 25.741798, 36.028694>,  <34.324654, 25.386436, 35.845406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313564, 25.741798, 36.028694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404119, 0.429231, -0.807743,
		-0.914286, 0.162788, -0.370918,
		-0.027718, 0.888404, 0.458226,
		34.305248, 26.008320, 36.166161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193634, 25.860346, 35.274349>,  <34.324654, 25.386436, 35.845406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193634, 25.860346, 35.274349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328659, 26.089140, 35.573383>,  <34.409676, 26.226416, 35.752804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328659, 26.089140, 35.573383>,  <34.193634, 25.860346, 35.274349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328659, 26.089140, 35.573383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446956, 0.601564, -0.662081,
		-0.828420, 0.557634, -0.052583,
		0.337567, 0.571983, 0.747586,
		34.429928, 26.260735, 35.797661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964577, 26.550512, 35.105087>,  <34.193634, 25.860346, 35.274349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964577, 26.550512, 35.105087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271683, 26.582170, 35.359417>,  <34.455948, 26.601166, 35.512012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271683, 26.582170, 35.359417>,  <33.964577, 26.550512, 35.105087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271683, 26.582170, 35.359417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394673, 0.723313, -0.566614,
		-0.504743, 0.685969, 0.524099,
		0.767768, 0.079147, 0.635821,
		34.502014, 26.605915, 35.550163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108669, 27.267632, 35.031425>,  <33.964577, 26.550512, 35.105087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108669, 27.267632, 35.031425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436768, 27.114235, 35.201195>,  <34.633625, 27.022196, 35.303055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436768, 27.114235, 35.201195>,  <34.108669, 27.267632, 35.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436768, 27.114235, 35.201195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562904, 0.673054, -0.479727,
		-0.101687, 0.632402, 0.767937,
		0.820243, -0.383493, 0.424422,
		34.682842, 26.999187, 35.328522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530941, 27.822607, 35.212742>,  <34.108669, 27.267632, 35.031425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530941, 27.822607, 35.212742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789700, 27.519312, 35.180252>,  <34.944954, 27.337334, 35.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789700, 27.519312, 35.180252>,  <34.530941, 27.822607, 35.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789700, 27.519312, 35.180252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630669, 0.591835, -0.501983,
		0.428697, 0.273503, 0.861054,
		0.646897, -0.758239, -0.081228,
		34.983768, 27.291840, 35.155884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179070, 28.129259, 35.325470>,  <34.530941, 27.822607, 35.212742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179070, 28.129259, 35.325470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284527, 27.789255, 35.143051>,  <35.347801, 27.585253, 35.033600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284527, 27.789255, 35.143051>,  <35.179070, 28.129259, 35.325470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284527, 27.789255, 35.143051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621438, 0.511255, -0.593661,
		0.737772, -0.126890, 0.663016,
		0.263640, -0.850010, -0.456044,
		35.363621, 27.534252, 35.006237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004208, 27.972765, 35.316128>,  <35.179070, 28.129259, 35.325470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004208, 27.972765, 35.316128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839836, 27.772972, 35.011063>,  <35.741215, 27.653095, 34.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839836, 27.772972, 35.011063>,  <36.004208, 27.972765, 35.316128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839836, 27.772972, 35.011063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610454, 0.470576, -0.637106,
		0.677115, -0.727375, 0.111539,
		-0.410927, -0.499484, -0.762663,
		35.716557, 27.623127, 34.782265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641911, 27.749929, 34.905823>,  <36.004208, 27.972765, 35.316128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641911, 27.749929, 34.905823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318321, 27.727348, 34.671772>,  <36.124168, 27.713800, 34.531342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318321, 27.727348, 34.671772>,  <36.641911, 27.749929, 34.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318321, 27.727348, 34.671772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441322, 0.599214, -0.667965,
		0.388323, -0.798596, -0.459836,
		-0.808974, -0.056451, -0.585127,
		36.075630, 27.710413, 34.496235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992851, 27.704353, 34.206882>,  <36.641911, 27.749929, 34.905823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992851, 27.704353, 34.206882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611828, 27.821712, 34.174526>,  <36.383213, 27.892128, 34.155113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611828, 27.821712, 34.174526>,  <36.992851, 27.704353, 34.206882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611828, 27.821712, 34.174526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274776, 0.714811, -0.643073,
		-0.130855, -0.634794, -0.761521,
		-0.952563, 0.293397, -0.080889,
		36.326057, 27.909731, 34.150261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851059, 27.707197, 33.492699>,  <36.992851, 27.704353, 34.206882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851059, 27.707197, 33.492699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573704, 27.948074, 33.650982>,  <36.407291, 28.092600, 33.745953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573704, 27.948074, 33.650982>,  <36.851059, 27.707197, 33.492699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573704, 27.948074, 33.650982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337397, 0.756568, -0.560150,
		-0.636697, -0.254889, -0.727770,
		-0.693384, 0.602193, 0.395706,
		36.365688, 28.128733, 33.769695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403191, 28.078773, 32.907764>,  <36.851059, 27.707197, 33.492699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403191, 28.078773, 32.907764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405258, 28.303770, 33.238480>,  <36.406498, 28.438768, 33.436909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405258, 28.303770, 33.238480>,  <36.403191, 28.078773, 32.907764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405258, 28.303770, 33.238480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198929, 0.809696, -0.552105,
		-0.980000, 0.167328, -0.107707,
		0.005173, 0.562489, 0.826788,
		36.406811, 28.472517, 33.486515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066925, 28.822128, 32.756889>,  <36.403191, 28.078773, 32.907764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066925, 28.822128, 32.756889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258121, 28.883806, 33.102779>,  <36.372837, 28.920813, 33.310314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258121, 28.883806, 33.102779>,  <36.066925, 28.822128, 32.756889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258121, 28.883806, 33.102779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405600, 0.834482, -0.372999,
		-0.779113, 0.529022, 0.336330,
		0.477987, 0.154193, 0.864727,
		36.401516, 28.930063, 33.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848053, 29.446653, 32.928455>,  <36.066925, 28.822128, 32.756889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848053, 29.446653, 32.928455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175827, 29.392466, 33.151230>,  <36.372490, 29.359953, 33.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175827, 29.392466, 33.151230>,  <35.848053, 29.446653, 32.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175827, 29.392466, 33.151230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289908, 0.936173, -0.198830,
		-0.494455, 0.324388, 0.806404,
		0.819432, -0.135470, 0.556938,
		36.421658, 29.351824, 33.318310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880634, 29.919054, 33.484447>,  <35.848053, 29.446653, 32.928455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880634, 29.919054, 33.484447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255344, 29.802063, 33.407604>,  <36.480171, 29.731869, 33.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255344, 29.802063, 33.407604>,  <35.880634, 29.919054, 33.484447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255344, 29.802063, 33.407604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266080, 0.951926, -0.151782,
		0.227266, 0.091070, 0.969565,
		0.936777, -0.292477, -0.192109,
		36.536377, 29.714319, 33.349972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359413, 30.535448, 33.639599>,  <35.880634, 29.919054, 33.484447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359413, 30.535448, 33.639599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598953, 30.299011, 33.423454>,  <36.742676, 30.157150, 33.293766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598953, 30.299011, 33.423454>,  <36.359413, 30.535448, 33.639599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598953, 30.299011, 33.423454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424379, 0.806420, -0.411813,
		0.679179, 0.017295, 0.733769,
		0.598848, -0.591091, -0.540364,
		36.778606, 30.121683, 33.261345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988300, 30.903286, 33.666756>,  <36.359413, 30.535448, 33.639599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988300, 30.903286, 33.666756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043434, 30.647676, 33.364059>,  <37.076515, 30.494310, 33.182442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043434, 30.647676, 33.364059>,  <36.988300, 30.903286, 33.666756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043434, 30.647676, 33.364059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495137, 0.706165, -0.506133,
		0.857813, -0.304929, 0.413734,
		0.137830, -0.639022, -0.756739,
		37.084782, 30.455971, 33.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619133, 31.011459, 33.496536>,  <36.988300, 30.903286, 33.666756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619133, 31.011459, 33.496536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508389, 30.812407, 33.167728>,  <37.441944, 30.692974, 32.970444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508389, 30.812407, 33.167728>,  <37.619133, 31.011459, 33.496536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508389, 30.812407, 33.167728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660228, 0.523042, -0.539005,
		0.698175, -0.691947, 0.183742,
		-0.276858, -0.497632, -0.822017,
		37.425331, 30.663116, 32.921124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276257, 30.788040, 33.036503>,  <37.619133, 31.011459, 33.496536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276257, 30.788040, 33.036503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950985, 30.810190, 32.804756>,  <37.755821, 30.823481, 32.665707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950985, 30.810190, 32.804756>,  <38.276257, 30.788040, 33.036503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950985, 30.810190, 32.804756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483763, 0.617766, -0.619951,
		0.323584, -0.784410, -0.529144,
		-0.813183, 0.055374, -0.579367,
		37.707031, 30.826803, 32.630947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518124, 30.700335, 32.344082>,  <38.276257, 30.788040, 33.036503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518124, 30.700335, 32.344082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149597, 30.838856, 32.273376>,  <37.928482, 30.921968, 32.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149597, 30.838856, 32.273376>,  <38.518124, 30.700335, 32.344082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149597, 30.838856, 32.273376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360729, 0.591708, -0.720941,
		-0.145071, -0.727980, -0.670074,
		-0.921319, 0.346303, -0.176764,
		37.873203, 30.942747, 32.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409039, 30.717237, 31.619658>,  <38.518124, 30.700335, 32.344082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409039, 30.717237, 31.619658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131409, 30.972546, 31.752850>,  <37.964832, 31.125731, 31.832766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131409, 30.972546, 31.752850>,  <38.409039, 30.717237, 31.619658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131409, 30.972546, 31.752850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272890, 0.661275, -0.698746,
		-0.666181, -0.394112, -0.633149,
		-0.694070, 0.638272, 0.332980,
		37.923187, 31.164026, 31.852743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069687, 30.967064, 31.065540>,  <38.409039, 30.717237, 31.619658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069687, 30.967064, 31.065540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001007, 31.250929, 31.338861>,  <37.959797, 31.421247, 31.502853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001007, 31.250929, 31.338861>,  <38.069687, 30.967064, 31.065540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001007, 31.250929, 31.338861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263699, 0.701399, -0.662195,
		-0.949200, 0.066486, -0.307569,
		-0.171702, 0.709661, 0.683301,
		37.949497, 31.463827, 31.543852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614742, 31.518925, 30.820433>,  <38.069687, 30.967064, 31.065540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614742, 31.518925, 30.820433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814972, 31.705858, 31.111917>,  <37.935112, 31.818018, 31.286808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814972, 31.705858, 31.111917>,  <37.614742, 31.518925, 30.820433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814972, 31.705858, 31.111917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242404, 0.732425, -0.636234,
		-0.831061, 0.495127, 0.253352,
		0.500578, 0.467336, 0.728711,
		37.965145, 31.846060, 31.330530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415344, 32.255379, 30.814417>,  <37.614742, 31.518925, 30.820433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415344, 32.255379, 30.814417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763756, 32.259407, 31.010868>,  <37.972801, 32.261826, 31.128738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763756, 32.259407, 31.010868>,  <37.415344, 32.255379, 30.814417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763756, 32.259407, 31.010868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284349, 0.804925, -0.520809,
		-0.400565, 0.593292, 0.698250,
		0.871030, 0.010071, 0.491127,
		38.025066, 32.262428, 31.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646805, 32.980564, 31.106220>,  <37.415344, 32.255379, 30.814417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646805, 32.980564, 31.106220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993073, 32.780949, 31.090336>,  <38.200832, 32.661179, 31.080805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993073, 32.780949, 31.090336>,  <37.646805, 32.980564, 31.106220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993073, 32.780949, 31.090336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475250, 0.844144, -0.248110,
		0.157338, 0.195909, 0.967918,
		0.865668, -0.499040, -0.039711,
		38.252773, 32.631237, 31.078423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063644, 33.343857, 31.440121>,  <37.646805, 32.980564, 31.106220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063644, 33.343857, 31.440121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297806, 33.104465, 31.221350>,  <38.438301, 32.960831, 31.090088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297806, 33.104465, 31.221350>,  <38.063644, 33.343857, 31.440121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297806, 33.104465, 31.221350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493244, 0.798295, -0.345595,
		0.643440, -0.067457, 0.762519,
		0.585402, -0.598477, -0.546927,
		38.473427, 32.924923, 31.057272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735577, 33.668339, 31.472664>,  <38.063644, 33.343857, 31.440121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735577, 33.668339, 31.472664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785378, 33.418583, 31.164211>,  <38.815258, 33.268730, 30.979139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785378, 33.418583, 31.164211>,  <38.735577, 33.668339, 31.472664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785378, 33.418583, 31.164211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623016, 0.654065, -0.429011,
		0.772237, -0.427013, 0.470436,
		0.124502, -0.624387, -0.771129,
		38.822727, 33.231266, 30.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498196, 33.525578, 31.341406>,  <38.735577, 33.668339, 31.472664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498196, 33.525578, 31.341406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310432, 33.455433, 30.995249>,  <39.197773, 33.413345, 30.787554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310432, 33.455433, 30.995249>,  <39.498196, 33.525578, 31.341406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310432, 33.455433, 30.995249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560612, 0.698010, -0.445529,
		0.682178, -0.694286, -0.229347,
		-0.469411, -0.175356, -0.865392,
		39.169609, 33.402824, 30.735630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014282, 33.476490, 30.976816>,  <39.498196, 33.525578, 31.341406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014282, 33.476490, 30.976816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713394, 33.529121, 30.718561>,  <39.532860, 33.560699, 30.563608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713394, 33.529121, 30.718561>,  <40.014282, 33.476490, 30.976816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713394, 33.529121, 30.718561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556929, 0.650606, -0.516277,
		0.352126, -0.747930, -0.562679,
		-0.752222, 0.131578, -0.645639,
		39.487728, 33.568596, 30.524870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257725, 33.244362, 30.212713>,  <40.014282, 33.476490, 30.976816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257725, 33.244362, 30.212713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949432, 33.483097, 30.123491>,  <39.764458, 33.626339, 30.069958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949432, 33.483097, 30.123491>,  <40.257725, 33.244362, 30.212713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949432, 33.483097, 30.123491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593321, 0.544688, -0.592694,
		-0.232246, -0.589153, -0.773926,
		-0.770735, 0.596837, -0.223055,
		39.718212, 33.662148, 30.056574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243515, 33.486614, 29.401430>,  <40.257725, 33.244362, 30.212713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243515, 33.486614, 29.401430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991657, 33.742531, 29.577709>,  <39.840542, 33.896080, 29.683477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991657, 33.742531, 29.577709>,  <40.243515, 33.486614, 29.401430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991657, 33.742531, 29.577709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490068, 0.767260, -0.413698,
		-0.602810, -0.044511, -0.796642,
		-0.629645, 0.639790, 0.440699,
		39.802765, 33.934467, 29.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151581, 34.051918, 28.945032>,  <40.243515, 33.486614, 29.401430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151581, 34.051918, 28.945032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021702, 34.245354, 29.270168>,  <39.943775, 34.361416, 29.465250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021702, 34.245354, 29.270168>,  <40.151581, 34.051918, 28.945032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021702, 34.245354, 29.270168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595420, 0.772249, -0.221598,
		-0.734879, 0.412029, -0.538688,
		-0.324696, 0.483594, 0.812840,
		39.924294, 34.390430, 29.514021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913090, 34.670792, 28.717443>,  <40.151581, 34.051918, 28.945032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913090, 34.670792, 28.717443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010315, 34.698502, 29.104458>,  <40.068649, 34.715126, 29.336666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010315, 34.698502, 29.104458>,  <39.913090, 34.670792, 28.717443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010315, 34.698502, 29.104458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602534, 0.770899, -0.206560,
		-0.760180, 0.633179, 0.145637,
		0.243061, 0.069271, 0.967534,
		40.083233, 34.719284, 29.394718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162010, 35.412914, 28.709433>,  <39.913090, 34.670792, 28.717443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162010, 35.412914, 28.709433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251980, 35.272507, 29.073013>,  <40.305962, 35.188263, 29.291162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251980, 35.272507, 29.073013>,  <40.162010, 35.412914, 28.709433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251980, 35.272507, 29.073013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639421, 0.757066, 0.134136,
		-0.735221, 0.551031, 0.394734,
		0.224926, -0.351021, 0.908951,
		40.319458, 35.167202, 29.345699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059105, 35.980404, 29.267910>,  <40.162010, 35.412914, 28.709433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059105, 35.980404, 29.267910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331944, 35.698376, 29.345497>,  <40.495647, 35.529160, 29.392050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331944, 35.698376, 29.345497>,  <40.059105, 35.980404, 29.267910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331944, 35.698376, 29.345497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729980, 0.672218, -0.123498,
		-0.043312, 0.225829, 0.973204,
		0.682094, -0.705071, 0.193966,
		40.536572, 35.486855, 29.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586338, 36.140759, 29.809814>,  <40.059105, 35.980404, 29.267910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586338, 36.140759, 29.809814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195351, 36.225044, 29.804714>,  <39.960758, 36.275616, 29.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195351, 36.225044, 29.804714>,  <40.586338, 36.140759, 29.809814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195351, 36.225044, 29.804714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190423, 0.906197, 0.377554,
		0.091108, 0.366618, -0.925900,
		-0.977465, 0.210711, -0.012749,
		39.902111, 36.288258, 29.800890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502792, 36.622925, 29.238232>,  <40.586338, 36.140759, 29.809814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502792, 36.622925, 29.238232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227070, 36.630028, 29.527933>,  <40.061638, 36.634289, 29.701754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227070, 36.630028, 29.527933>,  <40.502792, 36.622925, 29.238232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227070, 36.630028, 29.527933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273296, 0.932213, 0.237252,
		-0.670945, 0.361475, -0.647433,
		-0.689306, 0.017758, 0.724253,
		40.020279, 36.635357, 29.745209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124256, 37.269127, 29.281303>,  <40.502792, 36.622925, 29.238232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124256, 37.269127, 29.281303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122929, 37.128433, 29.655741>,  <40.122131, 37.044018, 29.880404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122929, 37.128433, 29.655741>,  <40.124256, 37.269127, 29.281303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122929, 37.128433, 29.655741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235157, 0.909574, 0.342603,
		-0.971952, 0.221265, 0.079697,
		-0.003316, -0.351734, 0.936094,
		40.121933, 37.022911, 29.936569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792110, 37.768848, 29.651756>,  <40.124256, 37.269127, 29.281303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792110, 37.768848, 29.651756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082676, 37.570774, 29.842386>,  <40.257015, 37.451931, 29.956764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082676, 37.570774, 29.842386>,  <39.792110, 37.768848, 29.651756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082676, 37.570774, 29.842386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464404, 0.864838, 0.190748,
		-0.506615, 0.082762, 0.858191,
		0.726409, -0.495183, 0.476575,
		40.300598, 37.422218, 29.985359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674526, 37.977753, 30.299551>,  <39.792110, 37.768848, 29.651756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674526, 37.977753, 30.299551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062710, 37.903088, 30.238405>,  <40.295620, 37.858288, 30.201717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062710, 37.903088, 30.238405>,  <39.674526, 37.977753, 30.299551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062710, 37.903088, 30.238405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240980, 0.718829, 0.652085,
		-0.011841, -0.669657, 0.742576,
		0.970458, -0.186667, -0.152862,
		40.353848, 37.847088, 30.192547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012039, 38.055809, 30.994404>,  <39.674526, 37.977753, 30.299551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012039, 38.055809, 30.994404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266777, 38.153728, 30.701965>,  <40.419621, 38.212482, 30.526503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266777, 38.153728, 30.701965>,  <40.012039, 38.055809, 30.994404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266777, 38.153728, 30.701965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359844, 0.744260, 0.562663,
		0.681864, -0.621410, 0.385891,
		0.636848, 0.244799, -0.731094,
		40.457832, 38.227169, 30.482637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774765, 38.010914, 31.161348>,  <40.012039, 38.055809, 30.994404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774765, 38.010914, 31.161348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676094, 38.291817, 30.894220>,  <40.616894, 38.460358, 30.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676094, 38.291817, 30.894220>,  <40.774765, 38.010914, 31.161348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676094, 38.291817, 30.894220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320921, 0.709429, 0.627472,
		0.914419, -0.059537, -0.400367,
		-0.246673, 0.702258, -0.667822,
		40.602093, 38.502495, 30.693874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243076, 38.657574, 31.316658>,  <40.774765, 38.010914, 31.161348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243076, 38.657574, 31.316658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934525, 38.779537, 31.093227>,  <40.749393, 38.852715, 30.959169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934525, 38.779537, 31.093227>,  <41.243076, 38.657574, 31.316658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934525, 38.779537, 31.093227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007006, 0.881757, 0.471651,
		0.636339, 0.359908, -0.682304,
		-0.771378, 0.304910, -0.558575,
		40.703110, 38.871010, 30.925655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249081, 39.386612, 31.182077>,  <41.243076, 38.657574, 31.316658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249081, 39.386612, 31.182077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556225, 39.555367, 31.374912>,  <41.740509, 39.656620, 31.490614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556225, 39.555367, 31.374912>,  <41.249081, 39.386612, 31.182077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556225, 39.555367, 31.374912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057542, 0.704071, -0.707795,
		-0.638030, 0.571226, 0.516351,
		0.767858, 0.421883, 0.482088,
		41.786583, 39.681931, 31.519539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285172, 40.076141, 30.959295>,  <41.249081, 39.386612, 31.182077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285172, 40.076141, 30.959295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631336, 40.055370, 31.158640>,  <41.839035, 40.042908, 31.278246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631336, 40.055370, 31.158640>,  <41.285172, 40.076141, 30.959295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631336, 40.055370, 31.158640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357484, 0.760909, -0.541500,
		-0.351090, 0.646778, 0.677063,
		0.865413, -0.051924, 0.498361,
		41.890961, 40.039795, 31.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581570, 40.834457, 31.047508>,  <41.285172, 40.076141, 30.959295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581570, 40.834457, 31.047508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873978, 40.562035, 31.064314>,  <42.049423, 40.398582, 31.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873978, 40.562035, 31.064314>,  <41.581570, 40.834457, 31.047508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873978, 40.562035, 31.064314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597241, 0.608850, -0.522116,
		0.330011, 0.406772, 0.851839,
		0.731024, -0.681057, 0.042014,
		42.093285, 40.357719, 31.076918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150887, 41.199413, 30.910170>,  <41.581570, 40.834457, 31.047508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150887, 41.199413, 30.910170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291737, 40.825134, 30.901335>,  <42.376247, 40.600567, 30.896034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291737, 40.825134, 30.901335>,  <42.150887, 41.199413, 30.910170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291737, 40.825134, 30.901335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676773, 0.270843, -0.684559,
		0.646519, 0.226101, 0.728623,
		0.352122, -0.935693, -0.022086,
		42.397373, 40.544426, 30.894709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839748, 41.120152, 31.283859>,  <42.150887, 41.199413, 30.910170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839748, 41.120152, 31.283859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776886, 40.846344, 30.999117>,  <42.739170, 40.682060, 30.828272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776886, 40.846344, 30.999117>,  <42.839748, 41.120152, 31.283859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776886, 40.846344, 30.999117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847120, 0.277076, -0.453449,
		0.507632, -0.674287, 0.536327,
		-0.157151, -0.684519, -0.711855,
		42.729740, 40.640987, 30.785561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492203, 41.449276, 31.901567>,  <42.839748, 41.120152, 31.283859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492203, 41.449276, 31.901567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799004, 41.660542, 31.755829>,  <42.983086, 41.787300, 31.668386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799004, 41.660542, 31.755829>,  <42.492203, 41.449276, 31.901567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799004, 41.660542, 31.755829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473745, -0.083181, 0.876725,
		0.432748, -0.845059, -0.314014,
		0.767004, 0.528163, -0.364346,
		43.029106, 41.818989, 31.646524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298546, 41.168678, 32.085041>,  <42.492203, 41.449276, 31.901567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298546, 41.168678, 32.085041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285080, 41.567596, 32.058929>,  <43.277000, 41.806950, 32.043262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285080, 41.567596, 32.058929>,  <43.298546, 41.168678, 32.085041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285080, 41.567596, 32.058929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177354, 0.070244, 0.981637,
		0.983571, 0.021464, -0.179239,
		-0.033660, 0.997299, -0.065283,
		43.274982, 41.866787, 32.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904549, 41.489765, 32.403835>,  <43.298546, 41.168678, 32.085041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904549, 41.489765, 32.403835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572235, 41.702614, 32.469124>,  <43.372845, 41.830322, 32.508297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572235, 41.702614, 32.469124>,  <43.904549, 41.489765, 32.403835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572235, 41.702614, 32.469124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050290, -0.220285, 0.974138,
		0.554312, 0.817511, 0.156250,
		-0.830788, 0.532119, 0.163219,
		43.322998, 41.862251, 32.518089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950127, 42.270576, 32.762856>,  <43.904549, 41.489765, 32.403835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950127, 42.270576, 32.762856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684860, 41.986961, 32.858757>,  <43.525700, 41.816792, 32.916298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684860, 41.986961, 32.858757>,  <43.950127, 42.270576, 32.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684860, 41.986961, 32.858757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434739, -0.104135, 0.894516,
		-0.609277, 0.697440, 0.377304,
		-0.663162, -0.709037, 0.239757,
		43.485912, 41.774250, 32.930683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706005, 42.359978, 33.481819>,  <43.950127, 42.270576, 32.762856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706005, 42.359978, 33.481819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653992, 41.978092, 33.374779>,  <43.622784, 41.748962, 33.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653992, 41.978092, 33.374779>,  <43.706005, 42.359978, 33.481819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653992, 41.978092, 33.374779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316209, -0.295731, 0.901419,
		-0.939735, 0.032601, 0.340345,
		-0.130038, -0.954715, -0.267600,
		43.614979, 41.691677, 33.294498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545864, 41.979031, 34.087315>,  <43.706005, 42.359978, 33.481819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545864, 41.979031, 34.087315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618881, 41.672523, 33.840893>,  <43.662689, 41.488621, 33.693039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618881, 41.672523, 33.840893>,  <43.545864, 41.979031, 34.087315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618881, 41.672523, 33.840893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285450, -0.558287, 0.778996,
		-0.940849, -0.318049, 0.116821,
		0.182539, -0.766264, -0.616051,
		43.673641, 41.442646, 33.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610207, 41.271996, 34.304504>,  <43.545864, 41.979031, 34.087315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610207, 41.271996, 34.304504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943428, 41.132553, 34.476318>,  <44.143360, 41.048889, 34.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943428, 41.132553, 34.476318>,  <43.610207, 41.271996, 34.304504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943428, 41.132553, 34.476318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131264, 0.878849, 0.458687,
		-0.537396, -0.325728, 0.777886,
		0.833052, -0.348605, 0.429534,
		44.193344, 41.027973, 34.605179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702908, 40.401939, 34.295895>,  <43.610207, 41.271996, 34.304504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702908, 40.401939, 34.295895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374546, 40.426704, 34.522976>,  <43.177528, 40.441563, 34.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374546, 40.426704, 34.522976>,  <43.702908, 40.401939, 34.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374546, 40.426704, 34.522976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142672, 0.940345, -0.308862,
		-0.552961, -0.334541, -0.763097,
		-0.820902, 0.061916, 0.567703,
		43.128277, 40.445278, 34.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949867, 40.082687, 35.013412>,  <43.702908, 40.401939, 34.295895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949867, 40.082687, 35.013412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568558, 40.091408, 35.133945>,  <43.339771, 40.096638, 35.206264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568558, 40.091408, 35.133945>,  <43.949867, 40.082687, 35.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568558, 40.091408, 35.133945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281589, -0.297265, 0.912327,
		0.109461, 0.954546, 0.277236,
		-0.953271, 0.021797, 0.301329,
		43.282578, 40.097946, 35.224342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309483, 40.175144, 35.683750>,  <43.949867, 40.082687, 35.013412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309483, 40.175144, 35.683750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023350, 40.170715, 35.963230>,  <43.851669, 40.168060, 36.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023350, 40.170715, 35.963230>,  <44.309483, 40.175144, 35.683750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023350, 40.170715, 35.963230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340849, 0.867335, 0.362702,
		-0.610022, 0.497602, -0.616656,
		-0.715328, -0.011069, 0.698701,
		43.808750, 40.167393, 36.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952412, 40.902275, 35.725964>,  <44.309483, 40.175144, 35.683750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952412, 40.902275, 35.725964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920189, 40.716278, 36.078621>,  <43.900856, 40.604679, 36.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920189, 40.716278, 36.078621>,  <43.952412, 40.902275, 35.725964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920189, 40.716278, 36.078621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124735, 0.872863, 0.471754,
		-0.988914, 0.147975, -0.012314,
		-0.080556, -0.464988, 0.881644,
		43.896023, 40.576782, 36.343113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391384, 41.226570, 36.147697>,  <43.952412, 40.902275, 35.725964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391384, 41.226570, 36.147697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694828, 41.076096, 36.360485>,  <43.876896, 40.985809, 36.488159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694828, 41.076096, 36.360485>,  <43.391384, 41.226570, 36.147697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694828, 41.076096, 36.360485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112087, 0.879654, 0.462218,
		-0.641831, -0.291016, 0.709480,
		0.758610, -0.376189, 0.531970,
		43.922413, 40.963238, 36.520077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192444, 41.156006, 36.878014>,  <43.391384, 41.226570, 36.147697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192444, 41.156006, 36.878014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584885, 41.224579, 36.842113>,  <43.820347, 41.265724, 36.820572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584885, 41.224579, 36.842113>,  <43.192444, 41.156006, 36.878014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584885, 41.224579, 36.842113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068315, 0.740803, 0.668240,
		0.181051, -0.649478, 0.738512,
		0.981098, 0.171437, -0.089754,
		43.879215, 41.276009, 36.815186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204205, 41.347836, 37.552029>,  <43.192444, 41.156006, 36.878014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204205, 41.347836, 37.552029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490215, 41.481323, 37.306305>,  <43.661823, 41.561417, 37.158871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490215, 41.481323, 37.306305>,  <43.204205, 41.347836, 37.552029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490215, 41.481323, 37.306305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073786, 0.837780, 0.540999,
		0.695193, -0.432156, 0.574412,
		0.715026, 0.333715, -0.614306,
		43.704723, 41.581436, 37.122013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708515, 41.576176, 37.996181>,  <43.204205, 41.347836, 37.552029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708515, 41.576176, 37.996181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799129, 41.742416, 37.643829>,  <43.853500, 41.842159, 37.432419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799129, 41.742416, 37.643829>,  <43.708515, 41.576176, 37.996181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799129, 41.742416, 37.643829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283949, 0.836930, 0.467890,
		0.931694, -0.356121, 0.071588,
		0.226540, 0.415602, -0.880883,
		43.867092, 41.867096, 37.379566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515476, 41.401459, 38.685421>,  <43.708515, 41.576176, 37.996181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515476, 41.401459, 38.685421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769924, 41.092957, 38.676338>,  <43.922592, 40.907856, 38.670887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769924, 41.092957, 38.676338>,  <43.515476, 41.401459, 38.685421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769924, 41.092957, 38.676338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546154, -0.470858, 0.692826,
		-0.545040, -0.428317, -0.720747,
		0.636119, -0.771257, -0.022709,
		43.960762, 40.861580, 38.669525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154785, 40.739120, 38.881031>,  <43.515476, 41.401459, 38.685421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154785, 40.739120, 38.881031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542553, 40.663078, 38.943115>,  <43.775211, 40.617451, 38.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542553, 40.663078, 38.943115>,  <43.154785, 40.739120, 38.881031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542553, 40.663078, 38.943115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238140, -0.575719, 0.782200,
		-0.059342, -0.795240, -0.603384,
		0.969416, -0.190107, 0.155214,
		43.833378, 40.606045, 38.989677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913631, 41.143681, 39.480225>,  <43.154785, 40.739120, 38.881031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913631, 41.143681, 39.480225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930187, 40.745907, 39.441486>,  <42.940121, 40.507240, 39.418243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930187, 40.745907, 39.441486>,  <42.913631, 41.143681, 39.480225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930187, 40.745907, 39.441486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987487, -0.055476, 0.147617,
		-0.152169, 0.089526, -0.984291,
		0.041389, -0.994438, -0.096848,
		42.942604, 40.447575, 39.412434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454147, 40.481998, 39.675938>,  <42.913631, 41.143681, 39.480225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454147, 40.481998, 39.675938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164066, 40.287090, 39.481350>,  <41.990017, 40.170147, 39.364597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164066, 40.287090, 39.481350>,  <42.454147, 40.481998, 39.675938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164066, 40.287090, 39.481350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167804, -0.810301, 0.561475,
		-0.667773, 0.325553, 0.669399,
		-0.725204, -0.487266, -0.486468,
		41.946507, 40.140911, 39.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303165, 39.952393, 40.122086>,  <42.454147, 40.481998, 39.675938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303165, 39.952393, 40.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075954, 39.832447, 39.815510>,  <41.939629, 39.760479, 39.631565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075954, 39.832447, 39.815510>,  <42.303165, 39.952393, 40.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075954, 39.832447, 39.815510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043687, -0.940934, 0.335761,
		-0.821851, 0.157238, 0.547575,
		-0.568026, -0.299867, -0.766438,
		41.905548, 39.742489, 39.585579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151318, 40.103374, 40.845562>,  <42.303165, 39.952393, 40.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151318, 40.103374, 40.845562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518589, 40.188824, 40.712109>,  <42.738953, 40.240093, 40.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518589, 40.188824, 40.712109>,  <42.151318, 40.103374, 40.845562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518589, 40.188824, 40.712109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140219, 0.612406, 0.778008,
		0.370524, -0.761132, 0.532343,
		0.918178, 0.213626, -0.333637,
		42.794041, 40.252911, 40.612019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749104, 39.844082, 41.273914>,  <42.151318, 40.103374, 40.845562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749104, 39.844082, 41.273914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901772, 40.167423, 41.094627>,  <42.993374, 40.361427, 40.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901772, 40.167423, 41.094627>,  <42.749104, 39.844082, 41.273914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901772, 40.167423, 41.094627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405952, 0.289050, 0.866979,
		0.830381, -0.512853, -0.217830,
		0.381669, 0.808351, -0.448216,
		43.016273, 40.409927, 40.960163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508820, 39.805420, 41.220413>,  <42.749104, 39.844082, 41.273914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508820, 39.805420, 41.220413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381618, 40.184650, 41.218105>,  <43.305298, 40.412189, 41.216721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381618, 40.184650, 41.218105>,  <43.508820, 39.805420, 41.220413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381618, 40.184650, 41.218105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497583, 0.172073, 0.850178,
		0.807022, 0.267490, -0.526464,
		-0.318004, 0.948072, -0.005769,
		43.286217, 40.469070, 41.216373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049892, 39.948799, 41.604286>,  <43.508820, 39.805420, 41.220413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049892, 39.948799, 41.604286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816448, 40.272301, 41.575130>,  <43.676380, 40.466400, 41.557636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816448, 40.272301, 41.575130>,  <44.049892, 39.948799, 41.604286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816448, 40.272301, 41.575130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382529, 0.352991, 0.853855,
		0.716288, 0.470439, -0.515382,
		-0.583612, 0.808755, -0.072886,
		43.641365, 40.514927, 41.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380558, 40.514591, 41.964828>,  <44.049892, 39.948799, 41.604286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380558, 40.514591, 41.964828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983448, 40.560848, 41.977631>,  <43.745182, 40.588600, 41.985313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983448, 40.560848, 41.977631>,  <44.380558, 40.514591, 41.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983448, 40.560848, 41.977631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081441, 0.453518, 0.887519,
		0.088114, 0.883714, -0.459659,
		-0.992776, 0.115638, 0.032009,
		43.685616, 40.595539, 41.987232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976875, 39.894833, 41.748230>,  <44.380558, 40.514591, 41.964828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976875, 39.894833, 41.748230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966358, 40.220402, 41.516075>,  <44.960049, 40.415741, 41.376781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966358, 40.220402, 41.516075>,  <44.976875, 39.894833, 41.748230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966358, 40.220402, 41.516075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875046, -0.261968, -0.407023,
		-0.483325, -0.518564, -0.705328,
		-0.026293, 0.813919, -0.580383,
		44.958469, 40.464577, 41.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066860, 39.673298, 41.044205>,  <44.976875, 39.894833, 41.748230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066860, 39.673298, 41.044205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217369, 40.043083, 41.068794>,  <45.307674, 40.264954, 41.083549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217369, 40.043083, 41.068794>,  <45.066860, 39.673298, 41.044205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217369, 40.043083, 41.068794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788650, -0.284762, -0.544923,
		-0.486258, 0.253523, -0.836230,
		0.376277, 0.924466, 0.061473,
		45.330254, 40.320423, 41.087234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125870, 39.966621, 40.387428>,  <45.066860, 39.673298, 41.044205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125870, 39.966621, 40.387428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429363, 40.108456, 40.606003>,  <45.611458, 40.193558, 40.737148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429363, 40.108456, 40.606003>,  <45.125870, 39.966621, 40.387428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429363, 40.108456, 40.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651095, -0.387112, -0.652855,
		-0.019961, 0.851125, -0.524584,
		0.758733, 0.354585, 0.546436,
		45.656982, 40.214832, 40.769936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328434, 40.383244, 39.818890>,  <45.125870, 39.966621, 40.387428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328434, 40.383244, 39.818890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044846, 40.388138, 39.536835>,  <44.874695, 40.391075, 39.367603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044846, 40.388138, 39.536835>,  <45.328434, 40.383244, 39.818890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044846, 40.388138, 39.536835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407711, -0.822940, 0.395654,
		-0.575443, 0.567997, 0.588426,
		-0.708969, 0.012231, -0.705134,
		44.832153, 40.391808, 39.325294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576614, 40.335846, 40.083752>,  <45.328434, 40.383244, 39.818890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576614, 40.335846, 40.083752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617672, 40.174747, 39.719936>,  <44.642307, 40.078087, 39.501648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617672, 40.174747, 39.719936>,  <44.576614, 40.335846, 40.083752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617672, 40.174747, 39.719936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401209, -0.853454, 0.332638,
		-0.910217, 0.330769, -0.249193,
		0.102648, -0.402751, -0.909536,
		44.648468, 40.053921, 39.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938328, 40.021233, 39.850418>,  <44.576614, 40.335846, 40.083752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938328, 40.021233, 39.850418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261539, 39.837379, 39.702999>,  <44.455467, 39.727066, 39.614548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261539, 39.837379, 39.702999>,  <43.938328, 40.021233, 39.850418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261539, 39.837379, 39.702999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342249, -0.875398, 0.341385,
		-0.479537, -0.149714, -0.864656,
		0.808028, -0.459634, -0.368546,
		44.503948, 39.699490, 39.592434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728889, 39.453003, 39.295582>,  <43.938328, 40.021233, 39.850418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728889, 39.453003, 39.295582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072491, 39.373093, 39.484131>,  <44.278652, 39.325146, 39.597260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072491, 39.373093, 39.484131>,  <43.728889, 39.453003, 39.295582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072491, 39.373093, 39.484131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288173, -0.949691, 0.122650,
		0.423159, -0.241195, -0.873362,
		0.859007, -0.199779, 0.471377,
		44.330193, 39.313160, 39.625546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937046, 38.821259, 39.116135>,  <43.728889, 39.453003, 39.295582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937046, 38.821259, 39.116135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078526, 38.905487, 39.480675>,  <44.163414, 38.956024, 39.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078526, 38.905487, 39.480675>,  <43.937046, 38.821259, 39.116135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078526, 38.905487, 39.480675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249972, -0.917612, 0.309035,
		0.901338, -0.337117, -0.271921,
		0.353699, 0.210573, 0.911348,
		44.184635, 38.968658, 39.754078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538715, 38.327309, 39.264320>,  <43.937046, 38.821259, 39.116135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538715, 38.327309, 39.264320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286346, 38.474670, 39.537441>,  <44.134926, 38.563087, 39.701313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286346, 38.474670, 39.537441>,  <44.538715, 38.327309, 39.264320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286346, 38.474670, 39.537441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361961, -0.918194, 0.160949,
		0.686238, -0.145601, 0.712656,
		-0.630922, 0.368403, 0.682801,
		44.097069, 38.585190, 39.742283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293324, 37.554173, 39.450325>,  <44.538715, 38.327309, 39.264320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293324, 37.554173, 39.450325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098736, 37.601307, 39.104038>,  <43.981983, 37.629589, 38.896267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098736, 37.601307, 39.104038>,  <44.293324, 37.554173, 39.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098736, 37.601307, 39.104038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856525, -0.259804, 0.445946,
		-0.172367, 0.958445, 0.227316,
		-0.486472, 0.117835, -0.865713,
		43.952793, 37.636658, 38.844326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707222, 38.065083, 39.508167>,  <44.293324, 37.554173, 39.450325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707222, 38.065083, 39.508167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638321, 37.777157, 39.239185>,  <43.596981, 37.604401, 39.077797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638321, 37.777157, 39.239185>,  <43.707222, 38.065083, 39.508167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638321, 37.777157, 39.239185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714842, -0.378343, 0.588097,
		-0.677738, 0.582005, -0.449379,
		-0.172256, -0.719811, -0.672459,
		43.586643, 37.561214, 39.037449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072178, 37.676682, 39.193607>,  <43.707222, 38.065083, 39.508167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072178, 37.676682, 39.193607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098495, 37.685505, 39.592644>,  <43.114285, 37.690800, 39.832066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098495, 37.685505, 39.592644>,  <43.072178, 37.676682, 39.193607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098495, 37.685505, 39.592644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432577, 0.900295, -0.048441,
		-0.899193, 0.434721, 0.049691,
		0.065795, 0.022063, 0.997589,
		43.118233, 37.692123, 39.891922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737324, 37.924805, 38.508701>,  <43.072178, 37.676682, 39.193607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737324, 37.924805, 38.508701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360630, 38.037891, 38.581585>,  <42.134613, 38.105743, 38.625317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360630, 38.037891, 38.581585>,  <42.737324, 37.924805, 38.508701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360630, 38.037891, 38.581585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079570, 0.339099, -0.937380,
		-0.326802, -0.897264, -0.296846,
		-0.941737, 0.282718, 0.182213,
		42.078110, 38.122707, 38.636250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182316, 37.698502, 37.935780>,  <42.737324, 37.924805, 38.508701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182316, 37.698502, 37.935780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076591, 38.028053, 38.136326>,  <42.013157, 38.225784, 38.256653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076591, 38.028053, 38.136326>,  <42.182316, 37.698502, 37.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076591, 38.028053, 38.136326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243175, 0.446123, -0.861302,
		-0.933276, -0.349572, 0.082430,
		-0.264313, 0.823877, 0.501363,
		41.997299, 38.275215, 38.286736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740788, 37.292969, 37.779892>,  <42.182316, 37.698502, 37.935780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740788, 37.292969, 37.779892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744583, 37.687180, 37.712200>,  <42.746861, 37.923706, 37.671585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744583, 37.687180, 37.712200>,  <42.740788, 37.292969, 37.779892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744583, 37.687180, 37.712200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623248, -0.138173, -0.769721,
		-0.781967, -0.098173, -0.615541,
		0.009485, 0.985530, -0.169233,
		42.747429, 37.982838, 37.661430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542656, 37.488010, 36.993221>,  <42.740788, 37.292969, 37.779892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542656, 37.488010, 36.993221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799648, 37.707993, 37.206676>,  <42.953842, 37.839981, 37.334747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799648, 37.707993, 37.206676>,  <42.542656, 37.488010, 36.993221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799648, 37.707993, 37.206676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673237, -0.072475, -0.735866,
		-0.366021, 0.832041, -0.416817,
		0.642480, 0.549959, 0.533634,
		42.992393, 37.872982, 37.366768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760536, 38.188984, 36.545326>,  <42.542656, 37.488010, 36.993221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760536, 38.188984, 36.545326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003803, 38.010155, 36.807701>,  <43.149761, 37.902855, 36.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003803, 38.010155, 36.807701>,  <42.760536, 38.188984, 36.545326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003803, 38.010155, 36.807701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644075, -0.205099, -0.736954,
		0.464009, 0.870664, 0.163217,
		0.608164, -0.447077, 0.655941,
		43.186253, 37.876030, 37.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467896, 38.448727, 36.594021>,  <42.760536, 38.188984, 36.545326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467896, 38.448727, 36.594021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466942, 38.058678, 36.682682>,  <43.466370, 37.824650, 36.735878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466942, 38.058678, 36.682682>,  <43.467896, 38.448727, 36.594021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466942, 38.058678, 36.682682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761877, -0.145339, -0.631205,
		0.647717, 0.167365, 0.743271,
		-0.002385, -0.975123, 0.221650,
		43.466225, 37.766140, 36.749176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199833, 38.122593, 36.794716>,  <43.467896, 38.448727, 36.594021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199833, 38.122593, 36.794716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934879, 37.869144, 36.634830>,  <43.775909, 37.717075, 36.538898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934879, 37.869144, 36.634830>,  <44.199833, 38.122593, 36.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934879, 37.869144, 36.634830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731111, -0.430285, -0.529463,
		0.163489, -0.642943, 0.748262,
		-0.662380, -0.633624, -0.399716,
		43.736164, 37.679058, 36.514915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472313, 37.346050, 36.813587>,  <44.199833, 38.122593, 36.794716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472313, 37.346050, 36.813587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209900, 37.452007, 36.530899>,  <44.052452, 37.515583, 36.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209900, 37.452007, 36.530899>,  <44.472313, 37.346050, 36.813587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209900, 37.452007, 36.530899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583074, -0.416668, -0.697433,
		-0.479212, -0.869609, 0.118896,
		-0.656034, 0.264893, -0.706718,
		44.013088, 37.531475, 36.318882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148594, 37.195820, 36.698254>,  <44.472313, 37.346050, 36.813587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148594, 37.195820, 36.698254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038998, 36.877357, 36.482452>,  <44.973240, 36.686279, 36.352970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038998, 36.877357, 36.482452>,  <45.148594, 37.195820, 36.698254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038998, 36.877357, 36.482452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515644, -0.351915, 0.781196,
		-0.811812, 0.492236, -0.314109,
		-0.273993, -0.796153, -0.539507,
		44.956799, 36.638512, 36.320599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273808, 37.171288, 35.913715>,  <45.148594, 37.195820, 36.698254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273808, 37.171288, 35.913715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334858, 37.254787, 35.527321>,  <45.371490, 37.304886, 35.295483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334858, 37.254787, 35.527321>,  <45.273808, 37.171288, 35.913715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334858, 37.254787, 35.527321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690888, -0.721449, -0.046740,
		-0.706667, -0.660254, -0.254335,
		0.152630, 0.208746, -0.965986,
		45.380646, 37.317410, 35.237526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176304, 36.607655, 35.572613>,  <45.273808, 37.171288, 35.913715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176304, 36.607655, 35.572613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420181, 36.806095, 35.325336>,  <45.566505, 36.925159, 35.176971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420181, 36.806095, 35.325336>,  <45.176304, 36.607655, 35.572613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420181, 36.806095, 35.325336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675253, -0.733523, 0.077312,
		-0.415104, -0.464573, -0.782215,
		0.609690, 0.496100, -0.618193,
		45.603088, 36.954926, 35.139877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560574, 36.075275, 35.027531>,  <45.176304, 36.607655, 35.572613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560574, 36.075275, 35.027531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762657, 36.401390, 35.140720>,  <45.883907, 36.597057, 35.208633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762657, 36.401390, 35.140720>,  <45.560574, 36.075275, 35.027531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762657, 36.401390, 35.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660833, -0.576356, 0.480742,
		0.555037, -0.055874, -0.829947,
		0.505206, 0.815287, 0.282975,
		45.914219, 36.645977, 35.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748920, 35.251842, 35.257679>,  <45.560574, 36.075275, 35.027531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748920, 35.251842, 35.257679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031448, 35.238144, 35.540504>,  <46.200966, 35.229923, 35.710201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031448, 35.238144, 35.540504>,  <45.748920, 35.251842, 35.257679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031448, 35.238144, 35.540504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707573, 0.064239, -0.703715,
		-0.021320, 0.997347, 0.069606,
		0.706319, -0.034248, 0.707065,
		46.243343, 35.227871, 35.752625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245533, 35.738892, 35.159115>,  <45.748920, 35.251842, 35.257679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245533, 35.738892, 35.159115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444096, 35.459297, 35.365028>,  <46.563232, 35.291542, 35.488579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444096, 35.459297, 35.365028>,  <46.245533, 35.738892, 35.159115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444096, 35.459297, 35.365028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733387, 0.020396, -0.679505,
		0.464462, 0.714849, 0.522749,
		0.496405, -0.698982, 0.514788,
		46.593018, 35.249603, 35.519466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.985634, 35.950775, 35.323784>,  <46.245533, 35.738892, 35.159115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.985634, 35.950775, 35.323784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931782, 35.558834, 35.264771>,  <46.899471, 35.323669, 35.229362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931782, 35.558834, 35.264771>,  <46.985634, 35.950775, 35.323784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931782, 35.558834, 35.264771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704829, 0.009955, -0.709307,
		0.696484, -0.199483, 0.689287,
		-0.134632, -0.979851, -0.147535,
		46.891392, 35.264877, 35.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638531, 35.562946, 35.275349>,  <46.985634, 35.950775, 35.323784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638531, 35.562946, 35.275349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357479, 35.350376, 35.086079>,  <47.188847, 35.222832, 34.972515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357479, 35.350376, 35.086079>,  <47.638531, 35.562946, 35.275349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.357479, 35.350376, 35.086079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664336, -0.251732, -0.703768,
		0.254889, -0.808836, 0.529922,
		-0.702631, -0.531428, -0.473175,
		47.146690, 35.190948, 34.944126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902451, 34.890884, 35.220493>,  <47.638531, 35.562946, 35.275349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902451, 34.890884, 35.220493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652878, 35.045071, 34.948574>,  <47.503136, 35.137581, 34.785423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652878, 35.045071, 34.948574>,  <47.902451, 34.890884, 35.220493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652878, 35.045071, 34.948574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686751, -0.144687, -0.712348,
		-0.372944, -0.911308, -0.174444,
		-0.623928, 0.385465, -0.679802,
		47.465698, 35.160709, 34.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.495838, 30.078993, 38.056080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329666, 30.357264, 38.290501>,  <39.229965, 30.524225, 38.431152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329666, 30.357264, 38.290501>,  <39.495838, 30.078993, 38.056080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329666, 30.357264, 38.290501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430317, 0.717924, -0.547185,
		-0.801403, 0.024871, -0.597607,
		-0.415428, 0.695676, 0.586050,
		39.205036, 30.565966, 38.466316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190716, 30.466732, 37.622704>,  <39.495838, 30.078993, 38.056080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190716, 30.466732, 37.622704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251926, 30.707012, 37.936581>,  <39.288651, 30.851179, 38.124908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251926, 30.707012, 37.936581>,  <39.190716, 30.466732, 37.622704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251926, 30.707012, 37.936581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415804, 0.681199, -0.602557,
		-0.896488, 0.418483, -0.145535,
		0.153022, 0.600699, 0.784694,
		39.297832, 30.887222, 38.171989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060448, 31.041859, 37.422886>,  <39.190716, 30.466732, 37.622704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060448, 31.041859, 37.422886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273968, 31.142124, 37.745930>,  <39.402081, 31.202284, 37.939754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273968, 31.142124, 37.745930>,  <39.060448, 31.041859, 37.422886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273968, 31.142124, 37.745930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574180, 0.593693, -0.563779,
		-0.620788, 0.764655, 0.172987,
		0.533798, 0.250662, 0.807607,
		39.434109, 31.217323, 37.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002670, 31.791063, 37.491177>,  <39.060448, 31.041859, 37.422886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002670, 31.791063, 37.491177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331127, 31.660690, 37.678577>,  <39.528202, 31.582466, 37.791016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331127, 31.660690, 37.678577>,  <39.002670, 31.791063, 37.491177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331127, 31.660690, 37.678577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567570, 0.552495, -0.610421,
		-0.059888, 0.767149, 0.638667,
		0.821144, -0.325931, 0.468499,
		39.577469, 31.562910, 37.819126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409073, 32.340256, 37.646011>,  <39.002670, 31.791063, 37.491177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409073, 32.340256, 37.646011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657642, 32.027145, 37.659294>,  <39.806782, 31.839279, 37.667263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657642, 32.027145, 37.659294>,  <39.409073, 32.340256, 37.646011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657642, 32.027145, 37.659294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656534, 0.497137, -0.567291,
		0.427553, 0.374326, 0.822848,
		0.621420, -0.782774, 0.033205,
		39.844067, 31.792313, 37.669254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023911, 32.725513, 37.805695>,  <39.409073, 32.340256, 37.646011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023911, 32.725513, 37.805695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129143, 32.364342, 37.669746>,  <40.192280, 32.147640, 37.588177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129143, 32.364342, 37.669746>,  <40.023911, 32.725513, 37.805695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129143, 32.364342, 37.669746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471729, 0.427686, -0.771075,
		0.841583, 0.042524, 0.538451,
		0.263077, -0.902927, -0.339873,
		40.208065, 32.093464, 37.567783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711784, 32.761810, 37.680172>,  <40.023911, 32.725513, 37.805695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711784, 32.761810, 37.680172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.619495, 32.440578, 37.460419>,  <40.564121, 32.247837, 37.328568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.619495, 32.440578, 37.460419>,  <40.711784, 32.761810, 37.680172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619495, 32.440578, 37.460419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546323, 0.360302, -0.756118,
		0.805171, -0.474594, 0.355613,
		-0.230720, -0.803083, -0.549386,
		40.550278, 32.199654, 37.295601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382812, 32.480831, 37.343502>,  <40.711784, 32.761810, 37.680172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382812, 32.480831, 37.343502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098869, 32.311947, 37.117992>,  <40.928505, 32.210617, 36.982689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098869, 32.311947, 37.117992>,  <41.382812, 32.480831, 37.343502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098869, 32.311947, 37.117992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478841, 0.297710, -0.825881,
		0.516539, -0.856215, -0.009158,
		-0.709858, -0.422215, -0.563770,
		40.885910, 32.185284, 36.948860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716118, 32.131077, 36.776333>,  <41.382812, 32.480831, 37.343502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716118, 32.131077, 36.776333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.346851, 32.206013, 36.642075>,  <41.125290, 32.250977, 36.561520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.346851, 32.206013, 36.642075>,  <41.716118, 32.131077, 36.776333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346851, 32.206013, 36.642075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384133, 0.417544, -0.823467,
		-0.014121, -0.889134, -0.457428,
		-0.923170, 0.187342, -0.335650,
		41.069901, 32.262215, 36.541378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679371, 31.897326, 36.119999>,  <41.716118, 32.131077, 36.776333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679371, 31.897326, 36.119999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.362354, 32.140781, 36.135155>,  <41.172142, 32.286854, 36.144249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.362354, 32.140781, 36.135155>,  <41.679371, 31.897326, 36.119999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362354, 32.140781, 36.135155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256143, 0.388636, -0.885072,
		-0.553413, -0.691753, -0.463909,
		-0.792543, 0.608638, 0.037889,
		41.124592, 32.323372, 36.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344322, 31.824087, 35.500847>,  <41.679371, 31.897326, 36.119999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344322, 31.824087, 35.500847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.240253, 32.180038, 35.650742>,  <41.177814, 32.393608, 35.740681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.240253, 32.180038, 35.650742>,  <41.344322, 31.824087, 35.500847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240253, 32.180038, 35.650742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314537, 0.445044, -0.838452,
		-0.912896, -0.100268, -0.395686,
		-0.260168, 0.889877, 0.374741,
		41.162205, 32.447002, 35.763165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860477, 32.242359, 35.100674>,  <41.344322, 31.824087, 35.500847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860477, 32.242359, 35.100674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069092, 32.523552, 35.294094>,  <41.194260, 32.692268, 35.410145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069092, 32.523552, 35.294094>,  <40.860477, 32.242359, 35.100674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069092, 32.523552, 35.294094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099927, 0.512505, -0.852850,
		-0.847356, 0.493113, 0.197045,
		0.521538, 0.702978, 0.483549,
		41.225552, 32.734444, 35.439159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763565, 32.774910, 34.716816>,  <40.860477, 32.242359, 35.100674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763565, 32.774910, 34.716816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050159, 32.923210, 34.953182>,  <41.222118, 33.012192, 35.095001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050159, 32.923210, 34.953182>,  <40.763565, 32.774910, 34.716816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050159, 32.923210, 34.953182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279864, 0.623155, -0.730311,
		-0.638997, 0.688638, 0.342725,
		0.716490, 0.370751, 0.590919,
		41.265106, 33.034435, 35.130459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726746, 33.649368, 34.795593>,  <40.763565, 32.774910, 34.716816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726746, 33.649368, 34.795593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.084709, 33.489601, 34.875202>,  <41.299488, 33.393742, 34.922966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.084709, 33.489601, 34.875202>,  <40.726746, 33.649368, 34.795593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084709, 33.489601, 34.875202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437255, 0.695688, -0.569936,
		0.089188, 0.597061, 0.797223,
		0.894904, -0.399421, 0.199021,
		41.353180, 33.369774, 34.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211575, 34.200214, 34.997074>,  <40.726746, 33.649368, 34.795593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211575, 34.200214, 34.997074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442577, 33.898201, 34.872868>,  <41.581177, 33.716991, 34.798344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442577, 33.898201, 34.872868>,  <41.211575, 34.200214, 34.997074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442577, 33.898201, 34.872868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533156, 0.636840, -0.556937,
		0.618252, 0.156081, 0.770327,
		0.577502, -0.755032, -0.310512,
		41.615829, 33.671692, 34.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832058, 34.530621, 34.875809>,  <41.211575, 34.200214, 34.997074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832058, 34.530621, 34.875809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.905407, 34.191307, 34.677101>,  <41.949417, 33.987717, 34.557877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.905407, 34.191307, 34.677101>,  <41.832058, 34.530621, 34.875809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905407, 34.191307, 34.677101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593892, 0.498292, -0.631662,
		0.783369, -0.179198, 0.595165,
		0.183374, -0.848288, -0.496771,
		41.960419, 33.936821, 34.528069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636253, 34.550434, 34.778099>,  <41.832058, 34.530621, 34.875809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636253, 34.550434, 34.778099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.477787, 34.283749, 34.525578>,  <42.382710, 34.123737, 34.374065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.477787, 34.283749, 34.525578>,  <42.636253, 34.550434, 34.778099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477787, 34.283749, 34.525578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571172, 0.359389, -0.737972,
		0.718901, -0.652940, 0.238433,
		-0.396161, -0.666715, -0.631306,
		42.358940, 34.083733, 34.336185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186760, 34.341312, 34.237476>,  <42.636253, 34.550434, 34.778099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186760, 34.341312, 34.237476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.831131, 34.239368, 34.085377>,  <42.617752, 34.178200, 33.994118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.831131, 34.239368, 34.085377>,  <43.186760, 34.341312, 34.237476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831131, 34.239368, 34.085377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312999, 0.267679, -0.911252,
		0.334031, -0.929189, -0.158214,
		-0.889076, -0.254865, -0.380248,
		42.564407, 34.162910, 33.971302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345829, 34.026123, 33.592556>,  <43.186760, 34.341312, 34.237476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345829, 34.026123, 33.592556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.957912, 34.116238, 33.555122>,  <42.725163, 34.170307, 33.532661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.957912, 34.116238, 33.555122>,  <43.345829, 34.026123, 33.592556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957912, 34.116238, 33.555122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138672, 0.193461, -0.971258,
		-0.200707, -0.954892, -0.218857,
		-0.969787, 0.225287, -0.093588,
		42.666977, 34.183823, 33.527046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142162, 33.694065, 32.997978>,  <43.345829, 34.026123, 33.592556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142162, 33.694065, 32.997978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.876797, 33.986938, 33.059669>,  <42.717579, 34.162663, 33.096684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.876797, 33.986938, 33.059669>,  <43.142162, 33.694065, 32.997978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876797, 33.986938, 33.059669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083792, 0.132121, -0.987686,
		-0.743546, -0.668168, -0.026300,
		-0.663414, 0.732186, 0.154226,
		42.677773, 34.206593, 33.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640259, 33.630238, 32.438412>,  <43.142162, 33.694065, 32.997978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640259, 33.630238, 32.438412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645439, 34.006454, 32.574181>,  <42.648548, 34.232185, 32.655640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.645439, 34.006454, 32.574181>,  <42.640259, 33.630238, 32.438412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645439, 34.006454, 32.574181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004255, 0.339496, -0.940598,
		-0.999907, 0.010738, 0.008399,
		0.012951, 0.940546, 0.339419,
		42.649326, 34.288620, 32.676006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238506, 34.055771, 32.002151>,  <42.640259, 33.630238, 32.438412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238506, 34.055771, 32.002151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.458786, 34.332344, 32.189194>,  <42.590954, 34.498287, 32.301418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.458786, 34.332344, 32.189194>,  <42.238506, 34.055771, 32.002151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458786, 34.332344, 32.189194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018400, 0.570118, -0.821357,
		-0.834504, 0.443713, 0.326683,
		0.550695, 0.691437, 0.467601,
		42.623993, 34.539776, 32.329475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212818, 34.116314, 31.148840>,  <42.238506, 34.055771, 32.002151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212818, 34.116314, 31.148840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163712, 33.836269, 30.867479>,  <42.134247, 33.668243, 30.698664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.163712, 33.836269, 30.867479>,  <42.212818, 34.116314, 31.148840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163712, 33.836269, 30.867479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556071, -0.538529, 0.633065,
		-0.822018, 0.468861, -0.323196,
		-0.122769, -0.700111, -0.703401,
		42.126881, 33.626236, 30.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479919, 33.991428, 31.136570>,  <42.212818, 34.116314, 31.148840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479919, 33.991428, 31.136570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651947, 33.670731, 30.970562>,  <41.755165, 33.478313, 30.870958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651947, 33.670731, 30.970562>,  <41.479919, 33.991428, 31.136570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651947, 33.670731, 30.970562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551258, -0.597269, 0.582568,
		-0.714950, -0.021763, -0.698837,
		0.430072, -0.801746, -0.415020,
		41.780968, 33.430206, 30.846056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962299, 33.511192, 30.804344>,  <41.479919, 33.991428, 31.136570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962299, 33.511192, 30.804344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288372, 33.294266, 30.885708>,  <41.484016, 33.164112, 30.934526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.288372, 33.294266, 30.885708>,  <40.962299, 33.511192, 30.804344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288372, 33.294266, 30.885708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569030, -0.684314, 0.455982,
		-0.108090, -0.487454, -0.866433,
		0.815182, -0.542313, 0.203408,
		41.532928, 33.131573, 30.946730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783661, 32.812500, 30.777060>,  <40.962299, 33.511192, 30.804344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783661, 32.812500, 30.777060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123901, 32.750961, 30.978176>,  <41.328045, 32.714039, 31.098846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123901, 32.750961, 30.978176>,  <40.783661, 32.812500, 30.777060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123901, 32.750961, 30.978176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439502, -0.732946, 0.519257,
		0.288631, -0.662661, -0.691066,
		0.850605, -0.153851, 0.502792,
		41.379082, 32.704807, 31.129013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977116, 32.050274, 30.715200>,  <40.783661, 32.812500, 30.777060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977116, 32.050274, 30.715200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.159241, 32.192116, 31.041868>,  <41.268517, 32.277222, 31.237869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.159241, 32.192116, 31.041868>,  <40.977116, 32.050274, 30.715200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159241, 32.192116, 31.041868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303563, -0.800472, 0.516811,
		0.836985, -0.483220, -0.256818,
		0.455309, 0.354603, 0.816671,
		41.295834, 32.298496, 31.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417721, 31.474779, 31.080173>,  <40.977116, 32.050274, 30.715200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417721, 31.474779, 31.080173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379017, 31.750460, 31.367405>,  <41.355793, 31.915867, 31.539743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379017, 31.750460, 31.367405>,  <41.417721, 31.474779, 31.080173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379017, 31.750460, 31.367405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294919, -0.708921, 0.640667,
		0.950610, -0.149783, 0.271856,
		-0.096764, 0.689200, 0.718081,
		41.349987, 31.957220, 31.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690628, 31.192053, 31.683168>,  <41.417721, 31.474779, 31.080173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690628, 31.192053, 31.683168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.474609, 31.490746, 31.838470>,  <41.344997, 31.669962, 31.931652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.474609, 31.490746, 31.838470>,  <41.690628, 31.192053, 31.683168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474609, 31.490746, 31.838470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255555, -0.585020, 0.769703,
		0.801899, 0.316455, 0.506769,
		-0.540046, 0.746731, 0.388255,
		41.312595, 31.714766, 31.954947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896397, 31.155960, 32.406487>,  <41.690628, 31.192053, 31.683168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896397, 31.155960, 32.406487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.555077, 31.364452, 32.412186>,  <41.350285, 31.489548, 32.415604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.555077, 31.364452, 32.412186>,  <41.896397, 31.155960, 32.406487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555077, 31.364452, 32.412186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212808, -0.373063, 0.903071,
		0.476020, 0.767558, 0.429255,
		-0.853298, 0.521229, 0.014243,
		41.299088, 31.520821, 32.416458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842949, 31.442839, 33.100487>,  <41.896397, 31.155960, 32.406487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842949, 31.442839, 33.100487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.474136, 31.429966, 32.946175>,  <41.252850, 31.422243, 32.853588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.474136, 31.429966, 32.946175>,  <41.842949, 31.442839, 33.100487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474136, 31.429966, 32.946175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341440, -0.401994, 0.849599,
		-0.182422, 0.915076, 0.359663,
		-0.922031, -0.032182, -0.385776,
		41.197529, 31.420311, 32.830441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342003, 31.684782, 33.619381>,  <41.842949, 31.442839, 33.100487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342003, 31.684782, 33.619381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.109238, 31.510210, 33.344891>,  <40.969578, 31.405466, 33.180195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.109238, 31.510210, 33.344891>,  <41.342003, 31.684782, 33.619381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109238, 31.510210, 33.344891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455099, -0.524560, 0.719529,
		-0.673993, 0.731002, 0.106627,
		-0.581909, -0.436431, -0.686228,
		40.934666, 31.379280, 33.139023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712215, 31.716368, 33.898289>,  <41.342003, 31.684782, 33.619381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712215, 31.716368, 33.898289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706238, 31.433748, 33.615284>,  <40.702652, 31.264177, 33.445480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706238, 31.433748, 33.615284>,  <40.712215, 31.716368, 33.898289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706238, 31.433748, 33.615284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471113, -0.619148, 0.628258,
		-0.881946, 0.342705, -0.323610,
		-0.014945, -0.706547, -0.707508,
		40.701756, 31.221785, 33.403030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028812, 31.479809, 33.832321>,  <40.712215, 31.716368, 33.898289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028812, 31.479809, 33.832321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 31.177374, 33.683941>,  <40.373894, 30.995913, 33.594913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 31.177374, 33.683941>,  <40.028812, 31.479809, 33.832321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244488, 31.177374, 33.683941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524638, -0.646110, 0.554344,
		-0.658813, -0.104274, -0.745045,
		0.539185, -0.756088, -0.370959,
		40.406242, 30.950548, 33.572655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573822, 30.972645, 33.779297>,  <40.028812, 31.479809, 33.832321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573822, 30.972645, 33.779297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924801, 30.781132, 33.767570>,  <40.135387, 30.666224, 33.760536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924801, 30.781132, 33.767570>,  <39.573822, 30.972645, 33.779297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924801, 30.781132, 33.767570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408489, -0.777857, 0.477572,
		-0.251456, -0.407068, -0.878103,
		0.877443, -0.478784, -0.029314,
		40.188034, 30.637497, 33.758778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508850, 30.249983, 33.479721>,  <39.573822, 30.972645, 33.779297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508850, 30.249983, 33.479721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829586, 30.257202, 33.718624>,  <40.022030, 30.261534, 33.861965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829586, 30.257202, 33.718624>,  <39.508850, 30.249983, 33.479721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829586, 30.257202, 33.718624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332851, -0.816616, 0.471539,
		0.496242, -0.576900, -0.648792,
		0.801844, 0.018046, 0.597260,
		40.070141, 30.262615, 33.897800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422096, 29.654829, 33.786190>,  <39.508850, 30.249983, 33.479721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422096, 29.654829, 33.786190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.750721, 29.785458, 33.973122>,  <39.947895, 29.863834, 34.085281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.750721, 29.785458, 33.973122>,  <39.422096, 29.654829, 33.786190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750721, 29.785458, 33.973122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024562, -0.798659, 0.601283,
		0.569596, -0.505467, -0.648123,
		0.821558, 0.326569, 0.467328,
		39.997189, 29.883429, 34.113319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888245, 29.074423, 33.995251>,  <39.422096, 29.654829, 33.786190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888245, 29.074423, 33.995251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.991142, 29.369097, 34.245411>,  <40.052883, 29.545900, 34.395508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.991142, 29.369097, 34.245411>,  <39.888245, 29.074423, 33.995251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991142, 29.369097, 34.245411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083153, -0.627902, 0.773837,
		0.962761, -0.251071, -0.100269,
		0.257247, 0.736683, 0.625397,
		40.068317, 29.590101, 34.433029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401878, 28.831350, 34.455601>,  <39.888245, 29.074423, 33.995251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401878, 28.831350, 34.455601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196861, 29.136229, 34.613770>,  <40.073853, 29.319157, 34.708672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196861, 29.136229, 34.613770>,  <40.401878, 28.831350, 34.455601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196861, 29.136229, 34.613770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408607, -0.621524, 0.668393,
		0.755209, 0.181009, 0.629996,
		-0.512543, 0.762197, 0.395419,
		40.043098, 29.364887, 34.732395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300575, 28.587181, 35.189110>,  <40.401878, 28.831350, 34.455601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300575, 28.587181, 35.189110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042622, 28.892614, 35.176060>,  <39.887848, 29.075874, 35.168232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042622, 28.892614, 35.176060>,  <40.300575, 28.587181, 35.189110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042622, 28.892614, 35.176060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481264, -0.372556, 0.793465,
		0.593722, 0.527395, 0.607741,
		-0.644887, 0.763581, -0.032622,
		39.849155, 29.121689, 35.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.296829, 28.989464, 35.898815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955532, 29.077618, 35.709747>,  <39.750755, 29.130510, 35.596306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955532, 29.077618, 35.709747>,  <40.296829, 28.989464, 35.898815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955532, 29.077618, 35.709747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521438, -0.376728, 0.765623,
		-0.009336, 0.899726, 0.436355,
		-0.853238, 0.220384, -0.472668,
		39.699562, 29.143732, 35.567947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988377, 29.386946, 36.343437>,  <40.296829, 28.989464, 35.898815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988377, 29.386946, 36.343437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699860, 29.251144, 36.101952>,  <39.526749, 29.169664, 35.957062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699860, 29.251144, 36.101952>,  <39.988377, 29.386946, 36.343437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699860, 29.251144, 36.101952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517666, -0.314845, 0.795547,
		-0.460166, 0.886347, 0.051347,
		-0.721297, -0.339503, -0.603712,
		39.483471, 29.149294, 35.920837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319103, 29.700665, 36.590954>,  <39.988377, 29.386946, 36.343437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319103, 29.700665, 36.590954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253445, 29.359285, 36.393093>,  <39.214050, 29.154457, 36.274376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253445, 29.359285, 36.393093>,  <39.319103, 29.700665, 36.590954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253445, 29.359285, 36.393093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509087, -0.356221, 0.783541,
		-0.844918, 0.380437, -0.376008,
		-0.164146, -0.853449, -0.494653,
		39.204201, 29.103251, 36.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721771, 29.504850, 36.889034>,  <39.319103, 29.700665, 36.590954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721771, 29.504850, 36.889034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748436, 29.173901, 36.665962>,  <38.764435, 28.975330, 36.532120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748436, 29.173901, 36.665962>,  <38.721771, 29.504850, 36.889034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748436, 29.173901, 36.665962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687449, -0.443181, 0.575330,
		-0.723167, 0.345026, -0.598320,
		0.066660, -0.827374, -0.557682,
		38.768433, 28.925688, 36.498657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984207, 29.229868, 36.693638>,  <38.721771, 29.504850, 36.889034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984207, 29.229868, 36.693638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253479, 28.934258, 36.683262>,  <38.415043, 28.756891, 36.677036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253479, 28.934258, 36.683262>,  <37.984207, 29.229868, 36.693638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253479, 28.934258, 36.683262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615227, -0.579183, 0.534829,
		-0.410277, -0.344075, -0.844562,
		0.673178, -0.739025, -0.025941,
		38.455433, 28.712549, 36.675480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595409, 28.592218, 36.572884>,  <37.984207, 29.229868, 36.693638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595409, 28.592218, 36.572884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954975, 28.505623, 36.725239>,  <38.170715, 28.453665, 36.816654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954975, 28.505623, 36.725239>,  <37.595409, 28.592218, 36.572884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954975, 28.505623, 36.725239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434751, -0.548320, 0.714379,
		0.054196, -0.807761, -0.587013,
		0.898919, -0.216488, 0.380892,
		38.224651, 28.440676, 36.839508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631451, 27.759474, 36.668766>,  <37.595409, 28.592218, 36.572884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631451, 27.759474, 36.668766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904449, 27.924053, 36.910397>,  <38.068249, 28.022800, 37.055374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904449, 27.924053, 36.910397>,  <37.631451, 27.759474, 36.668766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904449, 27.924053, 36.910397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307531, -0.588114, 0.748028,
		0.663041, -0.696299, -0.274853,
		0.682496, 0.411448, 0.604077,
		38.109200, 28.047487, 37.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045162, 27.141039, 37.033360>,  <37.631451, 27.759474, 36.668766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045162, 27.141039, 37.033360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116493, 27.465855, 37.255634>,  <38.159294, 27.660744, 37.389000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116493, 27.465855, 37.255634>,  <38.045162, 27.141039, 37.033360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116493, 27.465855, 37.255634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202259, -0.522431, 0.828346,
		0.962959, -0.260113, 0.071076,
		0.178332, 0.812039, 0.555689,
		38.169994, 27.709467, 37.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357216, 26.872248, 37.522251>,  <38.045162, 27.141039, 37.033360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357216, 26.872248, 37.522251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273575, 27.219456, 37.702393>,  <38.223389, 27.427780, 37.810478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273575, 27.219456, 37.702393>,  <38.357216, 26.872248, 37.522251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273575, 27.219456, 37.702393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359115, -0.496516, 0.790259,
		0.909567, 0.003517, 0.415541,
		-0.209102, 0.868021, 0.450352,
		38.210846, 27.479862, 37.837498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476658, 26.673498, 38.260483>,  <38.357216, 26.872248, 37.522251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476658, 26.673498, 38.260483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242489, 26.992750, 38.203541>,  <38.101986, 27.184301, 38.169376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242489, 26.992750, 38.203541>,  <38.476658, 26.673498, 38.260483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242489, 26.992750, 38.203541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617317, -0.325009, 0.716442,
		0.525548, 0.507301, 0.682968,
		-0.585422, 0.798132, -0.142357,
		38.066864, 27.232189, 38.160835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241089, 26.774200, 38.913708>,  <38.476658, 26.673498, 38.260483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241089, 26.774200, 38.913708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976246, 26.953259, 38.673302>,  <37.817341, 27.060694, 38.529057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976246, 26.953259, 38.673302>,  <38.241089, 26.774200, 38.913708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976246, 26.953259, 38.673302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742778, -0.285585, 0.605576,
		0.099443, 0.847381, 0.521591,
		-0.662111, 0.447647, -0.601016,
		37.777611, 27.087553, 38.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694729, 27.015615, 39.381290>,  <38.241089, 26.774200, 38.913708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694729, 27.015615, 39.381290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554142, 27.003826, 39.006996>,  <37.469788, 26.996752, 38.782421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554142, 27.003826, 39.006996>,  <37.694729, 27.015615, 39.381290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554142, 27.003826, 39.006996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910091, -0.223639, 0.348883,
		-0.219550, 0.974226, 0.051778,
		-0.351471, -0.029475, -0.935735,
		37.448700, 26.994984, 38.726276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097130, 27.440357, 39.480644>,  <37.694729, 27.015615, 39.381290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097130, 27.440357, 39.480644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040600, 27.191578, 39.172565>,  <37.006683, 27.042311, 38.987717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040600, 27.191578, 39.172565>,  <37.097130, 27.440357, 39.480644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040600, 27.191578, 39.172565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952351, -0.127005, 0.277306,
		-0.270289, 0.772689, -0.574366,
		-0.141324, -0.621950, -0.770199,
		36.998203, 27.004993, 38.941505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371101, 27.643648, 39.216808>,  <37.097130, 27.440357, 39.480644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371101, 27.643648, 39.216808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489182, 27.274466, 39.118011>,  <36.560032, 27.052956, 39.058735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489182, 27.274466, 39.118011>,  <36.371101, 27.643648, 39.216808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489182, 27.274466, 39.118011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833223, -0.375196, 0.406162,
		-0.467541, 0.085901, -0.879788,
		0.295203, -0.922956, -0.246994,
		36.577744, 26.997578, 39.043915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706478, 27.447247, 38.925335>,  <36.371101, 27.643648, 39.216808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706478, 27.447247, 38.925335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923943, 27.122009, 39.008583>,  <36.054420, 26.926867, 39.058533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923943, 27.122009, 39.008583>,  <35.706478, 27.447247, 38.925335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923943, 27.122009, 39.008583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794103, -0.418033, 0.441190,
		-0.271725, -0.405130, -0.872946,
		0.543660, -0.813092, 0.208125,
		36.087040, 26.878082, 39.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268402, 26.858370, 38.697117>,  <35.706478, 27.447247, 38.925335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268402, 26.858370, 38.697117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537849, 26.713154, 38.954624>,  <35.699516, 26.626024, 39.109131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537849, 26.713154, 38.954624>,  <35.268402, 26.858370, 38.697117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537849, 26.713154, 38.954624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733968, -0.430873, 0.525014,
		0.086783, -0.826166, -0.556703,
		0.673617, -0.363039, 0.643772,
		35.739933, 26.604242, 39.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926517, 26.276184, 38.756718>,  <35.268402, 26.858370, 38.697117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926517, 26.276184, 38.756718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177845, 26.298779, 39.067078>,  <35.328644, 26.312336, 39.253292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177845, 26.298779, 39.067078>,  <34.926517, 26.276184, 38.756718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177845, 26.298779, 39.067078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670285, -0.466940, 0.576788,
		0.394880, -0.882483, -0.255526,
		0.628321, 0.056487, 0.775900,
		35.366341, 26.315725, 39.299847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993401, 25.606884, 39.005161>,  <34.926517, 26.276184, 38.756718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993401, 25.606884, 39.005161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139351, 25.838921, 39.296467>,  <35.226921, 25.978142, 39.471249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139351, 25.838921, 39.296467>,  <34.993401, 25.606884, 39.005161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139351, 25.838921, 39.296467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444564, -0.578712, 0.683707,
		0.818064, -0.573226, 0.046729,
		0.364875, 0.580090, 0.728260,
		35.248814, 26.012947, 39.514946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238266, 25.133682, 39.454533>,  <34.993401, 25.606884, 39.005161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238266, 25.133682, 39.454533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.182850, 25.468948, 39.665546>,  <35.149601, 25.670107, 39.792152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.182850, 25.468948, 39.665546>,  <35.238266, 25.133682, 39.454533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182850, 25.468948, 39.665546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528894, -0.512963, 0.676122,
		0.837304, -0.185337, 0.514366,
		-0.138540, 0.838164, 0.527530,
		35.141289, 25.720398, 39.823807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347828, 24.900074, 40.116310>,  <35.238266, 25.133682, 39.454533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347828, 24.900074, 40.116310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137154, 25.238895, 40.144871>,  <35.010750, 25.442188, 40.162006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137154, 25.238895, 40.144871>,  <35.347828, 24.900074, 40.116310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137154, 25.238895, 40.144871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741524, -0.498886, 0.448614,
		0.415620, 0.183336, 0.890869,
		-0.526690, 0.847054, 0.071399,
		34.979145, 25.493011, 40.166290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194302, 25.081779, 40.894943>,  <35.347828, 24.900074, 40.116310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194302, 25.081779, 40.894943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918713, 25.251205, 40.659687>,  <34.753357, 25.352861, 40.518532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918713, 25.251205, 40.659687>,  <35.194302, 25.081779, 40.894943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918713, 25.251205, 40.659687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712871, -0.542547, 0.444362,
		-0.130879, 0.725422, 0.675747,
		-0.688974, 0.423563, -0.588140,
		34.712021, 25.378275, 40.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647099, 25.243969, 41.333282>,  <35.194302, 25.081779, 40.894943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647099, 25.243969, 41.333282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523151, 25.199051, 40.955631>,  <34.448784, 25.172100, 40.729042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523151, 25.199051, 40.955631>,  <34.647099, 25.243969, 41.333282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523151, 25.199051, 40.955631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819934, -0.471159, 0.325143,
		-0.481345, 0.874871, 0.053923,
		-0.309865, -0.112293, -0.944126,
		34.430191, 25.165363, 40.672394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502888, 25.081871, 42.044975>,  <34.647099, 25.243969, 41.333282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502888, 25.081871, 42.044975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231686, 24.997606, 42.326664>,  <34.068966, 24.947046, 42.495678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231686, 24.997606, 42.326664>,  <34.502888, 25.081871, 42.044975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231686, 24.997606, 42.326664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587646, -0.730872, 0.347128,
		0.441572, 0.649189, 0.619328,
		-0.678001, -0.210664, 0.704226,
		34.028286, 24.934406, 42.537933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842678, 25.125261, 42.778767>,  <34.502888, 25.081871, 42.044975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842678, 25.125261, 42.778767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522083, 24.890116, 42.734882>,  <34.329727, 24.749027, 42.708553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522083, 24.890116, 42.734882>,  <34.842678, 25.125261, 42.778767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522083, 24.890116, 42.734882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523511, -0.778400, 0.346453,
		-0.289065, 0.220243, 0.931630,
		-0.801485, -0.587866, -0.109709,
		34.281639, 24.713757, 42.701969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466156, 25.178879, 43.194416>,  <34.842678, 25.125261, 42.778767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466156, 25.178879, 43.194416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597729, 25.466183, 43.439663>,  <35.676670, 25.638565, 43.586811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597729, 25.466183, 43.439663>,  <35.466156, 25.178879, 43.194416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597729, 25.466183, 43.439663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080177, 0.625656, -0.775968,
		-0.940945, 0.304395, 0.148208,
		0.328928, 0.718260, 0.613114,
		35.696407, 25.681662, 43.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094826, 25.845373, 42.982082>,  <35.466156, 25.178879, 43.194416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094826, 25.845373, 42.982082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414185, 25.991501, 43.173542>,  <35.605801, 26.079178, 43.288418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414185, 25.991501, 43.173542>,  <35.094826, 25.845373, 42.982082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414185, 25.991501, 43.173542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055528, 0.746869, -0.662648,
		-0.599568, 0.555633, 0.576011,
		0.798395, 0.365318, 0.478652,
		35.653702, 26.101097, 43.317139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928761, 26.468048, 42.827419>,  <35.094826, 25.845373, 42.982082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928761, 26.468048, 42.827419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306091, 26.486200, 42.958923>,  <35.532490, 26.497091, 43.037827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306091, 26.486200, 42.958923>,  <34.928761, 26.468048, 42.827419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306091, 26.486200, 42.958923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201878, 0.707789, -0.676964,
		-0.263411, 0.704965, 0.658513,
		0.943324, 0.045380, 0.328756,
		35.589088, 26.499815, 43.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930569, 27.134359, 42.895359>,  <34.928761, 26.468048, 42.827419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930569, 27.134359, 42.895359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306480, 26.997723, 42.890915>,  <35.532028, 26.915741, 42.888248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306480, 26.997723, 42.890915>,  <34.930569, 27.134359, 42.895359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306480, 26.997723, 42.890915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269943, 0.761819, -0.588865,
		0.209614, 0.550407, 0.808155,
		0.939783, -0.341590, -0.011109,
		35.588417, 26.895245, 42.887581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440697, 27.711958, 43.064281>,  <34.930569, 27.134359, 42.895359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440697, 27.711958, 43.064281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640213, 27.434109, 42.856934>,  <35.759922, 27.267399, 42.732525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640213, 27.434109, 42.856934>,  <35.440697, 27.711958, 43.064281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640213, 27.434109, 42.856934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213304, 0.678066, -0.703369,
		0.840065, 0.240263, 0.486378,
		0.498790, -0.694622, -0.518370,
		35.789848, 27.225721, 42.701424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148766, 27.932112, 43.178650>,  <35.440697, 27.711958, 43.064281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148766, 27.932112, 43.178650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107449, 27.707911, 42.849976>,  <36.082657, 27.573389, 42.652771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107449, 27.707911, 42.849976>,  <36.148766, 27.932112, 43.178650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107449, 27.707911, 42.849976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580442, 0.636884, -0.507411,
		0.807724, -0.529352, 0.259555,
		-0.103293, -0.560504, -0.821685,
		36.076462, 27.539759, 42.603470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782272, 28.144215, 42.764133>,  <36.148766, 27.932112, 43.178650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782272, 28.144215, 42.764133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560219, 27.944897, 42.497742>,  <36.426987, 27.825306, 42.337906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560219, 27.944897, 42.497742>,  <36.782272, 28.144215, 42.764133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560219, 27.944897, 42.497742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429347, 0.514092, -0.742543,
		0.712379, -0.698148, -0.071450,
		-0.555137, -0.498296, -0.665976,
		36.393677, 27.795408, 42.297951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191692, 28.073448, 42.296326>,  <36.782272, 28.144215, 42.764133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191692, 28.073448, 42.296326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858448, 28.008385, 42.084869>,  <36.658501, 27.969347, 41.957996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858448, 28.008385, 42.084869>,  <37.191692, 28.073448, 42.296326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858448, 28.008385, 42.084869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355048, 0.575588, -0.736640,
		0.424099, -0.801400, -0.421780,
		-0.833115, -0.162656, -0.528642,
		36.608513, 27.959587, 41.926277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400101, 27.693865, 41.684402>,  <37.191692, 28.073448, 42.296326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400101, 27.693865, 41.684402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062302, 27.889273, 41.596611>,  <36.859623, 28.006517, 41.543934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062302, 27.889273, 41.596611>,  <37.400101, 27.693865, 41.684402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062302, 27.889273, 41.596611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470421, 0.480757, -0.739984,
		-0.255978, -0.728165, -0.635808,
		-0.844499, 0.488517, -0.219481,
		36.808952, 28.035828, 41.530766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348709, 27.636120, 40.990917>,  <37.400101, 27.693865, 41.684402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348709, 27.636120, 40.990917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105232, 27.935825, 41.095299>,  <36.959145, 28.115648, 41.157928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105232, 27.935825, 41.095299>,  <37.348709, 27.636120, 40.990917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105232, 27.935825, 41.095299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263844, 0.501343, -0.824040,
		-0.748252, -0.432733, -0.502852,
		-0.608691, 0.749264, 0.260957,
		36.922626, 28.160604, 41.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931774, 27.767647, 40.371037>,  <37.348709, 27.636120, 40.990917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931774, 27.767647, 40.371037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.962360, 28.095524, 40.598106>,  <36.980713, 28.292250, 40.734348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.962360, 28.095524, 40.598106>,  <36.931774, 27.767647, 40.371037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962360, 28.095524, 40.598106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212071, 0.542949, -0.812547,
		-0.974258, 0.182518, -0.132318,
		0.076463, 0.819691, 0.567679,
		36.985298, 28.341431, 40.768410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458164, 28.222044, 40.035740>,  <36.931774, 27.767647, 40.371037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458164, 28.222044, 40.035740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711922, 28.447641, 40.247192>,  <36.864178, 28.583000, 40.374065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711922, 28.447641, 40.247192>,  <36.458164, 28.222044, 40.035740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711922, 28.447641, 40.247192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352808, 0.397231, -0.847192,
		-0.687803, 0.723959, 0.053018,
		0.634392, 0.563995, 0.528635,
		36.902241, 28.616840, 40.405785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404488, 28.928391, 39.725536>,  <36.458164, 28.222044, 40.035740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404488, 28.928391, 39.725536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742443, 28.916979, 39.939205>,  <36.945217, 28.910131, 40.067406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742443, 28.916979, 39.939205>,  <36.404488, 28.928391, 39.725536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742443, 28.916979, 39.939205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480409, 0.479702, -0.734230,
		-0.235299, 0.876968, 0.419002,
		0.844891, -0.028529, 0.534177,
		36.995911, 28.908421, 40.099457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798164, 29.543604, 39.573853>,  <36.404488, 28.928391, 39.725536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798164, 29.543604, 39.573853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067856, 29.290758, 39.726608>,  <37.229671, 29.139050, 39.818264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067856, 29.290758, 39.726608>,  <36.798164, 29.543604, 39.573853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067856, 29.290758, 39.726608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701771, 0.387282, -0.597938,
		0.230065, 0.671150, 0.704718,
		0.674231, -0.632115, 0.381894,
		37.270126, 29.101124, 39.841175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251759, 30.041376, 39.882225>,  <36.798164, 29.543604, 39.573853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251759, 30.041376, 39.882225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456280, 29.705088, 39.810940>,  <37.578991, 29.503315, 39.768169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456280, 29.705088, 39.810940>,  <37.251759, 30.041376, 39.882225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456280, 29.705088, 39.810940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761986, 0.539384, -0.358390,
		0.397429, 0.047452, 0.916405,
		0.511300, -0.840722, -0.178209,
		37.609669, 29.452871, 39.757477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918762, 30.164370, 40.157810>,  <37.251759, 30.041376, 39.882225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918762, 30.164370, 40.157810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958359, 29.854555, 39.907917>,  <37.982117, 29.668667, 39.757980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958359, 29.854555, 39.907917>,  <37.918762, 30.164370, 40.157810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958359, 29.854555, 39.907917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917038, 0.314743, -0.244904,
		0.386318, -0.548664, 0.741435,
		0.098991, -0.774535, -0.624737,
		37.988056, 29.622194, 39.720497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525154, 29.890944, 40.322712>,  <37.918762, 30.164370, 40.157810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525154, 29.890944, 40.322712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413136, 29.788937, 39.952515>,  <38.345924, 29.727732, 39.730396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413136, 29.788937, 39.952515>,  <38.525154, 29.890944, 40.322712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413136, 29.788937, 39.952515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856770, 0.368482, -0.360787,
		0.433035, -0.893973, 0.115299,
		-0.280048, -0.255017, -0.925494,
		38.329121, 29.712431, 39.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235542, 29.832909, 40.013065>,  <38.525154, 29.890944, 40.322712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235542, 29.832909, 40.013065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970364, 29.808598, 39.714588>,  <38.811256, 29.794012, 39.535503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970364, 29.808598, 39.714588>,  <39.235542, 29.832909, 40.013065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970364, 29.808598, 39.714588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602813, 0.547733, -0.580177,
		0.443975, -0.834443, -0.326483,
		-0.662950, -0.060776, -0.746193,
		38.771481, 29.790365, 39.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631775, 29.886772, 39.366341>,  <39.235542, 29.832909, 40.013065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631775, 29.886772, 39.366341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259117, 29.986839, 39.260929>,  <39.035522, 30.046881, 39.197681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259117, 29.986839, 39.260929>,  <39.631775, 29.886772, 39.366341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259117, 29.986839, 39.260929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363360, 0.637963, -0.678950,
		-0.001729, -0.728299, -0.685258,
		-0.931647, 0.250169, -0.263532,
		38.979622, 30.061890, 39.181870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596817, 29.819101, 38.735203>,  <39.631775, 29.886772, 39.366341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596817, 29.819101, 38.735203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326080, 30.106831, 38.797768>,  <39.163639, 30.279469, 38.835308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326080, 30.106831, 38.797768>,  <39.596817, 29.819101, 38.735203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326080, 30.106831, 38.797768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519798, 0.617474, -0.590369,
		-0.521247, -0.318281, -0.791832,
		-0.676839, 0.719321, 0.156415,
		39.123028, 30.322626, 38.844692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.320038, 30.242037, 33.008625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013954, 30.427460, 33.187317>,  <40.830303, 30.538713, 33.294533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.013954, 30.427460, 33.187317>,  <41.320038, 30.242037, 33.008625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013954, 30.427460, 33.187317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101538, 0.598324, -0.794794,
		-0.635720, -0.653546, -0.410777,
		-0.765213, 0.463557, 0.446727,
		40.784389, 30.566526, 33.321335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659184, 30.210445, 32.533524>,  <41.320038, 30.242037, 33.008625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659184, 30.210445, 32.533524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683060, 30.520187, 32.785496>,  <40.697388, 30.706032, 32.936680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683060, 30.520187, 32.785496>,  <40.659184, 30.210445, 32.533524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683060, 30.520187, 32.785496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050199, 0.632585, -0.772862,
		-0.996954, 0.014513, 0.076634,
		0.059694, 0.774354, 0.629930,
		40.700970, 30.752493, 32.974476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141247, 30.731426, 32.296120>,  <40.659184, 30.210445, 32.533524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141247, 30.731426, 32.296120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378326, 30.930126, 32.549717>,  <40.520573, 31.049347, 32.701874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378326, 30.930126, 32.549717>,  <40.141247, 30.731426, 32.296120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378326, 30.930126, 32.549717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107091, 0.731559, -0.673315,
		-0.798272, 0.466969, 0.380398,
		0.592700, 0.496752, 0.633991,
		40.556137, 31.079151, 32.739914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017803, 31.501699, 32.233334>,  <40.141247, 30.731426, 32.296120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017803, 31.501699, 32.233334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373535, 31.463867, 32.412289>,  <40.586975, 31.441168, 32.519661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373535, 31.463867, 32.412289>,  <40.017803, 31.501699, 32.233334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373535, 31.463867, 32.412289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350980, 0.768312, -0.535266,
		-0.293105, 0.633049, 0.716476,
		0.889327, -0.094579, 0.447384,
		40.640335, 31.435493, 32.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160767, 32.141544, 32.422707>,  <40.017803, 31.501699, 32.233334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160767, 32.141544, 32.422707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510586, 31.947916, 32.411053>,  <40.720478, 31.831739, 32.404060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510586, 31.947916, 32.411053>,  <40.160767, 32.141544, 32.422707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510586, 31.947916, 32.411053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420035, 0.786148, -0.453367,
		0.242365, 0.384253, 0.890848,
		0.874546, -0.484068, -0.029135,
		40.772949, 31.802696, 32.402313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529442, 32.666771, 32.420860>,  <40.160767, 32.141544, 32.422707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529442, 32.666771, 32.420860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 32.390636, 32.297123>,  <40.948017, 32.224957, 32.222881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 32.390636, 32.297123>,  <40.529442, 32.666771, 32.420860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791050, 32.390636, 32.297123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537575, 0.711842, -0.451988,
		0.532227, 0.129315, 0.836668,
		0.654024, -0.690332, -0.309345,
		40.987259, 32.183537, 32.204319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224369, 32.847630, 32.519588>,  <40.529442, 32.666771, 32.420860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224369, 32.847630, 32.519588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278900, 32.566628, 32.240189>,  <41.311619, 32.398026, 32.072548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278900, 32.566628, 32.240189>,  <41.224369, 32.847630, 32.519588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278900, 32.566628, 32.240189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499070, 0.657778, -0.564142,
		0.855771, -0.271693, 0.440272,
		0.136328, -0.702503, -0.698501,
		41.319798, 32.355877, 32.030640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947071, 32.720898, 32.379879>,  <41.224369, 32.847630, 32.519588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947071, 32.720898, 32.379879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763123, 32.604500, 32.044300>,  <41.652752, 32.534660, 31.842953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763123, 32.604500, 32.044300>,  <41.947071, 32.720898, 32.379879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763123, 32.604500, 32.044300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595407, 0.599880, -0.534448,
		0.658792, -0.745295, -0.102607,
		-0.459873, -0.290997, -0.838950,
		41.625160, 32.517200, 31.792616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433609, 32.611179, 31.861185>,  <41.947071, 32.720898, 32.379879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433609, 32.611179, 31.861185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099812, 32.660583, 31.646387>,  <41.899532, 32.690228, 31.517508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099812, 32.660583, 31.646387>,  <42.433609, 32.611179, 31.861185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099812, 32.660583, 31.646387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524370, 0.477407, -0.705066,
		0.169280, -0.869958, -0.463160,
		-0.834494, 0.123514, -0.536996,
		41.849464, 32.697639, 31.485289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616123, 32.453442, 31.153288>,  <42.433609, 32.611179, 31.861185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616123, 32.453442, 31.153288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279434, 32.658588, 31.085787>,  <42.077423, 32.781677, 31.045286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279434, 32.658588, 31.085787>,  <42.616123, 32.453442, 31.153288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279434, 32.658588, 31.085787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395334, 0.372571, -0.839584,
		-0.367721, -0.773408, -0.516353,
		-0.841720, 0.512865, -0.168752,
		42.026917, 32.812447, 31.035162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479530, 32.422470, 30.450483>,  <42.616123, 32.453442, 31.153288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479530, 32.422470, 30.450483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257378, 32.735413, 30.563248>,  <42.124084, 32.923176, 30.630907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257378, 32.735413, 30.563248>,  <42.479530, 32.422470, 30.450483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257378, 32.735413, 30.563248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285119, 0.497595, -0.819210,
		-0.781191, -0.374595, -0.499419,
		-0.555380, 0.782354, 0.281913,
		42.090763, 32.970119, 30.647821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042408, 32.729618, 29.765779>,  <42.479530, 32.422470, 30.450483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042408, 32.729618, 29.765779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106602, 32.994743, 30.058332>,  <42.145119, 33.153820, 30.233864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106602, 32.994743, 30.058332>,  <42.042408, 32.729618, 29.765779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106602, 32.994743, 30.058332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399669, 0.633885, -0.662159,
		-0.902501, 0.398579, -0.163176,
		0.160487, 0.662816, 0.731381,
		42.154747, 33.193588, 30.277746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717331, 33.351620, 29.576288>,  <42.042408, 32.729618, 29.765779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717331, 33.351620, 29.576288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043621, 33.402180, 29.802071>,  <42.239395, 33.432514, 29.937540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043621, 33.402180, 29.802071>,  <41.717331, 33.351620, 29.576288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043621, 33.402180, 29.802071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479671, 0.397546, -0.782223,
		-0.323269, 0.908835, 0.263660,
		0.815729, 0.126398, 0.564456,
		42.288342, 33.440098, 29.971407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976746, 34.073635, 29.584343>,  <41.717331, 33.351620, 29.576288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976746, 34.073635, 29.584343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244732, 33.778183, 29.614191>,  <42.405525, 33.600910, 29.632099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244732, 33.778183, 29.614191>,  <41.976746, 34.073635, 29.584343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244732, 33.778183, 29.614191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417037, 0.291294, -0.860946,
		0.614183, 0.607927, 0.503194,
		0.669969, -0.738629, 0.074620,
		42.445724, 33.556595, 29.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304173, 34.468739, 29.727530>,  <41.976746, 34.073635, 29.584343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304173, 34.468739, 29.727530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081974, 34.795799, 29.667038>,  <40.948654, 34.992035, 29.630743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081974, 34.795799, 29.667038>,  <41.304173, 34.468739, 29.727530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081974, 34.795799, 29.667038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788972, -0.460858, 0.406365,
		0.262568, 0.345053, 0.901108,
		-0.555501, 0.817648, -0.151231,
		40.915325, 35.041092, 29.621668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937870, 34.610088, 30.334505>,  <41.304173, 34.468739, 29.727530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937870, 34.610088, 30.334505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719467, 34.774723, 30.042624>,  <40.588425, 34.873505, 29.867495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719467, 34.774723, 30.042624>,  <40.937870, 34.610088, 30.334505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719467, 34.774723, 30.042624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790740, -0.540934, 0.286568,
		-0.276774, 0.733476, 0.620814,
		-0.546010, 0.411588, -0.729705,
		40.555664, 34.898201, 29.823711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297062, 34.822468, 30.612963>,  <40.937870, 34.610088, 30.334505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297062, 34.822468, 30.612963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214176, 34.798973, 30.222351>,  <40.164444, 34.784874, 29.987984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214176, 34.798973, 30.222351>,  <40.297062, 34.822468, 30.612963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214176, 34.798973, 30.222351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825884, -0.524546, 0.206802,
		-0.524383, 0.849353, 0.060181,
		-0.207215, -0.058741, -0.976530,
		40.152012, 34.781349, 29.929392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613132, 34.912319, 30.660315>,  <40.297062, 34.822468, 30.612963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613132, 34.912319, 30.660315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699905, 34.765446, 30.298515>,  <39.751968, 34.677322, 30.081436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699905, 34.765446, 30.298515>,  <39.613132, 34.912319, 30.660315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699905, 34.765446, 30.298515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696732, -0.707224, 0.120000,
		-0.683743, 0.604159, -0.409252,
		0.216934, -0.367188, -0.904496,
		39.764984, 34.655289, 30.027166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039051, 34.900021, 30.240610>,  <39.613132, 34.912319, 30.660315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039051, 34.900021, 30.240610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.268475, 34.601734, 30.105001>,  <39.406128, 34.422760, 30.023636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.268475, 34.601734, 30.105001>,  <39.039051, 34.900021, 30.240610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268475, 34.601734, 30.105001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707308, -0.659599, 0.254252,
		-0.413219, 0.093964, -0.905771,
		0.573556, -0.745721, -0.339020,
		39.440540, 34.378017, 30.003296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555534, 34.418076, 29.973715>,  <39.039051, 34.900021, 30.240610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555534, 34.418076, 29.973715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889771, 34.200367, 30.003508>,  <39.090313, 34.069740, 30.021383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.889771, 34.200367, 30.003508>,  <38.555534, 34.418076, 29.973715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889771, 34.200367, 30.003508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544959, -0.804166, 0.237354,
		-0.069288, -0.238922, -0.968563,
		0.835595, -0.544273, 0.074484,
		39.140450, 34.037086, 30.025852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442692, 33.716961, 29.736824>,  <38.555534, 34.418076, 29.973715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442692, 33.716961, 29.736824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773682, 33.662891, 29.954819>,  <38.972275, 33.630451, 30.085615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773682, 33.662891, 29.954819>,  <38.442692, 33.716961, 29.736824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773682, 33.662891, 29.954819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419090, -0.794632, 0.439231,
		0.373691, -0.591852, -0.714190,
		0.827478, -0.135173, 0.544985,
		39.021923, 33.622341, 30.118315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507362, 33.031609, 29.682011>,  <38.442692, 33.716961, 29.736824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507362, 33.031609, 29.682011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.741249, 33.152016, 29.983339>,  <38.881580, 33.224262, 30.164137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.741249, 33.152016, 29.983339>,  <38.507362, 33.031609, 29.682011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741249, 33.152016, 29.983339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210300, -0.840619, 0.499134,
		0.783506, -0.450275, -0.428219,
		0.584716, 0.301020, 0.753322,
		38.916664, 33.242321, 30.209335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920860, 32.445721, 29.908714>,  <38.507362, 33.031609, 29.682011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920860, 32.445721, 29.908714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883629, 32.683273, 30.228374>,  <38.861290, 32.825806, 30.420172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883629, 32.683273, 30.228374>,  <38.920860, 32.445721, 29.908714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883629, 32.683273, 30.228374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285022, -0.784941, 0.550119,
		0.953991, -0.176571, 0.242331,
		-0.093081, 0.593878, 0.799153,
		38.855705, 32.861435, 30.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228413, 32.070248, 30.413609>,  <38.920860, 32.445721, 29.908714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228413, 32.070248, 30.413609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988514, 32.329487, 30.601341>,  <38.844574, 32.485031, 30.713982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988514, 32.329487, 30.601341>,  <39.228413, 32.070248, 30.413609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988514, 32.329487, 30.601341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332658, -0.735382, 0.590383,
		0.727763, 0.197954, 0.656640,
		-0.599750, 0.648095, 0.469333,
		38.808590, 32.523914, 30.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235035, 31.805117, 31.140171>,  <39.228413, 32.070248, 30.413609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235035, 31.805117, 31.140171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945358, 32.077656, 31.097620>,  <38.771553, 32.241180, 31.072090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945358, 32.077656, 31.097620>,  <39.235035, 31.805117, 31.140171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945358, 32.077656, 31.097620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501371, -0.414302, 0.759592,
		0.473476, 0.603421, 0.641641,
		-0.724187, 0.681349, -0.106376,
		38.728104, 32.282059, 31.065708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161774, 32.115204, 31.866228>,  <39.235035, 31.805117, 31.140171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161774, 32.115204, 31.866228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828239, 32.184479, 31.656574>,  <38.628117, 32.226044, 31.530783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828239, 32.184479, 31.656574>,  <39.161774, 32.115204, 31.866228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828239, 32.184479, 31.656574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549876, -0.343957, 0.761137,
		-0.048458, 0.922875, 0.382038,
		-0.833840, 0.173190, -0.524134,
		38.578087, 32.236435, 31.499334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558064, 32.467552, 32.295452>,  <39.161774, 32.115204, 31.866228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558064, 32.467552, 32.295452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363831, 32.273319, 32.004681>,  <38.247292, 32.156780, 31.830217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363831, 32.273319, 32.004681>,  <38.558064, 32.467552, 32.295452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363831, 32.273319, 32.004681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477254, -0.549436, 0.685820,
		-0.732422, 0.679948, 0.035049,
		-0.485579, -0.485582, -0.726927,
		38.218155, 32.127644, 31.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878967, 32.412170, 32.464657>,  <38.558064, 32.467552, 32.295452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878967, 32.412170, 32.464657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.922089, 32.116013, 32.199268>,  <37.947960, 31.938318, 32.040035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.922089, 32.116013, 32.199268>,  <37.878967, 32.412170, 32.464657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922089, 32.116013, 32.199268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561522, -0.596064, 0.573934,
		-0.820410, 0.310685, -0.480002,
		0.107799, -0.740393, -0.663474,
		37.954430, 31.893894, 32.000225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357346, 32.951336, 32.356625>,  <37.878967, 32.412170, 32.464657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357346, 32.951336, 32.356625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204872, 33.207008, 32.623802>,  <37.113388, 33.360413, 32.784107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204872, 33.207008, 32.623802>,  <37.357346, 32.951336, 32.356625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204872, 33.207008, 32.623802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414007, 0.764014, -0.494854,
		-0.826618, 0.087901, -0.555856,
		-0.381183, 0.639184, 0.667939,
		37.090519, 33.398762, 32.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987034, 33.476112, 32.007988>,  <37.357346, 32.951336, 32.356625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987034, 33.476112, 32.007988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090160, 33.653332, 32.351440>,  <37.152035, 33.759663, 32.557510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090160, 33.653332, 32.351440>,  <36.987034, 33.476112, 32.007988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090160, 33.653332, 32.351440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486177, 0.708483, -0.511551,
		-0.834963, 0.549331, -0.032740,
		0.257815, 0.443044, 0.858629,
		37.167503, 33.786243, 32.609028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860676, 34.143627, 31.894703>,  <36.987034, 33.476112, 32.007988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860676, 34.143627, 31.894703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091442, 34.163212, 32.220837>,  <37.229900, 34.174961, 32.416515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091442, 34.163212, 32.220837>,  <36.860676, 34.143627, 31.894703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091442, 34.163212, 32.220837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346224, 0.889432, -0.298396,
		-0.739794, 0.454438, 0.496176,
		0.576917, 0.048963, 0.815334,
		37.264519, 34.177902, 32.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731670, 34.780506, 32.148605>,  <36.860676, 34.143627, 31.894703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731670, 34.780506, 32.148605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091984, 34.683743, 32.292870>,  <37.308170, 34.625683, 32.379429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091984, 34.683743, 32.292870>,  <36.731670, 34.780506, 32.148605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091984, 34.683743, 32.292870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370225, 0.861862, -0.346593,
		-0.226992, 0.445729, 0.865910,
		0.900782, -0.241908, 0.360656,
		37.362217, 34.611172, 32.401066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921112, 35.344437, 32.558144>,  <36.731670, 34.780506, 32.148605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921112, 35.344437, 32.558144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270817, 35.165207, 32.483410>,  <37.480640, 35.057671, 32.438572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270817, 35.165207, 32.483410>,  <36.921112, 35.344437, 32.558144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270817, 35.165207, 32.483410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405018, 0.885387, -0.228147,
		0.267643, 0.123790, 0.955533,
		0.874259, -0.448070, -0.186830,
		37.533092, 35.030785, 32.427361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499889, 35.787395, 32.920479>,  <36.921112, 35.344437, 32.558144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499889, 35.787395, 32.920479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685574, 35.570621, 32.640247>,  <37.796986, 35.440559, 32.472107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685574, 35.570621, 32.640247>,  <37.499889, 35.787395, 32.920479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685574, 35.570621, 32.640247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457273, 0.824045, -0.334443,
		0.758556, -0.165103, 0.630345,
		0.464215, -0.541933, -0.700581,
		37.824837, 35.408043, 32.430073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158432, 35.998142, 32.966709>,  <37.499889, 35.787395, 32.920479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158432, 35.998142, 32.966709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142292, 35.834736, 32.601967>,  <38.132610, 35.736694, 32.383121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142292, 35.834736, 32.601967>,  <38.158432, 35.998142, 32.966709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142292, 35.834736, 32.601967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379410, 0.837987, -0.392205,
		0.924349, -0.361792, 0.121185,
		-0.040345, -0.408513, -0.911860,
		38.130188, 35.712181, 32.328407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867130, 36.088299, 32.650108>,  <38.158432, 35.998142, 32.966709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867130, 36.088299, 32.650108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619705, 36.036442, 32.340122>,  <38.471249, 36.005329, 32.154129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619705, 36.036442, 32.340122>,  <38.867130, 36.088299, 32.650108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619705, 36.036442, 32.340122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383841, 0.810742, -0.442000,
		0.685595, -0.570869, -0.451738,
		-0.618567, -0.129638, -0.774963,
		38.434135, 35.997551, 32.107632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277061, 36.200844, 31.975798>,  <38.867130, 36.088299, 32.650108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277061, 36.200844, 31.975798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887531, 36.228310, 31.889120>,  <38.653812, 36.244789, 31.837114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887531, 36.228310, 31.889120>,  <39.277061, 36.200844, 31.975798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887531, 36.228310, 31.889120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174425, 0.837002, -0.518655,
		0.145762, -0.542874, -0.827068,
		-0.973822, 0.068661, -0.216694,
		38.595387, 36.248909, 31.824112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231293, 36.310173, 31.205870>,  <39.277061, 36.200844, 31.975798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231293, 36.310173, 31.205870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891514, 36.446133, 31.367317>,  <38.687645, 36.527710, 31.464186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891514, 36.446133, 31.367317>,  <39.231293, 36.310173, 31.205870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891514, 36.446133, 31.367317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125373, 0.873005, -0.471322,
		-0.512562, -0.349761, -0.784186,
		-0.849448, 0.339898, 0.403618,
		38.636681, 36.548103, 31.488403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949734, 36.642254, 30.635475>,  <39.231293, 36.310173, 31.205870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949734, 36.642254, 30.635475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745914, 36.801815, 30.940432>,  <38.623623, 36.897552, 31.123405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745914, 36.801815, 30.940432>,  <38.949734, 36.642254, 30.635475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745914, 36.801815, 30.940432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060767, 0.900512, -0.430564,
		-0.858296, -0.173063, -0.483091,
		-0.509544, 0.398907, 0.762390,
		38.593052, 36.921486, 31.169147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574013, 37.238934, 30.275030>,  <38.949734, 36.642254, 30.635475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574013, 37.238934, 30.275030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619102, 37.290573, 30.669111>,  <38.646156, 37.321556, 30.905560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619102, 37.290573, 30.669111>,  <38.574013, 37.238934, 30.275030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619102, 37.290573, 30.669111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076413, 0.987460, -0.138141,
		-0.990684, 0.090855, 0.101447,
		0.112726, 0.129102, 0.985203,
		38.652920, 37.329304, 30.964672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.308208, 30.889864, 34.301296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543221, 31.096375, 34.550541>,  <34.684227, 31.220280, 34.700089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543221, 31.096375, 34.550541>,  <34.308208, 30.889864, 34.301296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543221, 31.096375, 34.550541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293892, 0.581312, -0.758751,
		-0.753946, 0.628918, 0.189810,
		0.587531, 0.516274, 0.623112,
		34.719479, 31.251257, 34.737476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436909, 31.575279, 34.053940>,  <34.308208, 30.889864, 34.301296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436909, 31.575279, 34.053940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714069, 31.584988, 34.342186>,  <34.880367, 31.590813, 34.515133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714069, 31.584988, 34.342186>,  <34.436909, 31.575279, 34.053940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714069, 31.584988, 34.342186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485814, 0.722799, -0.491473,
		-0.532791, 0.690632, 0.489041,
		0.692905, 0.024270, 0.720620,
		34.921940, 31.592268, 34.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401611, 32.316185, 34.335045>,  <34.436909, 31.575279, 34.053940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401611, 32.316185, 34.335045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760574, 32.146458, 34.383385>,  <34.975952, 32.044621, 34.412388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760574, 32.146458, 34.383385>,  <34.401611, 32.316185, 34.335045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760574, 32.146458, 34.383385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438796, 0.829877, -0.344620,
		0.045936, 0.362295, 0.930931,
		0.897412, -0.424319, 0.120853,
		35.029797, 32.019161, 34.419640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834854, 32.870682, 34.617626>,  <34.401611, 32.316185, 34.335045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834854, 32.870682, 34.617626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090622, 32.589207, 34.493710>,  <35.244083, 32.420322, 34.419357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090622, 32.589207, 34.493710>,  <34.834854, 32.870682, 34.617626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090622, 32.589207, 34.493710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685334, 0.704282, -0.185214,
		0.348515, -0.093883, 0.932590,
		0.639418, -0.703685, -0.309793,
		35.282448, 32.378101, 34.400772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478703, 33.257057, 34.654060>,  <34.834854, 32.870682, 34.617626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478703, 33.257057, 34.654060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568081, 32.928257, 34.444530>,  <35.621708, 32.730976, 34.318813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568081, 32.928257, 34.444530>,  <35.478703, 33.257057, 34.654060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568081, 32.928257, 34.444530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809621, 0.455770, -0.369847,
		0.542757, -0.341458, 0.767347,
		0.223446, -0.821998, -0.523824,
		35.635117, 32.681656, 34.287384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228344, 33.100712, 34.757504>,  <35.478703, 33.257057, 34.654060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228344, 33.100712, 34.757504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112865, 32.938824, 34.410435>,  <36.043579, 32.841690, 34.202194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112865, 32.938824, 34.410435>,  <36.228344, 33.100712, 34.757504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112865, 32.938824, 34.410435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786400, 0.416680, -0.456018,
		0.546102, -0.813988, 0.197980,
		-0.288698, -0.404724, -0.867670,
		36.026257, 32.817406, 34.150135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825550, 32.820827, 34.409344>,  <36.228344, 33.100712, 34.757504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825550, 32.820827, 34.409344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563313, 32.879189, 34.112988>,  <36.405972, 32.914204, 33.935173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563313, 32.879189, 34.112988>,  <36.825550, 32.820827, 34.409344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563313, 32.879189, 34.112988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687397, 0.521418, -0.505577,
		0.312546, -0.840735, -0.442131,
		-0.655592, 0.145903, -0.740886,
		36.366634, 32.922958, 33.890720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183323, 32.471752, 33.809669>,  <36.825550, 32.820827, 34.409344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183323, 32.471752, 33.809669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920158, 32.752846, 33.701355>,  <36.762260, 32.921501, 33.636368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920158, 32.752846, 33.701355>,  <37.183323, 32.471752, 33.809669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920158, 32.752846, 33.701355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703250, 0.444636, -0.554741,
		-0.269432, -0.555400, -0.786726,
		-0.657910, 0.702730, -0.270785,
		36.722786, 32.963665, 33.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342606, 32.533669, 33.123398>,  <37.183323, 32.471752, 33.809669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342606, 32.533669, 33.123398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123524, 32.861282, 33.191757>,  <36.992077, 33.057850, 33.232773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123524, 32.861282, 33.191757>,  <37.342606, 32.533669, 33.123398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123524, 32.861282, 33.191757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718625, 0.565115, -0.405244,
		-0.428485, -0.099141, -0.898093,
		-0.547702, 0.819034, 0.170898,
		36.959213, 33.106991, 33.243027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162636, 32.008854, 32.423798>,  <37.342606, 32.533669, 33.123398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162636, 32.008854, 32.423798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414940, 31.750479, 32.251793>,  <37.566322, 31.595453, 32.148590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414940, 31.750479, 32.251793>,  <37.162636, 32.008854, 32.423798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414940, 31.750479, 32.251793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544821, -0.763237, 0.347330,
		-0.552553, 0.015196, -0.833339,
		0.630758, -0.645939, -0.430009,
		37.604168, 31.556698, 32.122791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686123, 31.521454, 32.136799>,  <37.162636, 32.008854, 32.423798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686123, 31.521454, 32.136799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050240, 31.359337, 32.170521>,  <37.268711, 31.262066, 32.190754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050240, 31.359337, 32.170521>,  <36.686123, 31.521454, 32.136799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050240, 31.359337, 32.170521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402738, -0.819913, 0.406872,
		-0.095779, -0.404326, -0.909586,
		0.910290, -0.405295, 0.084307,
		37.323326, 31.237749, 32.195812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572346, 30.778055, 32.020618>,  <36.686123, 31.521454, 32.136799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572346, 30.778055, 32.020618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938313, 30.783764, 32.181976>,  <37.157890, 30.787189, 32.278793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938313, 30.783764, 32.181976>,  <36.572346, 30.778055, 32.020618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938313, 30.783764, 32.181976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175756, -0.885582, 0.429947,
		0.363377, -0.464264, -0.807723,
		0.914914, 0.014270, 0.403397,
		37.212788, 30.788046, 32.302994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864231, 30.212250, 31.850481>,  <36.572346, 30.778055, 32.020618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864231, 30.212250, 31.850481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066429, 30.328094, 32.175591>,  <37.187748, 30.397602, 32.370655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066429, 30.328094, 32.175591>,  <36.864231, 30.212250, 31.850481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066429, 30.328094, 32.175591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246940, -0.854023, 0.457893,
		0.826739, -0.432168, -0.360185,
		0.505493, 0.289614, 0.812774,
		37.218079, 30.414978, 32.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330139, 29.705072, 32.056156>,  <36.864231, 30.212250, 31.850481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330139, 29.705072, 32.056156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240185, 29.904432, 32.391064>,  <37.186211, 30.024048, 32.592007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240185, 29.904432, 32.391064>,  <37.330139, 29.705072, 32.056156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240185, 29.904432, 32.391064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110263, -0.866778, 0.486351,
		0.968125, 0.017056, 0.249884,
		-0.224889, 0.498401, 0.837270,
		37.172718, 30.053953, 32.642246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570988, 29.379929, 32.611366>,  <37.330139, 29.705072, 32.056156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570988, 29.379929, 32.611366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328354, 29.613499, 32.827175>,  <37.182774, 29.753641, 32.956661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328354, 29.613499, 32.827175>,  <37.570988, 29.379929, 32.611366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328354, 29.613499, 32.827175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092821, -0.726005, 0.681396,
		0.789580, 0.363247, 0.494586,
		-0.606587, 0.583925, 0.539522,
		37.146378, 29.788675, 32.989033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748714, 29.262114, 33.287868>,  <37.570988, 29.379929, 32.611366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748714, 29.262114, 33.287868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371849, 29.395996, 33.294746>,  <37.145729, 29.476326, 33.298874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371849, 29.395996, 33.294746>,  <37.748714, 29.262114, 33.287868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371849, 29.395996, 33.294746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246148, -0.725887, 0.642261,
		0.227450, 0.600884, 0.766293,
		-0.942166, 0.334704, 0.017197,
		37.089199, 29.496407, 33.299904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531830, 29.185116, 34.023674>,  <37.748714, 29.262114, 33.287868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531830, 29.185116, 34.023674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205585, 29.215675, 33.794258>,  <37.009838, 29.234011, 33.656609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205585, 29.215675, 33.794258>,  <37.531830, 29.185116, 34.023674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205585, 29.215675, 33.794258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510306, -0.562181, 0.650799,
		-0.272714, 0.823478, 0.497505,
		-0.815607, 0.076398, -0.573541,
		36.960903, 29.238594, 33.622196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915359, 29.283098, 34.459332>,  <37.531830, 29.185116, 34.023674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915359, 29.283098, 34.459332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780853, 29.138458, 34.111500>,  <36.700150, 29.051674, 33.902802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780853, 29.138458, 34.111500>,  <36.915359, 29.283098, 34.459332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780853, 29.138458, 34.111500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642928, -0.586559, 0.492535,
		-0.688161, 0.724701, -0.035242,
		-0.336269, -0.361602, -0.869579,
		36.679974, 29.029978, 33.850628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177876, 29.313726, 34.442699>,  <36.915359, 29.283098, 34.459332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177876, 29.313726, 34.442699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285919, 29.031748, 34.180374>,  <36.350746, 28.862560, 34.022980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285919, 29.031748, 34.180374>,  <36.177876, 29.313726, 34.442699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285919, 29.031748, 34.180374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651134, -0.635501, 0.414926,
		-0.709271, 0.314948, -0.630668,
		0.270110, -0.704944, -0.655816,
		36.366951, 28.820265, 33.983631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559341, 28.930737, 34.360191>,  <36.177876, 29.313726, 34.442699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559341, 28.930737, 34.360191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826256, 28.687939, 34.187546>,  <35.986404, 28.542261, 34.083958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826256, 28.687939, 34.187546>,  <35.559341, 28.930737, 34.360191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826256, 28.687939, 34.187546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422572, -0.785742, 0.451710,
		-0.613322, -0.119031, -0.780812,
		0.667285, -0.606993, -0.431614,
		36.026440, 28.505840, 34.058060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097374, 28.463932, 34.129894>,  <35.559341, 28.930737, 34.360191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097374, 28.463932, 34.129894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466908, 28.311541, 34.144760>,  <35.688629, 28.220106, 34.153679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466908, 28.311541, 34.144760>,  <35.097374, 28.463932, 34.129894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466908, 28.311541, 34.144760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359193, -0.829245, 0.428174,
		-0.132310, -0.408911, -0.902932,
		0.923837, -0.380979, 0.037160,
		35.744057, 28.197247, 34.155907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001884, 27.705004, 33.880817>,  <35.097374, 28.463932, 34.129894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001884, 27.705004, 33.880817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353287, 27.699047, 34.071815>,  <35.564129, 27.695473, 34.186413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353287, 27.699047, 34.071815>,  <35.001884, 27.705004, 33.880817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353287, 27.699047, 34.071815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239978, -0.878011, 0.414135,
		0.413080, -0.478409, -0.774913,
		0.878508, -0.014892, 0.477496,
		35.616840, 27.694580, 34.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229259, 27.033325, 33.714241>,  <35.001884, 27.705004, 33.880817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229259, 27.033325, 33.714241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357300, 27.219778, 34.044151>,  <35.434124, 27.331650, 34.242096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357300, 27.219778, 34.044151>,  <35.229259, 27.033325, 33.714241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357300, 27.219778, 34.044151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290499, -0.780352, 0.553770,
		0.901748, -0.416857, -0.114377,
		0.320097, 0.466134, 0.824777,
		35.453327, 27.359619, 34.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.974007, 32.536484, 40.478844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803589, 32.307041, 40.199001>,  <36.701336, 32.169376, 40.031094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803589, 32.307041, 40.199001>,  <36.974007, 32.536484, 40.478844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803589, 32.307041, 40.199001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454126, 0.533229, -0.713748,
		0.782465, -0.621802, 0.033310,
		-0.426048, -0.573610, -0.699610,
		36.675774, 32.134956, 39.989117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472145, 32.346279, 40.003883>,  <36.974007, 32.536484, 40.478844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472145, 32.346279, 40.003883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130917, 32.287788, 39.803528>,  <36.926182, 32.252693, 39.683315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.130917, 32.287788, 39.803528>,  <37.472145, 32.346279, 40.003883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130917, 32.287788, 39.803528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410883, 0.403460, -0.817555,
		0.321635, -0.903238, -0.284098,
		-0.853069, -0.146224, -0.500892,
		36.874996, 32.243919, 39.653259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734753, 32.207787, 39.308727>,  <37.472145, 32.346279, 40.003883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734753, 32.207787, 39.308727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351463, 32.310295, 39.257927>,  <37.121490, 32.371799, 39.227448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351463, 32.310295, 39.257927>,  <37.734753, 32.207787, 39.308727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351463, 32.310295, 39.257927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232474, 0.439175, -0.867803,
		-0.166619, -0.861074, -0.480405,
		-0.958224, 0.256274, -0.127002,
		37.063995, 32.387177, 39.219826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370625, 31.901875, 38.617104>,  <37.734753, 32.207787, 39.308727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370625, 31.901875, 38.617104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174347, 32.238480, 38.707504>,  <37.056580, 32.440441, 38.761745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174347, 32.238480, 38.707504>,  <37.370625, 31.901875, 38.617104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174347, 32.238480, 38.707504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344124, 0.425450, -0.837001,
		-0.800498, -0.332940, -0.498350,
		-0.490695, 0.841512, 0.226000,
		37.027138, 32.490932, 38.775303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126003, 32.181870, 38.028572>,  <37.370625, 31.901875, 38.617104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126003, 32.181870, 38.028572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117771, 32.504913, 38.264317>,  <37.112831, 32.698738, 38.405762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117771, 32.504913, 38.264317>,  <37.126003, 32.181870, 38.028572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117771, 32.504913, 38.264317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355914, 0.556783, -0.750545,
		-0.934292, 0.194315, -0.298898,
		-0.020579, 0.807610, 0.589357,
		37.111599, 32.747196, 38.441124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863159, 32.640568, 37.565456>,  <37.126003, 32.181870, 38.028572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863159, 32.640568, 37.565456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037590, 32.851261, 37.857315>,  <37.142250, 32.977676, 38.032433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037590, 32.851261, 37.857315>,  <36.863159, 32.640568, 37.565456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037590, 32.851261, 37.857315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495731, 0.536085, -0.683274,
		-0.751056, 0.659672, -0.027341,
		0.436080, 0.526731, 0.729650,
		37.168415, 33.009281, 38.076210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918205, 33.378899, 37.349068>,  <36.863159, 32.640568, 37.565456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918205, 33.378899, 37.349068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200542, 33.354118, 37.631329>,  <37.369946, 33.339252, 37.800686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200542, 33.354118, 37.631329>,  <36.918205, 33.378899, 37.349068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200542, 33.354118, 37.631329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550313, 0.675201, -0.491182,
		-0.446032, 0.735028, 0.510676,
		0.705841, -0.061949, 0.705656,
		37.412296, 33.335533, 37.843025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144901, 34.107506, 37.557987>,  <36.918205, 33.378899, 37.349068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144901, 34.107506, 37.557987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.435699, 33.848862, 37.650394>,  <37.610180, 33.693676, 37.705837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.435699, 33.848862, 37.650394>,  <37.144901, 34.107506, 37.557987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435699, 33.848862, 37.650394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663011, 0.573557, -0.481091,
		0.178576, 0.502920, 0.845684,
		0.726998, -0.646609, 0.231019,
		37.653797, 33.654881, 37.719700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669930, 34.553185, 37.798935>,  <37.144901, 34.107506, 37.557987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669930, 34.553185, 37.798935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841953, 34.206982, 37.696209>,  <37.945168, 33.999260, 37.634575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841953, 34.206982, 37.696209>,  <37.669930, 34.553185, 37.798935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841953, 34.206982, 37.696209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728840, 0.500718, -0.466983,
		0.532766, 0.013655, 0.846152,
		0.430060, -0.865503, -0.256813,
		37.970970, 33.947330, 37.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414413, 34.745892, 37.928261>,  <37.669930, 34.553185, 37.798935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414413, 34.745892, 37.928261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389900, 34.440086, 37.671589>,  <38.375191, 34.256603, 37.517586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.389900, 34.440086, 37.671589>,  <38.414413, 34.745892, 37.928261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389900, 34.440086, 37.671589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739819, 0.396759, -0.543369,
		0.670008, -0.508030, 0.541289,
		-0.061286, -0.764518, -0.641683,
		38.371513, 34.210732, 37.479084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085999, 34.663563, 37.663879>,  <38.414413, 34.745892, 37.928261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085999, 34.663563, 37.663879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893280, 34.434742, 37.398357>,  <38.777649, 34.297451, 37.239044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893280, 34.434742, 37.398357>,  <39.085999, 34.663563, 37.663879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893280, 34.434742, 37.398357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663376, 0.256844, -0.702825,
		0.572545, -0.778968, 0.255738,
		-0.481793, -0.572049, -0.663803,
		38.748741, 34.263126, 37.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646130, 34.225487, 37.337490>,  <39.085999, 34.663563, 37.663879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646130, 34.225487, 37.337490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350307, 34.265705, 37.071274>,  <39.172813, 34.289837, 36.911545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.350307, 34.265705, 37.071274>,  <39.646130, 34.225487, 37.337490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350307, 34.265705, 37.071274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669443, 0.212692, -0.711764,
		0.069988, -0.971932, -0.224610,
		-0.739559, 0.100548, -0.665539,
		39.128441, 34.295868, 36.871613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900501, 33.882122, 36.746727>,  <39.646130, 34.225487, 37.337490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900501, 33.882122, 36.746727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599899, 34.106796, 36.608303>,  <39.419540, 34.241600, 36.525249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599899, 34.106796, 36.608303>,  <39.900501, 33.882122, 36.746727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599899, 34.106796, 36.608303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569603, 0.287754, -0.769902,
		-0.332860, -0.775701, -0.536183,
		-0.751503, 0.561681, -0.346060,
		39.374447, 34.275299, 36.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711975, 33.725941, 36.109142>,  <39.900501, 33.882122, 36.746727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711975, 33.725941, 36.109142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653030, 34.117519, 36.165630>,  <39.617664, 34.352467, 36.199524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.653030, 34.117519, 36.165630>,  <39.711975, 33.725941, 36.109142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653030, 34.117519, 36.165630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452488, 0.193685, -0.870483,
		-0.879511, -0.064375, -0.471505,
		-0.147361, 0.978949, 0.141219,
		39.608822, 34.411205, 36.207996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156403, 33.088581, 36.364719>,  <39.711975, 33.725941, 36.109142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156403, 33.088581, 36.364719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463760, 32.850365, 36.270992>,  <40.648174, 32.707436, 36.214756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463760, 32.850365, 36.270992>,  <40.156403, 33.088581, 36.364719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463760, 32.850365, 36.270992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085307, -0.458175, 0.884759,
		-0.634264, -0.659856, -0.402863,
		0.768395, -0.595538, -0.234314,
		40.694279, 32.671703, 36.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843624, 32.345284, 36.308201>,  <40.156403, 33.088581, 36.364719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843624, 32.345284, 36.308201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237919, 32.312901, 36.367207>,  <40.474495, 32.293468, 36.402611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237919, 32.312901, 36.367207>,  <39.843624, 32.345284, 36.308201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237919, 32.312901, 36.367207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166461, -0.597329, 0.784531,
		0.024597, -0.797899, -0.602289,
		0.985741, -0.080961, 0.147512,
		40.533642, 32.288612, 36.411461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917488, 31.644146, 36.290443>,  <39.843624, 32.345284, 36.308201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917488, 31.644146, 36.290443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209217, 31.828882, 36.492352>,  <40.384254, 31.939724, 36.613499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209217, 31.828882, 36.492352>,  <39.917488, 31.644146, 36.290443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209217, 31.828882, 36.492352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232720, -0.526334, 0.817810,
		0.643376, -0.713917, -0.276387,
		0.729321, 0.461839, 0.504774,
		40.428013, 31.967434, 36.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298851, 31.116148, 36.667099>,  <39.917488, 31.644146, 36.290443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298851, 31.116148, 36.667099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366291, 31.465334, 36.850189>,  <40.406754, 31.674845, 36.960041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.366291, 31.465334, 36.850189>,  <40.298851, 31.116148, 36.667099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366291, 31.465334, 36.850189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324086, -0.389457, 0.862143,
		0.930883, -0.293695, 0.217255,
		0.168595, 0.872964, 0.457721,
		40.416870, 31.727222, 36.987507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761024, 30.952694, 37.212658>,  <40.298851, 31.116148, 36.667099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761024, 30.952694, 37.212658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.580181, 31.295788, 37.310547>,  <40.471676, 31.501644, 37.369282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.580181, 31.295788, 37.310547>,  <40.761024, 30.952694, 37.212658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580181, 31.295788, 37.310547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394943, -0.438503, 0.807301,
		0.799762, 0.268335, 0.537007,
		-0.452107, 0.857736, 0.244721,
		40.444550, 31.553108, 37.383965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695446, 30.849970, 37.930809>,  <40.761024, 30.952694, 37.212658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695446, 30.849970, 37.930809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437500, 31.142004, 37.840366>,  <40.282730, 31.317225, 37.786102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437500, 31.142004, 37.840366>,  <40.695446, 30.849970, 37.930809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437500, 31.142004, 37.840366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687253, -0.424468, 0.589500,
		0.334411, 0.535540, 0.775478,
		-0.644867, 0.730085, -0.226104,
		40.244041, 31.361029, 37.772533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645512, 31.300873, 38.504787>,  <40.695446, 30.849970, 37.930809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645512, 31.300873, 38.504787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310566, 31.371895, 38.297985>,  <40.109600, 31.414509, 38.173904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310566, 31.371895, 38.297985>,  <40.645512, 31.300873, 38.504787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310566, 31.371895, 38.297985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545873, -0.321914, 0.773559,
		-0.029082, 0.929970, 0.366482,
		-0.837363, 0.177556, -0.517008,
		40.059357, 31.425161, 38.142883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121075, 31.535292, 39.018417>,  <40.645512, 31.300873, 38.504787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121075, 31.535292, 39.018417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903973, 31.437889, 38.696892>,  <39.773712, 31.379448, 38.503975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903973, 31.437889, 38.696892>,  <40.121075, 31.535292, 39.018417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903973, 31.437889, 38.696892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603702, -0.552261, 0.574936,
		-0.583916, 0.797317, 0.152740,
		-0.542758, -0.243505, -0.803815,
		39.741146, 31.364838, 38.455746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457817, 31.586767, 39.265942>,  <40.121075, 31.535292, 39.018417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457817, 31.586767, 39.265942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415569, 31.389956, 38.920280>,  <39.390221, 31.271870, 38.712883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415569, 31.389956, 38.920280>,  <39.457817, 31.586767, 39.265942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415569, 31.389956, 38.920280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679294, -0.598947, 0.424054,
		-0.726226, 0.631799, -0.270971,
		-0.105620, -0.492028, -0.864149,
		39.383884, 31.242348, 38.661037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742455, 31.370663, 39.336143>,  <39.457817, 31.586767, 39.265942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742455, 31.370663, 39.336143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887997, 31.131275, 39.050644>,  <38.975323, 30.987642, 38.879345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887997, 31.131275, 39.050644>,  <38.742455, 31.370663, 39.336143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887997, 31.131275, 39.050644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727337, -0.661249, 0.183661,
		-0.581883, 0.452312, -0.675889,
		0.363859, -0.598469, -0.713753,
		38.997154, 30.951735, 38.836517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133625, 31.174126, 38.912735>,  <38.742455, 31.370663, 39.336143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133625, 31.174126, 38.912735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426899, 30.904503, 38.876766>,  <38.602863, 30.742729, 38.855186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426899, 30.904503, 38.876766>,  <38.133625, 31.174126, 38.912735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426899, 30.904503, 38.876766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632905, -0.724756, 0.272324,
		-0.248730, -0.142755, -0.957995,
		0.733188, -0.674055, -0.089919,
		38.646854, 30.702286, 38.849789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818779, 30.553999, 38.763546>,  <38.133625, 31.174126, 38.912735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818779, 30.553999, 38.763546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180576, 30.411596, 38.857479>,  <38.397655, 30.326155, 38.913837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180576, 30.411596, 38.857479>,  <37.818779, 30.553999, 38.763546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180576, 30.411596, 38.857479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397889, -0.902628, 0.164154,
		0.153527, -0.241914, -0.958075,
		0.904496, -0.356005, 0.234832,
		38.451927, 30.304794, 38.927929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964024, 29.928240, 38.474869>,  <37.818779, 30.553999, 38.763546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964024, 29.928240, 38.474869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206913, 29.886395, 38.789913>,  <38.352646, 29.861286, 38.978939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206913, 29.886395, 38.789913>,  <37.964024, 29.928240, 38.474869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206913, 29.886395, 38.789913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607888, -0.699486, 0.375753,
		0.511616, -0.706947, -0.488338,
		0.607224, -0.104614, 0.787614,
		38.389080, 29.855011, 39.026196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072216, 29.215708, 38.536755>,  <37.964024, 29.928240, 38.474869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072216, 29.215708, 38.536755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159336, 29.376205, 38.892635>,  <38.211609, 29.472504, 39.106163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159336, 29.376205, 38.892635>,  <38.072216, 29.215708, 38.536755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159336, 29.376205, 38.892635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695719, -0.575499, 0.429855,
		0.684498, -0.712605, 0.153807,
		0.217801, 0.401242, 0.889701,
		38.224678, 29.496578, 39.159546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385651, 28.758757, 38.140945>,  <38.072216, 29.215708, 38.536755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385651, 28.758757, 38.140945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308334, 28.436565, 37.916859>,  <38.261944, 28.243250, 37.782406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308334, 28.436565, 37.916859>,  <38.385651, 28.758757, 38.140945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308334, 28.436565, 37.916859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611872, 0.347388, -0.710587,
		0.766975, -0.480131, 0.425703,
		-0.193291, -0.805478, -0.560217,
		38.250347, 28.194921, 37.748795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035717, 28.509882, 37.828491>,  <38.385651, 28.758757, 38.140945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035717, 28.509882, 37.828491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746273, 28.362604, 37.594971>,  <38.572605, 28.274237, 37.454861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746273, 28.362604, 37.594971>,  <39.035717, 28.509882, 37.828491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746273, 28.362604, 37.594971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579937, 0.134282, -0.803518,
		0.374245, -0.920000, 0.116361,
		-0.723612, -0.368195, -0.583796,
		38.529190, 28.252146, 37.419830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398880, 28.100624, 37.272964>,  <39.035717, 28.509882, 37.828491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398880, 28.100624, 37.272964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034321, 28.191198, 37.135509>,  <38.815586, 28.245543, 37.053036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034321, 28.191198, 37.135509>,  <39.398880, 28.100624, 37.272964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034321, 28.191198, 37.135509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398707, 0.279023, -0.873601,
		-0.101932, -0.933206, -0.344581,
		-0.911396, 0.226435, -0.343634,
		38.760902, 28.259129, 37.032421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427032, 27.867191, 36.577274>,  <39.398880, 28.100624, 37.272964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427032, 27.867191, 36.577274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124821, 28.126307, 36.616364>,  <38.943493, 28.281776, 36.639816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124821, 28.126307, 36.616364>,  <39.427032, 27.867191, 36.577274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124821, 28.126307, 36.616364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249431, 0.422380, -0.871424,
		-0.605777, -0.634007, -0.480698,
		-0.755526, 0.647789, 0.097727,
		38.898163, 28.320642, 36.645683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097927, 27.811888, 35.869598>,  <39.427032, 27.867191, 36.577274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097927, 27.811888, 35.869598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992130, 28.149530, 36.056160>,  <38.928654, 28.352116, 36.168098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992130, 28.149530, 36.056160>,  <39.097927, 27.811888, 35.869598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992130, 28.149530, 36.056160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339723, 0.534175, -0.774109,
		-0.902571, -0.046295, -0.428045,
		-0.264488, 0.844105, 0.466404,
		38.912785, 28.402761, 36.196079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837677, 28.134785, 35.421581>,  <39.097927, 27.811888, 35.869598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837677, 28.134785, 35.421581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940311, 28.424341, 35.677750>,  <39.001892, 28.598076, 35.831451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940311, 28.424341, 35.677750>,  <38.837677, 28.134785, 35.421581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940311, 28.424341, 35.677750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354024, 0.546166, -0.759190,
		-0.899349, 0.421526, -0.116134,
		0.256590, 0.723891, 0.640424,
		39.017288, 28.641508, 35.869877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621334, 28.732824, 35.061878>,  <38.837677, 28.134785, 35.421581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621334, 28.732824, 35.061878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878712, 28.860886, 35.340008>,  <39.033138, 28.937723, 35.506886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878712, 28.860886, 35.340008>,  <38.621334, 28.732824, 35.061878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878712, 28.860886, 35.340008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481293, 0.537143, -0.692701,
		-0.595262, 0.780371, 0.191533,
		0.643444, 0.320155, 0.695328,
		39.071743, 28.956932, 35.548607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577168, 29.396872, 34.987194>,  <38.621334, 28.732824, 35.061878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577168, 29.396872, 34.987194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.928028, 29.322065, 35.164112>,  <39.138546, 29.277182, 35.270264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.928028, 29.322065, 35.164112>,  <38.577168, 29.396872, 34.987194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928028, 29.322065, 35.164112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473274, 0.492658, -0.730274,
		-0.081329, 0.849890, 0.520646,
		0.877153, -0.187016, 0.442299,
		39.191174, 29.265961, 35.296803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859852, 29.999508, 35.079224>,  <38.577168, 29.396872, 34.987194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859852, 29.999508, 35.079224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160686, 29.736111, 35.090168>,  <39.341187, 29.578072, 35.096733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160686, 29.736111, 35.090168>,  <38.859852, 29.999508, 35.079224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160686, 29.736111, 35.090168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449425, 0.482056, -0.752090,
		0.482056, 0.577935, 0.658493,
		0.752090, -0.658493, 0.027360,
		39.386314, 29.538563, 35.098377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529087, 30.441483, 35.239441>,  <38.859852, 29.999508, 35.079224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529087, 30.441483, 35.239441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638058, 30.091400, 35.079540>,  <39.703438, 29.881351, 34.983601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638058, 30.091400, 35.079540>,  <39.529087, 30.441483, 35.239441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638058, 30.091400, 35.079540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594257, 0.479797, -0.645487,
		0.756733, -0.061708, 0.650805,
		0.272423, -0.875207, -0.399749,
		39.719784, 29.828838, 34.959614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247150, 30.558294, 35.355228>,  <39.529087, 30.441483, 35.239441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247150, 30.558294, 35.355228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.188271, 30.261299, 35.093834>,  <40.152943, 30.083103, 34.936996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.188271, 30.261299, 35.093834>,  <40.247150, 30.558294, 35.355228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188271, 30.261299, 35.093834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545017, 0.490451, -0.680010,
		0.825403, -0.456257, 0.332475,
		-0.147196, -0.742487, -0.653488,
		40.144112, 30.038553, 34.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864571, 30.406935, 34.884365>,  <40.247150, 30.558294, 35.355228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864571, 30.406935, 34.884365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618027, 30.224569, 34.627541>,  <40.470100, 30.115150, 34.473446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618027, 30.224569, 34.627541>,  <40.864571, 30.406935, 34.884365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618027, 30.224569, 34.627541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592379, 0.268756, -0.759512,
		0.518829, -0.848476, 0.104423,
		-0.616363, -0.455915, -0.642058,
		40.433117, 30.087795, 34.434925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290562, 30.119112, 34.379833>,  <40.864571, 30.406935, 34.884365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290562, 30.119112, 34.379833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926796, 30.161362, 34.218933>,  <40.708534, 30.186712, 34.122395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926796, 30.161362, 34.218933>,  <41.290562, 30.119112, 34.379833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926796, 30.161362, 34.218933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402482, 0.467092, -0.787295,
		0.104729, -0.877877, -0.467294,
		-0.909418, 0.105625, -0.402247,
		40.653969, 30.193048, 34.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314125, 29.943838, 33.675152>,  <41.290562, 30.119112, 34.379833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314125, 29.943838, 33.675152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.977245, 30.158272, 33.698154>,  <40.775116, 30.286932, 33.711956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.977245, 30.158272, 33.698154>,  <41.314125, 29.943838, 33.675152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977245, 30.158272, 33.698154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291549, 0.542547, -0.787808,
		-0.453533, -0.646728, -0.613230,
		-0.842203, 0.536084, 0.057510,
		40.724583, 30.319098, 33.715408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.555386, 26.418528, 34.355980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514244, 26.763290, 34.554592>,  <35.489559, 26.970148, 34.673759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514244, 26.763290, 34.554592>,  <35.555386, 26.418528, 34.355980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514244, 26.763290, 34.554592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390686, -0.494066, 0.776700,
		0.914760, -0.114101, 0.387551,
		-0.102854, 0.861905, 0.496529,
		35.483387, 27.021862, 34.703552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906956, 26.334932, 35.040722>,  <35.555386, 26.418528, 34.355980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906956, 26.334932, 35.040722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622852, 26.614414, 35.075012>,  <35.452393, 26.782104, 35.095585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622852, 26.614414, 35.075012>,  <35.906956, 26.334932, 35.040722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622852, 26.614414, 35.075012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358203, -0.463553, 0.810438,
		0.605994, 0.544912, 0.579519,
		-0.710255, 0.698706, 0.085721,
		35.409775, 26.824026, 35.100727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769119, 26.403709, 35.782082>,  <35.906956, 26.334932, 35.040722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769119, 26.403709, 35.782082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437359, 26.582180, 35.647602>,  <35.238304, 26.689262, 35.566914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437359, 26.582180, 35.647602>,  <35.769119, 26.403709, 35.782082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437359, 26.582180, 35.647602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513046, -0.370152, 0.774449,
		0.221096, 0.814810, 0.535912,
		-0.829397, 0.446175, -0.336196,
		35.188541, 26.716032, 35.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463322, 26.859449, 36.321449>,  <35.769119, 26.403709, 35.782082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463322, 26.859449, 36.321449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176781, 26.754353, 36.062901>,  <35.004856, 26.691294, 35.907772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176781, 26.754353, 36.062901>,  <35.463322, 26.859449, 36.321449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176781, 26.754353, 36.062901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538267, -0.381353, 0.751557,
		-0.443964, 0.886304, 0.131758,
		-0.716355, -0.262743, -0.646376,
		34.961876, 26.675529, 35.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930126, 27.110401, 36.673279>,  <35.463322, 26.859449, 36.321449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930126, 27.110401, 36.673279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792187, 26.832418, 36.420895>,  <34.709423, 26.665628, 36.269463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792187, 26.832418, 36.420895>,  <34.930126, 27.110401, 36.673279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792187, 26.832418, 36.420895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636082, -0.321310, 0.701541,
		-0.690277, 0.643267, -0.331248,
		-0.344845, -0.694958, -0.630964,
		34.688732, 26.623932, 36.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318901, 26.979115, 36.910667>,  <34.930126, 27.110401, 36.673279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318901, 26.979115, 36.910667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283066, 26.687889, 36.638817>,  <34.261562, 26.513153, 36.475704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283066, 26.687889, 36.638817>,  <34.318901, 26.979115, 36.910667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283066, 26.687889, 36.638817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438836, -0.583710, 0.683158,
		-0.894090, 0.359451, -0.267206,
		-0.089591, -0.728064, -0.679629,
		34.256187, 26.469469, 36.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570110, 26.825207, 36.829403>,  <34.318901, 26.979115, 36.910667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570110, 26.825207, 36.829403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775311, 26.499073, 36.722027>,  <33.898430, 26.303392, 36.657600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775311, 26.499073, 36.722027>,  <33.570110, 26.825207, 36.829403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775311, 26.499073, 36.722027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561817, -0.555357, 0.613140,
		-0.648995, -0.163725, -0.742967,
		0.512998, -0.815337, -0.268441,
		33.929211, 26.254473, 36.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060535, 26.230688, 36.618095>,  <33.570110, 26.825207, 36.829403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060535, 26.230688, 36.618095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408115, 26.059507, 36.717518>,  <33.616665, 25.956799, 36.777172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408115, 26.059507, 36.717518>,  <33.060535, 26.230688, 36.618095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408115, 26.059507, 36.717518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435917, -0.424068, 0.793815,
		-0.234306, -0.798139, -0.555045,
		0.868952, -0.427949, 0.248561,
		33.668800, 25.931122, 36.792088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866444, 25.577021, 36.829903>,  <33.060535, 26.230688, 36.618095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866444, 25.577021, 36.829903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224072, 25.631992, 37.000435>,  <33.438648, 25.664976, 37.102753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224072, 25.631992, 37.000435>,  <32.866444, 25.577021, 36.829903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224072, 25.631992, 37.000435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323225, -0.460991, 0.826446,
		0.310115, -0.876698, -0.367735,
		0.894066, 0.137432, 0.426331,
		33.492290, 25.673222, 37.128334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108860, 24.999136, 37.058258>,  <32.866444, 25.577021, 36.829903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108860, 24.999136, 37.058258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320335, 25.241804, 37.295723>,  <33.447220, 25.387405, 37.438202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320335, 25.241804, 37.295723>,  <33.108860, 24.999136, 37.058258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320335, 25.241804, 37.295723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295036, -0.524454, 0.798687,
		0.795890, -0.597410, -0.098283,
		0.528689, 0.606670, 0.593666,
		33.478943, 25.423805, 37.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396297, 24.558517, 37.557106>,  <33.108860, 24.999136, 37.058258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396297, 24.558517, 37.557106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405380, 24.918221, 37.731834>,  <33.410831, 25.134043, 37.836674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405380, 24.918221, 37.731834>,  <33.396297, 24.558517, 37.557106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405380, 24.918221, 37.731834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322610, -0.406971, 0.854574,
		0.946259, -0.160333, 0.280868,
		0.022711, 0.899260, 0.436826,
		33.412193, 25.187998, 37.862881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648426, 24.471716, 38.240757>,  <33.396297, 24.558517, 37.557106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648426, 24.471716, 38.240757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474373, 24.830029, 38.277050>,  <33.369942, 25.045017, 38.298828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474373, 24.830029, 38.277050>,  <33.648426, 24.471716, 38.240757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474373, 24.830029, 38.277050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150469, -0.171709, 0.973589,
		0.887704, 0.409988, 0.209504,
		-0.435133, 0.895783, 0.090736,
		33.343834, 25.098763, 38.304272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878811, 24.969534, 38.737522>,  <33.648426, 24.471716, 38.240757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878811, 24.969534, 38.737522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484200, 25.029417, 38.711155>,  <33.247433, 25.065348, 38.695335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484200, 25.029417, 38.711155>,  <33.878811, 24.969534, 38.737522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484200, 25.029417, 38.711155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071692, -0.033474, 0.996865,
		0.147031, 0.988164, 0.043756,
		-0.986530, 0.149707, -0.065922,
		33.188240, 25.074329, 38.691380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826286, 25.674814, 38.947063>,  <33.878811, 24.969534, 38.737522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826286, 25.674814, 38.947063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560978, 25.380114, 38.999638>,  <33.401794, 25.203293, 39.031181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560978, 25.380114, 38.999638>,  <33.826286, 25.674814, 38.947063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560978, 25.380114, 38.999638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179439, 0.013942, 0.983670,
		-0.726552, 0.676020, 0.122955,
		-0.663267, -0.736751, 0.131435,
		33.362000, 25.159088, 39.039066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854401, 25.258980, 39.523418>,  <33.826286, 25.674814, 38.947063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854401, 25.258980, 39.523418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063557, 25.202654, 39.859692>,  <34.189053, 25.168858, 40.061455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063557, 25.202654, 39.859692>,  <33.854401, 25.258980, 39.523418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063557, 25.202654, 39.859692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566028, 0.794784, -0.218931,
		-0.637335, 0.590329, 0.495293,
		0.522893, -0.140817, 0.840686,
		34.220425, 25.160408, 40.111897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779175, 25.994720, 39.846329>,  <33.854401, 25.258980, 39.523418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779175, 25.994720, 39.846329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067638, 25.794603, 40.038013>,  <34.240715, 25.674534, 40.153023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067638, 25.794603, 40.038013>,  <33.779175, 25.994720, 39.846329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067638, 25.794603, 40.038013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671347, 0.675387, -0.305197,
		-0.170964, 0.541811, 0.822929,
		0.721155, -0.500293, 0.479210,
		34.283985, 25.644516, 40.181778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081635, 26.493607, 40.242538>,  <33.779175, 25.994720, 39.846329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081635, 26.493607, 40.242538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355316, 26.206762, 40.189438>,  <34.519524, 26.034657, 40.157578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355316, 26.206762, 40.189438>,  <34.081635, 26.493607, 40.242538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355316, 26.206762, 40.189438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607793, 0.661288, -0.439643,
		0.403061, 0.220117, 0.888308,
		0.684200, -0.717110, -0.132754,
		34.560577, 25.991629, 40.149612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737343, 26.860971, 40.404640>,  <34.081635, 26.493607, 40.242538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737343, 26.860971, 40.404640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.842754, 26.518045, 40.227749>,  <34.906002, 26.312290, 40.121613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.842754, 26.518045, 40.227749>,  <34.737343, 26.860971, 40.404640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842754, 26.518045, 40.227749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761586, 0.466273, -0.450085,
		0.592063, -0.218183, 0.775795,
		0.263532, -0.857313, -0.442228,
		34.921814, 26.260851, 40.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506351, 26.696581, 40.555317>,  <34.737343, 26.860971, 40.404640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506351, 26.696581, 40.555317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403294, 26.507196, 40.218399>,  <35.341457, 26.393566, 40.016251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403294, 26.507196, 40.218399>,  <35.506351, 26.696581, 40.555317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403294, 26.507196, 40.218399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844350, 0.313502, -0.434499,
		0.469778, -0.823135, 0.318995,
		-0.257646, -0.473461, -0.842290,
		35.326000, 26.365158, 39.965714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187180, 26.434282, 40.291004>,  <35.506351, 26.696581, 40.555317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187180, 26.434282, 40.291004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932747, 26.388927, 39.985706>,  <35.780087, 26.361715, 39.802528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932747, 26.388927, 39.985706>,  <36.187180, 26.434282, 40.291004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932747, 26.388927, 39.985706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766242, 0.023783, -0.642111,
		0.090961, -0.993266, 0.071756,
		-0.636081, -0.113390, -0.763246,
		35.741924, 26.354912, 39.756733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593979, 26.079453, 40.006172>,  <36.187180, 26.434282, 40.291004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593979, 26.079453, 40.006172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331387, 26.230173, 39.744774>,  <36.173832, 26.320606, 39.587936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331387, 26.230173, 39.744774>,  <36.593979, 26.079453, 40.006172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331387, 26.230173, 39.744774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739997, 0.153537, -0.654852,
		-0.146413, -0.913481, -0.379626,
		-0.656481, 0.376801, -0.653494,
		36.134441, 26.343214, 39.548725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803642, 25.804008, 39.349228>,  <36.593979, 26.079453, 40.006172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803642, 25.804008, 39.349228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572830, 26.119293, 39.263664>,  <36.434341, 26.308464, 39.212326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572830, 26.119293, 39.263664>,  <36.803642, 25.804008, 39.349228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572830, 26.119293, 39.263664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634824, 0.268078, -0.724661,
		-0.513844, -0.553943, -0.655066,
		-0.577030, 0.788214, -0.213906,
		36.399723, 26.355757, 39.199493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712833, 25.822432, 38.574554>,  <36.803642, 25.804008, 39.349228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712833, 25.822432, 38.574554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648930, 26.193811, 38.708694>,  <36.610588, 26.416639, 38.789181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648930, 26.193811, 38.708694>,  <36.712833, 25.822432, 38.574554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648930, 26.193811, 38.708694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677165, 0.350259, -0.647121,
		-0.718279, 0.123704, -0.684670,
		-0.159760, 0.928448, 0.335352,
		36.601002, 26.472345, 38.809299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863678, 26.229921, 37.939991>,  <36.712833, 25.822432, 38.574554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863678, 26.229921, 37.939991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891018, 26.499773, 38.233986>,  <36.907421, 26.661684, 38.410381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891018, 26.499773, 38.233986>,  <36.863678, 26.229921, 37.939991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891018, 26.499773, 38.233986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663126, 0.519697, -0.538682,
		-0.745381, 0.524206, -0.411844,
		0.068346, 0.674628, 0.734987,
		36.911522, 26.702162, 38.454483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702244, 27.001497, 37.643017>,  <36.863678, 26.229921, 37.939991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702244, 27.001497, 37.643017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939243, 26.985638, 37.964855>,  <37.081444, 26.976122, 38.157959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939243, 26.985638, 37.964855>,  <36.702244, 27.001497, 37.643017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939243, 26.985638, 37.964855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687589, 0.545285, -0.479464,
		-0.419723, 0.837312, 0.350344,
		0.592498, -0.039650, 0.804595,
		37.116993, 26.973743, 38.206234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861828, 27.678108, 37.733620>,  <36.702244, 27.001497, 37.643017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861828, 27.678108, 37.733620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140308, 27.500290, 37.959072>,  <37.307396, 27.393599, 38.094345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140308, 27.500290, 37.959072>,  <36.861828, 27.678108, 37.733620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140308, 27.500290, 37.959072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713054, 0.518838, -0.471552,
		-0.082809, 0.730197, 0.678200,
		0.696202, -0.444545, 0.563634,
		37.349171, 27.366926, 38.128162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183449, 28.234497, 37.875046>,  <36.861828, 27.678108, 37.733620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183449, 28.234497, 37.875046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429672, 27.933369, 37.968296>,  <37.577404, 27.752691, 38.024246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429672, 27.933369, 37.968296>,  <37.183449, 28.234497, 37.875046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429672, 27.933369, 37.968296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782941, 0.550397, -0.289942,
		0.089962, 0.361001, 0.928216,
		0.615557, -0.752822, 0.233127,
		37.614338, 27.707521, 38.038235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683918, 28.565760, 38.295418>,  <37.183449, 28.234497, 37.875046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683918, 28.565760, 38.295418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864975, 28.246889, 38.135605>,  <37.973610, 28.055567, 38.039715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864975, 28.246889, 38.135605>,  <37.683918, 28.565760, 38.295418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864975, 28.246889, 38.135605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643026, 0.602230, -0.473113,
		0.617766, -0.042762, 0.785198,
		0.452639, -0.797177, -0.399534,
		38.000767, 28.007736, 38.015743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096748, 28.566746, 38.964195>,  <37.683918, 28.565760, 38.295418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096748, 28.566746, 38.964195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079552, 28.896120, 39.190506>,  <38.069233, 29.093744, 39.326294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079552, 28.896120, 39.190506>,  <38.096748, 28.566746, 38.964195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079552, 28.896120, 39.190506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503438, -0.507006, 0.699639,
		0.862961, -0.254755, 0.436347,
		-0.042994, 0.823435, 0.565780,
		38.066654, 29.143150, 39.360241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264435, 28.300049, 39.583206>,  <38.096748, 28.566746, 38.964195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264435, 28.300049, 39.583206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.074226, 28.645058, 39.652409>,  <37.960102, 28.852064, 39.693928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.074226, 28.645058, 39.652409>,  <38.264435, 28.300049, 39.583206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074226, 28.645058, 39.652409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566875, -0.450827, 0.689498,
		0.672703, 0.229801, 0.703322,
		-0.475524, 0.862523, 0.173004,
		37.931568, 28.903814, 39.704311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199852, 28.439611, 40.342884>,  <38.264435, 28.300049, 39.583206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199852, 28.439611, 40.342884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914902, 28.670391, 40.183056>,  <37.743931, 28.808859, 40.087158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914902, 28.670391, 40.183056>,  <38.199852, 28.439611, 40.342884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914902, 28.670391, 40.183056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556081, -0.116710, 0.822893,
		0.428132, 0.808400, 0.403970,
		-0.712374, 0.576947, -0.399569,
		37.701191, 28.843475, 40.063187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149601, 28.843912, 40.941010>,  <38.199852, 28.439611, 40.342884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149601, 28.843912, 40.941010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828487, 28.883909, 40.705879>,  <37.635818, 28.907907, 40.564800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828487, 28.883909, 40.705879>,  <38.149601, 28.843912, 40.941010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828487, 28.883909, 40.705879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596021, -0.163122, 0.786225,
		-0.017272, 0.981526, 0.190549,
		-0.802783, 0.099992, -0.587828,
		37.587654, 28.913906, 40.529530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691490, 29.250925, 41.189407>,  <38.149601, 28.843912, 40.941010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691490, 29.250925, 41.189407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430428, 29.059052, 40.954823>,  <37.273788, 28.943928, 40.814072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430428, 29.059052, 40.954823>,  <37.691490, 29.250925, 41.189407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430428, 29.059052, 40.954823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436080, -0.395157, 0.808508,
		-0.619573, 0.783425, 0.048722,
		-0.652659, -0.479683, -0.586465,
		37.234631, 28.915146, 40.778885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028725, 29.377970, 41.517418>,  <37.691490, 29.250925, 41.189407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028725, 29.377970, 41.517418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030754, 29.051811, 41.285866>,  <37.031971, 28.856117, 41.146935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030754, 29.051811, 41.285866>,  <37.028725, 29.377970, 41.517418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030754, 29.051811, 41.285866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485928, -0.507958, 0.711234,
		-0.873984, 0.277688, -0.398799,
		0.005072, -0.815394, -0.578884,
		37.032276, 28.807194, 41.112202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210354, 29.234404, 41.459690>,  <37.028725, 29.377970, 41.517418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210354, 29.234404, 41.459690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430447, 28.909586, 41.381889>,  <36.562500, 28.714695, 41.335209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430447, 28.909586, 41.381889>,  <36.210354, 29.234404, 41.459690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430447, 28.909586, 41.381889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409807, -0.465566, 0.784415,
		-0.727535, -0.351897, -0.588949,
		0.550227, -0.812045, -0.194506,
		36.595516, 28.665972, 41.323536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628777, 29.537363, 41.107101>,  <36.210354, 29.234404, 41.459690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628777, 29.537363, 41.107101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400459, 29.840872, 41.232616>,  <35.263470, 30.022978, 41.307926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400459, 29.840872, 41.232616>,  <35.628777, 29.537363, 41.107101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400459, 29.840872, 41.232616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517216, 0.629062, -0.580317,
		-0.637718, -0.168947, -0.751513,
		-0.570791, 0.758774, 0.313783,
		35.229221, 30.068504, 41.326752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409790, 29.989796, 40.419388>,  <35.628777, 29.537363, 41.107101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409790, 29.989796, 40.419388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318501, 30.222746, 40.731480>,  <35.263725, 30.362516, 40.918736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318501, 30.222746, 40.731480>,  <35.409790, 29.989796, 40.419388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318501, 30.222746, 40.731480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269403, 0.807860, -0.524198,
		-0.935594, 0.090561, -0.341267,
		-0.228224, 0.582375, 0.780226,
		35.250034, 30.397459, 40.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039021, 30.521551, 40.146782>,  <35.409790, 29.989796, 40.419388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039021, 30.521551, 40.146782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226063, 30.656839, 40.473450>,  <35.338287, 30.738012, 40.669449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226063, 30.656839, 40.473450>,  <35.039021, 30.521551, 40.146782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226063, 30.656839, 40.473450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313584, 0.800334, -0.511009,
		-0.826443, 0.495046, 0.268182,
		0.467608, 0.338222, 0.816669,
		35.366344, 30.758307, 40.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956776, 31.184935, 40.002659>,  <35.039021, 30.521551, 40.146782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956776, 31.184935, 40.002659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217052, 31.165249, 40.305756>,  <35.373219, 31.153439, 40.487614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217052, 31.165249, 40.305756>,  <34.956776, 31.184935, 40.002659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217052, 31.165249, 40.305756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449526, 0.829212, -0.332167,
		-0.611981, 0.556764, 0.561687,
		0.650696, -0.049213, 0.757742,
		35.412262, 31.150484, 40.533077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060760, 31.863403, 40.228168>,  <34.956776, 31.184935, 40.002659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060760, 31.863403, 40.228168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371235, 31.659739, 40.376919>,  <35.557518, 31.537540, 40.466167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371235, 31.659739, 40.376919>,  <35.060760, 31.863403, 40.228168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371235, 31.659739, 40.376919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626425, 0.689736, -0.363119,
		-0.071608, 0.514799, 0.854315,
		0.776185, -0.509162, 0.371874,
		35.604092, 31.506990, 40.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476536, 32.333141, 40.531883>,  <35.060760, 31.863403, 40.228168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476536, 32.333141, 40.531883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694984, 32.014458, 40.428337>,  <35.826054, 31.823248, 40.366211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694984, 32.014458, 40.428337>,  <35.476536, 32.333141, 40.531883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694984, 32.014458, 40.428337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638966, 0.596005, -0.486313,
		0.541733, 0.100181, 0.834559,
		0.546121, -0.796707, -0.258863,
		35.858822, 31.775446, 40.350677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198833, 32.512791, 40.659546>,  <35.476536, 32.333141, 40.531883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198833, 32.512791, 40.659546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205814, 32.208641, 40.399845>,  <36.210003, 32.026150, 40.244026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205814, 32.208641, 40.399845>,  <36.198833, 32.512791, 40.659546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205814, 32.208641, 40.399845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659803, 0.496645, -0.563918,
		0.751236, -0.418535, 0.510365,
		0.017451, -0.760376, -0.649249,
		36.211048, 31.980528, 40.205070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.632605, 27.030464, 38.856346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.901148, 26.750195, 38.759735>,  <32.062275, 26.582033, 38.701767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.901148, 26.750195, 38.759735>,  <31.632605, 27.030464, 38.856346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901148, 26.750195, 38.759735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658936, 0.713482, -0.238216,
		0.339238, 0.000776, 0.940700,
		0.671358, -0.700673, -0.241529,
		32.102554, 26.539993, 38.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325520, 27.176556, 39.176540>,  <31.632605, 27.030464, 38.856346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325520, 27.176556, 39.176540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.384026, 26.975065, 38.835983>,  <32.419128, 26.854172, 38.631649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.384026, 26.975065, 38.835983>,  <32.325520, 27.176556, 39.176540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384026, 26.975065, 38.835983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610845, 0.722959, -0.322797,
		0.778122, -0.472855, 0.413442,
		0.146265, -0.503725, -0.851392,
		32.427906, 26.823948, 38.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040726, 27.392044, 38.987923>,  <32.325520, 27.176556, 39.176540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040726, 27.392044, 38.987923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870686, 27.223455, 38.667511>,  <32.768661, 27.122303, 38.475262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870686, 27.223455, 38.667511>,  <33.040726, 27.392044, 38.987923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870686, 27.223455, 38.667511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504350, 0.624569, -0.596275,
		0.751613, -0.657477, -0.052935,
		-0.425099, -0.421471, -0.801033,
		32.743156, 27.097013, 38.427200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561111, 27.058886, 38.581425>,  <33.040726, 27.392044, 38.987923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561111, 27.058886, 38.581425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251781, 27.188826, 38.363640>,  <33.066185, 27.266790, 38.232967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251781, 27.188826, 38.363640>,  <33.561111, 27.058886, 38.581425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251781, 27.188826, 38.363640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607092, 0.626984, -0.488190,
		0.182783, -0.708070, -0.682076,
		-0.773324, 0.324850, -0.544466,
		33.019783, 27.286280, 38.200298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860962, 27.215639, 37.977478>,  <33.561111, 27.058886, 38.581425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860962, 27.215639, 37.977478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523811, 27.430580, 37.966122>,  <33.321522, 27.559544, 37.959309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.523811, 27.430580, 37.966122>,  <33.860962, 27.215639, 37.977478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523811, 27.430580, 37.966122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447394, 0.670500, -0.591834,
		-0.298985, -0.511549, -0.805559,
		-0.842880, 0.537352, -0.028394,
		33.270947, 27.591785, 37.957603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774723, 27.388498, 37.305542>,  <33.860962, 27.215639, 37.977478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774723, 27.388498, 37.305542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.544415, 27.652655, 37.498363>,  <33.406231, 27.811150, 37.614056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.544415, 27.652655, 37.498363>,  <33.774723, 27.388498, 37.305542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544415, 27.652655, 37.498363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528024, 0.750481, -0.397453,
		-0.624246, 0.025694, -0.780805,
		-0.575768, 0.660392, 0.482052,
		33.371685, 27.850773, 37.642979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760094, 27.980017, 36.817883>,  <33.774723, 27.388498, 37.305542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760094, 27.980017, 36.817883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.617859, 28.143356, 37.154171>,  <33.532516, 28.241360, 37.355942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.617859, 28.143356, 37.154171>,  <33.760094, 27.980017, 36.817883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617859, 28.143356, 37.154171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262633, 0.906921, -0.329420,
		-0.896983, 0.103662, -0.429738,
		-0.355590, 0.408348, 0.840718,
		33.511181, 28.265862, 37.406387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150444, 28.436308, 36.642769>,  <33.760094, 27.980017, 36.817883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150444, 28.436308, 36.642769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326553, 28.552391, 36.982635>,  <33.432220, 28.622040, 37.186558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.326553, 28.552391, 36.982635>,  <33.150444, 28.436308, 36.642769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326553, 28.552391, 36.982635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411686, 0.775736, -0.478277,
		-0.797918, 0.560370, 0.222062,
		0.440274, 0.290206, 0.849670,
		33.458637, 28.639452, 37.237537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913692, 29.053648, 36.800957>,  <33.150444, 28.436308, 36.642769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913692, 29.053648, 36.800957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254826, 29.051329, 37.009815>,  <33.459507, 29.049938, 37.135132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254826, 29.051329, 37.009815>,  <32.913692, 29.053648, 36.800957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254826, 29.051329, 37.009815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242756, 0.889715, -0.386621,
		-0.462322, 0.456479, 0.760187,
		0.852835, -0.005796, 0.522148,
		33.510677, 29.049589, 37.166458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898392, 29.781803, 37.068016>,  <32.913692, 29.053648, 36.800957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898392, 29.781803, 37.068016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.266365, 29.631027, 37.111176>,  <33.487148, 29.540562, 37.137074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.266365, 29.631027, 37.111176>,  <32.898392, 29.781803, 37.068016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266365, 29.631027, 37.111176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390864, 0.860035, -0.327971,
		0.030825, 0.343886, 0.938505,
		0.919932, -0.376938, 0.107903,
		33.542343, 29.517946, 37.143547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318710, 30.296427, 37.370670>,  <32.898392, 29.781803, 37.068016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318710, 30.296427, 37.370670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.576801, 30.052946, 37.185993>,  <33.731655, 29.906858, 37.075188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.576801, 30.052946, 37.185993>,  <33.318710, 30.296427, 37.370670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576801, 30.052946, 37.185993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455533, 0.791671, -0.407121,
		0.613326, 0.052368, 0.788092,
		0.645229, -0.608700, -0.461697,
		33.770370, 29.870337, 37.047485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055794, 30.558001, 37.476460>,  <33.318710, 30.296427, 37.370670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055794, 30.558001, 37.476460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.091373, 30.300190, 37.172703>,  <34.112720, 30.145504, 36.990448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.091373, 30.300190, 37.172703>,  <34.055794, 30.558001, 37.476460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091373, 30.300190, 37.172703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549795, 0.667512, -0.502149,
		0.830550, -0.372844, 0.413732,
		0.088948, -0.644527, -0.759390,
		34.118057, 30.106833, 36.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397404, 30.998503, 37.893627>,  <34.055794, 30.558001, 37.476460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397404, 30.998503, 37.893627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.229481, 31.314571, 38.072243>,  <34.128727, 31.504213, 38.179413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.229481, 31.314571, 38.072243>,  <34.397404, 30.998503, 37.893627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229481, 31.314571, 38.072243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437161, -0.607196, 0.663477,
		0.795396, 0.083321, 0.600335,
		-0.419803, 0.790171, 0.446537,
		34.103539, 31.551622, 38.206203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563538, 30.922188, 38.578781>,  <34.397404, 30.998503, 37.893627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563538, 30.922188, 38.578781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245632, 31.164942, 38.576126>,  <34.054890, 31.310595, 38.574535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245632, 31.164942, 38.576126>,  <34.563538, 30.922188, 38.578781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245632, 31.164942, 38.576126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451108, -0.583380, 0.675404,
		0.406021, 0.539779, 0.737418,
		-0.794763, 0.606883, -0.006634,
		34.007202, 31.347006, 38.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392212, 30.877012, 39.294411>,  <34.563538, 30.922188, 38.578781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392212, 30.877012, 39.294411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.079403, 31.031166, 39.098488>,  <33.891716, 31.123659, 38.980934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.079403, 31.031166, 39.098488>,  <34.392212, 30.877012, 39.294411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079403, 31.031166, 39.098488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620090, -0.402143, 0.673624,
		0.062632, 0.830518, 0.553460,
		-0.782026, 0.385385, -0.489809,
		33.844795, 31.146782, 38.951546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843365, 31.207869, 39.800858>,  <34.392212, 30.877012, 39.294411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843365, 31.207869, 39.800858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662605, 31.104918, 39.459202>,  <33.554150, 31.043148, 39.254208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.662605, 31.104918, 39.459202>,  <33.843365, 31.207869, 39.800858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662605, 31.104918, 39.459202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674956, -0.527405, 0.516022,
		-0.583286, 0.809693, 0.064616,
		-0.451898, -0.257375, -0.854135,
		33.527035, 31.027704, 39.202961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167095, 30.987696, 39.997009>,  <33.843365, 31.207869, 39.800858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167095, 30.987696, 39.997009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193012, 30.838999, 39.626579>,  <33.208561, 30.749781, 39.404324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193012, 30.838999, 39.626579>,  <33.167095, 30.987696, 39.997009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193012, 30.838999, 39.626579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599275, -0.756538, 0.261763,
		-0.797917, 0.538012, -0.271793,
		0.064790, -0.371744, -0.926072,
		33.212448, 30.727476, 39.348759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566593, 30.754969, 39.870777>,  <33.167095, 30.987696, 39.997009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566593, 30.754969, 39.870777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796349, 30.556116, 39.610641>,  <32.934204, 30.436804, 39.454559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796349, 30.556116, 39.610641>,  <32.566593, 30.754969, 39.870777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796349, 30.556116, 39.610641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449482, -0.855525, 0.256989,
		-0.684135, 0.144702, -0.714857,
		0.574391, -0.497131, -0.650335,
		32.968666, 30.406977, 39.415543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133633, 30.358641, 39.405781>,  <32.566593, 30.754969, 39.870777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133633, 30.358641, 39.405781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483585, 30.168270, 39.369839>,  <32.693558, 30.054047, 39.348274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483585, 30.168270, 39.369839>,  <32.133633, 30.358641, 39.405781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483585, 30.168270, 39.369839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431732, -0.850409, 0.300686,
		-0.219520, -0.224271, -0.949481,
		0.874882, -0.475928, -0.089857,
		32.746052, 30.025492, 39.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055901, 29.699142, 39.042858>,  <32.133633, 30.358641, 39.405781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055901, 29.699142, 39.042858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410488, 29.648552, 39.220924>,  <32.623241, 29.618196, 39.327766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.410488, 29.648552, 39.220924>,  <32.055901, 29.699142, 39.042858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410488, 29.648552, 39.220924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361338, -0.790173, 0.495037,
		0.289150, -0.599692, -0.746165,
		0.886469, -0.126478, 0.445170,
		32.676430, 29.610609, 39.354477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243965, 29.030008, 38.917362>,  <32.055901, 29.699142, 39.042858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243965, 29.030008, 38.917362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482533, 29.126076, 39.223724>,  <32.625671, 29.183716, 39.407539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482533, 29.126076, 39.223724>,  <32.243965, 29.030008, 38.917362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482533, 29.126076, 39.223724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328478, -0.797602, 0.505899,
		0.732387, -0.553308, -0.396812,
		0.596416, 0.240170, 0.765903,
		32.661457, 29.198126, 39.453495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532982, 28.391062, 39.081894>,  <32.243965, 29.030008, 38.917362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532982, 28.391062, 39.081894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.576790, 28.630724, 39.399136>,  <32.603077, 28.774521, 39.589481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.576790, 28.630724, 39.399136>,  <32.532982, 28.391062, 39.081894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576790, 28.630724, 39.399136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343818, -0.725818, 0.595800,
		0.932627, -0.337939, 0.126506,
		0.109524, 0.599154, 0.793107,
		32.609646, 28.810471, 39.637066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982433, 28.052507, 39.584908>,  <32.532982, 28.391062, 39.081894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982433, 28.052507, 39.584908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753155, 28.316242, 39.779522>,  <32.615589, 28.474483, 39.896290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.753155, 28.316242, 39.779522>,  <32.982433, 28.052507, 39.584908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753155, 28.316242, 39.779522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327442, -0.728598, 0.601603,
		0.751151, 0.185524, 0.633524,
		-0.573197, 0.659337, 0.486539,
		32.581196, 28.514044, 39.925484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043118, 27.758011, 40.238907>,  <32.982433, 28.052507, 39.584908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043118, 27.758011, 40.238907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764774, 28.042665, 40.277603>,  <32.597767, 28.213457, 40.300819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764774, 28.042665, 40.277603>,  <33.043118, 27.758011, 40.238907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764774, 28.042665, 40.277603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413395, -0.507041, 0.756316,
		0.587271, 0.486298, 0.647014,
		-0.695858, 0.711635, 0.096737,
		32.556019, 28.256157, 40.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082161, 28.078180, 40.994770>,  <33.043118, 27.758011, 40.238907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082161, 28.078180, 40.994770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.727295, 28.087801, 40.810440>,  <32.514374, 28.093573, 40.699841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.727295, 28.087801, 40.810440>,  <33.082161, 28.078180, 40.994770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727295, 28.087801, 40.810440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364363, -0.649300, 0.667570,
		-0.283158, 0.760152, 0.584799,
		-0.887165, 0.024052, -0.460826,
		32.461147, 28.095016, 40.672192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634235, 28.126249, 41.529934>,  <33.082161, 28.078180, 40.994770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634235, 28.126249, 41.529934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.416790, 27.986044, 41.224876>,  <32.286324, 27.901920, 41.041843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.416790, 27.986044, 41.224876>,  <32.634235, 28.126249, 41.529934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416790, 27.986044, 41.224876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403607, -0.687516, 0.603675,
		-0.735925, 0.635974, 0.232275,
		-0.543615, -0.350511, -0.762643,
		32.253704, 27.880890, 40.996082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561253, 28.752815, 42.060535>,  <32.634235, 28.126249, 41.529934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561253, 28.752815, 42.060535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.818695, 28.643532, 42.346508>,  <32.973160, 28.577963, 42.518093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.818695, 28.643532, 42.346508>,  <32.561253, 28.752815, 42.060535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818695, 28.643532, 42.346508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676355, 0.640224, -0.364221,
		-0.358209, 0.717963, 0.596838,
		0.643607, -0.273207, 0.714932,
		33.011776, 28.561569, 42.560989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752033, 29.347759, 42.485229>,  <32.561253, 28.752815, 42.060535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752033, 29.347759, 42.485229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.048306, 29.081255, 42.519855>,  <33.226067, 28.921352, 42.540630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.048306, 29.081255, 42.519855>,  <32.752033, 29.347759, 42.485229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048306, 29.081255, 42.519855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665017, 0.708684, -0.235626,
		0.095643, 0.232088, 0.967981,
		0.740679, -0.666260, 0.086562,
		33.270508, 28.881376, 42.545826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292961, 29.728664, 42.607784>,  <32.752033, 29.347759, 42.485229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292961, 29.728664, 42.607784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506542, 29.392708, 42.568840>,  <33.634689, 29.191133, 42.545471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506542, 29.392708, 42.568840>,  <33.292961, 29.728664, 42.607784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506542, 29.392708, 42.568840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816120, 0.542060, -0.200296,
		0.221004, 0.027487, 0.974885,
		0.533952, -0.839890, -0.097365,
		33.666729, 29.140741, 42.539631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973915, 29.863260, 42.978901>,  <33.292961, 29.728664, 42.607784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973915, 29.863260, 42.978901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.045067, 29.572104, 42.714012>,  <34.087757, 29.397409, 42.555080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.045067, 29.572104, 42.714012>,  <33.973915, 29.863260, 42.978901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045067, 29.572104, 42.714012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825610, 0.476575, -0.302067,
		0.535468, -0.493001, 0.685729,
		0.177882, -0.727892, -0.662217,
		34.098431, 29.353737, 42.515347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738609, 29.806934, 42.926941>,  <33.973915, 29.863260, 42.978901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738609, 29.806934, 42.926941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596416, 29.650030, 42.587585>,  <34.511101, 29.555887, 42.383972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596416, 29.650030, 42.587585>,  <34.738609, 29.806934, 42.926941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596416, 29.650030, 42.587585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783776, 0.369428, -0.499218,
		0.509242, -0.842410, 0.176120,
		-0.355483, -0.392261, -0.848389,
		34.489773, 29.532352, 42.333069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250515, 29.440792, 42.533863>,  <34.738609, 29.806934, 42.926941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250515, 29.440792, 42.533863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001404, 29.549452, 42.240372>,  <34.851936, 29.614647, 42.064278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001404, 29.549452, 42.240372>,  <35.250515, 29.440792, 42.533863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001404, 29.549452, 42.240372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753672, 0.460068, -0.469378,
		0.210058, -0.845307, -0.491254,
		-0.622779, 0.271648, -0.733726,
		34.814571, 29.630947, 42.020252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574169, 29.366220, 41.904846>,  <35.250515, 29.440792, 42.533863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574169, 29.366220, 41.904846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.287823, 29.631071, 41.816193>,  <35.116016, 29.789982, 41.763000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.287823, 29.631071, 41.816193>,  <35.574169, 29.366220, 41.904846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287823, 29.631071, 41.816193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608748, 0.436377, -0.662571,
		-0.341994, -0.609230, -0.715458,
		-0.715867, 0.662129, -0.221629,
		35.073063, 29.829710, 41.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635307, 28.612345, 41.643196>,  <35.574169, 29.366220, 41.904846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635307, 28.612345, 41.643196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974331, 28.424583, 41.544159>,  <36.177746, 28.311926, 41.484737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974331, 28.424583, 41.544159>,  <35.635307, 28.612345, 41.643196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974331, 28.424583, 41.544159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291174, -0.801359, 0.522533,
		-0.443688, -0.370787, -0.815879,
		0.847560, -0.469405, -0.247590,
		36.228600, 28.283762, 41.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534309, 27.884068, 41.273884>,  <35.635307, 28.612345, 41.643196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534309, 27.884068, 41.273884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.891380, 27.881655, 41.454147>,  <36.105621, 27.880207, 41.562305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.891380, 27.881655, 41.454147>,  <35.534309, 27.884068, 41.273884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891380, 27.881655, 41.454147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246175, -0.844105, 0.476325,
		0.377534, -0.536144, -0.754995,
		0.892673, -0.006032, 0.450664,
		36.159184, 27.879845, 41.589348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809761, 27.173677, 41.261902>,  <35.534309, 27.884068, 41.273884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809761, 27.173677, 41.261902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958431, 27.368176, 41.578236>,  <36.047634, 27.484875, 41.768036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.958431, 27.368176, 41.578236>,  <35.809761, 27.173677, 41.261902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958431, 27.368176, 41.578236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205512, -0.787635, 0.580858,
		0.905330, -0.378417, -0.192815,
		0.371674, 0.486243, 0.790839,
		36.069935, 27.514048, 41.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108936, 26.718664, 41.605289>,  <35.809761, 27.173677, 41.261902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108936, 26.718664, 41.605289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098682, 26.978487, 41.909241>,  <36.092529, 27.134380, 42.091610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098682, 26.978487, 41.909241>,  <36.108936, 26.718664, 41.605289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098682, 26.978487, 41.909241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044758, -0.760113, 0.648248,
		0.998669, -0.017392, 0.048560,
		-0.025637, 0.649558, 0.759880,
		36.090992, 27.173355, 42.137203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569973, 26.444983, 42.057056>,  <36.108936, 26.718664, 41.605289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569973, 26.444983, 42.057056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.302189, 26.667135, 42.254387>,  <36.141518, 26.800426, 42.372787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.302189, 26.667135, 42.254387>,  <36.569973, 26.444983, 42.057056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302189, 26.667135, 42.254387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056517, -0.700259, 0.711648,
		0.740696, 0.448538, 0.500183,
		-0.669459, 0.555384, 0.493329,
		36.101353, 26.833750, 42.402386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820900, 26.372753, 42.713840>,  <36.569973, 26.444983, 42.057056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820900, 26.372753, 42.713840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464821, 26.547359, 42.765995>,  <36.251175, 26.652124, 42.797287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464821, 26.547359, 42.765995>,  <36.820900, 26.372753, 42.713840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464821, 26.547359, 42.765995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117614, -0.496701, 0.859916,
		0.440129, 0.750161, 0.493503,
		-0.890198, 0.436517, 0.130383,
		36.197762, 26.678314, 42.805111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876083, 26.591505, 43.371597>,  <36.820900, 26.372753, 42.713840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876083, 26.591505, 43.371597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487232, 26.585741, 43.277992>,  <36.253922, 26.582283, 43.221828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487232, 26.585741, 43.277992>,  <36.876083, 26.591505, 43.371597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487232, 26.585741, 43.277992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208923, -0.399700, 0.892520,
		-0.106395, 0.916533, 0.385548,
		-0.972127, -0.014410, -0.234011,
		36.195595, 26.581419, 43.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604565, 26.684475, 43.988064>,  <36.876083, 26.591505, 43.371597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604565, 26.684475, 43.988064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.325603, 26.490032, 43.777416>,  <36.158226, 26.373367, 43.651028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.325603, 26.490032, 43.777416>,  <36.604565, 26.684475, 43.988064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325603, 26.490032, 43.777416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164634, -0.606490, 0.777860,
		-0.697510, 0.629184, 0.342941,
		-0.697407, -0.486105, -0.526617,
		36.116383, 26.344200, 43.619431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788074, 26.748365, 44.138214>,  <36.604565, 26.684475, 43.988064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788074, 26.748365, 44.138214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893505, 26.386147, 44.005238>,  <35.956764, 26.168816, 43.925453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893505, 26.386147, 44.005238>,  <35.788074, 26.748365, 44.138214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893505, 26.386147, 44.005238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299789, -0.404456, 0.864027,
		-0.916873, -0.128072, -0.378076,
		0.263573, -0.905546, -0.332440,
		35.972576, 26.114483, 43.905506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.075397, 35.537716, 33.003540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.931870, 35.229717, 32.792503>,  <42.845753, 35.044918, 32.665882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.931870, 35.229717, 32.792503>,  <43.075397, 35.537716, 33.003540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931870, 35.229717, 32.792503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386519, -0.391917, 0.834868,
		-0.849618, 0.503491, -0.156991,
		-0.358822, -0.769998, -0.527588,
		42.824223, 34.998718, 32.634228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439205, 35.482807, 33.197624>,  <43.075397, 35.537716, 33.003540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439205, 35.482807, 33.197624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.509178, 35.114044, 33.059353>,  <42.551163, 34.892788, 32.976391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.509178, 35.114044, 33.059353>,  <42.439205, 35.482807, 33.197624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509178, 35.114044, 33.059353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511129, -0.385107, 0.768400,
		-0.841513, 0.042266, -0.538580,
		0.174934, -0.921903, -0.345676,
		42.561657, 34.837475, 32.955650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826084, 35.143463, 33.367798>,  <42.439205, 35.482807, 33.197624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826084, 35.143463, 33.367798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.081318, 34.846088, 33.287655>,  <42.234459, 34.667664, 33.239571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.081318, 34.846088, 33.287655>,  <41.826084, 35.143463, 33.367798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081318, 34.846088, 33.287655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357981, -0.516830, 0.777648,
		-0.681686, -0.424482, -0.595919,
		0.638086, -0.743439, -0.200359,
		42.272743, 34.623058, 33.227547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377174, 34.439552, 33.454086>,  <41.826084, 35.143463, 33.367798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377174, 34.439552, 33.454086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769325, 34.361401, 33.464626>,  <42.004616, 34.314510, 33.470951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.769325, 34.361401, 33.464626>,  <41.377174, 34.439552, 33.454086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769325, 34.361401, 33.464626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162993, -0.728071, 0.665842,
		-0.110904, -0.657069, -0.745627,
		0.980375, -0.195377, 0.026352,
		42.063438, 34.302788, 33.472530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485584, 33.709740, 33.378742>,  <41.377174, 34.439552, 33.454086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485584, 33.709740, 33.378742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.806339, 33.856209, 33.567589>,  <41.998791, 33.944092, 33.680897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.806339, 33.856209, 33.567589>,  <41.485584, 33.709740, 33.378742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806339, 33.856209, 33.567589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062895, -0.734062, 0.676164,
		0.594157, -0.571900, -0.565604,
		0.801886, 0.366174, 0.472118,
		42.046906, 33.966061, 33.709225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854839, 33.180969, 33.559006>,  <41.485584, 33.709740, 33.378742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854839, 33.180969, 33.559006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.019661, 33.454887, 33.799423>,  <42.118553, 33.619240, 33.943676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.019661, 33.454887, 33.799423>,  <41.854839, 33.180969, 33.559006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019661, 33.454887, 33.799423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114831, -0.615364, 0.779834,
		0.903893, -0.390356, -0.174930,
		0.412058, 0.684798, 0.601048,
		42.143280, 33.660328, 33.979736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257034, 32.797985, 33.952419>,  <41.854839, 33.180969, 33.559006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257034, 32.797985, 33.952419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.180103, 33.141174, 34.142952>,  <42.133945, 33.347088, 34.257271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.180103, 33.141174, 34.142952>,  <42.257034, 32.797985, 33.952419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180103, 33.141174, 34.142952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295929, -0.513508, 0.805441,
		0.935647, 0.013951, 0.352662,
		-0.192331, 0.857971, 0.476333,
		42.122402, 33.398567, 34.285851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531773, 32.781281, 34.552849>,  <42.257034, 32.797985, 33.952419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531773, 32.781281, 34.552849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.260983, 33.070930, 34.605526>,  <42.098507, 33.244720, 34.637131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.260983, 33.070930, 34.605526>,  <42.531773, 32.781281, 34.552849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260983, 33.070930, 34.605526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246594, -0.391740, 0.886415,
		0.693463, 0.567611, 0.443764,
		-0.676979, 0.724125, 0.131688,
		42.057888, 33.288170, 34.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596020, 32.914951, 35.254799>,  <42.531773, 32.781281, 34.552849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596020, 32.914951, 35.254799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233528, 33.057011, 35.163052>,  <42.016033, 33.142246, 35.108002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233528, 33.057011, 35.163052>,  <42.596020, 32.914951, 35.254799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233528, 33.057011, 35.163052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367968, -0.395420, 0.841571,
		0.208189, 0.847059, 0.489027,
		-0.906232, 0.355153, -0.229368,
		41.961658, 33.163555, 35.094242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238525, 33.373173, 35.910244>,  <42.596020, 32.914951, 35.254799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238525, 33.373173, 35.910244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.941715, 33.266220, 35.664349>,  <41.763630, 33.202049, 35.516811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.941715, 33.266220, 35.664349>,  <42.238525, 33.373173, 35.910244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941715, 33.266220, 35.664349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474833, -0.437678, 0.763526,
		-0.473211, 0.858454, 0.197806,
		-0.742028, -0.267384, -0.614736,
		41.719109, 33.186005, 35.479927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697803, 33.624039, 36.171268>,  <42.238525, 33.373173, 35.910244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697803, 33.624039, 36.171268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545971, 33.330372, 35.946087>,  <41.454872, 33.154171, 35.810978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545971, 33.330372, 35.946087>,  <41.697803, 33.624039, 36.171268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545971, 33.330372, 35.946087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488575, -0.357645, 0.795854,
		-0.785627, 0.577139, -0.222939,
		-0.379585, -0.734167, -0.562952,
		41.432095, 33.110123, 35.777203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882744, 33.680176, 36.144253>,  <41.697803, 33.624039, 36.171268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882744, 33.680176, 36.144253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986237, 33.303883, 36.056538>,  <41.048332, 33.078106, 36.003910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986237, 33.303883, 36.056538>,  <40.882744, 33.680176, 36.144253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986237, 33.303883, 36.056538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596976, -0.334195, 0.729338,
		-0.759394, -0.057791, -0.648059,
		0.258727, -0.940731, -0.219285,
		41.063854, 33.021664, 35.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329380, 33.996071, 35.611485>,  <40.882744, 33.680176, 36.144253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329380, 33.996071, 35.611485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097641, 34.302746, 35.722157>,  <39.958599, 34.486752, 35.788559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097641, 34.302746, 35.722157>,  <40.329380, 33.996071, 35.611485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097641, 34.302746, 35.722157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358459, 0.544517, -0.758293,
		-0.732031, -0.340134, -0.590288,
		-0.579343, 0.766688, 0.276679,
		39.923840, 34.532753, 35.805161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115051, 34.432007, 35.043091>,  <40.329380, 33.996071, 35.611485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115051, 34.432007, 35.043091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.073231, 34.677727, 35.355938>,  <40.048138, 34.825161, 35.543644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.073231, 34.677727, 35.355938>,  <40.115051, 34.432007, 35.043091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073231, 34.677727, 35.355938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676859, 0.620137, -0.396600,
		-0.728650, 0.487918, -0.480630,
		-0.104548, 0.614302, 0.782115,
		40.041866, 34.862019, 35.590572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102360, 35.202847, 34.787762>,  <40.115051, 34.432007, 35.043091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102360, 35.202847, 34.787762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182686, 35.220066, 35.179234>,  <40.230881, 35.230396, 35.414116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182686, 35.220066, 35.179234>,  <40.102360, 35.202847, 34.787762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182686, 35.220066, 35.179234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589725, 0.792422, -0.155858,
		-0.782240, 0.608452, 0.133740,
		0.200811, 0.043049, 0.978684,
		40.242928, 35.232979, 35.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915264, 35.915886, 34.986717>,  <40.102360, 35.202847, 34.787762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915264, 35.915886, 34.986717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179115, 35.770695, 35.249969>,  <40.337425, 35.683578, 35.407921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.179115, 35.770695, 35.249969>,  <39.915264, 35.915886, 34.986717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179115, 35.770695, 35.249969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581001, 0.801748, -0.140138,
		-0.476785, 0.474812, 0.739750,
		0.659632, -0.362979, 0.658127,
		40.377007, 35.661800, 35.447407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181530, 36.528126, 35.416897>,  <39.915264, 35.915886, 34.986717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181530, 36.528126, 35.416897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444668, 36.229942, 35.459850>,  <40.602551, 36.051033, 35.485622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444668, 36.229942, 35.459850>,  <40.181530, 36.528126, 35.416897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444668, 36.229942, 35.459850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747210, 0.628118, -0.217127,
		0.094410, 0.223073, 0.970219,
		0.657847, -0.745457, 0.107382,
		40.642021, 36.006306, 35.492065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706417, 36.835064, 35.729160>,  <40.181530, 36.528126, 35.416897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706417, 36.835064, 35.729160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856087, 36.508732, 35.552795>,  <40.945889, 36.312931, 35.446976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.856087, 36.508732, 35.552795>,  <40.706417, 36.835064, 35.729160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856087, 36.508732, 35.552795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726993, 0.553235, -0.406711,
		0.575738, -0.168361, 0.800113,
		0.374176, -0.815835, -0.440915,
		40.968338, 36.263981, 35.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451668, 36.921741, 35.813854>,  <40.706417, 36.835064, 35.729160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451668, 36.921741, 35.813854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413723, 36.654469, 35.518684>,  <41.390957, 36.494102, 35.341583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413723, 36.654469, 35.518684>,  <41.451668, 36.921741, 35.813854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413723, 36.654469, 35.518684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579804, 0.565475, -0.586571,
		0.809215, -0.483496, 0.333772,
		-0.094865, -0.668184, -0.737923,
		41.385262, 36.454014, 35.297306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122746, 36.784950, 35.545944>,  <41.451668, 36.921741, 35.813854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122746, 36.784950, 35.545944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.859173, 36.693424, 35.259323>,  <41.701031, 36.638508, 35.087349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.859173, 36.693424, 35.259323>,  <42.122746, 36.784950, 35.545944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859173, 36.693424, 35.259323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525650, 0.541337, -0.656236,
		0.538055, -0.809073, -0.236428,
		-0.658930, -0.228813, -0.716558,
		41.661491, 36.624779, 35.044357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579498, 36.846252, 34.878445>,  <42.122746, 36.784950, 35.545944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579498, 36.846252, 34.878445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208527, 36.835724, 34.729218>,  <41.985943, 36.829407, 34.639683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.208527, 36.835724, 34.729218>,  <42.579498, 36.846252, 34.878445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208527, 36.835724, 34.729218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273825, 0.631662, -0.725274,
		0.254741, -0.774797, -0.578616,
		-0.927431, -0.026317, -0.373069,
		41.930298, 36.827827, 34.617298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702579, 36.778366, 34.143642>,  <42.579498, 36.846252, 34.878445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702579, 36.778366, 34.143642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.323589, 36.904121, 34.167126>,  <42.096195, 36.979572, 34.181217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.323589, 36.904121, 34.167126>,  <42.702579, 36.778366, 34.143642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323589, 36.904121, 34.167126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160411, 0.625961, -0.763178,
		-0.276684, -0.713676, -0.643515,
		-0.947478, 0.314386, 0.058712,
		42.039345, 36.998436, 34.184738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411880, 36.584103, 33.526623>,  <42.702579, 36.778366, 34.143642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411880, 36.584103, 33.526623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.200672, 36.874863, 33.702263>,  <42.073948, 37.049320, 33.807648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.200672, 36.874863, 33.702263>,  <42.411880, 36.584103, 33.526623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200672, 36.874863, 33.702263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063853, 0.481605, -0.874059,
		-0.846826, -0.489562, -0.207884,
		-0.528024, 0.726902, 0.439096,
		42.042267, 37.092934, 33.833992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995579, 36.628403, 32.989643>,  <42.411880, 36.584103, 33.526623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995579, 36.628403, 32.989643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.982426, 36.960567, 33.212116>,  <41.974533, 37.159866, 33.345600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.982426, 36.960567, 33.212116>,  <41.995579, 36.628403, 32.989643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982426, 36.960567, 33.212116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230630, 0.535157, -0.812660,
		-0.972486, -0.154997, 0.173919,
		-0.032886, 0.830411, 0.556179,
		41.972561, 37.209690, 33.378971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402061, 36.970467, 32.694695>,  <41.995579, 36.628403, 32.989643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402061, 36.970467, 32.694695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.604820, 37.236839, 32.913631>,  <41.726475, 37.396664, 33.044994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.604820, 37.236839, 32.913631>,  <41.402061, 36.970467, 32.694695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604820, 37.236839, 32.913631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132557, 0.687633, -0.713856,
		-0.851753, 0.289298, 0.436834,
		0.506899, 0.665934, 0.547345,
		41.756889, 37.436619, 33.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957230, 37.558914, 32.709965>,  <41.402061, 36.970467, 32.694695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957230, 37.558914, 32.709965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.321911, 37.675198, 32.826096>,  <41.540718, 37.744965, 32.895775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.321911, 37.675198, 32.826096>,  <40.957230, 37.558914, 32.709965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321911, 37.675198, 32.826096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028859, 0.750214, -0.660565,
		-0.409836, 0.593860, 0.692362,
		0.911703, 0.290704, 0.290327,
		41.595421, 37.762409, 32.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599144, 37.974258, 33.323471>,  <40.957230, 37.558914, 32.709965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599144, 37.974258, 33.323471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356812, 38.229492, 33.133392>,  <40.211411, 38.382633, 33.019344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356812, 38.229492, 33.133392>,  <40.599144, 37.974258, 33.323471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356812, 38.229492, 33.133392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795590, -0.487156, 0.360161,
		-0.001684, 0.596262, 0.802788,
		-0.605833, 0.638083, -0.475200,
		40.175060, 38.420918, 32.990833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210255, 38.428249, 33.764709>,  <40.599144, 37.974258, 33.323471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210255, 38.428249, 33.764709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018299, 38.331173, 33.427471>,  <39.903126, 38.272926, 33.225128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018299, 38.331173, 33.427471>,  <40.210255, 38.428249, 33.764709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018299, 38.331173, 33.427471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822734, -0.209219, 0.528522,
		-0.304658, 0.947275, -0.099267,
		-0.479887, -0.242689, -0.843096,
		39.874332, 38.258366, 33.174541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525982, 38.800823, 33.788059>,  <40.210255, 38.428249, 33.764709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525982, 38.800823, 33.788059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.504097, 38.502415, 33.522591>,  <39.490967, 38.323368, 33.363312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.504097, 38.502415, 33.522591>,  <39.525982, 38.800823, 33.788059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504097, 38.502415, 33.522591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979662, -0.088398, 0.180131,
		-0.193049, 0.660026, -0.726015,
		-0.054713, -0.746023, -0.663668,
		39.487682, 38.278606, 33.323490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869980, 38.910439, 33.396416>,  <39.525982, 38.800823, 33.788059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869980, 38.910439, 33.396416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981964, 38.526478, 33.390625>,  <39.049156, 38.296101, 33.387150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981964, 38.526478, 33.390625>,  <38.869980, 38.910439, 33.396416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981964, 38.526478, 33.390625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867693, -0.259464, 0.424013,
		-0.410766, -0.106146, -0.905541,
		0.279963, -0.959902, -0.014476,
		39.065952, 38.238506, 33.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309891, 38.610588, 33.178474>,  <38.869980, 38.910439, 33.396416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309891, 38.610588, 33.178474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526779, 38.326180, 33.357559>,  <38.656910, 38.155533, 33.465012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526779, 38.326180, 33.357559>,  <38.309891, 38.610588, 33.178474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526779, 38.326180, 33.357559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822121, -0.338886, 0.457465,
		-0.173542, -0.616122, -0.768295,
		0.542218, -0.711020, 0.447716,
		38.689445, 38.112873, 33.491875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918449, 37.998753, 33.128555>,  <38.309891, 38.610588, 33.178474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918449, 37.998753, 33.128555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169300, 37.913857, 33.428333>,  <38.319809, 37.862919, 33.608200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169300, 37.913857, 33.428333>,  <37.918449, 37.998753, 33.128555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169300, 37.913857, 33.428333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718949, -0.527942, 0.452095,
		0.299711, -0.822333, -0.483675,
		0.627125, -0.212240, 0.749445,
		38.357437, 37.850185, 33.653168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920124, 37.354095, 33.174454>,  <37.918449, 37.998753, 33.128555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920124, 37.354095, 33.174454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066856, 37.465473, 33.529510>,  <38.154896, 37.532299, 33.742546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.066856, 37.465473, 33.529510>,  <37.920124, 37.354095, 33.174454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066856, 37.465473, 33.529510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621156, -0.636992, 0.456516,
		0.692534, -0.718826, -0.060709,
		0.366827, 0.278444, 0.887642,
		38.176903, 37.549007, 33.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956360, 36.725933, 33.563068>,  <37.920124, 37.354095, 33.174454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956360, 36.725933, 33.563068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979736, 37.013668, 33.839947>,  <37.993763, 37.186310, 34.006073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979736, 37.013668, 33.839947>,  <37.956360, 36.725933, 33.563068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979736, 37.013668, 33.839947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651771, -0.497715, 0.572253,
		0.756161, -0.484599, 0.439756,
		0.058440, 0.719336, 0.692200,
		37.997269, 37.229469, 34.047607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909073, 36.314781, 34.217808>,  <37.956360, 36.725933, 33.563068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909073, 36.314781, 34.217808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880722, 36.686268, 34.363388>,  <37.863712, 36.909161, 34.450737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880722, 36.686268, 34.363388>,  <37.909073, 36.314781, 34.217808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880722, 36.686268, 34.363388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567691, -0.337572, 0.750847,
		0.820185, -0.153399, 0.551149,
		-0.070873, 0.928716, 0.363955,
		37.859459, 36.964882, 34.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928272, 36.327072, 34.977669>,  <37.909073, 36.314781, 34.217808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928272, 36.327072, 34.977669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734806, 36.653168, 34.850262>,  <37.618725, 36.848824, 34.773819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734806, 36.653168, 34.850262>,  <37.928272, 36.327072, 34.977669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734806, 36.653168, 34.850262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866875, -0.395969, 0.302879,
		0.120795, 0.422608, 0.898226,
		-0.483670, 0.815236, -0.318517,
		37.589706, 36.897739, 34.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613628, 36.635223, 35.579563>,  <37.928272, 36.327072, 34.977669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613628, 36.635223, 35.579563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408192, 36.743896, 35.254009>,  <37.284927, 36.809101, 35.058678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.408192, 36.743896, 35.254009>,  <37.613628, 36.635223, 35.579563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408192, 36.743896, 35.254009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824308, -0.419553, 0.380121,
		-0.238196, 0.866120, 0.439430,
		-0.513595, 0.271682, -0.813885,
		37.254112, 36.825401, 35.009842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974358, 36.847076, 35.880875>,  <37.613628, 36.635223, 35.579563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974358, 36.847076, 35.880875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909901, 36.760376, 35.495739>,  <36.871227, 36.708355, 35.264660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909901, 36.760376, 35.495739>,  <36.974358, 36.847076, 35.880875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909901, 36.760376, 35.495739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774184, -0.577305, 0.259532,
		-0.612103, 0.787235, -0.074773,
		-0.161146, -0.216749, -0.962835,
		36.861557, 36.695351, 35.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271835, 36.910267, 35.869419>,  <36.974358, 36.847076, 35.880875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271835, 36.910267, 35.869419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369061, 36.721252, 35.530567>,  <36.427395, 36.607845, 35.327255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369061, 36.721252, 35.530567>,  <36.271835, 36.910267, 35.869419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369061, 36.721252, 35.530567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754502, -0.640963, 0.141046,
		-0.609628, 0.604878, -0.512324,
		0.243065, -0.472535, -0.847131,
		36.441978, 36.579491, 35.276428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606174, 36.913425, 35.374020>,  <36.271835, 36.910267, 35.869419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606174, 36.913425, 35.374020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864815, 36.614063, 35.314960>,  <36.020000, 36.434444, 35.279526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864815, 36.614063, 35.314960>,  <35.606174, 36.913425, 35.374020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864815, 36.614063, 35.314960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744119, -0.661417, 0.093884,
		-0.167918, 0.049160, -0.984575,
		0.646599, -0.748405, -0.147644,
		36.058796, 36.389542, 35.270668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243431, 36.414078, 35.046028>,  <35.606174, 36.913425, 35.374020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243431, 36.414078, 35.046028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565643, 36.206760, 35.160915>,  <35.758972, 36.082371, 35.229847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565643, 36.206760, 35.160915>,  <35.243431, 36.414078, 35.046028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565643, 36.206760, 35.160915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573743, -0.803369, 0.159432,
		0.148109, -0.293216, -0.944504,
		0.805533, -0.518289, 0.287217,
		35.807304, 36.051273, 35.247082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088673, 35.827473, 34.868958>,  <35.243431, 36.414078, 35.046028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088673, 35.827473, 34.868958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386765, 35.743340, 35.122063>,  <35.565620, 35.692860, 35.273926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386765, 35.743340, 35.122063>,  <35.088673, 35.827473, 34.868958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386765, 35.743340, 35.122063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482490, -0.825094, 0.293980,
		0.460253, -0.524385, -0.716371,
		0.745232, -0.210336, 0.632762,
		35.610332, 35.680237, 35.311890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216309, 35.070152, 34.709713>,  <35.088673, 35.827473, 34.868958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216309, 35.070152, 34.709713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375664, 35.158539, 35.065792>,  <35.471279, 35.211571, 35.279442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375664, 35.158539, 35.065792>,  <35.216309, 35.070152, 34.709713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375664, 35.158539, 35.065792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489595, -0.769482, 0.410114,
		0.775616, -0.599224, -0.198370,
		0.398392, 0.220970, 0.890200,
		35.495182, 35.224831, 35.332851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746510, 34.486713, 34.902905>,  <35.216309, 35.070152, 34.709713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746510, 34.486713, 34.902905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602955, 34.687672, 35.217560>,  <35.516823, 34.808247, 35.406353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.602955, 34.687672, 35.217560>,  <35.746510, 34.486713, 34.902905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602955, 34.687672, 35.217560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415361, -0.840697, 0.347425,
		0.835868, -0.202052, 0.510392,
		-0.358887, 0.502398, 0.786636,
		35.495289, 34.838390, 35.453552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043827, 33.988361, 35.410275>,  <35.746510, 34.486713, 34.902905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043827, 33.988361, 35.410275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774181, 34.208321, 35.607529>,  <35.612396, 34.340298, 35.725883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774181, 34.208321, 35.607529>,  <36.043827, 33.988361, 35.410275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774181, 34.208321, 35.607529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205923, -0.781082, 0.589497,
		0.709346, 0.295837, 0.639773,
		-0.674110, 0.549901, 0.493138,
		35.571949, 34.373291, 35.755470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227585, 33.935894, 36.224087>,  <36.043827, 33.988361, 35.410275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227585, 33.935894, 36.224087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851746, 34.072556, 36.215900>,  <35.626240, 34.154552, 36.210987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851746, 34.072556, 36.215900>,  <36.227585, 33.935894, 36.224087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851746, 34.072556, 36.215900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284686, -0.746924, 0.600881,
		0.190006, 0.570416, 0.799076,
		-0.939602, 0.341657, -0.020469,
		35.569866, 34.175053, 36.209759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974075, 33.879395, 36.896511>,  <36.227585, 33.935894, 36.224087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974075, 33.879395, 36.896511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633018, 33.907398, 36.689400>,  <35.428383, 33.924198, 36.565132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633018, 33.907398, 36.689400>,  <35.974075, 33.879395, 36.896511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633018, 33.907398, 36.689400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439929, -0.630828, 0.639155,
		-0.281886, 0.772758, 0.568670,
		-0.852645, 0.070006, -0.517780,
		35.377224, 33.928398, 36.534065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437496, 34.161320, 37.381733>,  <35.974075, 33.879395, 36.896511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437496, 34.161320, 37.381733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251499, 33.985241, 37.074486>,  <35.139900, 33.879593, 36.890137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251499, 33.985241, 37.074486>,  <35.437496, 34.161320, 37.381733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251499, 33.985241, 37.074486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377461, -0.686237, 0.621773,
		-0.800814, 0.579057, 0.152941,
		-0.464996, -0.440195, -0.768119,
		35.112000, 33.853184, 36.844051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789474, 33.983406, 37.630844>,  <35.437496, 34.161320, 37.381733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789474, 33.983406, 37.630844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805931, 33.739376, 37.314335>,  <34.815807, 33.592957, 37.124428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805931, 33.739376, 37.314335>,  <34.789474, 33.983406, 37.630844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805931, 33.739376, 37.314335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473232, -0.709382, 0.522330,
		-0.879976, 0.352965, -0.317896,
		0.041146, -0.610076, -0.791274,
		34.818275, 33.556355, 37.076954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049469, 33.756573, 37.487976>,  <34.789474, 33.983406, 37.630844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049469, 33.756573, 37.487976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304878, 33.487019, 37.339287>,  <34.458122, 33.325287, 37.250072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304878, 33.487019, 37.339287>,  <34.049469, 33.756573, 37.487976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304878, 33.487019, 37.339287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387860, -0.698950, 0.600861,
		-0.664724, -0.239485, -0.707664,
		0.638519, -0.673882, -0.371722,
		34.496433, 33.284855, 37.227772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631004, 33.191490, 37.426689>,  <34.049469, 33.756573, 37.487976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631004, 33.191490, 37.426689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009327, 33.061665, 37.422619>,  <34.236320, 32.983768, 37.420177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009327, 33.061665, 37.422619>,  <33.631004, 33.191490, 37.426689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009327, 33.061665, 37.422619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274124, -0.814824, 0.510801,
		-0.174077, -0.480331, -0.859639,
		0.945808, -0.324567, -0.010172,
		34.293068, 32.964294, 37.419567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605766, 32.650547, 37.098907>,  <33.631004, 33.191490, 37.426689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605766, 32.650547, 37.098907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957333, 32.598515, 37.282463>,  <34.168274, 32.567295, 37.392597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957333, 32.598515, 37.282463>,  <33.605766, 32.650547, 37.098907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957333, 32.598515, 37.282463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407671, -0.704303, 0.581173,
		0.247600, -0.697881, -0.672054,
		0.878919, -0.130079, 0.458891,
		34.221008, 32.559490, 37.420132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690071, 31.998255, 37.184258>,  <33.605766, 32.650547, 37.098907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690071, 31.998255, 37.184258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957043, 32.124527, 37.454041>,  <34.117226, 32.200291, 37.615910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957043, 32.124527, 37.454041>,  <33.690071, 31.998255, 37.184258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957043, 32.124527, 37.454041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332683, -0.683895, 0.649315,
		0.666232, -0.657749, -0.351427,
		0.667425, 0.315681, 0.674455,
		34.157269, 32.219231, 37.656376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177330, 31.436369, 37.367901>,  <33.690071, 31.998255, 37.184258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177330, 31.436369, 37.367901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181454, 31.674660, 37.689148>,  <34.183929, 31.817635, 37.881897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181454, 31.674660, 37.689148>,  <34.177330, 31.436369, 37.367901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181454, 31.674660, 37.689148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393072, -0.736091, 0.551057,
		0.919450, -0.321367, 0.226573,
		0.010313, 0.595729, 0.803120,
		34.184547, 31.853378, 37.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519070, 30.894081, 37.045395>,  <34.177330, 31.436369, 37.367901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519070, 30.894081, 37.045395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380505, 30.613426, 36.796333>,  <34.297367, 30.445032, 36.646896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380505, 30.613426, 36.796333>,  <34.519070, 30.894081, 37.045395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380505, 30.613426, 36.796333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347557, 0.520522, -0.779911,
		0.871322, -0.486579, 0.063544,
		-0.346412, -0.701639, -0.622657,
		34.276581, 30.402935, 36.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057503, 30.553682, 36.656994>,  <34.519070, 30.894081, 37.045395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057503, 30.553682, 36.656994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732582, 30.522663, 36.425770>,  <34.537628, 30.504051, 36.287037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732582, 30.522663, 36.425770>,  <35.057503, 30.553682, 36.656994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732582, 30.522663, 36.425770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401017, 0.645411, -0.650100,
		0.423500, -0.759888, -0.493170,
		-0.812301, -0.077548, -0.578060,
		34.488892, 30.499399, 36.252354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368084, 30.508213, 36.039017>,  <35.057503, 30.553682, 36.656994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368084, 30.508213, 36.039017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990421, 30.628134, 35.984341>,  <34.763824, 30.700087, 35.951534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990421, 30.628134, 35.984341>,  <35.368084, 30.508213, 36.039017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990421, 30.628134, 35.984341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300566, 0.613673, -0.730113,
		-0.135005, -0.730427, -0.669515,
		-0.944158, 0.299802, -0.136692,
		34.707172, 30.718075, 35.943333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148430, 30.265621, 35.404400>,  <35.368084, 30.508213, 36.039017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148430, 30.265621, 35.404400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889790, 30.568350, 35.442604>,  <34.734604, 30.749987, 35.465527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889790, 30.568350, 35.442604>,  <35.148430, 30.265621, 35.404400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889790, 30.568350, 35.442604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290529, 0.360097, -0.886523,
		-0.705333, -0.545482, -0.452720,
		-0.646605, 0.756822, 0.095510,
		34.695808, 30.795397, 35.471256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716457, 30.390944, 34.662975>,  <35.148430, 30.265621, 35.404400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716457, 30.390944, 34.662975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700855, 30.724457, 34.883259>,  <34.691494, 30.924564, 35.015430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700855, 30.724457, 34.883259>,  <34.716457, 30.390944, 34.662975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700855, 30.724457, 34.883259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435002, 0.510335, -0.741844,
		-0.899584, 0.210623, -0.382604,
		-0.039007, 0.833784, 0.550711,
		34.689152, 30.974592, 35.048473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
