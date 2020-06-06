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
	<23.978937, 35.137897, 34.724323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227243, 35.129307, 35.037804>,  <24.376228, 35.124153, 35.225891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227243, 35.129307, 35.037804>,  <23.978937, 35.137897, 34.724323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227243, 35.129307, 35.037804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746986, 0.319704, -0.582924,
		-0.238032, 0.947274, 0.214506,
		0.620767, -0.021478, 0.783700,
		24.413473, 35.122864, 35.272915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240902, 35.786308, 34.752552>,  <23.978937, 35.137897, 34.724323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240902, 35.786308, 34.752552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484079, 35.518002, 34.922482>,  <24.629986, 35.357018, 35.024441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.484079, 35.518002, 34.922482>,  <24.240902, 35.786308, 34.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.484079, 35.518002, 34.922482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781222, 0.409810, -0.470901,
		0.141768, 0.618163, 0.773160,
		0.607942, -0.670768, 0.424825,
		24.666462, 35.316772, 35.049931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858931, 36.190754, 34.857204>,  <24.240902, 35.786308, 34.752552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858931, 36.190754, 34.857204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004560, 35.821854, 34.909206>,  <25.091938, 35.600513, 34.940407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004560, 35.821854, 34.909206>,  <24.858931, 36.190754, 34.857204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004560, 35.821854, 34.909206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847760, 0.270343, -0.456309,
		0.385686, 0.276343, 0.880273,
		0.364074, -0.922252, 0.130005,
		25.113783, 35.545177, 34.948208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428690, 36.353168, 34.821758>,  <24.858931, 36.190754, 34.857204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428690, 36.353168, 34.821758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482647, 35.957039, 34.808666>,  <25.515020, 35.719360, 34.800812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482647, 35.957039, 34.808666>,  <25.428690, 36.353168, 34.821758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482647, 35.957039, 34.808666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940043, 0.138347, -0.311735,
		0.313245, 0.011285, 0.949605,
		0.134892, -0.990319, -0.032728,
		25.523115, 35.659943, 34.798847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991123, 36.232853, 35.293930>,  <25.428690, 36.353168, 34.821758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991123, 36.232853, 35.293930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948145, 35.965759, 34.999287>,  <25.922358, 35.805504, 34.822502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948145, 35.965759, 34.999287>,  <25.991123, 36.232853, 35.293930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948145, 35.965759, 34.999287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936334, 0.181136, -0.300780,
		0.334266, -0.722028, 0.605758,
		-0.107447, -0.667732, -0.736607,
		25.915911, 35.765438, 34.778305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637978, 35.913162, 35.192421>,  <25.991123, 36.232853, 35.293930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637978, 35.913162, 35.192421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454956, 35.810020, 34.852032>,  <26.345144, 35.748135, 34.647797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454956, 35.810020, 34.852032>,  <26.637978, 35.913162, 35.192421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454956, 35.810020, 34.852032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871451, 0.060131, -0.486783,
		0.176690, -0.964311, 0.197195,
		-0.457553, -0.257855, -0.850974,
		26.317690, 35.732662, 34.596741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164368, 35.504086, 35.026546>,  <26.637978, 35.913162, 35.192421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164368, 35.504086, 35.026546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929623, 35.662205, 34.743893>,  <26.788776, 35.757076, 34.574303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929623, 35.662205, 34.743893>,  <27.164368, 35.504086, 35.026546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929623, 35.662205, 34.743893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803961, 0.180877, -0.566508,
		-0.096128, -0.900567, -0.423957,
		-0.586862, 0.395302, -0.706633,
		26.753565, 35.780796, 34.531902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285160, 35.204559, 34.330872>,  <27.164368, 35.504086, 35.026546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285160, 35.204559, 34.330872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126389, 35.569908, 34.294632>,  <27.031126, 35.789116, 34.272888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126389, 35.569908, 34.294632>,  <27.285160, 35.204559, 34.330872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126389, 35.569908, 34.294632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823974, 0.311105, -0.473583,
		-0.404370, -0.262629, -0.876077,
		-0.396928, 0.913367, -0.090598,
		27.007311, 35.843918, 34.267452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252005, 35.394802, 33.640202>,  <27.285160, 35.204559, 34.330872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252005, 35.394802, 33.640202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243324, 35.744156, 33.834816>,  <27.238115, 35.953770, 33.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243324, 35.744156, 33.834816>,  <27.252005, 35.394802, 33.640202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243324, 35.744156, 33.834816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826362, 0.289585, -0.482976,
		-0.562721, 0.391578, -0.728019,
		-0.021701, 0.873388, 0.486541,
		27.236814, 36.006172, 33.980778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400139, 35.918198, 33.135704>,  <27.252005, 35.394802, 33.640202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400139, 35.918198, 33.135704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450480, 36.098232, 33.489334>,  <27.480684, 36.206253, 33.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450480, 36.098232, 33.489334>,  <27.400139, 35.918198, 33.135704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450480, 36.098232, 33.489334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856425, 0.400484, -0.325805,
		-0.500697, 0.798144, -0.335065,
		0.125851, 0.450088, 0.884071,
		27.488235, 36.233257, 33.754555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572996, 36.585739, 33.069107>,  <27.400139, 35.918198, 33.135704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572996, 36.585739, 33.069107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721451, 36.489990, 33.427986>,  <27.810524, 36.432541, 33.643314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721451, 36.489990, 33.427986>,  <27.572996, 36.585739, 33.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721451, 36.489990, 33.427986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910073, 0.285697, -0.300240,
		-0.184458, 0.927944, 0.323875,
		0.371136, -0.239368, 0.897196,
		27.832792, 36.418179, 33.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921610, 37.189968, 33.500259>,  <27.572996, 36.585739, 33.069107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921610, 37.189968, 33.500259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078772, 36.826809, 33.558693>,  <28.173069, 36.608913, 33.593754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078772, 36.826809, 33.558693>,  <27.921610, 37.189968, 33.500259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078772, 36.826809, 33.558693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884090, 0.329238, -0.331644,
		0.253005, 0.259454, 0.932026,
		0.392905, -0.907902, 0.146082,
		28.196644, 36.554440, 33.602516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525354, 37.142715, 33.902977>,  <27.921610, 37.189968, 33.500259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525354, 37.142715, 33.902977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532093, 36.868805, 33.611553>,  <28.536137, 36.704460, 33.436699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532093, 36.868805, 33.611553>,  <28.525354, 37.142715, 33.902977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532093, 36.868805, 33.611553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844023, 0.400388, -0.356812,
		0.536043, -0.608910, 0.584711,
		0.016845, -0.684776, -0.728559,
		28.537146, 36.663372, 33.392986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204670, 36.738430, 33.880928>,  <28.525354, 37.142715, 33.902977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204670, 36.738430, 33.880928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011343, 36.796429, 33.535587>,  <28.895348, 36.831226, 33.328381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011343, 36.796429, 33.535587>,  <29.204670, 36.738430, 33.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011343, 36.796429, 33.535587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828703, 0.393712, -0.397796,
		0.282234, -0.907727, -0.310446,
		-0.483316, 0.144996, -0.863355,
		28.866348, 36.839928, 33.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338547, 36.241085, 34.369137>,  <29.204670, 36.738430, 33.880928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338547, 36.241085, 34.369137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196617, 36.145088, 34.730579>,  <29.111460, 36.087490, 34.947445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196617, 36.145088, 34.730579>,  <29.338547, 36.241085, 34.369137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196617, 36.145088, 34.730579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285489, 0.892517, 0.349154,
		-0.890279, 0.381857, -0.248169,
		-0.354822, -0.239995, 0.903606,
		29.090170, 36.073090, 35.001659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644997, 35.875088, 34.351250>,  <29.338547, 36.241085, 34.369137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644997, 35.875088, 34.351250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496304, 36.213543, 34.198479>,  <28.407087, 36.416615, 34.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496304, 36.213543, 34.198479>,  <28.644997, 35.875088, 34.351250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496304, 36.213543, 34.198479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909053, -0.248355, 0.334579,
		0.188245, 0.471566, 0.861504,
		-0.371735, 0.846135, -0.381927,
		28.384783, 36.467384, 34.083900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308689, 36.323875, 34.845589>,  <28.644997, 35.875088, 34.351250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308689, 36.323875, 34.845589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152559, 36.341400, 34.477734>,  <28.058882, 36.351913, 34.257023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152559, 36.341400, 34.477734>,  <28.308689, 36.323875, 34.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152559, 36.341400, 34.477734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914390, -0.134984, 0.381667,
		-0.107415, 0.989879, 0.092746,
		-0.390323, 0.043809, -0.919635,
		28.035461, 36.354542, 34.201843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778555, 36.778728, 34.902302>,  <28.308689, 36.323875, 34.845589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778555, 36.778728, 34.902302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693514, 36.595306, 34.557159>,  <27.642490, 36.485252, 34.350075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693514, 36.595306, 34.557159>,  <27.778555, 36.778728, 34.902302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693514, 36.595306, 34.557159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964966, -0.040420, 0.259240,
		-0.153754, 0.887745, -0.433900,
		-0.212601, -0.458558, -0.862859,
		27.629734, 36.457741, 34.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078121, 37.084633, 34.664242>,  <27.778555, 36.778728, 34.902302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078121, 37.084633, 34.664242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137590, 36.758865, 34.439877>,  <27.173273, 36.563404, 34.305260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137590, 36.758865, 34.439877>,  <27.078121, 37.084633, 34.664242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137590, 36.758865, 34.439877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938936, -0.294252, 0.178366,
		-0.310314, 0.500142, -0.808433,
		0.148674, -0.814416, -0.560912,
		27.182194, 36.514542, 34.271603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541506, 37.038738, 34.279716>,  <27.078121, 37.084633, 34.664242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541506, 37.038738, 34.279716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686152, 36.665993, 34.291431>,  <26.772938, 36.442345, 34.298462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686152, 36.665993, 34.291431>,  <26.541506, 37.038738, 34.279716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686152, 36.665993, 34.291431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871317, -0.326602, 0.366248,
		-0.331733, -0.157951, -0.930056,
		0.361607, -0.931871, 0.029281,
		26.794636, 36.386433, 34.300220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972435, 36.726982, 34.003330>,  <26.541506, 37.038738, 34.279716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972435, 36.726982, 34.003330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207430, 36.467896, 34.197372>,  <26.348427, 36.312443, 34.313797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207430, 36.467896, 34.197372>,  <25.972435, 36.726982, 34.003330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207430, 36.467896, 34.197372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805973, -0.522099, 0.278964,
		0.072584, -0.554869, -0.828765,
		0.587486, -0.647713, 0.485106,
		26.383677, 36.273582, 34.342903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306253, 36.636887, 33.299286>,  <25.972435, 36.726982, 34.003330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306253, 36.636887, 33.299286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502993, 36.819485, 33.002720>,  <26.621037, 36.929043, 32.824780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502993, 36.819485, 33.002720>,  <26.306253, 36.636887, 33.299286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502993, 36.819485, 33.002720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789563, -0.125058, -0.600792,
		-0.366980, 0.880892, 0.298924,
		0.491850, 0.456498, -0.741413,
		26.650547, 36.956432, 32.780296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684048, 36.226784, 33.528046>,  <26.306253, 36.636887, 33.299286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684048, 36.226784, 33.528046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708723, 36.053284, 33.168480>,  <25.723528, 35.949184, 32.952740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708723, 36.053284, 33.168480>,  <25.684048, 36.226784, 33.528046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708723, 36.053284, 33.168480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370719, 0.846161, -0.382857,
		0.926694, -0.309627, 0.213000,
		0.061689, -0.433754, -0.898917,
		25.727230, 35.923157, 32.898804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818619, 35.411114, 33.508373>,  <25.684048, 36.226784, 33.528046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818619, 35.411114, 33.508373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046703, 35.336952, 33.828495>,  <26.183554, 35.292458, 34.020569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046703, 35.336952, 33.828495>,  <25.818619, 35.411114, 33.508373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046703, 35.336952, 33.828495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802722, -0.332847, 0.494824,
		0.174637, -0.924575, -0.338618,
		0.570210, -0.185401, 0.800304,
		26.217766, 35.281330, 34.068584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659079, 34.778889, 33.799145>,  <25.818619, 35.411114, 33.508373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659079, 34.778889, 33.799145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751528, 35.020744, 34.104038>,  <25.806997, 35.165855, 34.286976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751528, 35.020744, 34.104038>,  <25.659079, 34.778889, 33.799145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751528, 35.020744, 34.104038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772000, -0.362827, 0.521893,
		0.592114, -0.709064, 0.382922,
		0.231121, 0.604636, 0.762232,
		25.820864, 35.202137, 34.332706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546902, 34.461258, 34.361023>,  <25.659079, 34.778889, 33.799145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546902, 34.461258, 34.361023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561584, 34.832909, 34.508198>,  <25.570395, 35.055901, 34.596500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561584, 34.832909, 34.508198>,  <25.546902, 34.461258, 34.361023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561584, 34.832909, 34.508198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705885, -0.236510, 0.667675,
		0.707375, -0.284228, 0.647175,
		0.036708, 0.929127, 0.367934,
		25.572598, 35.111649, 34.618576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629755, 34.355820, 34.999374>,  <25.546902, 34.461258, 34.361023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629755, 34.355820, 34.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437361, 34.704041, 34.957809>,  <25.321924, 34.912971, 34.932869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437361, 34.704041, 34.957809>,  <25.629755, 34.355820, 34.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437361, 34.704041, 34.957809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664257, -0.284498, 0.691247,
		0.572200, 0.401507, 0.715108,
		-0.480987, 0.870547, -0.103914,
		25.293064, 34.965206, 34.926636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427763, 34.628780, 35.723873>,  <25.629755, 34.355820, 34.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427763, 34.628780, 35.723873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170237, 34.794872, 35.466785>,  <25.015720, 34.894527, 35.312534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170237, 34.794872, 35.466785>,  <25.427763, 34.628780, 35.723873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170237, 34.794872, 35.466785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748381, -0.166658, 0.641990,
		0.159463, 0.894319, 0.418050,
		-0.643815, 0.415234, -0.642715,
		24.977093, 34.919441, 35.273972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690037, 34.021435, 36.057674>,  <25.427763, 34.628780, 35.723873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690037, 34.021435, 36.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907475, 33.926521, 35.735630>,  <26.037937, 33.869576, 35.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907475, 33.926521, 35.735630>,  <25.690037, 34.021435, 36.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907475, 33.926521, 35.735630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495990, -0.683014, 0.536178,
		-0.677118, -0.690793, -0.253606,
		0.543604, -0.237269, -0.805107,
		26.070553, 33.855335, 35.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775490, 33.250118, 36.115944>,  <25.690037, 34.021435, 36.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775490, 33.250118, 36.115944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047525, 33.386265, 35.856213>,  <26.210747, 33.467953, 35.700375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047525, 33.386265, 35.856213>,  <25.775490, 33.250118, 36.115944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047525, 33.386265, 35.856213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615408, -0.746393, 0.253320,
		-0.398433, -0.571883, -0.717078,
		0.680091, 0.340364, -0.649329,
		26.251553, 33.488373, 35.661415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921759, 32.659645, 35.592110>,  <25.775490, 33.250118, 36.115944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921759, 32.659645, 35.592110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224947, 32.920025, 35.608799>,  <26.406860, 33.076252, 35.618813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224947, 32.920025, 35.608799>,  <25.921759, 32.659645, 35.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224947, 32.920025, 35.608799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648598, -0.758932, 0.057821,
		0.069307, -0.016762, -0.997455,
		0.757969, 0.650954, 0.041727,
		26.452337, 33.115311, 35.621319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446991, 32.333954, 35.401627>,  <25.921759, 32.659645, 35.592110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446991, 32.333954, 35.401627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665354, 32.644997, 35.526402>,  <26.796371, 32.831623, 35.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665354, 32.644997, 35.526402>,  <26.446991, 32.333954, 35.401627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665354, 32.644997, 35.526402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671488, -0.628730, 0.392177,
		0.501088, -0.004627, -0.865384,
		0.545907, 0.777610, 0.311942,
		26.829126, 32.878281, 35.619984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119024, 32.183838, 35.175289>,  <26.446991, 32.333954, 35.401627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119024, 32.183838, 35.175289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152559, 32.424828, 35.492779>,  <27.172680, 32.569420, 35.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152559, 32.424828, 35.492779>,  <27.119024, 32.183838, 35.175289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152559, 32.424828, 35.492779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747605, -0.564661, 0.349636,
		0.658831, 0.564081, -0.497749,
		0.083836, 0.602470, 0.793726,
		27.177710, 32.605568, 35.730896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826670, 32.239906, 35.122540>,  <27.119024, 32.183838, 35.175289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826670, 32.239906, 35.122540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697311, 32.347046, 35.485565>,  <27.619696, 32.411331, 35.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697311, 32.347046, 35.485565>,  <27.826670, 32.239906, 35.122540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697311, 32.347046, 35.485565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569981, -0.710448, 0.412778,
		0.755338, 0.650785, 0.077089,
		-0.323397, 0.267848, 0.907564,
		27.600292, 32.427399, 35.757835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280281, 32.376282, 35.669628>,  <27.826670, 32.239906, 35.122540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280281, 32.376282, 35.669628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078176, 32.599594, 35.932846>,  <27.956913, 32.733582, 36.090778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078176, 32.599594, 35.932846>,  <28.280281, 32.376282, 35.669628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078176, 32.599594, 35.932846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245612, -0.637974, 0.729839,
		0.827275, 0.530385, 0.185224,
		-0.505264, 0.558284, 0.658048,
		27.926598, 32.767078, 36.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816338, 32.649429, 36.014786>,  <28.280281, 32.376282, 35.669628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816338, 32.649429, 36.014786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470707, 32.622772, 36.214359>,  <28.263329, 32.606777, 36.334103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470707, 32.622772, 36.214359>,  <28.816338, 32.649429, 36.014786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470707, 32.622772, 36.214359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378934, -0.738575, 0.557599,
		0.331336, 0.670869, 0.663439,
		-0.864075, -0.066647, 0.498931,
		28.211485, 32.602779, 36.364040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914907, 32.533138, 36.717293>,  <28.816338, 32.649429, 36.014786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914907, 32.533138, 36.717293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549889, 32.379784, 36.660339>,  <28.330877, 32.287773, 36.626167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549889, 32.379784, 36.660339>,  <28.914907, 32.533138, 36.717293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549889, 32.379784, 36.660339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189644, -0.705137, 0.683240,
		-0.362341, 0.596489, 0.716178,
		-0.912548, -0.383384, -0.142380,
		28.276125, 32.264767, 36.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687889, 32.385128, 37.425976>,  <28.914907, 32.533138, 36.717293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687889, 32.385128, 37.425976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534031, 32.124020, 37.164921>,  <28.441715, 31.967354, 37.008289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534031, 32.124020, 37.164921>,  <28.687889, 32.385128, 37.425976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534031, 32.124020, 37.164921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299192, -0.757030, 0.580852,
		-0.873230, 0.028159, 0.486494,
		-0.384647, -0.652772, -0.652637,
		28.418636, 31.928188, 36.969131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310095, 31.974182, 37.820873>,  <28.687889, 32.385128, 37.425976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310095, 31.974182, 37.820873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392435, 31.775137, 37.483826>,  <28.441839, 31.655710, 37.281597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392435, 31.775137, 37.483826>,  <28.310095, 31.974182, 37.820873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392435, 31.775137, 37.483826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325042, -0.777404, 0.538508,
		-0.923024, -0.384739, 0.001716,
		0.205851, -0.497613, -0.842619,
		28.454191, 31.625853, 37.231041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642313, 31.276289, 38.089390>,  <28.310095, 31.974182, 37.820873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642313, 31.276289, 38.089390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593315, 30.908882, 37.939022>,  <28.563917, 30.688438, 37.848801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593315, 30.908882, 37.939022>,  <28.642313, 31.276289, 38.089390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593315, 30.908882, 37.939022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407992, 0.391893, -0.824598,
		0.904731, 0.052366, -0.422753,
		-0.122493, -0.918519, -0.375923,
		28.556566, 30.633326, 37.826244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999222, 31.233780, 37.485497>,  <28.642313, 31.276289, 38.089390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999222, 31.233780, 37.485497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665871, 31.013773, 37.507282>,  <28.465860, 30.881769, 37.520351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665871, 31.013773, 37.507282>,  <28.999222, 31.233780, 37.485497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665871, 31.013773, 37.507282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416583, 0.560316, -0.715894,
		0.363237, -0.619297, -0.696082,
		-0.833377, -0.550015, 0.054461,
		28.415857, 30.848768, 37.523621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825178, 30.836411, 36.790253>,  <28.999222, 31.233780, 37.485497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825178, 30.836411, 36.790253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503126, 30.938904, 37.004211>,  <28.309895, 31.000401, 37.132587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503126, 30.938904, 37.004211>,  <28.825178, 30.836411, 36.790253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503126, 30.938904, 37.004211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344292, 0.532438, -0.773287,
		-0.482941, -0.806755, -0.340462,
		-0.805128, 0.256233, 0.534896,
		28.261587, 31.015774, 37.164680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291016, 30.827682, 36.332493>,  <28.825178, 30.836411, 36.790253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291016, 30.827682, 36.332493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199760, 31.076960, 36.631714>,  <28.145008, 31.226526, 36.811245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199760, 31.076960, 36.631714>,  <28.291016, 30.827682, 36.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199760, 31.076960, 36.631714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458933, 0.608776, -0.647126,
		-0.858681, -0.490940, 0.147119,
		-0.228138, 0.623192, 0.748053,
		28.131319, 31.263918, 36.856129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690865, 31.135342, 36.189964>,  <28.291016, 30.827682, 36.332493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690865, 31.135342, 36.189964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914553, 31.376589, 36.417480>,  <28.048765, 31.521338, 36.553989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914553, 31.376589, 36.417480>,  <27.690865, 31.135342, 36.189964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914553, 31.376589, 36.417480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370004, 0.795550, -0.479788,
		-0.741869, 0.057853, 0.668044,
		0.559220, 0.603119, 0.568788,
		28.082319, 31.557524, 36.588116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168114, 31.643980, 36.366032>,  <27.690865, 31.135342, 36.189964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168114, 31.643980, 36.366032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520079, 31.822636, 36.430859>,  <27.731258, 31.929829, 36.469753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520079, 31.822636, 36.430859>,  <27.168114, 31.643980, 36.366032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520079, 31.822636, 36.430859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410878, 0.886575, -0.212519,
		-0.238603, 0.120409, 0.963623,
		0.879914, 0.446639, 0.162066,
		27.784052, 31.956627, 36.479477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051048, 32.178066, 36.866821>,  <27.168114, 31.643980, 36.366032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051048, 32.178066, 36.866821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369030, 32.252480, 36.635845>,  <27.559818, 32.297127, 36.497257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369030, 32.252480, 36.635845>,  <27.051048, 32.178066, 36.866821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369030, 32.252480, 36.635845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402315, 0.874079, -0.272265,
		0.454083, 0.448752, 0.769695,
		0.794954, 0.186029, -0.577444,
		27.607515, 32.308289, 36.462612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174726, 32.836552, 36.907143>,  <27.051048, 32.178066, 36.866821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174726, 32.836552, 36.907143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347973, 32.732391, 36.561981>,  <27.451921, 32.669895, 36.354885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347973, 32.732391, 36.561981>,  <27.174726, 32.836552, 36.907143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347973, 32.732391, 36.561981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583104, 0.649081, -0.488551,
		0.687312, 0.714763, 0.129289,
		0.433118, -0.260398, -0.862903,
		27.477909, 32.654270, 36.303112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553335, 33.432693, 36.645161>,  <27.174726, 32.836552, 36.907143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553335, 33.432693, 36.645161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457256, 33.181557, 36.349022>,  <27.399609, 33.030876, 36.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457256, 33.181557, 36.349022>,  <27.553335, 33.432693, 36.645161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457256, 33.181557, 36.349022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597436, 0.696735, -0.397026,
		0.765099, 0.346948, -0.542449,
		-0.240196, -0.627843, -0.740350,
		27.385197, 32.993202, 36.126915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482603, 33.878456, 36.151051>,  <27.553335, 33.432693, 36.645161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482603, 33.878456, 36.151051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283165, 33.567963, 35.996716>,  <27.163502, 33.381668, 35.904114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283165, 33.567963, 35.996716>,  <27.482603, 33.878456, 36.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283165, 33.567963, 35.996716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627768, 0.630282, -0.456784,
		0.597754, 0.014463, -0.801549,
		-0.498595, -0.776232, -0.385833,
		27.133587, 33.335094, 35.880966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474037, 33.968655, 35.405201>,  <27.482603, 33.878456, 36.151051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474037, 33.968655, 35.405201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164692, 33.737030, 35.508430>,  <26.979084, 33.598057, 35.570370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.164692, 33.737030, 35.508430>,  <27.474037, 33.968655, 35.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164692, 33.737030, 35.508430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617637, 0.596407, -0.512662,
		0.142944, -0.555870, -0.818887,
		-0.773364, -0.579057, 0.258073,
		26.932682, 33.563313, 35.585854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105446, 34.003757, 34.738300>,  <27.474037, 33.968655, 35.405201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105446, 34.003757, 34.738300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853130, 33.855038, 35.010731>,  <26.701740, 33.765804, 35.174191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853130, 33.855038, 35.010731>,  <27.105446, 34.003757, 34.738300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853130, 33.855038, 35.010731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758594, 0.480114, -0.440484,
		-0.163224, -0.794515, -0.584896,
		-0.630788, -0.371801, 0.681080,
		26.663895, 33.743496, 35.215054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893690, 34.011902, 34.612514>,  <27.105446, 34.003757, 34.738300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893690, 34.011902, 34.612514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066032, 34.318275, 34.421638>,  <28.169437, 34.502098, 34.307114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066032, 34.318275, 34.421638>,  <27.893690, 34.011902, 34.612514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066032, 34.318275, 34.421638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337959, 0.353353, 0.872311,
		0.836748, -0.537109, -0.106610,
		0.430855, 0.765934, -0.477188,
		28.195290, 34.548058, 34.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556589, 34.017536, 34.961239>,  <27.893690, 34.011902, 34.612514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556589, 34.017536, 34.961239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470724, 34.385193, 34.829121>,  <28.419205, 34.605789, 34.749851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470724, 34.385193, 34.829121>,  <28.556589, 34.017536, 34.961239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470724, 34.385193, 34.829121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443081, 0.393018, 0.805739,
		0.870402, 0.026614, -0.491621,
		-0.214660, 0.919146, -0.330291,
		28.406326, 34.660938, 34.730034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206196, 34.508945, 35.024651>,  <28.556589, 34.017536, 34.961239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206196, 34.508945, 35.024651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851624, 34.693184, 35.042946>,  <28.638880, 34.803726, 35.053921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851624, 34.693184, 35.042946>,  <29.206196, 34.508945, 35.024651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851624, 34.693184, 35.042946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271061, 0.436472, 0.857915,
		0.375193, 0.772878, -0.511752,
		-0.886429, 0.460600, 0.045736,
		28.585695, 34.831364, 35.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259249, 35.250114, 35.238701>,  <29.206196, 34.508945, 35.024651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259249, 35.250114, 35.238701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900795, 35.124557, 35.364185>,  <28.685722, 35.049225, 35.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900795, 35.124557, 35.364185>,  <29.259249, 35.250114, 35.238701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900795, 35.124557, 35.364185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282227, 0.142432, 0.948715,
		-0.342475, 0.938715, -0.039050,
		-0.896135, -0.313890, 0.313710,
		28.631954, 35.030392, 35.458298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666498, 35.599991, 35.759491>,  <29.259249, 35.250114, 35.238701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666498, 35.599991, 35.759491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614794, 35.920258, 35.525490>,  <29.583771, 36.112415, 35.385090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614794, 35.920258, 35.525490>,  <29.666498, 35.599991, 35.759491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614794, 35.920258, 35.525490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741689, 0.469641, 0.478888,
		0.658170, -0.371989, -0.654551,
		-0.129263, 0.800663, -0.585004,
		29.576015, 36.160458, 35.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353304, 35.857964, 35.595249>,  <29.666498, 35.599991, 35.759491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353304, 35.857964, 35.595249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098228, 36.162628, 35.549240>,  <29.945183, 36.345425, 35.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098228, 36.162628, 35.549240>,  <30.353304, 35.857964, 35.595249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098228, 36.162628, 35.549240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749826, 0.647978, 0.133738,
		0.176392, -0.000962, -0.984319,
		-0.637689, 0.761658, -0.115019,
		29.906921, 36.391125, 35.514732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747707, 36.457726, 35.679535>,  <30.353304, 35.857964, 35.595249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747707, 36.457726, 35.679535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410778, 36.644600, 35.572033>,  <30.208620, 36.756725, 35.507534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410778, 36.644600, 35.572033>,  <30.747707, 36.457726, 35.679535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410778, 36.644600, 35.572033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411137, 0.879388, 0.240088,
		0.348503, 0.091738, -0.932808,
		-0.842325, 0.467183, -0.268752,
		30.158081, 36.784756, 35.491405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998310, 36.938061, 35.293167>,  <30.747707, 36.457726, 35.679535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998310, 36.938061, 35.293167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638216, 37.015015, 35.449406>,  <30.422159, 37.061188, 35.543148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638216, 37.015015, 35.449406>,  <30.998310, 36.938061, 35.293167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638216, 37.015015, 35.449406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307228, 0.916347, 0.256748,
		-0.308528, 0.351135, -0.884033,
		-0.900234, 0.192386, 0.390597,
		30.368145, 37.072731, 35.566586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612385, 37.507935, 34.916019>,  <30.998310, 36.938061, 35.293167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612385, 37.507935, 34.916019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548491, 37.461975, 35.308201>,  <30.510155, 37.434399, 35.543510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548491, 37.461975, 35.308201>,  <30.612385, 37.507935, 34.916019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548491, 37.461975, 35.308201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251090, 0.955809, 0.152915,
		-0.954693, 0.270607, -0.123826,
		-0.159734, -0.114896, 0.980451,
		30.500570, 37.427505, 35.602337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138216, 38.019646, 35.096558>,  <30.612385, 37.507935, 34.916019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138216, 38.019646, 35.096558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366840, 37.941113, 35.415249>,  <30.504015, 37.893993, 35.606464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366840, 37.941113, 35.415249>,  <30.138216, 38.019646, 35.096558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366840, 37.941113, 35.415249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229170, 0.970511, 0.074760,
		-0.787910, 0.139856, 0.599699,
		0.571559, -0.196337, 0.796726,
		30.538307, 37.882210, 35.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434765, 38.086731, 34.637741>,  <30.138216, 38.019646, 35.096558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434765, 38.086731, 34.637741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631523, 37.738468, 34.637569>,  <29.749578, 37.529510, 34.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631523, 37.738468, 34.637569>,  <29.434765, 38.086731, 34.637741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631523, 37.738468, 34.637569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012747, 0.007699, -0.999889,
		0.870560, 0.491837, 0.014886,
		0.491897, -0.870653, -0.000433,
		29.779093, 37.477272, 34.637440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060959, 38.126480, 34.240082>,  <29.434765, 38.086731, 34.637741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060959, 38.126480, 34.240082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933249, 37.748569, 34.210503>,  <29.856623, 37.521824, 34.192757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933249, 37.748569, 34.210503>,  <30.060959, 38.126480, 34.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933249, 37.748569, 34.210503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071663, 0.053738, -0.995980,
		0.944948, -0.323293, 0.050548,
		-0.319277, -0.944772, -0.073948,
		29.837465, 37.465137, 34.188320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569675, 37.633255, 33.922710>,  <30.060959, 38.126480, 34.240082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569675, 37.633255, 33.922710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190235, 37.526810, 33.854195>,  <29.962570, 37.462944, 33.813084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190235, 37.526810, 33.854195>,  <30.569675, 37.633255, 33.922710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190235, 37.526810, 33.854195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152502, 0.089888, -0.984207,
		0.277309, -0.959741, -0.044685,
		-0.948600, -0.266115, -0.171289,
		29.905655, 37.446976, 33.802807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675177, 37.461704, 33.293037>,  <30.569675, 37.633255, 33.922710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675177, 37.461704, 33.293037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277815, 37.488384, 33.330345>,  <30.039398, 37.504391, 33.352730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277815, 37.488384, 33.330345>,  <30.675177, 37.461704, 33.293037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277815, 37.488384, 33.330345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101863, -0.139770, -0.984931,
		-0.052653, -0.987935, 0.145641,
		-0.993404, 0.066695, 0.093274,
		29.979794, 37.508392, 33.358326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241096, 36.859680, 33.070587>,  <30.675177, 37.461704, 33.293037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241096, 36.859680, 33.070587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010941, 37.184139, 33.028683>,  <29.872847, 37.378815, 33.003540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010941, 37.184139, 33.028683>,  <30.241096, 36.859680, 33.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010941, 37.184139, 33.028683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172915, -0.245836, -0.953764,
		-0.799393, -0.530669, 0.281710,
		-0.575388, 0.811144, -0.104759,
		29.838324, 37.427483, 32.997253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563496, 36.742794, 32.736492>,  <30.241096, 36.859680, 33.070587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563496, 36.742794, 32.736492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739140, 37.084488, 32.625160>,  <29.844526, 37.289505, 32.558361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739140, 37.084488, 32.625160>,  <29.563496, 36.742794, 32.736492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739140, 37.084488, 32.625160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223722, -0.196068, -0.954728,
		-0.870132, 0.481501, 0.105015,
		0.439112, 0.854233, -0.278327,
		29.870872, 37.340759, 32.541660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136364, 37.255051, 32.481701>,  <29.563496, 36.742794, 32.736492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136364, 37.255051, 32.481701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476068, 37.359760, 32.298294>,  <29.679892, 37.422585, 32.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476068, 37.359760, 32.298294>,  <29.136364, 37.255051, 32.481701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476068, 37.359760, 32.298294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441285, -0.124867, -0.888637,
		-0.289872, 0.957019, 0.009472,
		0.849259, 0.261771, -0.458513,
		29.730846, 37.438290, 32.160740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856569, 37.529270, 31.885347>,  <29.136364, 37.255051, 32.481701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856569, 37.529270, 31.885347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242336, 37.487968, 31.787992>,  <29.473797, 37.463188, 31.729580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242336, 37.487968, 31.787992>,  <28.856569, 37.529270, 31.885347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242336, 37.487968, 31.787992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250938, -0.067667, -0.965635,
		0.083235, 0.992351, -0.091170,
		0.964418, -0.103253, -0.243386,
		29.531662, 37.456993, 31.714977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047173, 37.946560, 31.305445>,  <28.856569, 37.529270, 31.885347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047173, 37.946560, 31.305445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343876, 37.678329, 31.300928>,  <29.521896, 37.517391, 31.298218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343876, 37.678329, 31.300928>,  <29.047173, 37.946560, 31.305445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343876, 37.678329, 31.300928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125759, -0.122528, -0.984465,
		0.658774, 0.731653, -0.175216,
		0.741756, -0.670575, -0.011293,
		29.566402, 37.477158, 31.297541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361532, 38.039780, 30.673180>,  <29.047173, 37.946560, 31.305445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361532, 38.039780, 30.673180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470743, 37.682419, 30.815893>,  <29.536270, 37.468002, 30.901522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470743, 37.682419, 30.815893>,  <29.361532, 38.039780, 30.673180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470743, 37.682419, 30.815893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052642, -0.384192, -0.921751,
		0.960565, 0.232881, -0.151925,
		0.273027, -0.893399, 0.356782,
		29.552650, 37.414398, 30.922928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841398, 37.798515, 30.231590>,  <29.361532, 38.039780, 30.673180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841398, 37.798515, 30.231590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710527, 37.455307, 30.389961>,  <29.632006, 37.249382, 30.484983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710527, 37.455307, 30.389961>,  <29.841398, 37.798515, 30.231590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710527, 37.455307, 30.389961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076062, -0.393715, -0.916080,
		0.941897, -0.329836, 0.063552,
		-0.327177, -0.858019, 0.395927,
		29.612373, 37.197903, 30.508739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209599, 37.210026, 29.815868>,  <29.841398, 37.798515, 30.231590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209599, 37.210026, 29.815868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919348, 37.021297, 30.016209>,  <29.745197, 36.908058, 30.136412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919348, 37.021297, 30.016209>,  <30.209599, 37.210026, 29.815868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919348, 37.021297, 30.016209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067840, -0.675282, -0.734433,
		0.684738, -0.566900, 0.457994,
		-0.725625, -0.471823, 0.500850,
		29.701660, 36.879749, 30.166464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390133, 36.535484, 29.709221>,  <30.209599, 37.210026, 29.815868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390133, 36.535484, 29.709221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013996, 36.535889, 29.845312>,  <29.788315, 36.536133, 29.926968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013996, 36.535889, 29.845312>,  <30.390133, 36.535484, 29.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013996, 36.535889, 29.845312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243711, -0.699784, -0.671496,
		0.237406, -0.714354, 0.658284,
		-0.940342, 0.001013, 0.340229,
		29.731894, 36.536194, 29.947380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198700, 35.820129, 29.801569>,  <30.390133, 36.535484, 29.709221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198700, 35.820129, 29.801569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887304, 36.063343, 29.739273>,  <29.700468, 36.209270, 29.701895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887304, 36.063343, 29.739273>,  <30.198700, 35.820129, 29.801569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887304, 36.063343, 29.739273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300638, -0.579033, -0.757850,
		-0.550977, -0.543155, 0.633567,
		-0.778487, 0.608032, -0.155741,
		29.653759, 36.245754, 29.692551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661621, 35.369312, 29.694416>,  <30.198700, 35.820129, 29.801569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661621, 35.369312, 29.694416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552301, 35.700100, 29.497875>,  <29.486710, 35.898575, 29.379951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552301, 35.700100, 29.497875>,  <29.661621, 35.369312, 29.694416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552301, 35.700100, 29.497875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240161, -0.553280, -0.797624,
		-0.931467, -0.099986, 0.349817,
		-0.273298, 0.826972, -0.491350,
		29.470312, 35.948193, 29.350470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066553, 35.189224, 29.401136>,  <29.661621, 35.369312, 29.694416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066553, 35.189224, 29.401136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198679, 35.506977, 29.197231>,  <29.277954, 35.697628, 29.074888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198679, 35.506977, 29.197231>,  <29.066553, 35.189224, 29.401136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198679, 35.506977, 29.197231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270742, -0.437639, -0.857421,
		-0.904208, 0.421232, 0.070513,
		0.330314, 0.794377, -0.509762,
		29.297773, 35.745289, 29.044302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491016, 35.360172, 28.930832>,  <29.066553, 35.189224, 29.401136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491016, 35.360172, 28.930832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812393, 35.561584, 28.803751>,  <29.005219, 35.682434, 28.727503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812393, 35.561584, 28.803751>,  <28.491016, 35.360172, 28.930832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812393, 35.561584, 28.803751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248372, -0.201502, -0.947475,
		-0.541103, 0.840149, -0.036831,
		0.803442, 0.503534, -0.317703,
		29.053425, 35.712646, 28.708441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284458, 35.819386, 28.466736>,  <28.491016, 35.360172, 28.930832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284458, 35.819386, 28.466736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668077, 35.752083, 28.375597>,  <28.898249, 35.711700, 28.320913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668077, 35.752083, 28.375597>,  <28.284458, 35.819386, 28.466736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668077, 35.752083, 28.375597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253172, -0.148557, -0.955947,
		0.126998, 0.974484, -0.185072,
		0.959049, -0.168259, -0.227846,
		28.955791, 35.701607, 28.307243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360277, 36.076717, 27.910419>,  <28.284458, 35.819386, 28.466736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360277, 36.076717, 27.910419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687708, 35.847183, 27.900209>,  <28.884167, 35.709465, 27.894083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687708, 35.847183, 27.900209>,  <28.360277, 36.076717, 27.910419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687708, 35.847183, 27.900209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227754, -0.283458, -0.931547,
		0.527315, 0.768355, -0.362725,
		0.818576, -0.573831, -0.025524,
		28.933281, 35.675034, 27.892551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665426, 36.245487, 27.337658>,  <28.360277, 36.076717, 27.910419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665426, 36.245487, 27.337658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826183, 35.888008, 27.417450>,  <28.922638, 35.673523, 27.465324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826183, 35.888008, 27.417450>,  <28.665426, 36.245487, 27.337658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826183, 35.888008, 27.417450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169612, -0.286732, -0.942877,
		0.899841, 0.345101, -0.266817,
		0.401893, -0.893695, 0.199479,
		28.946751, 35.619900, 27.477293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234333, 36.098232, 26.854849>,  <28.665426, 36.245487, 27.337658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234333, 36.098232, 26.854849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123869, 35.738979, 26.991726>,  <29.057590, 35.523426, 27.073853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123869, 35.738979, 26.991726>,  <29.234333, 36.098232, 26.854849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123869, 35.738979, 26.991726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168402, -0.305313, -0.937243,
		0.946244, -0.316453, -0.066932,
		-0.276158, -0.898132, 0.342192,
		29.041021, 35.469540, 27.094383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505896, 35.714909, 26.371181>,  <29.234333, 36.098232, 26.854849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505896, 35.714909, 26.371181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260096, 35.473396, 26.574291>,  <29.112616, 35.328487, 26.696157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260096, 35.473396, 26.574291>,  <29.505896, 35.714909, 26.371181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260096, 35.473396, 26.574291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396039, -0.320568, -0.860459,
		0.682308, -0.729850, -0.042133,
		-0.614499, -0.603784, 0.507775,
		29.075747, 35.292259, 26.726624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534428, 35.092846, 25.983109>,  <29.505896, 35.714909, 26.371181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534428, 35.092846, 25.983109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185097, 35.082211, 26.177670>,  <28.975498, 35.075829, 26.294407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185097, 35.082211, 26.177670>,  <29.534428, 35.092846, 25.983109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185097, 35.082211, 26.177670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470935, -0.209238, -0.856994,
		0.124564, -0.977503, 0.170210,
		-0.873329, -0.026593, 0.486404,
		28.923098, 35.074234, 26.323591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264713, 34.413548, 25.807337>,  <29.534428, 35.092846, 25.983109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264713, 34.413548, 25.807337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975294, 34.662430, 25.926893>,  <28.801641, 34.811760, 25.998627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975294, 34.662430, 25.926893>,  <29.264713, 34.413548, 25.807337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975294, 34.662430, 25.926893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625979, -0.408967, -0.664001,
		-0.290908, -0.667537, 0.685395,
		-0.723549, 0.622205, 0.298892,
		28.758230, 34.849091, 26.016562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707075, 34.054127, 25.855143>,  <29.264713, 34.413548, 25.807337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707075, 34.054127, 25.855143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548719, 34.419350, 25.815971>,  <28.453707, 34.638485, 25.792469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548719, 34.419350, 25.815971>,  <28.707075, 34.054127, 25.855143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548719, 34.419350, 25.815971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727323, -0.376872, -0.573558,
		-0.560601, -0.155839, 0.813290,
		-0.395889, 0.913062, -0.097930,
		28.429953, 34.693268, 25.786592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045561, 33.951088, 25.684444>,  <28.707075, 34.054127, 25.855143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045561, 33.951088, 25.684444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057272, 34.343937, 25.610058>,  <28.064299, 34.579647, 25.565426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057272, 34.343937, 25.610058>,  <28.045561, 33.951088, 25.684444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057272, 34.343937, 25.610058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630496, -0.126222, -0.765861,
		-0.775640, 0.139677, 0.615526,
		0.029280, 0.982119, -0.185969,
		28.066055, 34.638573, 25.554268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321449, 34.150955, 25.508232>,  <28.045561, 33.951088, 25.684444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321449, 34.150955, 25.508232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554628, 34.431984, 25.344984>,  <27.694536, 34.600601, 25.247036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554628, 34.431984, 25.344984>,  <27.321449, 34.150955, 25.508232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554628, 34.431984, 25.344984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518131, -0.065469, -0.852792,
		-0.625867, 0.708594, 0.325859,
		0.582950, 0.702572, -0.408120,
		27.729513, 34.642757, 25.222548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869091, 34.348671, 24.880823>,  <27.321449, 34.150955, 25.508232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869091, 34.348671, 24.880823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238508, 34.492645, 24.827890>,  <27.460159, 34.579029, 24.796131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238508, 34.492645, 24.827890>,  <26.869091, 34.348671, 24.880823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238508, 34.492645, 24.827890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169103, 0.072513, -0.982927,
		-0.344198, 0.930154, 0.127836,
		0.923543, 0.359939, -0.132333,
		27.515572, 34.600628, 24.788191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841125, 35.035213, 24.532644>,  <26.869091, 34.348671, 24.880823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841125, 35.035213, 24.532644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191067, 34.856663, 24.457403>,  <27.401031, 34.749535, 24.412258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191067, 34.856663, 24.457403>,  <26.841125, 35.035213, 24.532644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191067, 34.856663, 24.457403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242464, -0.067367, -0.967818,
		0.419338, 0.892307, -0.167166,
		0.874852, -0.446375, -0.188103,
		27.453522, 34.722752, 24.400972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071169, 35.299934, 23.952848>,  <26.841125, 35.035213, 24.532644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071169, 35.299934, 23.952848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302614, 34.975586, 23.987946>,  <27.441483, 34.780979, 24.009005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302614, 34.975586, 23.987946>,  <27.071169, 35.299934, 23.952848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302614, 34.975586, 23.987946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056092, -0.146891, -0.987561,
		0.813670, 0.566496, -0.130477,
		0.578615, -0.810867, 0.087744,
		27.476198, 34.732327, 24.014269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431330, 35.227493, 23.362585>,  <27.071169, 35.299934, 23.952848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431330, 35.227493, 23.362585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497717, 34.849091, 23.473957>,  <27.537548, 34.622047, 23.540781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497717, 34.849091, 23.473957>,  <27.431330, 35.227493, 23.362585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497717, 34.849091, 23.473957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175342, -0.249536, -0.952358,
		0.970418, 0.206880, 0.124461,
		0.165966, -0.946009, 0.278429,
		27.547506, 34.565289, 23.557486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957708, 34.930099, 23.035511>,  <27.431330, 35.227493, 23.362585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957708, 34.930099, 23.035511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756855, 34.597569, 23.130800>,  <27.636343, 34.398048, 23.187973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756855, 34.597569, 23.130800>,  <27.957708, 34.930099, 23.035511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756855, 34.597569, 23.130800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087944, -0.323127, -0.942260,
		0.860307, -0.452190, 0.235364,
		-0.502133, -0.831332, 0.238221,
		27.606215, 34.348167, 23.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296581, 34.371845, 22.649117>,  <27.957708, 34.930099, 23.035511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296581, 34.371845, 22.649117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948496, 34.209969, 22.761509>,  <27.739645, 34.112843, 22.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948496, 34.209969, 22.761509>,  <28.296581, 34.371845, 22.649117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948496, 34.209969, 22.761509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097116, -0.418224, -0.903137,
		0.483009, -0.813209, 0.324642,
		-0.870213, -0.404696, 0.280982,
		27.687431, 34.088558, 22.845804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296572, 33.576958, 22.533022>,  <28.296581, 34.371845, 22.649117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296572, 33.576958, 22.533022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915218, 33.697632, 22.530331>,  <27.686407, 33.770035, 22.528715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915218, 33.697632, 22.530331>,  <28.296572, 33.576958, 22.533022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915218, 33.697632, 22.530331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123885, -0.411635, -0.902889,
		-0.275159, -0.859966, 0.429820,
		-0.953384, 0.301686, -0.006728,
		27.629204, 33.788139, 22.528313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871172, 32.978642, 22.452435>,  <28.296572, 33.576958, 22.533022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871172, 32.978642, 22.452435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649256, 33.288048, 22.329876>,  <27.516106, 33.473690, 22.256340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649256, 33.288048, 22.329876>,  <27.871172, 32.978642, 22.452435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649256, 33.288048, 22.329876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087225, -0.420315, -0.903176,
		-0.827404, -0.474349, 0.300657,
		-0.554791, 0.773517, -0.306396,
		27.482819, 33.520103, 22.237957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261105, 32.614185, 22.246214>,  <27.871172, 32.978642, 22.452435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261105, 32.614185, 22.246214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225786, 32.965374, 22.058012>,  <27.204596, 33.176086, 21.945091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225786, 32.965374, 22.058012>,  <27.261105, 32.614185, 22.246214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225786, 32.965374, 22.058012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068846, -0.476597, -0.876422,
		-0.993712, -0.044993, 0.102527,
		-0.088297, 0.877970, -0.470503,
		27.199297, 33.228764, 21.916861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746677, 32.507824, 21.782949>,  <27.261105, 32.614185, 22.246214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746677, 32.507824, 21.782949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934029, 32.828548, 21.634506>,  <27.046438, 33.020985, 21.545441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934029, 32.828548, 21.634506>,  <26.746677, 32.507824, 21.782949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934029, 32.828548, 21.634506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070507, -0.384768, -0.920316,
		-0.880711, 0.457220, -0.123683,
		0.468376, 0.801813, -0.371107,
		27.074541, 33.069092, 21.523174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369896, 32.698261, 21.244595>,  <26.746677, 32.507824, 21.782949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369896, 32.698261, 21.244595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712013, 32.895775, 21.181787>,  <26.917284, 33.014282, 21.144104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712013, 32.895775, 21.181787>,  <26.369896, 32.698261, 21.244595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712013, 32.895775, 21.181787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073134, -0.184956, -0.980022,
		-0.512959, 0.849688, -0.122079,
		0.855292, 0.493783, -0.157016,
		26.968601, 33.043911, 21.134684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203709, 33.065746, 20.675486>,  <26.369896, 32.698261, 21.244595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203709, 33.065746, 20.675486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602787, 33.042213, 20.689020>,  <26.842234, 33.028095, 20.697142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602787, 33.042213, 20.689020>,  <26.203709, 33.065746, 20.675486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602787, 33.042213, 20.689020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021605, -0.197325, -0.980100,
		0.064337, 0.978571, -0.195599,
		0.997694, -0.058831, 0.033838,
		26.902096, 33.024563, 20.699171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449997, 33.368122, 20.076124>,  <26.203709, 33.065746, 20.675486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449997, 33.368122, 20.076124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748198, 33.123878, 20.182995>,  <26.927118, 32.977333, 20.247118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748198, 33.123878, 20.182995>,  <26.449997, 33.368122, 20.076124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748198, 33.123878, 20.182995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012128, -0.413229, -0.910546,
		0.666392, 0.675575, -0.315469,
		0.745503, -0.610606, 0.267179,
		26.971849, 32.940697, 20.263149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004213, 33.508667, 19.656412>,  <26.449997, 33.368122, 20.076124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004213, 33.508667, 19.656412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076296, 33.134144, 19.776978>,  <27.119545, 32.909428, 19.849316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076296, 33.134144, 19.776978>,  <27.004213, 33.508667, 19.656412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076296, 33.134144, 19.776978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329016, -0.231400, -0.915534,
		0.926970, 0.264156, 0.266360,
		0.180208, -0.936310, 0.301412,
		27.130358, 32.853252, 19.867401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660294, 33.308468, 19.421438>,  <27.004213, 33.508667, 19.656412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660294, 33.308468, 19.421438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473242, 32.961040, 19.487061>,  <27.361010, 32.752586, 19.526434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473242, 32.961040, 19.487061>,  <27.660294, 33.308468, 19.421438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473242, 32.961040, 19.487061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196369, -0.283043, -0.938789,
		0.861835, -0.406792, 0.302919,
		-0.467631, -0.868566, 0.164056,
		27.332952, 32.700470, 19.536278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142666, 32.794792, 19.194769>,  <27.660294, 33.308468, 19.421438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142666, 32.794792, 19.194769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786240, 32.614330, 19.174921>,  <27.572384, 32.506054, 19.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786240, 32.614330, 19.174921>,  <28.142666, 32.794792, 19.194769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786240, 32.614330, 19.174921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183092, -0.257270, -0.948836,
		0.415304, -0.854561, 0.311847,
		-0.891067, -0.451152, -0.049618,
		27.518919, 32.478985, 19.160036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259598, 32.335632, 18.608620>,  <28.142666, 32.794792, 19.194769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259598, 32.335632, 18.608620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866011, 32.329327, 18.679676>,  <27.629858, 32.325542, 18.722309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866011, 32.329327, 18.679676>,  <28.259598, 32.335632, 18.608620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866011, 32.329327, 18.679676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164817, -0.300079, -0.939568,
		0.068118, -0.953784, 0.292670,
		-0.983969, -0.015764, 0.177641,
		27.570820, 32.324596, 18.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015232, 31.651266, 18.446117>,  <28.259598, 32.335632, 18.608620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015232, 31.651266, 18.446117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715572, 31.913704, 18.409645>,  <27.535776, 32.071167, 18.387762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715572, 31.913704, 18.409645>,  <28.015232, 31.651266, 18.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715572, 31.913704, 18.409645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019855, -0.115351, -0.993126,
		-0.662102, -0.745812, 0.073389,
		-0.749151, 0.656094, -0.091182,
		27.490828, 32.110531, 18.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602055, 31.327013, 17.894375>,  <28.015232, 31.651266, 18.446117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602055, 31.327013, 17.894375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498716, 31.712675, 17.918583>,  <27.436714, 31.944073, 17.933107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498716, 31.712675, 17.918583>,  <27.602055, 31.327013, 17.894375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498716, 31.712675, 17.918583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117089, 0.030937, -0.992640,
		-0.958931, -0.263528, 0.104900,
		-0.258343, 0.964156, 0.060523,
		27.421213, 32.001923, 17.936739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987276, 31.323172, 17.504622>,  <27.602055, 31.327013, 17.894375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987276, 31.323172, 17.504622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119101, 31.700731, 17.513012>,  <27.198195, 31.927267, 17.518045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119101, 31.700731, 17.513012>,  <26.987276, 31.323172, 17.504622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119101, 31.700731, 17.513012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278387, 0.118380, -0.953146,
		-0.902159, 0.308281, 0.301783,
		0.329561, 0.943901, 0.020976,
		27.217970, 31.983902, 17.519304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434786, 31.762861, 17.246065>,  <26.987276, 31.323172, 17.504622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434786, 31.762861, 17.246065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762617, 31.990150, 17.216637>,  <26.959316, 32.126522, 17.198978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762617, 31.990150, 17.216637>,  <26.434786, 31.762861, 17.246065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762617, 31.990150, 17.216637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298052, 0.313144, -0.901724,
		-0.489340, 0.760964, 0.426006,
		0.819580, 0.568221, -0.073573,
		27.008492, 32.160618, 17.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210993, 32.533997, 17.170652>,  <26.434786, 31.762861, 17.246065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210993, 32.533997, 17.170652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565624, 32.430058, 17.017576>,  <26.778404, 32.367695, 16.925730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565624, 32.430058, 17.017576>,  <26.210993, 32.533997, 17.170652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565624, 32.430058, 17.017576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369060, 0.101407, -0.923857,
		0.278872, 0.960309, -0.005995,
		0.886580, -0.259851, -0.382692,
		26.831598, 32.352104, 16.902769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561186, 33.093292, 16.689447>,  <26.210993, 32.533997, 17.170652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561186, 33.093292, 16.689447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687483, 32.738033, 16.555878>,  <26.763260, 32.524879, 16.475735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687483, 32.738033, 16.555878>,  <26.561186, 33.093292, 16.689447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687483, 32.738033, 16.555878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295245, 0.242495, -0.924136,
		0.901742, 0.390377, -0.185655,
		0.315741, -0.888145, -0.333925,
		26.782206, 32.471588, 16.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857237, 33.268490, 16.044279>,  <26.561186, 33.093292, 16.689447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857237, 33.268490, 16.044279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801466, 32.872433, 16.049564>,  <26.768003, 32.634800, 16.052736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801466, 32.872433, 16.049564>,  <26.857237, 33.268490, 16.044279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801466, 32.872433, 16.049564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358479, 0.038031, -0.932763,
		0.923067, -0.134790, -0.360248,
		-0.139428, -0.990144, 0.013215,
		26.759638, 32.575390, 16.053528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272692, 33.057583, 15.455308>,  <26.857237, 33.268490, 16.044279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272692, 33.057583, 15.455308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979330, 32.793343, 15.519472>,  <26.803314, 32.634800, 15.557970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979330, 32.793343, 15.519472>,  <27.272692, 33.057583, 15.455308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979330, 32.793343, 15.519472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315307, 0.121516, -0.941178,
		0.602247, -0.740841, -0.297411,
		-0.733403, -0.660597, 0.160410,
		26.759310, 32.595165, 15.567595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447807, 32.891087, 14.678549>,  <27.272692, 33.057583, 15.455308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447807, 32.891087, 14.678549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700827, 32.969193, 14.378748>,  <27.852638, 33.016056, 14.198868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700827, 32.969193, 14.378748>,  <27.447807, 32.891087, 14.678549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700827, 32.969193, 14.378748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756539, 0.051535, 0.651915,
		0.165922, -0.979396, -0.115128,
		0.632550, 0.195266, -0.749501,
		27.890591, 33.027771, 14.153897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949324, 32.339451, 14.565365>,  <27.447807, 32.891087, 14.678549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949324, 32.339451, 14.565365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104317, 32.687290, 14.442957>,  <28.197313, 32.895996, 14.369513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104317, 32.687290, 14.442957>,  <27.949324, 32.339451, 14.565365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104317, 32.687290, 14.442957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830188, -0.184834, 0.525951,
		0.400806, -0.457851, -0.793554,
		0.387483, 0.869603, -0.306020,
		28.220562, 32.948170, 14.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577753, 32.177177, 14.105004>,  <27.949324, 32.339451, 14.565365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577753, 32.177177, 14.105004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558775, 32.504597, 14.333993>,  <28.547388, 32.701050, 14.471386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558775, 32.504597, 14.333993>,  <28.577753, 32.177177, 14.105004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558775, 32.504597, 14.333993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868038, -0.249779, 0.429092,
		0.494226, 0.517286, -0.698682,
		-0.047447, 0.818551, 0.572471,
		28.544540, 32.750160, 14.505734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198477, 32.651363, 13.978772>,  <28.577753, 32.177177, 14.105004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198477, 32.651363, 13.978772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022224, 32.658253, 14.337782>,  <28.916473, 32.662388, 14.553187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022224, 32.658253, 14.337782>,  <29.198477, 32.651363, 13.978772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022224, 32.658253, 14.337782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878442, -0.197652, 0.435056,
		0.184892, 0.980121, 0.071959,
		-0.440630, 0.017227, 0.897523,
		28.890036, 32.663422, 14.607038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367121, 32.831905, 14.788839>,  <29.198477, 32.651363, 13.978772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367121, 32.831905, 14.788839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086905, 33.117348, 14.788042>,  <28.918774, 33.288612, 14.787564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086905, 33.117348, 14.788042>,  <29.367121, 32.831905, 14.788839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086905, 33.117348, 14.788042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254322, 0.252271, 0.933638,
		0.666755, 0.653545, -0.358213,
		-0.700542, 0.713609, -0.001992,
		28.876741, 33.331429, 14.787444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586626, 33.546268, 14.902758>,  <29.367121, 32.831905, 14.788839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586626, 33.546268, 14.902758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215580, 33.484104, 15.038628>,  <28.992952, 33.446804, 15.120150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215580, 33.484104, 15.038628>,  <29.586626, 33.546268, 14.902758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215580, 33.484104, 15.038628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297492, 0.242560, 0.923398,
		-0.225901, 0.957607, -0.178767,
		-0.927614, -0.155415, 0.339675,
		28.937296, 33.437481, 15.140530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337900, 34.080894, 15.325279>,  <29.586626, 33.546268, 14.902758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337900, 34.080894, 15.325279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127405, 33.775017, 15.474043>,  <29.001108, 33.591492, 15.563301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127405, 33.775017, 15.474043>,  <29.337900, 34.080894, 15.325279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127405, 33.775017, 15.474043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274445, 0.261225, 0.925441,
		-0.804831, 0.589072, 0.072399,
		-0.526239, -0.764693, 0.371910,
		28.969534, 33.545609, 15.585616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152372, 34.406311, 15.948426>,  <29.337900, 34.080894, 15.325279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152372, 34.406311, 15.948426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034742, 34.032803, 16.029995>,  <28.964165, 33.808697, 16.078936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034742, 34.032803, 16.029995>,  <29.152372, 34.406311, 15.948426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034742, 34.032803, 16.029995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035347, 0.202584, 0.978627,
		-0.955129, 0.294997, -0.026568,
		-0.294075, -0.933775, 0.203921,
		28.946520, 33.752670, 16.091171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632877, 34.468224, 16.470049>,  <29.152372, 34.406311, 15.948426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632877, 34.468224, 16.470049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781733, 34.097485, 16.489956>,  <28.871046, 33.875042, 16.501900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781733, 34.097485, 16.489956>,  <28.632877, 34.468224, 16.470049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781733, 34.097485, 16.489956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082158, 0.086300, 0.992876,
		-0.924534, -0.365397, 0.108263,
		0.372137, -0.926842, 0.049767,
		28.893373, 33.819431, 16.504887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277382, 34.204128, 17.166294>,  <28.632877, 34.468224, 16.470049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277382, 34.204128, 17.166294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595110, 33.995548, 17.041622>,  <28.785748, 33.870399, 16.966820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595110, 33.995548, 17.041622>,  <28.277382, 34.204128, 17.166294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595110, 33.995548, 17.041622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394942, 0.053415, 0.917152,
		-0.461599, -0.851609, 0.248370,
		0.794322, -0.521448, -0.311680,
		28.833406, 33.839115, 16.948118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424343, 33.770622, 17.727201>,  <28.277382, 34.204128, 17.166294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424343, 33.770622, 17.727201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767174, 33.775185, 17.521177>,  <28.972872, 33.777924, 17.397564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767174, 33.775185, 17.521177>,  <28.424343, 33.770622, 17.727201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767174, 33.775185, 17.521177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505836, 0.170970, 0.845517,
		0.097701, -0.985210, 0.140767,
		0.857079, 0.011403, -0.515059,
		29.024298, 33.778606, 17.366659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865128, 33.401047, 18.094681>,  <28.424343, 33.770622, 17.727201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865128, 33.401047, 18.094681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113117, 33.628849, 17.878796>,  <29.261911, 33.765530, 17.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113117, 33.628849, 17.878796>,  <28.865128, 33.401047, 18.094681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113117, 33.628849, 17.878796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532493, 0.199805, 0.822514,
		0.576267, -0.797331, -0.179386,
		0.619974, 0.569509, -0.539714,
		29.299109, 33.799702, 17.716881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538084, 33.310799, 18.337229>,  <28.865128, 33.401047, 18.094681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538084, 33.310799, 18.337229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589243, 33.656841, 18.143225>,  <29.619938, 33.864468, 18.026821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589243, 33.656841, 18.143225>,  <29.538084, 33.310799, 18.337229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589243, 33.656841, 18.143225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520408, 0.357761, 0.775360,
		0.844286, -0.351570, -0.404451,
		0.127897, 0.865105, -0.485012,
		29.627611, 33.916374, 17.997721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258490, 33.467751, 18.451998>,  <29.538084, 33.310799, 18.337229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258490, 33.467751, 18.451998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096073, 33.810081, 18.323816>,  <29.998623, 34.015480, 18.246908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096073, 33.810081, 18.323816>,  <30.258490, 33.467751, 18.451998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096073, 33.810081, 18.323816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418635, 0.485900, 0.767232,
		0.812326, 0.177376, -0.555575,
		-0.406043, 0.855826, -0.320454,
		29.974260, 34.066830, 18.227680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806400, 34.017460, 18.513741>,  <30.258490, 33.467751, 18.451998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806400, 34.017460, 18.513741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452204, 34.201939, 18.491119>,  <30.239685, 34.312626, 18.477547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452204, 34.201939, 18.491119>,  <30.806400, 34.017460, 18.513741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452204, 34.201939, 18.491119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295280, 0.652507, 0.697886,
		0.358767, 0.601273, -0.713973,
		-0.885492, 0.461200, -0.056555,
		30.186556, 34.340298, 18.474154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051416, 34.726936, 18.604019>,  <30.806400, 34.017460, 18.513741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051416, 34.726936, 18.604019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657507, 34.723228, 18.673458>,  <30.421162, 34.721004, 18.715120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657507, 34.723228, 18.673458>,  <31.051416, 34.726936, 18.604019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657507, 34.723228, 18.673458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123243, 0.667058, 0.734741,
		-0.122607, 0.744948, -0.655759,
		-0.984773, -0.009267, 0.173596,
		30.362076, 34.720448, 18.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863777, 35.369801, 18.707008>,  <31.051416, 34.726936, 18.604019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863777, 35.369801, 18.707008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576401, 35.155140, 18.884024>,  <30.403975, 35.026344, 18.990232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576401, 35.155140, 18.884024>,  <30.863777, 35.369801, 18.707008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576401, 35.155140, 18.884024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016502, 0.622881, 0.782143,
		-0.695390, 0.569228, -0.438649,
		-0.718444, -0.536656, 0.442538,
		30.360868, 34.994144, 19.016785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343782, 35.853668, 18.898556>,  <30.863777, 35.369801, 18.707008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343782, 35.853668, 18.898556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310419, 35.533321, 19.135757>,  <30.290401, 35.341114, 19.278078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310419, 35.533321, 19.135757>,  <30.343782, 35.853668, 18.898556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310419, 35.533321, 19.135757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087437, 0.586901, 0.804923,
		-0.992672, 0.118989, 0.021073,
		-0.083409, -0.800867, 0.593004,
		30.285397, 35.293060, 19.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082378, 36.071220, 19.391384>,  <30.343782, 35.853668, 18.898556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082378, 36.071220, 19.391384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214035, 35.741436, 19.575529>,  <30.293030, 35.543564, 19.686016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214035, 35.741436, 19.575529>,  <30.082378, 36.071220, 19.391384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214035, 35.741436, 19.575529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167335, 0.530735, 0.830855,
		-0.929336, -0.196434, 0.312648,
		0.329141, -0.824460, 0.460360,
		30.312777, 35.494099, 19.713636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818293, 36.033920, 20.067083>,  <30.082378, 36.071220, 19.391384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818293, 36.033920, 20.067083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134319, 35.791100, 20.101225>,  <30.323935, 35.645409, 20.121710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134319, 35.791100, 20.101225>,  <29.818293, 36.033920, 20.067083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134319, 35.791100, 20.101225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189300, 0.374026, 0.907893,
		-0.583063, -0.701137, 0.410420,
		0.790065, -0.607051, 0.085356,
		30.371340, 35.608986, 20.126831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718538, 35.606689, 20.684742>,  <29.818293, 36.033920, 20.067083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718538, 35.606689, 20.684742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108334, 35.591415, 20.596277>,  <30.342211, 35.582253, 20.543198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108334, 35.591415, 20.596277>,  <29.718538, 35.606689, 20.684742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108334, 35.591415, 20.596277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223885, 0.234276, 0.946039,
		0.015686, -0.971420, 0.236849,
		0.974489, -0.038187, -0.221161,
		30.400681, 35.579960, 20.529928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934208, 35.233006, 21.151243>,  <29.718538, 35.606689, 20.684742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934208, 35.233006, 21.151243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251837, 35.437653, 21.019978>,  <30.442415, 35.560440, 20.941217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251837, 35.437653, 21.019978>,  <29.934208, 35.233006, 21.151243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251837, 35.437653, 21.019978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164480, 0.338885, 0.926338,
		0.585144, -0.789557, 0.184949,
		0.794074, 0.511621, -0.328164,
		30.490059, 35.591137, 20.921528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480345, 35.023632, 21.465452>,  <29.934208, 35.233006, 21.151243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480345, 35.023632, 21.465452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589689, 35.388298, 21.342730>,  <30.655296, 35.607098, 21.269096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589689, 35.388298, 21.342730>,  <30.480345, 35.023632, 21.465452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589689, 35.388298, 21.342730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279904, 0.229764, 0.932128,
		0.920286, -0.340686, -0.192370,
		0.273363, 0.911669, -0.306808,
		30.671698, 35.661800, 21.250687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074278, 35.237732, 21.774122>,  <30.480345, 35.023632, 21.465452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074278, 35.237732, 21.774122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908514, 35.589970, 21.682199>,  <30.809055, 35.801311, 21.627047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908514, 35.589970, 21.682199>,  <31.074278, 35.237732, 21.774122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908514, 35.589970, 21.682199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250725, 0.353206, 0.901323,
		0.874872, 0.315900, -0.367160,
		-0.414411, 0.880598, -0.229806,
		30.784191, 35.854149, 21.613258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534504, 35.713474, 21.965576>,  <31.074278, 35.237732, 21.774122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534504, 35.713474, 21.965576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221876, 35.960499, 21.930321>,  <31.034300, 36.108715, 21.909168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221876, 35.960499, 21.930321>,  <31.534504, 35.713474, 21.965576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221876, 35.960499, 21.930321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198214, 0.379814, 0.903578,
		0.591492, 0.688737, -0.419260,
		-0.781568, 0.617562, -0.088139,
		30.987406, 36.145767, 21.903879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718916, 36.386982, 22.188843>,  <31.534504, 35.713474, 21.965576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718916, 36.386982, 22.188843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323147, 36.370594, 22.244509>,  <31.085686, 36.360760, 22.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323147, 36.370594, 22.244509>,  <31.718916, 36.386982, 22.188843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323147, 36.370594, 22.244509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120634, 0.300442, 0.946141,
		-0.080578, 0.952920, -0.292321,
		-0.989421, -0.040974, 0.139163,
		31.026320, 36.358303, 22.286257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668999, 36.983776, 22.537203>,  <31.718916, 36.386982, 22.188843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668999, 36.983776, 22.537203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328035, 36.792358, 22.621487>,  <31.123457, 36.677509, 22.672056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328035, 36.792358, 22.621487>,  <31.668999, 36.983776, 22.537203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328035, 36.792358, 22.621487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006132, 0.393803, 0.919174,
		-0.522842, 0.784803, -0.332746,
		-0.852408, -0.478543, 0.210709,
		31.072313, 36.648796, 22.684700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299232, 37.515228, 22.902189>,  <31.668999, 36.983776, 22.537203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299232, 37.515228, 22.902189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148405, 37.153706, 22.983130>,  <31.057909, 36.936790, 23.031694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148405, 37.153706, 22.983130>,  <31.299232, 37.515228, 22.902189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148405, 37.153706, 22.983130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098572, 0.256398, 0.961532,
		-0.920924, 0.342619, -0.185770,
		-0.377070, -0.903810, 0.202350,
		31.035284, 36.882561, 23.043835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675835, 37.603176, 23.361177>,  <31.299232, 37.515228, 22.902189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675835, 37.603176, 23.361177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783321, 37.220657, 23.407290>,  <30.847815, 36.991146, 23.434958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783321, 37.220657, 23.407290>,  <30.675835, 37.603176, 23.361177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783321, 37.220657, 23.407290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113269, 0.087481, 0.989706,
		-0.956536, -0.279010, -0.084811,
		0.268718, -0.956295, 0.115282,
		30.863937, 36.933769, 23.441874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132002, 37.284275, 23.587040>,  <30.675835, 37.603176, 23.361177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132002, 37.284275, 23.587040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439421, 37.063484, 23.716442>,  <30.623873, 36.931011, 23.794083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439421, 37.063484, 23.716442>,  <30.132002, 37.284275, 23.587040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439421, 37.063484, 23.716442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420901, -0.055399, 0.905413,
		-0.481846, -0.832017, -0.274904,
		0.768549, -0.551977, 0.323503,
		30.669985, 36.897892, 23.813494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809023, 36.945312, 24.135405>,  <30.132002, 37.284275, 23.587040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809023, 36.945312, 24.135405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199265, 36.880272, 24.194408>,  <30.433409, 36.841248, 24.229811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199265, 36.880272, 24.194408>,  <29.809023, 36.945312, 24.135405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199265, 36.880272, 24.194408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145820, 0.022336, 0.989059,
		-0.164119, -0.986439, -0.001920,
		0.975603, -0.162604, 0.147509,
		30.491945, 36.831490, 24.238661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906010, 36.474838, 24.877312>,  <29.809023, 36.945312, 24.135405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906010, 36.474838, 24.877312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258053, 36.655537, 24.818888>,  <30.469278, 36.763954, 24.783833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258053, 36.655537, 24.818888>,  <29.906010, 36.474838, 24.877312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258053, 36.655537, 24.818888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045808, 0.225408, 0.973187,
		0.472559, -0.863200, 0.177690,
		0.880108, 0.451748, -0.146060,
		30.522085, 36.791061, 24.775070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319475, 36.286251, 25.516811>,  <29.906010, 36.474838, 24.877312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319475, 36.286251, 25.516811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480110, 36.625771, 25.379246>,  <30.576490, 36.829483, 25.296707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480110, 36.625771, 25.379246>,  <30.319475, 36.286251, 25.516811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480110, 36.625771, 25.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067819, 0.346932, 0.935435,
		0.913307, -0.398982, 0.081759,
		0.401586, 0.848794, -0.343914,
		30.600586, 36.880409, 25.276072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840656, 36.462589, 25.926853>,  <30.319475, 36.286251, 25.516811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840656, 36.462589, 25.926853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772186, 36.823822, 25.769304>,  <30.731104, 37.040562, 25.674774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772186, 36.823822, 25.769304>,  <30.840656, 36.462589, 25.926853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772186, 36.823822, 25.769304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182568, 0.421924, 0.888060,
		0.968178, 0.080103, -0.237097,
		-0.171173, 0.903086, -0.393873,
		30.720835, 37.094749, 25.651142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435545, 36.888733, 26.159012>,  <30.840656, 36.462589, 25.926853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435545, 36.888733, 26.159012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142971, 37.146790, 26.070656>,  <30.967426, 37.301624, 26.017641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142971, 37.146790, 26.070656>,  <31.435545, 36.888733, 26.159012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142971, 37.146790, 26.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076736, 0.399745, 0.913409,
		0.677578, 0.651150, -0.341894,
		-0.731437, 0.645141, -0.220891,
		30.923540, 37.340332, 26.004389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777523, 37.658459, 26.294535>,  <31.435545, 36.888733, 26.159012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777523, 37.658459, 26.294535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381653, 37.715569, 26.289589>,  <31.144131, 37.749836, 26.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381653, 37.715569, 26.289589>,  <31.777523, 37.658459, 26.294535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381653, 37.715569, 26.289589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071842, 0.568924, 0.819246,
		0.124004, 0.809901, -0.573309,
		-0.989678, 0.142777, -0.012364,
		31.084749, 37.758400, 26.285879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668495, 38.319782, 26.519430>,  <31.777523, 37.658459, 26.294535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668495, 38.319782, 26.519430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298485, 38.180676, 26.580603>,  <31.076479, 38.097214, 26.617306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298485, 38.180676, 26.580603>,  <31.668495, 38.319782, 26.519430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298485, 38.180676, 26.580603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051813, 0.514271, 0.856061,
		-0.376355, 0.783955, -0.493732,
		-0.925026, -0.347764, 0.152929,
		31.020977, 38.076347, 26.626482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240965, 38.938152, 26.699818>,  <31.668495, 38.319782, 26.519430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240965, 38.938152, 26.699818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076036, 38.606552, 26.850943>,  <30.977079, 38.407593, 26.941618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076036, 38.606552, 26.850943>,  <31.240965, 38.938152, 26.699818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076036, 38.606552, 26.850943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026677, 0.403541, 0.914572,
		-0.910648, 0.387176, -0.144273,
		-0.412321, -0.829005, 0.377813,
		30.952341, 38.357849, 26.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094194, 39.141457, 27.340609>,  <31.240965, 38.938152, 26.699818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094194, 39.141457, 27.340609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029858, 38.749321, 27.386335>,  <30.991257, 38.514038, 27.413773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029858, 38.749321, 27.386335>,  <31.094194, 39.141457, 27.340609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029858, 38.749321, 27.386335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076152, 0.127807, 0.988871,
		-0.984038, 0.150345, -0.095211,
		-0.160840, -0.980338, 0.114318,
		30.981606, 38.455219, 27.420631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485758, 39.140598, 27.767406>,  <31.094194, 39.141457, 27.340609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485758, 39.140598, 27.767406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736135, 38.829235, 27.786455>,  <30.886362, 38.642418, 27.797884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736135, 38.829235, 27.786455>,  <30.485758, 39.140598, 27.767406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736135, 38.829235, 27.786455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054055, 0.017613, 0.998382,
		-0.777991, -0.627508, -0.031052,
		0.625946, -0.778411, 0.047622,
		30.923920, 38.595711, 27.800741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207750, 38.802650, 28.298513>,  <30.485758, 39.140598, 27.767406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207750, 38.802650, 28.298513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574579, 38.644726, 28.276230>,  <30.794676, 38.549973, 28.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574579, 38.644726, 28.276230>,  <30.207750, 38.802650, 28.298513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574579, 38.644726, 28.276230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021105, -0.091463, 0.995585,
		-0.398162, -0.914199, -0.075546,
		0.917072, -0.394810, -0.055711,
		30.849701, 38.526283, 28.259516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163574, 38.130375, 28.579178>,  <30.207750, 38.802650, 28.298513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163574, 38.130375, 28.579178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552160, 38.221336, 28.606142>,  <30.785311, 38.275913, 28.622320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552160, 38.221336, 28.606142>,  <30.163574, 38.130375, 28.579178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552160, 38.221336, 28.606142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034046, -0.147580, 0.988464,
		0.234731, -0.962552, -0.135627,
		0.971464, 0.227406, 0.067412,
		30.843599, 38.289558, 28.626366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507410, 37.562008, 28.998302>,  <30.163574, 38.130375, 28.579178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507410, 37.562008, 28.998302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756182, 37.874260, 29.023027>,  <30.905445, 38.061611, 29.037863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756182, 37.874260, 29.023027>,  <30.507410, 37.562008, 28.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756182, 37.874260, 29.023027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040215, -0.110669, 0.993043,
		0.782041, -0.615116, -0.100221,
		0.621928, 0.780631, 0.061811,
		30.942760, 38.108448, 29.041571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030832, 37.379246, 29.496702>,  <30.507410, 37.562008, 28.998302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030832, 37.379246, 29.496702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094513, 37.773659, 29.477165>,  <31.132721, 38.010307, 29.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094513, 37.773659, 29.477165>,  <31.030832, 37.379246, 29.496702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094513, 37.773659, 29.477165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117281, 0.030231, 0.992638,
		0.980255, -0.163759, -0.110830,
		0.159203, 0.986037, -0.048840,
		31.142273, 38.069469, 29.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504948, 37.413517, 29.965586>,  <31.030832, 37.379246, 29.496702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504948, 37.413517, 29.965586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394077, 37.797142, 29.942371>,  <31.327555, 38.027317, 29.928442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394077, 37.797142, 29.942371>,  <31.504948, 37.413517, 29.965586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394077, 37.797142, 29.942371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087844, 0.085444, 0.992463,
		0.956795, 0.269989, -0.107931,
		-0.277176, 0.959065, -0.058035,
		31.310925, 38.084862, 29.924961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010185, 37.750984, 30.308960>,  <31.504948, 37.413517, 29.965586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010185, 37.750984, 30.308960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697147, 37.999832, 30.299994>,  <31.509323, 38.149143, 30.294615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697147, 37.999832, 30.299994>,  <32.010185, 37.750984, 30.308960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697147, 37.999832, 30.299994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100544, 0.161848, 0.981680,
		0.614355, 0.766007, -0.189213,
		-0.782597, 0.622125, -0.022415,
		31.462368, 38.186470, 30.293268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713474, 38.112610, 30.170078>,  <32.010185, 37.750984, 30.308960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713474, 38.112610, 30.170078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969097, 37.810738, 30.229492>,  <33.122471, 37.629616, 30.265141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969097, 37.810738, 30.229492>,  <32.713474, 38.112610, 30.170078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969097, 37.810738, 30.229492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216612, -0.008714, -0.976219,
		0.738024, 0.656039, 0.157903,
		0.639062, -0.754676, 0.148537,
		33.160816, 37.584335, 30.274054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177677, 38.260750, 29.658325>,  <32.713474, 38.112610, 30.170078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177677, 38.260750, 29.658325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265724, 37.876820, 29.727924>,  <33.318554, 37.646461, 29.769684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265724, 37.876820, 29.727924>,  <33.177677, 38.260750, 29.658325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265724, 37.876820, 29.727924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363546, -0.084803, -0.927708,
		0.905197, 0.267462, 0.330276,
		0.220118, -0.959829, 0.173998,
		33.331760, 37.588871, 29.780125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836292, 38.127018, 29.411470>,  <33.177677, 38.260750, 29.658325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836292, 38.127018, 29.411470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680603, 37.758656, 29.419823>,  <33.587189, 37.537640, 29.424833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680603, 37.758656, 29.419823>,  <33.836292, 38.127018, 29.411470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680603, 37.758656, 29.419823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357170, -0.171775, -0.918109,
		0.849079, -0.349893, 0.395779,
		-0.389224, -0.920906, 0.020879,
		33.563835, 37.482384, 29.426086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306881, 37.669563, 28.922131>,  <33.836292, 38.127018, 29.411470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306881, 37.669563, 28.922131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966663, 37.461216, 28.951197>,  <33.762535, 37.336208, 28.968637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966663, 37.461216, 28.951197>,  <34.306881, 37.669563, 28.922131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966663, 37.461216, 28.951197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156857, -0.383134, -0.910277,
		0.501972, -0.762830, 0.407573,
		-0.850541, -0.520864, 0.072667,
		33.711502, 37.304958, 28.972996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408440, 37.029781, 28.670967>,  <34.306881, 37.669563, 28.922131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408440, 37.029781, 28.670967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018581, 37.087158, 28.602270>,  <33.784668, 37.121586, 28.561052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018581, 37.087158, 28.602270>,  <34.408440, 37.029781, 28.670967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018581, 37.087158, 28.602270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125138, -0.286874, -0.949760,
		-0.185503, -0.947169, 0.261650,
		-0.974643, 0.143441, -0.171742,
		33.726189, 37.130192, 28.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263000, 36.474548, 28.321354>,  <34.408440, 37.029781, 28.670967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263000, 36.474548, 28.321354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952427, 36.723145, 28.279610>,  <33.766083, 36.872303, 28.254562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952427, 36.723145, 28.279610>,  <34.263000, 36.474548, 28.321354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952427, 36.723145, 28.279610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017421, -0.186706, -0.982261,
		-0.629955, -0.760845, 0.155792,
		-0.776436, 0.621495, -0.104362,
		33.719498, 36.909592, 28.248301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749466, 36.061069, 28.083467>,  <34.263000, 36.474548, 28.321354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749466, 36.061069, 28.083467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659458, 36.432568, 27.965620>,  <33.605453, 36.655468, 27.894913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659458, 36.432568, 27.965620>,  <33.749466, 36.061069, 28.083467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659458, 36.432568, 27.965620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041385, -0.311209, -0.949440,
		-0.973476, -0.201446, 0.108464,
		-0.225016, 0.928746, -0.294618,
		33.591953, 36.711193, 27.877235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306133, 36.004280, 27.517702>,  <33.749466, 36.061069, 28.083467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306133, 36.004280, 27.517702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370804, 36.397690, 27.485353>,  <33.409607, 36.633736, 27.465944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370804, 36.397690, 27.485353>,  <33.306133, 36.004280, 27.517702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370804, 36.397690, 27.485353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061560, -0.071736, -0.995522,
		-0.984922, 0.165932, 0.048947,
		0.161678, 0.983525, -0.080869,
		33.419308, 36.692749, 27.461092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719559, 36.313259, 27.165052>,  <33.306133, 36.004280, 27.517702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719559, 36.313259, 27.165052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028625, 36.563866, 27.124157>,  <33.214066, 36.714230, 27.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028625, 36.563866, 27.124157>,  <32.719559, 36.313259, 27.165052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028625, 36.563866, 27.124157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011465, -0.147252, -0.989033,
		-0.634703, 0.765369, -0.106594,
		0.772671, 0.626520, -0.102236,
		33.260426, 36.751823, 27.093487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527298, 36.761448, 26.651863>,  <32.719559, 36.313259, 27.165052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527298, 36.761448, 26.651863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927101, 36.760384, 26.664385>,  <33.166985, 36.759747, 26.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927101, 36.760384, 26.664385>,  <32.527298, 36.761448, 26.651863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927101, 36.760384, 26.664385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030774, -0.117860, -0.992553,
		0.006329, 0.993027, -0.117720,
		0.999506, -0.002659, 0.031305,
		33.226952, 36.759586, 26.673777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716259, 37.095364, 25.964134>,  <32.527298, 36.761448, 26.651863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716259, 37.095364, 25.964134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025131, 36.882915, 26.103645>,  <33.210453, 36.755447, 26.187351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025131, 36.882915, 26.103645>,  <32.716259, 37.095364, 25.964134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025131, 36.882915, 26.103645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189276, -0.331719, -0.924195,
		0.606560, 0.779659, -0.155617,
		0.772179, -0.531125, 0.348778,
		33.256786, 36.723579, 26.208279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220650, 37.333466, 25.611221>,  <32.716259, 37.095364, 25.964134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220650, 37.333466, 25.611221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347237, 36.979275, 25.747332>,  <33.423187, 36.766762, 25.828999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347237, 36.979275, 25.747332>,  <33.220650, 37.333466, 25.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347237, 36.979275, 25.747332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003484, -0.359794, -0.933025,
		0.948599, 0.294082, -0.116946,
		0.316463, -0.885474, 0.340276,
		33.442177, 36.713634, 25.849415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751369, 37.094414, 25.180815>,  <33.220650, 37.333466, 25.611221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751369, 37.094414, 25.180815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602158, 36.763134, 25.348114>,  <33.512630, 36.564365, 25.448494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602158, 36.763134, 25.348114>,  <33.751369, 37.094414, 25.180815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602158, 36.763134, 25.348114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007287, -0.448156, -0.893926,
		0.927791, -0.336509, 0.161140,
		-0.373030, -0.828202, 0.418247,
		33.490250, 36.514675, 25.473589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252804, 36.569042, 24.968098>,  <33.751369, 37.094414, 25.180815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252804, 36.569042, 24.968098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901146, 36.396641, 25.049425>,  <33.690151, 36.293201, 25.098221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901146, 36.396641, 25.049425>,  <34.252804, 36.569042, 24.968098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901146, 36.396641, 25.049425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007432, -0.438990, -0.898461,
		0.476496, -0.788367, 0.389139,
		-0.879146, -0.431005, 0.203318,
		33.637402, 36.267338, 25.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347210, 35.885273, 24.728848>,  <34.252804, 36.569042, 24.968098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347210, 35.885273, 24.728848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953293, 35.933510, 24.778881>,  <33.716942, 35.962452, 24.808901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953293, 35.933510, 24.778881>,  <34.347210, 35.885273, 24.728848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953293, 35.933510, 24.778881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169495, -0.508488, -0.844223,
		-0.038202, -0.852583, 0.521193,
		-0.984790, 0.120591, 0.125083,
		33.657856, 35.969688, 24.816406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083763, 35.218960, 24.541628>,  <34.347210, 35.885273, 24.728848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083763, 35.218960, 24.541628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756100, 35.447762, 24.524664>,  <33.559502, 35.585041, 24.514486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756100, 35.447762, 24.524664>,  <34.083763, 35.218960, 24.541628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756100, 35.447762, 24.524664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264428, -0.442224, -0.857039,
		-0.508987, -0.690831, 0.513503,
		-0.819152, 0.572006, -0.042411,
		33.510353, 35.619362, 24.511942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515232, 34.746277, 24.383217>,  <34.083763, 35.218960, 24.541628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515232, 34.746277, 24.383217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423374, 35.117115, 24.264715>,  <33.368259, 35.339619, 24.193615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423374, 35.117115, 24.264715>,  <33.515232, 34.746277, 24.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423374, 35.117115, 24.264715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392713, -0.366772, -0.843359,
		-0.890529, -0.077327, 0.448307,
		-0.229641, 0.927091, -0.296254,
		33.354481, 35.395241, 24.175838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774170, 34.794327, 24.313145>,  <33.515232, 34.746277, 24.383217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774170, 34.794327, 24.313145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941391, 35.078629, 24.086847>,  <33.041725, 35.249210, 23.951069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941391, 35.078629, 24.086847>,  <32.774170, 34.794327, 24.313145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941391, 35.078629, 24.086847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527878, -0.316769, -0.788037,
		-0.739307, 0.628085, 0.242763,
		0.418054, 0.710751, -0.565742,
		33.066807, 35.291855, 23.917124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212593, 34.955700, 23.790241>,  <32.774170, 34.794327, 24.313145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212593, 34.955700, 23.790241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535786, 35.135620, 23.638008>,  <32.729702, 35.243572, 23.546669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535786, 35.135620, 23.638008>,  <32.212593, 34.955700, 23.790241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535786, 35.135620, 23.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302850, -0.237027, -0.923093,
		-0.505412, 0.861105, -0.055294,
		0.807985, 0.449796, -0.380582,
		32.778183, 35.270557, 23.523834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975330, 35.383991, 23.141235>,  <32.212593, 34.955700, 23.790241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975330, 35.383991, 23.141235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367455, 35.329731, 23.083839>,  <32.602730, 35.297176, 23.049402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367455, 35.329731, 23.083839>,  <31.975330, 35.383991, 23.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367455, 35.329731, 23.083839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165001, -0.163573, -0.972635,
		0.108467, 0.977161, -0.182735,
		0.980311, -0.135650, -0.143491,
		32.661549, 35.289036, 23.040792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224934, 35.913467, 22.590969>,  <31.975330, 35.383991, 23.141235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224934, 35.913467, 22.590969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451054, 35.584805, 22.620136>,  <32.586727, 35.387608, 22.637636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451054, 35.584805, 22.620136>,  <32.224934, 35.913467, 22.590969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451054, 35.584805, 22.620136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128363, -0.174943, -0.976175,
		0.814838, 0.542471, -0.204366,
		0.565299, -0.821657, 0.072917,
		32.620644, 35.338306, 22.642012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446449, 35.783348, 21.887922>,  <32.224934, 35.913467, 22.590969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446449, 35.783348, 21.887922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549652, 35.438835, 22.063025>,  <32.611572, 35.232128, 22.168087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549652, 35.438835, 22.063025>,  <32.446449, 35.783348, 21.887922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549652, 35.438835, 22.063025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029554, -0.445851, -0.894619,
		0.965690, 0.243757, -0.089579,
		0.258009, -0.861278, 0.437758,
		32.627056, 35.180450, 22.194351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863773, 35.583153, 21.401962>,  <32.446449, 35.783348, 21.887922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863773, 35.583153, 21.401962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757153, 35.265923, 21.621042>,  <32.693180, 35.075584, 21.752491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757153, 35.265923, 21.621042>,  <32.863773, 35.583153, 21.401962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757153, 35.265923, 21.621042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198592, -0.510873, -0.836403,
		0.943140, -0.331711, -0.021327,
		-0.266549, -0.793080, 0.547700,
		32.677189, 35.028000, 21.785353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405792, 34.975323, 21.416452>,  <32.863773, 35.583153, 21.401962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405792, 34.975323, 21.416452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034973, 34.842232, 21.485586>,  <32.812481, 34.762379, 21.527067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034973, 34.842232, 21.485586>,  <33.405792, 34.975323, 21.416452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034973, 34.842232, 21.485586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034755, -0.535249, -0.843979,
		0.373321, -0.776405, 0.507767,
		-0.927051, -0.332723, 0.172836,
		32.756859, 34.742416, 21.537437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409363, 34.307499, 21.068665>,  <33.405792, 34.975323, 21.416452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409363, 34.307499, 21.068665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020935, 34.373787, 21.137440>,  <32.787880, 34.413559, 21.178705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020935, 34.373787, 21.137440>,  <33.409363, 34.307499, 21.068665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020935, 34.373787, 21.137440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236404, -0.565284, -0.790296,
		-0.033776, -0.808078, 0.588107,
		-0.971068, 0.165724, 0.171940,
		32.729614, 34.423504, 21.189022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049759, 33.665379, 21.185331>,  <33.409363, 34.307499, 21.068665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049759, 33.665379, 21.185331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806530, 33.947414, 21.039400>,  <32.660591, 34.116634, 20.951841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806530, 33.947414, 21.039400>,  <33.049759, 33.665379, 21.185331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806530, 33.947414, 21.039400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183103, -0.571719, -0.799757,
		-0.772477, -0.419510, 0.476750,
		-0.608073, 0.705088, -0.364827,
		32.624107, 34.158939, 20.929953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466030, 33.244850, 21.010115>,  <33.049759, 33.665379, 21.185331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466030, 33.244850, 21.010115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396778, 33.596066, 20.831644>,  <32.355225, 33.806793, 20.724562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396778, 33.596066, 20.831644>,  <32.466030, 33.244850, 21.010115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396778, 33.596066, 20.831644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322085, -0.478586, -0.816833,
		-0.930745, 0.002285, 0.365662,
		-0.173135, 0.878037, -0.446178,
		32.344837, 33.859478, 20.697790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867479, 33.155655, 20.698854>,  <32.466030, 33.244850, 21.010115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867479, 33.155655, 20.698854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999031, 33.485710, 20.515121>,  <32.077961, 33.683743, 20.404882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999031, 33.485710, 20.515121>,  <31.867479, 33.155655, 20.698854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999031, 33.485710, 20.515121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233035, -0.400439, -0.886196,
		-0.915169, 0.398491, 0.060591,
		0.328878, 0.825139, -0.459332,
		32.097694, 33.733253, 20.377321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386351, 33.347492, 20.187757>,  <31.867479, 33.155655, 20.698854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386351, 33.347492, 20.187757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727097, 33.516785, 20.064339>,  <31.931545, 33.618359, 19.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727097, 33.516785, 20.064339>,  <31.386351, 33.347492, 20.187757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727097, 33.516785, 20.064339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202734, -0.276736, -0.939317,
		-0.482931, 0.862726, -0.149940,
		0.851867, 0.423227, -0.308548,
		31.982656, 33.643753, 19.971775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157789, 33.775139, 19.705608>,  <31.386351, 33.347492, 20.187757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157789, 33.775139, 19.705608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543283, 33.719376, 19.614588>,  <31.774580, 33.685917, 19.559975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543283, 33.719376, 19.614588>,  <31.157789, 33.775139, 19.705608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543283, 33.719376, 19.614588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255359, -0.234125, -0.938071,
		0.077495, 0.962160, -0.261233,
		0.963736, -0.139404, -0.227553,
		31.832405, 33.677555, 19.546322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422817, 34.140961, 19.021545>,  <31.157789, 33.775139, 19.705608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422817, 34.140961, 19.021545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693439, 33.854610, 19.090582>,  <31.855814, 33.682800, 19.132004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693439, 33.854610, 19.090582>,  <31.422817, 34.140961, 19.021545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693439, 33.854610, 19.090582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121771, -0.339910, -0.932541,
		0.726252, 0.609901, -0.317142,
		0.676557, -0.715879, 0.172593,
		31.896406, 33.639847, 19.142359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673433, 34.030369, 18.366236>,  <31.422817, 34.140961, 19.021545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673433, 34.030369, 18.366236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815119, 33.713848, 18.565582>,  <31.900131, 33.523933, 18.685190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815119, 33.713848, 18.565582>,  <31.673433, 34.030369, 18.366236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815119, 33.713848, 18.565582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018107, -0.527014, -0.849663,
		0.934989, 0.309988, -0.172348,
		0.354215, -0.791305, 0.498365,
		31.921383, 33.476456, 18.715092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185707, 33.807125, 17.885431>,  <31.673433, 34.030369, 18.366236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185707, 33.807125, 17.885431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102367, 33.500195, 18.128016>,  <32.052364, 33.316036, 18.273567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102367, 33.500195, 18.128016>,  <32.185707, 33.807125, 17.885431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102367, 33.500195, 18.128016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026630, -0.615389, -0.787773,
		0.977691, -0.180284, 0.107784,
		-0.208352, -0.767329, 0.606462,
		32.039864, 33.269997, 18.309954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626194, 33.380043, 17.727512>,  <32.185707, 33.807125, 17.885431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626194, 33.380043, 17.727512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362026, 33.133041, 17.898409>,  <32.203526, 32.984840, 18.000946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362026, 33.133041, 17.898409>,  <32.626194, 33.380043, 17.727512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362026, 33.133041, 17.898409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012559, -0.559813, -0.828524,
		0.750790, -0.552541, 0.361958,
		-0.660422, -0.617501, 0.427241,
		32.163898, 32.947792, 18.026581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762466, 32.730042, 17.536734>,  <32.626194, 33.380043, 17.727512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762466, 32.730042, 17.536734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376785, 32.705807, 17.639994>,  <32.145378, 32.691265, 17.701950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376785, 32.705807, 17.639994>,  <32.762466, 32.730042, 17.536734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376785, 32.705807, 17.639994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205077, -0.446764, -0.870830,
		0.168091, -0.892598, 0.418347,
		-0.964204, -0.060585, 0.258149,
		32.087524, 32.687630, 17.717438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596149, 32.109398, 17.443422>,  <32.762466, 32.730042, 17.536734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596149, 32.109398, 17.443422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239849, 32.291092, 17.437225>,  <32.026070, 32.400108, 17.433508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239849, 32.291092, 17.437225>,  <32.596149, 32.109398, 17.443422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239849, 32.291092, 17.437225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233415, -0.486443, -0.841957,
		-0.389980, -0.746355, 0.539323,
		-0.890749, 0.454233, -0.015493,
		31.972624, 32.427361, 17.432577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183533, 31.584953, 17.171713>,  <32.596149, 32.109398, 17.443422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183533, 31.584953, 17.171713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999266, 31.939177, 17.147814>,  <31.888704, 32.151711, 17.133474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999266, 31.939177, 17.147814>,  <32.183533, 31.584953, 17.171713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999266, 31.939177, 17.147814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318423, -0.227729, -0.920188,
		-0.828486, -0.404878, 0.386890,
		-0.460670, 0.885558, -0.059748,
		31.861065, 32.204845, 17.129889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555363, 31.409237, 17.026110>,  <32.183533, 31.584953, 17.171713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555363, 31.409237, 17.026110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576311, 31.791361, 16.909739>,  <31.588881, 32.020634, 16.839916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576311, 31.791361, 16.909739>,  <31.555363, 31.409237, 17.026110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576311, 31.791361, 16.909739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218887, -0.273262, -0.936705,
		-0.974344, 0.112736, 0.194794,
		0.052370, 0.955311, -0.290928,
		31.592022, 32.077953, 16.822460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926487, 31.021202, 17.097113>,  <31.555363, 31.409237, 17.026110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926487, 31.021202, 17.097113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912371, 30.622419, 17.124929>,  <30.903900, 30.383150, 17.141619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912371, 30.622419, 17.124929>,  <30.926487, 31.021202, 17.097113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912371, 30.622419, 17.124929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189356, 0.074993, 0.979041,
		-0.981274, 0.021383, -0.191426,
		-0.035291, -0.996955, 0.069540,
		30.901783, 30.323334, 17.145792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472641, 30.868143, 17.561600>,  <30.926487, 31.021202, 17.097113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472641, 30.868143, 17.561600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669764, 30.520121, 17.556793>,  <30.788036, 30.311308, 17.553909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669764, 30.520121, 17.556793>,  <30.472641, 30.868143, 17.561600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669764, 30.520121, 17.556793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077703, 0.030248, 0.996518,
		-0.866662, -0.492024, 0.082513,
		0.492807, -0.870056, -0.012017,
		30.817606, 30.259104, 17.553188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990118, 30.389101, 17.816063>,  <30.472641, 30.868143, 17.561600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990118, 30.389101, 17.816063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373373, 30.295256, 17.881706>,  <30.603325, 30.238949, 17.921091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373373, 30.295256, 17.881706>,  <29.990118, 30.389101, 17.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373373, 30.295256, 17.881706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128260, 0.160727, 0.978630,
		-0.255978, -0.958709, 0.123906,
		0.958136, -0.234615, 0.164107,
		30.660814, 30.224871, 17.930939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920652, 30.020906, 18.342737>,  <29.990118, 30.389101, 17.816063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920652, 30.020906, 18.342737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308083, 30.117662, 18.365883>,  <30.540541, 30.175716, 18.379770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308083, 30.117662, 18.365883>,  <29.920652, 30.020906, 18.342737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308083, 30.117662, 18.365883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073454, 0.055932, 0.995729,
		0.237624, -0.968689, 0.071943,
		0.968576, 0.241894, 0.057863,
		30.598656, 30.190229, 18.383242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172520, 29.708628, 19.000093>,  <29.920652, 30.020906, 18.342737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172520, 29.708628, 19.000093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458082, 29.974869, 18.913094>,  <30.629419, 30.134613, 18.860893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458082, 29.974869, 18.913094>,  <30.172520, 29.708628, 19.000093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458082, 29.974869, 18.913094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122508, 0.187097, 0.974673,
		0.689440, -0.722472, 0.052028,
		0.713908, 0.665604, -0.217500,
		30.672255, 30.174549, 18.847843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647938, 29.510338, 19.516418>,  <30.172520, 29.708628, 19.000093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647938, 29.510338, 19.516418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762213, 29.870543, 19.385290>,  <30.830778, 30.086664, 19.306614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762213, 29.870543, 19.385290>,  <30.647938, 29.510338, 19.516418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762213, 29.870543, 19.385290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361274, 0.215636, 0.907183,
		0.887617, -0.377603, -0.263726,
		0.285686, 0.900509, -0.327820,
		30.847919, 30.140696, 19.286943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339462, 29.630760, 19.725962>,  <30.647938, 29.510338, 19.516418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339462, 29.630760, 19.725962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218908, 30.006424, 19.660051>,  <31.146576, 30.231821, 19.620504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218908, 30.006424, 19.660051>,  <31.339462, 29.630760, 19.725962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218908, 30.006424, 19.660051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569138, 0.315837, 0.759163,
		0.765016, 0.135019, -0.629699,
		-0.301384, 0.939157, -0.164776,
		31.128492, 30.288172, 19.610619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873547, 30.096577, 19.861052>,  <31.339462, 29.630760, 19.725962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873547, 30.096577, 19.861052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558102, 30.341948, 19.878010>,  <31.368835, 30.489170, 19.888186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558102, 30.341948, 19.878010>,  <31.873547, 30.096577, 19.861052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558102, 30.341948, 19.878010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367520, 0.414953, 0.832312,
		0.492973, 0.671951, -0.552684,
		-0.788611, 0.613429, 0.042395,
		31.321518, 30.525976, 19.890728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048618, 30.742809, 19.824848>,  <31.873547, 30.096577, 19.861052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048618, 30.742809, 19.824848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698914, 30.788095, 20.013674>,  <31.489090, 30.815268, 20.126968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698914, 30.788095, 20.013674>,  <32.048618, 30.742809, 19.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698914, 30.788095, 20.013674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434465, 0.616292, 0.656829,
		-0.216565, 0.779337, -0.587991,
		-0.874265, 0.113215, 0.472062,
		31.436634, 30.822060, 20.155293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107254, 31.417685, 20.007923>,  <32.048618, 30.742809, 19.824848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107254, 31.417685, 20.007923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827642, 31.278654, 20.257898>,  <31.659876, 31.195236, 20.407883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827642, 31.278654, 20.257898>,  <32.107254, 31.417685, 20.007923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827642, 31.278654, 20.257898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372231, 0.569330, 0.733013,
		-0.610575, 0.745019, -0.268599,
		-0.699030, -0.347578, 0.624937,
		31.617933, 31.174381, 20.445379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870850, 32.005836, 20.463465>,  <32.107254, 31.417685, 20.007923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870850, 32.005836, 20.463465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799707, 31.665245, 20.660788>,  <31.757023, 31.460890, 20.779182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799707, 31.665245, 20.660788>,  <31.870850, 32.005836, 20.463465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799707, 31.665245, 20.660788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260977, 0.442538, 0.857934,
		-0.948820, 0.281329, 0.143508,
		-0.177854, -0.851478, 0.493309,
		31.746351, 31.409801, 20.808781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516277, 32.156906, 21.079866>,  <31.870850, 32.005836, 20.463465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516277, 32.156906, 21.079866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649967, 31.788008, 21.157593>,  <31.730181, 31.566669, 21.204229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649967, 31.788008, 21.157593>,  <31.516277, 32.156906, 21.079866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649967, 31.788008, 21.157593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307377, 0.301561, 0.902541,
		-0.890961, -0.241925, 0.384266,
		0.334226, -0.922244, 0.194317,
		31.750235, 31.511335, 21.215887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253677, 31.945347, 21.688848>,  <31.516277, 32.156906, 21.079866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253677, 31.945347, 21.688848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602026, 31.754023, 21.643597>,  <31.811035, 31.639227, 21.616446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602026, 31.754023, 21.643597>,  <31.253677, 31.945347, 21.688848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602026, 31.754023, 21.643597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284573, 0.303010, 0.909507,
		-0.400748, -0.824259, 0.399998,
		0.870873, -0.478312, -0.113131,
		31.863287, 31.610529, 21.609657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315956, 31.498491, 22.242664>,  <31.253677, 31.945347, 21.688848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315956, 31.498491, 22.242664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679495, 31.583736, 22.099234>,  <31.897617, 31.634884, 22.013174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679495, 31.583736, 22.099234>,  <31.315956, 31.498491, 22.242664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679495, 31.583736, 22.099234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322729, 0.185375, 0.928160,
		0.264278, -0.959280, 0.099698,
		0.908847, 0.213117, -0.358578,
		31.952148, 31.647671, 21.991661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822685, 31.284645, 22.805283>,  <31.315956, 31.498491, 22.242664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822685, 31.284645, 22.805283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033192, 31.538776, 22.579220>,  <32.159496, 31.691256, 22.443583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033192, 31.538776, 22.579220>,  <31.822685, 31.284645, 22.805283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033192, 31.538776, 22.579220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473398, 0.333202, 0.815396,
		0.706356, -0.696659, -0.125411,
		0.526266, 0.635330, -0.565156,
		32.191071, 31.729376, 22.409674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391838, 31.210831, 23.061520>,  <31.822685, 31.284645, 22.805283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391838, 31.210831, 23.061520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 31.562670, 22.871820>,  <32.415714, 31.773773, 22.758001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406761, 31.562670, 22.871820>,  <32.391838, 31.210831, 23.061520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406761, 31.562670, 22.871820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307440, 0.441459, 0.842968,
		0.950836, -0.177251, -0.253954,
		0.037307, 0.879600, -0.474249,
		32.417953, 31.826550, 22.729546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045883, 31.472330, 23.278685>,  <32.391838, 31.210831, 23.061520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045883, 31.472330, 23.278685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862530, 31.803944, 23.150566>,  <32.752518, 32.002911, 23.073694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862530, 31.803944, 23.150566>,  <33.045883, 31.472330, 23.278685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862530, 31.803944, 23.150566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357919, 0.502067, 0.787288,
		0.813498, 0.246239, -0.526865,
		-0.458383, 0.829033, -0.320297,
		32.725014, 32.052654, 23.054478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495716, 31.994261, 23.435604>,  <33.045883, 31.472330, 23.278685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495716, 31.994261, 23.435604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166977, 32.207443, 23.355082>,  <32.969734, 32.335354, 23.306768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166977, 32.207443, 23.355082>,  <33.495716, 31.994261, 23.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166977, 32.207443, 23.355082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257407, 0.662605, 0.703347,
		0.508239, 0.526227, -0.681747,
		-0.821849, 0.532954, -0.201307,
		32.920422, 32.367329, 23.294689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681976, 32.700424, 23.534416>,  <33.495716, 31.994261, 23.435604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681976, 32.700424, 23.534416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284210, 32.710026, 23.575531>,  <33.045551, 32.715786, 23.600201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284210, 32.710026, 23.575531>,  <33.681976, 32.700424, 23.534416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284210, 32.710026, 23.575531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090902, 0.689712, 0.718355,
		-0.053649, 0.723686, -0.688041,
		-0.994414, 0.024005, 0.102787,
		32.985886, 32.717228, 23.606367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450516, 33.447903, 23.682037>,  <33.681976, 32.700424, 23.534416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450516, 33.447903, 23.682037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136570, 33.231808, 23.803453>,  <32.948204, 33.102150, 23.876303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136570, 33.231808, 23.803453>,  <33.450516, 33.447903, 23.682037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136570, 33.231808, 23.803453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012109, 0.476378, 0.879158,
		-0.619554, 0.693692, -0.367349,
		-0.784861, -0.540237, 0.303541,
		32.901112, 33.069736, 23.894516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878422, 33.949951, 23.869110>,  <33.450516, 33.447903, 23.682037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878422, 33.949951, 23.869110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823734, 33.596882, 24.048977>,  <32.790920, 33.385040, 24.156897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823734, 33.596882, 24.048977>,  <32.878422, 33.949951, 23.869110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823734, 33.596882, 24.048977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015748, 0.455811, 0.889937,
		-0.990484, 0.114592, -0.076220,
		-0.136722, -0.882669, 0.449669,
		32.782719, 33.332081, 24.183878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297344, 34.051735, 24.462269>,  <32.878422, 33.949951, 23.869110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297344, 34.051735, 24.462269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487186, 33.717804, 24.573847>,  <32.601093, 33.517445, 24.640793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487186, 33.717804, 24.573847>,  <32.297344, 34.051735, 24.462269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487186, 33.717804, 24.573847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095106, 0.363694, 0.926650,
		-0.875046, -0.413263, 0.252009,
		0.474604, -0.834829, 0.278945,
		32.629566, 33.467354, 24.657530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137180, 34.087276, 25.201508>,  <32.297344, 34.051735, 24.462269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137180, 34.087276, 25.201508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424156, 33.809940, 25.174492>,  <32.596340, 33.643539, 25.158283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424156, 33.809940, 25.174492>,  <32.137180, 34.087276, 25.201508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424156, 33.809940, 25.174492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323964, 0.246244, 0.913461,
		-0.616710, -0.677231, 0.401282,
		0.717438, -0.693342, -0.067537,
		32.639389, 33.601936, 25.154230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060612, 33.701641, 25.832182>,  <32.137180, 34.087276, 25.201508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060612, 33.701641, 25.832182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433826, 33.646702, 25.699175>,  <32.657757, 33.613739, 25.619370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433826, 33.646702, 25.699175>,  <32.060612, 33.701641, 25.832182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433826, 33.646702, 25.699175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355743, 0.214343, 0.909672,
		-0.053671, -0.967053, 0.248853,
		0.933041, -0.137350, -0.332519,
		32.713737, 33.605495, 25.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454445, 33.396839, 26.385818>,  <32.060612, 33.701641, 25.832182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454445, 33.396839, 26.385818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751041, 33.545097, 26.162100>,  <32.929001, 33.634052, 26.027868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751041, 33.545097, 26.162100>,  <32.454445, 33.396839, 26.385818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751041, 33.545097, 26.162100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501751, 0.247112, 0.828964,
		0.445464, -0.895296, -0.002743,
		0.741490, 0.370650, -0.559295,
		32.973488, 33.656292, 25.994312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131954, 33.083168, 26.657383>,  <32.454445, 33.396839, 26.385818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131954, 33.083168, 26.657383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224163, 33.417057, 26.457340>,  <33.279488, 33.617390, 26.337315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224163, 33.417057, 26.457340>,  <33.131954, 33.083168, 26.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224163, 33.417057, 26.457340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653426, 0.248043, 0.715198,
		0.721037, -0.491650, -0.488248,
		0.230521, 0.834718, -0.500105,
		33.293320, 33.667473, 26.307308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804741, 32.971222, 26.396990>,  <33.131954, 33.083168, 26.657383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804741, 32.971222, 26.396990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706161, 33.355145, 26.450716>,  <33.647015, 33.585499, 26.482952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706161, 33.355145, 26.450716>,  <33.804741, 32.971222, 26.396990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706161, 33.355145, 26.450716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705265, 0.082556, 0.704120,
		0.664728, 0.268259, -0.697262,
		-0.246449, 0.959803, 0.134317,
		33.632225, 33.643085, 26.491011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466518, 33.270790, 26.477383>,  <33.804741, 32.971222, 26.396990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466518, 33.270790, 26.477383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239281, 33.554058, 26.645082>,  <34.102940, 33.724018, 26.745703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239281, 33.554058, 26.645082>,  <34.466518, 33.270790, 26.477383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239281, 33.554058, 26.645082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719322, 0.179790, 0.671008,
		0.399810, 0.682769, -0.611538,
		-0.568092, 0.708169, 0.419248,
		34.068851, 33.766510, 26.770857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929356, 33.742722, 26.804371>,  <34.466518, 33.270790, 26.477383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929356, 33.742722, 26.804371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581078, 33.822247, 26.984310>,  <34.372112, 33.869961, 27.092274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581078, 33.822247, 26.984310>,  <34.929356, 33.742722, 26.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581078, 33.822247, 26.984310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491195, 0.397756, 0.774931,
		-0.024862, 0.895691, -0.443981,
		-0.870695, 0.198815, 0.449848,
		34.319870, 33.881889, 27.119265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997082, 34.393620, 27.011190>,  <34.929356, 33.742722, 26.804371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997082, 34.393620, 27.011190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712975, 34.238144, 27.245947>,  <34.542511, 34.144859, 27.386801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712975, 34.238144, 27.245947>,  <34.997082, 34.393620, 27.011190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712975, 34.238144, 27.245947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442376, 0.402062, 0.801654,
		-0.547561, 0.829015, -0.113625,
		-0.710268, -0.388690, 0.586890,
		34.499893, 34.121536, 27.422014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848911, 34.954861, 27.557520>,  <34.997082, 34.393620, 27.011190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848911, 34.954861, 27.557520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696507, 34.611259, 27.694309>,  <34.605064, 34.405098, 27.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696507, 34.611259, 27.694309>,  <34.848911, 34.954861, 27.557520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696507, 34.611259, 27.694309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294352, 0.237930, 0.925606,
		-0.876462, 0.453330, 0.162193,
		-0.381015, -0.859000, 0.341975,
		34.582203, 34.353558, 27.796902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516651, 35.185238, 28.170517>,  <34.848911, 34.954861, 27.557520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516651, 35.185238, 28.170517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568520, 34.789345, 28.194540>,  <34.599640, 34.551807, 28.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568520, 34.789345, 28.194540>,  <34.516651, 35.185238, 28.170517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568520, 34.789345, 28.194540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447579, 0.112470, 0.887144,
		-0.884794, -0.088155, 0.457569,
		0.129669, -0.989737, 0.060056,
		34.607422, 34.492424, 28.212557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201912, 34.969341, 28.798279>,  <34.516651, 35.185238, 28.170517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201912, 34.969341, 28.798279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468967, 34.683712, 28.714037>,  <34.629200, 34.512333, 28.663492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468967, 34.683712, 28.714037>,  <34.201912, 34.969341, 28.798279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468967, 34.683712, 28.714037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312419, 0.011954, 0.949869,
		-0.675760, -0.699967, 0.231072,
		0.667640, -0.714075, -0.210605,
		34.669258, 34.469490, 28.650856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125217, 34.649178, 29.324123>,  <34.201912, 34.969341, 28.798279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125217, 34.649178, 29.324123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456570, 34.484833, 29.171822>,  <34.655380, 34.386227, 29.080441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456570, 34.484833, 29.171822>,  <34.125217, 34.649178, 29.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456570, 34.484833, 29.171822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362033, -0.125998, 0.923611,
		-0.427447, -0.902951, 0.044369,
		0.828384, -0.410858, -0.380755,
		34.705086, 34.361576, 29.057594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231701, 34.022659, 29.645683>,  <34.125217, 34.649178, 29.324123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231701, 34.022659, 29.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589825, 34.161079, 29.533491>,  <34.804699, 34.244129, 29.466177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589825, 34.161079, 29.533491>,  <34.231701, 34.022659, 29.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589825, 34.161079, 29.533491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378067, -0.257373, 0.889283,
		0.235546, -0.902225, -0.361258,
		0.895312, 0.346047, -0.280479,
		34.858418, 34.264893, 29.449348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723541, 33.456806, 29.922056>,  <34.231701, 34.022659, 29.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723541, 33.456806, 29.922056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978016, 33.755878, 29.845917>,  <35.130703, 33.935322, 29.800234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978016, 33.755878, 29.845917>,  <34.723541, 33.456806, 29.922056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978016, 33.755878, 29.845917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576644, -0.296879, 0.761147,
		0.512587, -0.593996, -0.620019,
		0.636189, 0.747684, -0.190348,
		35.168873, 33.980183, 29.788813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326939, 33.205120, 30.218960>,  <34.723541, 33.456806, 29.922056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326939, 33.205120, 30.218960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407139, 33.594944, 30.178879>,  <35.455257, 33.828838, 30.154829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407139, 33.594944, 30.178879>,  <35.326939, 33.205120, 30.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407139, 33.594944, 30.178879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597971, -0.040717, 0.800483,
		0.776036, -0.220414, -0.590920,
		0.200498, 0.974556, -0.100204,
		35.467289, 33.887310, 30.148817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045990, 33.233562, 30.427620>,  <35.326939, 33.205120, 30.218960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045990, 33.233562, 30.427620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916046, 33.606361, 30.491932>,  <35.838081, 33.830040, 30.530519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916046, 33.606361, 30.491932>,  <36.045990, 33.233562, 30.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916046, 33.606361, 30.491932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733735, 0.141099, 0.664624,
		0.596741, 0.333877, -0.729675,
		-0.324859, 0.931996, 0.160778,
		35.818588, 33.885960, 30.540165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658157, 33.637249, 30.544678>,  <36.045990, 33.233562, 30.427620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658157, 33.637249, 30.544678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359306, 33.833652, 30.723883>,  <36.179996, 33.951492, 30.831406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359306, 33.833652, 30.723883>,  <36.658157, 33.637249, 30.544678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359306, 33.833652, 30.723883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581544, 0.156473, 0.798325,
		0.321880, 0.856989, -0.402447,
		-0.747128, 0.491005, 0.448011,
		36.135166, 33.980953, 30.858286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988880, 34.229118, 30.862051>,  <36.658157, 33.637249, 30.544678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988880, 34.229118, 30.862051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653614, 34.148674, 31.064848>,  <36.452454, 34.100407, 31.186525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653614, 34.148674, 31.064848>,  <36.988880, 34.229118, 30.862051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653614, 34.148674, 31.064848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528057, -0.066530, 0.846599,
		-0.136531, 0.977306, 0.161961,
		-0.838162, -0.201112, 0.506990,
		36.402164, 34.088341, 31.216946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822094, 34.795898, 31.425154>,  <36.988880, 34.229118, 30.862051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822094, 34.795898, 31.425154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692497, 34.430431, 31.523323>,  <36.614738, 34.211151, 31.582224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692497, 34.430431, 31.523323>,  <36.822094, 34.795898, 31.425154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692497, 34.430431, 31.523323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517584, 0.045963, 0.854397,
		-0.791919, 0.403845, 0.458010,
		-0.323992, -0.913672, 0.245423,
		36.595299, 34.156330, 31.596951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585869, 34.766495, 32.082920>,  <36.822094, 34.795898, 31.425154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585869, 34.766495, 32.082920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695251, 34.389477, 32.006145>,  <36.760880, 34.163265, 31.960081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695251, 34.389477, 32.006145>,  <36.585869, 34.766495, 32.082920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695251, 34.389477, 32.006145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564801, -0.004180, 0.825217,
		-0.778603, -0.334065, 0.531205,
		0.273455, -0.942541, -0.191934,
		36.777287, 34.106716, 31.948565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391022, 34.368561, 32.724686>,  <36.585869, 34.766495, 32.082920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391022, 34.368561, 32.724686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715939, 34.254852, 32.520969>,  <36.910889, 34.186626, 32.398739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715939, 34.254852, 32.520969>,  <36.391022, 34.368561, 32.724686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715939, 34.254852, 32.520969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567937, 0.186713, 0.801615,
		-0.132786, -0.940387, 0.313114,
		0.812290, -0.284273, -0.509287,
		36.959625, 34.169571, 32.368183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726357, 33.950176, 33.209717>,  <36.391022, 34.368561, 32.724686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726357, 33.950176, 33.209717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974827, 34.114677, 32.942879>,  <37.123909, 34.213379, 32.782776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974827, 34.114677, 32.942879>,  <36.726357, 33.950176, 33.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974827, 34.114677, 32.942879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480729, 0.472298, 0.738805,
		0.618905, -0.779617, 0.095676,
		0.621173, 0.411256, -0.667093,
		37.161179, 34.238052, 32.742752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355076, 34.070415, 33.549644>,  <36.726357, 33.950176, 33.209717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355076, 34.070415, 33.549644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388611, 34.293919, 33.219612>,  <37.408733, 34.428020, 33.021591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388611, 34.293919, 33.219612>,  <37.355076, 34.070415, 33.549644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388611, 34.293919, 33.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830316, 0.418624, 0.367871,
		0.550951, -0.715918, -0.428853,
		0.083837, 0.558762, -0.825079,
		37.413761, 34.461548, 32.972088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155876, 34.147354, 33.472210>,  <37.355076, 34.070415, 33.549644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155876, 34.147354, 33.472210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972740, 34.441895, 33.272945>,  <37.862858, 34.618618, 33.153385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972740, 34.441895, 33.272945>,  <38.155876, 34.147354, 33.472210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972740, 34.441895, 33.272945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702193, 0.643184, 0.305352,
		0.545257, -0.210003, -0.811538,
		-0.457843, 0.736351, -0.498163,
		37.835388, 34.662800, 33.123497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367348, 34.920002, 33.337265>,  <38.155876, 34.147354, 33.472210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367348, 34.920002, 33.337265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538891, 35.256126, 33.204628>,  <38.641819, 35.457802, 33.125046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538891, 35.256126, 33.204628>,  <38.367348, 34.920002, 33.337265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538891, 35.256126, 33.204628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129585, 0.420485, 0.897997,
		0.894027, -0.342148, 0.289222,
		0.428862, 0.840313, -0.331588,
		38.667549, 35.508221, 33.105152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569176, 34.649357, 32.617229>,  <38.367348, 34.920002, 33.337265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569176, 34.649357, 32.617229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681023, 34.739227, 32.243851>,  <38.748131, 34.793152, 32.019821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681023, 34.739227, 32.243851>,  <38.569176, 34.649357, 32.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681023, 34.739227, 32.243851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236355, -0.958421, -0.159890,
		-0.930564, -0.175918, -0.321097,
		0.279619, 0.224681, -0.933452,
		38.764908, 34.806633, 31.963816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242947, 34.226730, 32.102448>,  <38.569176, 34.649357, 32.617229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242947, 34.226730, 32.102448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627003, 34.327026, 32.053020>,  <38.857437, 34.387203, 32.023365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627003, 34.327026, 32.053020>,  <38.242947, 34.226730, 32.102448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627003, 34.327026, 32.053020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239626, -0.965903, -0.098035,
		-0.143938, 0.064516, -0.987481,
		0.960136, 0.250738, -0.123571,
		38.915043, 34.402248, 32.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492928, 33.805733, 31.532091>,  <38.242947, 34.226730, 32.102448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492928, 33.805733, 31.532091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820499, 33.934357, 31.722231>,  <39.017040, 34.011532, 31.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820499, 33.934357, 31.722231>,  <38.492928, 33.805733, 31.532091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820499, 33.934357, 31.722231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431532, -0.891064, -0.140659,
		0.378338, 0.320319, -0.868479,
		0.818926, 0.321560, 0.475351,
		39.066177, 34.030827, 31.864836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075420, 33.706280, 31.115736>,  <38.492928, 33.805733, 31.532091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075420, 33.706280, 31.115736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203751, 33.699276, 31.494526>,  <39.280750, 33.695072, 31.721800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203751, 33.699276, 31.494526>,  <39.075420, 33.706280, 31.115736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203751, 33.699276, 31.494526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449711, -0.877121, -0.168578,
		0.833565, 0.479950, -0.273528,
		0.320826, -0.017512, 0.946976,
		39.299999, 33.694023, 31.778618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724648, 33.292755, 31.011223>,  <39.075420, 33.706280, 31.115736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724648, 33.292755, 31.011223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600189, 33.309978, 31.390978>,  <39.525513, 33.320312, 31.618830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600189, 33.309978, 31.390978>,  <39.724648, 33.292755, 31.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600189, 33.309978, 31.390978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352581, -0.922451, 0.157390,
		0.882538, 0.383707, 0.271837,
		-0.311148, 0.043058, 0.949385,
		39.506844, 33.322895, 31.675793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322422, 33.316433, 31.538191>,  <39.724648, 33.292755, 31.011223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322422, 33.316433, 31.538191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999187, 33.216042, 31.751358>,  <39.805244, 33.155807, 31.879259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999187, 33.216042, 31.751358>,  <40.322422, 33.316433, 31.538191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999187, 33.216042, 31.751358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550406, -0.644020, 0.531311,
		0.209865, 0.722669, 0.658564,
		-0.808090, -0.250974, 0.532919,
		39.756760, 33.140751, 31.911234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851334, 33.667736, 31.947153>,  <40.322422, 33.316433, 31.538191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851334, 33.667736, 31.947153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023163, 33.890694, 32.231346>,  <41.126259, 34.024467, 32.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023163, 33.890694, 32.231346>,  <40.851334, 33.667736, 31.947153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023163, 33.890694, 32.231346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672551, -0.722507, 0.160183,
		0.602612, 0.409024, -0.685243,
		0.429574, 0.557390, 0.710481,
		41.152035, 34.057911, 32.444489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550007, 33.721371, 31.818974>,  <40.851334, 33.667736, 31.947153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550007, 33.721371, 31.818974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515499, 33.798603, 32.209927>,  <41.494793, 33.844944, 32.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515499, 33.798603, 32.209927>,  <41.550007, 33.721371, 31.818974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515499, 33.798603, 32.209927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737671, -0.647008, 0.192931,
		0.669626, 0.737631, -0.086612,
		-0.086273, 0.193083, 0.977382,
		41.489616, 33.856529, 32.503139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236389, 33.602737, 31.954313>,  <41.550007, 33.721371, 31.818974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236389, 33.602737, 31.954313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027252, 33.617706, 32.294956>,  <41.901768, 33.626686, 32.499340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027252, 33.617706, 32.294956>,  <42.236389, 33.602737, 31.954313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027252, 33.617706, 32.294956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600430, -0.692977, 0.399083,
		0.605076, 0.719988, 0.339853,
		-0.522845, 0.037418, 0.851606,
		41.870399, 33.628933, 32.550438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687038, 33.978420, 32.328983>,  <42.236389, 33.602737, 31.954313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687038, 33.978420, 32.328983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446804, 33.753994, 32.556847>,  <42.302662, 33.619339, 32.693565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446804, 33.753994, 32.556847>,  <42.687038, 33.978420, 32.328983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446804, 33.753994, 32.556847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758023, -0.626194, 0.182435,
		0.254356, 0.541378, 0.801381,
		-0.600586, -0.561062, 0.569654,
		42.266628, 33.585674, 32.727741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032452, 33.745956, 32.909611>,  <42.687038, 33.978420, 32.328983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032452, 33.745956, 32.909611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738651, 33.474705, 32.899380>,  <42.562370, 33.311954, 32.893242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738651, 33.474705, 32.899380>,  <43.032452, 33.745956, 32.909611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738651, 33.474705, 32.899380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655109, -0.718387, 0.233990,
		-0.177048, 0.155111, 0.971903,
		-0.734497, -0.678130, -0.025574,
		42.518303, 33.271267, 32.891708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250118, 33.299290, 33.425793>,  <43.032452, 33.745956, 32.909611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250118, 33.299290, 33.425793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994720, 33.091484, 33.198658>,  <42.841484, 32.966801, 33.062378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994720, 33.091484, 33.198658>,  <43.250118, 33.299290, 33.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994720, 33.091484, 33.198658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501704, -0.840447, 0.204796,
		-0.583628, -0.154123, 0.797261,
		-0.638492, -0.519514, -0.567832,
		42.803173, 32.935631, 33.028309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042542, 32.656277, 33.830284>,  <43.250118, 33.299290, 33.425793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042542, 32.656277, 33.830284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000164, 32.593792, 33.437473>,  <42.974739, 32.556301, 33.201786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000164, 32.593792, 33.437473>,  <43.042542, 32.656277, 33.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000164, 32.593792, 33.437473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467603, -0.879401, 0.089445,
		-0.877567, -0.449723, 0.166209,
		-0.105940, -0.156214, -0.982025,
		42.968384, 32.546928, 33.142864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125050, 32.009136, 33.864525>,  <43.042542, 32.656277, 33.830284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125050, 32.009136, 33.864525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167461, 32.112164, 33.480354>,  <43.192909, 32.173981, 33.249851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167461, 32.112164, 33.480354>,  <43.125050, 32.009136, 33.864525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167461, 32.112164, 33.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395105, -0.897262, -0.197010,
		-0.912497, -0.358581, -0.196899,
		0.106026, 0.257567, -0.960426,
		43.199268, 32.189434, 33.192226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249184, 31.435022, 33.496952>,  <43.125050, 32.009136, 33.864525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249184, 31.435022, 33.496952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409794, 31.678215, 33.222977>,  <43.506161, 31.824131, 33.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409794, 31.678215, 33.222977>,  <43.249184, 31.435022, 33.496952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409794, 31.678215, 33.222977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480535, -0.776513, -0.407570,
		-0.779658, -0.165488, -0.603943,
		0.401521, 0.607981, -0.684938,
		43.530251, 31.860609, 33.017494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118881, 31.208544, 32.771286>,  <43.249184, 31.435022, 33.496952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118881, 31.208544, 32.771286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463917, 31.407511, 32.808208>,  <43.670937, 31.526892, 32.830360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463917, 31.407511, 32.808208>,  <43.118881, 31.208544, 32.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463917, 31.407511, 32.808208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477910, -0.741311, -0.471233,
		-0.165972, 0.450593, -0.877166,
		0.862587, 0.497417, 0.092305,
		43.722694, 31.556736, 32.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499821, 31.314270, 32.184937>,  <43.118881, 31.208544, 32.771286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499821, 31.314270, 32.184937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807640, 31.303734, 32.440155>,  <43.992332, 31.297413, 32.593285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807640, 31.303734, 32.440155>,  <43.499821, 31.314270, 32.184937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807640, 31.303734, 32.440155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425442, -0.723967, -0.543020,
		0.476225, 0.689331, -0.545923,
		0.769551, -0.026341, 0.638042,
		44.038506, 31.295832, 32.631569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254604, 31.905849, 32.048473>,  <43.499821, 31.314270, 32.184937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254604, 31.905849, 32.048473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095352, 31.951691, 32.412529>,  <42.999802, 31.979195, 32.630962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095352, 31.951691, 32.412529>,  <43.254604, 31.905849, 32.048473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095352, 31.951691, 32.412529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654055, 0.660208, -0.369239,
		-0.643199, -0.742288, -0.187891,
		-0.398129, 0.114603, 0.910143,
		42.975914, 31.986071, 32.685574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496517, 31.952618, 32.064453>,  <43.254604, 31.905849, 32.048473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496517, 31.952618, 32.064453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619781, 32.121254, 32.405582>,  <42.693741, 32.222435, 32.610260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619781, 32.121254, 32.405582>,  <42.496517, 31.952618, 32.064453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619781, 32.121254, 32.405582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649059, 0.748570, -0.135521,
		-0.695529, -0.511767, 0.504315,
		0.308160, 0.421589, 0.852819,
		42.712231, 32.247730, 32.661427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935898, 32.284374, 32.280575>,  <42.496517, 31.952618, 32.064453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935898, 32.284374, 32.280575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180790, 32.465588, 32.539787>,  <42.327724, 32.574314, 32.695312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180790, 32.465588, 32.539787>,  <41.935898, 32.284374, 32.280575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180790, 32.465588, 32.539787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653763, 0.751009, 0.092624,
		-0.444714, -0.480365, 0.755962,
		0.612228, 0.453029, 0.648029,
		42.364460, 32.601498, 32.734196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479923, 32.511127, 32.815693>,  <41.935898, 32.284374, 32.280575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479923, 32.511127, 32.815693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805843, 32.737625, 32.865437>,  <42.001396, 32.873524, 32.895283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805843, 32.737625, 32.865437>,  <41.479923, 32.511127, 32.815693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805843, 32.737625, 32.865437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578436, 0.779648, 0.239919,
		0.038894, -0.267422, 0.962794,
		0.814800, 0.566247, 0.124364,
		42.050282, 32.907497, 32.902744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437180, 32.844688, 33.495026>,  <41.479923, 32.511127, 32.815693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437180, 32.844688, 33.495026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669773, 33.034088, 33.230396>,  <41.809330, 33.147728, 33.071621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669773, 33.034088, 33.230396>,  <41.437180, 32.844688, 33.495026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669773, 33.034088, 33.230396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564359, 0.820478, 0.091184,
		0.585978, 0.320340, 0.744320,
		0.581488, 0.473495, -0.661569,
		41.844219, 33.176136, 33.031925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491367, 33.544842, 33.749340>,  <41.437180, 32.844688, 33.495026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491367, 33.544842, 33.749340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605694, 33.578629, 33.367519>,  <41.674290, 33.598900, 33.138428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605694, 33.578629, 33.367519>,  <41.491367, 33.544842, 33.749340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605694, 33.578629, 33.367519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507122, 0.858528, -0.075881,
		0.813101, 0.505763, 0.288217,
		0.285820, 0.084463, -0.954554,
		41.691441, 33.603966, 33.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583080, 34.264954, 33.716988>,  <41.491367, 33.544842, 33.749340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583080, 34.264954, 33.716988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525414, 34.115185, 33.350594>,  <41.490814, 34.025322, 33.130756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525414, 34.115185, 33.350594>,  <41.583080, 34.264954, 33.716988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525414, 34.115185, 33.350594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437691, 0.854309, -0.280325,
		0.887492, 0.360505, -0.287044,
		-0.144166, -0.374423, -0.915982,
		41.482162, 34.002857, 33.075798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672047, 34.832111, 33.353516>,  <41.583080, 34.264954, 33.716988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672047, 34.832111, 33.353516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498478, 34.595501, 33.081692>,  <41.394337, 34.453533, 32.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498478, 34.595501, 33.081692>,  <41.672047, 34.832111, 33.353516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498478, 34.595501, 33.081692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517861, 0.780978, -0.349132,
		0.737244, 0.200421, -0.645215,
		-0.433926, -0.591527, -0.679561,
		41.368301, 34.418041, 32.877823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631542, 35.188366, 32.718632>,  <41.672047, 34.832111, 33.353516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631542, 35.188366, 32.718632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347275, 34.907070, 32.726643>,  <41.176712, 34.738293, 32.731449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347275, 34.907070, 32.726643>,  <41.631542, 35.188366, 32.718632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347275, 34.907070, 32.726643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700251, 0.704339, -0.116426,
		0.067769, -0.096766, -0.992997,
		-0.710673, -0.703237, 0.020028,
		41.134071, 34.696098, 32.732651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128628, 35.354244, 32.148983>,  <41.631542, 35.188366, 32.718632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128628, 35.354244, 32.148983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945389, 35.091019, 32.388012>,  <40.835445, 34.933083, 32.531429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945389, 35.091019, 32.388012>,  <41.128628, 35.354244, 32.148983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945389, 35.091019, 32.388012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830040, 0.557244, -0.022660,
		-0.318084, -0.506392, -0.801492,
		-0.458101, -0.658062, 0.597576,
		40.807957, 34.893600, 32.567284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281971, 35.540691, 31.361677>,  <41.128628, 35.354244, 32.148983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281971, 35.540691, 31.361677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980572, 35.786148, 31.456072>,  <40.799732, 35.933422, 31.512709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980572, 35.786148, 31.456072>,  <41.281971, 35.540691, 31.361677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980572, 35.786148, 31.456072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649621, -0.639664, -0.410880,
		-0.101181, -0.462897, 0.880618,
		-0.753495, 0.613641, 0.235986,
		40.754524, 35.970242, 31.526867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191196, 35.924549, 30.678745>,  <41.281971, 35.540691, 31.361677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191196, 35.924549, 30.678745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913689, 36.143124, 30.491087>,  <40.747185, 36.274269, 30.378492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913689, 36.143124, 30.491087>,  <41.191196, 35.924549, 30.678745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913689, 36.143124, 30.491087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427243, 0.836671, 0.342702,
		0.579784, 0.037317, -0.813915,
		-0.693768, 0.546433, -0.469145,
		40.705559, 36.307053, 30.350344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544220, 36.555977, 30.560318>,  <41.191196, 35.924549, 30.678745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544220, 36.555977, 30.560318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149105, 36.617825, 30.567978>,  <40.912037, 36.654934, 30.572575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149105, 36.617825, 30.567978>,  <41.544220, 36.555977, 30.560318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149105, 36.617825, 30.567978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143916, 0.858421, 0.492343,
		0.059688, 0.489087, -0.870190,
		-0.987788, 0.154621, 0.019150,
		40.852768, 36.664211, 30.573723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373566, 37.129726, 30.137959>,  <41.544220, 36.555977, 30.560318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373566, 37.129726, 30.137959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106697, 37.056660, 30.426823>,  <40.946575, 37.012817, 30.600142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106697, 37.056660, 30.426823>,  <41.373566, 37.129726, 30.137959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106697, 37.056660, 30.426823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199984, 0.889951, 0.409870,
		-0.717557, 0.417874, -0.557219,
		-0.667171, -0.182670, 0.722159,
		40.906544, 37.001858, 30.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809490, 37.668655, 30.113520>,  <41.373566, 37.129726, 30.137959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809490, 37.668655, 30.113520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898277, 37.531036, 30.478455>,  <40.951550, 37.448463, 30.697416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898277, 37.531036, 30.478455>,  <40.809490, 37.668655, 30.113520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898277, 37.531036, 30.478455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231140, 0.927575, 0.293563,
		-0.947262, 0.145716, 0.285416,
		0.221968, -0.344052, 0.912337,
		40.964867, 37.427822, 30.752155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574116, 38.204609, 30.595943>,  <40.809490, 37.668655, 30.113520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574116, 38.204609, 30.595943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852295, 37.974159, 30.767723>,  <41.019203, 37.835888, 30.870790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852295, 37.974159, 30.767723>,  <40.574116, 38.204609, 30.595943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852295, 37.974159, 30.767723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477017, 0.817110, 0.323708,
		-0.537404, -0.020269, 0.843082,
		0.695451, -0.576126, 0.429449,
		41.060932, 37.801323, 30.896557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571545, 38.244553, 31.372169>,  <40.574116, 38.204609, 30.595943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571545, 38.244553, 31.372169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940552, 38.176777, 31.233465>,  <41.161957, 38.136112, 31.150242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940552, 38.176777, 31.233465>,  <40.571545, 38.244553, 31.372169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940552, 38.176777, 31.233465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294695, 0.889422, 0.349405,
		0.249214, -0.424523, 0.870444,
		0.922522, -0.169439, -0.346761,
		41.217308, 38.125946, 31.129436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125511, 38.218506, 32.012398>,  <40.571545, 38.244553, 31.372169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125511, 38.218506, 32.012398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248520, 38.345886, 31.653728>,  <41.322323, 38.422314, 31.438526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248520, 38.345886, 31.653728>,  <41.125511, 38.218506, 32.012398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248520, 38.345886, 31.653728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246763, 0.883410, 0.398365,
		0.918988, -0.343771, 0.193086,
		0.307521, 0.318446, -0.896673,
		41.340775, 38.441422, 31.384726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846661, 38.400166, 31.945028>,  <41.125511, 38.218506, 32.012398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846661, 38.400166, 31.945028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564774, 38.593937, 31.737680>,  <41.395641, 38.710197, 31.613272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564774, 38.593937, 31.737680>,  <41.846661, 38.400166, 31.945028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564774, 38.593937, 31.737680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159425, 0.820059, 0.549624,
		0.691347, 0.304687, -0.655138,
		-0.704715, 0.484426, -0.518371,
		41.353359, 38.739265, 31.582169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216217, 39.047333, 31.781147>,  <41.846661, 38.400166, 31.945028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216217, 39.047333, 31.781147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818855, 39.082680, 31.810366>,  <41.580437, 39.103889, 31.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818855, 39.082680, 31.810366>,  <42.216217, 39.047333, 31.781147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818855, 39.082680, 31.810366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114622, 0.780064, 0.615111,
		-0.002622, 0.619428, -0.785049,
		-0.993406, 0.088371, 0.073046,
		41.520832, 39.109192, 31.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236858, 39.616444, 31.209295>,  <42.216217, 39.047333, 31.781147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236858, 39.616444, 31.209295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941013, 39.566795, 31.473888>,  <41.763504, 39.537006, 31.632645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941013, 39.566795, 31.473888>,  <42.236858, 39.616444, 31.209295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941013, 39.566795, 31.473888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665320, 0.013494, 0.746437,
		-0.101575, 0.992175, 0.072600,
		-0.739617, -0.124121, 0.661484,
		41.719128, 39.529560, 31.672333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429844, 40.058025, 30.710436>,  <42.236858, 39.616444, 31.209295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429844, 40.058025, 30.710436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766529, 39.983418, 30.507763>,  <42.968540, 39.938652, 30.386160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766529, 39.983418, 30.507763>,  <42.429844, 40.058025, 30.710436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766529, 39.983418, 30.507763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408145, -0.394539, 0.823260,
		-0.353454, -0.899751, -0.255965,
		0.841717, -0.186513, -0.506680,
		43.019043, 39.927464, 30.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522232, 39.393475, 30.529518>,  <42.429844, 40.058025, 30.710436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522232, 39.393475, 30.529518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880825, 39.565105, 30.573706>,  <43.095982, 39.668083, 30.600218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880825, 39.565105, 30.573706>,  <42.522232, 39.393475, 30.529518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880825, 39.565105, 30.573706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128718, -0.490786, 0.861720,
		0.423965, -0.758299, -0.495212,
		0.896485, 0.429082, 0.110469,
		43.149769, 39.693829, 30.606846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110245, 38.914860, 30.516226>,  <42.522232, 39.393475, 30.529518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110245, 38.914860, 30.516226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187569, 39.237068, 30.740286>,  <43.233963, 39.430393, 30.874722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187569, 39.237068, 30.740286>,  <43.110245, 38.914860, 30.516226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187569, 39.237068, 30.740286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135583, -0.587372, 0.797879,
		0.971725, -0.078289, -0.222758,
		0.193306, 0.805521, 0.560150,
		43.245560, 39.478725, 30.908331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756889, 38.970638, 30.698812>,  <43.110245, 38.914860, 30.516226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756889, 38.970638, 30.698812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509293, 39.115719, 30.977465>,  <43.360733, 39.202766, 31.144655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509293, 39.115719, 30.977465>,  <43.756889, 38.970638, 30.698812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509293, 39.115719, 30.977465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285984, -0.722000, 0.630023,
		0.731478, 0.589206, 0.343187,
		-0.618994, 0.362702, 0.696630,
		43.323593, 39.224529, 31.186453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134670, 39.086601, 31.305029>,  <43.756889, 38.970638, 30.698812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134670, 39.086601, 31.305029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747028, 39.000835, 31.353779>,  <43.514442, 38.949375, 31.383030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747028, 39.000835, 31.353779>,  <44.134670, 39.086601, 31.305029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747028, 39.000835, 31.353779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246622, -0.838151, 0.486499,
		-0.002161, 0.501528, 0.865139,
		-0.969109, -0.214414, 0.121877,
		43.456295, 38.936512, 31.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855606, 38.980862, 32.024734>,  <44.134670, 39.086601, 31.305029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855606, 38.980862, 32.024734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626934, 38.759541, 31.782398>,  <43.489731, 38.626747, 31.636995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626934, 38.759541, 31.782398>,  <43.855606, 38.980862, 32.024734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626934, 38.759541, 31.782398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166293, -0.801212, 0.574809,
		-0.803448, 0.227859, 0.550046,
		-0.571679, -0.553298, -0.605841,
		43.455429, 38.593552, 31.600645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273338, 38.685539, 32.357124>,  <43.855606, 38.980862, 32.024734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273338, 38.685539, 32.357124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378429, 38.454784, 32.047756>,  <43.441483, 38.316330, 31.862137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378429, 38.454784, 32.047756>,  <43.273338, 38.685539, 32.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378429, 38.454784, 32.047756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262496, -0.728608, 0.632634,
		-0.928477, -0.369231, -0.039996,
		0.262729, -0.576887, -0.773417,
		43.457249, 38.281719, 31.815731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052261, 38.046768, 32.489567>,  <43.273338, 38.685539, 32.357124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052261, 38.046768, 32.489567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363121, 38.017372, 32.239563>,  <43.549637, 37.999733, 32.089561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363121, 38.017372, 32.239563>,  <43.052261, 38.046768, 32.489567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363121, 38.017372, 32.239563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404963, -0.701811, 0.586061,
		-0.481709, -0.708562, -0.515651,
		0.777150, -0.073491, -0.625010,
		43.596268, 37.995323, 32.052059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199097, 37.360497, 32.166248>,  <43.052261, 38.046768, 32.489567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199097, 37.360497, 32.166248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536118, 37.571789, 32.208355>,  <43.738331, 37.698563, 32.233620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536118, 37.571789, 32.208355>,  <43.199097, 37.360497, 32.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536118, 37.571789, 32.208355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324468, -0.653765, 0.683602,
		0.429916, -0.541816, -0.722224,
		0.842551, 0.528230, 0.105262,
		43.788883, 37.730259, 32.239933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720093, 36.867798, 32.096485>,  <43.199097, 37.360497, 32.166248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720093, 36.867798, 32.096485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818218, 37.175804, 32.332077>,  <43.877094, 37.360607, 32.473431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818218, 37.175804, 32.332077>,  <43.720093, 36.867798, 32.096485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818218, 37.175804, 32.332077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436444, -0.630214, 0.642142,
		0.865642, 0.099528, -0.490671,
		0.245317, 0.770016, 0.588978,
		43.891815, 37.406807, 32.508770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213974, 36.605759, 32.519787>,  <43.720093, 36.867798, 32.096485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213974, 36.605759, 32.519787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199562, 36.965130, 32.694843>,  <44.190914, 37.180752, 32.799877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199562, 36.965130, 32.694843>,  <44.213974, 36.605759, 32.519787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199562, 36.965130, 32.694843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504151, -0.361776, 0.784188,
		0.862864, 0.248887, -0.439910,
		-0.036025, 0.898428, 0.437640,
		44.188755, 37.234657, 32.826134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899052, 36.733109, 32.705040>,  <44.213974, 36.605759, 32.519787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899052, 36.733109, 32.705040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658096, 36.929840, 32.956509>,  <44.513523, 37.047878, 33.107388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658096, 36.929840, 32.956509>,  <44.899052, 36.733109, 32.705040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658096, 36.929840, 32.956509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483770, -0.401506, 0.777663,
		0.634895, 0.772589, 0.003929,
		-0.602391, 0.491833, 0.628669,
		44.477379, 37.077389, 33.145111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276093, 37.060104, 33.185501>,  <44.899052, 36.733109, 32.705040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276093, 37.060104, 33.185501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916424, 37.052864, 33.360394>,  <44.700623, 37.048519, 33.465328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916424, 37.052864, 33.360394>,  <45.276093, 37.060104, 33.185501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916424, 37.052864, 33.360394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392618, -0.474606, 0.787782,
		0.193254, 0.880013, 0.433856,
		-0.899169, -0.018097, 0.437228,
		44.646671, 37.047436, 33.491562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906193, 36.623276, 33.361881>,  <45.276093, 37.060104, 33.185501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906193, 36.623276, 33.361881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180855, 36.349972, 33.262554>,  <46.345654, 36.185989, 33.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180855, 36.349972, 33.262554>,  <45.906193, 36.623276, 33.361881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180855, 36.349972, 33.262554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357951, -0.615053, 0.702553,
		-0.632761, -0.393519, -0.666901,
		0.686647, -0.683266, -0.248321,
		46.386852, 36.144993, 33.188061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637402, 36.064072, 33.062576>,  <45.906193, 36.623276, 33.361881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637402, 36.064072, 33.062576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973877, 35.955933, 33.249901>,  <46.175762, 35.891048, 33.362293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973877, 35.955933, 33.249901>,  <45.637402, 36.064072, 33.062576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973877, 35.955933, 33.249901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540679, -0.407696, 0.735833,
		-0.008000, -0.872180, -0.489119,
		0.841190, -0.270343, 0.468309,
		46.226234, 35.874828, 33.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684418, 35.274666, 33.155926>,  <45.637402, 36.064072, 33.062576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684418, 35.274666, 33.155926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873356, 35.506672, 33.421398>,  <45.986717, 35.645874, 33.580681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873356, 35.506672, 33.421398>,  <45.684418, 35.274666, 33.155926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873356, 35.506672, 33.421398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327486, -0.583590, 0.743085,
		0.818318, -0.568340, -0.085710,
		0.472344, 0.580011, 0.663685,
		46.015060, 35.680676, 33.620502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969437, 34.845535, 33.648945>,  <45.684418, 35.274666, 33.155926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969437, 34.845535, 33.648945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923264, 35.203777, 33.820789>,  <45.895561, 35.418724, 33.923897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923264, 35.203777, 33.820789>,  <45.969437, 34.845535, 33.648945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923264, 35.203777, 33.820789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543740, -0.418923, 0.727221,
		0.831277, -0.149653, 0.535333,
		-0.115432, 0.895604, 0.429614,
		45.888634, 35.472458, 33.949673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871117, 35.124538, 34.397503>,  <45.969437, 34.845535, 33.648945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871117, 35.124538, 34.397503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039108, 35.398197, 34.636021>,  <46.139904, 35.562393, 34.779129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039108, 35.398197, 34.636021>,  <45.871117, 35.124538, 34.397503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039108, 35.398197, 34.636021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886823, -0.169814, -0.429777,
		-0.192770, 0.709304, -0.678032,
		0.419982, 0.684143, 0.596292,
		46.165104, 35.603439, 34.814907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438782, 35.599167, 34.045483>,  <45.871117, 35.124538, 34.397503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438782, 35.599167, 34.045483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552258, 35.548141, 34.425640>,  <46.620342, 35.517525, 34.653736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552258, 35.548141, 34.425640>,  <46.438782, 35.599167, 34.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552258, 35.548141, 34.425640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907221, -0.285316, -0.309103,
		0.310593, 0.949906, 0.034785,
		0.283694, -0.127563, 0.950392,
		46.637367, 35.509872, 34.710758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162685, 35.699448, 34.347538>,  <46.438782, 35.599167, 34.045483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162685, 35.699448, 34.347538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068600, 35.464504, 34.657295>,  <47.012150, 35.323540, 34.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068600, 35.464504, 34.657295>,  <47.162685, 35.699448, 34.347538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068600, 35.464504, 34.657295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935875, -0.351904, 0.017355,
		0.262319, 0.728819, 0.632465,
		-0.235215, -0.587356, 0.774395,
		46.998035, 35.288296, 34.889614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859474, 35.370689, 34.478390>,  <47.162685, 35.699448, 34.347538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859474, 35.370689, 34.478390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585945, 35.210155, 34.722134>,  <47.421829, 35.113834, 34.868378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585945, 35.210155, 34.722134>,  <47.859474, 35.370689, 34.478390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585945, 35.210155, 34.722134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597129, -0.787753, 0.151269,
		0.419314, 0.467306, 0.778332,
		-0.683822, -0.401336, 0.609358,
		47.380798, 35.089756, 34.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.223087, 34.898941, 34.964600>,  <47.859474, 35.370689, 34.478390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.223087, 34.898941, 34.964600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851673, 34.762291, 35.022724>,  <47.628826, 34.680302, 35.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851673, 34.762291, 35.022724>,  <48.223087, 34.898941, 34.964600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851673, 34.762291, 35.022724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323664, -0.936652, -0.133884,
		0.181845, -0.077283, 0.980285,
		-0.928533, -0.341629, 0.145312,
		47.573112, 34.659801, 35.066319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.301458, 30.790092, 25.233994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988165, 30.976278, 25.069124>,  <28.800188, 31.087990, 24.970203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988165, 30.976278, 25.069124>,  <29.301458, 30.790092, 25.233994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988165, 30.976278, 25.069124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007337, 0.655981, 0.754742,
		0.621682, 0.594165, -0.510372,
		-0.783235, 0.465465, -0.412171,
		28.753195, 31.115917, 24.945473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449547, 31.515785, 25.067921>,  <29.301458, 30.790092, 25.233994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449547, 31.515785, 25.067921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055395, 31.490583, 25.131243>,  <28.818905, 31.475462, 25.169235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.055395, 31.490583, 25.131243>,  <29.449547, 31.515785, 25.067921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055395, 31.490583, 25.131243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064075, 0.723882, 0.686942,
		-0.157876, 0.687041, -0.709261,
		-0.985378, -0.063006, 0.158305,
		28.759781, 31.471682, 25.178734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150047, 32.157734, 25.011986>,  <29.449547, 31.515785, 25.067921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150047, 32.157734, 25.011986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.890671, 31.946241, 25.231062>,  <28.735044, 31.819345, 25.362507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.890671, 31.946241, 25.231062>,  <29.150047, 32.157734, 25.011986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890671, 31.946241, 25.231062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143460, 0.621687, 0.770016,
		-0.747624, 0.577883, -0.327276,
		-0.648442, -0.528731, 0.547691,
		28.696138, 31.787622, 25.395369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727455, 32.686005, 25.285465>,  <29.150047, 32.157734, 25.011986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727455, 32.686005, 25.285465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.710537, 32.349918, 25.501707>,  <28.700386, 32.148266, 25.631453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.710537, 32.349918, 25.501707>,  <28.727455, 32.686005, 25.285465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710537, 32.349918, 25.501707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160897, 0.528298, 0.833675,
		-0.986065, 0.122241, 0.112844,
		-0.042294, -0.840214, 0.540604,
		28.697849, 32.097855, 25.663889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336340, 32.870911, 25.878756>,  <28.727455, 32.686005, 25.285465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336340, 32.870911, 25.878756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.513523, 32.536316, 26.007797>,  <28.619833, 32.335560, 26.085222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.513523, 32.536316, 26.007797>,  <28.336340, 32.870911, 25.878756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513523, 32.536316, 26.007797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154128, 0.425522, 0.891726,
		-0.883194, -0.345276, 0.317415,
		0.442959, -0.836490, 0.322602,
		28.646410, 32.285370, 26.104578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180496, 32.895481, 26.597584>,  <28.336340, 32.870911, 25.878756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180496, 32.895481, 26.597584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.487167, 32.643726, 26.546858>,  <28.671169, 32.492672, 26.516422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.487167, 32.643726, 26.546858>,  <28.180496, 32.895481, 26.597584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487167, 32.643726, 26.546858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389592, 0.299065, 0.871078,
		-0.510319, -0.717240, 0.474490,
		0.766676, -0.629386, -0.126813,
		28.717171, 32.454910, 26.508814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313419, 32.558357, 27.212879>,  <28.180496, 32.895481, 26.597584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313419, 32.558357, 27.212879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.659107, 32.539532, 27.012516>,  <28.866520, 32.528236, 26.892298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.659107, 32.539532, 27.012516>,  <28.313419, 32.558357, 27.212879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659107, 32.539532, 27.012516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500034, 0.190333, 0.844831,
		0.055580, -0.980591, 0.188022,
		0.864220, -0.047062, -0.500907,
		28.918373, 32.525414, 26.862244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699476, 32.167927, 27.673384>,  <28.313419, 32.558357, 27.212879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699476, 32.167927, 27.673384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967028, 32.350067, 27.438347>,  <29.127558, 32.459351, 27.297325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967028, 32.350067, 27.438347>,  <28.699476, 32.167927, 27.673384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967028, 32.350067, 27.438347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621393, 0.091359, 0.778154,
		0.408012, -0.885614, -0.221842,
		0.668877, 0.455348, -0.587590,
		29.167690, 32.486671, 27.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287493, 31.876127, 27.818922>,  <28.699476, 32.167927, 27.673384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287493, 31.876127, 27.818922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379360, 32.236481, 27.671593>,  <29.434481, 32.452694, 27.583195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379360, 32.236481, 27.671593>,  <29.287493, 31.876127, 27.818922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379360, 32.236481, 27.671593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683232, 0.120284, 0.720227,
		0.693144, -0.417062, -0.587887,
		0.229666, 0.900883, -0.368324,
		29.448259, 32.506744, 27.561096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935184, 31.994946, 28.022793>,  <29.287493, 31.876127, 27.818922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935184, 31.994946, 28.022793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850176, 32.367046, 27.903151>,  <29.799171, 32.590305, 27.831366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850176, 32.367046, 27.903151>,  <29.935184, 31.994946, 28.022793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850176, 32.367046, 27.903151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615962, 0.365158, 0.698033,
		0.758569, -0.035890, -0.650604,
		-0.212521, 0.930253, -0.299105,
		29.786419, 32.646122, 27.813419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600338, 32.334488, 27.847418>,  <29.935184, 31.994946, 28.022793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600338, 32.334488, 27.847418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324547, 32.613945, 27.923851>,  <30.159073, 32.781620, 27.969711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324547, 32.613945, 27.923851>,  <30.600338, 32.334488, 27.847418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324547, 32.613945, 27.923851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544520, 0.326009, 0.772797,
		0.477618, 0.636876, -0.605203,
		-0.689477, 0.698647, 0.191084,
		30.117704, 32.823540, 27.981176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006929, 32.791901, 28.156561>,  <30.600338, 32.334488, 27.847418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006929, 32.791901, 28.156561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660406, 32.963631, 28.258688>,  <30.452492, 33.066669, 28.319963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.660406, 32.963631, 28.258688>,  <31.006929, 32.791901, 28.156561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660406, 32.963631, 28.258688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359687, 0.181494, 0.915252,
		0.346604, 0.884725, -0.311653,
		-0.866309, 0.429327, 0.255317,
		30.400513, 33.092430, 28.335283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130318, 33.458305, 28.537046>,  <31.006929, 32.791901, 28.156561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130318, 33.458305, 28.537046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.754639, 33.402115, 28.662378>,  <30.529232, 33.368401, 28.737577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.754639, 33.402115, 28.662378>,  <31.130318, 33.458305, 28.537046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754639, 33.402115, 28.662378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266897, 0.275467, 0.923517,
		-0.216048, 0.950991, -0.221224,
		-0.939196, -0.140481, 0.313330,
		30.472879, 33.359970, 28.756378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945000, 34.062832, 28.782066>,  <31.130318, 33.458305, 28.537046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945000, 34.062832, 28.782066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698402, 33.805069, 28.963034>,  <30.550444, 33.650414, 29.071613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698402, 33.805069, 28.963034>,  <30.945000, 34.062832, 28.782066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698402, 33.805069, 28.963034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311299, 0.328294, 0.891805,
		-0.723209, 0.690627, -0.001788,
		-0.616491, -0.644405, 0.452417,
		30.513454, 33.611748, 29.098759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498299, 34.414513, 29.271641>,  <30.945000, 34.062832, 28.782066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498299, 34.414513, 29.271641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.507769, 34.035477, 29.399084>,  <30.513451, 33.808056, 29.475550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.507769, 34.035477, 29.399084>,  <30.498299, 34.414513, 29.271641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507769, 34.035477, 29.399084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377603, 0.303563, 0.874795,
		-0.925665, 0.099597, 0.365000,
		0.023673, -0.947592, 0.318606,
		30.514872, 33.751198, 29.494665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359602, 34.467606, 30.019911>,  <30.498299, 34.414513, 29.271641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359602, 34.467606, 30.019911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.519020, 34.102783, 29.981304>,  <30.614672, 33.883888, 29.958139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.519020, 34.102783, 29.981304>,  <30.359602, 34.467606, 30.019911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519020, 34.102783, 29.981304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387236, 0.071941, 0.919170,
		-0.831390, -0.403707, 0.381852,
		0.398546, -0.912055, -0.096519,
		30.638584, 33.829166, 29.952349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158329, 34.236839, 30.592075>,  <30.359602, 34.467606, 30.019911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158329, 34.236839, 30.592075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488071, 34.067841, 30.441378>,  <30.685917, 33.966442, 30.350960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488071, 34.067841, 30.441378>,  <30.158329, 34.236839, 30.592075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488071, 34.067841, 30.441378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524072, 0.318046, 0.790060,
		-0.213975, -0.848731, 0.483601,
		0.824356, -0.422495, -0.376743,
		30.735378, 33.941093, 30.328354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473619, 34.004539, 31.208946>,  <30.158329, 34.236839, 30.592075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473619, 34.004539, 31.208946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.778078, 33.994892, 30.949694>,  <30.960754, 33.989105, 30.794142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.778078, 33.994892, 30.949694>,  <30.473619, 34.004539, 31.208946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778078, 33.994892, 30.949694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580592, 0.470735, 0.664320,
		0.289077, -0.881945, 0.372300,
		0.761148, -0.024115, -0.648129,
		31.006422, 33.987659, 30.755255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017698, 33.628704, 31.525419>,  <30.473619, 34.004539, 31.208946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017698, 33.628704, 31.525419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223444, 33.794804, 31.225286>,  <31.346891, 33.894463, 31.045208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223444, 33.794804, 31.225286>,  <31.017698, 33.628704, 31.525419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223444, 33.794804, 31.225286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701551, 0.299453, 0.646649,
		0.493210, -0.859008, -0.137293,
		0.514364, 0.415252, -0.750331,
		31.377752, 33.919380, 31.000187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620712, 33.288689, 31.519167>,  <31.017698, 33.628704, 31.525419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620712, 33.288689, 31.519167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676405, 33.646397, 31.349035>,  <31.709820, 33.861019, 31.246956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676405, 33.646397, 31.349035>,  <31.620712, 33.288689, 31.519167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676405, 33.646397, 31.349035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686847, 0.222193, 0.692005,
		0.713341, -0.388483, -0.583288,
		0.139230, 0.894266, -0.425328,
		31.718174, 33.914677, 31.221437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416801, 33.389431, 31.576498>,  <31.620712, 33.288689, 31.519167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416801, 33.389431, 31.576498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.228424, 33.728680, 31.479424>,  <32.115398, 33.932228, 31.421179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.228424, 33.728680, 31.479424>,  <32.416801, 33.389431, 31.576498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228424, 33.728680, 31.479424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474358, 0.475411, 0.740924,
		0.743771, 0.233816, -0.626207,
		-0.470945, 0.848124, -0.242684,
		32.087139, 33.983116, 31.406618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953621, 32.977894, 31.434481>,  <32.416801, 33.389431, 31.576498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953621, 32.977894, 31.434481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338791, 33.035866, 31.343472>,  <33.569893, 33.070648, 31.288866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338791, 33.035866, 31.343472>,  <32.953621, 32.977894, 31.434481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338791, 33.035866, 31.343472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050910, -0.730630, -0.680873,
		-0.264916, 0.667214, -0.696165,
		0.962927, 0.144933, -0.227523,
		33.627670, 33.079346, 31.275215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967808, 33.054920, 30.624578>,  <32.953621, 32.977894, 31.434481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967808, 33.054920, 30.624578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328262, 32.956696, 30.767490>,  <33.544537, 32.897762, 30.853237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328262, 32.956696, 30.767490>,  <32.967808, 33.054920, 30.624578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328262, 32.956696, 30.767490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006982, -0.815791, -0.578305,
		0.433473, 0.523628, -0.733427,
		0.901139, -0.245559, 0.357279,
		33.598602, 32.883026, 30.874674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409279, 33.056911, 30.018070>,  <32.967808, 33.054920, 30.624578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409279, 33.056911, 30.018070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.530140, 32.809624, 30.308315>,  <33.602657, 32.661251, 30.482462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.530140, 32.809624, 30.308315>,  <33.409279, 33.056911, 30.018070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530140, 32.809624, 30.308315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000476, -0.761287, -0.648415,
		0.953260, 0.195573, -0.230316,
		0.302149, -0.618218, 0.725612,
		33.620785, 32.624157, 30.525999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828907, 32.641575, 29.645119>,  <33.409279, 33.056911, 30.018070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828907, 32.641575, 29.645119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.747482, 32.443745, 29.983103>,  <33.698627, 32.325047, 30.185894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.747482, 32.443745, 29.983103>,  <33.828907, 32.641575, 29.645119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747482, 32.443745, 29.983103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090527, -0.849826, -0.519231,
		0.974868, -0.182187, 0.128219,
		-0.203561, -0.494574, 0.844961,
		33.686413, 32.295372, 30.236591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191189, 32.023010, 29.614899>,  <33.828907, 32.641575, 29.645119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191189, 32.023010, 29.614899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900837, 31.953840, 29.881189>,  <33.726627, 31.912336, 30.040964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900837, 31.953840, 29.881189>,  <34.191189, 32.023010, 29.614899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900837, 31.953840, 29.881189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165357, -0.895620, -0.412943,
		0.667650, -0.409829, 0.621517,
		-0.725879, -0.172929, 0.665729,
		33.683075, 31.901962, 30.080908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300362, 31.343836, 29.868643>,  <34.191189, 32.023010, 29.614899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300362, 31.343836, 29.868643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915455, 31.419125, 29.947243>,  <33.684509, 31.464298, 29.994404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915455, 31.419125, 29.947243>,  <34.300362, 31.343836, 29.868643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915455, 31.419125, 29.947243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256244, -0.869783, -0.421684,
		0.091542, -0.456125, 0.885195,
		-0.962268, 0.188224, 0.196501,
		33.626774, 31.475592, 30.006193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029690, 30.738470, 30.156265>,  <34.300362, 31.343836, 29.868643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029690, 30.738470, 30.156265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679447, 30.905857, 30.059767>,  <33.469303, 31.006289, 30.001867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679447, 30.905857, 30.059767>,  <34.029690, 30.738470, 30.156265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679447, 30.905857, 30.059767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240734, -0.811063, -0.533127,
		-0.418760, -0.408734, 0.810911,
		-0.875607, 0.418466, -0.241244,
		33.416763, 31.031397, 29.987394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466450, 30.327703, 30.292204>,  <34.029690, 30.738470, 30.156265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466450, 30.327703, 30.292204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289005, 30.573286, 30.031050>,  <33.182537, 30.720636, 29.874357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289005, 30.573286, 30.031050>,  <33.466450, 30.327703, 30.292204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289005, 30.573286, 30.031050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302131, -0.788299, -0.536005,
		-0.843756, -0.040522, 0.535196,
		-0.443614, 0.613957, -0.652889,
		33.155922, 30.757473, 29.835184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844807, 29.977949, 30.050755>,  <33.466450, 30.327703, 30.292204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844807, 29.977949, 30.050755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.928764, 30.243713, 29.763838>,  <32.979137, 30.403172, 29.591688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.928764, 30.243713, 29.763838>,  <32.844807, 29.977949, 30.050755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928764, 30.243713, 29.763838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631570, -0.467900, -0.618214,
		-0.746367, 0.582778, 0.321412,
		0.209893, 0.664409, -0.717291,
		32.991734, 30.443035, 29.548651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156555, 29.955685, 29.606350>,  <32.844807, 29.977949, 30.050755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156555, 29.955685, 29.606350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428162, 30.137819, 29.376011>,  <32.591125, 30.247101, 29.237808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428162, 30.137819, 29.376011>,  <32.156555, 29.955685, 29.606350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428162, 30.137819, 29.376011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401400, -0.426486, -0.810548,
		-0.614663, 0.781523, -0.106820,
		0.679020, 0.455336, -0.575848,
		32.631866, 30.274420, 29.203257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814909, 30.205608, 29.112799>,  <32.156555, 29.955685, 29.606350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814909, 30.205608, 29.112799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180706, 30.201273, 28.951015>,  <32.400185, 30.198671, 28.853947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180706, 30.201273, 28.951015>,  <31.814909, 30.205608, 29.112799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180706, 30.201273, 28.951015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376033, -0.391730, -0.839730,
		-0.149337, 0.920017, -0.362309,
		0.914493, -0.010837, -0.404457,
		32.455055, 30.198021, 28.829678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762890, 30.540016, 28.460470>,  <31.814909, 30.205608, 29.112799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762890, 30.540016, 28.460470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.093071, 30.314425, 28.450998>,  <32.291180, 30.179070, 28.445314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.093071, 30.314425, 28.450998>,  <31.762890, 30.540016, 28.460470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093071, 30.314425, 28.450998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256691, -0.337675, -0.905586,
		0.502734, 0.753595, -0.423502,
		0.825451, -0.563978, -0.023680,
		32.340706, 30.145231, 28.443893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246243, 30.817970, 27.816811>,  <31.762890, 30.540016, 28.460470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246243, 30.817970, 27.816811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371738, 30.447220, 27.899239>,  <32.447037, 30.224770, 27.948696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371738, 30.447220, 27.899239>,  <32.246243, 30.817970, 27.816811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371738, 30.447220, 27.899239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086597, -0.244056, -0.965887,
		0.945552, 0.285191, -0.156834,
		0.313739, -0.926878, 0.206071,
		32.465858, 30.169157, 27.961060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862564, 30.734787, 27.348429>,  <32.246243, 30.817970, 27.816811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862564, 30.734787, 27.348429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.738503, 30.366880, 27.444630>,  <32.664066, 30.146137, 27.502350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.738503, 30.366880, 27.444630>,  <32.862564, 30.734787, 27.348429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738503, 30.366880, 27.444630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132744, -0.208600, -0.968950,
		0.941375, -0.332445, -0.057397,
		-0.310150, -0.919765, 0.240501,
		32.645458, 30.090952, 27.516779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993599, 30.355904, 26.736723>,  <32.862564, 30.734787, 27.348429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993599, 30.355904, 26.736723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742908, 30.110928, 26.929445>,  <32.592495, 29.963942, 27.045078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742908, 30.110928, 26.929445>,  <32.993599, 30.355904, 26.736723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742908, 30.110928, 26.929445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291078, -0.389549, -0.873799,
		0.722838, -0.687871, 0.065870,
		-0.626721, -0.612442, 0.481804,
		32.554893, 29.927195, 27.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087421, 29.733425, 26.483829>,  <32.993599, 30.355904, 26.736723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087421, 29.733425, 26.483829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723217, 29.690561, 26.643574>,  <32.504696, 29.664843, 26.739420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723217, 29.690561, 26.643574>,  <33.087421, 29.733425, 26.483829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723217, 29.690561, 26.643574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307987, -0.468667, -0.827947,
		0.275889, -0.876851, 0.393722,
		-0.910510, -0.107160, 0.399359,
		32.450066, 29.658413, 26.763382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806061, 29.153814, 26.096586>,  <33.087421, 29.733425, 26.483829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806061, 29.153814, 26.096586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497864, 29.357389, 26.250118>,  <32.312946, 29.479534, 26.342237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497864, 29.357389, 26.250118>,  <32.806061, 29.153814, 26.096586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497864, 29.357389, 26.250118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557906, -0.247117, -0.792259,
		-0.308359, -0.824570, 0.474341,
		-0.770491, 0.508937, 0.383831,
		32.266716, 29.510071, 26.365267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199951, 28.670010, 26.145422>,  <32.806061, 29.153814, 26.096586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199951, 28.670010, 26.145422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090450, 29.053951, 26.120953>,  <32.024750, 29.284315, 26.106272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.090450, 29.053951, 26.120953>,  <32.199951, 28.670010, 26.145422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090450, 29.053951, 26.120953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560977, -0.211008, -0.800487,
		-0.781258, -0.184819, 0.596220,
		-0.273752, 0.959853, -0.061173,
		32.008324, 29.341908, 26.102600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568085, 28.610573, 25.859644>,  <32.199951, 28.670010, 26.145422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568085, 28.610573, 25.859644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650734, 29.000206, 25.822832>,  <31.700323, 29.233986, 25.800745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650734, 29.000206, 25.822832>,  <31.568085, 28.610573, 25.859644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650734, 29.000206, 25.822832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466909, 0.015508, -0.884169,
		-0.859827, 0.225660, 0.458013,
		0.206625, 0.974083, -0.092029,
		31.712721, 29.292431, 25.795223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.942947, 28.947165, 25.671021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193396, 29.237736, 25.557692>,  <31.343664, 29.412079, 25.489695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193396, 29.237736, 25.557692>,  <30.942947, 28.947165, 25.671021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193396, 29.237736, 25.557692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623469, 0.248216, -0.741401,
		-0.468250, 0.640851, 0.608319,
		0.626122, 0.726429, -0.283323,
		31.381233, 29.455664, 25.472694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516771, 29.594654, 25.542007>,  <30.942947, 28.947165, 25.671021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516771, 29.594654, 25.542007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856333, 29.615391, 25.331606>,  <31.060070, 29.627832, 25.205366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856333, 29.615391, 25.331606>,  <30.516771, 29.594654, 25.542007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856333, 29.615391, 25.331606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528438, 0.103785, -0.842604,
		0.010909, 0.993248, 0.115498,
		0.848902, 0.051841, -0.526002,
		31.111004, 29.630943, 25.173805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436075, 30.135376, 25.052666>,  <30.516771, 29.594654, 25.542007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436075, 30.135376, 25.052666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719122, 29.902876, 24.891954>,  <30.888950, 29.763376, 24.795528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719122, 29.902876, 24.891954>,  <30.436075, 30.135376, 25.052666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719122, 29.902876, 24.891954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411285, 0.123548, -0.903095,
		0.574564, 0.804290, -0.151636,
		0.707616, -0.581251, -0.401779,
		30.931406, 29.728500, 24.771421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583149, 30.436230, 24.450226>,  <30.436075, 30.135376, 25.052666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583149, 30.436230, 24.450226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726398, 30.067394, 24.391573>,  <30.812347, 29.846092, 24.356380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726398, 30.067394, 24.391573>,  <30.583149, 30.436230, 24.450226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726398, 30.067394, 24.391573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282384, 0.042725, -0.958350,
		0.889948, 0.384614, -0.245082,
		0.358123, -0.922088, -0.146632,
		30.833836, 29.790768, 24.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958710, 30.487619, 23.881241>,  <30.583149, 30.436230, 24.450226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958710, 30.487619, 23.881241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879284, 30.098461, 23.928646>,  <30.831629, 29.864965, 23.957088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879284, 30.098461, 23.928646>,  <30.958710, 30.487619, 23.881241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879284, 30.098461, 23.928646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254921, -0.065491, -0.964742,
		0.946355, -0.221776, -0.235007,
		-0.198566, -0.972896, 0.118513,
		30.819714, 29.806593, 23.964199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778133, 30.245369, 23.184156>,  <30.958710, 30.487619, 23.881241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778133, 30.245369, 23.184156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677084, 29.921959, 23.396749>,  <30.616455, 29.727913, 23.524305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677084, 29.921959, 23.396749>,  <30.778133, 30.245369, 23.184156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677084, 29.921959, 23.396749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180945, -0.500129, -0.846835,
		0.950495, -0.310100, -0.019954,
		-0.252624, -0.808523, 0.531481,
		30.601297, 29.679401, 23.556194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118635, 29.580887, 22.881865>,  <30.778133, 30.245369, 23.184156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118635, 29.580887, 22.881865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759073, 29.523939, 23.047613>,  <30.543337, 29.489771, 23.147062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759073, 29.523939, 23.047613>,  <31.118635, 29.580887, 22.881865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759073, 29.523939, 23.047613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246781, -0.616940, -0.747318,
		0.362039, -0.774025, 0.519435,
		-0.898903, -0.142372, 0.414371,
		30.489403, 29.481228, 23.171925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995691, 28.856480, 22.738136>,  <31.118635, 29.580887, 22.881865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995691, 28.856480, 22.738136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639641, 29.009254, 22.837576>,  <30.426010, 29.100920, 22.897240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639641, 29.009254, 22.837576>,  <30.995691, 28.856480, 22.738136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639641, 29.009254, 22.837576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433962, -0.543866, -0.718253,
		-0.139123, -0.747217, 0.649855,
		-0.890124, 0.381938, 0.248600,
		30.372604, 29.123837, 22.912155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579330, 28.267433, 22.655621>,  <30.995691, 28.856480, 22.738136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579330, 28.267433, 22.655621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.305975, 28.558577, 22.678255>,  <30.141962, 28.733263, 22.691835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.305975, 28.558577, 22.678255>,  <30.579330, 28.267433, 22.655621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305975, 28.558577, 22.678255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537072, -0.448729, -0.714280,
		-0.494503, -0.518522, 0.697569,
		-0.683389, 0.727859, 0.056586,
		30.100958, 28.776934, 22.695230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881008, 28.017939, 22.683653>,  <30.579330, 28.267433, 22.655621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881008, 28.017939, 22.683653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845413, 28.385036, 22.528822>,  <29.824057, 28.605295, 22.435925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845413, 28.385036, 22.528822>,  <29.881008, 28.017939, 22.683653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845413, 28.385036, 22.528822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530792, -0.372532, -0.761236,
		-0.842818, 0.137717, 0.520281,
		-0.088986, 0.917744, -0.387075,
		29.818718, 28.660360, 22.412699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267763, 27.992556, 22.454802>,  <29.881008, 28.017939, 22.683653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267763, 27.992556, 22.454802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435381, 28.299269, 22.260300>,  <29.535952, 28.483297, 22.143599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435381, 28.299269, 22.260300>,  <29.267763, 27.992556, 22.454802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435381, 28.299269, 22.260300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456623, -0.284916, -0.842804,
		-0.784790, 0.575208, 0.230739,
		0.419046, 0.766785, -0.486253,
		29.561094, 28.529305, 22.114424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714104, 28.255253, 21.942238>,  <29.267763, 27.992556, 22.454802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714104, 28.255253, 21.942238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041759, 28.431698, 21.795580>,  <29.238354, 28.537565, 21.707584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041759, 28.431698, 21.795580>,  <28.714104, 28.255253, 21.942238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041759, 28.431698, 21.795580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303459, -0.209152, -0.929606,
		-0.486747, 0.872739, -0.037464,
		0.819140, 0.441114, -0.366644,
		29.287502, 28.564032, 21.685587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472588, 28.679012, 21.439917>,  <28.714104, 28.255253, 21.942238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472588, 28.679012, 21.439917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858971, 28.627321, 21.350271>,  <29.090801, 28.596308, 21.296484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858971, 28.627321, 21.350271>,  <28.472588, 28.679012, 21.439917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858971, 28.627321, 21.350271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236863, -0.093443, -0.967039,
		0.104025, 0.987202, -0.120871,
		0.965958, -0.129226, -0.224111,
		29.148758, 28.588552, 21.283037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623672, 29.097893, 20.854368>,  <28.472588, 28.679012, 21.439917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623672, 29.097893, 20.854368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919590, 28.828838, 20.860941>,  <29.097141, 28.667406, 20.864885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919590, 28.828838, 20.860941>,  <28.623672, 29.097893, 20.854368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919590, 28.828838, 20.860941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138940, -0.176620, -0.974423,
		0.658333, 0.718588, -0.224118,
		0.739793, -0.672634, 0.016434,
		29.141527, 28.627048, 20.865871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987799, 29.222923, 20.285103>,  <28.623672, 29.097893, 20.854368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987799, 29.222923, 20.285103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067520, 28.841270, 20.374468>,  <29.115353, 28.612280, 20.428087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067520, 28.841270, 20.374468>,  <28.987799, 29.222923, 20.285103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067520, 28.841270, 20.374468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017132, -0.231345, -0.972721,
		0.979788, 0.190038, -0.062454,
		0.199303, -0.954130, 0.223413,
		29.127312, 28.555031, 20.441492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634451, 29.124361, 19.945314>,  <28.987799, 29.222923, 20.285103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634451, 29.124361, 19.945314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.419102, 28.795666, 20.020044>,  <29.289892, 28.598450, 20.064882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.419102, 28.795666, 20.020044>,  <29.634451, 29.124361, 19.945314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419102, 28.795666, 20.020044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151496, -0.312460, -0.937773,
		0.828977, -0.476569, 0.292710,
		-0.538373, -0.821737, 0.186825,
		29.257589, 28.549145, 20.076092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989985, 28.626659, 19.611410>,  <29.634451, 29.124361, 19.945314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989985, 28.626659, 19.611410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655798, 28.423231, 19.694693>,  <29.455286, 28.301174, 19.744661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.655798, 28.423231, 19.694693>,  <29.989985, 28.626659, 19.611410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655798, 28.423231, 19.694693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041840, -0.436642, -0.898662,
		0.547945, -0.742091, 0.386079,
		-0.835467, -0.508571, 0.208206,
		29.405157, 28.270660, 19.757154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092791, 27.895006, 19.583603>,  <29.989985, 28.626659, 19.611410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092791, 27.895006, 19.583603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708122, 27.968859, 19.502506>,  <29.477322, 28.013170, 19.453848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708122, 27.968859, 19.502506>,  <30.092791, 27.895006, 19.583603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708122, 27.968859, 19.502506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075227, -0.533355, -0.842540,
		-0.263692, -0.825496, 0.499021,
		-0.961669, 0.184632, -0.202741,
		29.419622, 28.024248, 19.441685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908474, 27.320539, 19.192032>,  <30.092791, 27.895006, 19.583603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908474, 27.320539, 19.192032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593758, 27.556242, 19.118557>,  <29.404928, 27.697664, 19.074472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593758, 27.556242, 19.118557>,  <29.908474, 27.320539, 19.192032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593758, 27.556242, 19.118557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060887, -0.222053, -0.973132,
		-0.614212, -0.776833, 0.138830,
		-0.786789, 0.589256, -0.183686,
		29.357721, 27.733019, 19.063452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573767, 26.931463, 18.791624>,  <29.908474, 27.320539, 19.192032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573767, 26.931463, 18.791624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378950, 27.269941, 18.705149>,  <29.262060, 27.473028, 18.653263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378950, 27.269941, 18.705149>,  <29.573767, 26.931463, 18.791624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378950, 27.269941, 18.705149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089673, -0.197775, -0.976137,
		-0.868762, -0.494808, 0.020444,
		-0.487043, 0.846198, -0.216191,
		29.232838, 27.523800, 18.640291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992764, 26.812162, 18.216766>,  <29.573767, 26.931463, 18.791624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992764, 26.812162, 18.216766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.058418, 27.206526, 18.203827>,  <29.097811, 27.443144, 18.196064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.058418, 27.206526, 18.203827>,  <28.992764, 26.812162, 18.216766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058418, 27.206526, 18.203827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083600, -0.046578, -0.995410,
		-0.982889, 0.160677, -0.090067,
		0.164135, 0.985907, -0.032349,
		29.107658, 27.502298, 18.194122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568647, 26.958628, 17.701349>,  <28.992764, 26.812162, 18.216766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568647, 26.958628, 17.701349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856359, 27.233339, 17.743248>,  <29.028986, 27.398167, 17.768387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856359, 27.233339, 17.743248>,  <28.568647, 26.958628, 17.701349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856359, 27.233339, 17.743248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001436, 0.149302, -0.988790,
		-0.694718, 0.711368, 0.106404,
		0.719280, 0.686778, 0.104745,
		29.072144, 27.439373, 17.774672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323004, 27.582687, 17.439774>,  <28.568647, 26.958628, 17.701349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323004, 27.582687, 17.439774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721930, 27.611849, 17.436857>,  <28.961285, 27.629345, 17.435108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721930, 27.611849, 17.436857>,  <28.323004, 27.582687, 17.439774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721930, 27.611849, 17.436857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029458, 0.307882, -0.950968,
		-0.067083, 0.948628, 0.309202,
		0.997312, 0.072903, -0.007291,
		29.021124, 27.633720, 17.434669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646557, 28.367607, 17.274446>,  <28.323004, 27.582687, 17.439774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646557, 28.367607, 17.274446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870096, 28.052359, 17.171255>,  <29.004219, 27.863209, 17.109341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.870096, 28.052359, 17.171255>,  <28.646557, 28.367607, 17.274446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870096, 28.052359, 17.171255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037814, 0.286548, -0.957320,
		0.828409, 0.544750, 0.130333,
		0.558846, -0.788123, -0.257978,
		29.037750, 27.815922, 17.093863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182056, 28.418163, 17.864763>,  <28.646557, 28.367607, 17.274446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182056, 28.418163, 17.864763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.806704, 28.396572, 17.728218>,  <27.581491, 28.383617, 17.646290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.806704, 28.396572, 17.728218>,  <28.182056, 28.418163, 17.864763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806704, 28.396572, 17.728218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277448, 0.706608, 0.650944,
		0.206072, 0.705543, -0.678043,
		-0.938380, -0.053980, -0.341364,
		27.525190, 28.380379, 17.625809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002758, 29.071785, 17.639603>,  <28.182056, 28.418163, 17.864763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002758, 29.071785, 17.639603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.654404, 28.886377, 17.704971>,  <27.445391, 28.775133, 17.744192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.654404, 28.886377, 17.704971>,  <28.002758, 29.071785, 17.639603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654404, 28.886377, 17.704971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312921, 0.779336, 0.542877,
		-0.378992, 0.421648, -0.823759,
		-0.870888, -0.463518, 0.163419,
		27.393137, 28.747322, 17.753998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463142, 29.541531, 17.527334>,  <28.002758, 29.071785, 17.639603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463142, 29.541531, 17.527334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273958, 29.271854, 17.754236>,  <27.160448, 29.110048, 17.890377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273958, 29.271854, 17.754236>,  <27.463142, 29.541531, 17.527334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273958, 29.271854, 17.754236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115811, 0.685797, 0.718520,
		-0.873438, 0.274138, -0.402435,
		-0.472962, -0.674189, 0.567253,
		27.132069, 29.069597, 17.924412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059977, 29.960779, 17.815968>,  <27.463142, 29.541531, 17.527334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059977, 29.960779, 17.815968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.028431, 29.638420, 18.050678>,  <27.009502, 29.445004, 18.191504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.028431, 29.638420, 18.050678>,  <27.059977, 29.960779, 17.815968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028431, 29.638420, 18.050678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050539, 0.591084, 0.805025,
		-0.995604, 0.033834, -0.087345,
		-0.078866, -0.805900, 0.586776,
		27.004772, 29.396650, 18.226711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344107, 30.037395, 18.311152>,  <27.059977, 29.960779, 17.815968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344107, 30.037395, 18.311152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.605150, 29.780142, 18.471392>,  <26.761776, 29.625790, 18.567535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.605150, 29.780142, 18.471392>,  <26.344107, 30.037395, 18.311152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605150, 29.780142, 18.471392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081170, 0.466325, 0.880881,
		-0.753337, -0.607386, 0.252124,
		0.652606, -0.643135, 0.400602,
		26.800932, 29.587202, 18.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060709, 29.810955, 18.956293>,  <26.344107, 30.037395, 18.311152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060709, 29.810955, 18.956293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.455374, 29.753340, 18.986616>,  <26.692173, 29.718771, 19.004810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.455374, 29.753340, 18.986616>,  <26.060709, 29.810955, 18.956293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455374, 29.753340, 18.986616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011486, 0.402965, 0.915143,
		-0.162365, -0.903810, 0.395937,
		0.986664, -0.144039, 0.075809,
		26.751373, 29.710129, 19.009359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148914, 29.691227, 19.588120>,  <26.060709, 29.810955, 18.956293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148914, 29.691227, 19.588120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.537336, 29.730148, 19.500868>,  <26.770390, 29.753502, 19.448517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.537336, 29.730148, 19.500868>,  <26.148914, 29.691227, 19.588120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537336, 29.730148, 19.500868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208113, 0.103456, 0.972618,
		0.117214, -0.989862, 0.080210,
		0.971056, 0.097312, -0.218129,
		26.828653, 29.759338, 19.435429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623865, 29.307053, 20.098705>,  <26.148914, 29.691227, 19.588120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623865, 29.307053, 20.098705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.835510, 29.602274, 19.931223>,  <26.962498, 29.779408, 19.830732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.835510, 29.602274, 19.931223>,  <26.623865, 29.307053, 20.098705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835510, 29.602274, 19.931223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492422, 0.134789, 0.859856,
		0.691057, -0.661143, -0.292114,
		0.529114, 0.738053, -0.418708,
		26.994246, 29.823690, 19.805611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364979, 29.191158, 20.239201>,  <26.623865, 29.307053, 20.098705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364979, 29.191158, 20.239201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.333748, 29.579069, 20.146740>,  <27.315010, 29.811815, 20.091263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.333748, 29.579069, 20.146740>,  <27.364979, 29.191158, 20.239201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333748, 29.579069, 20.146740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690438, 0.219857, 0.689173,
		0.719166, -0.105788, -0.686738,
		-0.078078, 0.969779, -0.231153,
		27.310324, 29.870003, 20.077394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980099, 29.374853, 20.453608>,  <27.364979, 29.191158, 20.239201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980099, 29.374853, 20.453608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803421, 29.731062, 20.410015>,  <27.697414, 29.944786, 20.383860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.803421, 29.731062, 20.410015>,  <27.980099, 29.374853, 20.453608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803421, 29.731062, 20.410015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376451, 0.294227, 0.878473,
		0.814365, 0.346991, -0.465196,
		-0.441696, 0.890521, -0.108983,
		27.670912, 29.998219, 20.377319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509230, 29.898296, 20.626881>,  <27.980099, 29.374853, 20.453608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509230, 29.898296, 20.626881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.145187, 30.043762, 20.706331>,  <27.926762, 30.131042, 20.754002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.145187, 30.043762, 20.706331>,  <28.509230, 29.898296, 20.626881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145187, 30.043762, 20.706331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318931, 0.308723, 0.896088,
		0.264556, 0.878884, -0.396955,
		-0.910106, 0.363666, 0.198629,
		27.872156, 30.152863, 20.765921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481426, 30.532673, 20.747822>,  <28.509230, 29.898296, 20.626881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481426, 30.532673, 20.747822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141798, 30.417511, 20.924995>,  <27.938021, 30.348413, 21.031300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.141798, 30.417511, 20.924995>,  <28.481426, 30.532673, 20.747822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141798, 30.417511, 20.924995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333247, 0.358678, 0.871950,
		-0.409910, 0.887953, -0.208599,
		-0.849070, -0.287906, 0.442933,
		27.887077, 30.331139, 21.057875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460014, 30.901573, 21.403362>,  <28.481426, 30.532673, 20.747822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460014, 30.901573, 21.403362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164778, 30.643415, 21.482044>,  <27.987637, 30.488522, 21.529253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.164778, 30.643415, 21.482044>,  <28.460014, 30.901573, 21.403362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164778, 30.643415, 21.482044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036470, 0.252956, 0.966790,
		-0.673717, 0.720751, -0.163166,
		-0.738089, -0.645392, 0.196707,
		27.943352, 30.449799, 21.541056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082037, 31.226370, 21.878960>,  <28.460014, 30.901573, 21.403362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082037, 31.226370, 21.878960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969427, 30.848595, 21.946823>,  <27.901861, 30.621929, 21.987541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969427, 30.848595, 21.946823>,  <28.082037, 31.226370, 21.878960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969427, 30.848595, 21.946823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103795, 0.205744, 0.973086,
		-0.953924, 0.256338, -0.155950,
		-0.281524, -0.944436, 0.169658,
		27.884970, 30.565264, 21.997721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519464, 31.294830, 22.358356>,  <28.082037, 31.226370, 21.878960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519464, 31.294830, 22.358356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.692755, 30.935068, 22.381624>,  <27.796728, 30.719210, 22.395586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.692755, 30.935068, 22.381624>,  <27.519464, 31.294830, 22.358356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692755, 30.935068, 22.381624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026446, 0.077200, 0.996665,
		-0.900898, -0.430242, 0.057230,
		0.433225, -0.899407, 0.058171,
		27.822721, 30.665247, 22.399076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185392, 31.016411, 22.960463>,  <27.519464, 31.294830, 22.358356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185392, 31.016411, 22.960463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494993, 30.769978, 22.902002>,  <27.680754, 30.622118, 22.866926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494993, 30.769978, 22.902002>,  <27.185392, 31.016411, 22.960463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494993, 30.769978, 22.902002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217893, 0.042436, 0.975050,
		-0.594511, -0.786536, 0.167086,
		0.774002, -0.616084, -0.146152,
		27.727194, 30.585152, 22.858156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094688, 30.458576, 23.383390>,  <27.185392, 31.016411, 22.960463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094688, 30.458576, 23.383390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488470, 30.506695, 23.332197>,  <27.724739, 30.535566, 23.301481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488470, 30.506695, 23.332197>,  <27.094688, 30.458576, 23.383390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488470, 30.506695, 23.332197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084048, 0.317174, 0.944636,
		0.154229, -0.940707, 0.302133,
		0.984454, 0.120296, -0.127982,
		27.783806, 30.542784, 23.293802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338715, 30.123312, 23.991722>,  <27.094688, 30.458576, 23.383390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338715, 30.123312, 23.991722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.656914, 30.321764, 23.852562>,  <27.847834, 30.440836, 23.769066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.656914, 30.321764, 23.852562>,  <27.338715, 30.123312, 23.991722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656914, 30.321764, 23.852562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332392, 0.122769, 0.935117,
		0.506653, -0.859523, -0.067248,
		0.795499, 0.496132, -0.347900,
		27.895563, 30.470604, 23.748192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013334, 29.823372, 24.401657>,  <27.338715, 30.123312, 23.991722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013334, 29.823372, 24.401657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.055792, 30.193937, 24.257162>,  <28.081266, 30.416277, 24.170465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.055792, 30.193937, 24.257162>,  <28.013334, 29.823372, 24.401657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055792, 30.193937, 24.257162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193468, 0.337104, 0.921375,
		0.975348, -0.167687, -0.143449,
		0.106145, 0.926414, -0.361236,
		28.087635, 30.471861, 24.148790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493433, 30.005234, 24.867373>,  <28.013334, 29.823372, 24.401657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493433, 30.005234, 24.867373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396715, 30.349728, 24.688570>,  <28.338684, 30.556423, 24.581289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396715, 30.349728, 24.688570>,  <28.493433, 30.005234, 24.867373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396715, 30.349728, 24.688570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208002, 0.495971, 0.843059,
		0.947771, 0.110869, -0.299061,
		-0.241794, 0.861232, -0.447006,
		28.324177, 30.608097, 24.554468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.833473, 28.990330, 28.250931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731720, 29.362326, 28.144794>,  <32.670670, 29.585524, 28.081114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731720, 29.362326, 28.144794>,  <32.833473, 28.990330, 28.250931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731720, 29.362326, 28.144794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360572, 0.345787, 0.866268,
		0.897372, 0.124691, -0.423291,
		-0.254384, 0.929991, -0.265340,
		32.655403, 29.641323, 28.065193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459206, 29.436138, 28.443680>,  <32.833473, 28.990330, 28.250931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459206, 29.436138, 28.443680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.129402, 29.662024, 28.429308>,  <32.931522, 29.797554, 28.420685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.129402, 29.662024, 28.429308>,  <33.459206, 29.436138, 28.443680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129402, 29.662024, 28.429308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275076, 0.455492, 0.846676,
		0.494496, 0.688204, -0.530895,
		-0.824504, 0.564714, -0.035930,
		32.882050, 29.831438, 28.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680134, 30.083054, 28.434423>,  <33.459206, 29.436138, 28.443680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680134, 30.083054, 28.434423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.293930, 30.131824, 28.526442>,  <33.062206, 30.161087, 28.581652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.293930, 30.131824, 28.526442>,  <33.680134, 30.083054, 28.434423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293930, 30.131824, 28.526442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255111, 0.619553, 0.742343,
		-0.052011, 0.775427, -0.629291,
		-0.965512, 0.121929, 0.230044,
		33.004276, 30.168404, 28.595455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591587, 30.848921, 28.489662>,  <33.680134, 30.083054, 28.434423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591587, 30.848921, 28.489662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.280380, 30.694494, 28.687912>,  <33.093658, 30.601837, 28.806862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.280380, 30.694494, 28.687912>,  <33.591587, 30.848921, 28.489662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280380, 30.694494, 28.687912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038501, 0.758121, 0.650976,
		-0.627065, 0.525551, -0.574965,
		-0.778015, -0.386068, 0.495626,
		33.046974, 30.578674, 28.836599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117619, 31.356281, 28.604622>,  <33.591587, 30.848921, 28.489662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117619, 31.356281, 28.604622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077614, 31.078876, 28.890011>,  <33.053612, 30.912434, 29.061243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077614, 31.078876, 28.890011>,  <33.117619, 31.356281, 28.604622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077614, 31.078876, 28.890011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228264, 0.681950, 0.694867,
		-0.968449, 0.232352, 0.090103,
		-0.100008, -0.693510, 0.713471,
		33.047611, 30.870823, 29.104052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609570, 31.590963, 28.982395>,  <33.117619, 31.356281, 28.604622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609570, 31.590963, 28.982395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.773670, 31.338003, 29.245230>,  <32.872131, 31.186228, 29.402931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.773670, 31.338003, 29.245230>,  <32.609570, 31.590963, 28.982395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773670, 31.338003, 29.245230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239071, 0.769892, 0.591702,
		-0.880078, -0.085658, 0.467039,
		0.410254, -0.632399, 0.657087,
		32.896748, 31.148283, 29.442356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282658, 31.569019, 29.694473>,  <32.609570, 31.590963, 28.982395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282658, 31.569019, 29.694473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.642494, 31.417072, 29.780664>,  <32.858398, 31.325903, 29.832378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.642494, 31.417072, 29.780664>,  <32.282658, 31.569019, 29.694473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642494, 31.417072, 29.780664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134547, 0.710456, 0.690760,
		-0.415485, -0.592412, 0.690232,
		0.899594, -0.379869, 0.215477,
		32.912373, 31.303112, 29.845308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380348, 31.523346, 30.377604>,  <32.282658, 31.569019, 29.694473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380348, 31.523346, 30.377604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.759003, 31.534918, 30.249201>,  <32.986195, 31.541861, 30.172159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.759003, 31.534918, 30.249201>,  <32.380348, 31.523346, 30.377604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759003, 31.534918, 30.249201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198595, 0.732084, 0.651624,
		0.253853, -0.680600, 0.687271,
		0.946635, 0.028928, -0.321006,
		33.042992, 31.543596, 30.152899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773037, 31.651819, 30.968767>,  <32.380348, 31.523346, 30.377604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773037, 31.651819, 30.968767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059826, 31.725750, 30.699905>,  <33.231899, 31.770107, 30.538588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059826, 31.725750, 30.699905>,  <32.773037, 31.651819, 30.968767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059826, 31.725750, 30.699905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312063, 0.777107, 0.546554,
		0.623354, -0.601618, 0.499485,
		0.716970, 0.184826, -0.672156,
		33.274918, 31.781199, 30.498259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354435, 31.610794, 31.254467>,  <32.773037, 31.651819, 30.968767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354435, 31.610794, 31.254467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.435204, 31.846514, 30.941557>,  <33.483665, 31.987946, 30.753811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.435204, 31.846514, 30.941557>,  <33.354435, 31.610794, 31.254467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435204, 31.846514, 30.941557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395202, 0.681790, 0.615611,
		0.896127, -0.433462, -0.095225,
		0.201921, 0.589299, -0.782275,
		33.495781, 32.023304, 30.706875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043713, 31.793854, 31.441856>,  <33.354435, 31.610794, 31.254467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043713, 31.793854, 31.441856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933441, 32.054966, 31.159615>,  <33.867279, 32.211636, 30.990271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933441, 32.054966, 31.159615>,  <34.043713, 31.793854, 31.441856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933441, 32.054966, 31.159615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439515, 0.738423, 0.511427,
		0.854884, -0.169133, -0.490476,
		-0.275680, 0.652782, -0.705603,
		33.850739, 32.250801, 30.947933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627647, 32.292034, 31.458504>,  <34.043713, 31.793854, 31.441856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627647, 32.292034, 31.458504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320572, 32.480049, 31.284277>,  <34.136326, 32.592857, 31.179741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320572, 32.480049, 31.284277>,  <34.627647, 32.292034, 31.458504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320572, 32.480049, 31.284277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325996, 0.871632, 0.366039,
		0.551707, 0.139011, -0.822372,
		-0.767689, 0.470036, -0.435569,
		34.090267, 32.621059, 31.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895702, 32.878120, 31.182840>,  <34.627647, 32.292034, 31.458504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895702, 32.878120, 31.182840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504543, 32.961239, 31.192137>,  <34.269848, 33.011108, 31.197714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504543, 32.961239, 31.192137>,  <34.895702, 32.878120, 31.182840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504543, 32.961239, 31.192137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200566, 0.900800, 0.385139,
		0.059097, 0.381287, -0.922566,
		-0.977896, 0.207796, 0.023239,
		34.211174, 33.023579, 31.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862640, 33.551102, 31.417845>,  <34.895702, 32.878120, 31.182840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862640, 33.551102, 31.417845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468651, 33.499538, 31.371864>,  <34.232258, 33.468601, 31.344276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468651, 33.499538, 31.371864>,  <34.862640, 33.551102, 31.417845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468651, 33.499538, 31.371864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163774, 0.908447, 0.384580,
		0.054852, 0.397627, -0.915906,
		-0.984972, -0.128907, -0.114951,
		34.173161, 33.460865, 31.337379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236027, 34.049423, 31.790283>,  <34.862640, 33.551102, 31.417845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236027, 34.049423, 31.790283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602745, 34.081455, 31.633787>,  <35.822777, 34.100674, 31.539890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602745, 34.081455, 31.633787>,  <35.236027, 34.049423, 31.790283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602745, 34.081455, 31.633787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398864, 0.135277, -0.906977,
		-0.019707, 0.987566, 0.155964,
		0.916798, 0.080082, -0.391239,
		35.877785, 34.105480, 31.516415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209774, 34.680641, 31.447762>,  <35.236027, 34.049423, 31.790283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209774, 34.680641, 31.447762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487183, 34.443253, 31.284388>,  <35.653625, 34.300819, 31.186363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487183, 34.443253, 31.284388>,  <35.209774, 34.680641, 31.447762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487183, 34.443253, 31.284388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370859, 0.191956, -0.908634,
		0.617654, 0.781626, -0.086970,
		0.693518, -0.593475, -0.408436,
		35.695236, 34.265209, 31.161858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371822, 35.033157, 30.868828>,  <35.209774, 34.680641, 31.447762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371822, 35.033157, 30.868828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501820, 34.674961, 30.747183>,  <35.579819, 34.460045, 30.674196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501820, 34.674961, 30.747183>,  <35.371822, 35.033157, 30.868828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501820, 34.674961, 30.747183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392950, 0.164634, -0.904702,
		0.860216, 0.413521, -0.298377,
		0.324990, -0.895487, -0.304114,
		35.599316, 34.406315, 30.655949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743069, 35.179337, 30.228548>,  <35.371822, 35.033157, 30.868828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743069, 35.179337, 30.228548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637791, 34.794197, 30.204372>,  <35.574623, 34.563114, 30.189867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637791, 34.794197, 30.204372>,  <35.743069, 35.179337, 30.228548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637791, 34.794197, 30.204372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208191, 0.117858, -0.970961,
		0.942012, -0.242967, -0.231475,
		-0.263193, -0.962848, -0.060441,
		35.558834, 34.505344, 30.186241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884319, 35.050182, 29.489695>,  <35.743069, 35.179337, 30.228548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884319, 35.050182, 29.489695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669891, 34.724899, 29.580320>,  <35.541237, 34.529732, 29.634695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669891, 34.724899, 29.580320>,  <35.884319, 35.050182, 29.489695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669891, 34.724899, 29.580320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293846, -0.071850, -0.953148,
		0.791383, -0.577526, -0.200441,
		-0.536067, -0.813204, 0.226565,
		35.509071, 34.480938, 29.648291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082439, 34.455177, 29.022205>,  <35.884319, 35.050182, 29.489695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082439, 34.455177, 29.022205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710239, 34.397793, 29.157019>,  <35.486919, 34.363361, 29.237906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710239, 34.397793, 29.157019>,  <36.082439, 34.455177, 29.022205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710239, 34.397793, 29.157019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312580, -0.168689, -0.934793,
		0.190959, -0.975173, 0.112122,
		-0.930499, -0.143461, 0.337032,
		35.431091, 34.354755, 29.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822823, 33.906319, 28.561737>,  <36.082439, 34.455177, 29.022205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822823, 33.906319, 28.561737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.483292, 34.053848, 28.713243>,  <35.279572, 34.142365, 28.804148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.483292, 34.053848, 28.713243>,  <35.822823, 33.906319, 28.561737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483292, 34.053848, 28.713243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489445, -0.277409, -0.826733,
		-0.199844, -0.887139, 0.415990,
		-0.848827, 0.368821, 0.378767,
		35.228645, 34.164494, 28.826874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341484, 33.401463, 28.394205>,  <35.822823, 33.906319, 28.561737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341484, 33.401463, 28.394205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156231, 33.748833, 28.465031>,  <35.045078, 33.957256, 28.507526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156231, 33.748833, 28.465031>,  <35.341484, 33.401463, 28.394205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156231, 33.748833, 28.465031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601385, -0.161166, -0.782535,
		-0.651036, -0.468897, 0.596898,
		-0.463128, 0.868424, 0.177063,
		35.017292, 34.009361, 28.518150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674992, 33.257267, 28.393297>,  <35.341484, 33.401463, 28.394205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674992, 33.257267, 28.393297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665672, 33.651348, 28.325382>,  <34.660080, 33.887798, 28.284634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665672, 33.651348, 28.325382>,  <34.674992, 33.257267, 28.393297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665672, 33.651348, 28.325382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615065, -0.148015, -0.774459,
		-0.788132, 0.086388, 0.609414,
		-0.023298, 0.985205, -0.169789,
		34.658684, 33.946911, 28.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997917, 33.268475, 28.199375>,  <34.674992, 33.257267, 28.393297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997917, 33.268475, 28.199375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.170799, 33.614647, 28.098003>,  <34.274529, 33.822350, 28.037180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.170799, 33.614647, 28.098003>,  <33.997917, 33.268475, 28.199375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170799, 33.614647, 28.098003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688542, 0.135222, -0.712478,
		-0.582332, 0.482433, 0.654330,
		0.432203, 0.865433, -0.253431,
		34.300461, 33.874275, 28.021975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454582, 33.698750, 28.081211>,  <33.997917, 33.268475, 28.199375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454582, 33.698750, 28.081211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770588, 33.855526, 27.892633>,  <33.960194, 33.949593, 27.779488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.770588, 33.855526, 27.892633>,  <33.454582, 33.698750, 28.081211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770588, 33.855526, 27.892633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549640, 0.112121, -0.827844,
		-0.271606, 0.913133, 0.304003,
		0.790017, 0.391939, -0.471442,
		34.007591, 33.973106, 27.751202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266453, 34.293468, 27.728678>,  <33.454582, 33.698750, 28.081211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266453, 34.293468, 27.728678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.596188, 34.163876, 27.542990>,  <33.794029, 34.086121, 27.431576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.596188, 34.163876, 27.542990>,  <33.266453, 34.293468, 27.728678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596188, 34.163876, 27.542990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478876, 0.038241, -0.877049,
		0.301903, 0.945289, -0.123626,
		0.824337, -0.323985, -0.464222,
		33.843491, 34.066681, 27.403723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116051, 34.690205, 27.154940>,  <33.266453, 34.293468, 27.728678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116051, 34.690205, 27.154940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.400337, 34.417610, 27.085135>,  <33.570908, 34.254051, 27.043251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.400337, 34.417610, 27.085135>,  <33.116051, 34.690205, 27.154940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400337, 34.417610, 27.085135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287466, -0.054932, -0.956214,
		0.642065, 0.729762, -0.234946,
		0.710715, -0.681491, -0.174511,
		33.613552, 34.213161, 27.032782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334599, 34.878822, 26.511751>,  <33.116051, 34.690205, 27.154940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334599, 34.878822, 26.511751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.465103, 34.500710, 26.511990>,  <33.543407, 34.273842, 26.512133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.465103, 34.500710, 26.511990>,  <33.334599, 34.878822, 26.511751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465103, 34.500710, 26.511990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406988, -0.141040, -0.902479,
		0.853178, 0.294203, -0.430733,
		0.326263, -0.945279, 0.000595,
		33.562981, 34.217125, 26.512169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820583, 35.568802, 26.336924>,  <33.334599, 34.878822, 26.511751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820583, 35.568802, 26.336924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688526, 35.912632, 26.180908>,  <33.609291, 36.118931, 26.087299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688526, 35.912632, 26.180908>,  <33.820583, 35.568802, 26.336924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688526, 35.912632, 26.180908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087180, 0.439207, 0.894146,
		0.939897, 0.261190, -0.219938,
		-0.330141, 0.859579, -0.390039,
		33.589485, 36.170506, 26.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334896, 36.038544, 26.501799>,  <33.820583, 35.568802, 26.336924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334896, 36.038544, 26.501799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.000980, 36.245274, 26.425884>,  <33.800632, 36.369312, 26.380337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.000980, 36.245274, 26.425884>,  <34.334896, 36.038544, 26.501799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000980, 36.245274, 26.425884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105453, 0.488414, 0.866217,
		0.540377, 0.703095, -0.462223,
		-0.834789, 0.516826, -0.189784,
		33.750546, 36.400322, 26.368950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484512, 36.747425, 26.602316>,  <34.334896, 36.038544, 26.501799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484512, 36.747425, 26.602316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086155, 36.728405, 26.633120>,  <33.847141, 36.716991, 26.651602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086155, 36.728405, 26.633120>,  <34.484512, 36.747425, 26.602316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086155, 36.728405, 26.633120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053267, 0.379972, 0.923463,
		-0.073174, 0.923775, -0.375880,
		-0.995896, -0.047552, 0.077011,
		33.787388, 36.714138, 26.656223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367023, 37.376556, 26.887760>,  <34.484512, 36.747425, 26.602316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367023, 37.376556, 26.887760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.031815, 37.170609, 26.960016>,  <33.830688, 37.047039, 27.003370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.031815, 37.170609, 26.960016>,  <34.367023, 37.376556, 26.887760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031815, 37.170609, 26.960016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101983, 0.473029, 0.875125,
		-0.536023, 0.714950, -0.448915,
		-0.838021, -0.514869, 0.180642,
		33.780407, 37.016148, 27.014210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921509, 37.890278, 27.284346>,  <34.367023, 37.376556, 26.887760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921509, 37.890278, 27.284346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759323, 37.527603, 27.330851>,  <33.662010, 37.309998, 27.358753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.759323, 37.527603, 27.330851>,  <33.921509, 37.890278, 27.284346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759323, 37.527603, 27.330851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221918, 0.221016, 0.949686,
		-0.886763, 0.359267, -0.290825,
		-0.405468, -0.906686, 0.116261,
		33.637684, 37.255596, 27.365728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329868, 37.963951, 27.659409>,  <33.921509, 37.890278, 27.284346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329868, 37.963951, 27.659409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413040, 37.576672, 27.715050>,  <33.462944, 37.344303, 27.748434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413040, 37.576672, 27.715050>,  <33.329868, 37.963951, 27.659409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413040, 37.576672, 27.715050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229414, 0.089971, 0.969162,
		-0.950861, -0.233426, -0.203412,
		0.207926, -0.968203, 0.139101,
		33.475418, 37.286209, 27.756781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712475, 37.672447, 28.046469>,  <33.329868, 37.963951, 27.659409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712475, 37.672447, 28.046469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.000069, 37.398453, 28.093542>,  <33.172626, 37.234055, 28.121786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.000069, 37.398453, 28.093542>,  <32.712475, 37.672447, 28.046469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000069, 37.398453, 28.093542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241459, -0.087401, 0.966467,
		-0.651731, -0.723295, -0.228237,
		0.718989, -0.684986, 0.117684,
		33.215767, 37.192959, 28.128847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408085, 37.190060, 28.399626>,  <32.712475, 37.672447, 28.046469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408085, 37.190060, 28.399626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801373, 37.151737, 28.461723>,  <33.037346, 37.128742, 28.498981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801373, 37.151737, 28.461723>,  <32.408085, 37.190060, 28.399626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801373, 37.151737, 28.461723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158248, -0.024552, 0.987094,
		-0.090765, -0.995097, -0.039303,
		0.983219, -0.095813, 0.155244,
		33.096336, 37.122993, 28.508297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520569, 36.820831, 28.999041>,  <32.408085, 37.190060, 28.399626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520569, 36.820831, 28.999041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.897842, 36.953739, 28.999399>,  <33.124207, 37.033482, 28.999615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.897842, 36.953739, 28.999399>,  <32.520569, 36.820831, 28.999041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897842, 36.953739, 28.999399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015619, -0.047039, 0.998771,
		0.331900, -0.942012, -0.049556,
		0.943186, 0.332266, 0.000899,
		33.180798, 37.053417, 28.999668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018383, 36.347000, 29.434893>,  <32.520569, 36.820831, 28.999041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018383, 36.347000, 29.434893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.202950, 36.701866, 29.432255>,  <33.313690, 36.914783, 29.430672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.202950, 36.701866, 29.432255>,  <33.018383, 36.347000, 29.434893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202950, 36.701866, 29.432255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097800, 0.058249, 0.993500,
		0.881779, -0.457768, 0.113641,
		0.461412, 0.887161, -0.006593,
		33.341373, 36.968014, 29.430277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570728, 36.345066, 29.992123>,  <33.018383, 36.347000, 29.434893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570728, 36.345066, 29.992123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.491470, 36.731606, 29.926508>,  <33.443916, 36.963528, 29.887140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.491470, 36.731606, 29.926508>,  <33.570728, 36.345066, 29.992123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491470, 36.731606, 29.926508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033309, 0.173896, 0.984201,
		0.979606, 0.189552, -0.066645,
		-0.198147, 0.966349, -0.164035,
		33.432026, 37.021511, 29.877296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029968, 36.615349, 30.320084>,  <33.570728, 36.345066, 29.992123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029968, 36.615349, 30.320084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797321, 36.939175, 30.288277>,  <33.657734, 37.133469, 30.269192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797321, 36.939175, 30.288277>,  <34.029968, 36.615349, 30.320084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797321, 36.939175, 30.288277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083956, 0.156970, 0.984028,
		0.809116, 0.565655, -0.159265,
		-0.581621, 0.809564, -0.079517,
		33.622833, 37.182045, 30.264421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.598072, 34.381374, 22.769974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287762, 34.631359, 22.735109>,  <33.101574, 34.781349, 22.714191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287762, 34.631359, 22.735109>,  <33.598072, 34.381374, 22.769974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287762, 34.631359, 22.735109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263323, 0.446158, 0.855339,
		0.573437, 0.640602, -0.510685,
		-0.775778, 0.624958, -0.087159,
		33.055027, 34.818848, 22.708961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933376, 35.059761, 22.885838>,  <33.598072, 34.381374, 22.769974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933376, 35.059761, 22.885838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541893, 35.137264, 22.912945>,  <33.307003, 35.183765, 22.929209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541893, 35.137264, 22.912945>,  <33.933376, 35.059761, 22.885838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541893, 35.137264, 22.912945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172234, 0.595572, 0.784621,
		0.111664, 0.779585, -0.616261,
		-0.978706, 0.193755, 0.067767,
		33.248280, 35.195393, 22.933275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855545, 35.838394, 23.034857>,  <33.933376, 35.059761, 22.885838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855545, 35.838394, 23.034857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545349, 35.638710, 23.189470>,  <33.359230, 35.518898, 23.282238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545349, 35.638710, 23.189470>,  <33.855545, 35.838394, 23.034857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545349, 35.638710, 23.189470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073153, 0.537052, 0.840371,
		-0.627110, 0.679974, -0.379959,
		-0.775488, -0.499210, 0.386533,
		33.312702, 35.488949, 23.305429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498695, 36.363605, 23.351789>,  <33.855545, 35.838394, 23.034857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498695, 36.363605, 23.351789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346169, 36.022579, 23.494749>,  <33.254650, 35.817963, 23.580524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346169, 36.022579, 23.494749>,  <33.498695, 36.363605, 23.351789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346169, 36.022579, 23.494749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098524, 0.421888, 0.901279,
		-0.919178, 0.308464, -0.244872,
		-0.381320, -0.852561, 0.357399,
		33.231773, 35.766811, 23.601969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970409, 36.614815, 23.803144>,  <33.498695, 36.363605, 23.351789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970409, 36.614815, 23.803144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090832, 36.249920, 23.914278>,  <33.163086, 36.030983, 23.980959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090832, 36.249920, 23.914278>,  <32.970409, 36.614815, 23.803144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090832, 36.249920, 23.914278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125084, 0.251059, 0.959856,
		-0.945368, -0.323720, -0.038524,
		0.301052, -0.912236, 0.277835,
		33.181149, 35.976250, 23.997629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540749, 36.480392, 24.356794>,  <32.970409, 36.614815, 23.803144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540749, 36.480392, 24.356794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842831, 36.220448, 24.391071>,  <33.024078, 36.064480, 24.411636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842831, 36.220448, 24.391071>,  <32.540749, 36.480392, 24.356794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842831, 36.220448, 24.391071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057277, 0.195651, 0.978999,
		-0.652985, -0.734434, 0.184979,
		0.755202, -0.649867, 0.085691,
		33.069389, 36.025486, 24.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367435, 36.063999, 24.948778>,  <32.540749, 36.480392, 24.356794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367435, 36.063999, 24.948778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764027, 36.036739, 24.904354>,  <33.001980, 36.020382, 24.877699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764027, 36.036739, 24.904354>,  <32.367435, 36.063999, 24.948778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764027, 36.036739, 24.904354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112521, 0.017987, 0.993487,
		-0.065712, -0.997513, 0.025502,
		0.991474, -0.068154, -0.111059,
		33.061470, 36.016293, 24.871037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553322, 35.667610, 25.391663>,  <32.367435, 36.063999, 24.948778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553322, 35.667610, 25.391663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885529, 35.877048, 25.315666>,  <33.084850, 36.002712, 25.270069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885529, 35.877048, 25.315666>,  <32.553322, 35.667610, 25.391663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885529, 35.877048, 25.315666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095200, 0.202643, 0.974614,
		0.548805, -0.827516, 0.118451,
		0.830512, 0.523596, -0.189991,
		33.134682, 36.034126, 25.258669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175865, 35.344501, 25.882080>,  <32.553322, 35.667610, 25.391663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175865, 35.344501, 25.882080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274864, 35.716335, 25.772814>,  <33.334263, 35.939434, 25.707254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274864, 35.716335, 25.772814>,  <33.175865, 35.344501, 25.882080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274864, 35.716335, 25.772814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345926, 0.178572, 0.921112,
		0.905030, -0.322469, -0.277370,
		0.247500, 0.929584, -0.273163,
		33.349113, 35.995209, 25.690865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660343, 34.746422, 25.745619>,  <33.175865, 35.344501, 25.882080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660343, 34.746422, 25.745619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572151, 34.387974, 25.899687>,  <33.519234, 34.172905, 25.992128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572151, 34.387974, 25.899687>,  <33.660343, 34.746422, 25.745619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572151, 34.387974, 25.899687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230149, -0.335942, -0.913332,
		0.947850, -0.290019, -0.132172,
		-0.220482, -0.896120, 0.385170,
		33.506008, 34.119137, 26.015238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905609, 34.187622, 25.307604>,  <33.660343, 34.746422, 25.745619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905609, 34.187622, 25.307604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616657, 33.997162, 25.508179>,  <33.443287, 33.882885, 25.628523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616657, 33.997162, 25.508179>,  <33.905609, 34.187622, 25.307604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616657, 33.997162, 25.508179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208804, -0.541099, -0.814624,
		0.659214, -0.693173, 0.291459,
		-0.722384, -0.476154, 0.501438,
		33.399940, 33.854317, 25.658609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941799, 33.468601, 25.146040>,  <33.905609, 34.187622, 25.307604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941799, 33.468601, 25.146040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565788, 33.514023, 25.274698>,  <33.340183, 33.541275, 25.351894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565788, 33.514023, 25.274698>,  <33.941799, 33.468601, 25.146040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565788, 33.514023, 25.274698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330728, -0.534233, -0.777955,
		0.083493, -0.837675, 0.539749,
		-0.940026, 0.113556, 0.321647,
		33.283779, 33.548088, 25.371193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621628, 32.786209, 25.114857>,  <33.941799, 33.468601, 25.146040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621628, 32.786209, 25.114857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307213, 33.033344, 25.123062>,  <33.118565, 33.181625, 25.127985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307213, 33.033344, 25.123062>,  <33.621628, 32.786209, 25.114857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307213, 33.033344, 25.123062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290750, -0.340217, -0.894269,
		-0.545532, -0.708895, 0.447060,
		-0.786040, 0.617835, 0.020512,
		33.071400, 33.218693, 25.129215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144630, 32.358170, 25.030918>,  <33.621628, 32.786209, 25.114857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144630, 32.358170, 25.030918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010902, 32.712986, 24.903553>,  <32.930664, 32.925877, 24.827133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010902, 32.712986, 24.903553>,  <33.144630, 32.358170, 25.030918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010902, 32.712986, 24.903553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108581, -0.371857, -0.921918,
		-0.936183, -0.273645, 0.220636,
		-0.334323, 0.887041, -0.318413,
		32.910606, 32.979099, 24.808029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534351, 32.163933, 24.778448>,  <33.144630, 32.358170, 25.030918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534351, 32.163933, 24.778448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603317, 32.520168, 24.610104>,  <32.644699, 32.733910, 24.509096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603317, 32.520168, 24.610104>,  <32.534351, 32.163933, 24.778448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603317, 32.520168, 24.610104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098242, -0.409583, -0.906968,
		-0.980113, 0.197724, 0.016874,
		0.172418, 0.890588, -0.420862,
		32.655041, 32.787346, 24.483845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983227, 32.313446, 24.328363>,  <32.534351, 32.163933, 24.778448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983227, 32.313446, 24.328363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281296, 32.545395, 24.196625>,  <32.460136, 32.684563, 24.117582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281296, 32.545395, 24.196625>,  <31.983227, 32.313446, 24.328363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281296, 32.545395, 24.196625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204552, -0.271309, -0.940505,
		-0.634727, 0.768206, -0.083557,
		0.745171, 0.579872, -0.329345,
		32.504848, 32.719357, 24.097820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749456, 32.439728, 23.692123>,  <31.983227, 32.313446, 24.328363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749456, 32.439728, 23.692123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130516, 32.558830, 23.667467>,  <32.359150, 32.630291, 23.652674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130516, 32.558830, 23.667467>,  <31.749456, 32.439728, 23.692123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130516, 32.558830, 23.667467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008549, -0.228869, -0.973420,
		-0.303954, 0.926800, -0.220577,
		0.952648, 0.297760, -0.061642,
		32.416309, 32.648159, 23.648975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749153, 32.917755, 23.166265>,  <31.749456, 32.439728, 23.692123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749153, 32.917755, 23.166265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121567, 32.776455, 23.202900>,  <32.345016, 32.691673, 23.224880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121567, 32.776455, 23.202900>,  <31.749153, 32.917755, 23.166265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121567, 32.776455, 23.202900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071651, -0.423032, -0.903277,
		0.357826, 0.834421, -0.419169,
		0.931035, -0.353250, 0.091585,
		32.400879, 32.670479, 23.230375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060459, 33.032684, 22.607239>,  <31.749153, 32.917755, 23.166265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060459, 33.032684, 22.607239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295166, 32.731884, 22.727373>,  <32.435989, 32.551403, 22.799454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295166, 32.731884, 22.727373>,  <32.060459, 33.032684, 22.607239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295166, 32.731884, 22.727373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117896, -0.446284, -0.887092,
		0.801125, 0.485110, -0.350523,
		0.586770, -0.751997, 0.300337,
		32.471195, 32.506287, 22.817474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617233, 32.961845, 22.056955>,  <32.060459, 33.032684, 22.607239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617233, 32.961845, 22.056955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556789, 32.622868, 22.260525>,  <32.520523, 32.419479, 22.382668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556789, 32.622868, 22.260525>,  <32.617233, 32.961845, 22.056955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556789, 32.622868, 22.260525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006904, -0.515729, -0.856724,
		0.988493, -0.125946, 0.083783,
		-0.151110, -0.847444, 0.508924,
		32.511456, 32.368633, 22.413202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078487, 32.413715, 21.670349>,  <32.617233, 32.961845, 22.056955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078487, 32.413715, 21.670349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796638, 32.246288, 21.899546>,  <32.627529, 32.145832, 22.037064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796638, 32.246288, 21.899546>,  <33.078487, 32.413715, 21.670349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796638, 32.246288, 21.899546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227311, -0.631801, -0.741052,
		0.672193, -0.652405, 0.350034,
		-0.704618, -0.418563, 0.572991,
		32.585255, 32.120720, 22.071444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178593, 31.685419, 21.630186>,  <33.078487, 32.413715, 21.670349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178593, 31.685419, 21.630186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793072, 31.706955, 21.734632>,  <32.561760, 31.719877, 21.797300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793072, 31.706955, 21.734632>,  <33.178593, 31.685419, 21.630186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793072, 31.706955, 21.734632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244598, -0.568229, -0.785676,
		0.106072, -0.821107, 0.560831,
		-0.963805, 0.053840, 0.261115,
		32.503929, 31.723106, 21.812967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996059, 31.020929, 21.390633>,  <33.178593, 31.685419, 21.630186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996059, 31.020929, 21.390633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649345, 31.209938, 21.454395>,  <32.441319, 31.323343, 21.492653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649345, 31.209938, 21.454395>,  <32.996059, 31.020929, 21.390633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649345, 31.209938, 21.454395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420742, -0.521340, -0.742415,
		-0.267701, -0.710583, 0.650698,
		-0.866783, 0.472521, 0.159409,
		32.389309, 31.351694, 21.502218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.398865, 34.165222, 22.539295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.773731, 34.025719, 22.542976>,  <26.998652, 33.942017, 22.545185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.773731, 34.025719, 22.542976>,  <26.398865, 34.165222, 22.539295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773731, 34.025719, 22.542976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058306, 0.182567, 0.981463,
		-0.343978, -0.919257, 0.191430,
		0.937166, -0.348763, 0.009201,
		27.054880, 33.921089, 22.545736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507959, 33.556217, 23.061226>,  <26.398865, 34.165222, 22.539295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507959, 33.556217, 23.061226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.872108, 33.713890, 23.010883>,  <27.090597, 33.808495, 22.980677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.872108, 33.713890, 23.010883>,  <26.507959, 33.556217, 23.061226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872108, 33.713890, 23.010883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015106, 0.272296, 0.962095,
		0.413516, -0.877765, 0.241936,
		0.910372, 0.394187, -0.125859,
		27.145220, 33.832146, 22.973125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967089, 33.298000, 23.589081>,  <26.507959, 33.556217, 23.061226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967089, 33.298000, 23.589081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.154814, 33.627415, 23.461620>,  <27.267448, 33.825062, 23.385143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.154814, 33.627415, 23.461620>,  <26.967089, 33.298000, 23.589081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154814, 33.627415, 23.461620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105072, 0.306217, 0.946145,
		0.876759, -0.477519, 0.057182,
		0.469313, 0.823533, -0.318653,
		27.295607, 33.874474, 23.366024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534702, 33.351994, 23.976603>,  <26.967089, 33.298000, 23.589081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534702, 33.351994, 23.976603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.522116, 33.734241, 23.859430>,  <27.514565, 33.963589, 23.789127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.522116, 33.734241, 23.859430>,  <27.534702, 33.351994, 23.976603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522116, 33.734241, 23.859430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339404, 0.285877, 0.896147,
		0.940114, -0.071225, -0.333335,
		-0.031464, 0.955616, -0.292931,
		27.512676, 34.020927, 23.771551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185152, 33.657307, 24.058828>,  <27.534702, 33.351994, 23.976603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185152, 33.657307, 24.058828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.942049, 33.974953, 24.058149>,  <27.796186, 34.165543, 24.057743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.942049, 33.974953, 24.058149>,  <28.185152, 33.657307, 24.058828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942049, 33.974953, 24.058149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470974, 0.362165, 0.804376,
		0.639384, 0.488068, -0.594119,
		-0.607759, 0.794119, -0.001695,
		27.759722, 34.213188, 24.057640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637861, 34.281204, 24.202000>,  <28.185152, 33.657307, 24.058828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637861, 34.281204, 24.202000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258551, 34.395187, 24.257957>,  <28.030964, 34.463577, 24.291533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.258551, 34.395187, 24.257957>,  <28.637861, 34.281204, 24.202000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258551, 34.395187, 24.257957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286776, 0.579999, 0.762470,
		0.136134, 0.763151, -0.631719,
		-0.948276, 0.284960, 0.139895,
		27.974068, 34.480675, 24.299927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751278, 34.888371, 24.471308>,  <28.637861, 34.281204, 24.202000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751278, 34.888371, 24.471308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.367199, 34.831238, 24.567327>,  <28.136751, 34.796959, 24.624939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.367199, 34.831238, 24.567327>,  <28.751278, 34.888371, 24.471308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367199, 34.831238, 24.567327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171937, 0.375056, 0.910918,
		-0.220143, 0.915932, -0.335568,
		-0.960195, -0.142836, 0.240048,
		28.079140, 34.788387, 24.639341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498158, 35.506905, 24.703175>,  <28.751278, 34.888371, 24.471308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498158, 35.506905, 24.703175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.250238, 35.240715, 24.869545>,  <28.101488, 35.081001, 24.969368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.250238, 35.240715, 24.869545>,  <28.498158, 35.506905, 24.703175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250238, 35.240715, 24.869545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201705, 0.377107, 0.903939,
		-0.758399, 0.644152, -0.099499,
		-0.619796, -0.665477, 0.415926,
		28.064301, 35.041073, 24.994322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099525, 35.874443, 25.245842>,  <28.498158, 35.506905, 24.703175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099525, 35.874443, 25.245842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.123232, 35.483772, 25.328384>,  <28.137455, 35.249371, 25.377911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.123232, 35.483772, 25.328384>,  <28.099525, 35.874443, 25.245842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123232, 35.483772, 25.328384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290870, 0.214646, 0.932374,
		-0.954925, 0.004764, 0.296808,
		0.059267, -0.976680, 0.206356,
		28.141012, 35.190769, 25.390291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963812, 35.884605, 25.924313>,  <28.099525, 35.874443, 25.245842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963812, 35.884605, 25.924313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.102287, 35.512959, 25.872328>,  <28.185373, 35.289970, 25.841137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.102287, 35.512959, 25.872328>,  <27.963812, 35.884605, 25.924313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102287, 35.512959, 25.872328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217083, -0.055434, 0.974578,
		-0.912704, -0.365600, 0.182506,
		0.346189, -0.929120, -0.129960,
		28.206144, 35.234222, 25.833340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784599, 35.711151, 26.539324>,  <27.963812, 35.884605, 25.924313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784599, 35.711151, 26.539324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.032274, 35.433044, 26.393333>,  <28.180880, 35.266178, 26.305738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.032274, 35.433044, 26.393333>,  <27.784599, 35.711151, 26.539324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032274, 35.433044, 26.393333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405740, -0.114659, 0.906768,
		-0.672296, -0.709544, 0.211104,
		0.619187, -0.695270, -0.364975,
		28.218031, 35.224464, 26.283840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825777, 35.097645, 27.006535>,  <27.784599, 35.711151, 26.539324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825777, 35.097645, 27.006535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.163292, 35.086937, 26.792130>,  <28.365801, 35.080513, 26.663486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.163292, 35.086937, 26.792130>,  <27.825777, 35.097645, 27.006535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163292, 35.086937, 26.792130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536095, -0.004618, 0.844145,
		-0.025080, -0.999631, 0.010459,
		0.843785, -0.026779, -0.536013,
		28.416428, 35.078907, 26.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150152, 34.561752, 27.268351>,  <27.825777, 35.097645, 27.006535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150152, 34.561752, 27.268351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.408998, 34.816036, 27.100008>,  <28.564306, 34.968605, 26.999002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.408998, 34.816036, 27.100008>,  <28.150152, 34.561752, 27.268351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408998, 34.816036, 27.100008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450297, 0.126745, 0.883837,
		0.615201, -0.761455, -0.204238,
		0.647117, 0.635705, -0.420855,
		28.603134, 35.006748, 26.973751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743128, 34.327812, 27.526249>,  <28.150152, 34.561752, 27.268351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743128, 34.327812, 27.526249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832619, 34.695145, 27.395636>,  <28.886312, 34.915543, 27.317268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832619, 34.695145, 27.395636>,  <28.743128, 34.327812, 27.526249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832619, 34.695145, 27.395636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421041, 0.211089, 0.882137,
		0.879017, -0.334840, -0.339427,
		0.223726, 0.918327, -0.326532,
		28.899736, 34.970642, 27.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433205, 33.860996, 27.446796>,  <28.743128, 34.327812, 27.526249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433205, 33.860996, 27.446796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.545660, 33.487282, 27.534496>,  <29.613134, 33.263054, 27.587116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.545660, 33.487282, 27.534496>,  <29.433205, 33.860996, 27.446796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545660, 33.487282, 27.534496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382035, -0.318542, -0.867514,
		0.880346, 0.160132, -0.446485,
		0.281140, -0.934285, 0.219251,
		29.630003, 33.206997, 27.600271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778999, 33.611954, 26.925783>,  <29.433205, 33.860996, 27.446796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778999, 33.611954, 26.925783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658253, 33.282352, 27.117569>,  <29.585804, 33.084591, 27.232641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.658253, 33.282352, 27.117569>,  <29.778999, 33.611954, 26.925783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658253, 33.282352, 27.117569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433988, -0.329020, -0.838690,
		0.848840, -0.461256, -0.258289,
		-0.301869, -0.824008, 0.479465,
		29.567692, 33.035149, 27.261408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093475, 33.069099, 26.553055>,  <29.778999, 33.611954, 26.925783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093475, 33.069099, 26.553055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.793545, 32.929607, 26.777964>,  <29.613586, 32.845913, 26.912909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.793545, 32.929607, 26.777964>,  <30.093475, 33.069099, 26.553055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793545, 32.929607, 26.777964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381923, -0.465810, -0.798220,
		0.540272, -0.813272, 0.216090,
		-0.749827, -0.348726, 0.562272,
		29.568596, 32.824989, 26.946646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078022, 32.358482, 26.424540>,  <30.093475, 33.069099, 26.553055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078022, 32.358482, 26.424540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.702412, 32.450840, 26.526457>,  <29.477045, 32.506256, 26.587606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.702412, 32.450840, 26.526457>,  <30.078022, 32.358482, 26.424540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702412, 32.450840, 26.526457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343848, -0.628582, -0.697605,
		-0.000916, -0.742679, 0.669648,
		-0.939025, 0.230896, 0.254793,
		29.420704, 32.520107, 26.602894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791426, 31.729176, 26.343273>,  <30.078022, 32.358482, 26.424540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791426, 31.729176, 26.343273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.461218, 31.947664, 26.400063>,  <29.263092, 32.078758, 26.434137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.461218, 31.947664, 26.400063>,  <29.791426, 31.729176, 26.343273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461218, 31.947664, 26.400063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516019, -0.628641, -0.581838,
		-0.228561, -0.553581, 0.800817,
		-0.825521, 0.546222, 0.141975,
		29.213562, 32.111530, 26.442656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283253, 31.252010, 26.347496>,  <29.791426, 31.729176, 26.343273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283253, 31.252010, 26.347496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.031450, 31.557728, 26.291531>,  <28.880369, 31.741158, 26.257952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.031450, 31.557728, 26.291531>,  <29.283253, 31.252010, 26.347496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031450, 31.557728, 26.291531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614975, -0.600155, -0.511487,
		-0.474897, -0.235941, 0.847824,
		-0.629507, 0.764294, -0.139914,
		28.842598, 31.787016, 26.249556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587065, 31.037598, 26.450226>,  <29.283253, 31.252010, 26.347496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587065, 31.037598, 26.450226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609550, 31.339535, 26.188828>,  <28.623043, 31.520697, 26.031988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609550, 31.339535, 26.188828>,  <28.587065, 31.037598, 26.450226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609550, 31.339535, 26.188828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470459, -0.557283, -0.684181,
		-0.880629, 0.345904, 0.323794,
		0.056216, 0.754842, -0.653494,
		28.626415, 31.565987, 25.992779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960283, 30.972401, 26.055033>,  <28.587065, 31.037598, 26.450226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960283, 30.972401, 26.055033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210238, 31.221426, 25.866594>,  <28.360210, 31.370840, 25.753531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210238, 31.221426, 25.866594>,  <27.960283, 30.972401, 26.055033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210238, 31.221426, 25.866594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187274, -0.466272, -0.864592,
		-0.757921, 0.628497, -0.174778,
		0.624887, 0.622561, -0.471098,
		28.397703, 31.408194, 25.725266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478231, 31.177910, 25.450047>,  <27.960283, 30.972401, 26.055033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478231, 31.177910, 25.450047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863922, 31.230894, 25.358204>,  <28.095337, 31.262684, 25.303099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863922, 31.230894, 25.358204>,  <27.478231, 31.177910, 25.450047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863922, 31.230894, 25.358204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165891, -0.374054, -0.912449,
		-0.206749, 0.917899, -0.338699,
		0.964228, 0.132461, -0.229607,
		28.153191, 31.270632, 25.289322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496483, 31.576387, 24.746681>,  <27.478231, 31.177910, 25.450047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496483, 31.576387, 24.746681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.842947, 31.381287, 24.790260>,  <28.050825, 31.264227, 24.816408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.842947, 31.381287, 24.790260>,  <27.496483, 31.576387, 24.746681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842947, 31.381287, 24.790260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090859, -0.368042, -0.925359,
		0.491441, 0.791609, -0.363099,
		0.866158, -0.487751, 0.108947,
		28.102795, 31.234961, 24.822945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906334, 31.736172, 24.142128>,  <27.496483, 31.576387, 24.746681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906334, 31.736172, 24.142128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037542, 31.381575, 24.272682>,  <28.116268, 31.168816, 24.351015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037542, 31.381575, 24.272682>,  <27.906334, 31.736172, 24.142128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037542, 31.381575, 24.272682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031432, -0.355554, -0.934127,
		0.944147, 0.296156, -0.144494,
		0.328023, -0.886495, 0.326386,
		28.135948, 31.115625, 24.370598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412621, 31.580214, 23.604841>,  <27.906334, 31.736172, 24.142128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412621, 31.580214, 23.604841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.298019, 31.237751, 23.776846>,  <28.229259, 31.032272, 23.880049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.298019, 31.237751, 23.776846>,  <28.412621, 31.580214, 23.604841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298019, 31.237751, 23.776846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050736, -0.434639, -0.899175,
		0.956735, -0.279433, 0.081087,
		-0.286502, -0.856158, 0.430011,
		28.212069, 30.980904, 23.905849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928646, 31.184473, 23.366623>,  <28.412621, 31.580214, 23.604841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928646, 31.184473, 23.366623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.634916, 30.940422, 23.485626>,  <28.458677, 30.793991, 23.557028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.634916, 30.940422, 23.485626>,  <28.928646, 31.184473, 23.366623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634916, 30.940422, 23.485626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085996, -0.351135, -0.932367,
		0.673328, -0.710245, 0.205379,
		-0.734325, -0.610128, 0.297507,
		28.414619, 30.757383, 23.574879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055809, 30.449705, 23.186052>,  <28.928646, 31.184473, 23.366623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055809, 30.449705, 23.186052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659765, 30.505810, 23.185112>,  <28.422138, 30.539473, 23.184547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659765, 30.505810, 23.185112>,  <29.055809, 30.449705, 23.186052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659765, 30.505810, 23.185112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042670, -0.317104, -0.947431,
		-0.133634, -0.937962, 0.319953,
		-0.990112, 0.140262, -0.002353,
		28.362732, 30.547888, 23.184406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328571, 29.650330, 23.393507>,  <29.055809, 30.449705, 23.186052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328571, 29.650330, 23.393507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.639984, 29.469442, 23.219431>,  <29.826832, 29.360910, 23.114986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.639984, 29.469442, 23.219431>,  <29.328571, 29.650330, 23.393507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639984, 29.469442, 23.219431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464794, -0.050508, 0.883977,
		-0.421731, -0.890476, 0.170866,
		0.778530, -0.452218, -0.435189,
		29.873543, 29.333776, 23.088875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552681, 29.064800, 23.895260>,  <29.328571, 29.650330, 23.393507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552681, 29.064800, 23.895260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.860655, 29.183624, 23.669355>,  <30.045439, 29.254919, 23.533813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.860655, 29.183624, 23.669355>,  <29.552681, 29.064800, 23.895260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860655, 29.183624, 23.669355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555409, 0.123804, 0.822310,
		0.314195, -0.946799, -0.069669,
		0.769936, 0.297061, -0.564759,
		30.091637, 29.272743, 23.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066996, 28.724672, 24.141426>,  <29.552681, 29.064800, 23.895260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066996, 28.724672, 24.141426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.256943, 29.009611, 23.934715>,  <30.370911, 29.180574, 23.810688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.256943, 29.009611, 23.934715>,  <30.066996, 28.724672, 24.141426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256943, 29.009611, 23.934715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559629, 0.208767, 0.802017,
		0.679202, -0.670057, -0.299514,
		0.474868, 0.712348, -0.516778,
		30.399403, 29.223316, 23.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728096, 28.584991, 24.308313>,  <30.066996, 28.724672, 24.141426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728096, 28.584991, 24.308313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.758341, 28.960119, 24.172796>,  <30.776487, 29.185196, 24.091486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.758341, 28.960119, 24.172796>,  <30.728096, 28.584991, 24.308313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758341, 28.960119, 24.172796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706670, 0.189308, 0.681747,
		0.703491, -0.290964, -0.648414,
		0.075614, 0.937818, -0.338792,
		30.781025, 29.241465, 24.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395765, 28.624434, 24.155449>,  <30.728096, 28.584991, 24.308313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395765, 28.624434, 24.155449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245293, 28.992540, 24.198526>,  <31.155008, 29.213404, 24.224373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245293, 28.992540, 24.198526>,  <31.395765, 28.624434, 24.155449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245293, 28.992540, 24.198526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615835, 0.161496, 0.771146,
		0.692267, 0.356412, -0.627484,
		-0.376182, 0.920266, 0.107693,
		31.132439, 29.268620, 24.230835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909540, 29.169529, 24.128321>,  <31.395765, 28.624434, 24.155449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909540, 29.169529, 24.128321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.614399, 29.345148, 24.333382>,  <31.437315, 29.450520, 24.456419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.614399, 29.345148, 24.333382>,  <31.909540, 29.169529, 24.128321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614399, 29.345148, 24.333382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604493, 0.091948, 0.791286,
		0.300274, 0.893747, -0.333244,
		-0.737851, 0.439046, 0.512654,
		31.393044, 29.476862, 24.487179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148521, 29.767784, 24.406769>,  <31.909540, 29.169529, 24.128321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148521, 29.767784, 24.406769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836855, 29.698708, 24.647795>,  <31.649857, 29.657261, 24.792410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836855, 29.698708, 24.647795>,  <32.148521, 29.767784, 24.406769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836855, 29.698708, 24.647795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552205, 0.265774, 0.790211,
		-0.296608, 0.948442, -0.111720,
		-0.779162, -0.172691, 0.602565,
		31.603106, 29.646900, 24.828564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061485, 30.373636, 24.883114>,  <32.148521, 29.767784, 24.406769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061485, 30.373636, 24.883114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903126, 30.059261, 25.073088>,  <31.808109, 29.870636, 25.187073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903126, 30.059261, 25.073088>,  <32.061485, 30.373636, 24.883114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903126, 30.059261, 25.073088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390860, 0.323784, 0.861622,
		-0.830957, 0.526752, 0.179004,
		-0.395903, -0.785936, 0.474937,
		31.784355, 29.823481, 25.215569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944788, 30.559546, 25.545254>,  <32.061485, 30.373636, 24.883114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944788, 30.559546, 25.545254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.860115, 30.180138, 25.639490>,  <31.809311, 29.952494, 25.696032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.860115, 30.180138, 25.639490>,  <31.944788, 30.559546, 25.545254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860115, 30.180138, 25.639490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345402, 0.152894, 0.925916,
		-0.914269, 0.277373, 0.295255,
		-0.211682, -0.948519, 0.235592,
		31.796610, 29.895582, 25.710167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478693, 30.602695, 26.145174>,  <31.944788, 30.559546, 25.545254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478693, 30.602695, 26.145174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.636606, 30.235342, 26.134470>,  <31.731354, 30.014929, 26.128048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.636606, 30.235342, 26.134470>,  <31.478693, 30.602695, 26.145174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636606, 30.235342, 26.134470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250515, 0.079575, 0.964837,
		-0.883963, -0.387603, 0.261484,
		0.394781, -0.918386, -0.026759,
		31.755041, 29.959826, 26.126442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179905, 30.129986, 26.661016>,  <31.478693, 30.602695, 26.145174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179905, 30.129986, 26.661016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.520515, 29.930838, 26.595253>,  <31.724882, 29.811350, 26.555794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.520515, 29.930838, 26.595253>,  <31.179905, 30.129986, 26.661016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520515, 29.930838, 26.595253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208218, 0.033322, 0.977515,
		-0.481196, -0.866611, 0.132040,
		0.851525, -0.497870, -0.164410,
		31.775972, 29.781477, 26.545931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258204, 29.565844, 27.135910>,  <31.179905, 30.129986, 26.661016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258204, 29.565844, 27.135910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.636963, 29.599720, 27.011837>,  <31.864218, 29.620047, 26.937393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.636963, 29.599720, 27.011837>,  <31.258204, 29.565844, 27.135910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636963, 29.599720, 27.011837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307303, 0.045485, 0.950524,
		0.094611, -0.995368, 0.017043,
		0.946897, 0.084693, -0.310183,
		31.921032, 29.625128, 26.918781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680080, 29.150131, 27.554846>,  <31.258204, 29.565844, 27.135910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680080, 29.150131, 27.554846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948582, 29.413307, 27.418299>,  <32.109684, 29.571213, 27.336370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.948582, 29.413307, 27.418299>,  <31.680080, 29.150131, 27.554846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948582, 29.413307, 27.418299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446612, 0.008554, 0.894687,
		0.591571, -0.753021, -0.288102,
		0.671253, 0.657941, -0.341368,
		32.149960, 29.610689, 27.315887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111702, 29.023849, 28.034811>,  <31.680080, 29.150131, 27.554846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111702, 29.023849, 28.034811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.251934, 29.356699, 27.862925>,  <32.336075, 29.556410, 27.759792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.251934, 29.356699, 27.862925>,  <32.111702, 29.023849, 28.034811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251934, 29.356699, 27.862925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420720, 0.269998, 0.866081,
		0.836711, -0.484426, -0.255435,
		0.350585, 0.832126, -0.429718,
		32.357109, 29.606337, 27.734009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.966290, 30.236015, 21.413111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912949, 30.629858, 21.367924>,  <31.880943, 30.866163, 21.340811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912949, 30.629858, 21.367924>,  <31.966290, 30.236015, 21.413111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912949, 30.629858, 21.367924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314855, -0.150172, -0.937184,
		-0.939725, -0.089408, 0.330035,
		-0.133354, 0.984609, -0.112969,
		31.872942, 30.925241, 21.334032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292377, 30.299778, 21.338411>,  <31.966290, 30.236015, 21.413111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292377, 30.299778, 21.338411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460030, 30.633823, 21.195911>,  <31.560621, 30.834251, 21.110411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460030, 30.633823, 21.195911>,  <31.292377, 30.299778, 21.338411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460030, 30.633823, 21.195911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435468, -0.159395, -0.885980,
		-0.796680, 0.526475, 0.296859,
		0.419128, 0.835115, -0.356250,
		31.585768, 30.884357, 21.089037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674431, 30.658735, 21.207855>,  <31.292377, 30.299778, 21.338411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674431, 30.658735, 21.207855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961899, 30.807318, 20.972725>,  <31.134378, 30.896467, 20.831648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961899, 30.807318, 20.972725>,  <30.674431, 30.658735, 21.207855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961899, 30.807318, 20.972725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498108, -0.314843, -0.807937,
		-0.485185, 0.873438, -0.041243,
		0.718668, 0.371456, -0.587824,
		31.177500, 30.918755, 20.796377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341312, 31.160917, 20.736759>,  <30.674431, 30.658735, 21.207855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341312, 31.160917, 20.736759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684303, 31.034513, 20.574343>,  <30.890099, 30.958672, 20.476892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684303, 31.034513, 20.574343>,  <30.341312, 31.160917, 20.736759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684303, 31.034513, 20.574343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508433, -0.399375, -0.762886,
		0.078916, 0.860603, -0.503125,
		0.857478, -0.316010, -0.406042,
		30.941547, 30.939711, 20.452530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203606, 31.195942, 20.022814>,  <30.341312, 31.160917, 20.736759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203606, 31.195942, 20.022814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553782, 31.007658, 19.978920>,  <30.763887, 30.894688, 19.952583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553782, 31.007658, 19.978920>,  <30.203606, 31.195942, 20.022814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553782, 31.007658, 19.978920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206144, -0.158276, -0.965636,
		0.437165, 0.867976, -0.235595,
		0.875438, -0.470709, -0.109735,
		30.816412, 30.866446, 19.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588554, 31.455648, 19.437696>,  <30.203606, 31.195942, 20.022814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588554, 31.455648, 19.437696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734272, 31.087719, 19.495953>,  <30.821703, 30.866961, 19.530907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734272, 31.087719, 19.495953>,  <30.588554, 31.455648, 19.437696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734272, 31.087719, 19.495953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205004, -0.231754, -0.950927,
		0.908439, 0.316561, -0.272995,
		0.364295, -0.919825, 0.145638,
		30.843561, 30.811771, 19.539644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128920, 31.334621, 18.967098>,  <30.588554, 31.455648, 19.437696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128920, 31.334621, 18.967098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.053419, 30.953369, 19.061684>,  <31.008118, 30.724617, 19.118435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.053419, 30.953369, 19.061684>,  <31.128920, 31.334621, 18.967098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053419, 30.953369, 19.061684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006344, -0.241972, -0.970263,
		0.982004, -0.181639, 0.051720,
		-0.188752, -0.953130, 0.236465,
		30.996794, 30.667431, 19.132624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591442, 30.985397, 18.547874>,  <31.128920, 31.334621, 18.967098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591442, 30.985397, 18.547874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308495, 30.727926, 18.664703>,  <31.138725, 30.573444, 18.734800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308495, 30.727926, 18.664703>,  <31.591442, 30.985397, 18.547874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308495, 30.727926, 18.664703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023679, -0.391394, -0.919918,
		0.706446, -0.657639, 0.261619,
		-0.707371, -0.643678, 0.292071,
		31.096283, 30.534822, 18.752325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934803, 30.357470, 18.397949>,  <31.591442, 30.985397, 18.547874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934803, 30.357470, 18.397949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536449, 30.321379, 18.401295>,  <31.297438, 30.299725, 18.403301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536449, 30.321379, 18.401295>,  <31.934803, 30.357470, 18.397949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536449, 30.321379, 18.401295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027686, -0.390875, -0.920027,
		0.086280, -0.916011, 0.391765,
		-0.995886, -0.090226, 0.008364,
		31.237684, 30.294312, 18.403803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840719, 29.736912, 18.172579>,  <31.934803, 30.357470, 18.397949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840719, 29.736912, 18.172579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.489866, 29.909002, 18.087215>,  <31.279354, 30.012257, 18.035997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.489866, 29.909002, 18.087215>,  <31.840719, 29.736912, 18.172579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489866, 29.909002, 18.087215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005785, -0.434874, -0.900473,
		-0.480219, -0.791066, 0.378952,
		-0.877130, 0.430231, -0.213411,
		31.226727, 30.038071, 18.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400839, 29.188650, 17.821087>,  <31.840719, 29.736912, 18.172579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400839, 29.188650, 17.821087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262093, 29.552750, 17.730642>,  <31.178844, 29.771210, 17.676374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262093, 29.552750, 17.730642>,  <31.400839, 29.188650, 17.821087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262093, 29.552750, 17.730642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006960, -0.243572, -0.969858,
		-0.937889, -0.334838, 0.090822,
		-0.346867, 0.910251, -0.226113,
		31.158033, 29.825825, 17.662807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106354, 28.956270, 17.246687>,  <31.400839, 29.188650, 17.821087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106354, 28.956270, 17.246687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040216, 29.349239, 17.212021>,  <31.000534, 29.585020, 17.191221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040216, 29.349239, 17.212021>,  <31.106354, 28.956270, 17.246687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040216, 29.349239, 17.212021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110405, -0.105760, -0.988244,
		-0.980037, -0.153832, 0.125951,
		-0.165344, 0.982421, -0.086665,
		30.990614, 29.643965, 17.186022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427176, 29.059429, 17.463898>,  <31.106354, 28.956270, 17.246687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427176, 29.059429, 17.463898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160875, 28.797092, 17.321548>,  <30.001095, 28.639690, 17.236139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160875, 28.797092, 17.321548>,  <30.427176, 29.059429, 17.463898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160875, 28.797092, 17.321548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703357, -0.392346, -0.592750,
		0.249126, -0.644930, 0.722497,
		-0.665751, -0.655843, -0.355873,
		29.961149, 28.600340, 17.214787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706223, 28.364824, 17.529226>,  <30.427176, 29.059429, 17.463898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706223, 28.364824, 17.529226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439022, 28.398592, 17.233484>,  <30.278702, 28.418854, 17.056040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.439022, 28.398592, 17.233484>,  <30.706223, 28.364824, 17.529226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439022, 28.398592, 17.233484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658274, -0.396326, -0.640001,
		-0.347054, -0.914221, 0.209175,
		-0.668003, 0.084420, -0.739354,
		30.238621, 28.423918, 17.011679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924854, 28.373123, 17.844448>,  <30.706223, 28.364824, 17.529226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924854, 28.373123, 17.844448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643728, 28.088806, 17.832935>,  <29.475054, 27.918217, 17.826027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643728, 28.088806, 17.832935>,  <29.924854, 28.373123, 17.844448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643728, 28.088806, 17.832935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433687, 0.396043, 0.809361,
		-0.563887, 0.581313, -0.586605,
		-0.702814, -0.710791, -0.028784,
		29.432884, 27.875568, 17.824301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358030, 28.732544, 17.941954>,  <29.924854, 28.373123, 17.844448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358030, 28.732544, 17.941954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270935, 28.352947, 18.033173>,  <29.218678, 28.125189, 18.087904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270935, 28.352947, 18.033173>,  <29.358030, 28.732544, 17.941954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270935, 28.352947, 18.033173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382240, 0.297903, 0.874726,
		-0.898044, 0.103292, -0.427608,
		-0.217738, -0.948992, 0.228047,
		29.205614, 28.068251, 18.101587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782562, 28.722126, 18.392464>,  <29.358030, 28.732544, 17.941954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782562, 28.722126, 18.392464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897215, 28.344454, 18.457418>,  <28.966007, 28.117851, 18.496391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897215, 28.344454, 18.457418>,  <28.782562, 28.722126, 18.392464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897215, 28.344454, 18.457418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296435, 0.073774, 0.952199,
		-0.911026, -0.321067, -0.258742,
		0.286631, -0.944179, 0.162386,
		28.983204, 28.061201, 18.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275486, 28.391085, 18.709967>,  <28.782562, 28.722126, 18.392464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275486, 28.391085, 18.709967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.615469, 28.210278, 18.818228>,  <28.819458, 28.101793, 18.883184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.615469, 28.210278, 18.818228>,  <28.275486, 28.391085, 18.709967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615469, 28.210278, 18.818228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259918, 0.087087, 0.961696,
		-0.458275, -0.887747, -0.043468,
		0.849957, -0.452019, 0.270651,
		28.870457, 28.074673, 18.899424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120405, 28.158405, 19.351976>,  <28.275486, 28.391085, 18.709967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120405, 28.158405, 19.351976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.516420, 28.104927, 19.369635>,  <28.754030, 28.072840, 19.380230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.516420, 28.104927, 19.369635>,  <28.120405, 28.158405, 19.351976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516420, 28.104927, 19.369635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058487, -0.105301, 0.992719,
		-0.128081, -0.985411, -0.112072,
		0.990038, -0.133703, 0.044146,
		28.813433, 28.064817, 19.382879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224977, 27.702276, 19.886200>,  <28.120405, 28.158405, 19.351976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224977, 27.702276, 19.886200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.599510, 27.839336, 19.855534>,  <28.824230, 27.921572, 19.837133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.599510, 27.839336, 19.855534>,  <28.224977, 27.702276, 19.886200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599510, 27.839336, 19.855534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098638, -0.047137, 0.994006,
		0.336984, -0.938279, -0.077934,
		0.936329, 0.342652, -0.076665,
		28.880409, 27.942131, 19.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730974, 27.279648, 20.368002>,  <28.224977, 27.702276, 19.886200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730974, 27.279648, 20.368002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.876816, 27.643156, 20.286812>,  <28.964321, 27.861261, 20.238098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.876816, 27.643156, 20.286812>,  <28.730974, 27.279648, 20.368002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876816, 27.643156, 20.286812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310365, 0.086914, 0.946636,
		0.877917, -0.408142, -0.250362,
		0.364602, 0.908772, -0.202977,
		28.986197, 27.915787, 20.225920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397461, 27.361849, 20.732141>,  <28.730974, 27.279648, 20.368002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397461, 27.361849, 20.732141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309124, 27.740761, 20.639282>,  <29.256121, 27.968107, 20.583567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.309124, 27.740761, 20.639282>,  <29.397461, 27.361849, 20.732141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309124, 27.740761, 20.639282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466386, 0.311616, 0.827876,
		0.856570, 0.074562, -0.510616,
		-0.220844, 0.947278, -0.232146,
		29.242870, 28.024944, 20.569639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056173, 27.754198, 20.863310>,  <29.397461, 27.361849, 20.732141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056173, 27.754198, 20.863310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.801613, 28.062611, 20.854362>,  <29.648876, 28.247658, 20.848995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.801613, 28.062611, 20.854362>,  <30.056173, 27.754198, 20.863310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801613, 28.062611, 20.854362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468214, 0.409178, 0.783166,
		0.612999, 0.487936, -0.621410,
		-0.636402, 0.771033, -0.022367,
		29.610693, 28.293921, 20.847652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413132, 28.309877, 21.044373>,  <30.056173, 27.754198, 20.863310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413132, 28.309877, 21.044373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.031977, 28.409990, 21.112919>,  <29.803284, 28.470058, 21.154047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.031977, 28.409990, 21.112919>,  <30.413132, 28.309877, 21.044373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031977, 28.409990, 21.112919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270570, 0.445971, 0.853172,
		0.137112, 0.859341, -0.492679,
		-0.952886, 0.250284, 0.171363,
		29.746111, 28.485075, 21.164328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388123, 29.046928, 21.164860>,  <30.413132, 28.309877, 21.044373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388123, 29.046928, 21.164860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052830, 28.897453, 21.323719>,  <29.851654, 28.807768, 21.419035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052830, 28.897453, 21.323719>,  <30.388123, 29.046928, 21.164860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052830, 28.897453, 21.323719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215173, 0.442539, 0.870551,
		-0.501067, 0.815179, -0.290542,
		-0.838232, -0.373687, 0.397146,
		29.801361, 28.785347, 21.442863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016821, 29.549589, 21.456596>,  <30.388123, 29.046928, 21.164860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016821, 29.549589, 21.456596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853741, 29.247217, 21.661478>,  <29.755892, 29.065794, 21.784407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853741, 29.247217, 21.661478>,  <30.016821, 29.549589, 21.456596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853741, 29.247217, 21.661478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215004, 0.465698, 0.858428,
		-0.887442, 0.460107, -0.027338,
		-0.407700, -0.755928, 0.512205,
		29.731430, 29.020439, 21.815140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587448, 29.842926, 21.937431>,  <30.016821, 29.549589, 21.456596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587448, 29.842926, 21.937431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625420, 29.478401, 22.097679>,  <29.648203, 29.259686, 22.193829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625420, 29.478401, 22.097679>,  <29.587448, 29.842926, 21.937431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625420, 29.478401, 22.097679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163421, 0.411244, 0.896756,
		-0.981978, -0.019659, 0.187967,
		0.094929, -0.911313, 0.400620,
		29.653898, 29.205008, 22.217865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427385, 29.969091, 22.626926>,  <29.587448, 29.842926, 21.937431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427385, 29.969091, 22.626926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622318, 29.620716, 22.601696>,  <29.739277, 29.411692, 22.586557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622318, 29.620716, 22.601696>,  <29.427385, 29.969091, 22.626926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622318, 29.620716, 22.601696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388517, 0.151569, 0.908890,
		-0.782025, -0.467437, 0.412238,
		0.487331, -0.870936, -0.063077,
		29.768518, 29.359436, 22.582773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743977, 29.766157, 22.746353>,  <29.427385, 29.969091, 22.626926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743977, 29.766157, 22.746353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440502, 30.023783, 22.785505>,  <28.258417, 30.178358, 22.808996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440502, 30.023783, 22.785505>,  <28.743977, 29.766157, 22.746353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440502, 30.023783, 22.785505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339336, -0.262451, -0.903311,
		-0.556100, -0.718542, 0.417671,
		-0.758686, 0.644062, 0.097878,
		28.212896, 30.217001, 22.814869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169201, 29.412256, 22.552160>,  <28.743977, 29.766157, 22.746353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169201, 29.412256, 22.552160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.031860, 29.785166, 22.506603>,  <27.949455, 30.008911, 22.479269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.031860, 29.785166, 22.506603>,  <28.169201, 29.412256, 22.552160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031860, 29.785166, 22.506603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360967, -0.242938, -0.900380,
		-0.867071, -0.268036, 0.419934,
		-0.343352, 0.932275, -0.113892,
		27.928854, 30.064848, 22.472435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479162, 29.389112, 22.238806>,  <28.169201, 29.412256, 22.552160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479162, 29.389112, 22.238806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.580011, 29.765675, 22.149193>,  <27.640520, 29.991611, 22.095425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.580011, 29.765675, 22.149193>,  <27.479162, 29.389112, 22.238806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580011, 29.765675, 22.149193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387386, -0.113967, -0.914846,
		-0.886773, 0.317441, 0.335954,
		0.252122, 0.941405, -0.224035,
		27.655647, 30.048096, 22.081982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975672, 29.583899, 21.859249>,  <27.479162, 29.389112, 22.238806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975672, 29.583899, 21.859249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.256977, 29.852224, 21.765078>,  <27.425760, 30.013220, 21.708574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.256977, 29.852224, 21.765078>,  <26.975672, 29.583899, 21.859249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256977, 29.852224, 21.765078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323520, 0.007094, -0.946195,
		-0.633053, 0.741590, 0.222012,
		0.703263, 0.670816, -0.235428,
		27.467957, 30.053469, 21.694448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662428, 30.108278, 21.431221>,  <26.975672, 29.583899, 21.859249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662428, 30.108278, 21.431221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.041533, 30.203478, 21.346268>,  <27.268995, 30.260597, 21.295296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.041533, 30.203478, 21.346268>,  <26.662428, 30.108278, 21.431221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041533, 30.203478, 21.346268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239398, 0.090695, -0.966676,
		-0.210804, 0.967022, 0.142933,
		0.947760, 0.237997, -0.212385,
		27.325861, 30.274878, 21.282553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695662, 30.658989, 21.026014>,  <26.662428, 30.108278, 21.431221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695662, 30.658989, 21.026014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.053362, 30.499012, 20.945656>,  <27.267982, 30.403027, 20.897442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.053362, 30.499012, 20.945656>,  <26.695662, 30.658989, 21.026014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053362, 30.499012, 20.945656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162071, 0.129031, -0.978307,
		0.417186, 0.907413, 0.050568,
		0.894253, -0.399941, -0.200895,
		27.321638, 30.379030, 20.885387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830416, 31.024471, 20.399946>,  <26.695662, 30.658989, 21.026014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830416, 31.024471, 20.399946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.089514, 30.719959, 20.411831>,  <27.244972, 30.537252, 20.418962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.089514, 30.719959, 20.411831>,  <26.830416, 31.024471, 20.399946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089514, 30.719959, 20.411831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047473, -0.079256, -0.995723,
		0.760378, 0.643563, -0.087478,
		0.647743, -0.761279, 0.029713,
		27.283836, 30.491575, 20.420744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282747, 31.661602, 20.346146>,  <26.830416, 31.024471, 20.399946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282747, 31.661602, 20.346146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.242626, 32.030560, 20.196947>,  <27.218554, 32.251934, 20.107428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.242626, 32.030560, 20.196947>,  <27.282747, 31.661602, 20.346146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242626, 32.030560, 20.196947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066345, 0.367851, 0.927515,
		0.992743, 0.117778, 0.024300,
		-0.100302, 0.922396, -0.372996,
		27.212536, 32.307278, 20.085049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828701, 32.091240, 20.698580>,  <27.282747, 31.661602, 20.346146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828701, 32.091240, 20.698580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.562983, 32.356529, 20.560682>,  <27.403551, 32.515701, 20.477943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.562983, 32.356529, 20.560682>,  <27.828701, 32.091240, 20.698580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562983, 32.356529, 20.560682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010214, 0.469225, 0.883019,
		0.747398, 0.583067, -0.318480,
		-0.664298, 0.663220, -0.344742,
		27.363693, 32.555496, 20.457260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164776, 32.784901, 20.766098>,  <27.828701, 32.091240, 20.698580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164776, 32.784901, 20.766098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.775314, 32.870461, 20.734482>,  <27.541637, 32.921799, 20.715511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.775314, 32.870461, 20.734482>,  <28.164776, 32.784901, 20.766098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775314, 32.870461, 20.734482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058508, 0.569336, 0.820020,
		0.220405, 0.793790, -0.566850,
		-0.973652, 0.213902, -0.079042,
		27.483219, 32.934631, 20.710770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070814, 33.621925, 20.785242>,  <28.164776, 32.784901, 20.766098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070814, 33.621925, 20.785242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.738310, 33.438370, 20.910734>,  <27.538807, 33.328236, 20.986031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.738310, 33.438370, 20.910734>,  <28.070814, 33.621925, 20.785242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738310, 33.438370, 20.910734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005285, 0.557834, 0.829936,
		-0.555857, 0.691551, -0.461280,
		-0.831261, -0.458888, 0.313731,
		27.488932, 33.300705, 21.004854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749769, 34.120064, 21.117426>,  <28.070814, 33.621925, 20.785242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749769, 34.120064, 21.117426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.552866, 33.797382, 21.248215>,  <27.434723, 33.603775, 21.326689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.552866, 33.797382, 21.248215>,  <27.749769, 34.120064, 21.117426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552866, 33.797382, 21.248215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123783, 0.436694, 0.891053,
		-0.861603, 0.398155, -0.314823,
		-0.492259, -0.806704, 0.326971,
		27.405188, 33.555370, 21.346306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125523, 34.368690, 21.310055>,  <27.749769, 34.120064, 21.117426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125523, 34.368690, 21.310055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.154745, 34.014282, 21.493195>,  <27.172279, 33.801636, 21.603079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.154745, 34.014282, 21.493195>,  <27.125523, 34.368690, 21.310055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154745, 34.014282, 21.493195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133424, 0.446268, 0.884897,
		-0.988362, -0.125737, -0.085614,
		0.073057, -0.886022, 0.457851,
		27.176662, 33.748474, 21.630550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621119, 34.425816, 21.880766>,  <27.125523, 34.368690, 21.310055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621119, 34.425816, 21.880766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.875044, 34.138557, 21.994802>,  <27.027399, 33.966202, 22.063225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.875044, 34.138557, 21.994802>,  <26.621119, 34.425816, 21.880766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875044, 34.138557, 21.994802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101286, 0.288445, 0.952124,
		-0.765998, -0.633297, 0.110371,
		0.634813, -0.718147, 0.285093,
		27.065487, 33.923115, 22.080330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.761580, 33.285465, 16.476456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672113, 32.910683, 16.583857>,  <31.618433, 32.685814, 16.648298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672113, 32.910683, 16.583857>,  <31.761580, 33.285465, 16.476456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672113, 32.910683, 16.583857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046551, 0.285437, 0.957266,
		-0.973554, 0.201608, -0.107458,
		-0.223665, -0.936952, 0.268503,
		31.605015, 32.629597, 16.664408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209726, 33.317997, 16.914095>,  <31.761580, 33.285465, 16.476456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209726, 33.317997, 16.914095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400183, 32.970554, 16.968969>,  <31.514456, 32.762089, 17.001894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400183, 32.970554, 16.968969>,  <31.209726, 33.317997, 16.914095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400183, 32.970554, 16.968969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042166, 0.178375, 0.983059,
		-0.878358, -0.462289, 0.121557,
		0.476140, -0.868603, 0.137184,
		31.543024, 32.709972, 17.010124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787441, 32.883980, 17.499504>,  <31.209726, 33.317997, 16.914095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787441, 32.883980, 17.499504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162046, 32.745129, 17.479738>,  <31.386810, 32.661816, 17.467878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162046, 32.745129, 17.479738>,  <30.787441, 32.883980, 17.499504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162046, 32.745129, 17.479738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130440, 0.214097, 0.968064,
		-0.325466, -0.913051, 0.245784,
		0.936514, -0.347132, -0.049417,
		31.443001, 32.640987, 17.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823040, 32.669781, 18.124537>,  <30.787441, 32.883980, 17.499504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823040, 32.669781, 18.124537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198727, 32.657379, 17.987768>,  <31.424139, 32.649937, 17.905706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198727, 32.657379, 17.987768>,  <30.823040, 32.669781, 18.124537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198727, 32.657379, 17.987768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340502, 0.211562, 0.916133,
		0.043930, -0.976873, 0.209261,
		0.939217, -0.031008, -0.341921,
		31.480492, 32.648075, 17.885191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175175, 32.276276, 18.595896>,  <30.823040, 32.669781, 18.124537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175175, 32.276276, 18.595896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.478443, 32.472782, 18.424389>,  <31.660404, 32.590687, 18.321486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.478443, 32.472782, 18.424389>,  <31.175175, 32.276276, 18.595896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478443, 32.472782, 18.424389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226810, 0.417810, 0.879768,
		0.611339, -0.764262, 0.205347,
		0.758170, 0.491262, -0.428766,
		31.705894, 32.620159, 18.295759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637728, 32.280380, 19.127642>,  <31.175175, 32.276276, 18.595896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637728, 32.280380, 19.127642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764050, 32.557308, 18.868116>,  <31.839844, 32.723465, 18.712402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.764050, 32.557308, 18.868116>,  <31.637728, 32.280380, 19.127642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764050, 32.557308, 18.868116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306547, 0.572686, 0.760302,
		0.897940, -0.438999, -0.031371,
		0.315806, 0.692322, -0.648812,
		31.858791, 32.765003, 18.673473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330990, 32.385448, 19.269989>,  <31.637728, 32.280380, 19.127642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330990, 32.385448, 19.269989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195248, 32.727413, 19.113041>,  <32.113804, 32.932594, 19.018871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195248, 32.727413, 19.113041>,  <32.330990, 32.385448, 19.269989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195248, 32.727413, 19.113041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353105, 0.502397, 0.789249,
		0.871868, 0.129289, -0.472367,
		-0.339357, 0.854916, -0.392371,
		32.093441, 32.983887, 18.995329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848423, 32.796276, 19.508656>,  <32.330990, 32.385448, 19.269989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848423, 32.796276, 19.508656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.551727, 33.036880, 19.389992>,  <32.373711, 33.181244, 19.318794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.551727, 33.036880, 19.389992>,  <32.848423, 32.796276, 19.508656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551727, 33.036880, 19.389992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263325, 0.667983, 0.696031,
		0.616836, 0.438154, -0.653861,
		-0.741737, 0.601515, -0.296659,
		32.329205, 33.217335, 19.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114361, 33.505886, 19.527557>,  <32.848423, 32.796276, 19.508656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114361, 33.505886, 19.527557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717056, 33.550922, 19.538527>,  <32.478672, 33.577946, 19.545107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717056, 33.550922, 19.538527>,  <33.114361, 33.505886, 19.527557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717056, 33.550922, 19.538527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108358, 0.818506, 0.564186,
		0.041079, 0.563356, -0.825192,
		-0.993263, 0.112592, 0.027421,
		32.419079, 33.584702, 19.546753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031197, 34.246834, 19.517635>,  <33.114361, 33.505886, 19.527557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031197, 34.246834, 19.517635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700428, 34.077007, 19.665119>,  <32.501968, 33.975109, 19.753609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.700428, 34.077007, 19.665119>,  <33.031197, 34.246834, 19.517635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700428, 34.077007, 19.665119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019297, 0.633876, 0.773194,
		-0.561991, 0.646483, -0.515971,
		-0.826918, -0.424571, 0.368708,
		32.452351, 33.949635, 19.775732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649567, 34.761337, 19.787935>,  <33.031197, 34.246834, 19.517635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649567, 34.761337, 19.787935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495499, 34.436592, 19.963446>,  <32.403057, 34.241745, 20.068752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.495499, 34.436592, 19.963446>,  <32.649567, 34.761337, 19.787935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495499, 34.436592, 19.963446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152371, 0.524884, 0.837425,
		-0.910179, 0.255695, -0.325874,
		-0.385172, -0.811860, 0.438778,
		32.379948, 34.193035, 20.095079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009846, 34.994450, 20.144251>,  <32.649567, 34.761337, 19.787935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009846, 34.994450, 20.144251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.147804, 34.658749, 20.312399>,  <32.230579, 34.457329, 20.413288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.147804, 34.658749, 20.312399>,  <32.009846, 34.994450, 20.144251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147804, 34.658749, 20.312399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033363, 0.436607, 0.899034,
		-0.938049, -0.324094, 0.122583,
		0.344892, -0.839248, 0.420371,
		32.251270, 34.406975, 20.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327518, 34.748405, 20.175575>,  <32.009846, 34.994450, 20.144251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327518, 34.748405, 20.175575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020588, 35.004669, 20.164454>,  <30.836430, 35.158428, 20.157782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020588, 35.004669, 20.164454>,  <31.327518, 34.748405, 20.175575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020588, 35.004669, 20.164454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423302, -0.538610, -0.728502,
		-0.481692, -0.547230, 0.684479,
		-0.767325, 0.640655, -0.027801,
		30.790390, 35.196865, 20.156113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700758, 34.395432, 20.233328>,  <31.327518, 34.748405, 20.175575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700758, 34.395432, 20.233328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587223, 34.734890, 20.054789>,  <30.519102, 34.938564, 19.947664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587223, 34.734890, 20.054789>,  <30.700758, 34.395432, 20.233328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587223, 34.734890, 20.054789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497784, -0.528267, -0.687855,
		-0.819541, 0.026947, 0.572387,
		-0.283837, 0.848651, -0.446350,
		30.502071, 34.989487, 19.920883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078865, 34.245968, 20.061203>,  <30.700758, 34.395432, 20.233328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078865, 34.245968, 20.061203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141605, 34.567814, 19.832121>,  <30.179249, 34.760921, 19.694672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141605, 34.567814, 19.832121>,  <30.078865, 34.245968, 20.061203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141605, 34.567814, 19.832121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405653, -0.476221, -0.780165,
		-0.900468, 0.354689, 0.251699,
		0.156852, 0.804617, -0.572703,
		30.188662, 34.809200, 19.660311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510130, 34.316418, 19.651096>,  <30.078865, 34.245968, 20.061203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510130, 34.316418, 19.651096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759624, 34.554398, 19.448318>,  <29.909321, 34.697186, 19.326651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759624, 34.554398, 19.448318>,  <29.510130, 34.316418, 19.651096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759624, 34.554398, 19.448318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465573, -0.238182, -0.852356,
		-0.627851, 0.767665, 0.128428,
		0.623735, 0.594945, -0.506947,
		29.946745, 34.732880, 19.296234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154902, 34.491722, 19.119703>,  <29.510130, 34.316418, 19.651096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154902, 34.491722, 19.119703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524567, 34.580326, 18.995216>,  <29.746367, 34.633488, 18.920525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524567, 34.580326, 18.995216>,  <29.154902, 34.491722, 19.119703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524567, 34.580326, 18.995216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248394, -0.270479, -0.930130,
		-0.290214, 0.936895, -0.194944,
		0.924162, 0.221514, -0.311216,
		29.801815, 34.646782, 18.901852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067558, 34.949398, 18.527044>,  <29.154902, 34.491722, 19.119703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067558, 34.949398, 18.527044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410719, 34.744148, 18.516436>,  <29.616615, 34.620998, 18.510071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410719, 34.744148, 18.516436>,  <29.067558, 34.949398, 18.527044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410719, 34.744148, 18.516436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221149, -0.322167, -0.920490,
		0.463784, 0.795556, -0.389866,
		0.857903, -0.513126, -0.026520,
		29.668091, 34.590210, 18.508480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376827, 35.207729, 17.917595>,  <29.067558, 34.949398, 18.527044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376827, 35.207729, 17.917595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559038, 34.867756, 18.023512>,  <29.668364, 34.663773, 18.087063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559038, 34.867756, 18.023512>,  <29.376827, 35.207729, 17.917595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559038, 34.867756, 18.023512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054803, -0.323654, -0.944587,
		0.888534, 0.415773, -0.194011,
		0.455526, -0.849930, 0.264792,
		29.695696, 34.612778, 18.102949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854008, 34.991119, 17.380674>,  <29.376827, 35.207729, 17.917595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854008, 34.991119, 17.380674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771946, 34.654060, 17.579817>,  <29.722708, 34.451824, 17.699303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.771946, 34.654060, 17.579817>,  <29.854008, 34.991119, 17.380674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771946, 34.654060, 17.579817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181956, -0.466969, -0.865351,
		0.961667, -0.268120, -0.057523,
		-0.205156, -0.842646, 0.497855,
		29.710400, 34.401268, 17.729174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062948, 34.549965, 17.008062>,  <29.854008, 34.991119, 17.380674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062948, 34.549965, 17.008062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842632, 34.300518, 17.229958>,  <29.710442, 34.150852, 17.363094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842632, 34.300518, 17.229958>,  <30.062948, 34.549965, 17.008062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842632, 34.300518, 17.229958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290650, -0.479732, -0.827877,
		0.782401, -0.617222, 0.082978,
		-0.550791, -0.623614, 0.554738,
		29.677395, 34.113434, 17.396379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163645, 33.899593, 16.818531>,  <30.062948, 34.549965, 17.008062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163645, 33.899593, 16.818531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803776, 33.867466, 16.990177>,  <29.587854, 33.848190, 17.093164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803776, 33.867466, 16.990177>,  <30.163645, 33.899593, 16.818531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803776, 33.867466, 16.990177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328902, -0.521667, -0.787202,
		0.287082, -0.849360, 0.442912,
		-0.899671, -0.080317, 0.429117,
		29.533875, 33.843372, 17.118912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885452, 33.158524, 16.733452>,  <30.163645, 33.899593, 16.818531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885452, 33.158524, 16.733452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566000, 33.395012, 16.778427>,  <29.374329, 33.536903, 16.805412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566000, 33.395012, 16.778427>,  <29.885452, 33.158524, 16.733452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566000, 33.395012, 16.778427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458965, -0.477486, -0.749238,
		-0.389277, -0.649973, 0.652686,
		-0.798633, 0.591221, 0.112441,
		29.326410, 33.572380, 16.812159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400557, 32.637135, 16.688217>,  <29.885452, 33.158524, 16.733452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400557, 32.637135, 16.688217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246531, 32.999119, 16.615803>,  <29.154114, 33.216309, 16.572355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246531, 32.999119, 16.615803>,  <29.400557, 32.637135, 16.688217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246531, 32.999119, 16.615803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449837, -0.355325, -0.819384,
		-0.805835, -0.234081, 0.543908,
		-0.385066, 0.904959, -0.181035,
		29.131010, 33.270607, 16.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584465, 32.591499, 16.398228>,  <29.400557, 32.637135, 16.688217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584465, 32.591499, 16.398228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732155, 32.946220, 16.287045>,  <28.820768, 33.159054, 16.220335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732155, 32.946220, 16.287045>,  <28.584465, 32.591499, 16.398228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732155, 32.946220, 16.287045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461581, -0.084601, -0.883055,
		-0.806608, 0.454345, 0.378093,
		0.369225, 0.886799, -0.277958,
		28.842922, 33.212261, 16.203657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079353, 32.005192, 16.662395>,  <28.584465, 32.591499, 16.398228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079353, 32.005192, 16.662395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751471, 32.228638, 16.713039>,  <27.554741, 32.362705, 16.743425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751471, 32.228638, 16.713039>,  <28.079353, 32.005192, 16.662395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751471, 32.228638, 16.713039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130693, -0.032800, 0.990880,
		0.557671, 0.828780, -0.046121,
		-0.819708, 0.558613, 0.126607,
		27.505558, 32.396221, 16.751022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204693, 32.729099, 17.098959>,  <28.079353, 32.005192, 16.662395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204693, 32.729099, 17.098959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840334, 32.565044, 17.117064>,  <27.621717, 32.466610, 17.127926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840334, 32.565044, 17.117064>,  <28.204693, 32.729099, 17.098959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840334, 32.565044, 17.117064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035433, 0.187035, 0.981714,
		-0.411107, 0.892638, -0.184902,
		-0.910898, -0.410141, 0.045263,
		27.567064, 32.442001, 17.130642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725332, 33.172558, 17.508930>,  <28.204693, 32.729099, 17.098959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725332, 33.172558, 17.508930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541754, 32.817184, 17.511871>,  <27.431606, 32.603962, 17.513636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541754, 32.817184, 17.511871>,  <27.725332, 33.172558, 17.508930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541754, 32.817184, 17.511871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283248, 0.154156, 0.946576,
		-0.842103, 0.432346, -0.322396,
		-0.458948, -0.888433, 0.007354,
		27.404070, 32.550655, 17.514078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039762, 33.266315, 17.875402>,  <27.725332, 33.172558, 17.508930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039762, 33.266315, 17.875402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132732, 32.878326, 17.904053>,  <27.188515, 32.645535, 17.921242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132732, 32.878326, 17.904053>,  <27.039762, 33.266315, 17.875402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132732, 32.878326, 17.904053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304025, -0.002504, 0.952661,
		-0.923876, -0.243197, -0.295479,
		0.232424, -0.969974, 0.071625,
		27.202459, 32.587334, 17.925541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526741, 32.944580, 18.308846>,  <27.039762, 33.266315, 17.875402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526741, 32.944580, 18.308846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.835463, 32.691097, 18.329754>,  <27.020697, 32.539009, 18.342299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.835463, 32.691097, 18.329754>,  <26.526741, 32.944580, 18.308846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835463, 32.691097, 18.329754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189449, -0.150707, 0.970256,
		-0.606981, -0.758751, -0.236371,
		0.771805, -0.633707, 0.052269,
		27.067005, 32.500984, 18.345434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275660, 32.389164, 18.746014>,  <26.526741, 32.944580, 18.308846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275660, 32.389164, 18.746014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673222, 32.345551, 18.752516>,  <26.911758, 32.319382, 18.756416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673222, 32.345551, 18.752516>,  <26.275660, 32.389164, 18.746014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673222, 32.345551, 18.752516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036072, -0.182325, 0.982576,
		-0.104173, -0.977174, -0.185147,
		0.993905, -0.109036, 0.016256,
		26.971394, 32.312840, 18.757393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428299, 31.819067, 19.139975>,  <26.275660, 32.389164, 18.746014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428299, 31.819067, 19.139975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761549, 32.039703, 19.156240>,  <26.961498, 32.172085, 19.166000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761549, 32.039703, 19.156240>,  <26.428299, 31.819067, 19.139975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761549, 32.039703, 19.156240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013669, -0.094035, 0.995475,
		0.552917, -0.828798, -0.085882,
		0.833124, 0.551589, 0.040664,
		27.011486, 32.205181, 19.168440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844221, 31.581184, 19.756027>,  <26.428299, 31.819067, 19.139975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844221, 31.581184, 19.756027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957376, 31.960777, 19.700298>,  <27.025270, 32.188534, 19.666861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957376, 31.960777, 19.700298>,  <26.844221, 31.581184, 19.756027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957376, 31.960777, 19.700298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061686, 0.162955, 0.984703,
		0.957167, -0.269968, 0.104637,
		0.282889, 0.948980, -0.139322,
		27.042244, 32.245472, 19.658503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314590, 31.122299, 19.744171>,  <26.844221, 31.581184, 19.756027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314590, 31.122299, 19.744171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296988, 30.745153, 19.876274>,  <27.286425, 30.518866, 19.955536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296988, 30.745153, 19.876274>,  <27.314590, 31.122299, 19.744171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296988, 30.745153, 19.876274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104827, -0.324395, -0.940095,
		0.993516, -0.075993, -0.084561,
		-0.044009, -0.942864, 0.330258,
		27.283785, 30.462294, 19.975351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669439, 30.747128, 19.280033>,  <27.314590, 31.122299, 19.744171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669439, 30.747128, 19.280033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456810, 30.458601, 19.457632>,  <27.329231, 30.285484, 19.564192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456810, 30.458601, 19.457632>,  <27.669439, 30.747128, 19.280033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456810, 30.458601, 19.457632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169427, -0.423046, -0.890128,
		0.829893, -0.548395, 0.102671,
		-0.531576, -0.721316, 0.443995,
		27.297337, 30.242207, 19.590830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999273, 30.156155, 19.008747>,  <27.669439, 30.747128, 19.280033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999273, 30.156155, 19.008747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636150, 30.040316, 19.130087>,  <27.418276, 29.970812, 19.202890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636150, 30.040316, 19.130087>,  <27.999273, 30.156155, 19.008747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636150, 30.040316, 19.130087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096636, -0.559404, -0.823242,
		0.408101, -0.776660, 0.479846,
		-0.907808, -0.289596, 0.303347,
		27.363808, 29.953438, 19.221090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017027, 29.431406, 19.004148>,  <27.999273, 30.156155, 19.008747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017027, 29.431406, 19.004148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.630085, 29.531872, 19.017639>,  <27.397919, 29.592152, 19.025734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.630085, 29.531872, 19.017639>,  <28.017027, 29.431406, 19.004148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630085, 29.531872, 19.017639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202085, -0.684236, -0.700702,
		-0.152913, -0.684644, 0.712657,
		-0.967357, 0.251164, 0.033728,
		27.339878, 29.607222, 19.027758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747036, 28.885798, 19.165184>,  <28.017027, 29.431406, 19.004148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747036, 28.885798, 19.165184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440407, 29.076914, 18.993565>,  <27.256430, 29.191584, 18.890593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440407, 29.076914, 18.993565>,  <27.747036, 28.885798, 19.165184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440407, 29.076914, 18.993565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124888, -0.766304, -0.630223,
		-0.629897, -0.429528, 0.647098,
		-0.766572, 0.477791, -0.429050,
		27.210436, 29.220251, 18.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102465, 28.433138, 19.141865>,  <27.747036, 28.885798, 19.165184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102465, 28.433138, 19.141865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074966, 28.700731, 18.845829>,  <27.058468, 28.861288, 18.668207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074966, 28.700731, 18.845829>,  <27.102465, 28.433138, 19.141865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074966, 28.700731, 18.845829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226972, -0.732880, -0.641382,
		-0.971472, 0.123888, 0.202222,
		-0.068745, 0.668984, -0.740091,
		27.054342, 28.901426, 18.623802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682472, 28.127777, 18.678005>,  <27.102465, 28.433138, 19.141865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682472, 28.127777, 18.678005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797726, 28.424385, 18.435640>,  <26.866879, 28.602350, 18.290222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797726, 28.424385, 18.435640>,  <26.682472, 28.127777, 18.678005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797726, 28.424385, 18.435640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078809, -0.648962, -0.756728,
		-0.954342, 0.170287, -0.245426,
		0.288133, 0.741519, -0.605912,
		26.884165, 28.646841, 18.253866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323355, 28.120817, 18.019157>,  <26.682472, 28.127777, 18.678005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323355, 28.120817, 18.019157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657547, 28.323519, 17.934141>,  <26.858063, 28.445139, 17.883131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657547, 28.323519, 17.934141>,  <26.323355, 28.120817, 18.019157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657547, 28.323519, 17.934141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234313, -0.678372, -0.696354,
		-0.497060, 0.531990, -0.685506,
		0.835481, 0.506753, -0.212540,
		26.908192, 28.475544, 17.870378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299946, 28.206099, 17.233978>,  <26.323355, 28.120817, 18.019157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299946, 28.206099, 17.233978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672586, 28.261106, 17.368563>,  <26.896172, 28.294111, 17.449312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672586, 28.261106, 17.368563>,  <26.299946, 28.206099, 17.233978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672586, 28.261106, 17.368563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362525, -0.418581, -0.832686,
		0.026324, 0.897707, -0.439806,
		0.931602, 0.137521, 0.336460,
		26.952066, 28.302362, 17.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.651335, 35.042202, 31.905409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933161, 34.829746, 31.717161>,  <32.102257, 34.702274, 31.604212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933161, 34.829746, 31.717161>,  <31.651335, 35.042202, 31.905409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933161, 34.829746, 31.717161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697939, -0.398712, -0.594903,
		0.128332, 0.747612, -0.651619,
		0.704565, -0.531135, -0.470620,
		32.144531, 34.670406, 31.575975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531431, 35.198669, 31.266041>,  <31.651335, 35.042202, 31.905409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531431, 35.198669, 31.266041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710346, 34.841457, 31.285751>,  <31.817696, 34.627129, 31.297577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710346, 34.841457, 31.285751>,  <31.531431, 35.198669, 31.266041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710346, 34.841457, 31.285751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596983, -0.339125, -0.727052,
		0.665990, 0.295786, -0.684812,
		0.447289, -0.893031, 0.049275,
		31.844532, 34.573547, 31.300533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760452, 35.001705, 30.528282>,  <31.531431, 35.198669, 31.266041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760452, 35.001705, 30.528282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759899, 34.668331, 30.749329>,  <31.759567, 34.468307, 30.881956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759899, 34.668331, 30.749329>,  <31.760452, 35.001705, 30.528282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759899, 34.668331, 30.749329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479449, -0.484408, -0.731763,
		0.877569, -0.265963, -0.398919,
		-0.001382, -0.833434, 0.552617,
		31.759485, 34.418301, 30.915113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969200, 34.554710, 30.044056>,  <31.760452, 35.001705, 30.528282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969200, 34.554710, 30.044056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800117, 34.346710, 30.340952>,  <31.698668, 34.221912, 30.519091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800117, 34.346710, 30.340952>,  <31.969200, 34.554710, 30.044056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800117, 34.346710, 30.340952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569237, -0.484947, -0.663924,
		0.705187, -0.703156, -0.091013,
		-0.422705, -0.519999, 0.742241,
		31.673306, 34.190712, 30.563623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926262, 33.842525, 29.860067>,  <31.969200, 34.554710, 30.044056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926262, 33.842525, 29.860067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645752, 33.902069, 30.138939>,  <31.477446, 33.937798, 30.306261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645752, 33.902069, 30.138939>,  <31.926262, 33.842525, 29.860067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645752, 33.902069, 30.138939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627810, -0.592279, -0.505035,
		0.337742, -0.791862, 0.508807,
		-0.701274, 0.148863, 0.697177,
		31.435369, 33.946728, 30.348091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636135, 33.166862, 29.852655>,  <31.926262, 33.842525, 29.860067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636135, 33.166862, 29.852655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375908, 33.419827, 30.020857>,  <31.219772, 33.571606, 30.121778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375908, 33.419827, 30.020857>,  <31.636135, 33.166862, 29.852655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375908, 33.419827, 30.020857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758968, -0.521668, -0.389654,
		-0.027057, -0.572645, 0.819357,
		-0.650566, 0.632408, 0.420505,
		31.180738, 33.609550, 30.147009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104050, 32.654255, 29.801331>,  <31.636135, 33.166862, 29.852655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104050, 32.654255, 29.801331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964193, 33.025913, 29.849398>,  <30.880280, 33.248909, 29.878239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964193, 33.025913, 29.849398>,  <31.104050, 32.654255, 29.801331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964193, 33.025913, 29.849398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691630, -0.169458, -0.702091,
		-0.631981, -0.328591, 0.701874,
		-0.349639, 0.929146, 0.120170,
		30.859301, 33.304657, 29.885448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466166, 32.534050, 29.851570>,  <31.104050, 32.654255, 29.801331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466166, 32.534050, 29.851570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469412, 32.922436, 29.755928>,  <30.471359, 33.155468, 29.698544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469412, 32.922436, 29.755928>,  <30.466166, 32.534050, 29.851570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469412, 32.922436, 29.755928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686736, -0.168395, -0.707132,
		-0.726861, 0.169939, 0.665427,
		0.008114, 0.970960, -0.239103,
		30.471846, 33.213722, 29.684196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750113, 32.695080, 29.687784>,  <30.466166, 32.534050, 29.851570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750113, 32.695080, 29.687784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.969343, 32.967987, 29.494238>,  <30.100882, 33.131729, 29.378111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.969343, 32.967987, 29.494238>,  <29.750113, 32.695080, 29.687784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969343, 32.967987, 29.494238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601244, -0.080806, -0.794970,
		-0.581478, 0.726627, 0.365919,
		0.548078, 0.682264, -0.483866,
		30.133766, 33.172665, 29.349077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300869, 32.990734, 29.255299>,  <29.750113, 32.695080, 29.687784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300869, 32.990734, 29.255299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.660223, 33.069950, 29.098490>,  <29.875835, 33.117481, 29.004404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.660223, 33.069950, 29.098490>,  <29.300869, 32.990734, 29.255299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660223, 33.069950, 29.098490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386852, -0.065811, -0.919790,
		-0.207959, 0.977981, 0.017490,
		0.898387, 0.198045, -0.392020,
		29.929739, 33.129364, 28.980885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182863, 33.367718, 28.711845>,  <29.300869, 32.990734, 29.255299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182863, 33.367718, 28.711845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554129, 33.256683, 28.612684>,  <29.776888, 33.190063, 28.553188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554129, 33.256683, 28.612684>,  <29.182863, 33.367718, 28.711845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554129, 33.256683, 28.612684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255882, 0.007713, -0.966677,
		0.270248, 0.960670, -0.063870,
		0.928165, -0.277586, -0.247902,
		29.832579, 33.173409, 28.538313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353794, 33.854576, 28.186218>,  <29.182863, 33.367718, 28.711845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353794, 33.854576, 28.186218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585688, 33.535343, 28.120529>,  <29.724823, 33.343803, 28.081116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585688, 33.535343, 28.120529>,  <29.353794, 33.854576, 28.186218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585688, 33.535343, 28.120529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225608, 0.036445, -0.973536,
		0.782950, 0.601441, -0.158926,
		0.579733, -0.798085, -0.164225,
		29.759607, 33.295918, 28.071262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507841, 34.497242, 27.839888>,  <29.353794, 33.854576, 28.186218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507841, 34.497242, 27.839888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318754, 34.833252, 27.733381>,  <29.205303, 35.034859, 27.669477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318754, 34.833252, 27.733381>,  <29.507841, 34.497242, 27.839888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318754, 34.833252, 27.733381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405254, 0.475541, 0.780788,
		0.782502, 0.261185, -0.565219,
		-0.472715, 0.840026, -0.266265,
		29.176939, 35.085258, 27.653502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018698, 34.978359, 27.737570>,  <29.507841, 34.497242, 27.839888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018698, 34.978359, 27.737570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708944, 35.226608, 27.786806>,  <29.523092, 35.375557, 27.816349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708944, 35.226608, 27.786806>,  <30.018698, 34.978359, 27.737570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708944, 35.226608, 27.786806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336017, 0.238552, 0.911145,
		0.536117, 0.746937, -0.393272,
		-0.774384, 0.620627, 0.123092,
		29.476629, 35.412796, 27.823734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194914, 35.642223, 28.078718>,  <30.018698, 34.978359, 27.737570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194914, 35.642223, 28.078718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.800125, 35.664089, 28.139250>,  <29.563251, 35.677208, 28.175570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.800125, 35.664089, 28.139250>,  <30.194914, 35.642223, 28.078718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800125, 35.664089, 28.139250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158628, 0.488074, 0.858266,
		-0.026946, 0.871089, -0.490386,
		-0.986971, 0.054662, 0.151330,
		29.504034, 35.680489, 28.184649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149763, 36.287960, 28.286070>,  <30.194914, 35.642223, 28.078718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149763, 36.287960, 28.286070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.813343, 36.097157, 28.388130>,  <29.611492, 35.982674, 28.449366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.813343, 36.097157, 28.388130>,  <30.149763, 36.287960, 28.286070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813343, 36.097157, 28.388130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034586, 0.423283, 0.905337,
		-0.539852, 0.770258, -0.339504,
		-0.841049, -0.477006, 0.255151,
		29.561028, 35.954056, 28.464676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644806, 36.860508, 28.452250>,  <30.149763, 36.287960, 28.286070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644806, 36.860508, 28.452250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.515749, 36.527679, 28.632719>,  <29.438314, 36.327984, 28.741001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.515749, 36.527679, 28.632719>,  <29.644806, 36.860508, 28.452250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515749, 36.527679, 28.632719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143378, 0.514130, 0.845644,
		-0.935598, 0.208153, -0.285181,
		-0.322644, -0.832071, 0.451174,
		29.418957, 36.278057, 28.768072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139046, 37.114639, 28.839989>,  <29.644806, 36.860508, 28.452250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139046, 37.114639, 28.839989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219013, 36.754963, 28.995674>,  <29.266993, 36.539158, 29.089085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219013, 36.754963, 28.995674>,  <29.139046, 37.114639, 28.839989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219013, 36.754963, 28.995674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078077, 0.381350, 0.921128,
		-0.976697, -0.214538, 0.006032,
		0.199917, -0.899191, 0.389214,
		29.278988, 36.485207, 29.112438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644939, 36.978916, 29.436182>,  <29.139046, 37.114639, 28.839989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644939, 36.978916, 29.436182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.947472, 36.730259, 29.517698>,  <29.128990, 36.581066, 29.566608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.947472, 36.730259, 29.517698>,  <28.644939, 36.978916, 29.436182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947472, 36.730259, 29.517698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107613, 0.425494, 0.898540,
		-0.645279, -0.657662, 0.388710,
		0.756329, -0.621640, 0.203789,
		29.174370, 36.543766, 29.578835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450285, 36.732010, 30.082525>,  <28.644939, 36.978916, 29.436182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450285, 36.732010, 30.082525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841463, 36.656071, 30.047695>,  <29.076170, 36.610508, 30.026798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841463, 36.656071, 30.047695>,  <28.450285, 36.732010, 30.082525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841463, 36.656071, 30.047695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155282, 0.382055, 0.911000,
		-0.139686, -0.904429, 0.403109,
		0.977945, -0.189849, -0.087074,
		29.134846, 36.599117, 30.021572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679655, 36.396233, 30.747177>,  <28.450285, 36.732010, 30.082525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679655, 36.396233, 30.747177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012413, 36.531296, 30.571022>,  <29.212067, 36.612335, 30.465330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012413, 36.531296, 30.571022>,  <28.679655, 36.396233, 30.747177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012413, 36.531296, 30.571022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268857, 0.448991, 0.852129,
		0.485456, -0.827282, 0.282731,
		0.831895, 0.337657, -0.440386,
		29.261982, 36.632591, 30.438906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163656, 36.088753, 31.058229>,  <28.679655, 36.396233, 30.747177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163656, 36.088753, 31.058229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.308281, 36.427628, 30.902512>,  <29.395056, 36.630951, 30.809082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.308281, 36.427628, 30.902512>,  <29.163656, 36.088753, 31.058229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308281, 36.427628, 30.902512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348508, 0.264469, 0.899221,
		0.864764, -0.460794, -0.199629,
		0.361560, 0.847186, -0.389294,
		29.416750, 36.681782, 30.785723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852224, 36.129078, 31.227507>,  <29.163656, 36.088753, 31.058229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852224, 36.129078, 31.227507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.778145, 36.504845, 31.112127>,  <29.733696, 36.730305, 31.042900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.778145, 36.504845, 31.112127>,  <29.852224, 36.129078, 31.227507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778145, 36.504845, 31.112127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343392, 0.336889, 0.876691,
		0.920751, 0.063312, -0.384979,
		-0.185200, 0.939413, -0.288451,
		29.722586, 36.786667, 31.025593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450563, 36.541332, 31.293665>,  <29.852224, 36.129078, 31.227507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450563, 36.541332, 31.293665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150997, 36.805779, 31.311815>,  <29.971258, 36.964447, 31.322706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150997, 36.805779, 31.311815>,  <30.450563, 36.541332, 31.293665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150997, 36.805779, 31.311815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367957, 0.357921, 0.858196,
		0.551122, 0.659412, -0.511312,
		-0.748914, 0.661112, 0.045377,
		29.926323, 37.004112, 31.325428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740007, 37.188553, 31.324903>,  <30.450563, 36.541332, 31.293665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740007, 37.188553, 31.324903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376602, 37.264999, 31.473537>,  <30.158560, 37.310867, 31.562717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376602, 37.264999, 31.473537>,  <30.740007, 37.188553, 31.324903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376602, 37.264999, 31.473537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417583, 0.447390, 0.790864,
		-0.015094, 0.873679, -0.486268,
		-0.908513, 0.191120, 0.371586,
		30.104048, 37.322334, 31.585012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734510, 37.842102, 31.521624>,  <30.740007, 37.188553, 31.324903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734510, 37.842102, 31.521624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414991, 37.709286, 31.722292>,  <30.223280, 37.629597, 31.842693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414991, 37.709286, 31.722292>,  <30.734510, 37.842102, 31.521624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414991, 37.709286, 31.722292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313178, 0.482486, 0.818002,
		-0.513656, 0.810530, -0.281421,
		-0.798797, -0.332037, 0.501672,
		30.175352, 37.609676, 31.872793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553888, 37.807491, 30.780972>,  <30.734510, 37.842102, 31.521624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553888, 37.807491, 30.780972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765793, 38.114281, 30.925804>,  <30.892935, 38.298355, 31.012703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765793, 38.114281, 30.925804>,  <30.553888, 37.807491, 30.780972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765793, 38.114281, 30.925804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030902, 0.444078, -0.895455,
		-0.847585, 0.463187, 0.258956,
		0.529759, 0.766977, 0.362080,
		30.924721, 38.344372, 31.034428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273602, 38.339325, 30.443396>,  <30.553888, 37.807491, 30.780972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273602, 38.339325, 30.443396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636934, 38.440540, 30.576603>,  <30.854935, 38.501270, 30.656528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636934, 38.440540, 30.576603>,  <30.273602, 38.339325, 30.443396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636934, 38.440540, 30.576603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244637, 0.324386, -0.913743,
		-0.339242, 0.911451, 0.232746,
		0.908332, 0.253042, 0.333020,
		30.909433, 38.516453, 30.676508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398094, 39.027927, 30.268404>,  <30.273602, 38.339325, 30.443396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398094, 39.027927, 30.268404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716396, 38.786407, 30.287149>,  <30.907377, 38.641495, 30.298397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.716396, 38.786407, 30.287149>,  <30.398094, 39.027927, 30.268404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716396, 38.786407, 30.287149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227766, 0.226680, -0.946963,
		0.561155, 0.764225, 0.317907,
		0.795756, -0.603802, 0.046862,
		30.955124, 38.605267, 30.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817392, 39.291744, 29.805405>,  <30.398094, 39.027927, 30.268404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817392, 39.291744, 29.805405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965818, 38.925137, 29.865147>,  <31.054874, 38.705173, 29.900991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965818, 38.925137, 29.865147>,  <30.817392, 39.291744, 29.805405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965818, 38.925137, 29.865147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360783, -0.005911, -0.932631,
		0.855656, 0.399951, 0.328471,
		0.371065, -0.916518, 0.149353,
		31.077137, 38.650181, 29.909952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460260, 39.285480, 29.590073>,  <30.817392, 39.291744, 29.805405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460260, 39.285480, 29.590073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372648, 38.899433, 29.532694>,  <31.320080, 38.667805, 29.498266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372648, 38.899433, 29.532694>,  <31.460260, 39.285480, 29.590073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372648, 38.899433, 29.532694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304453, 0.072077, -0.949796,
		0.927002, -0.251709, 0.278045,
		-0.219032, -0.965115, -0.143449,
		31.306938, 38.609898, 29.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891867, 39.052223, 29.057457>,  <31.460260, 39.285480, 29.590073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891867, 39.052223, 29.057457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623919, 38.755230, 29.057882>,  <31.463150, 38.577034, 29.058138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623919, 38.755230, 29.057882>,  <31.891867, 39.052223, 29.057457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623919, 38.755230, 29.057882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153851, -0.140205, -0.978096,
		0.726365, -0.655033, 0.208150,
		-0.669869, -0.742479, 0.001062,
		31.422958, 38.532486, 29.058201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098839, 38.384651, 28.844263>,  <31.891867, 39.052223, 29.057457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098839, 38.384651, 28.844263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711946, 38.385666, 28.742710>,  <31.479811, 38.386276, 28.681778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711946, 38.385666, 28.742710>,  <32.098839, 38.384651, 28.844263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711946, 38.385666, 28.742710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246713, -0.226746, -0.942188,
		-0.059960, -0.973951, 0.218690,
		-0.967232, 0.002540, -0.253882,
		31.421778, 38.386429, 28.666546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035873, 37.895283, 28.326658>,  <32.098839, 38.384651, 28.844263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035873, 37.895283, 28.326658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693659, 38.100140, 28.296259>,  <31.488331, 38.223053, 28.278019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693659, 38.100140, 28.296259>,  <32.035873, 37.895283, 28.326658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693659, 38.100140, 28.296259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018632, -0.116234, -0.993047,
		-0.517413, -0.851001, 0.089900,
		-0.855533, 0.512140, -0.075997,
		31.436998, 38.253780, 28.273460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577557, 37.515049, 27.899473>,  <32.035873, 37.895283, 28.326658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577557, 37.515049, 27.899473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383255, 37.863522, 27.870941>,  <31.266674, 38.072605, 27.853823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383255, 37.863522, 27.870941>,  <31.577557, 37.515049, 27.899473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383255, 37.863522, 27.870941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278505, -0.231607, -0.932091,
		-0.828540, -0.432900, 0.355132,
		-0.485753, 0.871181, -0.071331,
		31.237530, 38.124874, 27.849543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024443, 37.193199, 27.588400>,  <31.577557, 37.515049, 27.899473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024443, 37.193199, 27.588400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976015, 37.587395, 27.540813>,  <30.946959, 37.823914, 27.512262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976015, 37.587395, 27.540813>,  <31.024443, 37.193199, 27.588400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976015, 37.587395, 27.540813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397068, -0.157921, -0.904101,
		-0.909769, -0.062220, 0.410425,
		-0.121068, 0.985490, -0.118966,
		30.939695, 37.883041, 27.505123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367378, 37.284801, 27.311499>,  <31.024443, 37.193199, 27.588400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367378, 37.284801, 27.311499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.572237, 37.609055, 27.197956>,  <30.695152, 37.803608, 27.129829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.572237, 37.609055, 27.197956>,  <30.367378, 37.284801, 27.311499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572237, 37.609055, 27.197956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273337, -0.159480, -0.948606,
		-0.814244, 0.563414, 0.139899,
		0.512146, 0.810636, -0.283858,
		30.725882, 37.852245, 27.112799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819494, 37.738770, 26.897657>,  <30.367378, 37.284801, 27.311499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819494, 37.738770, 26.897657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.209000, 37.776691, 26.814909>,  <30.442703, 37.799442, 26.765259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.209000, 37.776691, 26.814909>,  <29.819494, 37.738770, 26.897657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209000, 37.776691, 26.814909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160443, -0.358657, -0.919578,
		-0.161373, 0.928643, -0.334038,
		0.973764, 0.094801, -0.206872,
		30.501129, 37.805130, 26.752848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788008, 37.899170, 26.273212>,  <29.819494, 37.738770, 26.897657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788008, 37.899170, 26.273212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186670, 37.866760, 26.277506>,  <30.425867, 37.847313, 26.280083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.186670, 37.866760, 26.277506>,  <29.788008, 37.899170, 26.273212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186670, 37.866760, 26.277506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017435, -0.339087, -0.940593,
		0.079852, 0.937259, -0.339366,
		0.996654, -0.081025, 0.010735,
		30.485666, 37.842453, 26.280725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031694, 38.129246, 25.564672>,  <29.788008, 37.899170, 26.273212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031694, 38.129246, 25.564672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321011, 37.895016, 25.711073>,  <30.494600, 37.754478, 25.798912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321011, 37.895016, 25.711073>,  <30.031694, 38.129246, 25.564672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321011, 37.895016, 25.711073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237767, -0.286422, -0.928132,
		0.648319, 0.758332, -0.067937,
		0.723291, -0.585572, 0.365999,
		30.537998, 37.719345, 25.820873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606825, 38.195972, 25.080040>,  <30.031694, 38.129246, 25.564672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606825, 38.195972, 25.080040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671141, 37.850895, 25.271832>,  <30.709730, 37.643848, 25.386906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671141, 37.850895, 25.271832>,  <30.606825, 38.195972, 25.080040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671141, 37.850895, 25.271832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156495, -0.457368, -0.875399,
		0.974503, 0.215792, 0.061467,
		0.160791, -0.862698, 0.479477,
		30.719378, 37.592087, 25.415674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242285, 37.921612, 24.930569>,  <30.606825, 38.195972, 25.080040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242285, 37.921612, 24.930569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010698, 37.606091, 25.013117>,  <30.871746, 37.416779, 25.062645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010698, 37.606091, 25.013117>,  <31.242285, 37.921612, 24.930569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010698, 37.606091, 25.013117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257476, -0.417027, -0.871662,
		0.773632, -0.451527, 0.444542,
		-0.578965, -0.788804, 0.206368,
		30.837009, 37.369450, 25.075027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637156, 37.392941, 24.617331>,  <31.242285, 37.921612, 24.930569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637156, 37.392941, 24.617331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294207, 37.193222, 24.667326>,  <31.088438, 37.073391, 24.697323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294207, 37.193222, 24.667326>,  <31.637156, 37.392941, 24.617331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294207, 37.193222, 24.667326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158952, -0.487819, -0.858351,
		0.489539, -0.716058, 0.497606,
		-0.857371, -0.499292, 0.124987,
		31.036995, 37.043434, 24.704823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780630, 36.631065, 24.559267>,  <31.637156, 37.392941, 24.617331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780630, 36.631065, 24.559267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402437, 36.703533, 24.451015>,  <31.175522, 36.747013, 24.386065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402437, 36.703533, 24.451015>,  <31.780630, 36.631065, 24.559267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402437, 36.703533, 24.451015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167956, -0.440699, -0.881802,
		-0.279025, -0.879182, 0.386244,
		-0.945482, 0.181173, -0.270630,
		31.118793, 36.757885, 24.369827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671122, 36.074799, 24.079611>,  <31.780630, 36.631065, 24.559267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671122, 36.074799, 24.079611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354042, 36.306187, 24.002668>,  <31.163795, 36.445019, 23.956503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354042, 36.306187, 24.002668>,  <31.671122, 36.074799, 24.079611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354042, 36.306187, 24.002668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028718, -0.350620, -0.936077,
		-0.608940, -0.736501, 0.294548,
		-0.792696, 0.578474, -0.192356,
		31.116234, 36.479729, 23.944962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185965, 35.703495, 23.659430>,  <31.671122, 36.074799, 24.079611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185965, 35.703495, 23.659430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075569, 36.083191, 23.599068>,  <31.009331, 36.311008, 23.562851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075569, 36.083191, 23.599068>,  <31.185965, 35.703495, 23.659430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075569, 36.083191, 23.599068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234183, -0.218683, -0.947278,
		-0.932195, -0.226099, 0.282650,
		-0.275990, 0.949240, -0.150907,
		30.992773, 36.367962, 23.553795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478775, 35.719074, 23.428829>,  <31.185965, 35.703495, 23.659430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478775, 35.719074, 23.428829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.630962, 36.063786, 23.294617>,  <30.722275, 36.270611, 23.214088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.630962, 36.063786, 23.294617>,  <30.478775, 35.719074, 23.428829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630962, 36.063786, 23.294617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206332, -0.274569, -0.939169,
		-0.901482, 0.426556, 0.073347,
		0.380470, 0.861778, -0.335532,
		30.745104, 36.322319, 23.193956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970123, 36.002148, 22.971878>,  <30.478775, 35.719074, 23.428829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970123, 36.002148, 22.971878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319355, 36.173077, 22.877960>,  <30.528894, 36.275635, 22.821609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319355, 36.173077, 22.877960>,  <29.970123, 36.002148, 22.971878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319355, 36.173077, 22.877960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217802, -0.089027, -0.971924,
		-0.436224, 0.899707, 0.015343,
		0.873081, 0.427319, -0.234794,
		30.581280, 36.301273, 22.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742682, 36.289261, 22.365944>,  <29.970123, 36.002148, 22.971878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742682, 36.289261, 22.365944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.140488, 36.330231, 22.357506>,  <30.379171, 36.354813, 22.352444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.140488, 36.330231, 22.357506>,  <29.742682, 36.289261, 22.365944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140488, 36.330231, 22.357506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001570, -0.187076, -0.982344,
		-0.104564, 0.976991, -0.185890,
		0.994517, 0.102426, -0.021096,
		30.438843, 36.360958, 22.351177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894007, 36.818211, 21.811819>,  <29.742682, 36.289261, 22.365944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894007, 36.818211, 21.811819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229855, 36.603104, 21.842400>,  <30.431362, 36.474037, 21.860748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229855, 36.603104, 21.842400>,  <29.894007, 36.818211, 21.811819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229855, 36.603104, 21.842400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060273, -0.047636, -0.997045,
		0.539823, 0.841744, -0.007583,
		0.839618, -0.537770, 0.076450,
		30.481739, 36.441772, 21.865335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414186, 37.040016, 21.374985>,  <29.894007, 36.818211, 21.811819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414186, 37.040016, 21.374985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524763, 36.660999, 21.439171>,  <30.591108, 36.433590, 21.477682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524763, 36.660999, 21.439171>,  <30.414186, 37.040016, 21.374985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524763, 36.660999, 21.439171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080650, -0.143510, -0.986357,
		0.957641, 0.285611, 0.036747,
		0.276441, -0.947540, 0.160466,
		30.607695, 36.376736, 21.487310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100733, 36.849041, 20.898321>,  <30.414186, 37.040016, 21.374985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100733, 36.849041, 20.898321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974047, 36.483433, 20.999716>,  <30.898035, 36.264069, 21.060553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974047, 36.483433, 20.999716>,  <31.100733, 36.849041, 20.898321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974047, 36.483433, 20.999716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170524, -0.317759, -0.932711,
		0.933067, -0.252177, 0.256501,
		-0.316714, -0.914022, 0.253488,
		30.879032, 36.209225, 21.075762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607069, 36.248207, 20.561749>,  <31.100733, 36.849041, 20.898321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607069, 36.248207, 20.561749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.271025, 36.056953, 20.664200>,  <31.069397, 35.942204, 20.725670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.271025, 36.056953, 20.664200>,  <31.607069, 36.248207, 20.561749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271025, 36.056953, 20.664200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115986, -0.619633, -0.776274,
		0.529867, -0.622449, 0.576018,
		-0.840112, -0.478132, 0.256128,
		31.018991, 35.913513, 20.741037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734964, 35.637283, 20.348001>,  <31.607069, 36.248207, 20.561749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734964, 35.637283, 20.348001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339188, 35.598228, 20.390842>,  <31.101721, 35.574795, 20.416548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339188, 35.598228, 20.390842>,  <31.734964, 35.637283, 20.348001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339188, 35.598228, 20.390842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013138, -0.675530, -0.737215,
		0.144331, -0.730839, 0.667115,
		-0.989442, -0.097639, 0.107102,
		31.042355, 35.568935, 20.422974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639963, 34.998852, 20.752583>,  <31.734964, 35.637283, 20.348001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639963, 34.998852, 20.752583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926908, 34.723705, 20.796818>,  <32.099075, 34.558617, 20.823359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926908, 34.723705, 20.796818>,  <31.639963, 34.998852, 20.752583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926908, 34.723705, 20.796818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028115, 0.187182, 0.981923,
		-0.696133, -0.701285, 0.153617,
		0.717362, -0.687868, 0.110587,
		32.142117, 34.517345, 20.829994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430056, 34.532166, 21.393763>,  <31.639963, 34.998852, 20.752583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430056, 34.532166, 21.393763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.826263, 34.509689, 21.343626>,  <32.063988, 34.496204, 21.313543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.826263, 34.509689, 21.343626>,  <31.430056, 34.532166, 21.393763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826263, 34.509689, 21.343626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134159, 0.199810, 0.970607,
		-0.029497, -0.978222, 0.205455,
		0.990521, -0.056193, -0.125343,
		32.123421, 34.492832, 21.306023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669910, 34.087486, 21.945179>,  <31.430056, 34.532166, 21.393763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669910, 34.087486, 21.945179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977690, 34.312260, 21.823736>,  <32.162357, 34.447124, 21.750872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977690, 34.312260, 21.823736>,  <31.669910, 34.087486, 21.945179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977690, 34.312260, 21.823736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281829, 0.127857, 0.950907,
		0.573168, -0.817239, -0.059991,
		0.769449, 0.561937, -0.303605,
		32.208523, 34.480839, 21.732655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373386, 33.832993, 22.269939>,  <31.669910, 34.087486, 21.945179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373386, 33.832993, 22.269939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473278, 34.200928, 22.148916>,  <32.533215, 34.421688, 22.076303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473278, 34.200928, 22.148916>,  <32.373386, 33.832993, 22.269939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473278, 34.200928, 22.148916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393909, 0.188931, 0.899523,
		0.884574, -0.343817, -0.315149,
		0.249730, 0.919834, -0.302556,
		32.548199, 34.476879, 22.058149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988277, 34.025227, 22.610008>,  <32.373386, 33.832993, 22.269939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988277, 34.025227, 22.610008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869175, 34.385208, 22.482622>,  <32.797714, 34.601196, 22.406191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869175, 34.385208, 22.482622>,  <32.988277, 34.025227, 22.610008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869175, 34.385208, 22.482622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301560, 0.405186, 0.863068,
		0.905760, 0.160950, -0.392038,
		-0.297759, 0.899955, -0.318465,
		32.779846, 34.655193, 22.387083>
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
