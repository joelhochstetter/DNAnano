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
	<24.541887, 34.521080, 35.127407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289865, 34.763367, 34.933029>,  <24.138653, 34.908737, 34.816402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289865, 34.763367, 34.933029>,  <24.541887, 34.521080, 35.127407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289865, 34.763367, 34.933029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089365, 0.565059, 0.820196,
		0.771393, 0.560194, -0.301888,
		-0.630053, 0.605715, -0.485945,
		24.100849, 34.945080, 34.787247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671944, 35.287167, 35.006924>,  <24.541887, 34.521080, 35.127407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671944, 35.287167, 35.006924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275936, 35.233875, 35.025311>,  <24.038332, 35.201900, 35.036343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275936, 35.233875, 35.025311>,  <24.671944, 35.287167, 35.006924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275936, 35.233875, 35.025311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000837, 0.320626, 0.947205,
		-0.140932, 0.937790, -0.317314,
		-0.990019, -0.133225, 0.045972,
		23.978930, 35.193909, 35.039101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934896, 35.521862, 34.393761>,  <24.671944, 35.287167, 35.006924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934896, 35.521862, 34.393761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723810, 35.861443, 34.405094>,  <24.597158, 36.065189, 34.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723810, 35.861443, 34.405094>,  <24.934896, 35.521862, 34.393761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723810, 35.861443, 34.405094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782008, 0.498586, -0.374000,
		-0.331635, -0.175206, -0.926996,
		-0.527714, 0.848949, 0.028336,
		24.565496, 36.116127, 34.413593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091524, 35.983353, 33.808228>,  <24.934896, 35.521862, 34.393761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091524, 35.983353, 33.808228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874300, 36.237476, 34.027851>,  <24.743965, 36.389950, 34.159626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874300, 36.237476, 34.027851>,  <25.091524, 35.983353, 33.808228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874300, 36.237476, 34.027851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609872, 0.747882, -0.262161,
		-0.577185, 0.192487, -0.793603,
		-0.543059, 0.635312, 0.549059,
		24.711382, 36.428070, 34.192570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729467, 36.660896, 33.391220>,  <25.091524, 35.983353, 33.808228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729467, 36.660896, 33.391220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870369, 36.705605, 33.762901>,  <24.954910, 36.732430, 33.985912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870369, 36.705605, 33.762901>,  <24.729467, 36.660896, 33.391220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870369, 36.705605, 33.762901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480402, 0.830474, -0.282006,
		-0.803201, 0.545730, 0.238844,
		0.352253, 0.111766, 0.929207,
		24.976046, 36.739136, 34.041664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563946, 37.311493, 33.782101>,  <24.729467, 36.660896, 33.391220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563946, 37.311493, 33.782101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924015, 37.152382, 33.853046>,  <25.140057, 37.056915, 33.895615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924015, 37.152382, 33.853046>,  <24.563946, 37.311493, 33.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924015, 37.152382, 33.853046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434409, 0.790872, -0.431057,
		0.031194, 0.465074, 0.884722,
		0.900176, -0.397777, 0.177362,
		25.194067, 37.033051, 33.906254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932400, 37.884811, 34.067581>,  <24.563946, 37.311493, 33.782101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932400, 37.884811, 34.067581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148712, 37.598289, 33.891190>,  <25.278500, 37.426376, 33.785355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148712, 37.598289, 33.891190>,  <24.932400, 37.884811, 34.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148712, 37.598289, 33.891190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406212, 0.681452, -0.608782,
		0.736580, 0.150086, 0.659488,
		0.540779, -0.716308, -0.440977,
		25.310946, 37.383396, 33.758896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703491, 38.174637, 34.000023>,  <24.932400, 37.884811, 34.067581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703491, 38.174637, 34.000023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693468, 37.874611, 33.735664>,  <25.687454, 37.694595, 33.577049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693468, 37.874611, 33.735664>,  <25.703491, 38.174637, 34.000023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693468, 37.874611, 33.735664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588756, 0.523213, -0.616129,
		0.807922, -0.404544, 0.428493,
		-0.025058, -0.750062, -0.660893,
		25.685951, 37.649593, 33.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365030, 38.137295, 33.643387>,  <25.703491, 38.174637, 34.000023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365030, 38.137295, 33.643387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126772, 37.936348, 33.392681>,  <25.983816, 37.815781, 33.242256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126772, 37.936348, 33.392681>,  <26.365030, 38.137295, 33.643387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126772, 37.936348, 33.392681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554970, 0.306718, -0.773261,
		0.580701, -0.808425, 0.096104,
		-0.595647, -0.502368, -0.626763,
		25.948078, 37.785637, 33.204651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829241, 37.980476, 33.184536>,  <26.365030, 38.137295, 33.643387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829241, 37.980476, 33.184536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488646, 37.916393, 32.984818>,  <26.284288, 37.877945, 32.864986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488646, 37.916393, 32.984818>,  <26.829241, 37.980476, 33.184536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488646, 37.916393, 32.984818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465636, 0.206871, -0.860458,
		0.241139, -0.965163, -0.101552,
		-0.851490, -0.160204, -0.499299,
		26.233198, 37.868332, 32.835026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930315, 37.550163, 32.603649>,  <26.829241, 37.980476, 33.184536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930315, 37.550163, 32.603649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591295, 37.745888, 32.521450>,  <26.387882, 37.863323, 32.472130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591295, 37.745888, 32.521450>,  <26.930315, 37.550163, 32.603649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591295, 37.745888, 32.521450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302219, 0.126692, -0.944782,
		-0.436259, -0.862857, -0.255258,
		-0.847550, 0.489313, -0.205502,
		26.337030, 37.892681, 32.459801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720583, 37.306576, 32.033318>,  <26.930315, 37.550163, 32.603649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720583, 37.306576, 32.033318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543285, 37.665134, 32.032391>,  <26.436907, 37.880268, 32.031834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543285, 37.665134, 32.032391>,  <26.720583, 37.306576, 32.033318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543285, 37.665134, 32.032391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247030, 0.119664, -0.961591,
		-0.861690, -0.426793, -0.274478,
		-0.443245, 0.896398, -0.002317,
		26.410313, 37.934055, 32.031696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817856, 37.534950, 31.399368>,  <26.720583, 37.306576, 32.033318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817856, 37.534950, 31.399368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636316, 37.869419, 31.522554>,  <26.527391, 38.070099, 31.596466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636316, 37.869419, 31.522554>,  <26.817856, 37.534950, 31.399368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636316, 37.869419, 31.522554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379646, 0.494123, -0.782120,
		-0.806156, -0.238047, -0.541706,
		-0.453851, 0.836167, 0.307967,
		26.500160, 38.120270, 31.614944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543257, 37.876404, 30.751553>,  <26.817856, 37.534950, 31.399368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543257, 37.876404, 30.751553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623419, 38.150852, 31.031290>,  <26.671516, 38.315521, 31.199133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623419, 38.150852, 31.031290>,  <26.543257, 37.876404, 30.751553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623419, 38.150852, 31.031290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566539, 0.501212, -0.654079,
		-0.799294, 0.527286, -0.288267,
		0.200404, 0.686117, 0.699344,
		26.683540, 38.356686, 31.241093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536652, 38.542606, 30.381332>,  <26.543257, 37.876404, 30.751553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536652, 38.542606, 30.381332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742571, 38.575157, 30.722708>,  <26.866123, 38.594688, 30.927534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742571, 38.575157, 30.722708>,  <26.536652, 38.542606, 30.381332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742571, 38.575157, 30.722708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767200, 0.400539, -0.500972,
		-0.382603, 0.912659, 0.143765,
		0.514800, 0.081377, 0.853440,
		26.897011, 38.599571, 30.978739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639828, 39.307800, 30.454063>,  <26.536652, 38.542606, 30.381332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639828, 39.307800, 30.454063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919870, 39.086372, 30.634466>,  <27.087896, 38.953514, 30.742708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919870, 39.086372, 30.634466>,  <26.639828, 39.307800, 30.454063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919870, 39.086372, 30.634466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709432, 0.610888, -0.351457,
		-0.080956, 0.566015, 0.820410,
		0.700108, -0.553573, 0.451005,
		27.129904, 38.920300, 30.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069611, 39.825199, 30.572659>,  <26.639828, 39.307800, 30.454063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069611, 39.825199, 30.572659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290590, 39.494110, 30.612017>,  <27.423178, 39.295456, 30.635632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290590, 39.494110, 30.612017>,  <27.069611, 39.825199, 30.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290590, 39.494110, 30.612017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799914, 0.493259, -0.341808,
		0.234387, 0.267538, 0.934605,
		0.552449, -0.827719, 0.098394,
		27.456326, 39.245796, 30.641535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732655, 40.100208, 30.748549>,  <27.069611, 39.825199, 30.572659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732655, 40.100208, 30.748549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830305, 39.726639, 30.644102>,  <27.888895, 39.502495, 30.581434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830305, 39.726639, 30.644102>,  <27.732655, 40.100208, 30.748549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830305, 39.726639, 30.644102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845954, 0.336738, -0.413486,
		0.474093, -0.119948, 0.872266,
		0.244128, -0.933927, -0.261115,
		27.903543, 39.446461, 30.565767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409662, 39.960945, 30.919037>,  <27.732655, 40.100208, 30.748549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409662, 39.960945, 30.919037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346216, 39.680325, 30.641140>,  <28.308149, 39.511951, 30.474401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346216, 39.680325, 30.641140>,  <28.409662, 39.960945, 30.919037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346216, 39.680325, 30.641140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678457, 0.433765, -0.592911,
		0.717312, -0.565399, 0.407169,
		-0.158616, -0.701549, -0.694744,
		28.298632, 39.469860, 30.432716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074654, 39.836479, 30.770266>,  <28.409662, 39.960945, 30.919037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074654, 39.836479, 30.770266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855165, 39.713608, 30.459255>,  <28.723473, 39.639885, 30.272648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855165, 39.713608, 30.459255>,  <29.074654, 39.836479, 30.770266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855165, 39.713608, 30.459255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785319, 0.129527, -0.605390,
		0.286673, -0.942796, 0.170158,
		-0.548719, -0.307178, -0.777528,
		28.690550, 39.621456, 30.225996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395309, 39.221096, 30.378565>,  <29.074654, 39.836479, 30.770266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395309, 39.221096, 30.378565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152885, 39.405708, 30.119434>,  <29.007431, 39.516476, 29.963957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152885, 39.405708, 30.119434>,  <29.395309, 39.221096, 30.378565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152885, 39.405708, 30.119434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759535, 0.093927, -0.643649,
		-0.236217, -0.882137, -0.407476,
		-0.606060, 0.461532, -0.647827,
		28.971067, 39.544167, 29.925087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585493, 38.877056, 29.693378>,  <29.395309, 39.221096, 30.378565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585493, 38.877056, 29.693378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423710, 39.238056, 29.634180>,  <29.326641, 39.454659, 29.598661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423710, 39.238056, 29.634180>,  <29.585493, 38.877056, 29.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423710, 39.238056, 29.634180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663541, 0.178214, -0.726603,
		-0.629387, -0.392081, -0.670928,
		-0.404457, 0.902503, -0.147996,
		29.302372, 39.508808, 29.589781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602411, 39.005497, 28.954945>,  <29.585493, 38.877056, 29.693378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602411, 39.005497, 28.954945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512215, 39.367760, 29.098576>,  <29.458097, 39.585117, 29.184753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512215, 39.367760, 29.098576>,  <29.602411, 39.005497, 28.954945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512215, 39.367760, 29.098576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553100, 0.422417, -0.718083,
		-0.802019, 0.036685, -0.596171,
		-0.225490, 0.905659, 0.359078,
		29.444567, 39.639458, 29.206299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446943, 39.399178, 28.409573>,  <29.602411, 39.005497, 28.954945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446943, 39.399178, 28.409573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565369, 39.641323, 28.705109>,  <29.636423, 39.786610, 28.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565369, 39.641323, 28.705109>,  <29.446943, 39.399178, 28.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565369, 39.641323, 28.705109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594330, 0.488788, -0.638638,
		-0.747743, 0.628192, -0.215072,
		0.296063, 0.605360, 0.738841,
		29.654188, 39.822929, 28.926762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779881, 39.871132, 28.004364>,  <29.446943, 39.399178, 28.409573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779881, 39.871132, 28.004364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904110, 39.961384, 28.373716>,  <29.978647, 40.015533, 28.595327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904110, 39.961384, 28.373716>,  <29.779881, 39.871132, 28.004364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904110, 39.961384, 28.373716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860720, 0.345470, -0.373913,
		-0.403367, 0.910902, -0.086909,
		0.310574, 0.225629, 0.923383,
		29.997282, 40.029072, 28.650732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777012, 40.610878, 28.081936>,  <29.779881, 39.871132, 28.004364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777012, 40.610878, 28.081936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060066, 40.418854, 28.289318>,  <30.229898, 40.303638, 28.413748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060066, 40.418854, 28.289318>,  <29.777012, 40.610878, 28.081936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060066, 40.418854, 28.289318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701934, 0.393618, -0.593594,
		0.080885, 0.783970, 0.615507,
		0.707634, -0.480058, 0.518457,
		30.272356, 40.274837, 28.444855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458111, 41.184601, 28.139551>,  <29.777012, 40.610878, 28.081936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458111, 41.184601, 28.139551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498669, 40.786690, 28.134756>,  <30.523005, 40.547943, 28.131880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498669, 40.786690, 28.134756>,  <30.458111, 41.184601, 28.139551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498669, 40.786690, 28.134756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684141, 0.078470, -0.725116,
		0.722267, 0.065325, 0.688522,
		0.101396, -0.994774, -0.011985,
		30.529087, 40.488258, 28.131161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171452, 41.486740, 27.982121>,  <30.458111, 41.184601, 28.139551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171452, 41.486740, 27.982121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262436, 41.772781, 27.717730>,  <31.317026, 41.944405, 27.559095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262436, 41.772781, 27.717730>,  <31.171452, 41.486740, 27.982121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262436, 41.772781, 27.717730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590286, -0.438591, -0.677642,
		-0.774483, 0.544301, 0.322354,
		0.227460, 0.715104, -0.660975,
		31.330673, 41.987312, 27.519438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672386, 40.873539, 28.310442>,  <31.171452, 41.486740, 27.982121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672386, 40.873539, 28.310442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669676, 40.946369, 28.703747>,  <31.668049, 40.990067, 28.939730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669676, 40.946369, 28.703747>,  <31.672386, 40.873539, 28.310442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669676, 40.946369, 28.703747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542757, -0.825173, 0.156538,
		0.839863, 0.534733, -0.093229,
		-0.006776, 0.182071, 0.983262,
		31.667643, 41.000992, 28.998726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314041, 40.683075, 28.646418>,  <31.672386, 40.873539, 28.310442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314041, 40.683075, 28.646418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077866, 40.649044, 28.967451>,  <31.936161, 40.628624, 29.160072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077866, 40.649044, 28.967451>,  <32.314041, 40.683075, 28.646418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077866, 40.649044, 28.967451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427929, -0.876140, 0.221936,
		0.684294, 0.474489, 0.553716,
		-0.590439, -0.085082, 0.802585,
		31.900734, 40.623520, 29.208227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662731, 40.552650, 29.200081>,  <32.314041, 40.683075, 28.646418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662731, 40.552650, 29.200081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298584, 40.396736, 29.255638>,  <32.080093, 40.303188, 29.288973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298584, 40.396736, 29.255638>,  <32.662731, 40.552650, 29.200081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298584, 40.396736, 29.255638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410350, -0.893629, 0.181770,
		0.053268, 0.222473, 0.973482,
		-0.910371, -0.389786, 0.138894,
		32.025475, 40.279800, 29.297306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422848, 40.146519, 29.736223>,  <32.662731, 40.552650, 29.200081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422848, 40.146519, 29.736223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393002, 40.390892, 30.051485>,  <32.375095, 40.537518, 30.240643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393002, 40.390892, 30.051485>,  <32.422848, 40.146519, 29.736223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393002, 40.390892, 30.051485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098567, -0.781970, 0.615473,
		0.992329, 0.123610, -0.001872,
		-0.074615, 0.610936, 0.788156,
		32.370617, 40.574173, 30.287931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911865, 40.124641, 30.413403>,  <32.422848, 40.146519, 29.736223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911865, 40.124641, 30.413403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582096, 40.273445, 30.584019>,  <32.384235, 40.362728, 30.686388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582096, 40.273445, 30.584019>,  <32.911865, 40.124641, 30.413403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582096, 40.273445, 30.584019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023057, -0.775093, 0.631426,
		0.565504, 0.510727, 0.647582,
		-0.824423, 0.372005, 0.426543,
		32.334770, 40.385048, 30.711981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574368, 40.468189, 30.451746>,  <32.911865, 40.124641, 30.413403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574368, 40.468189, 30.451746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802090, 40.572460, 30.763628>,  <33.938721, 40.635021, 30.950758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802090, 40.572460, 30.763628>,  <33.574368, 40.468189, 30.451746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802090, 40.572460, 30.763628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724278, -0.289714, 0.625690,
		0.388993, -0.920931, 0.023866,
		0.569303, 0.260674, 0.779707,
		33.972881, 40.650661, 30.997540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580925, 39.858940, 30.908848>,  <33.574368, 40.468189, 30.451746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580925, 39.858940, 30.908848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606514, 40.211246, 31.096533>,  <33.621868, 40.422630, 31.209145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606514, 40.211246, 31.096533>,  <33.580925, 39.858940, 30.908848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606514, 40.211246, 31.096533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762302, -0.260312, 0.592565,
		0.644052, -0.395591, 0.654755,
		0.063973, 0.880764, 0.469214,
		33.625706, 40.475475, 31.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756237, 39.786842, 31.579693>,  <33.580925, 39.858940, 30.908848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756237, 39.786842, 31.579693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518486, 40.104137, 31.526789>,  <33.375835, 40.294514, 31.495047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518486, 40.104137, 31.526789>,  <33.756237, 39.786842, 31.579693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518486, 40.104137, 31.526789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572197, -0.301588, 0.762650,
		0.565074, 0.528981, 0.633144,
		-0.594376, 0.793236, -0.132262,
		33.340172, 40.342110, 31.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681084, 40.019306, 32.165878>,  <33.756237, 39.786842, 31.579693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681084, 40.019306, 32.165878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353622, 40.125835, 31.962355>,  <33.157146, 40.189754, 31.840240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353622, 40.125835, 31.962355>,  <33.681084, 40.019306, 32.165878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353622, 40.125835, 31.962355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572488, -0.308250, 0.759762,
		0.045502, 0.913266, 0.404816,
		-0.818649, 0.266323, -0.508808,
		33.108028, 40.205730, 31.809711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199112, 40.239902, 32.723755>,  <33.681084, 40.019306, 32.165878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199112, 40.239902, 32.723755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938656, 40.195824, 32.423389>,  <32.782383, 40.169376, 32.243172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938656, 40.195824, 32.423389>,  <33.199112, 40.239902, 32.723755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938656, 40.195824, 32.423389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714621, -0.244194, 0.655504,
		-0.255603, 0.963445, 0.080256,
		-0.651140, -0.110197, -0.750915,
		32.743313, 40.162766, 32.198116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615292, 40.520817, 33.015499>,  <33.199112, 40.239902, 32.723755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615292, 40.520817, 33.015499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465691, 40.335247, 32.694279>,  <32.375931, 40.223904, 32.501545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465691, 40.335247, 32.694279>,  <32.615292, 40.520817, 33.015499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465691, 40.335247, 32.694279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808726, -0.260707, 0.527252,
		-0.453967, 0.846643, -0.277684,
		-0.374000, -0.463925, -0.803055,
		32.353489, 40.196068, 32.453362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918301, 40.506580, 33.087082>,  <32.615292, 40.520817, 33.015499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918301, 40.506580, 33.087082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956379, 40.212589, 32.818531>,  <31.979225, 40.036194, 32.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956379, 40.212589, 32.818531>,  <31.918301, 40.506580, 33.087082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956379, 40.212589, 32.818531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860494, -0.399846, 0.315711,
		-0.500488, 0.547663, -0.670505,
		0.095195, -0.734975, -0.671379,
		31.984938, 39.992096, 32.617119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289270, 40.378048, 32.730122>,  <31.918301, 40.506580, 33.087082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289270, 40.378048, 32.730122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480467, 40.041271, 32.629997>,  <31.595184, 39.839207, 32.569923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480467, 40.041271, 32.629997>,  <31.289270, 40.378048, 32.730122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480467, 40.041271, 32.629997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855346, -0.510978, 0.085354,
		-0.199768, 0.173307, -0.964395,
		0.477992, -0.841942, -0.250314,
		31.623865, 39.788689, 32.554905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758232, 40.002136, 32.339916>,  <31.289270, 40.378048, 32.730122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758232, 40.002136, 32.339916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012323, 39.715942, 32.456242>,  <31.164778, 39.544228, 32.526035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012323, 39.715942, 32.456242>,  <30.758232, 40.002136, 32.339916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012323, 39.715942, 32.456242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771490, -0.605352, 0.195838,
		0.035927, -0.348761, -0.936523,
		0.635226, -0.715482, 0.290814,
		31.202890, 39.501297, 32.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563667, 39.363712, 31.945917>,  <30.758232, 40.002136, 32.339916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563667, 39.363712, 31.945917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780598, 39.234184, 32.256020>,  <30.910755, 39.156467, 32.442081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780598, 39.234184, 32.256020>,  <30.563667, 39.363712, 31.945917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780598, 39.234184, 32.256020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679915, -0.711218, 0.178562,
		0.493555, -0.623948, -0.605881,
		0.542327, -0.323818, 0.775257,
		30.943296, 39.137039, 32.488598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557945, 38.600697, 31.803213>,  <30.563667, 39.363712, 31.945917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557945, 38.600697, 31.803213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612297, 38.700928, 32.186619>,  <30.644907, 38.761066, 32.416660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612297, 38.700928, 32.186619>,  <30.557945, 38.600697, 31.803213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612297, 38.700928, 32.186619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643269, -0.713498, 0.277714,
		0.753487, -0.654317, 0.064241,
		0.135877, 0.250579, 0.958513,
		30.653061, 38.776100, 32.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458057, 37.963028, 32.123981>,  <30.557945, 38.600697, 31.803213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458057, 37.963028, 32.123981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453840, 38.231525, 32.420444>,  <30.451311, 38.392624, 32.598324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453840, 38.231525, 32.420444>,  <30.458057, 37.963028, 32.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453840, 38.231525, 32.420444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614649, -0.588992, 0.524686,
		0.788730, -0.450024, 0.418787,
		-0.010541, 0.671243, 0.741162,
		30.450678, 38.432899, 32.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516766, 37.549023, 32.767017>,  <30.458057, 37.963028, 32.123981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516766, 37.549023, 32.767017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392639, 37.896534, 32.921383>,  <30.318163, 38.105042, 33.014004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392639, 37.896534, 32.921383>,  <30.516766, 37.549023, 32.767017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392639, 37.896534, 32.921383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644882, -0.490644, 0.585999,
		0.698449, -0.067025, 0.712514,
		-0.310314, 0.868778, 0.385913,
		30.299545, 38.157169, 33.037155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657587, 37.430710, 33.419971>,  <30.516766, 37.549023, 32.767017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657587, 37.430710, 33.419971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367491, 37.697845, 33.353016>,  <30.193432, 37.858128, 33.312843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367491, 37.697845, 33.353016>,  <30.657587, 37.430710, 33.419971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367491, 37.697845, 33.353016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643517, -0.571092, 0.509647,
		0.244767, 0.477335, 0.843943,
		-0.725242, 0.667836, -0.167389,
		30.149918, 37.898197, 33.302799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341921, 37.414410, 34.038712>,  <30.657587, 37.430710, 33.419971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341921, 37.414410, 34.038712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083717, 37.572369, 33.777218>,  <29.928795, 37.667145, 33.620319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083717, 37.572369, 33.777218>,  <30.341921, 37.414410, 34.038712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083717, 37.572369, 33.777218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755807, -0.453437, 0.472387,
		-0.109884, 0.799030, 0.591165,
		-0.645508, 0.394900, -0.653738,
		29.890064, 37.690838, 33.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817343, 37.684822, 34.494976>,  <30.341921, 37.414410, 34.038712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817343, 37.684822, 34.494976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647894, 37.647713, 34.134544>,  <29.546225, 37.625446, 33.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647894, 37.647713, 34.134544>,  <29.817343, 37.684822, 34.494976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647894, 37.647713, 34.134544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860123, -0.270828, 0.432252,
		-0.284137, 0.958147, 0.034935,
		-0.423622, -0.092771, -0.901076,
		29.520807, 37.619881, 33.864220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055138, 37.934711, 34.538631>,  <29.817343, 37.684822, 34.494976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055138, 37.934711, 34.538631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068785, 37.684834, 34.226582>,  <29.076973, 37.534908, 34.039352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068785, 37.684834, 34.226582>,  <29.055138, 37.934711, 34.538631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068785, 37.684834, 34.226582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812412, -0.471963, 0.342400,
		-0.582085, 0.622103, -0.523608,
		0.034116, -0.624691, -0.780126,
		29.079020, 37.497425, 33.992542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345160, 37.949615, 34.337208>,  <29.055138, 37.934711, 34.538631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345160, 37.949615, 34.337208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479696, 37.607616, 34.179291>,  <28.560419, 37.402416, 34.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479696, 37.607616, 34.179291>,  <28.345160, 37.949615, 34.337208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479696, 37.607616, 34.179291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818897, -0.472550, 0.325737,
		-0.465057, 0.213723, -0.859095,
		0.336348, -0.854996, -0.394780,
		28.580599, 37.351120, 34.060852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756863, 37.601742, 33.934288>,  <28.345160, 37.949615, 34.337208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756863, 37.601742, 33.934288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018297, 37.301991, 33.976727>,  <28.175158, 37.122139, 34.002190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018297, 37.301991, 33.976727>,  <27.756863, 37.601742, 33.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018297, 37.301991, 33.976727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749115, -0.620523, 0.231900,
		-0.107944, -0.231046, -0.966936,
		0.653585, -0.749379, 0.106099,
		28.214373, 37.077175, 34.008556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524895, 36.987053, 33.540791>,  <27.756863, 37.601742, 33.934288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524895, 36.987053, 33.540791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734240, 36.869099, 33.860573>,  <27.859846, 36.798325, 34.052444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734240, 36.869099, 33.860573>,  <27.524895, 36.987053, 33.540791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734240, 36.869099, 33.860573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668282, -0.724133, 0.170385,
		0.528671, -0.623437, -0.576050,
		0.523361, -0.294886, 0.799460,
		27.891249, 36.780632, 34.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454731, 36.288982, 33.464630>,  <27.524895, 36.987053, 33.540791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454731, 36.288982, 33.464630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599798, 36.353512, 33.831768>,  <27.686838, 36.392231, 34.052052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599798, 36.353512, 33.831768>,  <27.454731, 36.288982, 33.464630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599798, 36.353512, 33.831768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503327, -0.794988, 0.338609,
		0.784305, -0.584781, -0.207118,
		0.362668, 0.161325, 0.917849,
		27.708599, 36.401909, 34.107124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836517, 35.689598, 33.700836>,  <27.454731, 36.288982, 33.464630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836517, 35.689598, 33.700836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709518, 35.890274, 34.022705>,  <27.633320, 36.010681, 34.215828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709518, 35.890274, 34.022705>,  <27.836517, 35.689598, 33.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709518, 35.890274, 34.022705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334381, -0.853304, 0.400078,
		0.887348, -0.142045, 0.438677,
		-0.317495, 0.501693, 0.804674,
		27.614269, 36.040783, 34.264107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904873, 35.236324, 34.254097>,  <27.836517, 35.689598, 33.700836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904873, 35.236324, 34.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661175, 35.507019, 34.419434>,  <27.514956, 35.669434, 34.518635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661175, 35.507019, 34.419434>,  <27.904873, 35.236324, 34.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661175, 35.507019, 34.419434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393766, -0.710624, 0.583063,
		0.688308, 0.192469, 0.699420,
		-0.609246, 0.676734, 0.413340,
		27.478401, 35.710041, 34.543434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905550, 35.013260, 34.902317>,  <27.904873, 35.236324, 34.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905550, 35.013260, 34.902317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576609, 35.237225, 34.861851>,  <27.379244, 35.371605, 34.837570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576609, 35.237225, 34.861851>,  <27.905550, 35.013260, 34.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576609, 35.237225, 34.861851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490812, -0.608132, 0.623922,
		0.287819, 0.562738, 0.774911,
		-0.822353, 0.559912, -0.101167,
		27.329903, 35.405197, 34.831501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531845, 35.243111, 35.572029>,  <27.905550, 35.013260, 34.902317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531845, 35.243111, 35.572029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289757, 35.164982, 35.263340>,  <27.144503, 35.118107, 35.078125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289757, 35.164982, 35.263340>,  <27.531845, 35.243111, 35.572029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289757, 35.164982, 35.263340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568318, -0.572810, 0.590680,
		-0.557422, 0.796077, 0.235674,
		-0.605223, -0.195320, -0.771722,
		27.108191, 35.106384, 35.031822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021406, 34.990246, 36.090927>,  <27.531845, 35.243111, 35.572029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021406, 34.990246, 36.090927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281294, 35.225716, 36.283310>,  <28.437227, 35.366997, 36.398739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281294, 35.225716, 36.283310>,  <28.021406, 34.990246, 36.090927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281294, 35.225716, 36.283310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603128, -0.784314, 0.145219,
		0.462712, 0.195729, -0.864632,
		0.649719, 0.588678, 0.480961,
		28.476210, 35.402321, 36.427597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636314, 34.634953, 36.069569>,  <28.021406, 34.990246, 36.090927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636314, 34.634953, 36.069569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759384, 34.887562, 36.354248>,  <28.833227, 35.039127, 36.525055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759384, 34.887562, 36.354248>,  <28.636314, 34.634953, 36.069569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759384, 34.887562, 36.354248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562889, -0.723861, 0.398977,
		0.767132, 0.277850, -0.578193,
		0.307676, 0.631526, 0.711695,
		28.851686, 35.077019, 36.567757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394789, 34.563572, 36.034714>,  <28.636314, 34.634953, 36.069569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394789, 34.563572, 36.034714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293074, 34.722431, 36.387444>,  <29.232044, 34.817745, 36.599083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293074, 34.722431, 36.387444>,  <29.394789, 34.563572, 36.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293074, 34.722431, 36.387444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684597, -0.570128, 0.454182,
		0.683128, 0.719187, -0.126907,
		-0.254288, 0.397145, 0.881824,
		29.216787, 34.841576, 36.651989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027576, 34.793205, 36.505054>,  <29.394789, 34.563572, 36.034714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027576, 34.793205, 36.505054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711781, 34.689323, 36.727501>,  <29.522303, 34.626995, 36.860970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711781, 34.689323, 36.727501>,  <30.027576, 34.793205, 36.505054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711781, 34.689323, 36.727501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587963, -0.579962, 0.563865,
		0.176089, 0.772139, 0.610569,
		-0.789488, -0.259702, 0.556114,
		29.474934, 34.611412, 36.894337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122398, 34.938519, 37.298306>,  <30.027576, 34.793205, 36.505054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122398, 34.938519, 37.298306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875216, 34.624077, 37.303581>,  <29.726906, 34.435413, 37.306747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875216, 34.624077, 37.303581>,  <30.122398, 34.938519, 37.298306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875216, 34.624077, 37.303581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491658, -0.373296, 0.786716,
		-0.613517, 0.492639, 0.617174,
		-0.617956, -0.786102, 0.013186,
		29.689829, 34.388245, 37.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871464, 34.791962, 37.943455>,  <30.122398, 34.938519, 37.298306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871464, 34.791962, 37.943455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909958, 34.410797, 37.828430>,  <29.933054, 34.182098, 37.759415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909958, 34.410797, 37.828430>,  <29.871464, 34.791962, 37.943455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909958, 34.410797, 37.828430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301767, -0.247372, 0.920730,
		-0.948512, -0.175381, 0.263753,
		0.096233, -0.952916, -0.287559,
		29.938828, 34.124924, 37.742161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641840, 34.435505, 38.529858>,  <29.871464, 34.791962, 37.943455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641840, 34.435505, 38.529858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882490, 34.193863, 38.320820>,  <30.026880, 34.048878, 38.195396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882490, 34.193863, 38.320820>,  <29.641840, 34.435505, 38.529858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882490, 34.193863, 38.320820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380142, -0.358862, 0.852473,
		-0.702525, -0.711526, 0.013747,
		0.601623, -0.604109, -0.522591,
		30.062977, 34.012630, 38.164043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581232, 33.683434, 38.706375>,  <29.641840, 34.435505, 38.529858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581232, 33.683434, 38.706375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942299, 33.758686, 38.551563>,  <30.158939, 33.803837, 38.458675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942299, 33.758686, 38.551563>,  <29.581232, 33.683434, 38.706375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942299, 33.758686, 38.551563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425773, -0.259839, 0.866719,
		0.062493, -0.947148, -0.314651,
		0.902669, 0.188134, -0.387032,
		30.213100, 33.815125, 38.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906963, 33.088314, 38.748245>,  <29.581232, 33.683434, 38.706375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906963, 33.088314, 38.748245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190226, 33.368526, 38.712971>,  <30.360182, 33.536655, 38.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190226, 33.368526, 38.712971>,  <29.906963, 33.088314, 38.748245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190226, 33.368526, 38.712971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465347, -0.369136, 0.804481,
		0.531009, -0.610735, -0.587394,
		0.708153, 0.700529, -0.088189,
		30.402672, 33.578686, 38.686516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520620, 32.717934, 38.726730>,  <29.906963, 33.088314, 38.748245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520620, 32.717934, 38.726730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661543, 33.079536, 38.823605>,  <30.746096, 33.296497, 38.881729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661543, 33.079536, 38.823605>,  <30.520620, 32.717934, 38.726730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661543, 33.079536, 38.823605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594129, -0.415982, 0.688454,
		0.723113, -0.098654, -0.683649,
		0.352304, 0.904005, 0.242189,
		30.767235, 33.350739, 38.896263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291454, 32.712227, 38.738991>,  <30.520620, 32.717934, 38.726730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291454, 32.712227, 38.738991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194857, 33.018406, 38.977577>,  <31.136898, 33.202114, 39.120728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194857, 33.018406, 38.977577>,  <31.291454, 32.712227, 38.738991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194857, 33.018406, 38.977577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599743, -0.365484, 0.711849,
		0.762882, 0.529633, -0.370810,
		-0.241494, 0.765448, 0.596465,
		31.122408, 33.248039, 39.156517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948275, 32.954430, 38.995960>,  <31.291454, 32.712227, 38.738991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948275, 32.954430, 38.995960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671041, 33.102226, 39.243546>,  <31.504702, 33.190903, 39.392097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671041, 33.102226, 39.243546>,  <31.948275, 32.954430, 38.995960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671041, 33.102226, 39.243546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615132, -0.144521, 0.775065,
		0.375832, 0.917927, -0.127121,
		-0.693082, 0.369491, 0.618962,
		31.463118, 33.213074, 39.429234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323502, 33.338871, 39.462708>,  <31.948275, 32.954430, 38.995960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323502, 33.338871, 39.462708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994434, 33.271820, 39.680008>,  <31.796995, 33.231590, 39.810390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994434, 33.271820, 39.680008>,  <32.323502, 33.338871, 39.462708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994434, 33.271820, 39.680008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561462, -0.089359, 0.822664,
		-0.089359, 0.981792, 0.167630,
		-0.822664, -0.167630, 0.543254,
		31.747635, 33.221531, 39.842983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324982, 33.759064, 40.113365>,  <32.323502, 33.338871, 39.462708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324982, 33.759064, 40.113365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077869, 33.456211, 40.198315>,  <31.929602, 33.274498, 40.249283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077869, 33.456211, 40.198315>,  <32.324982, 33.759064, 40.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077869, 33.456211, 40.198315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419288, -0.088683, 0.903511,
		-0.665242, 0.647217, 0.372242,
		-0.617779, -0.757130, 0.212374,
		31.892536, 33.229073, 40.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094273, 33.891788, 40.909992>,  <32.324982, 33.759064, 40.113365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094273, 33.891788, 40.909992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963242, 33.523113, 40.826870>,  <31.884623, 33.301910, 40.776997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963242, 33.523113, 40.826870>,  <32.094273, 33.891788, 40.909992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963242, 33.523113, 40.826870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235152, -0.292558, 0.926884,
		-0.915093, 0.254763, 0.312573,
		-0.327582, -0.921686, -0.207810,
		31.864967, 33.246609, 40.764526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916759, 33.679771, 41.528900>,  <32.094273, 33.891788, 40.909992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916759, 33.679771, 41.528900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871489, 33.332829, 41.335041>,  <31.844326, 33.124664, 41.218727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871489, 33.332829, 41.335041>,  <31.916759, 33.679771, 41.528900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871489, 33.332829, 41.335041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056282, -0.492594, 0.868437,
		-0.991979, 0.071012, 0.104568,
		-0.113179, -0.867357, -0.484647,
		31.837536, 33.072620, 41.189648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420023, 33.317677, 41.877121>,  <31.916759, 33.679771, 41.528900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420023, 33.317677, 41.877121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632338, 33.045883, 41.674507>,  <31.759726, 32.882809, 41.552940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632338, 33.045883, 41.674507>,  <31.420023, 33.317677, 41.877121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632338, 33.045883, 41.674507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160618, -0.506191, 0.847332,
		-0.832147, -0.531109, -0.159541,
		0.530785, -0.679480, -0.506532,
		31.791573, 32.842037, 41.522549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258307, 32.635841, 42.109390>,  <31.420023, 33.317677, 41.877121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258307, 32.635841, 42.109390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630333, 32.623055, 41.962994>,  <31.853550, 32.615383, 41.875156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630333, 32.623055, 41.962994>,  <31.258307, 32.635841, 42.109390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630333, 32.623055, 41.962994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338108, -0.315258, 0.886733,
		-0.143725, -0.948468, -0.282404,
		0.930068, -0.031963, -0.365995,
		31.909353, 32.613464, 41.853195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575670, 31.978344, 42.322090>,  <31.258307, 32.635841, 42.109390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575670, 31.978344, 42.322090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863890, 32.247543, 42.255295>,  <32.036823, 32.409061, 42.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863890, 32.247543, 42.255295>,  <31.575670, 31.978344, 42.322090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863890, 32.247543, 42.255295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489812, -0.323547, 0.809569,
		0.490809, -0.665126, -0.562773,
		0.720549, 0.672997, -0.166986,
		32.080055, 32.449444, 42.205200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312317, 31.598284, 42.308090>,  <31.575670, 31.978344, 42.322090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312317, 31.598284, 42.308090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335560, 31.986277, 42.402542>,  <32.349506, 32.219074, 42.459213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335560, 31.986277, 42.402542>,  <32.312317, 31.598284, 42.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335560, 31.986277, 42.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477245, -0.234743, 0.846837,
		0.876847, 0.063484, -0.476560,
		0.058109, 0.969982, 0.236131,
		32.352993, 32.277271, 42.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945801, 31.665989, 42.628979>,  <32.312317, 31.598284, 42.308090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945801, 31.665989, 42.628979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741573, 31.987675, 42.750671>,  <32.619038, 32.180687, 42.823689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741573, 31.987675, 42.750671>,  <32.945801, 31.665989, 42.628979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741573, 31.987675, 42.750671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308606, -0.158859, 0.937831,
		0.802546, 0.572717, -0.167076,
		-0.510570, 0.804213, 0.304236,
		32.588402, 32.228939, 42.841942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402908, 32.091812, 43.021595>,  <32.945801, 31.665989, 42.628979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402908, 32.091812, 43.021595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034065, 32.189301, 43.141804>,  <32.812759, 32.247795, 43.213928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034065, 32.189301, 43.141804>,  <33.402908, 32.091812, 43.021595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034065, 32.189301, 43.141804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275009, -0.133534, 0.952123,
		0.272185, 0.960608, 0.056106,
		-0.922109, 0.243724, 0.300522,
		32.757431, 32.262417, 43.231960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572823, 32.394245, 43.582569>,  <33.402908, 32.091812, 43.021595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572823, 32.394245, 43.582569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180264, 32.324341, 43.614349>,  <32.944729, 32.282398, 43.633419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180264, 32.324341, 43.614349>,  <33.572823, 32.394245, 43.582569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180264, 32.324341, 43.614349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118747, -0.227418, 0.966530,
		-0.150840, 0.957988, 0.243940,
		-0.981400, -0.174758, 0.079454,
		32.885845, 32.271912, 43.638187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348618, 32.803795, 44.188606>,  <33.572823, 32.394245, 43.582569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348618, 32.803795, 44.188606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067219, 32.523563, 44.140820>,  <32.898380, 32.355423, 44.112148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067219, 32.523563, 44.140820>,  <33.348618, 32.803795, 44.188606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067219, 32.523563, 44.140820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022686, -0.190144, 0.981494,
		-0.710333, 0.687770, 0.149660,
		-0.703500, -0.700583, -0.119463,
		32.856171, 32.313389, 44.104980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875523, 33.013775, 44.669910>,  <33.348618, 32.803795, 44.188606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875523, 33.013775, 44.669910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786400, 32.630100, 44.600269>,  <32.732925, 32.399895, 44.558483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786400, 32.630100, 44.600269>,  <32.875523, 33.013775, 44.669910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786400, 32.630100, 44.600269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035811, -0.170420, 0.984721,
		-0.974204, 0.225640, 0.003621,
		-0.222809, -0.959189, -0.174104,
		32.719559, 32.342342, 44.548038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355247, 32.894726, 45.122925>,  <32.875523, 33.013775, 44.669910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355247, 32.894726, 45.122925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471756, 32.521809, 45.037144>,  <32.541660, 32.298058, 44.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471756, 32.521809, 45.037144>,  <32.355247, 32.894726, 45.122925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471756, 32.521809, 45.037144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029521, -0.232823, 0.972071,
		-0.956185, -0.276806, -0.095337,
		0.291271, -0.932294, -0.214450,
		32.559139, 32.242119, 44.972809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876368, 32.409050, 45.368595>,  <32.355247, 32.894726, 45.122925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876368, 32.409050, 45.368595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218166, 32.203205, 45.340290>,  <32.423244, 32.079700, 45.323307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218166, 32.203205, 45.340290>,  <31.876368, 32.409050, 45.368595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218166, 32.203205, 45.340290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120677, -0.329166, 0.936529,
		-0.505242, -0.791723, -0.343374,
		0.854498, -0.514611, -0.070766,
		32.474518, 32.048820, 45.319061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749043, 31.755070, 45.572887>,  <31.876368, 32.409050, 45.368595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749043, 31.755070, 45.572887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147358, 31.764524, 45.608326>,  <32.386345, 31.770197, 45.629589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147358, 31.764524, 45.608326>,  <31.749043, 31.755070, 45.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147358, 31.764524, 45.608326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080825, -0.230136, 0.969796,
		0.043316, -0.972871, -0.227256,
		0.995786, 0.023640, 0.088600,
		32.446095, 31.771616, 45.634907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943087, 31.082630, 45.902851>,  <31.749043, 31.755070, 45.572887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943087, 31.082630, 45.902851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240044, 31.345007, 45.957394>,  <32.418217, 31.502432, 45.990120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240044, 31.345007, 45.957394>,  <31.943087, 31.082630, 45.902851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240044, 31.345007, 45.957394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114458, -0.324711, 0.938862,
		0.660114, -0.681399, -0.316141,
		0.742395, 0.655940, 0.136355,
		32.462761, 31.541788, 45.998299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439659, 30.712383, 46.356117>,  <31.943087, 31.082630, 45.902851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439659, 30.712383, 46.356117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588043, 31.081806, 46.394958>,  <32.677074, 31.303461, 46.418262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588043, 31.081806, 46.394958>,  <32.439659, 30.712383, 46.356117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588043, 31.081806, 46.394958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274702, -0.209012, 0.938537,
		0.887090, -0.321486, -0.331238,
		0.370959, 0.923559, 0.097100,
		32.699329, 31.358873, 46.424088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192810, 30.598656, 46.464561>,  <32.439659, 30.712383, 46.356117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192810, 30.598656, 46.464561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091782, 30.955107, 46.615345>,  <33.031166, 31.168978, 46.705814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091782, 30.955107, 46.615345>,  <33.192810, 30.598656, 46.464561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091782, 30.955107, 46.615345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434165, -0.243790, 0.867218,
		0.864701, 0.382697, -0.325323,
		-0.252571, 0.891128, 0.376959,
		33.016010, 31.222445, 46.728432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773209, 30.876724, 46.786522>,  <33.192810, 30.598656, 46.464561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773209, 30.876724, 46.786522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507099, 31.130619, 46.943760>,  <33.347435, 31.282955, 47.038105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507099, 31.130619, 46.943760>,  <33.773209, 30.876724, 46.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507099, 31.130619, 46.943760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409238, -0.130355, 0.903068,
		0.624452, 0.761654, -0.173037,
		-0.665269, 0.634736, 0.393099,
		33.307518, 31.321039, 47.061691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129280, 31.480091, 47.155842>,  <33.773209, 30.876724, 46.786522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129280, 31.480091, 47.155842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758850, 31.424807, 47.296295>,  <33.536594, 31.391636, 47.380566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758850, 31.424807, 47.296295>,  <34.129280, 31.480091, 47.155842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758850, 31.424807, 47.296295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367072, -0.114235, 0.923152,
		-0.087478, 0.983793, 0.156523,
		-0.926070, -0.138211, 0.351129,
		33.481030, 31.383343, 47.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220795, 31.772858, 47.882641>,  <34.129280, 31.480091, 47.155842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220795, 31.772858, 47.882641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907009, 31.525005, 47.872322>,  <33.718739, 31.376293, 47.866131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907009, 31.525005, 47.872322>,  <34.220795, 31.772858, 47.882641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907009, 31.525005, 47.872322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275357, -0.385280, 0.880760,
		-0.555688, 0.683823, 0.472860,
		-0.784468, -0.619633, -0.025800,
		33.671669, 31.339115, 47.864582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980381, 31.832119, 48.500172>,  <34.220795, 31.772858, 47.882641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980381, 31.832119, 48.500172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852921, 31.470686, 48.385628>,  <33.776443, 31.253826, 48.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852921, 31.470686, 48.385628>,  <33.980381, 31.832119, 48.500172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852921, 31.470686, 48.385628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272816, -0.376750, 0.885229,
		-0.907763, 0.203954, 0.366563,
		-0.318649, -0.903583, -0.286358,
		33.757324, 31.199612, 48.299721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471870, 31.611721, 48.965252>,  <33.980381, 31.832119, 48.500172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471870, 31.611721, 48.965252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592762, 31.265629, 48.805233>,  <33.665295, 31.057974, 48.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592762, 31.265629, 48.805233>,  <33.471870, 31.611721, 48.965252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592762, 31.265629, 48.805233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338510, -0.294901, 0.893557,
		-0.891107, -0.405474, 0.203763,
		0.302224, -0.865231, -0.400045,
		33.683430, 31.006060, 48.685219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311871, 31.198015, 49.522842>,  <33.471870, 31.611721, 48.965252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311871, 31.198015, 49.522842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560593, 30.985853, 49.292355>,  <33.709827, 30.858557, 49.154064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560593, 30.985853, 49.292355>,  <33.311871, 31.198015, 49.522842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560593, 30.985853, 49.292355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226406, -0.582593, 0.780593,
		-0.749729, -0.615839, -0.242175,
		0.621809, -0.530404, -0.576217,
		33.747135, 30.826733, 49.119488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210293, 30.530853, 49.751629>,  <33.311871, 31.198015, 49.522842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210293, 30.530853, 49.751629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566814, 30.536140, 49.570343>,  <33.780727, 30.539312, 49.461571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566814, 30.536140, 49.570343>,  <33.210293, 30.530853, 49.751629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566814, 30.536140, 49.570343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403274, -0.479987, 0.779091,
		-0.207238, -0.877176, -0.433145,
		0.891304, 0.013219, -0.453213,
		33.834206, 30.540106, 49.434380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343273, 29.836834, 49.802166>,  <33.210293, 30.530853, 49.751629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343273, 29.836834, 49.802166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686317, 30.025631, 49.720459>,  <33.892143, 30.138908, 49.671436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686317, 30.025631, 49.720459>,  <33.343273, 29.836834, 49.802166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686317, 30.025631, 49.720459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445241, -0.482588, 0.754234,
		0.257416, -0.737788, -0.624024,
		0.857612, 0.471992, -0.204268,
		33.943600, 30.167229, 49.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949894, 29.392550, 49.924850>,  <33.343273, 29.836834, 49.802166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949894, 29.392550, 49.924850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124332, 29.752439, 49.931961>,  <34.228996, 29.968374, 49.936226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124332, 29.752439, 49.931961>,  <33.949894, 29.392550, 49.924850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124332, 29.752439, 49.931961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672909, -0.339143, 0.657400,
		0.597508, -0.274727, -0.753332,
		0.436093, 0.899726, 0.017774,
		34.255161, 30.022358, 49.937294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704041, 29.236849, 49.947701>,  <33.949894, 29.392550, 49.924850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704041, 29.236849, 49.947701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659576, 29.616154, 50.066658>,  <34.632900, 29.843737, 50.138031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659576, 29.616154, 50.066658>,  <34.704041, 29.236849, 49.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659576, 29.616154, 50.066658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716389, -0.130944, 0.685303,
		0.688790, 0.289223, -0.664770,
		-0.111158, 0.948264, 0.297389,
		34.626228, 29.900633, 50.155876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430229, 29.429642, 50.012337>,  <34.704041, 29.236849, 49.947701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430229, 29.429642, 50.012337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189552, 29.668106, 50.224960>,  <35.045147, 29.811186, 50.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189552, 29.668106, 50.224960>,  <35.430229, 29.429642, 50.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189552, 29.668106, 50.224960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631547, -0.052328, 0.773570,
		0.488989, 0.801157, -0.345018,
		-0.601697, 0.596162, 0.531556,
		35.009045, 29.846954, 50.384426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932316, 29.732132, 50.346638>,  <35.430229, 29.429642, 50.012337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932316, 29.732132, 50.346638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595207, 29.786331, 50.555016>,  <35.392941, 29.818850, 50.680042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595207, 29.786331, 50.555016>,  <35.932316, 29.732132, 50.346638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595207, 29.786331, 50.555016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509382, -0.112047, 0.853215,
		0.173977, 0.984422, 0.025411,
		-0.842770, 0.135496, 0.520940,
		35.342377, 29.826981, 50.711296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994572, 30.198429, 51.016441>,  <35.932316, 29.732132, 50.346638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994572, 30.198429, 51.016441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639645, 30.027941, 51.086880>,  <35.426689, 29.925648, 51.129143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639645, 30.027941, 51.086880>,  <35.994572, 30.198429, 51.016441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639645, 30.027941, 51.086880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304104, -0.253710, 0.918233,
		-0.346692, 0.868313, 0.354736,
		-0.887314, -0.426220, 0.176098,
		35.373451, 29.900074, 51.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686115, 30.570757, 51.514240>,  <35.994572, 30.198429, 51.016441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686115, 30.570757, 51.514240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563190, 30.190250, 51.524437>,  <35.489437, 29.961946, 51.530556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563190, 30.190250, 51.524437>,  <35.686115, 30.570757, 51.514240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563190, 30.190250, 51.524437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457350, -0.124150, 0.880578,
		-0.834501, 0.282267, 0.473215,
		-0.307308, -0.951268, 0.025491,
		35.470997, 29.904869, 51.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410110, 30.508791, 52.200684>,  <35.686115, 30.570757, 51.514240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410110, 30.508791, 52.200684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496906, 30.142181, 52.066280>,  <35.548985, 29.922216, 51.985638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496906, 30.142181, 52.066280>,  <35.410110, 30.508791, 52.200684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496906, 30.142181, 52.066280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303696, -0.263744, 0.915537,
		-0.927730, -0.300710, 0.221113,
		0.216994, -0.916522, -0.336007,
		35.562004, 29.867226, 51.965477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268700, 30.048923, 52.745190>,  <35.410110, 30.508791, 52.200684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268700, 30.048923, 52.745190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536316, 29.879154, 52.501141>,  <35.696884, 29.777292, 52.354710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536316, 29.879154, 52.501141>,  <35.268700, 30.048923, 52.745190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536316, 29.879154, 52.501141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414491, -0.468327, 0.780299,
		-0.616914, -0.774943, -0.137411,
		0.669040, -0.424421, -0.610124,
		35.737026, 29.751827, 52.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261250, 29.314453, 52.834152>,  <35.268700, 30.048923, 52.745190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261250, 29.314453, 52.834152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625820, 29.452179, 52.744038>,  <35.844563, 29.534815, 52.689968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625820, 29.452179, 52.744038>,  <35.261250, 29.314453, 52.834152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625820, 29.452179, 52.744038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365731, -0.427014, 0.826982,
		0.188542, -0.836126, -0.515117,
		0.911424, 0.344315, -0.225288,
		35.899246, 29.555473, 52.676453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830456, 29.193649, 53.199600>,  <35.261250, 29.314453, 52.834152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830456, 29.193649, 53.199600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585854, 28.933146, 53.019855>,  <35.439091, 28.776844, 52.912010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585854, 28.933146, 53.019855>,  <35.830456, 29.193649, 53.199600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585854, 28.933146, 53.019855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723450, 0.230203, 0.650867,
		-0.320438, 0.723098, -0.611922,
		-0.611507, -0.651257, -0.449359,
		35.402401, 28.737768, 52.885048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292625, 29.186050, 53.730427>,  <35.830456, 29.193649, 53.199600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292625, 29.186050, 53.730427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974583, 29.362242, 53.563679>,  <34.783756, 29.467957, 53.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974583, 29.362242, 53.563679>,  <35.292625, 29.186050, 53.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974583, 29.362242, 53.563679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548710, 0.815252, -0.185151,
		0.258301, -0.375957, -0.889908,
		-0.795108, 0.440476, -0.416872,
		34.736050, 29.494385, 53.438618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751965, 28.642950, 53.921371>,  <35.292625, 29.186050, 53.730427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751965, 28.642950, 53.921371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803165, 28.724777, 54.309551>,  <34.833885, 28.773874, 54.542458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803165, 28.724777, 54.309551>,  <34.751965, 28.642950, 53.921371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803165, 28.724777, 54.309551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539137, -0.835642, 0.105041,
		0.832434, 0.509758, -0.217255,
		0.128002, 0.204570, 0.970447,
		34.841564, 28.786148, 54.600685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933559, 27.854916, 53.766624>,  <34.751965, 28.642950, 53.921371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933559, 27.854916, 53.766624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311153, 27.731745, 53.719162>,  <35.537708, 27.657843, 53.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311153, 27.731745, 53.719162>,  <34.933559, 27.854916, 53.766624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311153, 27.731745, 53.719162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329976, -0.876573, -0.350335,
		0.003864, 0.369865, -0.929078,
		0.943981, -0.307927, -0.118659,
		35.594349, 27.639366, 53.683563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098217, 27.637257, 53.034679>,  <34.933559, 27.854916, 53.766624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098217, 27.637257, 53.034679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291977, 27.442505, 53.325417>,  <35.408234, 27.325653, 53.499859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291977, 27.442505, 53.325417>,  <35.098217, 27.637257, 53.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291977, 27.442505, 53.325417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286423, -0.873297, -0.394099,
		0.826633, -0.017286, -0.562475,
		0.484396, -0.486881, 0.726847,
		35.437294, 27.296440, 53.543472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432415, 27.090385, 52.631237>,  <35.098217, 27.637257, 53.034679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432415, 27.090385, 52.631237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410084, 26.963694, 53.009987>,  <35.396683, 26.887678, 53.237236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410084, 26.963694, 53.009987>,  <35.432415, 27.090385, 52.631237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410084, 26.963694, 53.009987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221443, -0.920803, -0.321069,
		0.973574, -0.227603, -0.018729,
		-0.055831, -0.316731, 0.946871,
		35.393333, 26.868673, 53.294048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991718, 26.566729, 52.729782>,  <35.432415, 27.090385, 52.631237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991718, 26.566729, 52.729782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667065, 26.517570, 52.958221>,  <35.472271, 26.488075, 53.095284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667065, 26.517570, 52.958221>,  <35.991718, 26.566729, 52.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667065, 26.517570, 52.958221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230528, -0.830897, -0.506425,
		0.536757, -0.542685, 0.646054,
		-0.811634, -0.122893, 0.571094,
		35.423576, 26.480703, 53.129551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679585, 26.772718, 52.580040>,  <35.991718, 26.566729, 52.729782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679585, 26.772718, 52.580040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561779, 27.103167, 52.387882>,  <36.491096, 27.301435, 52.272587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561779, 27.103167, 52.387882>,  <36.679585, 26.772718, 52.580040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561779, 27.103167, 52.387882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352413, 0.373377, 0.858134,
		0.888294, 0.422032, 0.181171,
		-0.294516, 0.826122, -0.480398,
		36.473423, 27.351004, 52.243763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442497, 26.946419, 51.953106>,  <36.679585, 26.772718, 52.580040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442497, 26.946419, 51.953106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119068, 27.164839, 51.865429>,  <35.925011, 27.295891, 51.812824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119068, 27.164839, 51.865429>,  <36.442497, 26.946419, 51.953106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119068, 27.164839, 51.865429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147355, -0.172733, -0.973884,
		-0.569653, -0.819750, 0.059203,
		-0.808568, 0.546052, -0.219193,
		35.876499, 27.328653, 51.799671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891659, 26.592531, 51.686062>,  <36.442497, 26.946419, 51.953106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891659, 26.592531, 51.686062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882317, 26.966095, 51.543362>,  <35.876709, 27.190233, 51.457741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882317, 26.966095, 51.543362>,  <35.891659, 26.592531, 51.686062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882317, 26.966095, 51.543362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155070, -0.349141, -0.924150,
		-0.987627, -0.076909, -0.136665,
		-0.023360, 0.933909, -0.356747,
		35.875309, 27.246267, 51.436337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494568, 26.589857, 51.068611>,  <35.891659, 26.592531, 51.686062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494568, 26.589857, 51.068611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696526, 26.934063, 51.041512>,  <35.817699, 27.140587, 51.025249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696526, 26.934063, 51.041512>,  <35.494568, 26.589857, 51.068611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696526, 26.934063, 51.041512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112311, -0.143314, -0.983284,
		-0.855842, 0.488847, -0.169004,
		0.504897, 0.860517, -0.067752,
		35.847996, 27.192219, 51.021187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131046, 27.067379, 50.567097>,  <35.494568, 26.589857, 51.068611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131046, 27.067379, 50.567097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479546, 27.262342, 50.590282>,  <35.688644, 27.379320, 50.604195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479546, 27.262342, 50.590282>,  <35.131046, 27.067379, 50.567097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479546, 27.262342, 50.590282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029368, 0.169643, -0.985068,
		-0.489965, 0.856535, 0.162115,
		0.871247, 0.487410, 0.057965,
		35.740921, 27.408566, 50.607674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019638, 27.626047, 50.142307>,  <35.131046, 27.067379, 50.567097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019638, 27.626047, 50.142307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412003, 27.548433, 50.147415>,  <35.647423, 27.501865, 50.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412003, 27.548433, 50.147415>,  <35.019638, 27.626047, 50.142307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412003, 27.548433, 50.147415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045244, 0.163885, -0.985441,
		0.189118, 0.967208, 0.169536,
		0.980911, -0.194035, 0.012767,
		35.706276, 27.490223, 50.151245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344807, 28.127520, 49.644962>,  <35.019638, 27.626047, 50.142307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344807, 28.127520, 49.644962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630814, 27.854095, 49.703613>,  <35.802418, 27.690041, 49.738804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630814, 27.854095, 49.703613>,  <35.344807, 28.127520, 49.644962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630814, 27.854095, 49.703613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333015, 0.148600, -0.931138,
		0.614701, 0.714606, 0.333887,
		0.715013, -0.683561, 0.146631,
		35.845318, 27.649027, 49.747601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929951, 28.393669, 49.424179>,  <35.344807, 28.127520, 49.644962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929951, 28.393669, 49.424179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002796, 28.000389, 49.419193>,  <36.046505, 27.764421, 49.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002796, 28.000389, 49.419193>,  <35.929951, 28.393669, 49.424179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002796, 28.000389, 49.419193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300521, 0.067727, -0.951368,
		0.936227, 0.169513, 0.307805,
		0.182115, -0.983198, -0.012466,
		36.057430, 27.705429, 49.415455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600254, 28.333691, 49.122055>,  <35.929951, 28.393669, 49.424179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600254, 28.333691, 49.122055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420906, 27.977663, 49.089214>,  <36.313297, 27.764046, 49.069511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420906, 27.977663, 49.089214>,  <36.600254, 28.333691, 49.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420906, 27.977663, 49.089214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206918, -0.014003, -0.978258,
		0.869570, -0.455607, 0.190450,
		-0.448368, -0.890071, -0.082097,
		36.286396, 27.710642, 49.064587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921997, 28.073662, 48.624779>,  <36.600254, 28.333691, 49.122055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921997, 28.073662, 48.624779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603291, 27.832422, 48.639957>,  <36.412067, 27.687677, 48.649067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603291, 27.832422, 48.639957>,  <36.921997, 28.073662, 48.624779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603291, 27.832422, 48.639957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131843, -0.234783, -0.963065,
		0.589735, -0.762330, 0.266581,
		-0.796762, -0.603100, 0.037951,
		36.364262, 27.651493, 48.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174099, 27.420364, 48.436371>,  <36.921997, 28.073662, 48.624779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174099, 27.420364, 48.436371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781300, 27.460947, 48.372646>,  <36.545620, 27.485296, 48.334412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781300, 27.460947, 48.372646>,  <37.174099, 27.420364, 48.436371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781300, 27.460947, 48.372646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165581, 0.056651, -0.984568,
		-0.090869, -0.993225, -0.072431,
		-0.982001, 0.101460, -0.159311,
		36.486698, 27.491385, 48.324852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225666, 27.319862, 47.782887>,  <37.174099, 27.420364, 48.436371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225666, 27.319862, 47.782887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847683, 27.437414, 47.840424>,  <36.620892, 27.507946, 47.874947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847683, 27.437414, 47.840424>,  <37.225666, 27.319862, 47.782887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847683, 27.437414, 47.840424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027337, 0.367163, -0.929755,
		-0.326049, -0.882511, -0.338919,
		-0.944958, 0.293881, 0.143838,
		36.564198, 27.525578, 47.883575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733425, 27.090979, 47.223976>,  <37.225666, 27.319862, 47.782887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733425, 27.090979, 47.223976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583267, 27.437681, 47.355316>,  <36.493172, 27.645702, 47.434120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583267, 27.437681, 47.355316>,  <36.733425, 27.090979, 47.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583267, 27.437681, 47.355316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020875, 0.346264, -0.937905,
		-0.926632, -0.358935, -0.111890,
		-0.375390, 0.866757, 0.328351,
		36.470650, 27.697708, 47.453823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141640, 27.271967, 46.755081>,  <36.733425, 27.090979, 47.223976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141640, 27.271967, 46.755081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222084, 27.617075, 46.940632>,  <36.270351, 27.824141, 47.051964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222084, 27.617075, 46.940632>,  <36.141640, 27.271967, 46.755081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222084, 27.617075, 46.940632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174436, 0.434440, -0.883648,
		-0.963912, 0.258628, -0.063128,
		0.201111, 0.862771, 0.463876,
		36.282417, 27.875906, 47.079796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710926, 27.775669, 46.443634>,  <36.141640, 27.271967, 46.755081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710926, 27.775669, 46.443634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012810, 27.980728, 46.607395>,  <36.193939, 28.103764, 46.705650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012810, 27.980728, 46.607395>,  <35.710926, 27.775669, 46.443634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012810, 27.980728, 46.607395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136642, 0.487516, -0.862355,
		-0.641672, 0.706769, 0.297884,
		0.754709, 0.512646, 0.409400,
		36.239223, 28.134521, 46.730217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502937, 28.473045, 46.269253>,  <35.710926, 27.775669, 46.443634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502937, 28.473045, 46.269253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888653, 28.479721, 46.374985>,  <36.120083, 28.483727, 46.438423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888653, 28.479721, 46.374985>,  <35.502937, 28.473045, 46.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888653, 28.479721, 46.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188606, 0.657392, -0.729564,
		-0.185943, 0.753364, 0.630768,
		0.964289, 0.016691, 0.264326,
		36.177940, 28.484728, 46.454281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774151, 29.155098, 46.610474>,  <35.502937, 28.473045, 46.269253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774151, 29.155098, 46.610474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009895, 28.921736, 46.386940>,  <36.151340, 28.781719, 46.252819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009895, 28.921736, 46.386940>,  <35.774151, 29.155098, 46.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009895, 28.921736, 46.386940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135217, 0.610739, -0.780201,
		0.796474, 0.535384, 0.281059,
		0.589361, -0.583406, -0.558831,
		36.186703, 28.746714, 46.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072182, 29.636749, 46.151524>,  <35.774151, 29.155098, 46.610474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072182, 29.636749, 46.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167614, 29.300648, 45.956772>,  <36.224873, 29.098988, 45.839920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167614, 29.300648, 45.956772>,  <36.072182, 29.636749, 46.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167614, 29.300648, 45.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069248, 0.485361, -0.871567,
		0.968650, 0.241657, 0.057614,
		0.238584, -0.840254, -0.486880,
		36.239189, 29.048573, 45.810707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611683, 29.795280, 45.743767>,  <36.072182, 29.636749, 46.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611683, 29.795280, 45.743767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426994, 29.486629, 45.568764>,  <36.316181, 29.301439, 45.463764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426994, 29.486629, 45.568764>,  <36.611683, 29.795280, 45.743767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426994, 29.486629, 45.568764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011207, 0.488112, -0.872709,
		0.886956, -0.407848, -0.216722,
		-0.461717, -0.771626, -0.437505,
		36.288479, 29.255142, 45.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885204, 29.798357, 45.033291>,  <36.611683, 29.795280, 45.743767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885204, 29.798357, 45.033291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563370, 29.562332, 45.006538>,  <36.370270, 29.420717, 44.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563370, 29.562332, 45.006538>,  <36.885204, 29.798357, 45.033291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563370, 29.562332, 45.006538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174879, 0.343066, -0.922889,
		0.567507, -0.730844, -0.379214,
		-0.804583, -0.590062, -0.066883,
		36.321995, 29.385313, 44.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760765, 29.601665, 44.312412>,  <36.885204, 29.798357, 45.033291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760765, 29.601665, 44.312412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395805, 29.498667, 44.439671>,  <36.176830, 29.436867, 44.516026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395805, 29.498667, 44.439671>,  <36.760765, 29.601665, 44.312412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395805, 29.498667, 44.439671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363273, 0.151390, -0.919301,
		0.188567, -0.954342, -0.231675,
		-0.912401, -0.257511, 0.318140,
		36.122086, 29.421417, 44.535114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486103, 29.236029, 43.776096>,  <36.760765, 29.601665, 44.312412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486103, 29.236029, 43.776096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157902, 29.348291, 43.975296>,  <35.960979, 29.415649, 44.094818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157902, 29.348291, 43.975296>,  <36.486103, 29.236029, 43.776096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157902, 29.348291, 43.975296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426001, 0.280709, -0.860073,
		-0.381179, -0.917842, -0.110762,
		-0.820503, 0.280657, 0.498002,
		35.911751, 29.432487, 44.124695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965355, 28.993769, 43.321621>,  <36.486103, 29.236029, 43.776096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965355, 28.993769, 43.321621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803402, 29.258408, 43.574085>,  <35.706230, 29.417191, 43.725563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803402, 29.258408, 43.574085>,  <35.965355, 28.993769, 43.321621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803402, 29.258408, 43.574085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431430, 0.470372, -0.769817,
		-0.806188, -0.583984, 0.094989,
		-0.404881, 0.661599, 0.631156,
		35.681938, 29.456886, 43.763432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241478, 28.963800, 43.300770>,  <35.965355, 28.993769, 43.321621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241478, 28.963800, 43.300770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320297, 29.337292, 43.420319>,  <35.367588, 29.561386, 43.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320297, 29.337292, 43.420319>,  <35.241478, 28.963800, 43.300770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320297, 29.337292, 43.420319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441579, 0.356706, -0.823267,
		-0.875316, 0.030252, 0.482604,
		0.197053, 0.933727, 0.298872,
		35.379414, 29.617411, 43.509979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705223, 29.283564, 43.068581>,  <35.241478, 28.963800, 43.300770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705223, 29.283564, 43.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950268, 29.589033, 43.150074>,  <35.097294, 29.772314, 43.198971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950268, 29.589033, 43.150074>,  <34.705223, 29.283564, 43.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950268, 29.589033, 43.150074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297419, 0.461554, -0.835769,
		-0.732290, 0.451408, 0.509885,
		0.612612, 0.763675, 0.203735,
		35.134052, 29.818136, 43.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335293, 29.888426, 42.932884>,  <34.705223, 29.283564, 43.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335293, 29.888426, 42.932884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715622, 30.012318, 42.931835>,  <34.943821, 30.086653, 42.931206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715622, 30.012318, 42.931835>,  <34.335293, 29.888426, 42.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715622, 30.012318, 42.931835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206703, 0.628200, -0.750092,
		-0.230677, 0.713746, 0.661328,
		0.950822, 0.309728, -0.002622,
		35.000870, 30.105236, 42.931049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380417, 30.601944, 43.061214>,  <34.335293, 29.888426, 42.932884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380417, 30.601944, 43.061214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706245, 30.498396, 42.853573>,  <34.901741, 30.436268, 42.728989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706245, 30.498396, 42.853573>,  <34.380417, 30.601944, 43.061214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706245, 30.498396, 42.853573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204556, 0.709216, -0.674662,
		0.542804, 0.655744, 0.524752,
		0.814568, -0.258869, -0.519101,
		34.950615, 30.420734, 42.697842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418877, 31.139807, 42.695854>,  <34.380417, 30.601944, 43.061214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418877, 31.139807, 42.695854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690319, 30.910343, 42.512375>,  <34.853184, 30.772665, 42.402287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690319, 30.910343, 42.512375>,  <34.418877, 31.139807, 42.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690319, 30.910343, 42.512375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141656, 0.510567, -0.848089,
		0.720714, 0.640496, 0.265210,
		0.678605, -0.573661, -0.458703,
		34.893902, 30.738245, 42.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904766, 31.551527, 42.298080>,  <34.418877, 31.139807, 42.695854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904766, 31.551527, 42.298080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922546, 31.197748, 42.112270>,  <34.933216, 30.985481, 42.000786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922546, 31.197748, 42.112270>,  <34.904766, 31.551527, 42.298080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922546, 31.197748, 42.112270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149631, 0.453840, -0.878430,
		0.987742, 0.108557, -0.112165,
		0.044455, -0.884446, -0.464521,
		34.935883, 30.932415, 41.972916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323456, 31.644947, 41.698719>,  <34.904766, 31.551527, 42.298080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323456, 31.644947, 41.698719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143024, 31.303164, 41.595623>,  <35.034767, 31.098093, 41.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143024, 31.303164, 41.595623>,  <35.323456, 31.644947, 41.698719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143024, 31.303164, 41.595623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169991, 0.365753, -0.915056,
		0.876146, -0.368948, -0.310234,
		-0.451078, -0.854460, -0.257735,
		35.007702, 31.046825, 41.518303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682434, 31.347132, 41.000927>,  <35.323456, 31.644947, 41.698719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682434, 31.347132, 41.000927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308708, 31.214487, 41.053219>,  <35.084473, 31.134899, 41.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308708, 31.214487, 41.053219>,  <35.682434, 31.347132, 41.000927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308708, 31.214487, 41.053219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202317, 0.191413, -0.960432,
		0.293472, -0.923792, -0.245931,
		-0.934314, -0.331616, 0.130725,
		35.028416, 31.115004, 41.092438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538570, 30.778318, 40.513779>,  <35.682434, 31.347132, 41.000927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538570, 30.778318, 40.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174587, 30.913204, 40.610325>,  <34.956196, 30.994137, 40.668251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174587, 30.913204, 40.610325>,  <35.538570, 30.778318, 40.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174587, 30.913204, 40.610325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302098, -0.140325, -0.942892,
		-0.284092, -0.930910, 0.229563,
		-0.909961, 0.337218, 0.241361,
		34.901600, 31.014370, 40.682732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176754, 30.675760, 39.916962>,  <35.538570, 30.778318, 40.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176754, 30.675760, 39.916962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894646, 30.863266, 40.129696>,  <34.725380, 30.975769, 40.257336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894646, 30.863266, 40.129696>,  <35.176754, 30.675760, 39.916962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894646, 30.863266, 40.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517175, 0.172898, -0.838234,
		-0.484888, -0.866236, 0.120493,
		-0.705276, 0.468766, 0.531832,
		34.683064, 31.003895, 40.289246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573631, 30.379595, 39.640175>,  <35.176754, 30.675760, 39.916962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573631, 30.379595, 39.640175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542839, 30.740303, 39.810295>,  <34.524364, 30.956728, 39.912369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542839, 30.740303, 39.810295>,  <34.573631, 30.379595, 39.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542839, 30.740303, 39.810295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408820, 0.360513, -0.838390,
		-0.909362, -0.238414, 0.340908,
		-0.076982, 0.901770, 0.425305,
		34.519745, 31.010834, 39.937885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801346, 30.548828, 39.490570>,  <34.573631, 30.379595, 39.640175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801346, 30.548828, 39.490570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992165, 30.892229, 39.565838>,  <34.106655, 31.098269, 39.610996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992165, 30.892229, 39.565838>,  <33.801346, 30.548828, 39.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992165, 30.892229, 39.565838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295164, 0.358158, -0.885777,
		-0.827833, 0.367013, 0.424256,
		0.477043, 0.858501, 0.188166,
		34.135277, 31.149780, 39.622288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325214, 30.983557, 39.310810>,  <33.801346, 30.548828, 39.490570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325214, 30.983557, 39.310810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671150, 31.181149, 39.274963>,  <33.878712, 31.299704, 39.253456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671150, 31.181149, 39.274963>,  <33.325214, 30.983557, 39.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671150, 31.181149, 39.274963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290018, 0.345877, -0.892333,
		-0.409800, 0.797718, 0.442392,
		0.864843, 0.493980, -0.089612,
		33.930603, 31.329342, 39.248081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193039, 31.562481, 38.880905>,  <33.325214, 30.983557, 39.310810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193039, 31.562481, 38.880905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592690, 31.548954, 38.871014>,  <33.832478, 31.540838, 38.865078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592690, 31.548954, 38.871014>,  <33.193039, 31.562481, 38.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592690, 31.548954, 38.871014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009475, 0.392645, -0.919641,
		0.040810, 0.919068, 0.391980,
		0.999122, -0.033817, -0.024732,
		33.892426, 31.538809, 38.863594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415356, 32.162788, 38.454109>,  <33.193039, 31.562481, 38.880905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415356, 32.162788, 38.454109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732002, 31.918470, 38.447365>,  <33.921989, 31.771881, 38.443317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732002, 31.918470, 38.447365>,  <33.415356, 32.162788, 38.454109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732002, 31.918470, 38.447365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203469, 0.289518, -0.935297,
		0.576151, 0.736962, 0.353463,
		0.791612, -0.610791, -0.016857,
		33.969486, 31.735233, 38.442307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888672, 32.474892, 38.170738>,  <33.415356, 32.162788, 38.454109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888672, 32.474892, 38.170738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008091, 32.097271, 38.114697>,  <34.079742, 31.870697, 38.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008091, 32.097271, 38.114697>,  <33.888672, 32.474892, 38.170738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008091, 32.097271, 38.114697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198516, 0.205017, -0.958415,
		0.933522, 0.258316, 0.248616,
		0.298544, -0.944056, -0.140108,
		34.097652, 31.814054, 38.072662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456146, 32.507381, 37.729038>,  <33.888672, 32.474892, 38.170738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456146, 32.507381, 37.729038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366802, 32.119598, 37.688519>,  <34.313194, 31.886929, 37.664207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366802, 32.119598, 37.688519>,  <34.456146, 32.507381, 37.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366802, 32.119598, 37.688519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232332, 0.047975, -0.971453,
		0.946642, -0.240521, 0.214521,
		-0.223363, -0.969458, -0.101296,
		34.299793, 31.828762, 37.658131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948570, 32.303341, 37.210003>,  <34.456146, 32.507381, 37.729038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948570, 32.303341, 37.210003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630875, 32.061207, 37.231010>,  <34.440258, 31.915926, 37.243614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630875, 32.061207, 37.231010>,  <34.948570, 32.303341, 37.210003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630875, 32.061207, 37.231010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130952, 0.086135, -0.987640,
		0.593332, -0.791295, -0.147681,
		-0.794235, -0.605338, 0.052515,
		34.392605, 31.879606, 37.246765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365723, 31.855127, 36.832314>,  <34.948570, 32.303341, 37.210003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365723, 31.855127, 36.832314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613663, 31.582884, 36.676075>,  <35.762424, 31.419538, 36.582333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613663, 31.582884, 36.676075>,  <35.365723, 31.855127, 36.832314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613663, 31.582884, 36.676075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420515, -0.132154, 0.897609,
		-0.662538, -0.720631, 0.204291,
		0.619847, -0.680607, -0.390593,
		35.799618, 31.378702, 36.558899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330639, 31.238974, 37.246708>,  <35.365723, 31.855127, 36.832314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330639, 31.238974, 37.246708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686420, 31.247955, 37.064117>,  <35.899887, 31.253344, 36.954563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686420, 31.247955, 37.064117>,  <35.330639, 31.238974, 37.246708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686420, 31.247955, 37.064117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456784, -0.076480, 0.886284,
		-0.015009, -0.996818, -0.078282,
		0.889451, 0.022456, -0.456479,
		35.953255, 31.254692, 36.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770424, 30.698656, 37.488239>,  <35.330639, 31.238974, 37.246708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770424, 30.698656, 37.488239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026402, 30.969894, 37.343655>,  <36.179989, 31.132637, 37.256905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026402, 30.969894, 37.343655>,  <35.770424, 30.698656, 37.488239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026402, 30.969894, 37.343655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555911, -0.083789, 0.827008,
		0.530505, -0.730180, -0.430582,
		0.639943, 0.678097, -0.361465,
		36.218384, 31.173325, 37.235214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415081, 30.412910, 37.529385>,  <35.770424, 30.698656, 37.488239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415081, 30.412910, 37.529385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508972, 30.800119, 37.493977>,  <36.565308, 31.032446, 37.472733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508972, 30.800119, 37.493977>,  <36.415081, 30.412910, 37.529385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508972, 30.800119, 37.493977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532247, -0.051790, 0.845003,
		0.813399, -0.245454, -0.527384,
		0.234723, 0.968024, -0.088516,
		36.579388, 31.090527, 37.467422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111542, 30.360395, 37.749371>,  <36.415081, 30.412910, 37.529385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111542, 30.360395, 37.749371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986362, 30.740273, 37.744537>,  <36.911255, 30.968199, 37.741638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986362, 30.740273, 37.744537>,  <37.111542, 30.360395, 37.749371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986362, 30.740273, 37.744537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309571, 0.114022, 0.944016,
		0.897902, 0.291690, -0.329680,
		-0.312951, 0.949693, -0.012082,
		36.892479, 31.025181, 37.740913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619598, 30.917059, 37.969666>,  <37.111542, 30.360395, 37.749371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619598, 30.917059, 37.969666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273350, 31.093033, 38.065292>,  <37.065601, 31.198618, 38.122669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273350, 31.093033, 38.065292>,  <37.619598, 30.917059, 37.969666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273350, 31.093033, 38.065292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276846, 0.022705, 0.960646,
		0.417195, 0.897742, -0.141448,
		-0.865624, 0.439936, 0.239064,
		37.013664, 31.225014, 38.137012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816479, 31.544104, 38.247845>,  <37.619598, 30.917059, 37.969666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816479, 31.544104, 38.247845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 31.446833, 38.388641>,  <37.238007, 31.388470, 38.473118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 31.446833, 38.388641>,  <37.816479, 31.544104, 38.247845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454933, 31.446833, 38.388641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354542, 0.034697, 0.934396,
		-0.239435, 0.969361, 0.054854,
		-0.903864, -0.243175, 0.351987,
		37.183773, 31.373880, 38.494236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964222, 31.641714, 38.927803>,  <37.816479, 31.544104, 38.247845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964222, 31.641714, 38.927803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602821, 31.471933, 38.904026>,  <37.385983, 31.370066, 38.889759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602821, 31.471933, 38.904026>,  <37.964222, 31.641714, 38.927803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602821, 31.471933, 38.904026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046578, -0.235101, 0.970854,
		-0.426055, 0.874396, 0.232183,
		-0.903498, -0.424452, -0.059439,
		37.331772, 31.344599, 38.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507484, 32.000496, 39.565334>,  <37.964222, 31.641714, 38.927803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507484, 32.000496, 39.565334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373592, 31.643423, 39.444618>,  <37.293259, 31.429180, 39.372189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373592, 31.643423, 39.444618>,  <37.507484, 32.000496, 39.565334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373592, 31.643423, 39.444618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059208, -0.299705, 0.952193,
		-0.940453, 0.336593, 0.047465,
		-0.334727, -0.892683, -0.301788,
		37.273174, 31.375618, 39.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076374, 31.885313, 40.016220>,  <37.507484, 32.000496, 39.565334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076374, 31.885313, 40.016220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117840, 31.518568, 39.862015>,  <37.142719, 31.298521, 39.769493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117840, 31.518568, 39.862015>,  <37.076374, 31.885313, 40.016220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117840, 31.518568, 39.862015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022292, -0.389643, 0.920696,
		-0.994363, -0.086846, -0.060830,
		0.103661, -0.916862, -0.385511,
		37.148937, 31.243509, 39.746361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634876, 31.400499, 40.405815>,  <37.076374, 31.885313, 40.016220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634876, 31.400499, 40.405815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918331, 31.181871, 40.227337>,  <37.088406, 31.050694, 40.120251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918331, 31.181871, 40.227337>,  <36.634876, 31.400499, 40.405815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918331, 31.181871, 40.227337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065143, -0.579005, 0.812717,
		-0.702558, -0.604989, -0.374701,
		0.708639, -0.546572, -0.446195,
		37.130924, 31.017900, 40.093479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466881, 30.742361, 40.553295>,  <36.634876, 31.400499, 40.405815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466881, 30.742361, 40.553295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857010, 30.739077, 40.465038>,  <37.091087, 30.737106, 40.412086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857010, 30.739077, 40.465038>,  <36.466881, 30.742361, 40.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857010, 30.739077, 40.465038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170293, -0.608076, 0.775399,
		-0.140531, -0.793836, -0.591671,
		0.975321, -0.008210, -0.220639,
		37.149605, 30.736614, 40.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605450, 29.992775, 40.622707>,  <36.466881, 30.742361, 40.553295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605450, 29.992775, 40.622707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951664, 30.192886, 40.632195>,  <37.159393, 30.312954, 40.637886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951664, 30.192886, 40.632195>,  <36.605450, 29.992775, 40.622707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951664, 30.192886, 40.632195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291497, -0.541699, 0.788411,
		0.407274, -0.675486, -0.614692,
		0.865538, 0.500280, 0.023718,
		37.211327, 30.342970, 40.639309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138802, 29.516918, 40.636677>,  <36.605450, 29.992775, 40.622707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138802, 29.516918, 40.636677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340717, 29.828663, 40.785149>,  <37.461868, 30.015711, 40.874233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340717, 29.828663, 40.785149>,  <37.138802, 29.516918, 40.636677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340717, 29.828663, 40.785149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381311, -0.587076, 0.714103,
		0.774459, -0.218937, -0.593531,
		0.504791, 0.779364, 0.371184,
		37.492153, 30.062471, 40.896503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811462, 29.330038, 40.677921>,  <37.138802, 29.516918, 40.636677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811462, 29.330038, 40.677921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761345, 29.618704, 40.950245>,  <37.731274, 29.791903, 41.113640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761345, 29.618704, 40.950245>,  <37.811462, 29.330038, 40.677921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761345, 29.618704, 40.950245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433440, -0.577451, 0.691867,
		0.892430, 0.381777, -0.240447,
		-0.125292, 0.721662, 0.680812,
		37.723759, 29.835203, 41.154488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432308, 29.478987, 41.040344>,  <37.811462, 29.330038, 40.677921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432308, 29.478987, 41.040344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142700, 29.616976, 41.279274>,  <37.968937, 29.699770, 41.422630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142700, 29.616976, 41.279274>,  <38.432308, 29.478987, 41.040344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142700, 29.616976, 41.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413138, -0.476578, 0.776009,
		0.552374, 0.808619, 0.202529,
		-0.724017, 0.344975, 0.597320,
		37.925495, 29.720469, 41.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759518, 29.441086, 41.632286>,  <38.432308, 29.478987, 41.040344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759518, 29.441086, 41.632286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382481, 29.505499, 41.749306>,  <38.156258, 29.544147, 41.819519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382481, 29.505499, 41.749306>,  <38.759518, 29.441086, 41.632286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382481, 29.505499, 41.749306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230380, -0.320611, 0.918767,
		0.241746, 0.933422, 0.265108,
		-0.942594, 0.161033, 0.292548,
		38.099701, 29.553808, 41.837070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794559, 29.788153, 42.250072>,  <38.759518, 29.441086, 41.632286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794559, 29.788153, 42.250072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447563, 29.589500, 42.238670>,  <38.239365, 29.470308, 42.231831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447563, 29.589500, 42.238670>,  <38.794559, 29.788153, 42.250072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447563, 29.589500, 42.238670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146146, -0.309218, 0.939694,
		-0.475497, 0.811012, 0.340825,
		-0.867493, -0.496632, -0.028506,
		38.187317, 29.440512, 42.230118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716099, 29.698097, 42.899609>,  <38.794559, 29.788153, 42.250072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716099, 29.698097, 42.899609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424789, 29.456306, 42.770473>,  <38.250004, 29.311232, 42.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424789, 29.456306, 42.770473>,  <38.716099, 29.698097, 42.899609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424789, 29.456306, 42.770473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011150, -0.481493, 0.876379,
		-0.685196, 0.634644, 0.357398,
		-0.728273, -0.604477, -0.322841,
		38.206306, 29.274963, 42.673622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282990, 29.695887, 43.460838>,  <38.716099, 29.698097, 42.899609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282990, 29.695887, 43.460838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219040, 29.369097, 43.239212>,  <38.180672, 29.173023, 43.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219040, 29.369097, 43.239212>,  <38.282990, 29.695887, 43.460838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219040, 29.369097, 43.239212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032323, -0.556656, 0.830114,
		-0.986609, 0.150620, 0.062586,
		-0.159871, -0.816974, -0.554070,
		38.171078, 29.124004, 43.072990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846268, 29.291918, 43.806587>,  <38.282990, 29.695887, 43.460838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846268, 29.291918, 43.806587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007111, 29.013374, 43.568802>,  <38.103619, 28.846249, 43.426128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007111, 29.013374, 43.568802>,  <37.846268, 29.291918, 43.806587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007111, 29.013374, 43.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216882, -0.558350, 0.800755,
		-0.889534, -0.450920, -0.073489,
		0.402109, -0.696360, -0.594467,
		38.127743, 28.804466, 43.390461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489216, 28.689825, 43.797379>,  <37.846268, 29.291918, 43.806587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489216, 28.689825, 43.797379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861912, 28.587009, 43.694782>,  <38.085529, 28.525320, 43.633224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861912, 28.587009, 43.694782>,  <37.489216, 28.689825, 43.797379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861912, 28.587009, 43.694782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073890, -0.557359, 0.826977,
		-0.355519, -0.789483, -0.500323,
		0.931744, -0.257037, -0.256487,
		38.141434, 28.509897, 43.617836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709354, 27.945824, 43.909775>,  <37.489216, 28.689825, 43.797379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709354, 27.945824, 43.909775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062820, 28.133059, 43.907684>,  <38.274902, 28.245399, 43.906429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062820, 28.133059, 43.907684>,  <37.709354, 27.945824, 43.909775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062820, 28.133059, 43.907684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305765, -0.568703, 0.763600,
		0.354457, -0.676366, -0.645669,
		0.883667, 0.468087, -0.005228,
		38.327919, 28.273485, 43.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106007, 27.527468, 44.334915>,  <37.709354, 27.945824, 43.909775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106007, 27.527468, 44.334915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329971, 27.857819, 44.308311>,  <38.464352, 28.056030, 44.292351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329971, 27.857819, 44.308311>,  <38.106007, 27.527468, 44.334915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329971, 27.857819, 44.308311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322073, -0.142991, 0.935854,
		0.763392, -0.545415, -0.346056,
		0.559912, 0.825879, -0.066505,
		38.497944, 28.105581, 44.288361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748753, 27.391085, 44.601143>,  <38.106007, 27.527468, 44.334915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748753, 27.391085, 44.601143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748131, 27.789240, 44.639503>,  <38.747757, 28.028133, 44.662521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748131, 27.789240, 44.639503>,  <38.748753, 27.391085, 44.601143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748131, 27.789240, 44.639503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172062, -0.094209, 0.980571,
		0.985085, 0.018024, -0.171122,
		-0.001552, 0.995389, 0.095905,
		38.747665, 28.087856, 44.668274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336361, 27.616695, 45.053249>,  <38.748753, 27.391085, 44.601143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336361, 27.616695, 45.053249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062416, 27.907183, 45.077129>,  <38.898048, 28.081476, 45.091457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062416, 27.907183, 45.077129>,  <39.336361, 27.616695, 45.053249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062416, 27.907183, 45.077129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136433, 0.047322, 0.989518,
		0.715783, 0.685832, -0.131490,
		-0.684866, 0.726220, 0.059698,
		38.856956, 28.125048, 45.095039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689358, 28.145611, 45.379433>,  <39.336361, 27.616695, 45.053249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689358, 28.145611, 45.379433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302742, 28.241621, 45.415619>,  <39.070770, 28.299227, 45.437332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302742, 28.241621, 45.415619>,  <39.689358, 28.145611, 45.379433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302742, 28.241621, 45.415619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160715, 0.291793, 0.942883,
		0.199916, 0.925875, -0.320606,
		-0.966542, 0.240023, 0.090468,
		39.012779, 28.313627, 45.442760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706566, 28.725286, 45.776123>,  <39.689358, 28.145611, 45.379433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706566, 28.725286, 45.776123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332535, 28.590675, 45.820637>,  <39.108116, 28.509909, 45.847343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332535, 28.590675, 45.820637>,  <39.706566, 28.725286, 45.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332535, 28.590675, 45.820637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070199, 0.131907, 0.988773,
		-0.347428, 0.932389, -0.099719,
		-0.935075, -0.336527, 0.111281,
		39.052013, 28.489717, 45.854019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297649, 29.125437, 46.287300>,  <39.706566, 28.725286, 45.776123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297649, 29.125437, 46.287300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110874, 28.771734, 46.290436>,  <38.998810, 28.559513, 46.292316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110874, 28.771734, 46.290436>,  <39.297649, 29.125437, 46.287300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110874, 28.771734, 46.290436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071122, 0.046392, 0.996388,
		-0.881425, 0.464695, -0.084553,
		-0.466939, -0.884255, 0.007841,
		38.970791, 28.506458, 46.292789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733429, 29.214783, 46.769299>,  <39.297649, 29.125437, 46.287300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733429, 29.214783, 46.769299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810520, 28.823952, 46.733128>,  <38.856773, 28.589453, 46.711426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810520, 28.823952, 46.733128>,  <38.733429, 29.214783, 46.769299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810520, 28.823952, 46.733128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090129, -0.074140, 0.993167,
		-0.977104, -0.199561, 0.073774,
		0.192728, -0.977077, -0.090429,
		38.868340, 28.530828, 46.705997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180637, 28.815567, 47.182953>,  <38.733429, 29.214783, 46.769299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180637, 28.815567, 47.182953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498524, 28.574133, 47.157307>,  <38.689255, 28.429272, 47.141918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498524, 28.574133, 47.157307>,  <38.180637, 28.815567, 47.182953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498524, 28.574133, 47.157307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011734, -0.090330, 0.995843,
		-0.606867, -0.792165, -0.064704,
		0.794717, -0.603585, -0.064113,
		38.736938, 28.393057, 47.138073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996006, 28.285904, 47.625740>,  <38.180637, 28.815567, 47.182953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996006, 28.285904, 47.625740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390881, 28.250864, 47.572388>,  <38.627804, 28.229839, 47.540379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390881, 28.250864, 47.572388>,  <37.996006, 28.285904, 47.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390881, 28.250864, 47.572388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117385, -0.167542, 0.978851,
		-0.108092, -0.981965, -0.155113,
		0.987186, -0.087598, -0.133378,
		38.687035, 28.224585, 47.532375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211426, 27.714178, 48.116478>,  <37.996006, 28.285904, 47.625740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211426, 27.714178, 48.116478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545040, 27.918625, 48.033390>,  <38.745209, 28.041294, 47.983536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545040, 27.918625, 48.033390>,  <38.211426, 27.714178, 48.116478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545040, 27.918625, 48.033390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367798, -0.234459, 0.899863,
		0.411235, -0.826914, -0.383535,
		0.834032, 0.511118, -0.207720,
		38.795250, 28.071960, 47.971073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888592, 27.247572, 48.340977>,  <38.211426, 27.714178, 48.116478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888592, 27.247572, 48.340977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010258, 27.627203, 48.308151>,  <39.083260, 27.854982, 48.288456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010258, 27.627203, 48.308151>,  <38.888592, 27.247572, 48.340977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010258, 27.627203, 48.308151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341047, -0.028052, 0.939628,
		0.889477, -0.313792, -0.332213,
		0.304167, 0.949077, -0.082067,
		39.101509, 27.911926, 48.283531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492481, 27.360630, 48.744232>,  <38.888592, 27.247572, 48.340977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492481, 27.360630, 48.744232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374451, 27.739174, 48.691563>,  <39.303631, 27.966299, 48.659962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374451, 27.739174, 48.691563>,  <39.492481, 27.360630, 48.744232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374451, 27.739174, 48.691563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218990, 0.201126, 0.954773,
		0.930040, 0.252895, -0.266590,
		-0.295075, 0.946358, -0.131674,
		39.285927, 28.023081, 48.652061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097771, 27.826551, 48.931587>,  <39.492481, 27.360630, 48.744232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097771, 27.826551, 48.931587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764305, 28.043514, 48.973164>,  <39.564228, 28.173693, 48.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764305, 28.043514, 48.973164>,  <40.097771, 27.826551, 48.931587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764305, 28.043514, 48.973164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303269, 0.292306, 0.906965,
		0.461562, 0.787624, -0.408179,
		-0.833660, 0.542408, 0.103945,
		39.514206, 28.206236, 49.004349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323036, 28.514294, 49.150227>,  <40.097771, 27.826551, 48.931587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323036, 28.514294, 49.150227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931793, 28.510973, 49.233406>,  <39.697048, 28.508980, 49.283314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931793, 28.510973, 49.233406>,  <40.323036, 28.514294, 49.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931793, 28.510973, 49.233406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181810, 0.452185, 0.873197,
		-0.101283, 0.891886, -0.440774,
		-0.978104, -0.008302, 0.207952,
		39.638363, 28.508482, 49.295792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195534, 29.220188, 49.424316>,  <40.323036, 28.514294, 49.150227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195534, 29.220188, 49.424316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891060, 28.983202, 49.529835>,  <39.708378, 28.841011, 49.593147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891060, 28.983202, 49.529835>,  <40.195534, 29.220188, 49.424316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891060, 28.983202, 49.529835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008648, 0.397444, 0.917586,
		-0.648481, 0.700731, -0.297404,
		-0.761182, -0.592465, 0.263795,
		39.662704, 28.805462, 49.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837402, 29.647455, 49.854668>,  <40.195534, 29.220188, 49.424316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837402, 29.647455, 49.854668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720779, 29.278500, 49.956013>,  <39.650806, 29.057127, 50.016819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720779, 29.278500, 49.956013>,  <39.837402, 29.647455, 49.854668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720779, 29.278500, 49.956013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032532, 0.255154, 0.966353,
		-0.955999, 0.289993, -0.044385,
		-0.291560, -0.922389, 0.253361,
		39.633312, 29.001783, 50.032021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478912, 29.689583, 50.466785>,  <39.837402, 29.647455, 49.854668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478912, 29.689583, 50.466785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715919, 30.002516, 50.543598>,  <39.858124, 30.190275, 50.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715919, 30.002516, 50.543598>,  <39.478912, 29.689583, 50.466785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715919, 30.002516, 50.543598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018027, 0.225443, -0.974090,
		-0.805352, 0.580631, 0.119477,
		0.592522, 0.782332, 0.192028,
		39.893677, 30.237215, 50.601208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174885, 30.260181, 50.269260>,  <39.478912, 29.689583, 50.466785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174885, 30.260181, 50.269260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566189, 30.342524, 50.259178>,  <39.800972, 30.391930, 50.253128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566189, 30.342524, 50.259178>,  <39.174885, 30.260181, 50.269260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566189, 30.342524, 50.259178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123040, 0.478216, -0.869580,
		-0.166953, 0.853775, 0.493147,
		0.978257, 0.205856, -0.025209,
		39.859665, 30.404280, 50.251614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120754, 30.761791, 49.824387>,  <39.174885, 30.260181, 50.269260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120754, 30.761791, 49.824387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 30.697420, 49.827858>,  <39.752388, 30.658798, 49.829941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 30.697420, 49.827858>,  <39.120754, 30.761791, 49.824387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515526, 30.697420, 49.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084553, 0.471175, -0.877978,
		0.137200, 0.867235, 0.478623,
		0.986928, -0.160928, 0.008682,
		39.811604, 30.649141, 49.830463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394848, 31.393211, 49.642525>,  <39.120754, 30.761791, 49.824387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394848, 31.393211, 49.642525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714771, 31.168161, 49.558849>,  <39.906727, 31.033133, 49.508644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714771, 31.168161, 49.558849>,  <39.394848, 31.393211, 49.642525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714771, 31.168161, 49.558849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199612, 0.577960, -0.791276,
		0.566090, 0.591115, 0.574565,
		0.799810, -0.562623, -0.209184,
		39.954716, 30.999374, 49.496094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985058, 31.893610, 49.519821>,  <39.394848, 31.393211, 49.642525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985058, 31.893610, 49.519821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063210, 31.537575, 49.355106>,  <40.110100, 31.323954, 49.256275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063210, 31.537575, 49.355106>,  <39.985058, 31.893610, 49.519821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063210, 31.537575, 49.355106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262962, 0.452054, -0.852348,
		0.944816, 0.058248, 0.322382,
		0.195382, -0.890087, -0.411791,
		40.121822, 31.270548, 49.231567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504852, 32.000885, 48.949188>,  <39.985058, 31.893610, 49.519821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504852, 32.000885, 48.949188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372227, 31.633020, 48.865021>,  <40.292652, 31.412300, 48.814522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372227, 31.633020, 48.865021>,  <40.504852, 32.000885, 48.949188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372227, 31.633020, 48.865021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174941, 0.159234, -0.971617,
		0.927070, -0.358969, 0.108090,
		-0.331568, -0.919666, -0.210420,
		40.272755, 31.357121, 48.801895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998291, 31.672293, 48.520130>,  <40.504852, 32.000885, 48.949188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998291, 31.672293, 48.520130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643250, 31.495489, 48.468307>,  <40.430225, 31.389406, 48.437214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643250, 31.495489, 48.468307>,  <40.998291, 31.672293, 48.520130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643250, 31.495489, 48.468307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013576, 0.306258, -0.951852,
		0.460405, -0.843110, -0.277836,
		-0.887605, -0.442010, -0.129557,
		40.376968, 31.362886, 48.429440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055920, 31.438816, 47.808353>,  <40.998291, 31.672293, 48.520130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055920, 31.438816, 47.808353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664043, 31.418278, 47.885891>,  <40.428917, 31.405954, 47.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664043, 31.418278, 47.885891>,  <41.055920, 31.438816, 47.808353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664043, 31.418278, 47.885891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199812, 0.168345, -0.965264,
		0.016925, -0.984390, -0.175184,
		-0.979688, -0.051341, 0.193844,
		40.370136, 31.402874, 47.944042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794518, 31.055817, 47.311943>,  <41.055920, 31.438816, 47.808353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794518, 31.055817, 47.311943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472290, 31.253111, 47.443256>,  <40.278954, 31.371487, 47.522045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472290, 31.253111, 47.443256>,  <40.794518, 31.055817, 47.311943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472290, 31.253111, 47.443256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249066, 0.220839, -0.942972,
		-0.537605, -0.841398, -0.055054,
		-0.805573, 0.493234, 0.328287,
		40.230618, 31.401081, 47.541744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149876, 30.852262, 46.917625>,  <40.794518, 31.055817, 47.311943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149876, 30.852262, 46.917625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037773, 31.199419, 47.081688>,  <39.970512, 31.407713, 47.180126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037773, 31.199419, 47.081688>,  <40.149876, 30.852262, 46.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037773, 31.199419, 47.081688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288973, 0.331178, -0.898229,
		-0.915398, -0.370255, 0.157983,
		-0.280253, 0.867890, 0.410153,
		39.953697, 31.459785, 47.204735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579906, 31.156971, 46.460373>,  <40.149876, 30.852262, 46.917625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579906, 31.156971, 46.460373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715828, 31.470732, 46.667931>,  <39.797379, 31.658987, 46.792465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715828, 31.470732, 46.667931>,  <39.579906, 31.156971, 46.460373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715828, 31.470732, 46.667931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066061, 0.570268, -0.818798,
		-0.938175, 0.243949, 0.245595,
		0.339800, 0.784400, 0.518896,
		39.817768, 31.706051, 46.823601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062275, 31.698620, 46.368679>,  <39.579906, 31.156971, 46.460373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062275, 31.698620, 46.368679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378906, 31.913544, 46.485092>,  <39.568886, 32.042500, 46.554939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378906, 31.913544, 46.485092>,  <39.062275, 31.698620, 46.368679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378906, 31.913544, 46.485092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093343, 0.577007, -0.811388,
		-0.603895, 0.615111, 0.506901,
		0.791579, 0.537309, 0.291036,
		39.616379, 32.074738, 46.572403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886147, 32.384121, 46.281857>,  <39.062275, 31.698620, 46.368679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886147, 32.384121, 46.281857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283455, 32.337891, 46.284760>,  <39.521839, 32.310154, 46.286503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283455, 32.337891, 46.284760>,  <38.886147, 32.384121, 46.281857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283455, 32.337891, 46.284760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076198, 0.605122, -0.792478,
		0.087197, 0.787700, 0.609857,
		0.993273, -0.115572, 0.007256,
		39.581436, 32.303219, 46.286938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218922, 33.048035, 46.026230>,  <38.886147, 32.384121, 46.281857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218922, 33.048035, 46.026230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506535, 32.773602, 45.981888>,  <39.679100, 32.608940, 45.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506535, 32.773602, 45.981888>,  <39.218922, 33.048035, 46.026230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506535, 32.773602, 45.981888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087396, 0.068976, -0.993783,
		0.689464, 0.724246, -0.010365,
		0.719028, -0.686083, -0.110853,
		39.722244, 32.567776, 45.948631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699799, 33.294147, 45.613987>,  <39.218922, 33.048035, 46.026230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699799, 33.294147, 45.613987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682400, 32.895367, 45.588093>,  <39.671959, 32.656097, 45.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682400, 32.895367, 45.588093>,  <39.699799, 33.294147, 45.613987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682400, 32.895367, 45.588093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085472, 0.068271, -0.993999,
		0.995391, -0.037705, -0.088181,
		-0.043499, -0.996954, -0.064733,
		39.669350, 32.596279, 45.568672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270393, 33.131626, 45.149529>,  <39.699799, 33.294147, 45.613987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270393, 33.131626, 45.149529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030861, 32.811550, 45.162739>,  <39.887142, 32.619503, 45.170666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030861, 32.811550, 45.162739>,  <40.270393, 33.131626, 45.149529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030861, 32.811550, 45.162739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129802, -0.137661, -0.981937,
		0.790284, -0.583731, 0.186303,
		-0.598834, -0.800192, 0.033021,
		39.851212, 32.571491, 45.172646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529930, 32.684212, 44.605515>,  <40.270393, 33.131626, 45.149529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529930, 32.684212, 44.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155426, 32.551243, 44.650978>,  <39.930725, 32.471462, 44.678257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155426, 32.551243, 44.650978>,  <40.529930, 32.684212, 44.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155426, 32.551243, 44.650978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059534, -0.168720, -0.983864,
		0.346235, -0.927917, 0.138175,
		-0.936257, -0.332422, 0.113659,
		39.874550, 32.451515, 44.685078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456013, 32.169918, 44.138588>,  <40.529930, 32.684212, 44.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456013, 32.169918, 44.138588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073616, 32.232327, 44.237976>,  <39.844177, 32.269772, 44.297607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073616, 32.232327, 44.237976>,  <40.456013, 32.169918, 44.138588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073616, 32.232327, 44.237976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263406, -0.083412, -0.961072,
		-0.129233, -0.984224, 0.120840,
		-0.955989, 0.156032, 0.248471,
		39.786819, 32.279133, 44.312519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171707, 31.889288, 43.629913>,  <40.456013, 32.169918, 44.138588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171707, 31.889288, 43.629913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867970, 32.090809, 43.794632>,  <39.685726, 32.211720, 43.893463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867970, 32.090809, 43.794632>,  <40.171707, 31.889288, 43.629913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867970, 32.090809, 43.794632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401233, 0.135695, -0.905869,
		-0.512258, -0.853094, 0.099103,
		-0.759344, 0.503803, 0.411801,
		39.640167, 32.241951, 43.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500431, 31.619553, 43.395931>,  <40.171707, 31.889288, 43.629913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500431, 31.619553, 43.395931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437977, 31.998854, 43.506519>,  <39.400505, 32.226437, 43.572872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437977, 31.998854, 43.506519>,  <39.500431, 31.619553, 43.395931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437977, 31.998854, 43.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469872, 0.174893, -0.865236,
		-0.868816, -0.265001, 0.418250,
		-0.156140, 0.948255, 0.276466,
		39.391136, 32.283329, 43.589458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779015, 31.693819, 43.351646>,  <39.500431, 31.619553, 43.395931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779015, 31.693819, 43.351646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983498, 32.036716, 43.326965>,  <39.106186, 32.242455, 43.312157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983498, 32.036716, 43.326965>,  <38.779015, 31.693819, 43.351646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983498, 32.036716, 43.326965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461155, 0.213005, -0.861374,
		-0.725263, 0.468791, 0.504210,
		0.511204, 0.857242, -0.061701,
		39.136860, 32.293888, 43.308456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333508, 32.174644, 43.035892>,  <38.779015, 31.693819, 43.351646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333508, 32.174644, 43.035892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693108, 32.339672, 42.977127>,  <38.908867, 32.438686, 42.941868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693108, 32.339672, 42.977127>,  <38.333508, 32.174644, 43.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693108, 32.339672, 42.977127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264501, 0.244144, -0.932970,
		-0.349046, 0.877600, 0.328611,
		0.899003, 0.412567, -0.146909,
		38.962807, 32.463444, 42.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229774, 32.631096, 42.545090>,  <38.333508, 32.174644, 43.035892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229774, 32.631096, 42.545090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627735, 32.637386, 42.505245>,  <38.866512, 32.641163, 42.481339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627735, 32.637386, 42.505245>,  <38.229774, 32.631096, 42.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627735, 32.637386, 42.505245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100638, 0.218625, -0.970606,
		0.006512, 0.975682, 0.219094,
		0.994902, 0.015728, -0.099614,
		38.926205, 32.642105, 42.475361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237762, 33.025013, 41.990364>,  <38.229774, 32.631096, 42.545090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237762, 33.025013, 41.990364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594227, 32.843891, 42.001640>,  <38.808105, 32.735218, 42.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594227, 32.843891, 42.001640>,  <38.237762, 33.025013, 41.990364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594227, 32.843891, 42.001640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020296, -0.022294, -0.999545,
		0.453232, 0.891329, -0.010677,
		0.891162, -0.452809, 0.028194,
		38.861576, 32.708050, 42.010098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710636, 33.386414, 41.459702>,  <38.237762, 33.025013, 41.990364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710636, 33.386414, 41.459702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840130, 33.015205, 41.533436>,  <38.917828, 32.792480, 41.577675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840130, 33.015205, 41.533436>,  <38.710636, 33.386414, 41.459702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840130, 33.015205, 41.533436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044259, -0.179758, -0.982715,
		0.945112, 0.326298, -0.017121,
		0.323735, -0.928018, 0.184333,
		38.937252, 32.736801, 41.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251972, 33.299213, 40.967739>,  <38.710636, 33.386414, 41.459702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251972, 33.299213, 40.967739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 32.924526, 41.060169>,  <39.083656, 32.699715, 41.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 32.924526, 41.060169>,  <39.251972, 33.299213, 40.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146774, 32.924526, 41.060169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171691, -0.281124, -0.944188,
		0.949398, -0.208641, 0.234760,
		-0.262993, -0.936717, 0.231077,
		39.067875, 32.643513, 41.129494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853199, 32.877174, 40.718544>,  <39.251972, 33.299213, 40.967739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853199, 32.877174, 40.718544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532505, 32.641464, 40.758514>,  <39.340088, 32.500038, 40.782497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532505, 32.641464, 40.758514>,  <39.853199, 32.877174, 40.718544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532505, 32.641464, 40.758514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136866, -0.343751, -0.929033,
		0.581801, -0.731160, 0.356247,
		-0.801733, -0.589271, 0.099924,
		39.291985, 32.464684, 40.788490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123798, 32.325130, 40.348343>,  <39.853199, 32.877174, 40.718544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123798, 32.325130, 40.348343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733479, 32.242348, 40.376556>,  <39.499287, 32.192677, 40.393486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733479, 32.242348, 40.376556>,  <40.123798, 32.325130, 40.348343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733479, 32.242348, 40.376556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012046, -0.271220, -0.962442,
		0.218319, -0.940004, 0.262164,
		-0.975803, -0.206962, 0.070535,
		39.440739, 32.180260, 40.397717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060074, 31.755116, 39.976662>,  <40.123798, 32.325130, 40.348343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060074, 31.755116, 39.976662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689156, 31.904732, 39.982655>,  <39.466606, 31.994501, 39.986252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689156, 31.904732, 39.982655>,  <40.060074, 31.755116, 39.976662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689156, 31.904732, 39.982655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013543, 0.006485, -0.999887,
		-0.374096, -0.927389, -0.000947,
		-0.927291, 0.374041, 0.014986,
		39.410969, 32.016945, 39.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725216, 31.310326, 39.497459>,  <40.060074, 31.755116, 39.976662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725216, 31.310326, 39.497459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527763, 31.656889, 39.527569>,  <39.409290, 31.864826, 39.545635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527763, 31.656889, 39.527569>,  <39.725216, 31.310326, 39.497459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527763, 31.656889, 39.527569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132961, 0.160728, -0.978002,
		-0.859446, -0.472765, -0.194539,
		-0.493633, 0.866406, 0.075278,
		39.379673, 31.916811, 39.550152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312061, 31.382132, 38.842949>,  <39.725216, 31.310326, 39.497459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312061, 31.382132, 38.842949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272873, 31.754265, 38.984306>,  <39.249359, 31.977545, 39.069118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272873, 31.754265, 38.984306>,  <39.312061, 31.382132, 38.842949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272873, 31.754265, 38.984306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002948, 0.354826, -0.934928,
		-0.995185, -0.092636, -0.032020,
		-0.097970, 0.930332, 0.353391,
		39.243481, 32.033363, 39.090324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686161, 31.684288, 38.662434>,  <39.312061, 31.382132, 38.842949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686161, 31.684288, 38.662434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948818, 31.981283, 38.715393>,  <39.106411, 32.159481, 38.747169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948818, 31.981283, 38.715393>,  <38.686161, 31.684288, 38.662434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948818, 31.981283, 38.715393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123213, 0.278799, -0.952412,
		-0.744070, 0.609081, 0.274556,
		0.656642, 0.742490, 0.132400,
		39.145809, 32.204029, 38.755112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364639, 32.228428, 38.458462>,  <38.686161, 31.684288, 38.662434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364639, 32.228428, 38.458462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750664, 32.329052, 38.429134>,  <38.982277, 32.389427, 38.411537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750664, 32.329052, 38.429134>,  <38.364639, 32.228428, 38.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750664, 32.329052, 38.429134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188084, 0.470221, -0.862274,
		-0.182440, 0.845936, 0.501107,
		0.965060, 0.251564, -0.073320,
		39.040180, 32.404522, 38.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313908, 32.856964, 38.315102>,  <38.364639, 32.228428, 38.458462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313908, 32.856964, 38.315102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680862, 32.763523, 38.186211>,  <38.901035, 32.707458, 38.108875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680862, 32.763523, 38.186211>,  <38.313908, 32.856964, 38.315102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680862, 32.763523, 38.186211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113733, 0.621994, -0.774718,
		0.381406, 0.747363, 0.544039,
		0.917385, -0.233607, -0.322232,
		38.956078, 32.693439, 38.089542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728092, 33.422573, 38.208332>,  <38.313908, 32.856964, 38.315102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728092, 33.422573, 38.208332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975224, 33.199036, 37.987068>,  <39.123505, 33.064915, 37.854309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975224, 33.199036, 37.987068>,  <38.728092, 33.422573, 38.208332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975224, 33.199036, 37.987068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052906, 0.672343, -0.738346,
		0.784528, 0.485440, 0.385829,
		0.617832, -0.558840, -0.553155,
		39.160572, 33.031384, 37.821121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039013, 33.912998, 37.827282>,  <38.728092, 33.422573, 38.208332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039013, 33.912998, 37.827282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120674, 33.572586, 37.633759>,  <39.169670, 33.368340, 37.517643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120674, 33.572586, 37.633759>,  <39.039013, 33.912998, 37.827282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120674, 33.572586, 37.633759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012714, 0.491872, -0.870574,
		0.978856, 0.183881, 0.089598,
		0.204153, -0.851028, -0.483810,
		39.181919, 33.317276, 37.488617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691509, 34.008732, 37.444420>,  <39.039013, 33.912998, 37.827282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691509, 34.008732, 37.444420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507236, 33.701180, 37.267067>,  <39.396671, 33.516647, 37.160656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507236, 33.701180, 37.267067>,  <39.691509, 34.008732, 37.444420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507236, 33.701180, 37.267067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071391, 0.465831, -0.881989,
		0.884688, -0.437972, -0.159709,
		-0.460684, -0.768884, -0.443383,
		39.369030, 33.470516, 37.134052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178074, 33.727528, 36.872196>,  <39.691509, 34.008732, 37.444420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178074, 33.727528, 36.872196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799614, 33.607037, 36.824760>,  <39.572536, 33.534740, 36.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799614, 33.607037, 36.824760>,  <40.178074, 33.727528, 36.872196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799614, 33.607037, 36.824760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089747, 0.107898, -0.990103,
		0.311044, -0.947427, -0.075052,
		-0.946148, -0.301230, -0.118590,
		39.515770, 33.516666, 36.789185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180641, 33.452969, 36.227432>,  <40.178074, 33.727528, 36.872196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180641, 33.452969, 36.227432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790955, 33.510342, 36.297092>,  <39.557144, 33.544765, 36.338886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790955, 33.510342, 36.297092>,  <40.180641, 33.452969, 36.227432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790955, 33.510342, 36.297092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149217, 0.169304, -0.974203,
		-0.169221, -0.975070, -0.143535,
		-0.974217, 0.143437, 0.174146,
		39.498688, 33.553371, 36.349335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866516, 33.162804, 35.578110>,  <40.180641, 33.452969, 36.227432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866516, 33.162804, 35.578110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588989, 33.396751, 35.746178>,  <39.422474, 33.537121, 35.847019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588989, 33.396751, 35.746178>,  <39.866516, 33.162804, 35.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588989, 33.396751, 35.746178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319697, 0.272658, -0.907442,
		-0.645301, -0.763926, -0.002193,
		-0.693816, 0.584872, 0.420171,
		39.380844, 33.572212, 35.872231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923309, 34.013100, 35.513737>,  <39.866516, 33.162804, 35.578110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923309, 34.013100, 35.513737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972706, 34.367115, 35.693268>,  <40.002346, 34.579525, 35.800987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972706, 34.367115, 35.693268>,  <39.923309, 34.013100, 35.513737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972706, 34.367115, 35.693268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991858, -0.124258, -0.027886,
		0.031090, 0.448619, -0.893182,
		0.123495, 0.885043, 0.448829,
		40.009754, 34.632629, 35.827915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480736, 34.383873, 35.077625>,  <39.923309, 34.013100, 35.513737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480736, 34.383873, 35.077625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440376, 34.518730, 35.452038>,  <40.416161, 34.599644, 35.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440376, 34.518730, 35.452038>,  <40.480736, 34.383873, 35.077625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440376, 34.518730, 35.452038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974148, -0.157666, 0.161796,
		0.202129, 0.928156, -0.312524,
		-0.100897, 0.337148, 0.936029,
		40.410107, 34.619873, 35.732845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760151, 35.093227, 35.244114>,  <40.480736, 34.383873, 35.077625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760151, 35.093227, 35.244114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771580, 34.795082, 35.510532>,  <40.778439, 34.616196, 35.670383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771580, 34.795082, 35.510532>,  <40.760151, 35.093227, 35.244114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771580, 34.795082, 35.510532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998869, -0.004044, -0.047373,
		0.038004, 0.666644, 0.744407,
		0.028571, -0.745365, 0.666044,
		40.780151, 34.571472, 35.710346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368519, 35.198250, 35.716625>,  <40.760151, 35.093227, 35.244114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368519, 35.198250, 35.716625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282013, 34.807819, 35.707645>,  <41.230110, 34.573563, 35.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282013, 34.807819, 35.707645>,  <41.368519, 35.198250, 35.716625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282013, 34.807819, 35.707645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976113, -0.216646, 0.016399,
		-0.020871, -0.018368, 0.999613,
		-0.216261, -0.976077, -0.022451,
		41.217136, 34.514996, 35.700909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039093, 34.792953, 35.797676>,  <41.368519, 35.198250, 35.716625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039093, 34.792953, 35.797676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824081, 34.481384, 35.668468>,  <41.695076, 34.294445, 35.590942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824081, 34.481384, 35.668468>,  <42.039093, 34.792953, 35.797676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824081, 34.481384, 35.668468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817249, -0.575602, 0.028028,
		-0.207765, -0.248925, 0.945976,
		-0.537529, -0.778921, -0.323024,
		41.662823, 34.247707, 35.571560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254406, 34.105995, 35.833809>,  <42.039093, 34.792953, 35.797676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254406, 34.105995, 35.833809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536224, 34.093250, 36.117386>,  <42.705315, 34.085606, 36.287533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536224, 34.093250, 36.117386>,  <42.254406, 34.105995, 35.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536224, 34.093250, 36.117386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701522, 0.119575, 0.702544,
		-0.107155, -0.992314, 0.061895,
		0.704546, -0.031860, 0.708943,
		42.747589, 34.083694, 36.330070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990566, 33.808861, 36.437134>,  <42.254406, 34.105995, 35.833809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990566, 33.808861, 36.437134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292942, 34.032127, 36.573959>,  <42.474369, 34.166088, 36.656055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292942, 34.032127, 36.573959>,  <41.990566, 33.808861, 36.437134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292942, 34.032127, 36.573959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519381, 0.193302, 0.832393,
		0.398490, -0.806901, 0.436024,
		0.755943, 0.558162, 0.342060,
		42.519726, 34.199577, 36.676579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982288, 33.636040, 37.065563>,  <41.990566, 33.808861, 36.437134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982288, 33.636040, 37.065563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141354, 34.001572, 37.032623>,  <42.236794, 34.220890, 37.012859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141354, 34.001572, 37.032623>,  <41.982288, 33.636040, 37.065563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141354, 34.001572, 37.032623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346981, 0.232863, 0.908504,
		0.849395, -0.332700, 0.409681,
		0.397658, 0.913830, -0.082352,
		42.260651, 34.275723, 37.007919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273006, 33.780476, 37.769520>,  <41.982288, 33.636040, 37.065563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273006, 33.780476, 37.769520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245598, 34.138237, 37.592728>,  <42.229153, 34.352894, 37.486652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245598, 34.138237, 37.592728>,  <42.273006, 33.780476, 37.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245598, 34.138237, 37.592728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334895, 0.396698, 0.854678,
		0.939761, 0.206579, 0.272350,
		-0.068517, 0.894402, -0.441984,
		42.225044, 34.406559, 37.460133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592869, 34.218658, 38.122349>,  <42.273006, 33.780476, 37.769520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592869, 34.218658, 38.122349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316959, 34.447456, 37.944794>,  <42.151413, 34.584736, 37.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316959, 34.447456, 37.944794>,  <42.592869, 34.218658, 38.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316959, 34.447456, 37.944794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371508, 0.246611, 0.895078,
		0.621445, 0.782310, 0.042394,
		-0.689773, 0.571992, -0.443890,
		42.110027, 34.619053, 37.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312855, 34.590866, 38.658764>,  <42.592869, 34.218658, 38.122349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312855, 34.590866, 38.658764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048454, 34.711498, 38.383919>,  <41.889812, 34.783878, 38.219009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048454, 34.711498, 38.383919>,  <42.312855, 34.590866, 38.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048454, 34.711498, 38.383919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497242, 0.509748, 0.702074,
		0.561986, 0.805734, -0.186987,
		-0.661001, 0.301578, -0.687116,
		41.850155, 34.801971, 38.177784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171410, 35.286976, 38.765385>,  <42.312855, 34.590866, 38.658764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171410, 35.286976, 38.765385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839836, 35.155407, 38.584419>,  <41.640892, 35.076466, 38.475838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839836, 35.155407, 38.584419>,  <42.171410, 35.286976, 38.765385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839836, 35.155407, 38.584419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559121, 0.464156, 0.686981,
		-0.015971, 0.822417, -0.568661,
		-0.828932, -0.328922, -0.452417,
		41.591156, 35.056732, 38.448692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668961, 35.861546, 38.755543>,  <42.171410, 35.286976, 38.765385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668961, 35.861546, 38.755543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406532, 35.567822, 38.685841>,  <41.249077, 35.391586, 38.644020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406532, 35.567822, 38.685841>,  <41.668961, 35.861546, 38.755543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406532, 35.567822, 38.685841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715825, 0.532309, 0.451930,
		-0.239101, 0.421231, -0.874868,
		-0.656068, -0.734309, -0.174252,
		41.209713, 35.347530, 38.633564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095974, 36.192562, 38.488197>,  <41.668961, 35.861546, 38.755543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095974, 36.192562, 38.488197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991695, 35.840710, 38.647343>,  <40.929127, 35.629601, 38.742828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991695, 35.840710, 38.647343>,  <41.095974, 36.192562, 38.488197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991695, 35.840710, 38.647343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741667, 0.446300, 0.500746,
		-0.618034, -0.164536, -0.768741,
		-0.260698, -0.879628, 0.397859,
		40.913486, 35.576820, 38.766701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274471, 36.145279, 38.385590>,  <41.095974, 36.192562, 38.488197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274471, 36.145279, 38.385590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366890, 35.898544, 38.686558>,  <40.422340, 35.750504, 38.867138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366890, 35.898544, 38.686558>,  <40.274471, 36.145279, 38.385590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366890, 35.898544, 38.686558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570903, 0.540261, 0.618214,
		-0.787837, -0.572395, -0.227326,
		0.231047, -0.616833, 0.752419,
		40.436203, 35.713493, 38.912285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619858, 36.057720, 38.728035>,  <40.274471, 36.145279, 38.385590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619858, 36.057720, 38.728035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909904, 35.969250, 38.988892>,  <40.083931, 35.916168, 39.145405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909904, 35.969250, 38.988892>,  <39.619858, 36.057720, 38.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909904, 35.969250, 38.988892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489068, 0.501287, 0.713809,
		-0.484790, -0.836535, 0.255318,
		0.725114, -0.221180, 0.652142,
		40.127438, 35.902897, 39.184536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199333, 35.949520, 39.314602>,  <39.619858, 36.057720, 38.728035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199333, 35.949520, 39.314602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571560, 35.980385, 39.457764>,  <39.794895, 35.998905, 39.543659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571560, 35.980385, 39.457764>,  <39.199333, 35.949520, 39.314602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571560, 35.980385, 39.457764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348726, 0.484565, 0.802239,
		-0.111524, -0.871345, 0.477828,
		0.930566, 0.077162, 0.357901,
		39.850731, 36.003532, 39.565132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184620, 35.788521, 39.980663>,  <39.199333, 35.949520, 39.314602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184620, 35.788521, 39.980663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517170, 36.007465, 39.942280>,  <39.716702, 36.138832, 39.919250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517170, 36.007465, 39.942280>,  <39.184620, 35.788521, 39.980663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517170, 36.007465, 39.942280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339199, 0.636616, 0.692578,
		0.440176, -0.543247, 0.714932,
		0.831378, 0.547361, -0.095954,
		39.766582, 36.171673, 39.913494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475540, 35.956120, 40.735363>,  <39.184620, 35.788521, 39.980663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475540, 35.956120, 40.735363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612091, 36.229588, 40.477352>,  <39.694023, 36.393669, 40.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612091, 36.229588, 40.477352>,  <39.475540, 35.956120, 40.735363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612091, 36.229588, 40.477352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174755, 0.720452, 0.671126,
		0.923537, -0.116387, 0.365422,
		0.341379, 0.683669, -0.645025,
		39.714504, 36.434689, 40.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964622, 36.367592, 41.074795>,  <39.475540, 35.956120, 40.735363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964622, 36.367592, 41.074795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892555, 36.610390, 40.765190>,  <39.849316, 36.756069, 40.579426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892555, 36.610390, 40.765190>,  <39.964622, 36.367592, 41.074795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892555, 36.610390, 40.765190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024858, 0.789446, 0.613316,
		0.983322, 0.091257, -0.157318,
		-0.180164, 0.606998, -0.774012,
		39.838505, 36.792488, 40.532986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666359, 36.859909, 41.398640>,  <39.964622, 36.367592, 41.074795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666359, 36.859909, 41.398640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757366, 37.006325, 41.037697>,  <39.811970, 37.094173, 40.821129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757366, 37.006325, 41.037697>,  <39.666359, 36.859909, 41.398640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757366, 37.006325, 41.037697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076912, 0.930522, 0.358068,
		0.970733, -0.012062, 0.239859,
		0.227513, 0.366037, -0.902361,
		39.825619, 37.116135, 40.766987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381046, 37.232803, 41.295406>,  <39.666359, 36.859909, 41.398640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381046, 37.232803, 41.295406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062153, 37.364841, 41.093239>,  <39.870815, 37.444065, 40.971939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062153, 37.364841, 41.093239>,  <40.381046, 37.232803, 41.295406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062153, 37.364841, 41.093239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092291, 0.894055, 0.438347,
		0.596570, 0.302821, -0.743239,
		-0.797237, 0.330099, -0.505418,
		39.822983, 37.463871, 40.941612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529404, 37.978996, 41.147091>,  <40.381046, 37.232803, 41.295406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529404, 37.978996, 41.147091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141037, 37.956017, 41.054127>,  <39.908016, 37.942230, 40.998348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141037, 37.956017, 41.054127>,  <40.529404, 37.978996, 41.147091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141037, 37.956017, 41.054127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112766, 0.966087, 0.232294,
		0.211186, 0.251747, -0.944470,
		-0.970919, -0.057447, -0.232413,
		39.849762, 37.938782, 40.984402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413563, 38.573322, 40.847244>,  <40.529404, 37.978996, 41.147091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413563, 38.573322, 40.847244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039204, 38.465309, 40.937733>,  <39.814587, 38.400501, 40.992027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039204, 38.465309, 40.937733>,  <40.413563, 38.573322, 40.847244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039204, 38.465309, 40.937733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204358, 0.939263, 0.275722,
		-0.286939, 0.211816, -0.934237,
		-0.935897, -0.270035, 0.226225,
		39.758434, 38.384300, 41.005600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021492, 39.037514, 40.579117>,  <40.413563, 38.573322, 40.847244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021492, 39.037514, 40.579117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776730, 38.873917, 40.849907>,  <39.629871, 38.775757, 41.012383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776730, 38.873917, 40.849907>,  <40.021492, 39.037514, 40.579117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776730, 38.873917, 40.849907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378834, 0.902910, 0.203073,
		-0.694304, -0.132200, -0.707436,
		-0.611905, -0.408995, 0.676975,
		39.593159, 38.751217, 41.053001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324730, 39.247707, 40.448166>,  <40.021492, 39.037514, 40.579117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324730, 39.247707, 40.448166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 39.172920, 40.840416>,  <39.362125, 39.128048, 41.075768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 39.172920, 40.840416>,  <39.324730, 39.247707, 40.448166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348103, 39.172920, 40.840416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439488, 0.877176, 0.193427,
		-0.896346, -0.442275, -0.030918,
		0.058428, -0.186965, 0.980627,
		39.365631, 39.116829, 41.134605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634918, 39.537888, 40.716496>,  <39.324730, 39.247707, 40.448166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634918, 39.537888, 40.716496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861786, 39.500229, 41.043777>,  <38.997906, 39.477634, 41.240147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861786, 39.500229, 41.043777>,  <38.634918, 39.537888, 40.716496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861786, 39.500229, 41.043777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489795, 0.760127, 0.426976,
		-0.662137, -0.642919, 0.385006,
		0.567164, -0.094142, 0.818207,
		39.031937, 39.471985, 41.289238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199543, 39.593216, 41.269169>,  <38.634918, 39.537888, 40.716496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199543, 39.593216, 41.269169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563293, 39.710953, 41.386738>,  <38.781544, 39.781597, 41.457279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563293, 39.710953, 41.386738>,  <38.199543, 39.593216, 41.269169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563293, 39.710953, 41.386738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408633, 0.764269, 0.498911,
		-0.077786, -0.573806, 0.815289,
		0.909378, 0.294346, 0.293925,
		38.836105, 39.799255, 41.474915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242100, 39.906731, 42.075787>,  <38.199543, 39.593216, 41.269169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242100, 39.906731, 42.075787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536797, 40.058544, 41.851944>,  <38.713615, 40.149632, 41.717640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536797, 40.058544, 41.851944>,  <38.242100, 39.906731, 42.075787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536797, 40.058544, 41.851944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224003, 0.917873, 0.327615,
		0.637989, -0.116015, 0.761256,
		0.736744, 0.379538, -0.559606,
		38.757820, 40.172405, 41.684063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540474, 40.511341, 42.531017>,  <38.242100, 39.906731, 42.075787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540474, 40.511341, 42.531017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687164, 40.561039, 42.162220>,  <38.775177, 40.590858, 41.940941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687164, 40.561039, 42.162220>,  <38.540474, 40.511341, 42.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687164, 40.561039, 42.162220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164822, 0.966688, 0.195829,
		0.915612, -0.223780, 0.334032,
		0.366727, 0.124248, -0.921994,
		38.797184, 40.598312, 41.885620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098648, 41.000755, 42.487663>,  <38.540474, 40.511341, 42.531017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098648, 41.000755, 42.487663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970497, 41.012180, 42.108921>,  <38.893604, 41.019035, 41.881676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970497, 41.012180, 42.108921>,  <39.098648, 41.000755, 42.487663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970497, 41.012180, 42.108921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094035, 0.995567, -0.001783,
		0.942610, -0.089609, -0.321647,
		-0.320381, 0.028566, -0.946858,
		38.874382, 41.020748, 41.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545555, 41.419914, 41.986477>,  <39.098648, 41.000755, 42.487663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545555, 41.419914, 41.986477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160770, 41.418289, 41.877209>,  <38.929901, 41.417313, 41.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160770, 41.418289, 41.877209>,  <39.545555, 41.419914, 41.986477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160770, 41.418289, 41.877209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012521, 0.998183, -0.058946,
		0.272910, -0.060124, -0.960159,
		-0.961958, -0.004065, -0.273167,
		38.872185, 41.417068, 41.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161633, 41.414555, 42.302307>,  <39.545555, 41.419914, 41.986477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161633, 41.414555, 42.302307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251484, 41.680756, 42.017590>,  <40.305397, 41.840477, 41.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251484, 41.680756, 42.017590>,  <40.161633, 41.414555, 42.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251484, 41.680756, 42.017590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945808, -0.324686, -0.005087,
		-0.234495, -0.672079, -0.702369,
		0.224631, 0.665499, -0.711795,
		40.318874, 41.880405, 41.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417114, 41.194851, 41.672523>,  <40.161633, 41.414555, 42.302307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417114, 41.194851, 41.672523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578987, 41.560406, 41.685444>,  <40.676109, 41.779739, 41.693195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578987, 41.560406, 41.685444>,  <40.417114, 41.194851, 41.672523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578987, 41.560406, 41.685444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896018, -0.389219, -0.213683,
		-0.182710, 0.115414, -0.976369,
		0.404683, 0.913886, 0.032299,
		40.700394, 41.834572, 41.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561745, 41.398060, 41.111767>,  <40.417114, 41.194851, 41.672523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561745, 41.398060, 41.111767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823956, 41.595028, 41.340786>,  <40.981281, 41.713207, 41.478199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823956, 41.595028, 41.340786>,  <40.561745, 41.398060, 41.111767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823956, 41.595028, 41.340786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751792, -0.353842, -0.556421,
		-0.071400, 0.795185, -0.602149,
		0.655523, 0.492419, 0.572549,
		41.020611, 41.742752, 41.512550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121922, 41.849022, 40.743183>,  <40.561745, 41.398060, 41.111767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121922, 41.849022, 40.743183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213421, 41.689682, 41.098484>,  <41.268318, 41.594078, 41.311665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213421, 41.689682, 41.098484>,  <41.121922, 41.849022, 40.743183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213421, 41.689682, 41.098484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751480, -0.507774, -0.421241,
		0.618833, 0.763860, 0.183203,
		0.228744, -0.398351, 0.888252,
		41.282043, 41.570175, 41.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778553, 41.814346, 40.770626>,  <41.121922, 41.849022, 40.743183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778553, 41.814346, 40.770626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707153, 41.541286, 41.054070>,  <41.664314, 41.377453, 41.224136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707153, 41.541286, 41.054070>,  <41.778553, 41.814346, 40.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707153, 41.541286, 41.054070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637550, -0.628788, -0.445146,
		0.749445, 0.372315, 0.547462,
		-0.178503, -0.682647, 0.708612,
		41.653603, 41.336491, 41.266651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439056, 41.630409, 41.066776>,  <41.778553, 41.814346, 40.770626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439056, 41.630409, 41.066776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153107, 41.350712, 41.067680>,  <41.981537, 41.182892, 41.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153107, 41.350712, 41.067680>,  <42.439056, 41.630409, 41.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153107, 41.350712, 41.067680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653334, -0.669083, -0.354236,
		0.249210, -0.251759, 0.935154,
		-0.714877, -0.699246, 0.002260,
		41.938644, 41.140938, 41.068359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796112, 41.071316, 41.226768>,  <42.439056, 41.630409, 41.066776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796112, 41.071316, 41.226768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453785, 40.931660, 41.074100>,  <42.248386, 40.847866, 40.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453785, 40.931660, 41.074100>,  <42.796112, 41.071316, 41.226768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453785, 40.931660, 41.074100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504639, -0.725625, -0.467770,
		-0.113632, -0.592933, 0.797194,
		-0.855820, -0.349141, -0.381671,
		42.197041, 40.826916, 40.959599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834595, 40.397232, 41.275688>,  <42.796112, 41.071316, 41.226768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834595, 40.397232, 41.275688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545769, 40.417465, 40.999699>,  <42.372475, 40.429604, 40.834106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545769, 40.417465, 40.999699>,  <42.834595, 40.397232, 41.275688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545769, 40.417465, 40.999699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279342, -0.891095, -0.357656,
		-0.632922, -0.450990, 0.629300,
		-0.722065, 0.050579, -0.689974,
		42.329151, 40.432640, 40.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483868, 39.778435, 41.269051>,  <42.834595, 40.397232, 41.275688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483868, 39.778435, 41.269051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396561, 39.949104, 40.917984>,  <42.344177, 40.051506, 40.707344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396561, 39.949104, 40.917984>,  <42.483868, 39.778435, 41.269051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396561, 39.949104, 40.917984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338867, -0.810257, -0.478177,
		-0.915165, -0.401785, 0.032268,
		-0.218270, 0.426676, -0.877671,
		42.331081, 40.077106, 40.654682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236237, 39.210838, 40.845627>,  <42.483868, 39.778435, 41.269051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236237, 39.210838, 40.845627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354137, 39.513130, 40.611706>,  <42.424877, 39.694508, 40.471355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354137, 39.513130, 40.611706>,  <42.236237, 39.210838, 40.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354137, 39.513130, 40.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508105, -0.642253, -0.573882,
		-0.809291, -0.127987, -0.573296,
		0.294751, 0.755732, -0.584800,
		42.442562, 39.739849, 40.436264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025875, 39.045040, 40.237808>,  <42.236237, 39.210838, 40.845627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025875, 39.045040, 40.237808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313751, 39.312237, 40.162090>,  <42.486477, 39.472557, 40.116657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313751, 39.312237, 40.162090>,  <42.025875, 39.045040, 40.237808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313751, 39.312237, 40.162090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470594, -0.669784, -0.574396,
		-0.510484, 0.324302, -0.796389,
		0.719686, 0.667996, -0.189299,
		42.529655, 39.512634, 40.105301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025024, 39.141449, 39.471146>,  <42.025875, 39.045040, 40.237808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025024, 39.141449, 39.471146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377979, 39.219471, 39.642426>,  <42.589752, 39.266285, 39.745193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377979, 39.219471, 39.642426>,  <42.025024, 39.141449, 39.471146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377979, 39.219471, 39.642426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458111, -0.563829, -0.687191,
		0.107390, 0.802528, -0.586870,
		0.882384, 0.195054, 0.428196,
		42.642696, 39.277988, 39.770885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475140, 39.183510, 38.936558>,  <42.025024, 39.141449, 39.471146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475140, 39.183510, 38.936558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734253, 39.117733, 39.234104>,  <42.889721, 39.078266, 39.412632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734253, 39.117733, 39.234104>,  <42.475140, 39.183510, 38.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734253, 39.117733, 39.234104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525996, -0.609792, -0.592859,
		0.551092, 0.775315, -0.308519,
		0.647785, -0.164440, 0.743864,
		42.928589, 39.068401, 39.457264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102848, 39.210236, 38.595329>,  <42.475140, 39.183510, 38.936558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102848, 39.210236, 38.595329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194710, 39.030910, 38.940876>,  <43.249828, 38.923313, 39.148205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194710, 39.030910, 38.940876>,  <43.102848, 39.210236, 38.595329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194710, 39.030910, 38.940876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506136, -0.703119, -0.499449,
		0.831314, 0.551938, 0.065432,
		0.229659, -0.448316, 0.863869,
		43.263607, 38.896416, 39.200035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787384, 39.036839, 38.587791>,  <43.102848, 39.210236, 38.595329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787384, 39.036839, 38.587791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638149, 38.781372, 38.856983>,  <43.548607, 38.628090, 39.018497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638149, 38.781372, 38.856983>,  <43.787384, 39.036839, 38.587791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638149, 38.781372, 38.856983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450365, -0.758835, -0.470468,
		0.811157, 0.127562, 0.570747,
		-0.373090, -0.638668, 0.672984,
		43.526222, 38.589771, 39.058880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285900, 38.571411, 38.684544>,  <43.787384, 39.036839, 38.587791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285900, 38.571411, 38.684544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005997, 38.356434, 38.872799>,  <43.838055, 38.227448, 38.985752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005997, 38.356434, 38.872799>,  <44.285900, 38.571411, 38.684544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005997, 38.356434, 38.872799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324243, -0.825972, -0.461125,
		0.636559, -0.170076, 0.752241,
		-0.699757, -0.537442, 0.470634,
		43.796070, 38.195202, 39.013988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619141, 38.108807, 39.114826>,  <44.285900, 38.571411, 38.684544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619141, 38.108807, 39.114826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265850, 37.972034, 38.986458>,  <44.053875, 37.889973, 38.909435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265850, 37.972034, 38.986458>,  <44.619141, 38.108807, 39.114826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265850, 37.972034, 38.986458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468844, -0.657711, -0.589578,
		-0.009479, -0.671194, 0.741221,
		-0.883230, -0.341929, -0.320920,
		44.000881, 37.869457, 38.890182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750923, 37.340557, 38.979752>,  <44.619141, 38.108807, 39.114826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750923, 37.340557, 38.979752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401714, 37.409412, 38.797234>,  <44.192188, 37.450726, 38.687721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401714, 37.409412, 38.797234>,  <44.750923, 37.340557, 38.979752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401714, 37.409412, 38.797234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236032, -0.669615, -0.704205,
		-0.426758, -0.722486, 0.543959,
		-0.873021, 0.172134, -0.456294,
		44.139809, 37.461052, 38.660347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327351, 36.604622, 38.918018>,  <44.750923, 37.340557, 38.979752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327351, 36.604622, 38.918018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192383, 36.879551, 38.660728>,  <44.111401, 37.044506, 38.506355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192383, 36.879551, 38.660728>,  <44.327351, 36.604622, 38.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192383, 36.879551, 38.660728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118328, -0.646911, -0.753329,
		-0.933888, -0.330299, 0.136951,
		-0.337419, 0.687321, -0.643226,
		44.091156, 37.085747, 38.467762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923454, 36.210682, 38.541435>,  <44.327351, 36.604622, 38.918018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923454, 36.210682, 38.541435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962780, 36.539669, 38.317333>,  <43.986374, 36.737061, 38.182873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962780, 36.539669, 38.317333>,  <43.923454, 36.210682, 38.541435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962780, 36.539669, 38.317333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004530, -0.563342, -0.826212,
		-0.995146, 0.078687, -0.059108,
		0.098310, 0.822469, -0.560250,
		43.992271, 36.786411, 38.149258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379543, 36.241196, 38.174603>,  <43.923454, 36.210682, 38.541435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379543, 36.241196, 38.174603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660591, 36.437096, 37.968117>,  <43.829220, 36.554634, 37.844227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660591, 36.437096, 37.968117>,  <43.379543, 36.241196, 38.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660591, 36.437096, 37.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161502, -0.596765, -0.785996,
		-0.692997, 0.635624, -0.340203,
		0.702619, 0.489749, -0.516210,
		43.871376, 36.584019, 37.813255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122803, 36.286705, 37.521645>,  <43.379543, 36.241196, 38.174603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122803, 36.286705, 37.521645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510231, 36.365257, 37.460571>,  <43.742687, 36.412388, 37.423927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510231, 36.365257, 37.460571>,  <43.122803, 36.286705, 37.521645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510231, 36.365257, 37.460571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012179, -0.650499, -0.759409,
		-0.248448, 0.733681, -0.632445,
		0.968569, 0.196376, -0.152679,
		43.800800, 36.424171, 37.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153297, 36.553101, 36.837799>,  <43.122803, 36.286705, 37.521645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153297, 36.553101, 36.837799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513931, 36.404247, 36.926041>,  <43.730312, 36.314934, 36.978985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513931, 36.404247, 36.926041>,  <43.153297, 36.553101, 36.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513931, 36.404247, 36.926041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025813, -0.462748, -0.886114,
		0.431838, 0.804599, -0.407599,
		0.901582, -0.372136, 0.220601,
		43.784405, 36.292606, 36.992222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634422, 36.654621, 36.218914>,  <43.153297, 36.553101, 36.837799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634422, 36.654621, 36.218914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800709, 36.366261, 36.440716>,  <43.900482, 36.193245, 36.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800709, 36.366261, 36.440716>,  <43.634422, 36.654621, 36.218914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800709, 36.366261, 36.440716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244450, -0.498684, -0.831600,
		0.876026, 0.481260, -0.031088,
		0.415719, -0.720904, 0.554505,
		43.925423, 36.149990, 36.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306747, 36.510765, 35.816170>,  <43.634422, 36.654621, 36.218914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306747, 36.510765, 35.816170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218227, 36.209671, 36.064171>,  <44.165115, 36.029015, 36.212975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218227, 36.209671, 36.064171>,  <44.306747, 36.510765, 35.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218227, 36.209671, 36.064171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275471, -0.658132, -0.700699,
		0.935490, 0.015727, 0.353004,
		-0.221304, -0.752739, 0.620008,
		44.151836, 35.983849, 36.250172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865971, 36.080555, 35.861916>,  <44.306747, 36.510765, 35.816170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865971, 36.080555, 35.861916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537899, 35.861557, 35.928310>,  <44.341057, 35.730160, 35.968147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537899, 35.861557, 35.928310>,  <44.865971, 36.080555, 35.861916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537899, 35.861557, 35.928310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231531, -0.582965, -0.778810,
		0.523160, -0.600333, 0.604899,
		-0.820181, -0.547495, 0.165988,
		44.291843, 35.697308, 35.978107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065678, 35.454365, 35.908028>,  <44.865971, 36.080555, 35.861916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065678, 35.454365, 35.908028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690708, 35.447430, 35.768921>,  <44.465729, 35.443268, 35.685455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690708, 35.447430, 35.768921>,  <45.065678, 35.454365, 35.908028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690708, 35.447430, 35.768921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296435, -0.563697, -0.770955,
		-0.182669, -0.825800, 0.533561,
		-0.937421, -0.017336, -0.347766,
		44.409481, 35.442230, 35.664593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756123, 35.554562, 35.558395>,  <45.065678, 35.454365, 35.908028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756123, 35.554562, 35.558395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124157, 35.595673, 35.709595>,  <46.344978, 35.620338, 35.800316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124157, 35.595673, 35.709595>,  <45.756123, 35.554562, 35.558395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124157, 35.595673, 35.709595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030168, -0.943509, 0.329970,
		0.390563, -0.315003, -0.865005,
		0.920082, 0.102779, 0.378003,
		46.400181, 35.626507, 35.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079990, 34.932598, 35.225506>,  <45.756123, 35.554562, 35.558395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079990, 34.932598, 35.225506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250633, 35.078136, 35.556713>,  <46.353020, 35.165459, 35.755440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250633, 35.078136, 35.556713>,  <46.079990, 34.932598, 35.225506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250633, 35.078136, 35.556713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194285, -0.931006, 0.308999,
		0.883322, 0.029051, -0.467866,
		0.426609, 0.363846, 0.828022,
		46.378616, 35.187290, 35.805119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793800, 34.834126, 35.204296>,  <46.079990, 34.932598, 35.225506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793800, 34.834126, 35.204296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655659, 34.838997, 35.579655>,  <46.572773, 34.841919, 35.804871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655659, 34.838997, 35.579655>,  <46.793800, 34.834126, 35.204296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655659, 34.838997, 35.579655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319496, -0.938660, 0.129764,
		0.882413, 0.344628, 0.320280,
		-0.345354, 0.012178, 0.938393,
		46.552052, 34.842651, 35.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417843, 34.544796, 35.075981>,  <46.793800, 34.834126, 35.204296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417843, 34.544796, 35.075981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762638, 34.730377, 34.994267>,  <47.969513, 34.841724, 34.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762638, 34.730377, 34.994267>,  <47.417843, 34.544796, 35.075981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762638, 34.730377, 34.994267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467509, 0.883353, 0.033521,
		0.196008, 0.066610, 0.978337,
		0.861984, 0.463952, -0.204285,
		48.021233, 34.869564, 34.932980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.705914, 34.002438, 45.822590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334202, 33.942879, 45.957806>,  <35.111176, 33.907143, 46.038933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334202, 33.942879, 45.957806>,  <35.705914, 34.002438, 45.822590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334202, 33.942879, 45.957806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359767, 0.157446, -0.919662,
		0.083719, -0.976237, -0.199882,
		-0.929278, -0.148904, 0.338037,
		35.055420, 33.898209, 46.059216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407398, 33.543545, 45.266521>,  <35.705914, 34.002438, 45.822590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407398, 33.543545, 45.266521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086143, 33.683651, 45.459309>,  <34.893391, 33.767715, 45.574982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086143, 33.683651, 45.459309>,  <35.407398, 33.543545, 45.266521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086143, 33.683651, 45.459309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429296, 0.220733, -0.875775,
		-0.413137, -0.910271, -0.026912,
		-0.803133, 0.350262, 0.481968,
		34.845203, 33.788731, 45.603901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788536, 33.127964, 44.963898>,  <35.407398, 33.543545, 45.266521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788536, 33.127964, 44.963898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694431, 33.473549, 45.141987>,  <34.637966, 33.680901, 45.248840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694431, 33.473549, 45.141987>,  <34.788536, 33.127964, 44.963898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694431, 33.473549, 45.141987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396633, 0.332855, -0.855506,
		-0.887317, -0.377861, 0.264366,
		-0.235266, 0.863961, 0.445220,
		34.623852, 33.732738, 45.275555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231606, 33.270042, 44.818592>,  <34.788536, 33.127964, 44.963898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231606, 33.270042, 44.818592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296623, 33.658546, 44.888153>,  <34.335632, 33.891647, 44.929890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296623, 33.658546, 44.888153>,  <34.231606, 33.270042, 44.818592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296623, 33.658546, 44.888153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588006, 0.236876, -0.773395,
		-0.792358, 0.023453, 0.609606,
		0.162540, 0.971257, 0.173900,
		34.345387, 33.949924, 44.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616905, 33.544849, 44.827763>,  <34.231606, 33.270042, 44.818592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616905, 33.544849, 44.827763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879692, 33.838779, 44.760323>,  <34.037365, 34.015137, 44.719856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879692, 33.838779, 44.760323>,  <33.616905, 33.544849, 44.827763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879692, 33.838779, 44.760323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429615, 0.181114, -0.884663,
		-0.619536, 0.653628, 0.434677,
		0.656967, 0.734825, -0.168602,
		34.076782, 34.059227, 44.709743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224167, 34.153851, 44.520306>,  <33.616905, 33.544849, 44.827763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224167, 34.153851, 44.520306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606976, 34.214920, 44.421673>,  <33.836658, 34.251560, 44.362492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606976, 34.214920, 44.421673>,  <33.224167, 34.153851, 44.520306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606976, 34.214920, 44.421673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272515, 0.182449, -0.944694,
		-0.099239, 0.971290, 0.216212,
		0.957020, 0.152672, -0.246585,
		33.894081, 34.260723, 44.347698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246140, 34.690445, 43.998699>,  <33.224167, 34.153851, 44.520306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246140, 34.690445, 43.998699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598385, 34.510315, 43.939743>,  <33.809734, 34.402237, 43.904369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598385, 34.510315, 43.939743>,  <33.246140, 34.690445, 43.998699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598385, 34.510315, 43.939743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099696, 0.128003, -0.986750,
		0.463223, 0.883642, 0.067827,
		0.880616, -0.450323, -0.147390,
		33.862568, 34.375217, 43.895527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435303, 35.004826, 43.444077>,  <33.246140, 34.690445, 43.998699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435303, 35.004826, 43.444077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.676315, 34.685604, 43.440956>,  <33.820923, 34.494072, 43.439083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.676315, 34.685604, 43.440956>,  <33.435303, 35.004826, 43.444077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676315, 34.685604, 43.440956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030030, -0.012905, -0.999466,
		0.797527, 0.602447, -0.031742,
		0.602535, -0.798054, -0.007799,
		33.857075, 34.446186, 43.438618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892426, 35.080040, 42.970478>,  <33.435303, 35.004826, 43.444077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892426, 35.080040, 42.970478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.969299, 34.688808, 43.002525>,  <34.015423, 34.454067, 43.021751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.969299, 34.688808, 43.002525>,  <33.892426, 35.080040, 42.970478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969299, 34.688808, 43.002525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165606, -0.048142, -0.985016,
		0.967284, 0.202577, 0.152724,
		0.192189, -0.978082, 0.080115,
		34.026955, 34.395382, 43.026562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494064, 34.947334, 42.632412>,  <33.892426, 35.080040, 42.970478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494064, 34.947334, 42.632412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295277, 34.601067, 42.656559>,  <34.176003, 34.393307, 42.671047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295277, 34.601067, 42.656559>,  <34.494064, 34.947334, 42.632412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295277, 34.601067, 42.656559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113848, -0.134003, -0.984419,
		0.860268, -0.482352, 0.165150,
		-0.496968, -0.865667, 0.060363,
		34.146187, 34.341366, 42.674667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914749, 34.514603, 42.246922>,  <34.494064, 34.947334, 42.632412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914749, 34.514603, 42.246922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563026, 34.324104, 42.247860>,  <34.351994, 34.209805, 42.248425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563026, 34.324104, 42.247860>,  <34.914749, 34.514603, 42.246922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563026, 34.324104, 42.247860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076551, -0.146202, -0.986289,
		0.470061, -0.867072, 0.165014,
		-0.879308, -0.476248, 0.002348,
		34.299232, 34.181229, 42.248566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969143, 33.841747, 41.826260>,  <34.914749, 34.514603, 42.246922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969143, 33.841747, 41.826260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.573887, 33.902748, 41.819191>,  <34.336731, 33.939350, 41.814949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.573887, 33.902748, 41.819191>,  <34.969143, 33.841747, 41.826260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573887, 33.902748, 41.819191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011663, -0.040213, -0.999123,
		-0.153085, -0.987484, 0.037957,
		-0.988144, 0.152508, -0.017673,
		34.277443, 33.948502, 41.813889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708061, 33.420959, 41.373779>,  <34.969143, 33.841747, 41.826260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708061, 33.420959, 41.373779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435940, 33.713097, 41.398422>,  <34.272667, 33.888378, 41.413208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435940, 33.713097, 41.398422>,  <34.708061, 33.420959, 41.373779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435940, 33.713097, 41.398422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008020, 0.076633, -0.997027,
		-0.732891, -0.678771, -0.046276,
		-0.680299, 0.730341, 0.061607,
		34.231850, 33.932198, 41.416904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088779, 33.266617, 40.912498>,  <34.708061, 33.420959, 41.373779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088779, 33.266617, 40.912498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047791, 33.660484, 40.968956>,  <34.023197, 33.896805, 41.002831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047791, 33.660484, 40.968956>,  <34.088779, 33.266617, 40.912498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047791, 33.660484, 40.968956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057797, 0.147541, -0.987366,
		-0.993055, -0.093021, -0.072030,
		-0.102474, 0.984672, 0.141140,
		34.017048, 33.955887, 41.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617859, 33.449936, 40.501209>,  <34.088779, 33.266617, 40.912498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617859, 33.449936, 40.501209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797760, 33.801025, 40.567329>,  <33.905701, 34.011681, 40.607002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797760, 33.801025, 40.567329>,  <33.617859, 33.449936, 40.501209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797760, 33.801025, 40.567329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036496, 0.202979, -0.978503,
		-0.892406, 0.434053, 0.123324,
		0.449754, 0.877723, 0.165298,
		33.932686, 34.064342, 40.616920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316948, 33.938160, 40.001652>,  <33.617859, 33.449936, 40.501209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316948, 33.938160, 40.001652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.629936, 34.155109, 40.124004>,  <33.817730, 34.285278, 40.197414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.629936, 34.155109, 40.124004>,  <33.316948, 33.938160, 40.001652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629936, 34.155109, 40.124004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114448, 0.357592, -0.926838,
		-0.612073, 0.760236, 0.217734,
		0.782475, 0.542374, 0.305881,
		33.864677, 34.317822, 40.215767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083641, 34.598866, 39.769882>,  <33.316948, 33.938160, 40.001652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083641, 34.598866, 39.769882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.479336, 34.586651, 39.827133>,  <33.716751, 34.579323, 39.861485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.479336, 34.586651, 39.827133>,  <33.083641, 34.598866, 39.769882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479336, 34.586651, 39.827133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144622, 0.353786, -0.924078,
		-0.022414, 0.934828, 0.354394,
		0.989233, -0.030541, 0.143126,
		33.776104, 34.577488, 39.870071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334393, 35.322189, 39.544724>,  <33.083641, 34.598866, 39.769882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334393, 35.322189, 39.544724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643307, 35.068134, 39.539371>,  <33.828655, 34.915699, 39.536160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643307, 35.068134, 39.539371>,  <33.334393, 35.322189, 39.544724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643307, 35.068134, 39.539371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260881, 0.336278, -0.904908,
		0.579243, 0.695352, 0.425398,
		0.772281, -0.635140, -0.013382,
		33.874992, 34.877594, 39.535358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861012, 35.727680, 39.287834>,  <33.334393, 35.322189, 39.544724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861012, 35.727680, 39.287834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966209, 35.347431, 39.221928>,  <34.029327, 35.119282, 39.182384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966209, 35.347431, 39.221928>,  <33.861012, 35.727680, 39.287834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966209, 35.347431, 39.221928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335011, 0.250137, -0.908405,
		0.904764, 0.183710, 0.384255,
		0.262999, -0.950622, -0.164770,
		34.045109, 35.062244, 39.172497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558041, 35.724075, 38.979755>,  <33.861012, 35.727680, 39.287834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558041, 35.724075, 38.979755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.470066, 35.349308, 38.871078>,  <34.417282, 35.124447, 38.805870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.470066, 35.349308, 38.871078>,  <34.558041, 35.724075, 38.979755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470066, 35.349308, 38.871078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495519, 0.132612, -0.858414,
		0.840291, -0.323427, 0.435093,
		-0.219935, -0.936915, -0.271697,
		34.404087, 35.068233, 38.789570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146168, 35.496258, 38.713375>,  <34.558041, 35.724075, 38.979755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146168, 35.496258, 38.713375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866188, 35.248734, 38.570747>,  <34.698200, 35.100220, 38.485172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866188, 35.248734, 38.570747>,  <35.146168, 35.496258, 38.713375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866188, 35.248734, 38.570747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446078, 0.011096, -0.894926,
		0.557749, -0.785459, 0.268273,
		-0.699951, -0.618814, -0.356565,
		34.656204, 35.063091, 38.463779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508251, 34.976543, 38.559795>,  <35.146168, 35.496258, 38.713375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508251, 34.976543, 38.559795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171684, 34.962978, 38.344067>,  <34.969746, 34.954838, 38.214630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171684, 34.962978, 38.344067>,  <35.508251, 34.976543, 38.559795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171684, 34.962978, 38.344067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523009, -0.302172, -0.796965,
		-0.135940, -0.952650, 0.271989,
		-0.841416, -0.033914, -0.539322,
		34.919258, 34.952805, 38.182270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868298, 34.700043, 37.949802>,  <35.508251, 34.976543, 38.559795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868298, 34.700043, 37.949802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227516, 34.782078, 37.794136>,  <36.443047, 34.831299, 37.700737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227516, 34.782078, 37.794136>,  <35.868298, 34.700043, 37.949802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227516, 34.782078, 37.794136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437854, -0.331478, 0.835707,
		0.042390, -0.920903, -0.387481,
		0.898046, 0.205086, -0.389170,
		36.496929, 34.843605, 37.677383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219315, 34.093872, 38.138073>,  <35.868298, 34.700043, 37.949802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219315, 34.093872, 38.138073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490093, 34.378822, 38.064037>,  <36.652561, 34.549793, 38.019615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490093, 34.378822, 38.064037>,  <36.219315, 34.093872, 38.138073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490093, 34.378822, 38.064037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504064, -0.265457, 0.821859,
		0.536339, -0.649655, -0.538784,
		0.676949, 0.712377, -0.185093,
		36.693176, 34.592537, 38.008511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991734, 33.768646, 38.229073>,  <36.219315, 34.093872, 38.138073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991734, 33.768646, 38.229073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009991, 34.166828, 38.262520>,  <37.020947, 34.405735, 38.282589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009991, 34.166828, 38.262520>,  <36.991734, 33.768646, 38.229073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009991, 34.166828, 38.262520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566713, -0.094732, 0.818451,
		0.822650, 0.010027, -0.568460,
		0.045645, 0.995452, 0.083614,
		37.023685, 34.465466, 38.287605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712246, 34.083622, 38.244339>,  <36.991734, 33.768646, 38.229073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712246, 34.083622, 38.244339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492088, 34.354404, 38.439808>,  <37.359993, 34.516872, 38.557087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492088, 34.354404, 38.439808>,  <37.712246, 34.083622, 38.244339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492088, 34.354404, 38.439808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614183, -0.068181, 0.786213,
		0.565550, 0.732858, -0.378249,
		-0.550393, 0.676957, 0.488668,
		37.326969, 34.557491, 38.586407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157116, 34.371780, 38.728607>,  <37.712246, 34.083622, 38.244339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157116, 34.371780, 38.728607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804691, 34.509731, 38.858097>,  <37.593239, 34.592503, 38.935791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804691, 34.509731, 38.858097>,  <38.157116, 34.371780, 38.728607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804691, 34.509731, 38.858097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362681, 0.053225, 0.930392,
		0.303640, 0.937138, -0.171974,
		-0.881059, 0.344876, 0.323721,
		37.540375, 34.613194, 38.955212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356525, 34.870220, 39.105602>,  <38.157116, 34.371780, 38.728607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356525, 34.870220, 39.105602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988544, 34.776230, 39.231129>,  <37.767757, 34.719837, 39.306442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988544, 34.776230, 39.231129>,  <38.356525, 34.870220, 39.105602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988544, 34.776230, 39.231129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291425, 0.125535, 0.948321,
		-0.262227, 0.963860, -0.047008,
		-0.919950, -0.234976, 0.313812,
		37.712559, 34.705738, 39.325272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104778, 35.385178, 39.700378>,  <38.356525, 34.870220, 39.105602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104778, 35.385178, 39.700378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855362, 35.073338, 39.723766>,  <37.705711, 34.886234, 39.737797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855362, 35.073338, 39.723766>,  <38.104778, 35.385178, 39.700378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855362, 35.073338, 39.723766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123190, -0.024126, 0.992090,
		-0.772027, 0.625807, 0.111083,
		-0.623537, -0.779605, 0.058467,
		37.668301, 34.839455, 39.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422871, 35.594498, 40.036003>,  <38.104778, 35.385178, 39.700378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422871, 35.594498, 40.036003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456291, 35.201416, 40.102097>,  <37.476345, 34.965565, 40.141754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456291, 35.201416, 40.102097>,  <37.422871, 35.594498, 40.036003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456291, 35.201416, 40.102097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041477, 0.162243, 0.985879,
		-0.995640, -0.089226, -0.027204,
		0.083553, -0.982709, 0.165236,
		37.481358, 34.906605, 40.151669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860931, 35.474247, 40.442280>,  <37.422871, 35.594498, 40.036003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860931, 35.474247, 40.442280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124439, 35.175671, 40.479885>,  <37.282543, 34.996525, 40.502449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124439, 35.175671, 40.479885>,  <36.860931, 35.474247, 40.442280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124439, 35.175671, 40.479885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052474, 0.079069, 0.995487,
		-0.750509, -0.660734, 0.012919,
		0.658773, -0.746444, 0.094013,
		37.322071, 34.951736, 40.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639938, 35.181793, 41.061001>,  <36.860931, 35.474247, 40.442280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639938, 35.181793, 41.061001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020195, 35.061512, 41.030399>,  <37.248348, 34.989342, 41.012039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020195, 35.061512, 41.030399>,  <36.639938, 35.181793, 41.061001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020195, 35.061512, 41.030399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103117, 0.073639, 0.991940,
		-0.292645, -0.950871, 0.101012,
		0.950645, -0.300703, -0.076501,
		37.305389, 34.971302, 41.007450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671799, 34.856728, 41.620377>,  <36.639938, 35.181793, 41.061001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671799, 34.856728, 41.620377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062927, 34.882057, 41.540524>,  <37.297604, 34.897255, 41.492611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062927, 34.882057, 41.540524>,  <36.671799, 34.856728, 41.620377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062927, 34.882057, 41.540524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179346, 0.239092, 0.954290,
		0.108158, -0.968930, 0.222433,
		0.977822, 0.063321, -0.199634,
		37.356274, 34.901054, 41.480633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939789, 34.341446, 42.042877>,  <36.671799, 34.856728, 41.620377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939789, 34.341446, 42.042877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237953, 34.585690, 41.935909>,  <37.416851, 34.732235, 41.871731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.237953, 34.585690, 41.935909>,  <36.939789, 34.341446, 42.042877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237953, 34.585690, 41.935909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291699, 0.061928, 0.954503,
		0.599392, -0.789504, -0.131954,
		0.745413, 0.610613, -0.267417,
		37.461578, 34.768875, 41.855682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615356, 34.068157, 42.299202>,  <36.939789, 34.341446, 42.042877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615356, 34.068157, 42.299202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673054, 34.461197, 42.252407>,  <37.707672, 34.697021, 42.224331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673054, 34.461197, 42.252407>,  <37.615356, 34.068157, 42.299202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673054, 34.461197, 42.252407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185581, 0.089267, 0.978566,
		0.971985, -0.162860, -0.169476,
		0.144240, 0.982603, -0.116990,
		37.716328, 34.755978, 42.217312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140060, 34.182796, 42.713280>,  <37.615356, 34.068157, 42.299202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140060, 34.182796, 42.713280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988567, 34.551304, 42.677898>,  <37.897671, 34.772408, 42.656670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988567, 34.551304, 42.677898>,  <38.140060, 34.182796, 42.713280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988567, 34.551304, 42.677898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008116, 0.098879, 0.995066,
		0.925470, 0.376148, -0.044926,
		-0.378734, 0.921269, -0.088457,
		37.874947, 34.827686, 42.651360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619492, 34.679619, 43.124592>,  <38.140060, 34.182796, 42.713280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619492, 34.679619, 43.124592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264233, 34.859905, 43.088684>,  <38.051079, 34.968075, 43.067139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264233, 34.859905, 43.088684>,  <38.619492, 34.679619, 43.124592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264233, 34.859905, 43.088684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037213, 0.124157, 0.991564,
		0.458055, 0.883993, -0.093497,
		-0.888145, 0.450711, -0.089766,
		37.997787, 34.995117, 43.061752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616451, 35.433544, 43.616848>,  <38.619492, 34.679619, 43.124592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616451, 35.433544, 43.616848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253307, 35.278564, 43.552765>,  <38.035419, 35.185577, 43.514317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253307, 35.278564, 43.552765>,  <38.616451, 35.433544, 43.616848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253307, 35.278564, 43.552765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130074, -0.102975, 0.986142,
		-0.398579, 0.916121, 0.043090,
		-0.907863, -0.387451, -0.160207,
		37.980949, 35.162331, 43.504704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363586, 35.604923, 44.217548>,  <38.616451, 35.433544, 43.616848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363586, 35.604923, 44.217548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076187, 35.359108, 44.087254>,  <37.903748, 35.211620, 44.009075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076187, 35.359108, 44.087254>,  <38.363586, 35.604923, 44.217548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076187, 35.359108, 44.087254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333644, -0.106400, 0.936675,
		-0.610278, 0.781681, -0.128588,
		-0.718500, -0.614535, -0.325737,
		37.860638, 35.174747, 43.989532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821918, 35.743084, 44.601471>,  <38.363586, 35.604923, 44.217548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821918, 35.743084, 44.601471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725307, 35.376110, 44.474998>,  <37.667339, 35.155926, 44.399117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725307, 35.376110, 44.474998>,  <37.821918, 35.743084, 44.601471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725307, 35.376110, 44.474998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179234, -0.278046, 0.943698,
		-0.953697, 0.284604, -0.097279,
		-0.241532, -0.917437, -0.316182,
		37.652847, 35.100880, 44.380142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.266842, 35.536747, 45.050087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357319, 35.182892, 44.886986>,  <37.411606, 34.970581, 44.789127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357319, 35.182892, 44.886986>,  <37.266842, 35.536747, 45.050087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357319, 35.182892, 44.886986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031615, -0.425044, 0.904620,
		-0.973571, -0.191723, -0.124108,
		0.226188, -0.884635, -0.407749,
		37.425175, 34.917500, 44.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763397, 35.072781, 45.352882>,  <37.266842, 35.536747, 45.050087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763397, 35.072781, 45.352882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054653, 34.839493, 45.208847>,  <37.229408, 34.699520, 45.122425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054653, 34.839493, 45.208847>,  <36.763397, 35.072781, 45.352882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054653, 34.839493, 45.208847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008467, -0.517650, 0.855551,
		-0.685373, -0.626012, -0.371984,
		0.728143, -0.583222, -0.360084,
		37.273094, 34.664528, 45.100822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552204, 34.366539, 45.532024>,  <36.763397, 35.072781, 45.352882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552204, 34.366539, 45.532024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947884, 34.367630, 45.473396>,  <37.185291, 34.368286, 45.438217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947884, 34.367630, 45.473396>,  <36.552204, 34.366539, 45.532024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947884, 34.367630, 45.473396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111112, -0.666171, 0.737475,
		-0.095632, -0.745794, -0.659277,
		0.989196, 0.002727, -0.146574,
		37.244644, 34.368446, 45.429424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796715, 33.672695, 45.608921>,  <36.552204, 34.366539, 45.532024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796715, 33.672695, 45.608921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121704, 33.896858, 45.673206>,  <37.316696, 34.031357, 45.711777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121704, 33.896858, 45.673206>,  <36.796715, 33.672695, 45.608921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121704, 33.896858, 45.673206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204264, -0.531829, 0.821848,
		0.546045, -0.634901, -0.546568,
		0.812472, 0.560410, 0.160715,
		37.365444, 34.064980, 45.721420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367126, 33.188717, 45.813618>,  <36.796715, 33.672695, 45.608921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367126, 33.188717, 45.813618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430172, 33.549091, 45.975342>,  <37.467999, 33.765316, 46.072376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430172, 33.549091, 45.975342>,  <37.367126, 33.188717, 45.813618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430172, 33.549091, 45.975342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112561, -0.423148, 0.899042,
		0.981065, -0.096188, -0.168103,
		0.157609, 0.900941, 0.404309,
		37.477455, 33.819374, 46.096634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948425, 33.091938, 46.054901>,  <37.367126, 33.188717, 45.813618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948425, 33.091938, 46.054901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790997, 33.406948, 46.244598>,  <37.696541, 33.595955, 46.358418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790997, 33.406948, 46.244598>,  <37.948425, 33.091938, 46.054901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790997, 33.406948, 46.244598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277404, -0.390089, 0.877996,
		0.876441, 0.477111, -0.064935,
		-0.393571, 0.787525, 0.474242,
		37.672924, 33.643208, 46.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397831, 33.109528, 46.689995>,  <37.948425, 33.091938, 46.054901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397831, 33.109528, 46.689995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069176, 33.318733, 46.780643>,  <37.871983, 33.444256, 46.835033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069176, 33.318733, 46.780643>,  <38.397831, 33.109528, 46.689995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069176, 33.318733, 46.780643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112441, -0.241049, 0.963977,
		0.558805, 0.817525, 0.139247,
		-0.821641, 0.523018, 0.226623,
		37.822685, 33.475639, 46.848629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525162, 33.330128, 47.337200>,  <38.397831, 33.109528, 46.689995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525162, 33.330128, 47.337200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131672, 33.401981, 47.335285>,  <37.895580, 33.445095, 47.334137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131672, 33.401981, 47.335285>,  <38.525162, 33.330128, 47.337200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131672, 33.401981, 47.335285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049019, -0.242602, 0.968887,
		0.172888, 0.953349, 0.247458,
		-0.983721, 0.179639, -0.004789,
		37.836555, 33.455872, 47.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376247, 33.826157, 47.856651>,  <38.525162, 33.330128, 47.337200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376247, 33.826157, 47.856651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042126, 33.615437, 47.793732>,  <37.841652, 33.489002, 47.755981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042126, 33.615437, 47.793732>,  <38.376247, 33.826157, 47.856651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042126, 33.615437, 47.793732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052103, -0.208969, 0.976533,
		-0.547311, 0.823900, 0.147105,
		-0.835306, -0.526803, -0.157299,
		37.791534, 33.457397, 47.746544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858498, 34.132050, 48.302738>,  <38.376247, 33.826157, 47.856651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858498, 34.132050, 48.302738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757877, 33.750896, 48.234928>,  <37.697506, 33.522205, 48.194241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757877, 33.750896, 48.234928>,  <37.858498, 34.132050, 48.302738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757877, 33.750896, 48.234928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006609, -0.173462, 0.984818,
		-0.967822, 0.248850, 0.037336,
		-0.251548, -0.952882, -0.169525,
		37.682411, 33.465031, 48.184071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452095, 33.997601, 48.818436>,  <37.858498, 34.132050, 48.302738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452095, 33.997601, 48.818436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527493, 33.631744, 48.675385>,  <37.572731, 33.412231, 48.589554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527493, 33.631744, 48.675385>,  <37.452095, 33.997601, 48.818436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527493, 33.631744, 48.675385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102388, -0.343866, 0.933420,
		-0.976723, -0.212557, 0.028833,
		0.188490, -0.914645, -0.357626,
		37.584038, 33.357349, 48.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040020, 33.475479, 49.244129>,  <37.452095, 33.997601, 48.818436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040020, 33.475479, 49.244129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369839, 33.298382, 49.103214>,  <37.567730, 33.192123, 49.018665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369839, 33.298382, 49.103214>,  <37.040020, 33.475479, 49.244129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369839, 33.298382, 49.103214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201262, -0.352404, 0.913950,
		-0.528792, -0.824494, -0.201465,
		0.824544, -0.442742, -0.352288,
		37.617203, 33.165558, 48.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143642, 32.842976, 49.596584>,  <37.040020, 33.475479, 49.244129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143642, 32.842976, 49.596584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508335, 32.871864, 49.434834>,  <37.727150, 32.889198, 49.337784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508335, 32.871864, 49.434834>,  <37.143642, 32.842976, 49.596584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508335, 32.871864, 49.434834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397454, -0.403795, 0.824003,
		-0.103776, -0.911995, -0.396858,
		0.911735, 0.072221, -0.404380,
		37.781857, 32.893532, 49.313519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362999, 32.242432, 49.527058>,  <37.143642, 32.842976, 49.596584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362999, 32.242432, 49.527058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692814, 32.467667, 49.549194>,  <37.890705, 32.602806, 49.562477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692814, 32.467667, 49.549194>,  <37.362999, 32.242432, 49.527058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692814, 32.467667, 49.549194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354024, -0.589746, 0.725855,
		0.441361, -0.578904, -0.685617,
		0.824541, 0.563089, 0.055345,
		37.940178, 32.636593, 49.565796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655872, 31.888956, 50.048248>,  <37.362999, 32.242432, 49.527058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655872, 31.888956, 50.048248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895779, 32.203922, 49.991322>,  <38.039722, 32.392902, 49.957165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895779, 32.203922, 49.991322>,  <37.655872, 31.888956, 50.048248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895779, 32.203922, 49.991322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479345, -0.211148, 0.851848,
		0.640709, -0.579130, -0.504084,
		0.599767, 0.787417, -0.142319,
		38.075710, 32.440147, 49.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364906, 31.625858, 50.049000>,  <37.655872, 31.888956, 50.048248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364906, 31.625858, 50.049000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341160, 32.014320, 50.141373>,  <38.326912, 32.247398, 50.196796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341160, 32.014320, 50.141373>,  <38.364906, 31.625858, 50.049000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341160, 32.014320, 50.141373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353856, -0.195843, 0.914566,
		0.933414, 0.136013, -0.332023,
		-0.059369, 0.971157, 0.230932,
		38.323349, 32.305668, 50.210651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009384, 31.764847, 50.476067>,  <38.364906, 31.625858, 50.049000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009384, 31.764847, 50.476067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733143, 32.047520, 50.537598>,  <38.567398, 32.217125, 50.574516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733143, 32.047520, 50.537598>,  <39.009384, 31.764847, 50.476067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733143, 32.047520, 50.537598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192691, -0.025218, 0.980935,
		0.697088, 0.707082, -0.118756,
		-0.690607, 0.706682, 0.153828,
		38.525959, 32.259525, 50.583744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281055, 32.208290, 50.880009>,  <39.009384, 31.764847, 50.476067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281055, 32.208290, 50.880009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894768, 32.289169, 50.945114>,  <38.662994, 32.337696, 50.984177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894768, 32.289169, 50.945114>,  <39.281055, 32.208290, 50.880009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894768, 32.289169, 50.945114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145420, -0.097975, 0.984507,
		0.215016, 0.974431, 0.065213,
		-0.965723, 0.202202, 0.162768,
		38.605049, 32.349831, 50.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288422, 32.751740, 51.468327>,  <39.281055, 32.208290, 50.880009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288422, 32.751740, 51.468327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940342, 32.559269, 51.425957>,  <38.731495, 32.443787, 51.400536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940342, 32.559269, 51.425957>,  <39.288422, 32.751740, 51.468327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940342, 32.559269, 51.425957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015266, -0.188555, 0.981944,
		-0.492457, 0.856107, 0.156736,
		-0.870203, -0.481173, -0.105924,
		38.679279, 32.414917, 51.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842773, 33.094318, 51.965664>,  <39.288422, 32.751740, 51.468327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842773, 33.094318, 51.965664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681641, 32.735424, 51.893345>,  <38.584961, 32.520088, 51.849953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681641, 32.735424, 51.893345>,  <38.842773, 33.094318, 51.965664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681641, 32.735424, 51.893345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034565, -0.212308, 0.976591,
		-0.914622, 0.387150, 0.116537,
		-0.402829, -0.897240, -0.180800,
		38.560791, 32.466251, 51.839104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523628, 32.945206, 52.561184>,  <38.842773, 33.094318, 51.965664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523628, 32.945206, 52.561184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521355, 32.594742, 52.368389>,  <38.519989, 32.384464, 52.252712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.521355, 32.594742, 52.368389>,  <38.523628, 32.945206, 52.561184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521355, 32.594742, 52.368389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007017, -0.482022, 0.876131,
		-0.999959, 0.001597, 0.008888,
		-0.005683, -0.876158, -0.481991,
		38.519650, 32.331894, 52.223793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825390, 33.066830, 52.642284>,  <38.523628, 32.945206, 52.561184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825390, 33.066830, 52.642284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498909, 33.136093, 52.421799>,  <37.303020, 33.177650, 52.289509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498909, 33.136093, 52.421799>,  <37.825390, 33.066830, 52.642284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498909, 33.136093, 52.421799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497013, -0.696893, 0.517028,
		-0.294610, 0.695958, 0.654865,
		-0.816200, 0.173155, -0.551211,
		37.254047, 33.188038, 52.256435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217106, 33.092457, 53.046593>,  <37.825390, 33.066830, 52.642284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217106, 33.092457, 53.046593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135139, 32.963421, 52.676956>,  <37.085960, 32.886002, 52.455173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135139, 32.963421, 52.676956>,  <37.217106, 33.092457, 53.046593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135139, 32.963421, 52.676956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387324, -0.840333, 0.379236,
		-0.898882, 0.435635, 0.047254,
		-0.204918, -0.322586, -0.924092,
		37.073666, 32.866646, 52.399727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254822, 32.599979, 53.657749>,  <37.217106, 33.092457, 53.046593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254822, 32.599979, 53.657749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040714, 32.322128, 53.849987>,  <36.912251, 32.155418, 53.965332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040714, 32.322128, 53.849987>,  <37.254822, 32.599979, 53.657749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040714, 32.322128, 53.849987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397641, -0.294760, -0.868907,
		0.745230, -0.656205, -0.118437,
		-0.535271, -0.694631, 0.480598,
		36.880135, 32.113739, 53.994167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426098, 32.050110, 53.380806>,  <37.254822, 32.599979, 53.657749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426098, 32.050110, 53.380806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053055, 32.018589, 53.521683>,  <36.829231, 31.999676, 53.606209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053055, 32.018589, 53.521683>,  <37.426098, 32.050110, 53.380806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053055, 32.018589, 53.521683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348827, -0.053467, -0.935661,
		0.092564, -0.995455, 0.022375,
		-0.932605, -0.078804, 0.352190,
		36.773273, 31.994947, 53.627338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108574, 31.462198, 53.056049>,  <37.426098, 32.050110, 53.380806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108574, 31.462198, 53.056049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822674, 31.714342, 53.177235>,  <36.651134, 31.865627, 53.249947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822674, 31.714342, 53.177235>,  <37.108574, 31.462198, 53.056049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822674, 31.714342, 53.177235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356818, 0.043893, -0.933142,
		-0.601511, -0.775063, 0.193550,
		-0.714748, 0.630358, 0.302959,
		36.608250, 31.903450, 53.268124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492569, 31.161572, 52.884045>,  <37.108574, 31.462198, 53.056049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492569, 31.161572, 52.884045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387020, 31.545053, 52.926479>,  <36.323692, 31.775143, 52.951939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387020, 31.545053, 52.926479>,  <36.492569, 31.161572, 52.884045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387020, 31.545053, 52.926479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505447, -0.043763, -0.861747,
		-0.821520, -0.281010, 0.496123,
		-0.263871, 0.958707, 0.106084,
		36.307858, 31.832664, 52.958305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810661, 31.202755, 52.535084>,  <36.492569, 31.161572, 52.884045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810661, 31.202755, 52.535084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927193, 31.585203, 52.547455>,  <35.997112, 31.814672, 52.554878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927193, 31.585203, 52.547455>,  <35.810661, 31.202755, 52.535084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927193, 31.585203, 52.547455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429394, 0.159593, -0.888904,
		-0.854837, 0.245685, 0.457047,
		0.291332, 0.956122, 0.030930,
		36.014591, 31.872040, 52.556732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162739, 31.571753, 52.332489>,  <35.810661, 31.202755, 52.535084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162739, 31.571753, 52.332489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446869, 31.846539, 52.271137>,  <35.617348, 32.011410, 52.234325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446869, 31.846539, 52.271137>,  <35.162739, 31.571753, 52.332489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446869, 31.846539, 52.271137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326179, 0.128164, -0.936579,
		-0.623740, 0.715300, 0.315111,
		0.710321, 0.686965, -0.153375,
		35.659966, 32.052628, 52.225124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822762, 32.270912, 52.038033>,  <35.162739, 31.571753, 52.332489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822762, 32.270912, 52.038033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203781, 32.246841, 51.918686>,  <35.432392, 32.232399, 51.847076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203781, 32.246841, 51.918686>,  <34.822762, 32.270912, 52.038033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203781, 32.246841, 51.918686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296984, 0.030998, -0.954379,
		0.066683, 0.997706, 0.011654,
		0.952551, -0.060180, -0.298370,
		35.489548, 32.228786, 51.829174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026604, 32.824215, 51.651031>,  <34.822762, 32.270912, 52.038033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026604, 32.824215, 51.651031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314144, 32.569538, 51.539398>,  <35.486668, 32.416733, 51.472420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314144, 32.569538, 51.539398>,  <35.026604, 32.824215, 51.651031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314144, 32.569538, 51.539398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217549, 0.175256, -0.960186,
		0.660252, 0.750940, -0.012529,
		0.718846, -0.636690, -0.279079,
		35.529797, 32.378532, 51.455673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514462, 33.204094, 51.123268>,  <35.026604, 32.824215, 51.651031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514462, 33.204094, 51.123268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581497, 32.818779, 51.039368>,  <35.621719, 32.587589, 50.989029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581497, 32.818779, 51.039368>,  <35.514462, 33.204094, 51.123268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581497, 32.818779, 51.039368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103638, 0.228798, -0.967942,
		0.980394, 0.140482, 0.138177,
		0.167593, -0.963284, -0.209753,
		35.631775, 32.529793, 50.976440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043606, 33.175701, 50.633080>,  <35.514462, 33.204094, 51.123268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043606, 33.175701, 50.633080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847801, 32.830681, 50.581875>,  <35.730320, 32.623669, 50.551151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847801, 32.830681, 50.581875>,  <36.043606, 33.175701, 50.633080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847801, 32.830681, 50.581875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137451, 0.068647, -0.988127,
		0.861098, -0.501291, 0.084956,
		-0.489507, -0.862552, -0.128015,
		35.700951, 32.571915, 50.543472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247501, 32.978287, 49.936245>,  <36.043606, 33.175701, 50.633080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247501, 32.978287, 49.936245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923771, 32.758259, 50.018627>,  <35.729534, 32.626244, 50.068058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923771, 32.758259, 50.018627>,  <36.247501, 32.978287, 49.936245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923771, 32.758259, 50.018627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311116, 0.104053, -0.944658,
		0.498196, -0.828612, -0.255348,
		-0.809325, -0.550068, 0.205956,
		35.680973, 32.593239, 50.080414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292591, 32.489429, 49.515079>,  <36.247501, 32.978287, 49.936245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292591, 32.489429, 49.515079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906136, 32.468121, 49.616070>,  <35.674263, 32.455334, 49.676666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906136, 32.468121, 49.616070>,  <36.292591, 32.489429, 49.515079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906136, 32.468121, 49.616070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240188, -0.171924, -0.955381,
		0.094307, -0.983669, 0.153305,
		-0.966135, -0.053277, 0.252479,
		35.616295, 32.452137, 49.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029633, 31.954090, 49.137585>,  <36.292591, 32.489429, 49.515079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029633, 31.954090, 49.137585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718163, 32.188171, 49.228104>,  <35.531281, 32.328621, 49.282413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718163, 32.188171, 49.228104>,  <36.029633, 31.954090, 49.137585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718163, 32.188171, 49.228104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182137, 0.134310, -0.974057,
		-0.600415, -0.799686, 0.002004,
		-0.778670, 0.585203, 0.226294,
		35.484562, 32.363731, 49.295990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426331, 31.710073, 48.731655>,  <36.029633, 31.954090, 49.137585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426331, 31.710073, 48.731655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383801, 32.088543, 48.853935>,  <35.358280, 32.315624, 48.927303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383801, 32.088543, 48.853935>,  <35.426331, 31.710073, 48.731655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383801, 32.088543, 48.853935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250948, 0.271951, -0.929015,
		-0.962143, -0.175495, 0.208524,
		-0.106329, 0.946174, 0.305696,
		35.351902, 32.372395, 48.945644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978565, 32.003719, 48.224209>,  <35.426331, 31.710073, 48.731655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978565, 32.003719, 48.224209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127934, 32.328617, 48.403458>,  <35.217556, 32.523556, 48.511009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127934, 32.328617, 48.403458>,  <34.978565, 32.003719, 48.224209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127934, 32.328617, 48.403458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046398, 0.498819, -0.865463,
		-0.926501, 0.302390, 0.223957,
		0.373421, 0.812244, 0.448126,
		35.239960, 32.572289, 48.537895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580006, 32.518620, 48.026749>,  <34.978565, 32.003719, 48.224209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580006, 32.518620, 48.026749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883137, 32.733841, 48.174370>,  <35.065014, 32.862972, 48.262943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883137, 32.733841, 48.174370>,  <34.580006, 32.518620, 48.026749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883137, 32.733841, 48.174370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029268, 0.593104, -0.804594,
		-0.651803, 0.598939, 0.465216,
		0.757824, 0.538052, 0.369057,
		35.110485, 32.895256, 48.285088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396210, 33.164070, 48.028172>,  <34.580006, 32.518620, 48.026749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396210, 33.164070, 48.028172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793331, 33.210510, 48.016468>,  <35.031605, 33.238373, 48.009445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.793331, 33.210510, 48.016468>,  <34.396210, 33.164070, 48.028172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793331, 33.210510, 48.016468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104326, 0.718965, -0.687173,
		-0.058748, 0.685281, 0.725905,
		0.992807, 0.116101, -0.029254,
		35.091171, 33.245342, 48.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459221, 33.878052, 48.050510>,  <34.396210, 33.164070, 48.028172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459221, 33.878052, 48.050510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753891, 33.691353, 47.854774>,  <34.930695, 33.579334, 47.737331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753891, 33.691353, 47.854774>,  <34.459221, 33.878052, 48.050510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753891, 33.691353, 47.854774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203156, 0.537442, -0.818464,
		0.645010, 0.702355, 0.301097,
		0.736675, -0.466748, -0.489343,
		34.974892, 33.551327, 47.707970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863480, 34.471859, 47.656078>,  <34.459221, 33.878052, 48.050510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863480, 34.471859, 47.656078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949589, 34.114059, 47.499348>,  <35.001255, 33.899380, 47.405308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949589, 34.114059, 47.499348>,  <34.863480, 34.471859, 47.656078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949589, 34.114059, 47.499348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035549, 0.393789, -0.918513,
		0.975906, 0.211661, 0.052974,
		0.215274, -0.894500, -0.391825,
		35.014172, 33.845711, 47.381802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367157, 34.591007, 46.978668>,  <34.863480, 34.471859, 47.656078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367157, 34.591007, 46.978668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162872, 34.251011, 46.926991>,  <35.040302, 34.047012, 46.895985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162872, 34.251011, 46.926991>,  <35.367157, 34.591007, 46.978668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162872, 34.251011, 46.926991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297123, 0.315509, -0.901206,
		0.806778, -0.421868, -0.413685,
		-0.510712, -0.849989, -0.129199,
		35.009659, 33.996014, 46.888229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702141, 34.406811, 46.399025>,  <35.367157, 34.591007, 46.978668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702141, 34.406811, 46.399025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382168, 34.167400, 46.416351>,  <35.190186, 34.023754, 46.426746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382168, 34.167400, 46.416351>,  <35.702141, 34.406811, 46.399025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382168, 34.167400, 46.416351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251039, 0.268210, -0.930077,
		0.545058, -0.754871, -0.364803,
		-0.799932, -0.598526, 0.043312,
		35.142189, 33.987843, 46.429344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.028519, 40.058193, 41.899700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656464, 39.981617, 41.774357>,  <39.433231, 39.935673, 41.699150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656464, 39.981617, 41.774357>,  <40.028519, 40.058193, 41.899700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656464, 39.981617, 41.774357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246497, -0.958025, -0.146378,
		-0.272186, -0.213394, 0.938284,
		-0.930136, -0.191442, -0.313362,
		39.377422, 39.924183, 41.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766514, 39.494240, 42.282837>,  <40.028519, 40.058193, 41.899700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766514, 39.494240, 42.282837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.504696, 39.486481, 41.980526>,  <39.347607, 39.481823, 41.799141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.504696, 39.486481, 41.980526>,  <39.766514, 39.494240, 42.282837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504696, 39.486481, 41.980526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266441, -0.941452, -0.206586,
		-0.707518, -0.336589, 0.621392,
		-0.654545, -0.019401, -0.755774,
		39.308334, 39.480659, 41.753792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257225, 38.891853, 42.405403>,  <39.766514, 39.494240, 42.282837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257225, 38.891853, 42.405403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279484, 38.942905, 42.009300>,  <39.292839, 38.973537, 41.771637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279484, 38.942905, 42.009300>,  <39.257225, 38.891853, 42.405403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279484, 38.942905, 42.009300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083824, -0.988892, -0.122745,
		-0.994925, -0.076177, -0.065731,
		0.055651, 0.127632, -0.990259,
		39.296181, 38.981194, 41.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907219, 38.349010, 42.021809>,  <39.257225, 38.891853, 42.405403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907219, 38.349010, 42.021809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130772, 38.462700, 41.710201>,  <39.264904, 38.530914, 41.523235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130772, 38.462700, 41.710201>,  <38.907219, 38.349010, 42.021809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130772, 38.462700, 41.710201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057551, -0.950455, -0.305489,
		-0.827251, 0.125898, -0.547545,
		0.558877, 0.284227, -0.779019,
		39.298435, 38.547970, 41.476494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698128, 37.866184, 41.512962>,  <38.907219, 38.349010, 42.021809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698128, 37.866184, 41.512962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018974, 38.056316, 41.368362>,  <39.211483, 38.170395, 41.281605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018974, 38.056316, 41.368362>,  <38.698128, 37.866184, 41.512962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018974, 38.056316, 41.368362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197268, -0.782270, -0.590881,
		-0.563649, 0.402642, -0.721235,
		0.802113, 0.475326, -0.361497,
		39.259609, 38.198914, 41.259914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527210, 37.963577, 40.828175>,  <38.698128, 37.866184, 41.512962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527210, 37.963577, 40.828175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922646, 37.963058, 40.888439>,  <39.159904, 37.962746, 40.924599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922646, 37.963058, 40.888439>,  <38.527210, 37.963577, 40.828175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922646, 37.963058, 40.888439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092119, -0.786076, -0.611227,
		0.119225, 0.618128, -0.776984,
		0.988585, -0.001299, 0.150661,
		39.219219, 37.962669, 40.933636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861980, 37.815151, 40.191818>,  <38.527210, 37.963577, 40.828175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861980, 37.815151, 40.191818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158710, 37.693642, 40.430954>,  <39.336750, 37.620735, 40.574436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158710, 37.693642, 40.430954>,  <38.861980, 37.815151, 40.191818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158710, 37.693642, 40.430954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191144, -0.758745, -0.622712,
		0.642771, 0.576219, -0.504794,
		0.741828, -0.303772, 0.597840,
		39.381260, 37.602509, 40.610306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908173, 37.307510, 39.846020>,  <38.861980, 37.815151, 40.191818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908173, 37.307510, 39.846020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232704, 37.374802, 40.069962>,  <39.427425, 37.415176, 40.204327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232704, 37.374802, 40.069962>,  <38.908173, 37.307510, 39.846020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232704, 37.374802, 40.069962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500448, -0.694868, -0.516440,
		0.302147, 0.699184, -0.647958,
		0.811332, 0.168228, 0.559857,
		39.476105, 37.425270, 40.237919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515163, 37.468441, 39.494190>,  <38.908173, 37.307510, 39.846020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515163, 37.468441, 39.494190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604382, 37.274132, 39.832249>,  <39.657913, 37.157547, 40.035084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604382, 37.274132, 39.832249>,  <39.515163, 37.468441, 39.494190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604382, 37.274132, 39.832249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519804, -0.674174, -0.524684,
		0.824655, 0.556339, 0.102136,
		0.223044, -0.485774, 0.845148,
		39.671295, 37.128399, 40.085793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192104, 37.352306, 39.532967>,  <39.515163, 37.468441, 39.494190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192104, 37.352306, 39.532967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026318, 37.063480, 39.754539>,  <39.926846, 36.890186, 39.887482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026318, 37.063480, 39.754539>,  <40.192104, 37.352306, 39.532967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026318, 37.063480, 39.754539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511724, -0.688244, -0.514255,
		0.752565, 0.070318, 0.654752,
		-0.414468, -0.722063, 0.553932,
		39.901978, 36.846863, 39.920719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832344, 36.877617, 39.691990>,  <40.192104, 37.352306, 39.532967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832344, 36.877617, 39.691990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498825, 36.666954, 39.758224>,  <40.298714, 36.540558, 39.797966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498825, 36.666954, 39.758224>,  <40.832344, 36.877617, 39.691990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498825, 36.666954, 39.758224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460273, -0.828769, -0.318261,
		0.304850, -0.189148, 0.933429,
		-0.833796, -0.526654, 0.165590,
		40.248688, 36.508957, 39.807903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061581, 36.268929, 39.958000>,  <40.832344, 36.877617, 39.691990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061581, 36.268929, 39.958000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691154, 36.170132, 39.843876>,  <40.468899, 36.110855, 39.775402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691154, 36.170132, 39.843876>,  <41.061581, 36.268929, 39.958000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691154, 36.170132, 39.843876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364172, -0.783121, -0.504084,
		-0.098929, -0.570716, 0.815167,
		-0.926062, -0.246993, -0.285312,
		40.413334, 36.096035, 39.758282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989067, 35.537354, 40.059387>,  <41.061581, 36.268929, 39.958000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989067, 35.537354, 40.059387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707565, 35.623562, 39.788605>,  <40.538662, 35.675289, 39.626133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707565, 35.623562, 39.788605>,  <40.989067, 35.537354, 40.059387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707565, 35.623562, 39.788605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376504, -0.694914, -0.612650,
		-0.602468, -0.686035, 0.407907,
		-0.703760, 0.215523, -0.676958,
		40.496437, 35.688217, 39.585518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853420, 34.914951, 39.817329>,  <40.989067, 35.537354, 40.059387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853420, 34.914951, 39.817329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689774, 35.152691, 39.540382>,  <40.591583, 35.295334, 39.374214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689774, 35.152691, 39.540382>,  <40.853420, 34.914951, 39.817329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689774, 35.152691, 39.540382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460641, -0.520463, -0.718977,
		-0.787674, -0.613080, -0.060849,
		-0.409121, 0.594349, -0.692365,
		40.567036, 35.330994, 39.332672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487282, 34.449303, 39.263439>,  <40.853420, 34.914951, 39.817329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487282, 34.449303, 39.263439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607307, 34.800991, 39.115425>,  <40.679321, 35.012005, 39.026615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607307, 34.800991, 39.115425>,  <40.487282, 34.449303, 39.263439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607307, 34.800991, 39.115425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486716, -0.474732, -0.733306,
		-0.820408, 0.039936, -0.570382,
		0.300064, 0.879224, -0.370036,
		40.697327, 35.064758, 39.004414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354748, 34.415813, 38.542408>,  <40.487282, 34.449303, 39.263439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354748, 34.415813, 38.542408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639000, 34.696877, 38.556683>,  <40.809551, 34.865513, 38.565247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639000, 34.696877, 38.556683>,  <40.354748, 34.415813, 38.542408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639000, 34.696877, 38.556683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471168, -0.437622, -0.765824,
		-0.522497, 0.561032, -0.642059,
		0.710631, 0.702659, 0.035684,
		40.852188, 34.907673, 38.567387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559464, 34.580994, 37.782394>,  <40.354748, 34.415813, 38.542408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559464, 34.580994, 37.782394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865314, 34.722759, 37.997700>,  <41.048824, 34.807819, 38.126884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865314, 34.722759, 37.997700>,  <40.559464, 34.580994, 37.782394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865314, 34.722759, 37.997700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641880, -0.344032, -0.685297,
		-0.057699, 0.869501, -0.490550,
		0.764631, 0.354415, 0.538265,
		41.094704, 34.829082, 38.159180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883598, 35.138832, 37.418766>,  <40.559464, 34.580994, 37.782394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883598, 35.138832, 37.418766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165382, 35.009598, 37.671547>,  <41.334454, 34.932056, 37.823215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.165382, 35.009598, 37.671547>,  <40.883598, 35.138832, 37.418766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165382, 35.009598, 37.671547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655838, -0.044066, -0.753614,
		0.271327, 0.945344, 0.180848,
		0.704455, -0.323083, 0.631949,
		41.376720, 34.912674, 37.861134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385960, 35.227539, 36.988930>,  <40.883598, 35.138832, 37.418766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385960, 35.227539, 36.988930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608322, 35.041943, 37.264809>,  <41.741741, 34.930584, 37.430336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608322, 35.041943, 37.264809>,  <41.385960, 35.227539, 36.988930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608322, 35.041943, 37.264809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747956, -0.082791, -0.658565,
		0.362671, 0.881960, 0.301024,
		0.555906, -0.463995, 0.689693,
		41.775093, 34.902744, 37.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954525, 35.538055, 36.958256>,  <41.385960, 35.227539, 36.988930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954525, 35.538055, 36.958256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053032, 35.180779, 37.108753>,  <42.112137, 34.966412, 37.199051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053032, 35.180779, 37.108753>,  <41.954525, 35.538055, 36.958256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053032, 35.180779, 37.108753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717949, -0.092660, -0.689901,
		0.651077, 0.440027, 0.618446,
		0.246270, -0.893191, 0.376245,
		42.126911, 34.912823, 37.221626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670338, 35.510750, 36.945332>,  <41.954525, 35.538055, 36.958256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670338, 35.510750, 36.945332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538837, 35.133083, 36.954105>,  <42.459938, 34.906483, 36.959370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538837, 35.133083, 36.954105>,  <42.670338, 35.510750, 36.945332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538837, 35.133083, 36.954105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547251, -0.209377, -0.810356,
		0.769702, -0.254397, 0.585526,
		-0.328748, -0.944163, 0.021938,
		42.440212, 34.849834, 36.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177105, 34.920601, 37.177395>,  <42.670338, 35.510750, 36.945332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177105, 34.920601, 37.177395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929443, 34.759014, 36.908039>,  <42.780846, 34.662064, 36.746426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929443, 34.759014, 36.908039>,  <43.177105, 34.920601, 37.177395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929443, 34.759014, 36.908039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785075, -0.299512, -0.542172,
		0.017331, -0.864352, 0.502589,
		-0.619158, -0.403966, -0.673390,
		42.743694, 34.637825, 36.706020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542183, 34.903362, 36.557453>,  <43.177105, 34.920601, 37.177395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542183, 34.903362, 36.557453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.806355, 35.138809, 36.370960>,  <43.964855, 35.280075, 36.259064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.806355, 35.138809, 36.370960>,  <43.542183, 34.903362, 36.557453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806355, 35.138809, 36.370960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291252, 0.371493, 0.881570,
		0.692106, -0.718002, 0.073908,
		0.660425, 0.588615, -0.466232,
		44.004482, 35.315392, 36.231091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084408, 34.947124, 37.052208>,  <43.542183, 34.903362, 36.557453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084408, 34.947124, 37.052208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104527, 35.265648, 36.811089>,  <44.116600, 35.456760, 36.666416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104527, 35.265648, 36.811089>,  <44.084408, 34.947124, 37.052208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104527, 35.265648, 36.811089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144582, 0.591402, 0.793309,
		0.988213, -0.127057, -0.085384,
		0.050299, 0.796304, -0.602802,
		44.119617, 35.504539, 36.630249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592144, 35.259377, 37.310516>,  <44.084408, 34.947124, 37.052208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592144, 35.259377, 37.310516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379406, 35.527447, 37.103439>,  <44.251762, 35.688290, 36.979191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379406, 35.527447, 37.103439>,  <44.592144, 35.259377, 37.310516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379406, 35.527447, 37.103439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064221, 0.641485, 0.764443,
		0.844401, 0.373320, -0.384211,
		-0.531848, 0.670171, -0.517696,
		44.219852, 35.728497, 36.948132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936150, 35.866638, 37.334972>,  <44.592144, 35.259377, 37.310516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936150, 35.866638, 37.334972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571335, 35.995674, 37.233681>,  <44.352448, 36.073097, 37.172905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571335, 35.995674, 37.233681>,  <44.936150, 35.866638, 37.334972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571335, 35.995674, 37.233681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084258, 0.751688, 0.654114,
		0.401358, 0.575240, -0.712749,
		-0.912038, 0.322589, -0.253227,
		44.297722, 36.092449, 37.157711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046066, 36.630104, 37.228962>,  <44.936150, 35.866638, 37.334972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046066, 36.630104, 37.228962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658630, 36.554153, 37.293175>,  <44.426167, 36.508583, 37.331703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658630, 36.554153, 37.293175>,  <45.046066, 36.630104, 37.228962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658630, 36.554153, 37.293175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079616, 0.848474, 0.523214,
		-0.235558, 0.494001, -0.836944,
		-0.968594, -0.189881, 0.160535,
		44.368053, 36.497189, 37.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796143, 37.253460, 37.251926>,  <45.046066, 36.630104, 37.228962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796143, 37.253460, 37.251926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509846, 37.040329, 37.432503>,  <44.338066, 36.912449, 37.540848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509846, 37.040329, 37.432503>,  <44.796143, 37.253460, 37.251926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509846, 37.040329, 37.432503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198448, 0.774962, 0.600044,
		-0.669572, 0.339891, -0.660414,
		-0.715745, -0.532831, 0.451442,
		44.295124, 36.880478, 37.567936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184830, 37.637554, 37.272648>,  <44.796143, 37.253460, 37.251926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184830, 37.637554, 37.272648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163540, 37.378246, 37.576469>,  <44.150764, 37.222664, 37.758762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163540, 37.378246, 37.576469>,  <44.184830, 37.637554, 37.272648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163540, 37.378246, 37.576469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124903, 0.758979, 0.639023,
		-0.990740, -0.060860, -0.121366,
		-0.053223, -0.648265, 0.759552,
		44.147572, 37.183765, 37.804337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556007, 37.822002, 37.555916>,  <44.184830, 37.637554, 37.272648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556007, 37.822002, 37.555916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738415, 37.600395, 37.834515>,  <43.847858, 37.467430, 38.001675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738415, 37.600395, 37.834515>,  <43.556007, 37.822002, 37.555916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738415, 37.600395, 37.834515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319503, 0.628523, 0.709138,
		-0.830643, -0.545911, 0.109605,
		0.456016, -0.554022, 0.696499,
		43.875221, 37.434189, 38.043465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037037, 37.682133, 37.958172>,  <43.556007, 37.822002, 37.555916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037037, 37.682133, 37.958172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363216, 37.607700, 38.177414>,  <43.558922, 37.563042, 38.308960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363216, 37.607700, 38.177414>,  <43.037037, 37.682133, 37.958172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363216, 37.607700, 38.177414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389311, 0.524426, 0.757241,
		-0.428350, -0.830874, 0.355197,
		0.815446, -0.186082, 0.548106,
		43.607849, 37.551876, 38.341846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797935, 37.492245, 38.676910>,  <43.037037, 37.682133, 37.958172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797935, 37.492245, 38.676910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172150, 37.599918, 38.768406>,  <43.396679, 37.664520, 38.823303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172150, 37.599918, 38.768406>,  <42.797935, 37.492245, 38.676910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172150, 37.599918, 38.768406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343659, 0.543782, 0.765637,
		0.081710, -0.794886, 0.601232,
		0.935533, 0.269179, 0.228737,
		43.452808, 37.680672, 38.837029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832352, 37.497551, 39.378162>,  <42.797935, 37.492245, 38.676910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832352, 37.497551, 39.378162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127136, 37.737926, 39.254375>,  <43.304008, 37.882153, 39.180103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127136, 37.737926, 39.254375>,  <42.832352, 37.497551, 39.378162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127136, 37.737926, 39.254375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198907, 0.630360, 0.750388,
		0.646004, -0.491455, 0.584082,
		0.736964, 0.600932, -0.309461,
		43.348225, 37.918205, 39.161537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129860, 37.814823, 39.998440>,  <42.832352, 37.497551, 39.378162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129860, 37.814823, 39.998440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232262, 38.048111, 39.690071>,  <43.293701, 38.188084, 39.505051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232262, 38.048111, 39.690071>,  <43.129860, 37.814823, 39.998440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232262, 38.048111, 39.690071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293600, 0.806733, 0.512817,
		0.921012, 0.095061, 0.377757,
		0.256000, 0.583220, -0.770921,
		43.309063, 38.223076, 39.458794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685753, 38.309299, 40.302906>,  <43.129860, 37.814823, 39.998440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685753, 38.309299, 40.302906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540714, 38.497074, 39.980873>,  <43.453690, 38.609737, 39.787655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540714, 38.497074, 39.980873>,  <43.685753, 38.309299, 40.302906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540714, 38.497074, 39.980873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218671, 0.796897, 0.563150,
		0.905928, 0.380245, -0.186302,
		-0.362599, 0.469434, -0.805080,
		43.431934, 38.637905, 39.739349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830341, 38.970886, 40.380688>,  <43.685753, 38.309299, 40.302906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830341, 38.970886, 40.380688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548580, 38.993889, 40.097702>,  <43.379524, 39.007690, 39.927910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548580, 38.993889, 40.097702>,  <43.830341, 38.970886, 40.380688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548580, 38.993889, 40.097702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384303, 0.807086, 0.448244,
		0.596766, 0.587627, -0.546412,
		-0.704402, 0.057509, -0.707468,
		43.337261, 39.011143, 39.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819366, 39.675629, 40.229759>,  <43.830341, 38.970886, 40.380688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819366, 39.675629, 40.229759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469719, 39.540409, 40.090248>,  <43.259930, 39.459278, 40.006542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469719, 39.540409, 40.090248>,  <43.819366, 39.675629, 40.229759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469719, 39.540409, 40.090248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455237, 0.820556, 0.345611,
		0.169359, 0.460880, -0.871153,
		-0.874115, -0.338048, -0.348778,
		43.207485, 39.438995, 39.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476269, 40.333771, 39.908253>,  <43.819366, 39.675629, 40.229759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476269, 40.333771, 39.908253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160004, 40.088928, 39.913715>,  <42.970245, 39.942024, 39.916992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160004, 40.088928, 39.913715>,  <43.476269, 40.333771, 39.908253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160004, 40.088928, 39.913715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586852, 0.764026, 0.268085,
		-0.174528, 0.203951, -0.963298,
		-0.790661, -0.612102, 0.013655,
		42.922806, 39.905296, 39.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844666, 40.736885, 39.653820>,  <43.476269, 40.333771, 39.908253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844666, 40.736885, 39.653820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709064, 40.422054, 39.859959>,  <42.627705, 40.233154, 39.983643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709064, 40.422054, 39.859959>,  <42.844666, 40.736885, 39.653820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709064, 40.422054, 39.859959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665300, 0.587873, 0.460197,
		-0.665171, -0.186855, -0.722933,
		-0.339003, -0.787078, 0.515350,
		42.607365, 40.185932, 40.014565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107098, 40.701775, 39.480732>,  <42.844666, 40.736885, 39.653820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107098, 40.701775, 39.480732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184158, 40.516308, 39.826656>,  <42.230396, 40.405025, 40.034210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184158, 40.516308, 39.826656>,  <42.107098, 40.701775, 39.480732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184158, 40.516308, 39.826656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713642, 0.538692, 0.447801,
		-0.673497, -0.703435, -0.227113,
		0.192654, -0.463670, 0.864809,
		42.241955, 40.377209, 40.086098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498718, 40.650097, 39.855633>,  <42.107098, 40.701775, 39.480732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498718, 40.650097, 39.855633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750580, 40.584797, 40.159447>,  <41.901695, 40.545616, 40.341736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750580, 40.584797, 40.159447>,  <41.498718, 40.650097, 39.855633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750580, 40.584797, 40.159447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590582, 0.534600, 0.604496,
		-0.504727, -0.829188, 0.240202,
		0.629653, -0.163247, 0.759531,
		41.939476, 40.535824, 40.387306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092033, 40.371761, 40.352894>,  <41.498718, 40.650097, 39.855633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092033, 40.371761, 40.352894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423599, 40.514473, 40.525227>,  <41.622540, 40.600098, 40.628624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423599, 40.514473, 40.525227>,  <41.092033, 40.371761, 40.352894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423599, 40.514473, 40.525227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551974, 0.646592, 0.526540,
		-0.090714, -0.674262, 0.732899,
		0.828913, 0.356776, 0.430830,
		41.672272, 40.621506, 40.654476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.420586, 35.666229, 41.634216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108311, 35.425724, 41.702335>,  <37.920944, 35.281422, 41.743206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108311, 35.425724, 41.702335>,  <38.420586, 35.666229, 41.634216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108311, 35.425724, 41.702335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020947, -0.247177, -0.968744,
		0.624567, -0.759856, 0.180374,
		-0.780690, -0.601267, 0.170295,
		37.874104, 35.245342, 41.753426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578510, 34.999168, 41.308399>,  <38.420586, 35.666229, 41.634216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578510, 34.999168, 41.308399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180542, 35.004555, 41.348293>,  <37.941761, 35.007786, 41.372231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180542, 35.004555, 41.348293>,  <38.578510, 34.999168, 41.308399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180542, 35.004555, 41.348293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091720, -0.529155, -0.843553,
		0.041413, -0.848418, 0.527704,
		-0.994923, 0.013467, 0.099731,
		37.882065, 35.008595, 41.378212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453354, 34.408703, 41.008930>,  <38.578510, 34.999168, 41.308399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453354, 34.408703, 41.008930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084713, 34.563957, 41.008949>,  <37.863529, 34.657112, 41.008961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084713, 34.563957, 41.008949>,  <38.453354, 34.408703, 41.008930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084713, 34.563957, 41.008949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177099, -0.420401, -0.889887,
		-0.345378, -0.820130, 0.456181,
		-0.921602, 0.388136, 0.000046,
		37.808231, 34.680397, 41.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085972, 33.970425, 40.667133>,  <38.453354, 34.408703, 41.008930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085972, 33.970425, 40.667133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837986, 34.281883, 40.628445>,  <37.689194, 34.468758, 40.605232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837986, 34.281883, 40.628445>,  <38.085972, 33.970425, 40.667133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837986, 34.281883, 40.628445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262247, -0.321816, -0.909759,
		-0.739504, -0.538656, 0.403712,
		-0.619968, 0.778643, -0.096723,
		37.651997, 34.515476, 40.599426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571724, 33.669453, 40.172245>,  <38.085972, 33.970425, 40.667133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571724, 33.669453, 40.172245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549625, 34.067745, 40.201836>,  <37.536366, 34.306721, 40.219589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549625, 34.067745, 40.201836>,  <37.571724, 33.669453, 40.172245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549625, 34.067745, 40.201836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348774, 0.050175, -0.935863,
		-0.935577, -0.077499, 0.344513,
		-0.055242, 0.995729, 0.073973,
		37.533054, 34.366463, 40.224026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845558, 33.850075, 39.983452>,  <37.571724, 33.669453, 40.172245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845558, 33.850075, 39.983452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111130, 34.138237, 39.903244>,  <37.270473, 34.311134, 39.855118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111130, 34.138237, 39.903244>,  <36.845558, 33.850075, 39.983452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111130, 34.138237, 39.903244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432409, 0.151080, -0.888930,
		-0.610099, 0.676893, 0.411818,
		0.663928, 0.720410, -0.200521,
		37.310307, 34.354359, 39.843086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474144, 34.315010, 39.579247>,  <36.845558, 33.850075, 39.983452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474144, 34.315010, 39.579247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852558, 34.423145, 39.507774>,  <37.079609, 34.488026, 39.464890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852558, 34.423145, 39.507774>,  <36.474144, 34.315010, 39.579247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852558, 34.423145, 39.507774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244835, 0.235070, -0.940637,
		-0.212284, 0.933628, 0.288573,
		0.946040, 0.270335, -0.178683,
		37.136372, 34.504246, 39.454170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403347, 35.120693, 39.447983>,  <36.474144, 34.315010, 39.579247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403347, 35.120693, 39.447983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728321, 34.942886, 39.297066>,  <36.923306, 34.836201, 39.206516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728321, 34.942886, 39.297066>,  <36.403347, 35.120693, 39.447983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728321, 34.942886, 39.297066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244743, 0.327334, -0.912663,
		0.529200, 0.833818, 0.157144,
		0.812433, -0.444521, -0.377297,
		36.972050, 34.809528, 39.183876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780014, 35.599518, 38.911461>,  <36.403347, 35.120693, 39.447983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780014, 35.599518, 38.911461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916542, 35.228939, 38.847969>,  <36.998459, 35.006592, 38.809875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916542, 35.228939, 38.847969>,  <36.780014, 35.599518, 38.911461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916542, 35.228939, 38.847969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134194, 0.119113, -0.983770,
		0.930319, 0.357081, -0.083668,
		0.341320, -0.926448, -0.158731,
		37.018936, 34.951004, 38.800350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149326, 35.789577, 38.397526>,  <36.780014, 35.599518, 38.911461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149326, 35.789577, 38.397526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105984, 35.392941, 38.369221>,  <37.079979, 35.154961, 38.352238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105984, 35.392941, 38.369221>,  <37.149326, 35.789577, 38.397526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105984, 35.392941, 38.369221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063354, 0.077922, -0.994945,
		0.992091, -0.103327, -0.071264,
		-0.108358, -0.991591, -0.070759,
		37.073475, 35.095463, 38.347992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532574, 35.589329, 37.786217>,  <37.149326, 35.789577, 38.397526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532574, 35.589329, 37.786217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282917, 35.280693, 37.835377>,  <37.133121, 35.095512, 37.864872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282917, 35.280693, 37.835377>,  <37.532574, 35.589329, 37.786217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282917, 35.280693, 37.835377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267431, 0.063173, -0.961504,
		0.734118, -0.632982, -0.245774,
		-0.624141, -0.771585, 0.122902,
		37.095676, 35.049217, 37.872246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661995, 35.138088, 37.271763>,  <37.532574, 35.589329, 37.786217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661995, 35.138088, 37.271763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284180, 35.069519, 37.383812>,  <37.057491, 35.028378, 37.451042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284180, 35.069519, 37.383812>,  <37.661995, 35.138088, 37.271763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284180, 35.069519, 37.383812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300354, 0.105932, -0.947927,
		0.132837, -0.979483, -0.151548,
		-0.944533, -0.171438, 0.280120,
		37.000820, 35.018093, 37.467850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289330, 34.592525, 36.910427>,  <37.661995, 35.138088, 37.271763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289330, 34.592525, 36.910427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994572, 34.832508, 37.035030>,  <36.817715, 34.976498, 37.109791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994572, 34.832508, 37.035030>,  <37.289330, 34.592525, 36.910427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994572, 34.832508, 37.035030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379554, 0.014119, -0.925062,
		-0.559392, -0.799911, 0.217310,
		-0.736898, 0.599953, 0.311507,
		36.773502, 35.012493, 37.128483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731091, 34.423615, 36.407127>,  <37.289330, 34.592525, 36.910427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731091, 34.423615, 36.407127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925571, 34.688545, 36.635136>,  <38.042259, 34.847504, 36.771942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925571, 34.688545, 36.635136>,  <37.731091, 34.423615, 36.407127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925571, 34.688545, 36.635136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137913, 0.585977, -0.798506,
		-0.862893, 0.466851, 0.193561,
		0.486205, 0.662331, 0.570020,
		38.071434, 34.887245, 36.806141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504238, 34.334805, 36.416161>,  <37.731091, 34.423615, 36.407127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504238, 34.334805, 36.416161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772644, 34.081829, 36.261364>,  <38.933689, 33.930042, 36.168488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772644, 34.081829, 36.261364>,  <38.504238, 34.334805, 36.416161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772644, 34.081829, 36.261364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060701, -0.567046, 0.821446,
		-0.738954, -0.527712, -0.418887,
		0.671015, -0.632438, -0.386989,
		38.973949, 33.892097, 36.145267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240051, 33.707794, 36.644524>,  <38.504238, 34.334805, 36.416161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240051, 33.707794, 36.644524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622238, 33.642368, 36.546276>,  <38.851551, 33.603111, 36.487328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622238, 33.642368, 36.546276>,  <38.240051, 33.707794, 36.644524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622238, 33.642368, 36.546276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108719, -0.578683, 0.808274,
		-0.274340, -0.798983, -0.535130,
		0.955467, -0.163563, -0.245620,
		38.908878, 33.593300, 36.472591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273884, 32.990784, 36.696308>,  <38.240051, 33.707794, 36.644524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273884, 32.990784, 36.696308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637405, 33.156155, 36.718765>,  <38.855518, 33.255379, 36.732239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637405, 33.156155, 36.718765>,  <38.273884, 32.990784, 36.696308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637405, 33.156155, 36.718765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216171, -0.581677, 0.784169,
		0.356853, -0.700521, -0.618002,
		0.908804, 0.413428, 0.056141,
		38.910046, 33.280182, 36.735607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685711, 32.413254, 36.660908>,  <38.273884, 32.990784, 36.696308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685711, 32.413254, 36.660908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907677, 32.719189, 36.791809>,  <39.040855, 32.902748, 36.870350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907677, 32.719189, 36.791809>,  <38.685711, 32.413254, 36.660908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907677, 32.719189, 36.791809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193123, -0.501065, 0.843586,
		0.809181, -0.404917, -0.425756,
		0.554913, 0.764837, 0.327253,
		39.074150, 32.948639, 36.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343285, 32.192165, 36.877251>,  <38.685711, 32.413254, 36.660908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343285, 32.192165, 36.877251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288898, 32.542564, 37.062351>,  <39.256268, 32.752804, 37.173412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288898, 32.542564, 37.062351>,  <39.343285, 32.192165, 36.877251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288898, 32.542564, 37.062351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299983, -0.408758, 0.861932,
		0.944206, 0.256009, -0.207208,
		-0.135965, 0.876000, 0.462750,
		39.248108, 32.805363, 37.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967155, 32.335838, 37.165154>,  <39.343285, 32.192165, 36.877251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967155, 32.335838, 37.165154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684425, 32.540710, 37.360325>,  <39.514786, 32.663635, 37.477428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684425, 32.540710, 37.360325>,  <39.967155, 32.335838, 37.165154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684425, 32.540710, 37.360325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324370, -0.378294, 0.866993,
		0.628635, 0.771081, 0.101252,
		-0.706825, 0.512179, 0.487925,
		39.472378, 32.694363, 37.506702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247890, 32.604183, 37.794769>,  <39.967155, 32.335838, 37.165154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247890, 32.604183, 37.794769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858677, 32.636326, 37.881252>,  <39.625149, 32.655613, 37.933140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858677, 32.636326, 37.881252>,  <40.247890, 32.604183, 37.794769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858677, 32.636326, 37.881252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182543, -0.304692, 0.934795,
		0.140993, 0.949055, 0.281807,
		-0.973036, 0.080357, 0.216203,
		39.566765, 32.660435, 37.946114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231052, 32.990402, 38.333809>,  <40.247890, 32.604183, 37.794769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231052, 32.990402, 38.333809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871868, 32.817715, 38.367943>,  <39.656357, 32.714104, 38.388424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871868, 32.817715, 38.367943>,  <40.231052, 32.990402, 38.333809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871868, 32.817715, 38.367943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145515, -0.108275, 0.983414,
		-0.415315, 0.895488, 0.160048,
		-0.897964, -0.431715, 0.085339,
		39.602478, 32.688202, 38.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924061, 33.264690, 38.978745>,  <40.231052, 32.990402, 38.333809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924061, 33.264690, 38.978745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692646, 32.946152, 38.908184>,  <39.553795, 32.755028, 38.865849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692646, 32.946152, 38.908184>,  <39.924061, 33.264690, 38.978745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692646, 32.946152, 38.908184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115752, -0.133919, 0.984209,
		-0.807398, 0.589824, -0.014702,
		-0.578541, -0.796350, -0.176399,
		39.519085, 32.707245, 38.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403046, 33.203136, 39.590919>,  <39.924061, 33.264690, 38.978745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403046, 33.203136, 39.590919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352180, 32.837955, 39.435818>,  <39.321663, 32.618847, 39.342754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352180, 32.837955, 39.435818>,  <39.403046, 33.203136, 39.590919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352180, 32.837955, 39.435818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306845, -0.335546, 0.890649,
		-0.943227, 0.232235, -0.237466,
		-0.127159, -0.912949, -0.387757,
		39.314034, 32.564072, 39.319492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701454, 32.980591, 39.769115>,  <39.403046, 33.203136, 39.590919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701454, 32.980591, 39.769115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923054, 32.659634, 39.680344>,  <39.056015, 32.467060, 39.627079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923054, 32.659634, 39.680344>,  <38.701454, 32.980591, 39.769115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923054, 32.659634, 39.680344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192531, -0.382832, 0.903533,
		-0.809949, -0.457828, -0.366574,
		0.553999, -0.802392, -0.221928,
		39.089252, 32.418915, 39.613766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241329, 32.562115, 40.008743>,  <38.701454, 32.980591, 39.769115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241329, 32.562115, 40.008743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588913, 32.364166, 40.007027>,  <38.797462, 32.245396, 40.005997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588913, 32.364166, 40.007027>,  <38.241329, 32.562115, 40.008743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588913, 32.364166, 40.007027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159361, -0.288010, 0.944275,
		-0.468530, -0.819849, -0.329131,
		0.868956, -0.494871, -0.004289,
		38.849602, 32.215706, 40.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129345, 31.957928, 40.363098>,  <38.241329, 32.562115, 40.008743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129345, 31.957928, 40.363098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522179, 32.032345, 40.375118>,  <38.757877, 32.076996, 40.382332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522179, 32.032345, 40.375118>,  <38.129345, 31.957928, 40.363098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522179, 32.032345, 40.375118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017068, -0.071005, 0.997330,
		0.187683, -0.979972, -0.066557,
		0.982082, 0.186045, 0.030052,
		38.816803, 32.088158, 40.384132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249641, 31.769003, 41.011089>,  <38.129345, 31.957928, 40.363098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249641, 31.769003, 41.011089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590168, 31.966059, 40.938908>,  <38.794483, 32.084293, 40.895599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590168, 31.966059, 40.938908>,  <38.249641, 31.769003, 41.011089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590168, 31.966059, 40.938908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046169, 0.272275, 0.961111,
		0.522617, -0.826541, 0.209048,
		0.851316, 0.492642, -0.180457,
		38.845562, 32.113850, 40.884769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352379, 31.034264, 40.685482>,  <38.249641, 31.769003, 41.011089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352379, 31.034264, 40.685482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010696, 30.826866, 40.670010>,  <37.805687, 30.702429, 40.660725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010696, 30.826866, 40.670010>,  <38.352379, 31.034264, 40.685482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010696, 30.826866, 40.670010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064667, 0.179775, -0.981580,
		0.515896, -0.835970, -0.187095,
		-0.854207, -0.518492, -0.038686,
		37.754433, 30.671318, 40.658405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403374, 30.604069, 40.023918>,  <38.352379, 31.034264, 40.685482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403374, 30.604069, 40.023918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022209, 30.640572, 40.139599>,  <37.793510, 30.662474, 40.209007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022209, 30.640572, 40.139599>,  <38.403374, 30.604069, 40.023918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022209, 30.640572, 40.139599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268151, 0.191808, -0.944089,
		-0.141628, -0.977180, -0.158305,
		-0.952910, 0.091260, 0.289198,
		37.736336, 30.667950, 40.226357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047424, 30.270227, 39.471931>,  <38.403374, 30.604069, 40.023918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047424, 30.270227, 39.471931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774593, 30.491186, 39.663612>,  <37.610897, 30.623762, 39.778622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774593, 30.491186, 39.663612>,  <38.047424, 30.270227, 39.471931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774593, 30.491186, 39.663612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355972, 0.321613, -0.877411,
		-0.638797, -0.769040, -0.022725,
		-0.682072, 0.552397, 0.479202,
		37.569973, 30.656906, 39.807373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427395, 30.153866, 39.069717>,  <38.047424, 30.270227, 39.471931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427395, 30.153866, 39.069717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386002, 30.497307, 39.270554>,  <37.361168, 30.703371, 39.391056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386002, 30.497307, 39.270554>,  <37.427395, 30.153866, 39.069717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386002, 30.497307, 39.270554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520831, 0.383283, -0.762778,
		-0.847365, -0.340438, 0.407523,
		-0.103481, 0.858602, 0.502091,
		37.354958, 30.754887, 39.421181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689110, 30.294744, 38.948345>,  <37.427395, 30.153866, 39.069717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689110, 30.294744, 38.948345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865681, 30.629559, 39.077660>,  <36.971622, 30.830446, 39.155247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865681, 30.629559, 39.077660>,  <36.689110, 30.294744, 38.948345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865681, 30.629559, 39.077660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427978, 0.513071, -0.744038,
		-0.788655, 0.190079, 0.584717,
		0.441427, 0.837035, 0.323286,
		36.998108, 30.880669, 39.174644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166965, 30.796726, 38.990425>,  <36.689110, 30.294744, 38.948345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166965, 30.796726, 38.990425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513214, 30.994678, 38.959965>,  <36.720963, 31.113449, 38.941689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513214, 30.994678, 38.959965>,  <36.166965, 30.796726, 38.990425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513214, 30.994678, 38.959965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358630, 0.506657, -0.784017,
		-0.349412, 0.705969, 0.616050,
		0.865618, 0.494880, -0.076150,
		36.772900, 31.143143, 38.937119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996181, 31.551147, 38.879604>,  <36.166965, 30.796726, 38.990425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996181, 31.551147, 38.879604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369968, 31.490149, 38.750912>,  <36.594242, 31.453548, 38.673695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369968, 31.490149, 38.750912>,  <35.996181, 31.551147, 38.879604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369968, 31.490149, 38.750912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260516, 0.323078, -0.909809,
		0.242687, 0.934005, 0.262179,
		0.934470, -0.152497, -0.321730,
		36.650311, 31.444399, 38.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047859, 32.009567, 38.379742>,  <35.996181, 31.551147, 38.879604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047859, 32.009567, 38.379742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356514, 31.760664, 38.327023>,  <36.541706, 31.611322, 38.295391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356514, 31.760664, 38.327023>,  <36.047859, 32.009567, 38.379742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356514, 31.760664, 38.327023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197428, -0.037333, -0.979606,
		0.604643, 0.781925, -0.151658,
		0.771640, -0.622254, -0.131800,
		36.588005, 31.573988, 38.287483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509087, 32.334682, 37.789646>,  <36.047859, 32.009567, 38.379742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509087, 32.334682, 37.789646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617023, 31.949577, 37.783028>,  <36.681786, 31.718513, 37.779057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617023, 31.949577, 37.783028>,  <36.509087, 32.334682, 37.789646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617023, 31.949577, 37.783028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231206, -0.048105, -0.971715,
		0.934736, 0.266030, -0.235577,
		0.269838, -0.962764, -0.016542,
		36.697975, 31.660748, 37.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896461, 32.310673, 37.235344>,  <36.509087, 32.334682, 37.789646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896461, 32.310673, 37.235344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764202, 31.945442, 37.330807>,  <36.684849, 31.726303, 37.388084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764202, 31.945442, 37.330807>,  <36.896461, 32.310673, 37.235344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764202, 31.945442, 37.330807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325422, -0.127067, -0.936992,
		0.885875, -0.387477, -0.255123,
		-0.330645, -0.913080, 0.238659,
		36.665009, 31.671518, 37.402405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763294, 32.140617, 36.550262>,  <36.896461, 32.310673, 37.235344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763294, 32.140617, 36.550262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665096, 31.823654, 36.773628>,  <36.606178, 31.633476, 36.907646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665096, 31.823654, 36.773628>,  <36.763294, 32.140617, 36.550262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665096, 31.823654, 36.773628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268573, -0.497896, -0.824602,
		0.931451, -0.352410, -0.090588,
		-0.245495, -0.792406, 0.558414,
		36.591446, 31.585932, 36.941151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115936, 31.491671, 36.303551>,  <36.763294, 32.140617, 36.550262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115936, 31.491671, 36.303551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767460, 31.396030, 36.475067>,  <36.558376, 31.338646, 36.577976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767460, 31.396030, 36.475067>,  <37.115936, 31.491671, 36.303551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767460, 31.396030, 36.475067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321789, -0.381530, -0.866537,
		0.370785, -0.892897, 0.255446,
		-0.871189, -0.239099, 0.428791,
		36.506104, 31.324301, 36.603703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.252300, 28.184401, 43.078007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901581, 28.265596, 43.252369>,  <38.691147, 28.314314, 43.356987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901581, 28.265596, 43.252369>,  <39.252300, 28.184401, 43.078007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901581, 28.265596, 43.252369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266378, 0.549668, -0.791775,
		-0.400326, -0.810345, -0.427878,
		-0.876802, 0.202991, 0.435905,
		38.638538, 28.326494, 43.383141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645931, 27.909645, 42.637150>,  <39.252300, 28.184401, 43.078007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645931, 27.909645, 42.637150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490559, 28.195951, 42.869286>,  <38.397335, 28.367735, 43.008568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490559, 28.195951, 42.869286>,  <38.645931, 27.909645, 42.637150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490559, 28.195951, 42.869286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347716, 0.469383, -0.811648,
		-0.853353, -0.517067, 0.066558,
		-0.388436, 0.715766, 0.580342,
		38.374027, 28.410681, 43.043388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961182, 27.979136, 42.442669>,  <38.645931, 27.909645, 42.637150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961182, 27.979136, 42.442669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.042923, 28.331285, 42.613865>,  <38.091969, 28.542576, 42.716583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.042923, 28.331285, 42.613865>,  <37.961182, 27.979136, 42.442669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042923, 28.331285, 42.613865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416422, 0.473868, -0.775914,
		-0.885909, -0.019668, 0.463443,
		0.204350, 0.880376, 0.427994,
		38.104229, 28.595398, 42.742264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333241, 28.363079, 42.186031>,  <37.961182, 27.979136, 42.442669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333241, 28.363079, 42.186031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.586899, 28.641226, 42.321278>,  <37.739094, 28.808113, 42.402428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.586899, 28.641226, 42.321278>,  <37.333241, 28.363079, 42.186031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586899, 28.641226, 42.321278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205372, 0.573061, -0.793362,
		-0.745441, 0.433666, 0.506213,
		0.634145, 0.695367, 0.338120,
		37.777142, 28.849836, 42.422714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941891, 28.979177, 42.279156>,  <37.333241, 28.363079, 42.186031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941891, 28.979177, 42.279156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314121, 29.121994, 42.246761>,  <37.537460, 29.207684, 42.227325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314121, 29.121994, 42.246761>,  <36.941891, 28.979177, 42.279156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314121, 29.121994, 42.246761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239310, 0.425799, -0.872597,
		-0.277068, 0.831395, 0.481680,
		0.930572, 0.357040, -0.080986,
		37.593292, 29.229105, 42.222466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829594, 29.675116, 42.196060>,  <36.941891, 28.979177, 42.279156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829594, 29.675116, 42.196060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206852, 29.620811, 42.074707>,  <37.433208, 29.588230, 42.001896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206852, 29.620811, 42.074707>,  <36.829594, 29.675116, 42.196060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206852, 29.620811, 42.074707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131560, 0.685739, -0.715858,
		0.305223, 0.715074, 0.628894,
		0.943149, -0.135759, -0.303379,
		37.489796, 29.580084, 41.983692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094975, 30.281258, 42.294678>,  <36.829594, 29.675116, 42.196060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094975, 30.281258, 42.294678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 30.106445, 42.016880>,  <37.460777, 30.001558, 41.850201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 30.106445, 42.016880>,  <37.094975, 30.281258, 42.294678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323601, 30.106445, 42.016880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106996, 0.799446, -0.591132,
		0.813551, 0.412179, 0.410175,
		0.571565, -0.437029, -0.694492,
		37.495071, 29.975336, 41.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606934, 30.840158, 42.016079>,  <37.094975, 30.281258, 42.294678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606934, 30.840158, 42.016079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643559, 30.547180, 41.746223>,  <37.665531, 30.371393, 41.584309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643559, 30.547180, 41.746223>,  <37.606934, 30.840158, 42.016079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643559, 30.547180, 41.746223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209324, 0.648190, -0.732142,
		0.973550, 0.208253, -0.093971,
		0.091560, -0.732448, -0.674638,
		37.671028, 30.327446, 41.543831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083447, 31.079027, 41.432190>,  <37.606934, 30.840158, 42.016079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083447, 31.079027, 41.432190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896755, 30.768642, 41.262463>,  <37.784740, 30.582411, 41.160625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896755, 30.768642, 41.262463>,  <38.083447, 31.079027, 41.432190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896755, 30.768642, 41.262463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242524, 0.573682, -0.782350,
		0.850498, -0.262239, -0.455943,
		-0.466729, -0.775964, -0.424316,
		37.756737, 30.535852, 41.135166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747646, 31.432838, 41.413116>,  <38.083447, 31.079027, 41.432190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747646, 31.432838, 41.413116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863384, 31.807467, 41.334007>,  <38.932827, 32.032242, 41.286541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.863384, 31.807467, 41.334007>,  <38.747646, 31.432838, 41.413116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863384, 31.807467, 41.334007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090227, 0.232378, 0.968431,
		0.952962, -0.262369, 0.151742,
		0.289348, 0.936570, -0.197775,
		38.950188, 32.088436, 41.274673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343506, 31.560835, 41.847393>,  <38.747646, 31.432838, 41.413116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343506, 31.560835, 41.847393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196239, 31.913256, 41.728596>,  <39.107880, 32.124706, 41.657318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196239, 31.913256, 41.728596>,  <39.343506, 31.560835, 41.847393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196239, 31.913256, 41.728596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126055, 0.363778, 0.922917,
		0.921175, 0.302351, -0.244992,
		-0.368168, 0.881050, -0.296990,
		39.085789, 32.177570, 41.639500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905506, 31.998150, 41.920349>,  <39.343506, 31.560835, 41.847393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905506, 31.998150, 41.920349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593624, 32.246635, 41.951706>,  <39.406494, 32.395725, 41.970520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593624, 32.246635, 41.951706>,  <39.905506, 31.998150, 41.920349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593624, 32.246635, 41.951706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352463, 0.331978, 0.874963,
		0.517516, 0.709847, -0.477802,
		-0.779709, 0.621215, 0.078390,
		39.359711, 32.432999, 41.975224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188881, 32.526875, 42.393158>,  <39.905506, 31.998150, 41.920349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188881, 32.526875, 42.393158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792439, 32.574833, 42.416271>,  <39.554573, 32.603607, 42.430141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792439, 32.574833, 42.416271>,  <40.188881, 32.526875, 42.393158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792439, 32.574833, 42.416271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073671, 0.132588, 0.988430,
		0.110847, 0.983893, -0.140241,
		-0.991103, 0.119896, 0.057787,
		39.495106, 32.610802, 42.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114429, 33.052048, 42.840805>,  <40.188881, 32.526875, 42.393158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114429, 33.052048, 42.840805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761112, 32.864704, 42.849075>,  <39.549122, 32.752296, 42.854038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761112, 32.864704, 42.849075>,  <40.114429, 33.052048, 42.840805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761112, 32.864704, 42.849075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030761, 0.101897, 0.994319,
		-0.467808, 0.877641, -0.104412,
		-0.883295, -0.468362, 0.020671,
		39.496124, 32.724194, 42.855278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717960, 33.475132, 43.383995>,  <40.114429, 33.052048, 42.840805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717960, 33.475132, 43.383995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554718, 33.112530, 43.340736>,  <39.456772, 32.894970, 43.314781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554718, 33.112530, 43.340736>,  <39.717960, 33.475132, 43.383995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554718, 33.112530, 43.340736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155640, -0.047640, 0.986664,
		-0.899568, 0.419500, -0.121646,
		-0.408110, -0.906504, -0.108146,
		39.432285, 32.840580, 43.308292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215275, 33.499172, 43.936039>,  <39.717960, 33.475132, 43.383995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215275, 33.499172, 43.936039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237213, 33.113995, 43.830418>,  <39.250378, 32.882889, 43.767044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237213, 33.113995, 43.830418>,  <39.215275, 33.499172, 43.936039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237213, 33.113995, 43.830418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051316, -0.261380, 0.963871,
		-0.997175, -0.066418, 0.035078,
		0.054850, -0.962948, -0.264050,
		39.253670, 32.825111, 43.751202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707108, 33.042046, 44.342457>,  <39.215275, 33.499172, 43.936039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707108, 33.042046, 44.342457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003414, 32.802601, 44.220520>,  <39.181198, 32.658936, 44.147358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003414, 32.802601, 44.220520>,  <38.707108, 33.042046, 44.342457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003414, 32.802601, 44.220520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043456, -0.410140, 0.910987,
		-0.670354, -0.688077, -0.277805,
		0.740768, -0.598611, -0.304840,
		39.225643, 32.623016, 44.129066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552208, 32.402126, 44.677612>,  <38.707108, 33.042046, 44.342457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552208, 32.402126, 44.677612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933456, 32.378696, 44.558868>,  <39.162205, 32.364639, 44.487621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933456, 32.378696, 44.558868>,  <38.552208, 32.402126, 44.677612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933456, 32.378696, 44.558868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270991, -0.271212, 0.923584,
		-0.134609, -0.960736, -0.242625,
		0.953123, -0.058574, -0.296858,
		39.219395, 32.361122, 44.469810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791855, 31.920723, 45.118530>,  <38.552208, 32.402126, 44.677612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791855, 31.920723, 45.118530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125111, 32.080395, 44.965412>,  <39.325066, 32.176197, 44.873543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125111, 32.080395, 44.965412>,  <38.791855, 31.920723, 45.118530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125111, 32.080395, 44.965412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426301, -0.022568, 0.904300,
		0.352340, -0.916595, -0.188973,
		0.833141, 0.399181, -0.382793,
		39.375053, 32.200150, 44.850574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394073, 31.354282, 45.187691>,  <38.791855, 31.920723, 45.118530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394073, 31.354282, 45.187691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497742, 31.740541, 45.195232>,  <39.559944, 31.972298, 45.199757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497742, 31.740541, 45.195232>,  <39.394073, 31.354282, 45.187691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497742, 31.740541, 45.195232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486928, -0.147496, 0.860899,
		0.834105, -0.213942, -0.508427,
		0.259173, 0.965647, 0.018853,
		39.575493, 32.030235, 45.200890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032223, 31.352013, 45.557487>,  <39.394073, 31.354282, 45.187691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032223, 31.352013, 45.557487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947479, 31.742752, 45.545589>,  <39.896633, 31.977196, 45.538452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947479, 31.742752, 45.545589>,  <40.032223, 31.352013, 45.557487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947479, 31.742752, 45.545589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379560, 0.110289, 0.918570,
		0.900582, 0.183321, -0.394138,
		-0.211862, 0.976847, -0.029743,
		39.883919, 32.035805, 45.536667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597267, 31.643620, 45.887653>,  <40.032223, 31.352013, 45.557487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597267, 31.643620, 45.887653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318058, 31.929844, 45.898483>,  <40.150532, 32.101578, 45.904984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318058, 31.929844, 45.898483>,  <40.597267, 31.643620, 45.887653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318058, 31.929844, 45.898483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062615, 0.023324, 0.997765,
		0.713330, 0.698161, -0.061086,
		-0.698026, 0.715560, 0.027077,
		40.108650, 32.144512, 45.906605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830948, 32.066601, 46.353928>,  <40.597267, 31.643620, 45.887653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830948, 32.066601, 46.353928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438885, 32.145370, 46.344887>,  <40.203648, 32.192631, 46.339462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438885, 32.145370, 46.344887>,  <40.830948, 32.066601, 46.353928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438885, 32.145370, 46.344887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036555, -0.067514, 0.997048,
		0.194813, 0.978092, 0.073373,
		-0.980159, 0.196920, -0.022601,
		40.144836, 32.204445, 46.338108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.346519, 31.400150, 48.024494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690453, 31.340340, 47.829220>,  <32.896812, 31.304453, 47.712055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690453, 31.340340, 47.829220>,  <32.346519, 31.400150, 48.024494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690453, 31.340340, 47.829220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382752, 0.444043, -0.810140,
		0.337913, 0.883441, 0.324572,
		0.859835, -0.149527, -0.488186,
		32.948402, 31.295481, 47.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426094, 32.038559, 47.643150>,  <32.346519, 31.400150, 48.024494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426094, 32.038559, 47.643150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689312, 31.808867, 47.448322>,  <32.847240, 31.671051, 47.331425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689312, 31.808867, 47.448322>,  <32.426094, 32.038559, 47.643150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689312, 31.808867, 47.448322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262571, 0.431266, -0.863172,
		0.705718, 0.695894, 0.133015,
		0.658041, -0.574230, -0.487074,
		32.886723, 31.636597, 47.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701607, 32.388733, 47.138355>,  <32.426094, 32.038559, 47.643150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701607, 32.388733, 47.138355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.788101, 32.022472, 47.002811>,  <32.840000, 31.802717, 46.921486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.788101, 32.022472, 47.002811>,  <32.701607, 32.388733, 47.138355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788101, 32.022472, 47.002811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119841, 0.319557, -0.939958,
		0.968957, 0.243866, -0.040631,
		0.216240, -0.915649, -0.338862,
		32.852974, 31.747778, 46.901154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173996, 32.525364, 46.651203>,  <32.701607, 32.388733, 47.138355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173996, 32.525364, 46.651203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020500, 32.167053, 46.561474>,  <32.928402, 31.952066, 46.507637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020500, 32.167053, 46.561474>,  <33.173996, 32.525364, 46.651203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020500, 32.167053, 46.561474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125735, 0.291346, -0.948318,
		0.914842, -0.335700, -0.224432,
		-0.383738, -0.895781, -0.224326,
		32.905380, 31.898319, 46.494175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556759, 32.262547, 46.131851>,  <33.173996, 32.525364, 46.651203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556759, 32.262547, 46.131851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.234013, 32.027596, 46.106682>,  <33.040367, 31.886625, 46.091579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.234013, 32.027596, 46.106682>,  <33.556759, 32.262547, 46.131851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234013, 32.027596, 46.106682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015627, 0.085251, -0.996237,
		0.590531, -0.804811, -0.059607,
		-0.806864, -0.587377, -0.062920,
		32.991955, 31.851383, 46.087807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749241, 31.656693, 45.616367>,  <33.556759, 32.262547, 46.131851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749241, 31.656693, 45.616367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.350002, 31.672705, 45.635128>,  <33.110458, 31.682312, 45.646385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.350002, 31.672705, 45.635128>,  <33.749241, 31.656693, 45.616367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350002, 31.672705, 45.635128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052366, -0.148552, -0.987517,
		-0.032562, -0.988094, 0.150366,
		-0.998097, 0.040030, 0.046906,
		33.050571, 31.684713, 45.649200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488068, 31.279072, 45.046665>,  <33.749241, 31.656693, 45.616367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488068, 31.279072, 45.046665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.204777, 31.544964, 45.141788>,  <33.034801, 31.704498, 45.198860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.204777, 31.544964, 45.141788>,  <33.488068, 31.279072, 45.046665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204777, 31.544964, 45.141788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281600, 0.042900, -0.958572,
		-0.647392, -0.745853, 0.156804,
		-0.708227, 0.664728, 0.237806,
		32.992310, 31.744383, 45.213131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898033, 31.045471, 44.694649>,  <33.488068, 31.279072, 45.046665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898033, 31.045471, 44.694649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797283, 31.425234, 44.769684>,  <32.736835, 31.653091, 44.814705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797283, 31.425234, 44.769684>,  <32.898033, 31.045471, 44.694649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797283, 31.425234, 44.769684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337455, 0.095506, -0.936484,
		-0.907020, -0.299175, 0.296327,
		-0.251871, 0.949406, 0.187584,
		32.721722, 31.710056, 44.825958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351559, 31.152561, 44.294476>,  <32.898033, 31.045471, 44.694649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351559, 31.152561, 44.294476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476456, 31.522337, 44.382034>,  <32.551392, 31.744204, 44.434570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476456, 31.522337, 44.382034>,  <32.351559, 31.152561, 44.294476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476456, 31.522337, 44.382034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183009, 0.284631, -0.941006,
		-0.932209, 0.253761, 0.258054,
		0.312241, 0.924441, 0.218895,
		32.570129, 31.799669, 44.447704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887566, 31.507940, 44.021343>,  <32.351559, 31.152561, 44.294476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887566, 31.507940, 44.021343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172882, 31.786684, 44.051273>,  <32.344074, 31.953930, 44.069229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172882, 31.786684, 44.051273>,  <31.887566, 31.507940, 44.021343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172882, 31.786684, 44.051273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277222, 0.378574, -0.883080,
		-0.643709, 0.609152, 0.463219,
		0.713293, 0.696861, 0.074822,
		32.386871, 31.995743, 44.073719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538239, 32.179237, 43.854561>,  <31.887566, 31.507940, 44.021343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538239, 32.179237, 43.854561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932627, 32.207233, 43.793949>,  <32.169258, 32.224033, 43.757584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932627, 32.207233, 43.793949>,  <31.538239, 32.179237, 43.854561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932627, 32.207233, 43.793949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166908, 0.421081, -0.891534,
		0.001406, 0.904319, 0.426856,
		0.985972, 0.069992, -0.151530,
		32.228416, 32.228230, 43.748489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663017, 32.823860, 43.605274>,  <31.538239, 32.179237, 43.854561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663017, 32.823860, 43.605274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988369, 32.621513, 43.490376>,  <32.183578, 32.500103, 43.421436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.988369, 32.621513, 43.490376>,  <31.663017, 32.823860, 43.605274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988369, 32.621513, 43.490376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064220, 0.412671, -0.908613,
		0.578178, 0.757494, 0.303171,
		0.813380, -0.505870, -0.287243,
		32.232384, 32.469753, 43.404202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116047, 33.322880, 43.202961>,  <31.663017, 32.823860, 43.605274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116047, 33.322880, 43.202961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273243, 32.982460, 43.063667>,  <32.367561, 32.778206, 42.980091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273243, 32.982460, 43.063667>,  <32.116047, 33.322880, 43.202961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273243, 32.982460, 43.063667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064289, 0.352350, -0.933658,
		0.917292, 0.389307, 0.083757,
		0.392991, -0.851052, -0.348236,
		32.391140, 32.727146, 42.959198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670719, 33.510681, 42.792313>,  <32.116047, 33.322880, 43.202961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670719, 33.510681, 42.792313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565575, 33.138855, 42.688923>,  <32.502487, 32.915760, 42.626888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565575, 33.138855, 42.688923>,  <32.670719, 33.510681, 42.792313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565575, 33.138855, 42.688923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063550, 0.283998, -0.956717,
		0.962738, -0.235060, -0.133727,
		-0.262864, -0.929565, -0.258477,
		32.486717, 32.859985, 42.611382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351387, 33.270363, 42.779881>,  <32.670719, 33.510681, 42.792313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351387, 33.270363, 42.779881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602646, 33.576210, 42.722191>,  <33.753403, 33.759716, 42.687576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602646, 33.576210, 42.722191>,  <33.351387, 33.270363, 42.779881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602646, 33.576210, 42.722191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181989, 0.035837, 0.982647,
		0.756514, -0.643492, -0.116641,
		0.628146, 0.764613, -0.144220,
		33.791088, 33.805595, 42.678925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856052, 33.140007, 43.224934>,  <33.351387, 33.270363, 42.779881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856052, 33.140007, 43.224934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936321, 33.525154, 43.152699>,  <33.984482, 33.756245, 43.109360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936321, 33.525154, 43.152699>,  <33.856052, 33.140007, 43.224934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936321, 33.525154, 43.152699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291823, 0.117214, 0.949263,
		0.935184, -0.243192, -0.257465,
		0.200675, 0.962870, -0.180586,
		33.996525, 33.814014, 43.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532780, 33.301510, 43.485714>,  <33.856052, 33.140007, 43.224934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532780, 33.301510, 43.485714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340672, 33.652111, 43.472569>,  <34.225407, 33.862473, 43.464680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340672, 33.652111, 43.472569>,  <34.532780, 33.301510, 43.485714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340672, 33.652111, 43.472569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280046, 0.188741, 0.941250,
		0.831212, 0.442851, -0.336109,
		-0.480271, 0.876504, -0.032865,
		34.196590, 33.915062, 43.462708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030922, 33.789707, 43.760548>,  <34.532780, 33.301510, 43.485714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030922, 33.789707, 43.760548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671665, 33.961941, 43.796177>,  <34.456112, 34.065281, 43.817554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671665, 33.961941, 43.796177>,  <35.030922, 33.789707, 43.760548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671665, 33.961941, 43.796177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270159, 0.380565, 0.884412,
		0.346918, 0.818392, -0.458129,
		-0.898144, 0.430586, 0.089071,
		34.402222, 34.091118, 43.822899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165955, 34.484913, 44.088921>,  <35.030922, 33.789707, 43.760548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165955, 34.484913, 44.088921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783318, 34.403454, 44.172314>,  <34.553738, 34.354580, 44.222347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783318, 34.403454, 44.172314>,  <35.165955, 34.484913, 44.088921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783318, 34.403454, 44.172314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120302, 0.375644, 0.918923,
		-0.265447, 0.904113, -0.334839,
		-0.956590, -0.203644, 0.208480,
		34.496342, 34.342361, 44.234859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862034, 35.068943, 44.525967>,  <35.165955, 34.484913, 44.088921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862034, 35.068943, 44.525967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629108, 34.747097, 44.572449>,  <34.489353, 34.553989, 44.600338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629108, 34.747097, 44.572449>,  <34.862034, 35.068943, 44.525967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629108, 34.747097, 44.572449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069231, 0.093337, 0.993225,
		-0.810012, 0.586412, 0.001353,
		-0.582313, -0.804617, 0.116202,
		34.454414, 34.505711, 44.607307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647449, 35.155060, 45.224091>,  <34.862034, 35.068943, 44.525967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647449, 35.155060, 45.224091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541420, 34.776283, 45.151390>,  <34.477802, 34.549015, 45.107769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541420, 34.776283, 45.151390>,  <34.647449, 35.155060, 45.224091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541420, 34.776283, 45.151390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119854, -0.219391, 0.968247,
		-0.956750, 0.234874, 0.171650,
		-0.265075, -0.946943, -0.181752,
		34.461899, 34.492199, 45.096863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214729, 34.909477, 45.722492>,  <34.647449, 35.155060, 45.224091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214729, 34.909477, 45.722492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317692, 34.550205, 45.579941>,  <34.379471, 34.334641, 45.494408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317692, 34.550205, 45.579941>,  <34.214729, 34.909477, 45.722492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317692, 34.550205, 45.579941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058761, -0.382676, 0.922012,
		-0.964514, -0.216393, -0.151282,
		0.257409, -0.898184, -0.356381,
		34.394913, 34.280750, 45.473026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771523, 34.357437, 46.135357>,  <34.214729, 34.909477, 45.722492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771523, 34.357437, 46.135357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107025, 34.195694, 45.989491>,  <34.308327, 34.098648, 45.901970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107025, 34.195694, 45.989491>,  <33.771523, 34.357437, 46.135357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107025, 34.195694, 45.989491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172740, -0.437523, 0.882459,
		-0.516385, -0.803159, -0.297125,
		0.838754, -0.404363, -0.364668,
		34.358650, 34.074387, 45.880089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784721, 33.720638, 46.433662>,  <33.771523, 34.357437, 46.135357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784721, 33.720638, 46.433662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164799, 33.767220, 46.318031>,  <34.392845, 33.795170, 46.248653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164799, 33.767220, 46.318031>,  <33.784721, 33.720638, 46.433662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164799, 33.767220, 46.318031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309073, -0.232938, 0.922070,
		0.040040, -0.965494, -0.257329,
		0.950195, 0.116454, -0.289081,
		34.449856, 33.802155, 46.231308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118145, 33.083561, 46.583939>,  <33.784721, 33.720638, 46.433662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118145, 33.083561, 46.583939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405167, 33.359261, 46.543835>,  <34.577377, 33.524681, 46.519772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405167, 33.359261, 46.543835>,  <34.118145, 33.083561, 46.583939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405167, 33.359261, 46.543835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465844, -0.367913, 0.804754,
		0.517793, -0.624156, -0.585081,
		0.717551, 0.689253, -0.100257,
		34.620434, 33.566036, 46.513756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715408, 32.750816, 46.603531>,  <34.118145, 33.083561, 46.583939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715408, 32.750816, 46.603531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821590, 33.122547, 46.706200>,  <34.885300, 33.345585, 46.767799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.821590, 33.122547, 46.706200>,  <34.715408, 32.750816, 46.603531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821590, 33.122547, 46.706200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377984, -0.345224, 0.859039,
		0.886939, -0.131023, -0.442914,
		0.265458, 0.929329, 0.256668,
		34.901230, 33.401344, 46.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340237, 32.714436, 46.863632>,  <34.715408, 32.750816, 46.603531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340237, 32.714436, 46.863632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254185, 33.078224, 47.005947>,  <35.202553, 33.296497, 47.091335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254185, 33.078224, 47.005947>,  <35.340237, 32.714436, 46.863632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254185, 33.078224, 47.005947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485841, -0.216368, 0.846843,
		0.847160, 0.355034, -0.395311,
		-0.215126, 0.909470, 0.355789,
		35.189648, 33.351067, 47.112682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003696, 32.920795, 47.193897>,  <35.340237, 32.714436, 46.863632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003696, 32.920795, 47.193897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680927, 33.103878, 47.343227>,  <35.487267, 33.213730, 47.432827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680927, 33.103878, 47.343227>,  <36.003696, 32.920795, 47.193897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680927, 33.103878, 47.343227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238372, -0.325940, 0.914845,
		0.540415, 0.827203, 0.153904,
		-0.806926, 0.457710, 0.373325,
		35.438850, 33.241192, 47.455223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529736, 33.493317, 47.143841>,  <36.003696, 32.920795, 47.193897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529736, 33.493317, 47.143841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920467, 33.497211, 47.229355>,  <37.154907, 33.499546, 47.280663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920467, 33.497211, 47.229355>,  <36.529736, 33.493317, 47.143841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920467, 33.497211, 47.229355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182672, 0.482532, -0.856618,
		-0.111497, 0.875824, 0.469574,
		0.976831, 0.009733, 0.213789,
		37.213516, 33.500130, 47.293491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828304, 34.194233, 47.202682>,  <36.529736, 33.493317, 47.143841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828304, 34.194233, 47.202682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138248, 33.973022, 47.080200>,  <37.324215, 33.840298, 47.006710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138248, 33.973022, 47.080200>,  <36.828304, 34.194233, 47.202682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138248, 33.973022, 47.080200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085677, 0.571810, -0.815900,
		0.626305, 0.605970, 0.490451,
		0.774856, -0.553023, -0.306210,
		37.370705, 33.807117, 46.988338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345455, 34.679829, 47.057293>,  <36.828304, 34.194233, 47.202682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345455, 34.679829, 47.057293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434025, 34.345894, 46.855694>,  <37.487167, 34.145535, 46.734734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434025, 34.345894, 46.855694>,  <37.345455, 34.679829, 47.057293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434025, 34.345894, 46.855694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086862, 0.531661, -0.842491,
		0.971300, 0.142773, 0.190240,
		0.221428, -0.834837, -0.504001,
		37.500454, 34.095444, 46.704494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925087, 34.886932, 46.674252>,  <37.345455, 34.679829, 47.057293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925087, 34.886932, 46.674252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796803, 34.561550, 46.480164>,  <37.719833, 34.366322, 46.363708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796803, 34.561550, 46.480164>,  <37.925087, 34.886932, 46.674252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796803, 34.561550, 46.480164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104311, 0.478834, -0.871686,
		0.941417, -0.330169, -0.068713,
		-0.320706, -0.813453, -0.485223,
		37.700592, 34.317513, 46.334599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369511, 34.777523, 46.002804>,  <37.925087, 34.886932, 46.674252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369511, 34.777523, 46.002804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.068466, 34.523239, 45.934166>,  <37.887840, 34.370670, 45.892982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.068466, 34.523239, 45.934166>,  <38.369511, 34.777523, 46.002804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068466, 34.523239, 45.934166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001705, 0.258720, -0.965951,
		0.658458, -0.727282, -0.193633,
		-0.752615, -0.635708, -0.171596,
		37.842682, 34.332527, 45.882687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484383, 34.533604, 45.347076>,  <38.369511, 34.777523, 46.002804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484383, 34.533604, 45.347076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091927, 34.458500, 45.365448>,  <37.856453, 34.413437, 45.376472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091927, 34.458500, 45.365448>,  <38.484383, 34.533604, 45.347076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091927, 34.458500, 45.365448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110185, 0.348020, -0.930990,
		0.158817, -0.918492, -0.362144,
		-0.981141, -0.187760, 0.045933,
		37.797585, 34.402172, 45.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279209, 33.987152, 44.811832>,  <38.484383, 34.533604, 45.347076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279209, 33.987152, 44.811832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962208, 34.212925, 44.904228>,  <37.772007, 34.348389, 44.959667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962208, 34.212925, 44.904228>,  <38.279209, 33.987152, 44.811832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962208, 34.212925, 44.904228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134912, 0.207121, -0.968969,
		-0.594756, -0.799075, -0.087996,
		-0.792505, 0.564428, 0.230991,
		37.724457, 34.382252, 44.973526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824963, 33.775806, 44.327721>,  <38.279209, 33.987152, 44.811832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824963, 33.775806, 44.327721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693928, 34.131828, 44.454525>,  <37.615307, 34.345440, 44.530609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.693928, 34.131828, 44.454525>,  <37.824963, 33.775806, 44.327721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693928, 34.131828, 44.454525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292937, 0.223316, -0.929687,
		-0.898263, -0.397416, 0.187574,
		-0.327584, 0.890051, 0.317015,
		37.595654, 34.398842, 44.549629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183727, 33.882469, 43.976505>,  <37.824963, 33.775806, 44.327721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183727, 33.882469, 43.976505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337261, 34.240665, 44.066631>,  <37.429382, 34.455585, 44.120705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.337261, 34.240665, 44.066631>,  <37.183727, 33.882469, 43.976505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337261, 34.240665, 44.066631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365852, 0.371512, -0.853306,
		-0.847835, 0.245096, 0.470216,
		0.383833, 0.895492, 0.225313,
		37.452412, 34.509312, 44.134224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926258, 34.346848, 43.499146>,  <37.183727, 33.882469, 43.976505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926258, 34.346848, 43.499146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184105, 34.612663, 43.650330>,  <37.338814, 34.772152, 43.741039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184105, 34.612663, 43.650330>,  <36.926258, 34.346848, 43.499146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184105, 34.612663, 43.650330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006954, 0.499466, -0.866305,
		-0.764471, 0.555810, 0.326588,
		0.644621, 0.664536, 0.377962,
		37.377491, 34.812023, 43.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743500, 35.024826, 43.238850>,  <36.926258, 34.346848, 43.499146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743500, 35.024826, 43.238850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129498, 35.045818, 43.341637>,  <37.361095, 35.058414, 43.403309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129498, 35.045818, 43.341637>,  <36.743500, 35.024826, 43.238850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129498, 35.045818, 43.341637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226322, 0.328474, -0.916997,
		-0.132537, 0.943054, 0.305097,
		0.964993, 0.052485, 0.256969,
		37.418995, 35.061565, 43.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891918, 35.719402, 42.982910>,  <36.743500, 35.024826, 43.238850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891918, 35.719402, 42.982910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216454, 35.486610, 43.004902>,  <37.411175, 35.346935, 43.018097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216454, 35.486610, 43.004902>,  <36.891918, 35.719402, 42.982910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216454, 35.486610, 43.004902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220316, 0.217306, -0.950915,
		0.541466, 0.783630, 0.304530,
		0.811342, -0.581981, 0.054983,
		37.459858, 35.312016, 43.021397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286156, 36.006672, 42.508465>,  <36.891918, 35.719402, 42.982910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286156, 36.006672, 42.508465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462543, 35.650188, 42.550995>,  <37.568375, 35.436298, 42.576511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.462543, 35.650188, 42.550995>,  <37.286156, 36.006672, 42.508465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462543, 35.650188, 42.550995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109755, -0.064031, -0.991894,
		0.890788, 0.449061, 0.069579,
		0.440965, -0.891204, 0.106325,
		37.594833, 35.382828, 42.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919250, 36.016590, 42.115356>,  <37.286156, 36.006672, 42.508465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919250, 36.016590, 42.115356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847191, 35.625530, 42.158718>,  <37.803955, 35.390896, 42.184734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847191, 35.625530, 42.158718>,  <37.919250, 36.016590, 42.115356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847191, 35.625530, 42.158718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002683, -0.109721, -0.993959,
		0.983636, -0.179348, 0.017143,
		-0.180145, -0.977648, 0.108406,
		37.793148, 35.332237, 42.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.553221, 40.436176, 29.753469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329405, 40.362015, 29.430349>,  <30.195114, 40.317516, 29.236477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329405, 40.362015, 29.430349>,  <30.553221, 40.436176, 29.753469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329405, 40.362015, 29.430349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707275, -0.401278, 0.582012,
		-0.432060, 0.896995, 0.093399,
		-0.559541, -0.185405, -0.807799,
		30.161543, 40.306393, 29.188009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850031, 40.665562, 29.873075>,  <30.553221, 40.436176, 29.753469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850031, 40.665562, 29.873075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811605, 40.399948, 29.576473>,  <29.788549, 40.240578, 29.398512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811605, 40.399948, 29.576473>,  <29.850031, 40.665562, 29.873075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811605, 40.399948, 29.576473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938678, -0.187393, 0.289426,
		-0.331142, 0.723837, -0.605314,
		-0.096065, -0.664036, -0.741504,
		29.782785, 40.200737, 29.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239592, 40.893742, 29.546585>,  <29.850031, 40.665562, 29.873075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239592, 40.893742, 29.546585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323137, 40.506851, 29.488823>,  <29.373264, 40.274719, 29.454165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323137, 40.506851, 29.488823>,  <29.239592, 40.893742, 29.546585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323137, 40.506851, 29.488823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903080, -0.247425, 0.351038,
		-0.375262, 0.057092, -0.925159,
		0.208866, -0.967224, -0.144408,
		29.385798, 40.216682, 29.445501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666002, 40.543125, 29.237392>,  <29.239592, 40.893742, 29.546585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666002, 40.543125, 29.237392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880909, 40.248066, 29.400967>,  <29.009853, 40.071030, 29.499111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880909, 40.248066, 29.400967>,  <28.666002, 40.543125, 29.237392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880909, 40.248066, 29.400967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843406, -0.467923, 0.264036,
		-0.003415, -0.486755, -0.873532,
		0.537266, -0.737643, 0.408934,
		29.042089, 40.026772, 29.523647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162525, 40.094608, 29.123981>,  <28.666002, 40.543125, 29.237392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162525, 40.094608, 29.123981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426977, 39.931999, 29.376217>,  <28.585649, 39.834435, 29.527557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426977, 39.931999, 29.376217>,  <28.162525, 40.094608, 29.123981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426977, 39.931999, 29.376217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736153, -0.513762, 0.440599,
		0.144858, -0.755504, -0.638929,
		0.661132, -0.406525, 0.630589,
		28.625317, 39.810043, 29.565393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947119, 39.311188, 29.208536>,  <28.162525, 40.094608, 29.123981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947119, 39.311188, 29.208536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181496, 39.398094, 29.520809>,  <28.322123, 39.450237, 29.708174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181496, 39.398094, 29.520809>,  <27.947119, 39.311188, 29.208536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181496, 39.398094, 29.520809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580687, -0.559388, 0.591512,
		0.565220, -0.799925, -0.201606,
		0.585942, 0.217265, 0.780684,
		28.357279, 39.463272, 29.755014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985191, 38.544819, 29.560139>,  <27.947119, 39.311188, 29.208536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985191, 38.544819, 29.560139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105301, 38.831306, 29.812128>,  <28.177366, 39.003197, 29.963322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.105301, 38.831306, 29.812128>,  <27.985191, 38.544819, 29.560139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105301, 38.831306, 29.812128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515959, -0.433529, 0.738809,
		0.802260, -0.546887, 0.239360,
		0.300276, 0.716218, 0.629974,
		28.195383, 39.046173, 30.001120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206963, 38.259521, 30.204479>,  <27.985191, 38.544819, 29.560139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206963, 38.259521, 30.204479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089951, 38.627136, 30.310162>,  <28.019743, 38.847706, 30.373571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089951, 38.627136, 30.310162>,  <28.206963, 38.259521, 30.204479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089951, 38.627136, 30.310162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638385, -0.393396, 0.661592,
		0.711962, 0.024871, 0.701777,
		-0.292531, 0.919033, 0.264205,
		28.002192, 38.902847, 30.389423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262897, 38.319725, 30.917749>,  <28.206963, 38.259521, 30.204479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262897, 38.319725, 30.917749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990156, 38.585625, 30.795650>,  <27.826511, 38.745167, 30.722391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990156, 38.585625, 30.795650>,  <28.262897, 38.319725, 30.917749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990156, 38.585625, 30.795650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664891, -0.389267, 0.637488,
		0.304949, 0.637632, 0.707412,
		-0.681855, 0.664753, -0.305250,
		27.785599, 38.785049, 30.704075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978466, 38.474911, 31.575123>,  <28.262897, 38.319725, 30.917749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978466, 38.474911, 31.575123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732044, 38.602379, 31.286976>,  <27.584192, 38.678860, 31.114088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732044, 38.602379, 31.286976>,  <27.978466, 38.474911, 31.575123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732044, 38.602379, 31.286976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787705, -0.249346, 0.563336,
		-0.000101, 0.914481, 0.404629,
		-0.616053, 0.318671, -0.720366,
		27.547228, 38.697979, 31.070866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623739, 39.083809, 31.920856>,  <27.978466, 38.474911, 31.575123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623739, 39.083809, 31.920856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366848, 38.941513, 31.649271>,  <27.212713, 38.856136, 31.486319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366848, 38.941513, 31.649271>,  <27.623739, 39.083809, 31.920856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366848, 38.941513, 31.649271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654325, -0.206944, 0.727347,
		-0.399253, 0.911386, -0.099863,
		-0.642228, -0.355739, -0.678965,
		27.174179, 38.834793, 31.445581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992315, 39.299686, 32.185467>,  <27.623739, 39.083809, 31.920856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992315, 39.299686, 32.185467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897755, 39.017231, 31.918489>,  <26.841019, 38.847755, 31.758305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.897755, 39.017231, 31.918489>,  <26.992315, 39.299686, 32.185467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897755, 39.017231, 31.918489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628866, -0.412448, 0.659101,
		-0.740704, 0.575542, -0.346567,
		-0.236399, -0.706143, -0.667441,
		26.826836, 38.805389, 31.718258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335224, 39.143806, 32.298206>,  <26.992315, 39.299686, 32.185467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335224, 39.143806, 32.298206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439270, 38.813019, 32.098824>,  <26.501698, 38.614548, 31.979193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439270, 38.813019, 32.098824>,  <26.335224, 39.143806, 32.298206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439270, 38.813019, 32.098824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784028, -0.482205, 0.390868,
		-0.563596, 0.289138, -0.773795,
		0.260113, -0.826969, -0.498461,
		26.517303, 38.564930, 31.949286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651911, 38.981564, 32.114056>,  <26.335224, 39.143806, 32.298206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651911, 38.981564, 32.114056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883297, 38.657253, 32.078224>,  <26.022129, 38.462669, 32.056725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883297, 38.657253, 32.078224>,  <25.651911, 38.981564, 32.114056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883297, 38.657253, 32.078224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600281, -0.497476, 0.626243,
		-0.552307, -0.308484, -0.774464,
		0.578463, -0.810775, -0.089582,
		26.056835, 38.414021, 32.051350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190737, 38.384842, 32.134510>,  <25.651911, 38.981564, 32.114056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190737, 38.384842, 32.134510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546124, 38.229904, 32.232971>,  <25.759356, 38.136940, 32.292046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546124, 38.229904, 32.232971>,  <25.190737, 38.384842, 32.134510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546124, 38.229904, 32.232971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437428, -0.552431, 0.709561,
		-0.138866, -0.738094, -0.660253,
		0.888467, -0.387347, 0.246149,
		25.812664, 38.113701, 32.306816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067749, 37.718033, 32.202633>,  <25.190737, 38.384842, 32.134510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067749, 37.718033, 32.202633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.417490, 37.754292, 32.393333>,  <25.627335, 37.776047, 32.507755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.417490, 37.754292, 32.393333>,  <25.067749, 37.718033, 32.202633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417490, 37.754292, 32.393333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325002, -0.620181, 0.713967,
		0.360392, -0.779204, -0.512795,
		0.874352, 0.090648, 0.476751,
		25.679796, 37.781487, 32.536358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272549, 37.012936, 32.380226>,  <25.067749, 37.718033, 32.202633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272549, 37.012936, 32.380226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.465530, 37.262871, 32.625767>,  <25.581320, 37.412830, 32.773090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.465530, 37.262871, 32.625767>,  <25.272549, 37.012936, 32.380226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465530, 37.262871, 32.625767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248318, -0.574494, 0.779933,
		0.839985, -0.528715, -0.122011,
		0.482456, 0.624834, 0.613855,
		25.610268, 37.450321, 32.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677937, 36.621284, 32.760567>,  <25.272549, 37.012936, 32.380226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677937, 36.621284, 32.760567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673477, 36.940041, 33.002174>,  <25.670801, 37.131294, 33.147141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673477, 36.940041, 33.002174>,  <25.677937, 36.621284, 32.760567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673477, 36.940041, 33.002174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189225, -0.594828, 0.781264,
		0.981870, -0.105588, 0.157422,
		-0.011147, 0.796888, 0.604024,
		25.670134, 37.179108, 33.183380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198053, 36.471138, 33.314117>,  <25.677937, 36.621284, 32.760567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198053, 36.471138, 33.314117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916124, 36.729481, 33.431492>,  <25.746967, 36.884487, 33.501915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916124, 36.729481, 33.431492>,  <26.198053, 36.471138, 33.314117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916124, 36.729481, 33.431492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151852, -0.541415, 0.826928,
		0.692943, 0.538278, 0.479674,
		-0.704820, 0.645853, 0.293431,
		25.704678, 36.923237, 33.519520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371126, 36.464111, 33.972580>,  <26.198053, 36.471138, 33.314117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371126, 36.464111, 33.972580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012928, 36.640831, 33.951023>,  <25.798010, 36.746864, 33.938091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012928, 36.640831, 33.951023>,  <26.371126, 36.464111, 33.972580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012928, 36.640831, 33.951023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330528, -0.579048, 0.745289,
		0.298065, 0.685213, 0.664561,
		-0.895494, 0.441800, -0.053888,
		25.744280, 36.773373, 33.934856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246391, 36.091858, 34.680225>,  <26.371126, 36.464111, 33.972580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246391, 36.091858, 34.680225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579641, 35.876747, 34.731918>,  <26.779591, 35.747681, 34.762936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579641, 35.876747, 34.731918>,  <26.246391, 36.091858, 34.680225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579641, 35.876747, 34.731918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551511, 0.825380, -0.120761,
		-0.041727, 0.171884, 0.984233,
		0.833124, -0.537776, 0.129236,
		26.829578, 35.715416, 34.770691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628109, 36.562489, 35.048183>,  <26.246391, 36.091858, 34.680225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628109, 36.562489, 35.048183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886173, 36.293629, 34.902870>,  <27.041012, 36.132313, 34.815681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886173, 36.293629, 34.902870>,  <26.628109, 36.562489, 35.048183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886173, 36.293629, 34.902870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618033, 0.738659, -0.269105,
		0.449225, -0.050906, 0.891967,
		0.645161, -0.672154, -0.363286,
		27.079721, 36.091984, 34.793884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299980, 36.776367, 35.323669>,  <26.628109, 36.562489, 35.048183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299980, 36.776367, 35.323669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425360, 36.541988, 35.024761>,  <27.500587, 36.401360, 34.845417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425360, 36.541988, 35.024761>,  <27.299980, 36.776367, 35.323669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425360, 36.541988, 35.024761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741561, 0.642583, -0.192807,
		0.593159, -0.493712, 0.635933,
		0.313448, -0.585948, -0.747271,
		27.519394, 36.366203, 34.800579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055365, 36.510357, 35.311646>,  <27.299980, 36.776367, 35.323669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055365, 36.510357, 35.311646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945972, 36.506947, 34.926910>,  <27.880337, 36.504902, 34.696068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945972, 36.506947, 34.926910>,  <28.055365, 36.510357, 35.311646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945972, 36.506947, 34.926910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740204, 0.636708, -0.216105,
		0.614254, -0.771058, -0.167817,
		-0.273479, -0.008524, -0.961840,
		27.863928, 36.504391, 34.638359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691151, 36.326782, 34.931026>,  <28.055365, 36.510357, 35.311646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691151, 36.326782, 34.931026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434437, 36.442009, 34.646736>,  <28.280409, 36.511147, 34.476162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434437, 36.442009, 34.646736>,  <28.691151, 36.326782, 34.931026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434437, 36.442009, 34.646736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754813, 0.401066, -0.519041,
		0.135528, -0.869577, -0.474836,
		-0.641786, 0.288068, -0.710723,
		28.241901, 36.528431, 34.433517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070627, 36.134167, 34.289917>,  <28.691151, 36.326782, 34.931026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070627, 36.134167, 34.289917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815638, 36.426678, 34.192871>,  <28.662643, 36.602184, 34.134644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815638, 36.426678, 34.192871>,  <29.070627, 36.134167, 34.289917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815638, 36.426678, 34.192871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722377, 0.457773, -0.518281,
		-0.267946, -0.505648, -0.820076,
		-0.637476, 0.731276, -0.242610,
		28.624395, 36.646061, 34.120087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060240, 36.221153, 33.566692>,  <29.070627, 36.134167, 34.289917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060240, 36.221153, 33.566692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938082, 36.566208, 33.727978>,  <28.864786, 36.773243, 33.824749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938082, 36.566208, 33.727978>,  <29.060240, 36.221153, 33.566692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938082, 36.566208, 33.727978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695992, 0.491209, -0.523746,
		-0.649869, 0.120687, -0.750404,
		-0.305396, 0.862641, 0.403218,
		28.846462, 36.825001, 33.848942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972301, 36.656254, 32.984077>,  <29.060240, 36.221153, 33.566692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972301, 36.656254, 32.984077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003487, 36.913647, 33.288670>,  <29.022198, 37.068081, 33.471424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003487, 36.913647, 33.288670>,  <28.972301, 36.656254, 32.984077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003487, 36.913647, 33.288670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684789, 0.520549, -0.509993,
		-0.724559, 0.561216, -0.400064,
		0.077963, 0.643479, 0.761483,
		29.026876, 37.106689, 33.517113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931908, 37.363888, 32.732243>,  <28.972301, 36.656254, 32.984077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931908, 37.363888, 32.732243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115633, 37.458096, 33.074837>,  <29.225868, 37.514622, 33.280392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115633, 37.458096, 33.074837>,  <28.931908, 37.363888, 32.732243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115633, 37.458096, 33.074837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478635, 0.746637, -0.461998,
		-0.748290, 0.622144, 0.230213,
		0.459315, 0.235520, 0.856481,
		29.253428, 37.528751, 33.331779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977890, 38.126705, 32.710312>,  <28.931908, 37.363888, 32.732243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977890, 38.126705, 32.710312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242334, 38.002129, 32.983349>,  <29.401001, 37.927383, 33.147171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242334, 38.002129, 32.983349>,  <28.977890, 38.126705, 32.710312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242334, 38.002129, 32.983349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617644, 0.742425, -0.259463,
		-0.425967, 0.593134, 0.683187,
		0.661111, -0.311444, 0.682595,
		29.440668, 37.908695, 33.188126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206999, 38.717056, 33.146240>,  <28.977890, 38.126705, 32.710312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206999, 38.717056, 33.146240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517879, 38.467312, 33.177544>,  <29.704409, 38.317463, 33.196327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517879, 38.467312, 33.177544>,  <29.206999, 38.717056, 33.146240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517879, 38.467312, 33.177544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611288, 0.719649, -0.329291,
		0.149277, 0.303766, 0.940980,
		0.777202, -0.624365, 0.078262,
		29.751040, 38.280003, 33.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647516, 39.231186, 33.218887>,  <29.206999, 38.717056, 33.146240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647516, 39.231186, 33.218887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854134, 38.893776, 33.160038>,  <29.978104, 38.691330, 33.124729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854134, 38.893776, 33.160038>,  <29.647516, 39.231186, 33.218887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854134, 38.893776, 33.160038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792093, 0.535987, -0.292071,
		0.325226, 0.034331, 0.945013,
		0.516542, -0.843528, -0.147124,
		30.009096, 38.640717, 33.115902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312252, 39.247585, 33.564610>,  <29.647516, 39.231186, 33.218887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312252, 39.247585, 33.564610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384104, 38.963665, 33.292164>,  <30.427216, 38.793312, 33.128696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384104, 38.963665, 33.292164>,  <30.312252, 39.247585, 33.564610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384104, 38.963665, 33.292164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865744, 0.442850, -0.233176,
		0.467139, -0.547785, 0.694055,
		0.179632, -0.709800, -0.681114,
		30.437994, 38.750725, 33.087830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986658, 38.931931, 33.703598>,  <30.312252, 39.247585, 33.564610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986658, 38.931931, 33.703598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891085, 38.896568, 33.316795>,  <30.833740, 38.875351, 33.084713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891085, 38.896568, 33.316795>,  <30.986658, 38.931931, 33.703598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891085, 38.896568, 33.316795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770538, 0.588755, -0.244212,
		0.590916, -0.803463, -0.072559,
		-0.238935, -0.088400, -0.967003,
		30.819405, 38.870049, 33.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578785, 38.744671, 33.556267>,  <30.986658, 38.931931, 33.703598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578785, 38.744671, 33.556267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379173, 38.880795, 33.237480>,  <31.259405, 38.962467, 33.046207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379173, 38.880795, 33.237480>,  <31.578785, 38.744671, 33.556267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379173, 38.880795, 33.237480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811735, 0.505555, -0.292404,
		0.303403, -0.792846, -0.528529,
		-0.499031, 0.340309, -0.796968,
		31.229464, 38.982887, 32.998390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038929, 38.597717, 33.008144>,  <31.578785, 38.744671, 33.556267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038929, 38.597717, 33.008144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786184, 38.876938, 32.873402>,  <31.634537, 39.044472, 32.792557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786184, 38.876938, 32.873402>,  <32.038929, 38.597717, 33.008144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786184, 38.876938, 32.873402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760404, 0.474133, -0.443828,
		-0.150102, -0.536584, -0.830390,
		-0.631866, 0.698051, -0.336852,
		31.596624, 39.086353, 32.772346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173283, 38.672173, 32.294716>,  <32.038929, 38.597717, 33.008144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173283, 38.672173, 32.294716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010391, 39.011765, 32.429413>,  <31.912657, 39.215519, 32.510231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010391, 39.011765, 32.429413>,  <32.173283, 38.672173, 32.294716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010391, 39.011765, 32.429413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782151, 0.514548, -0.351399,
		-0.471602, 0.120285, -0.873569,
		-0.407225, 0.848983, 0.336742,
		31.888224, 39.266460, 32.530434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395390, 39.080322, 31.743977>,  <32.173283, 38.672173, 32.294716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395390, 39.080322, 31.743977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251553, 39.340904, 32.011200>,  <32.165249, 39.497253, 32.171532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251553, 39.340904, 32.011200>,  <32.395390, 39.080322, 31.743977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251553, 39.340904, 32.011200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394054, 0.754994, -0.524123,
		-0.845821, 0.074778, -0.528200,
		-0.359595, 0.651454, 0.668056,
		32.143673, 39.536339, 32.211617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914309, 39.561050, 31.447023>,  <32.395390, 39.080322, 31.743977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914309, 39.561050, 31.447023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.065269, 39.749237, 31.766079>,  <32.155846, 39.862148, 31.957512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.065269, 39.749237, 31.766079>,  <31.914309, 39.561050, 31.447023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065269, 39.749237, 31.766079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374893, 0.709980, -0.596141,
		-0.846771, 0.524015, 0.091575,
		0.377404, 0.470464, 0.797640,
		32.178490, 39.890377, 32.005371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814520, 40.248634, 31.293352>,  <31.914309, 39.561050, 31.447023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814520, 40.248634, 31.293352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.111774, 40.222904, 31.559769>,  <32.290127, 40.207466, 31.719618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.111774, 40.222904, 31.559769>,  <31.814520, 40.248634, 31.293352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111774, 40.222904, 31.559769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595317, 0.518036, -0.614196,
		-0.305523, 0.852936, 0.423267,
		0.743138, -0.064327, 0.666039,
		32.334717, 40.203606, 31.759581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014038, 40.881973, 31.537403>,  <31.814520, 40.248634, 31.293352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014038, 40.881973, 31.537403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356140, 40.683788, 31.598139>,  <32.561401, 40.564877, 31.634581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356140, 40.683788, 31.598139>,  <32.014038, 40.881973, 31.537403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356140, 40.683788, 31.598139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452911, 0.572304, -0.683622,
		0.251812, 0.653440, 0.713867,
		0.855255, -0.495463, 0.151837,
		32.612717, 40.535149, 31.643690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587734, 41.405964, 31.741592>,  <32.014038, 40.881973, 31.537403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587734, 41.405964, 31.741592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750294, 41.070332, 31.596935>,  <32.847832, 40.868954, 31.510141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750294, 41.070332, 31.596935>,  <32.587734, 41.405964, 31.741592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750294, 41.070332, 31.596935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523489, 0.538229, -0.660506,
		0.748863, 0.079114, 0.657985,
		0.406402, -0.839077, -0.361645,
		32.872215, 40.818607, 31.488441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.689915, 32.696484, 46.961384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354794, 32.503780, 46.858627>,  <40.153721, 32.388161, 46.796974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354794, 32.503780, 46.858627>,  <40.689915, 32.696484, 46.961384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354794, 32.503780, 46.858627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032768, -0.425306, 0.904456,
		-0.544984, 0.766176, 0.340537,
		-0.837806, -0.481756, -0.256891,
		40.103451, 32.359253, 46.781559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229744, 32.632042, 47.604191>,  <40.689915, 32.696484, 46.961384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229744, 32.632042, 47.604191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120693, 32.347721, 47.344826>,  <40.055264, 32.177128, 47.189205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120693, 32.347721, 47.344826>,  <40.229744, 32.632042, 47.604191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120693, 32.347721, 47.344826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327149, -0.565298, 0.757239,
		-0.904792, 0.418571, -0.078422,
		-0.272627, -0.710800, -0.648412,
		40.038906, 32.134480, 47.150303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548981, 32.607948, 47.619041>,  <40.229744, 32.632042, 47.604191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548981, 32.607948, 47.619041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684036, 32.250172, 47.501751>,  <39.765068, 32.035507, 47.431377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684036, 32.250172, 47.501751>,  <39.548981, 32.607948, 47.619041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684036, 32.250172, 47.501751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222907, -0.378639, 0.898301,
		-0.914503, -0.237935, -0.327218,
		0.337635, -0.894438, -0.293229,
		39.785328, 31.981840, 47.413784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125748, 32.059212, 47.941380>,  <39.548981, 32.607948, 47.619041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125748, 32.059212, 47.941380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449455, 31.851339, 47.831833>,  <39.643681, 31.726614, 47.766106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449455, 31.851339, 47.831833>,  <39.125748, 32.059212, 47.941380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449455, 31.851339, 47.831833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021193, -0.491738, 0.870485,
		-0.587050, -0.698657, -0.408964,
		0.809273, -0.519686, -0.273868,
		39.692238, 31.695435, 47.749672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077759, 31.438644, 48.223625>,  <39.125748, 32.059212, 47.941380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077759, 31.438644, 48.223625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467606, 31.431004, 48.134403>,  <39.701515, 31.426418, 48.080872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467606, 31.431004, 48.134403>,  <39.077759, 31.438644, 48.223625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467606, 31.431004, 48.134403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179936, -0.525962, 0.831257,
		-0.133197, -0.850294, -0.509175,
		0.974619, -0.019102, -0.223055,
		39.759991, 31.425272, 48.067486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220242, 30.810715, 48.229656>,  <39.077759, 31.438644, 48.223625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220242, 30.810715, 48.229656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580566, 30.976048, 48.282867>,  <39.796761, 31.075247, 48.314796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580566, 30.976048, 48.282867>,  <39.220242, 30.810715, 48.229656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580566, 30.976048, 48.282867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174769, -0.625598, 0.760318,
		0.397486, -0.661653, -0.635783,
		0.900811, 0.413331, 0.133030,
		39.850811, 31.100046, 48.322777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724133, 30.257668, 48.444710>,  <39.220242, 30.810715, 48.229656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724133, 30.257668, 48.444710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877266, 30.609488, 48.557728>,  <39.969147, 30.820580, 48.625538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877266, 30.609488, 48.557728>,  <39.724133, 30.257668, 48.444710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877266, 30.609488, 48.557728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276838, -0.401010, 0.873242,
		0.881363, -0.256087, -0.397012,
		0.382832, 0.879551, 0.282541,
		39.992115, 30.873352, 48.642490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317307, 30.101864, 48.695042>,  <39.724133, 30.257668, 48.444710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317307, 30.101864, 48.695042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.261909, 30.460110, 48.864132>,  <40.228672, 30.675056, 48.965588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.261909, 30.460110, 48.864132>,  <40.317307, 30.101864, 48.695042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261909, 30.460110, 48.864132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280625, -0.373857, 0.884014,
		0.949773, 0.241056, -0.199555,
		-0.138492, 0.895613, 0.422725,
		40.220364, 30.728794, 48.990948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854111, 30.107113, 49.187859>,  <40.317307, 30.101864, 48.695042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854111, 30.107113, 49.187859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585506, 30.383310, 49.295403>,  <40.424343, 30.549028, 49.359928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585506, 30.383310, 49.295403>,  <40.854111, 30.107113, 49.187859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585506, 30.383310, 49.295403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109320, -0.266551, 0.957601,
		0.732885, 0.672433, 0.103508,
		-0.671513, 0.690496, 0.268861,
		40.384052, 30.590460, 49.376060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997986, 30.107439, 49.875023>,  <40.854111, 30.107113, 49.187859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997986, 30.107439, 49.875023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653397, 30.309528, 49.854603>,  <40.446644, 30.430782, 49.842350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.653397, 30.309528, 49.854603>,  <40.997986, 30.107439, 49.875023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653397, 30.309528, 49.854603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087430, -0.048543, 0.994987,
		0.500214, 0.861621, 0.085991,
		-0.861476, 0.505225, -0.051050,
		40.394955, 30.461096, 49.839287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103794, 30.612288, 50.317341>,  <40.997986, 30.107439, 49.875023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103794, 30.612288, 50.317341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705105, 30.591015, 50.292946>,  <40.465893, 30.578251, 50.278309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.705105, 30.591015, 50.292946>,  <41.103794, 30.612288, 50.317341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705105, 30.591015, 50.292946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058404, -0.048931, 0.997093,
		-0.056012, 0.997385, 0.045665,
		-0.996721, -0.053182, -0.060992,
		40.406090, 30.575060, 50.274647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782810, 31.175035, 50.745346>,  <41.103794, 30.612288, 50.317341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782810, 31.175035, 50.745346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509346, 30.886196, 50.703045>,  <40.345268, 30.712893, 50.677666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509346, 30.886196, 50.703045>,  <40.782810, 31.175035, 50.745346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509346, 30.886196, 50.703045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079063, -0.070767, 0.994355,
		-0.725504, 0.688163, -0.008710,
		-0.683662, -0.722096, -0.105750,
		40.304249, 30.669567, 50.671318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461601, 31.185003, 51.403854>,  <40.782810, 31.175035, 50.745346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461601, 31.185003, 51.403854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298637, 30.849939, 51.258343>,  <40.200859, 30.648901, 51.171036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298637, 30.849939, 51.258343>,  <40.461601, 31.185003, 51.403854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298637, 30.849939, 51.258343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060403, -0.372753, 0.925963,
		-0.911245, 0.399222, 0.101267,
		-0.407412, -0.837662, -0.363783,
		40.176414, 30.598640, 51.149208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779892, 31.105886, 51.618916>,  <40.461601, 31.185003, 51.403854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779892, 31.105886, 51.618916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969597, 30.756630, 51.573841>,  <40.083420, 30.547077, 51.546795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969597, 30.756630, 51.573841>,  <39.779892, 31.105886, 51.618916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969597, 30.756630, 51.573841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222764, -0.242852, 0.944139,
		-0.851733, -0.422669, -0.309681,
		0.474265, -0.873140, -0.112689,
		40.111877, 30.494688, 51.540035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260654, 31.269327, 52.060040>,  <39.779892, 31.105886, 51.618916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260654, 31.269327, 52.060040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966599, 31.495689, 52.209339>,  <38.790165, 31.631508, 52.298920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966599, 31.495689, 52.209339>,  <39.260654, 31.269327, 52.060040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966599, 31.495689, 52.209339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317916, 0.198497, -0.927107,
		-0.598746, -0.800218, 0.033987,
		-0.735141, 0.565907, 0.373252,
		38.746056, 31.665461, 52.321316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570889, 31.110842, 51.728451>,  <39.260654, 31.269327, 52.060040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570889, 31.110842, 51.728451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534954, 31.483494, 51.869301>,  <38.513393, 31.707085, 51.953812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534954, 31.483494, 51.869301>,  <38.570889, 31.110842, 51.728451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534954, 31.483494, 51.869301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449451, 0.277582, -0.849083,
		-0.888776, -0.234541, 0.393786,
		-0.089837, 0.931632, 0.352123,
		38.508003, 31.762983, 51.974937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926964, 31.373224, 51.501144>,  <38.570889, 31.110842, 51.728451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926964, 31.373224, 51.501144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119289, 31.706038, 51.611809>,  <38.234684, 31.905725, 51.678207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119289, 31.706038, 51.611809>,  <37.926964, 31.373224, 51.501144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119289, 31.706038, 51.611809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340008, 0.467758, -0.815841,
		-0.808215, 0.298203, 0.507803,
		0.480815, 0.832032, 0.276657,
		38.263535, 31.955647, 51.694805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427414, 31.979067, 51.376842>,  <37.926964, 31.373224, 51.501144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427414, 31.979067, 51.376842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805077, 32.110504, 51.386543>,  <38.031673, 32.189365, 51.392365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805077, 32.110504, 51.386543>,  <37.427414, 31.979067, 51.376842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805077, 32.110504, 51.386543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125439, 0.426531, -0.895732,
		-0.304677, 0.842672, 0.443932,
		0.944159, 0.328596, 0.024251,
		38.088326, 32.209084, 51.393818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461552, 32.754002, 51.225136>,  <37.427414, 31.979067, 51.376842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461552, 32.754002, 51.225136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814381, 32.583046, 51.145859>,  <38.026077, 32.480473, 51.098293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814381, 32.583046, 51.145859>,  <37.461552, 32.754002, 51.225136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814381, 32.583046, 51.145859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029623, 0.470174, -0.882077,
		0.470174, 0.772188, 0.427390,
		0.882077, -0.427390, -0.198189,
		38.079002, 32.454830, 51.086403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848862, 33.214554, 51.063972>,  <37.461552, 32.754002, 51.225136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848862, 33.214554, 51.063972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035873, 32.915268, 50.875679>,  <38.148079, 32.735695, 50.762703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035873, 32.915268, 50.875679>,  <37.848862, 33.214554, 51.063972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035873, 32.915268, 50.875679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094035, 0.571593, -0.815131,
		0.878961, 0.336834, 0.337596,
		0.467531, -0.748214, -0.470734,
		38.176132, 32.690804, 50.734459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220974, 33.558361, 50.503880>,  <37.848862, 33.214554, 51.063972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220974, 33.558361, 50.503880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262089, 33.171726, 50.409950>,  <38.286758, 32.939747, 50.353592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262089, 33.171726, 50.409950>,  <38.220974, 33.558361, 50.503880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262089, 33.171726, 50.409950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047541, 0.240579, -0.969465,
		0.993566, 0.088487, 0.070682,
		0.102790, -0.966588, -0.234824,
		38.292927, 32.881748, 50.339504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780434, 33.559181, 49.930325>,  <38.220974, 33.558361, 50.503880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780434, 33.559181, 49.930325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564423, 33.222527, 49.928547>,  <38.434818, 33.020535, 49.927479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564423, 33.222527, 49.928547>,  <38.780434, 33.559181, 49.930325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564423, 33.222527, 49.928547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077732, 0.055135, -0.995449,
		0.838052, -0.537221, -0.095197,
		-0.540025, -0.841637, -0.004446,
		38.402416, 32.970036, 49.927212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919567, 33.413864, 49.321838>,  <38.780434, 33.559181, 49.930325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919567, 33.413864, 49.321838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625568, 33.159458, 49.415874>,  <38.449169, 33.006817, 49.472298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625568, 33.159458, 49.415874>,  <38.919567, 33.413864, 49.321838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625568, 33.159458, 49.415874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306211, 0.001989, -0.951962,
		0.604990, -0.771678, -0.196216,
		-0.734998, -0.636011, 0.235093,
		38.405067, 32.968655, 49.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901833, 33.051468, 48.675045>,  <38.919567, 33.413864, 49.321838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901833, 33.051468, 48.675045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569084, 32.988266, 48.887844>,  <38.369434, 32.950344, 49.015526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569084, 32.988266, 48.887844>,  <38.901833, 33.051468, 48.675045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569084, 32.988266, 48.887844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542032, 0.025548, -0.839969,
		0.119127, -0.987108, -0.106896,
		-0.831872, -0.158004, 0.532001,
		38.319523, 32.940865, 49.047443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491642, 32.448814, 48.367180>,  <38.901833, 33.051468, 48.675045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491642, 32.448814, 48.367180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222889, 32.681313, 48.550800>,  <38.061638, 32.820812, 48.660973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222889, 32.681313, 48.550800>,  <38.491642, 32.448814, 48.367180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222889, 32.681313, 48.550800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537584, 0.043638, -0.842080,
		-0.509491, -0.812555, 0.283150,
		-0.671880, 0.581249, 0.459049,
		38.021324, 32.855686, 48.688515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844311, 32.185280, 48.168320>,  <38.491642, 32.448814, 48.367180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844311, 32.185280, 48.168320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767220, 32.557308, 48.293423>,  <37.720966, 32.780525, 48.368484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767220, 32.557308, 48.293423>,  <37.844311, 32.185280, 48.168320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767220, 32.557308, 48.293423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435704, 0.204474, -0.876557,
		-0.879214, -0.305206, 0.365830,
		-0.192728, 0.930075, 0.312756,
		37.709400, 32.836330, 48.387249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202801, 32.305992, 47.930679>,  <37.844311, 32.185280, 48.168320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202801, 32.305992, 47.930679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371181, 32.663609, 47.991993>,  <37.472210, 32.878178, 48.028782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371181, 32.663609, 47.991993>,  <37.202801, 32.305992, 47.930679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371181, 32.663609, 47.991993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314408, 0.302321, -0.899861,
		-0.850850, 0.330606, 0.408356,
		0.420954, 0.894037, 0.153285,
		37.497467, 32.931820, 48.037979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703735, 32.792862, 47.656147>,  <37.202801, 32.305992, 47.930679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703735, 32.792862, 47.656147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046387, 32.998074, 47.678005>,  <37.251976, 33.121201, 47.691120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046387, 32.998074, 47.678005>,  <36.703735, 32.792862, 47.656147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046387, 32.998074, 47.678005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204230, 0.434442, -0.877240,
		-0.473792, 0.740309, 0.476932,
		0.856628, 0.513033, 0.054642,
		37.303375, 33.151985, 47.694397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389446, 33.444004, 47.972046>,  <36.703735, 32.792862, 47.656147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389446, 33.444004, 47.972046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998608, 33.358879, 47.972210>,  <35.764107, 33.307804, 47.972309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998608, 33.358879, 47.972210>,  <36.389446, 33.444004, 47.972046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998608, 33.358879, 47.972210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068166, -0.311133, 0.947919,
		-0.201601, 0.926233, 0.318513,
		-0.977093, -0.212812, 0.000412,
		35.705479, 33.295036, 47.972332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205704, 33.453354, 48.668247>,  <36.389446, 33.444004, 47.972046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205704, 33.453354, 48.668247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851639, 33.310520, 48.548927>,  <35.639198, 33.224819, 48.477337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851639, 33.310520, 48.548927>,  <36.205704, 33.453354, 48.668247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851639, 33.310520, 48.548927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185309, -0.317514, 0.929971,
		-0.426788, 0.878452, 0.214882,
		-0.885163, -0.357081, -0.298296,
		35.586090, 33.203396, 48.459438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612015, 33.707771, 49.067120>,  <36.205704, 33.453354, 48.668247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612015, 33.707771, 49.067120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514210, 33.352619, 48.911232>,  <35.455524, 33.139526, 48.817699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514210, 33.352619, 48.911232>,  <35.612015, 33.707771, 49.067120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514210, 33.352619, 48.911232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104763, -0.375373, 0.920934,
		-0.963969, 0.266012, -0.001231,
		-0.244517, -0.887881, -0.389717,
		35.440853, 33.086254, 48.794315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023293, 33.561569, 49.320896>,  <35.612015, 33.707771, 49.067120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023293, 33.561569, 49.320896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123417, 33.192719, 49.202888>,  <35.183491, 32.971409, 49.132084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123417, 33.192719, 49.202888>,  <35.023293, 33.561569, 49.320896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123417, 33.192719, 49.202888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195776, -0.346630, 0.917343,
		-0.948166, -0.171859, -0.267294,
		0.250306, -0.922124, -0.295017,
		35.198509, 32.916080, 49.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568409, 33.177017, 49.649765>,  <35.023293, 33.561569, 49.320896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568409, 33.177017, 49.649765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865425, 32.930393, 49.545094>,  <35.043636, 32.782417, 49.482288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865425, 32.930393, 49.545094>,  <34.568409, 33.177017, 49.649765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865425, 32.930393, 49.545094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092543, -0.481382, 0.871612,
		-0.663373, -0.622994, -0.414506,
		0.742544, -0.616563, -0.261682,
		35.088188, 32.745426, 49.466587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370476, 32.640514, 50.048393>,  <34.568409, 33.177017, 49.649765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370476, 32.640514, 50.048393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746662, 32.556667, 49.941368>,  <34.972374, 32.506359, 49.877151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746662, 32.556667, 49.941368>,  <34.370476, 32.640514, 50.048393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746662, 32.556667, 49.941368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185050, -0.344534, 0.920355,
		-0.285103, -0.915073, -0.285233,
		0.940464, -0.209613, -0.267562,
		35.028801, 32.493782, 49.861099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589638, 31.890104, 50.268677>,  <34.370476, 32.640514, 50.048393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589638, 31.890104, 50.268677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921314, 32.109806, 50.227188>,  <35.120319, 32.241627, 50.202297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921314, 32.109806, 50.227188>,  <34.589638, 31.890104, 50.268677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921314, 32.109806, 50.227188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301839, -0.283808, 0.910135,
		0.470461, -0.785984, -0.401118,
		0.829192, 0.549256, -0.103720,
		35.170071, 32.274582, 50.196072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547958, 31.235853, 49.910637>,  <34.589638, 31.890104, 50.268677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547958, 31.235853, 49.910637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524323, 30.837898, 49.943398>,  <34.510139, 30.599125, 49.963055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524323, 30.837898, 49.943398>,  <34.547958, 31.235853, 49.910637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524323, 30.837898, 49.943398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240905, -0.065408, -0.968342,
		0.968748, -0.076948, -0.235809,
		-0.059088, -0.994887, 0.081901,
		34.506596, 30.539433, 49.967968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997169, 30.887608, 49.442753>,  <34.547958, 31.235853, 49.910637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997169, 30.887608, 49.442753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679295, 30.654608, 49.511070>,  <34.488571, 30.514809, 49.552059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679295, 30.654608, 49.511070>,  <34.997169, 30.887608, 49.442753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679295, 30.654608, 49.511070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232580, 0.032299, -0.972041,
		0.560697, -0.812189, -0.161145,
		-0.794686, -0.582500, 0.170789,
		34.440887, 30.479858, 49.562305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032417, 30.442726, 48.886688>,  <34.997169, 30.887608, 49.442753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032417, 30.442726, 48.886688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659153, 30.457087, 49.029751>,  <34.435192, 30.465702, 49.115589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659153, 30.457087, 49.029751>,  <35.032417, 30.442726, 48.886688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659153, 30.457087, 49.029751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348576, 0.152548, -0.924783,
		-0.087759, -0.987644, -0.129838,
		-0.933163, 0.035900, 0.357656,
		34.379204, 30.467857, 49.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548458, 30.070198, 48.450539>,  <35.032417, 30.442726, 48.886688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548458, 30.070198, 48.450539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283821, 30.293581, 48.650707>,  <34.125038, 30.427610, 48.770809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283821, 30.293581, 48.650707>,  <34.548458, 30.070198, 48.450539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283821, 30.293581, 48.650707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494741, 0.176412, -0.850947,
		-0.563498, -0.810558, 0.159579,
		-0.661590, 0.558457, 0.500424,
		34.085342, 30.461119, 48.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920925, 29.944374, 48.039665>,  <34.548458, 30.070198, 48.450539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920925, 29.944374, 48.039665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819530, 30.262848, 48.259422>,  <33.758694, 30.453932, 48.391277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819530, 30.262848, 48.259422>,  <33.920925, 29.944374, 48.039665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819530, 30.262848, 48.259422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525405, 0.363550, -0.769273,
		-0.812216, -0.483655, 0.326164,
		-0.253486, 0.796184, 0.549396,
		33.743484, 30.501703, 48.424240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235210, 30.122919, 47.917542>,  <33.920925, 29.944374, 48.039665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235210, 30.122919, 47.917542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379501, 30.472691, 48.047310>,  <33.466076, 30.682554, 48.125172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379501, 30.472691, 48.047310>,  <33.235210, 30.122919, 47.917542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379501, 30.472691, 48.047310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485526, 0.473052, -0.735178,
		-0.796329, 0.107684, 0.595201,
		0.360728, 0.874429, 0.324422,
		33.487720, 30.735020, 48.144638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726627, 30.523790, 48.043636>,  <33.235210, 30.122919, 47.917542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726627, 30.523790, 48.043636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018669, 30.779858, 47.948025>,  <33.193893, 30.933498, 47.890659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018669, 30.779858, 47.948025>,  <32.726627, 30.523790, 48.043636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018669, 30.779858, 47.948025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563088, 0.365442, -0.741204,
		-0.387145, 0.675749, 0.627281,
		0.730103, 0.640168, -0.239027,
		33.237701, 30.971909, 47.876316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.197231, 27.758461, 50.323463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283669, 28.137802, 50.230568>,  <39.335533, 28.365406, 50.174831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.283669, 28.137802, 50.230568>,  <39.197231, 27.758461, 50.323463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283669, 28.137802, 50.230568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337235, -0.150721, -0.929277,
		-0.916283, 0.279131, 0.287247,
		0.216095, 0.948351, -0.232236,
		39.348495, 28.422308, 50.160896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598446, 28.089823, 49.960804>,  <39.197231, 27.758461, 50.323463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598446, 28.089823, 49.960804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925308, 28.296251, 49.858101>,  <39.121426, 28.420109, 49.796478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925308, 28.296251, 49.858101>,  <38.598446, 28.089823, 49.960804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925308, 28.296251, 49.858101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180805, -0.193470, -0.964302,
		-0.547325, 0.834409, -0.064787,
		0.817157, 0.516073, -0.256756,
		39.170456, 28.451073, 49.781075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391491, 28.665215, 49.634682>,  <38.598446, 28.089823, 49.960804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391491, 28.665215, 49.634682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.774307, 28.617353, 49.529034>,  <39.003998, 28.588636, 49.465645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.774307, 28.617353, 49.529034>,  <38.391491, 28.665215, 49.634682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774307, 28.617353, 49.529034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273126, -0.066129, -0.959703,
		0.097365, 0.990611, -0.095968,
		0.957038, -0.119653, -0.264123,
		39.061420, 28.581457, 49.449799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486122, 29.025949, 49.039700>,  <38.391491, 28.665215, 49.634682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486122, 29.025949, 49.039700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775597, 28.749969, 49.033478>,  <38.949284, 28.584381, 49.029743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775597, 28.749969, 49.033478>,  <38.486122, 29.025949, 49.039700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775597, 28.749969, 49.033478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121759, -0.105460, -0.986941,
		0.679301, 0.716132, -0.160328,
		0.723688, -0.689952, -0.015557,
		38.992702, 28.542984, 49.028812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832302, 29.248747, 48.495304>,  <38.486122, 29.025949, 49.039700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832302, 29.248747, 48.495304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.963959, 28.876797, 48.561031>,  <39.042953, 28.653627, 48.600468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.963959, 28.876797, 48.561031>,  <38.832302, 29.248747, 48.495304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963959, 28.876797, 48.561031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010489, -0.170399, -0.985319,
		0.944223, 0.326032, -0.046332,
		0.329140, -0.929875, 0.164315,
		39.062702, 28.597834, 48.610325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471832, 29.120512, 48.087269>,  <38.832302, 29.248747, 48.495304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471832, 29.120512, 48.087269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336224, 28.751350, 48.160278>,  <39.254860, 28.529854, 48.204082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336224, 28.751350, 48.160278>,  <39.471832, 29.120512, 48.087269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336224, 28.751350, 48.160278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126874, -0.237094, -0.963166,
		0.932185, -0.303374, 0.197472,
		-0.339020, -0.922903, 0.182525,
		39.234516, 28.474480, 48.215034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864040, 28.688606, 47.636417>,  <39.471832, 29.120512, 48.087269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864040, 28.688606, 47.636417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.535980, 28.483967, 47.738888>,  <39.339146, 28.361183, 47.800369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.535980, 28.483967, 47.738888>,  <39.864040, 28.688606, 47.636417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535980, 28.483967, 47.738888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132288, -0.266059, -0.954837,
		0.556650, -0.816996, 0.150529,
		-0.820147, -0.511597, 0.256180,
		39.289936, 28.330488, 47.815742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933136, 28.063559, 47.368420>,  <39.864040, 28.688606, 47.636417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933136, 28.063559, 47.368420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.544174, 28.145178, 47.413654>,  <39.310795, 28.194149, 47.440796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.544174, 28.145178, 47.413654>,  <39.933136, 28.063559, 47.368420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544174, 28.145178, 47.413654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158002, -0.219392, -0.962758,
		-0.171632, -0.954062, 0.245577,
		-0.972408, 0.204042, 0.113089,
		39.252453, 28.206392, 47.447582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652760, 27.494070, 46.949291>,  <39.933136, 28.063559, 47.368420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652760, 27.494070, 46.949291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.371906, 27.764547, 47.038525>,  <39.203392, 27.926834, 47.092064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.371906, 27.764547, 47.038525>,  <39.652760, 27.494070, 46.949291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371906, 27.764547, 47.038525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352107, -0.057413, -0.934197,
		-0.618891, -0.734482, 0.278404,
		-0.702136, 0.676195, 0.223084,
		39.161266, 27.967405, 47.105450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991756, 27.231274, 46.678860>,  <39.652760, 27.494070, 46.949291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991756, 27.231274, 46.678860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.961224, 27.630100, 46.676491>,  <38.942905, 27.869396, 46.675068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.961224, 27.630100, 46.676491>,  <38.991756, 27.231274, 46.678860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961224, 27.630100, 46.676491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269202, -0.026329, -0.962724,
		-0.960054, -0.071890, 0.270422,
		-0.076330, 0.997065, -0.005924,
		38.938324, 27.929220, 46.674713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282658, 27.450247, 46.444656>,  <38.991756, 27.231274, 46.678860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282658, 27.450247, 46.444656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526421, 27.759979, 46.376499>,  <38.672680, 27.945820, 46.335606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526421, 27.759979, 46.376499>,  <38.282658, 27.450247, 46.444656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526421, 27.759979, 46.376499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342324, 0.063120, -0.937460,
		-0.715150, 0.629624, 0.303538,
		0.609406, 0.774332, -0.170395,
		38.709244, 27.992279, 46.325382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895981, 27.988024, 46.177147>,  <38.282658, 27.450247, 46.444656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895981, 27.988024, 46.177147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246742, 28.126375, 46.043640>,  <38.457199, 28.209387, 45.963535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246742, 28.126375, 46.043640>,  <37.895981, 27.988024, 46.177147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246742, 28.126375, 46.043640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404673, 0.156542, -0.900963,
		-0.259376, 0.925128, 0.277241,
		0.876906, 0.345880, -0.333771,
		38.509815, 28.230139, 45.943508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462627, 28.408094, 46.730885>,  <37.895981, 27.988024, 46.177147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462627, 28.408094, 46.730885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072330, 28.454580, 46.656677>,  <36.838150, 28.482471, 46.612152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072330, 28.454580, 46.656677>,  <37.462627, 28.408094, 46.730885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072330, 28.454580, 46.656677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216684, -0.392046, 0.894063,
		0.031170, 0.912576, 0.407718,
		-0.975744, 0.116214, -0.185521,
		36.779606, 28.489445, 46.601021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235104, 28.817467, 47.285667>,  <37.462627, 28.408094, 46.730885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235104, 28.817467, 47.285667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.913811, 28.625357, 47.144726>,  <36.721035, 28.510092, 47.060162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.913811, 28.625357, 47.144726>,  <37.235104, 28.817467, 47.285667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913811, 28.625357, 47.144726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227344, -0.299568, 0.926593,
		-0.550571, 0.824377, 0.131436,
		-0.803235, -0.480273, -0.352351,
		36.672840, 28.481276, 47.039021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633522, 28.964025, 47.731312>,  <37.235104, 28.817467, 47.285667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633522, 28.964025, 47.731312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519726, 28.631222, 47.540806>,  <36.451450, 28.431540, 47.426502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519726, 28.631222, 47.540806>,  <36.633522, 28.964025, 47.731312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519726, 28.631222, 47.540806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368040, -0.363937, 0.855626,
		-0.885219, 0.418698, -0.202678,
		-0.284487, -0.832011, -0.476262,
		36.434380, 28.381618, 47.397926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913292, 28.817640, 47.849453>,  <36.633522, 28.964025, 47.731312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913292, 28.817640, 47.849453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099083, 28.479240, 47.744732>,  <36.210560, 28.276199, 47.681900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099083, 28.479240, 47.744732>,  <35.913292, 28.817640, 47.849453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099083, 28.479240, 47.744732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370563, -0.454172, 0.810192,
		-0.804327, -0.279302, -0.524451,
		0.464479, -0.846001, -0.261803,
		36.238426, 28.225441, 47.666191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425117, 28.213400, 48.087799>,  <35.913292, 28.817640, 47.849453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425117, 28.213400, 48.087799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750858, 27.991705, 48.018917>,  <35.946301, 27.858688, 47.977589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750858, 27.991705, 48.018917>,  <35.425117, 28.213400, 48.087799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750858, 27.991705, 48.018917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180817, -0.524236, 0.832155,
		-0.551495, -0.646523, -0.527126,
		0.814345, -0.554242, -0.172211,
		35.995163, 27.825434, 47.967255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173153, 27.443726, 48.142925>,  <35.425117, 28.213400, 48.087799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173153, 27.443726, 48.142925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568851, 27.477613, 48.190601>,  <35.806271, 27.497946, 48.219208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568851, 27.477613, 48.190601>,  <35.173153, 27.443726, 48.142925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568851, 27.477613, 48.190601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096892, -0.230703, 0.968188,
		0.109524, -0.969329, -0.220014,
		0.989251, 0.084722, 0.119188,
		35.865627, 27.503031, 48.226357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306278, 26.906500, 48.600372>,  <35.173153, 27.443726, 48.142925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306278, 26.906500, 48.600372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639118, 27.126286, 48.630585>,  <35.838821, 27.258156, 48.648712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639118, 27.126286, 48.630585>,  <35.306278, 26.906500, 48.600372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639118, 27.126286, 48.630585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128563, -0.323557, 0.937434,
		0.539524, -0.770325, -0.339871,
		0.832097, 0.549463, 0.075532,
		35.888748, 27.291124, 48.653244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774529, 26.507639, 49.023560>,  <35.306278, 26.906500, 48.600372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774529, 26.507639, 49.023560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.954983, 26.864622, 49.023361>,  <36.063255, 27.078812, 49.023243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.954983, 26.864622, 49.023361>,  <35.774529, 26.507639, 49.023560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954983, 26.864622, 49.023361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196540, -0.098804, 0.975505,
		0.870547, -0.440179, -0.219977,
		0.451132, 0.892457, -0.000499,
		36.090321, 27.132359, 49.023212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309437, 26.448982, 49.416080>,  <35.774529, 26.507639, 49.023560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309437, 26.448982, 49.416080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218082, 26.838408, 49.414829>,  <36.163269, 27.072063, 49.414078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.218082, 26.838408, 49.414829>,  <36.309437, 26.448982, 49.416080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218082, 26.838408, 49.414829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039368, 0.012443, 0.999147,
		0.972774, 0.228070, -0.041169,
		-0.228387, 0.973565, -0.003125,
		36.149567, 27.130478, 49.413891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851513, 26.827047, 49.854919>,  <36.309437, 26.448982, 49.416080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851513, 26.827047, 49.854919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534088, 27.070267, 49.845688>,  <36.343632, 27.216198, 49.840149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534088, 27.070267, 49.845688>,  <36.851513, 26.827047, 49.854919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534088, 27.070267, 49.845688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071787, 0.131225, 0.988750,
		0.604236, 0.782980, -0.147786,
		-0.793565, 0.608048, -0.023083,
		36.296021, 27.252682, 49.838764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945732, 27.293497, 50.257904>,  <36.851513, 26.827047, 49.854919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945732, 27.293497, 50.257904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555004, 27.371389, 50.222336>,  <36.320568, 27.418125, 50.200996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555004, 27.371389, 50.222336>,  <36.945732, 27.293497, 50.257904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555004, 27.371389, 50.222336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056016, 0.168397, 0.984126,
		0.206613, 0.966293, -0.153585,
		-0.976818, 0.194730, -0.088921,
		36.261959, 27.429808, 50.195660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919285, 27.855104, 50.683498>,  <36.945732, 27.293497, 50.257904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919285, 27.855104, 50.683498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.544853, 27.717215, 50.655422>,  <36.320194, 27.634480, 50.638577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.544853, 27.717215, 50.655422>,  <36.919285, 27.855104, 50.683498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544853, 27.717215, 50.655422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123527, 0.135258, 0.983080,
		-0.329400, 0.928907, -0.169195,
		-0.936075, -0.344727, -0.070191,
		36.264030, 27.613796, 50.634365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520485, 28.423025, 50.946396>,  <36.919285, 27.855104, 50.683498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520485, 28.423025, 50.946396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.335438, 28.068871, 50.964607>,  <36.224411, 27.856377, 50.975533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.335438, 28.068871, 50.964607>,  <36.520485, 28.423025, 50.946396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335438, 28.068871, 50.964607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225966, 0.167410, 0.959642,
		-0.857277, 0.433661, -0.277515,
		-0.462618, -0.885388, 0.045524,
		36.196651, 27.803253, 50.978264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877735, 28.480234, 51.126827>,  <36.520485, 28.423025, 50.946396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877735, 28.480234, 51.126827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990879, 28.113043, 51.238041>,  <36.058765, 27.892727, 51.304771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990879, 28.113043, 51.238041>,  <35.877735, 28.480234, 51.126827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990879, 28.113043, 51.238041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418583, 0.142674, 0.896901,
		-0.863006, -0.370078, -0.343894,
		0.282859, -0.917979, 0.278037,
		36.075737, 27.837648, 51.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178280, 29.045301, 51.566582>,  <35.877735, 28.480234, 51.126827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178280, 29.045301, 51.566582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947475, 29.165712, 51.870277>,  <35.808994, 29.237959, 52.052494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947475, 29.165712, 51.870277>,  <36.178280, 29.045301, 51.566582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947475, 29.165712, 51.870277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752267, 0.166111, -0.637575,
		-0.318045, -0.939037, 0.130604,
		-0.577011, 0.301026, 0.759237,
		35.774372, 29.256020, 52.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493336, 28.615442, 51.711918>,  <36.178280, 29.045301, 51.566582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493336, 28.615442, 51.711918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491093, 29.005758, 51.799377>,  <35.489746, 29.239948, 51.851852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491093, 29.005758, 51.799377>,  <35.493336, 28.615442, 51.711918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491093, 29.005758, 51.799377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788931, 0.130037, -0.600565,
		-0.614457, -0.175862, 0.769101,
		-0.005605, 0.975788, 0.218645,
		35.489410, 29.298494, 51.864971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825245, 28.784304, 51.574497>,  <35.493336, 28.615442, 51.711918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825245, 28.784304, 51.574497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030392, 29.127684, 51.572353>,  <35.153481, 29.333712, 51.571068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030392, 29.127684, 51.572353>,  <34.825245, 28.784304, 51.574497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030392, 29.127684, 51.572353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552784, 0.325464, -0.767140,
		-0.656805, 0.396408, 0.641458,
		0.512872, 0.858449, -0.005361,
		35.184254, 29.385218, 51.570744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379642, 29.335766, 51.597767>,  <34.825245, 28.784304, 51.574497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379642, 29.335766, 51.597767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711468, 29.463871, 51.414791>,  <34.910564, 29.540733, 51.305004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711468, 29.463871, 51.414791>,  <34.379642, 29.335766, 51.597767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711468, 29.463871, 51.414791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553556, 0.363846, -0.749128,
		-0.073479, 0.874670, 0.479117,
		0.829564, 0.320263, -0.457444,
		34.960339, 29.559950, 51.277557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228424, 29.976311, 51.398094>,  <34.379642, 29.335766, 51.597767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228424, 29.976311, 51.398094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554821, 29.909256, 51.176804>,  <34.750660, 29.869022, 51.044029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.554821, 29.909256, 51.176804>,  <34.228424, 29.976311, 51.398094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554821, 29.909256, 51.176804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444201, 0.430597, -0.785667,
		0.369923, 0.886840, 0.276898,
		0.815992, -0.167638, -0.553223,
		34.799618, 29.858965, 51.010838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164738, 30.530439, 51.028736>,  <34.228424, 29.976311, 51.398094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164738, 30.530439, 51.028736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436802, 30.304359, 50.842007>,  <34.600040, 30.168713, 50.729969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436802, 30.304359, 50.842007>,  <34.164738, 30.530439, 51.028736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436802, 30.304359, 50.842007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296238, 0.370583, -0.880290,
		0.670537, 0.737034, 0.084624,
		0.680164, -0.565198, -0.466827,
		34.640850, 30.134800, 50.701958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510658, 31.077282, 50.623543>,  <34.164738, 30.530439, 51.028736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510658, 31.077282, 50.623543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539501, 30.700695, 50.491825>,  <34.556805, 30.474743, 50.412792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539501, 30.700695, 50.491825>,  <34.510658, 31.077282, 50.623543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539501, 30.700695, 50.491825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428980, 0.268788, -0.862397,
		0.900432, 0.203444, -0.384491,
		0.072103, -0.941469, -0.329298,
		34.561131, 30.418255, 50.393036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254635, 31.359360, 50.445168>,  <34.510658, 31.077282, 50.623543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254635, 31.359360, 50.445168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.375896, 31.739151, 50.477638>,  <35.448654, 31.967026, 50.497120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.375896, 31.739151, 50.477638>,  <35.254635, 31.359360, 50.445168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375896, 31.739151, 50.477638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433282, -0.213203, 0.875677,
		0.848743, -0.230293, -0.476025,
		0.303152, 0.949479, 0.081173,
		35.466843, 32.023994, 50.501991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997971, 31.288290, 50.782616>,  <35.254635, 31.359360, 50.445168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997971, 31.288290, 50.782616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891289, 31.670357, 50.834034>,  <35.827282, 31.899597, 50.864883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891289, 31.670357, 50.834034>,  <35.997971, 31.288290, 50.782616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891289, 31.670357, 50.834034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306820, -0.042291, 0.950827,
		0.913636, 0.293028, -0.281786,
		-0.266702, 0.955168, 0.128545,
		35.811279, 31.956907, 50.872597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503445, 31.589052, 51.194511>,  <35.997971, 31.288290, 50.782616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503445, 31.589052, 51.194511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.200161, 31.841591, 51.259651>,  <36.018192, 31.993114, 51.298733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.200161, 31.841591, 51.259651>,  <36.503445, 31.589052, 51.194511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200161, 31.841591, 51.259651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246297, 0.046079, 0.968099,
		0.603702, 0.774131, -0.190436,
		-0.758210, 0.631347, 0.162848,
		35.972698, 32.030994, 51.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725452, 32.268421, 51.466290>,  <36.503445, 31.589052, 51.194511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725452, 32.268421, 51.466290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347939, 32.216053, 51.587704>,  <36.121429, 32.184631, 51.660553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347939, 32.216053, 51.587704>,  <36.725452, 32.268421, 51.466290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347939, 32.216053, 51.587704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285483, 0.140136, 0.948083,
		-0.166661, 0.981439, -0.094881,
		-0.943781, -0.130922, 0.303539,
		36.064804, 32.176777, 51.678764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623371, 32.869419, 51.899368>,  <36.725452, 32.268421, 51.466290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623371, 32.869419, 51.899368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346970, 32.600136, 52.004673>,  <36.181129, 32.438564, 52.067856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346970, 32.600136, 52.004673>,  <36.623371, 32.869419, 51.899368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346970, 32.600136, 52.004673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271647, 0.095666, 0.957630,
		-0.669870, 0.733238, 0.116770,
		-0.691000, -0.673208, 0.263266,
		36.139671, 32.398174, 52.083652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325974, 33.115971, 52.531582>,  <36.623371, 32.869419, 51.899368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325974, 33.115971, 52.531582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220730, 32.730087, 52.535889>,  <36.157581, 32.498558, 52.538471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.220730, 32.730087, 52.535889>,  <36.325974, 33.115971, 52.531582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220730, 32.730087, 52.535889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187231, -0.040111, 0.981497,
		-0.946423, 0.260260, 0.191177,
		-0.263113, -0.964705, 0.010766,
		36.141796, 32.440678, 52.539120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908298, 33.101158, 53.095730>,  <36.325974, 33.115971, 52.531582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908298, 33.101158, 53.095730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.024330, 32.720940, 53.051338>,  <36.093948, 32.492809, 53.024704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.024330, 32.720940, 53.051338>,  <35.908298, 33.101158, 53.095730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024330, 32.720940, 53.051338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168002, -0.063588, 0.983734,
		-0.942140, -0.304008, 0.141248,
		0.290081, -0.950545, -0.110983,
		36.111355, 32.435776, 53.018044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559746, 32.550087, 53.725422>,  <35.908298, 33.101158, 53.095730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559746, 32.550087, 53.725422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877193, 32.354179, 53.581039>,  <36.067661, 32.236633, 53.494411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877193, 32.354179, 53.581039>,  <35.559746, 32.550087, 53.725422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877193, 32.354179, 53.581039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322456, -0.164502, 0.932181,
		-0.515932, -0.856192, 0.027377,
		0.793622, -0.489769, -0.360956,
		36.115280, 32.207249, 53.472752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618305, 31.911100, 54.124252>,  <35.559746, 32.550087, 53.725422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618305, 31.911100, 54.124252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.980583, 31.978666, 53.968723>,  <36.197948, 32.019207, 53.875408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.980583, 31.978666, 53.968723>,  <35.618305, 31.911100, 54.124252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980583, 31.978666, 53.968723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367635, 0.143741, 0.918794,
		0.211090, -0.975092, 0.068085,
		0.905696, 0.168918, -0.388821,
		36.252293, 32.029343, 53.852077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.712757, 34.942535, 37.635101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079723, 34.906731, 37.790192>,  <34.299904, 34.885250, 37.883244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079723, 34.906731, 37.790192>,  <33.712757, 34.942535, 37.635101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079723, 34.906731, 37.790192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396623, -0.284294, 0.872850,
		0.032100, -0.954550, -0.296318,
		0.917420, -0.089508, 0.387722,
		34.354950, 34.879879, 37.906509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683445, 34.259995, 38.065346>,  <33.712757, 34.942535, 37.635101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683445, 34.259995, 38.065346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986607, 34.501804, 38.163429>,  <34.168503, 34.646889, 38.222279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986607, 34.501804, 38.163429>,  <33.683445, 34.259995, 38.065346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986607, 34.501804, 38.163429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152019, -0.201871, 0.967542,
		0.634403, -0.770584, -0.061100,
		0.757907, 0.604523, 0.245211,
		34.213978, 34.683163, 38.236992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957481, 33.904552, 38.616459>,  <33.683445, 34.259995, 38.065346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957481, 33.904552, 38.616459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090523, 34.276768, 38.677734>,  <34.170349, 34.500099, 38.714500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090523, 34.276768, 38.677734>,  <33.957481, 33.904552, 38.616459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090523, 34.276768, 38.677734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014833, -0.167577, 0.985748,
		0.942950, -0.325593, -0.069540,
		0.332605, 0.930542, 0.153187,
		34.190304, 34.555931, 38.723690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471600, 33.799953, 39.092632>,  <33.957481, 33.904552, 38.616459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471600, 33.799953, 39.092632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350727, 34.180851, 39.110123>,  <34.278202, 34.409389, 39.120617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350727, 34.180851, 39.110123>,  <34.471600, 33.799953, 39.092632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350727, 34.180851, 39.110123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082179, -0.071722, 0.994033,
		0.949700, 0.296790, 0.099928,
		-0.302186, 0.952246, 0.043724,
		34.260071, 34.466526, 39.123241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917515, 34.165092, 39.427517>,  <34.471600, 33.799953, 39.092632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917515, 34.165092, 39.427517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588249, 34.387814, 39.472019>,  <34.390690, 34.521446, 39.498722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588249, 34.387814, 39.472019>,  <34.917515, 34.165092, 39.427517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588249, 34.387814, 39.472019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177789, 0.066660, 0.981808,
		0.539253, 0.827969, -0.153865,
		-0.823163, 0.556798, 0.111258,
		34.341301, 34.554852, 39.505398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088306, 34.667267, 39.980354>,  <34.917515, 34.165092, 39.427517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088306, 34.667267, 39.980354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689659, 34.643192, 39.957996>,  <34.450470, 34.628750, 39.944580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689659, 34.643192, 39.957996>,  <35.088306, 34.667267, 39.980354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689659, 34.643192, 39.957996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050319, -0.090464, 0.994628,
		-0.064917, 0.994080, 0.087130,
		-0.996621, -0.060184, -0.055894,
		34.390675, 34.625137, 39.941227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817822, 35.181534, 40.498741>,  <35.088306, 34.667267, 39.980354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817822, 35.181534, 40.498741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552666, 34.892929, 40.418755>,  <34.393570, 34.719765, 40.370762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552666, 34.892929, 40.418755>,  <34.817822, 35.181534, 40.498741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552666, 34.892929, 40.418755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129629, -0.152450, 0.979773,
		-0.737408, 0.675406, 0.007528,
		-0.662892, -0.721516, -0.199970,
		34.353798, 34.676476, 40.358765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483204, 35.184673, 40.986938>,  <34.817822, 35.181534, 40.498741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483204, 35.184673, 40.986938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323315, 34.836903, 40.870792>,  <34.227383, 34.628239, 40.801105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323315, 34.836903, 40.870792>,  <34.483204, 35.184673, 40.986938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323315, 34.836903, 40.870792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249496, -0.201619, 0.947155,
		-0.882027, 0.451046, -0.136327,
		-0.399724, -0.869429, -0.290367,
		34.203396, 34.576073, 40.783684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839584, 35.229710, 41.227047>,  <34.483204, 35.184673, 40.986938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839584, 35.229710, 41.227047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903389, 34.840790, 41.158710>,  <33.941673, 34.607437, 41.117710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903389, 34.840790, 41.158710>,  <33.839584, 35.229710, 41.227047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903389, 34.840790, 41.158710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437326, -0.224747, 0.870767,
		-0.885044, -0.064182, -0.461062,
		0.159510, -0.972301, -0.170843,
		33.951241, 34.549099, 41.107456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357372, 34.898384, 41.542542>,  <33.839584, 35.229710, 41.227047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357372, 34.898384, 41.542542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630207, 34.606693, 41.520695>,  <33.793907, 34.431679, 41.507587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630207, 34.606693, 41.520695>,  <33.357372, 34.898384, 41.542542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630207, 34.606693, 41.520695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268060, -0.318824, 0.909118,
		-0.680369, -0.605456, -0.412943,
		0.682087, -0.729229, -0.054619,
		33.834835, 34.387924, 41.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959061, 34.296844, 41.860622>,  <33.357372, 34.898384, 41.542542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959061, 34.296844, 41.860622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343689, 34.188442, 41.843002>,  <33.574467, 34.123402, 41.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343689, 34.188442, 41.843002>,  <32.959061, 34.296844, 41.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343689, 34.188442, 41.843002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053979, -0.343905, 0.937452,
		-0.269198, -0.899049, -0.345317,
		0.961571, -0.271000, -0.044049,
		33.632160, 34.107143, 41.829788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076641, 33.723572, 42.118668>,  <32.959061, 34.296844, 41.860622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076641, 33.723572, 42.118668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444237, 33.871590, 42.173119>,  <33.664795, 33.960403, 42.205788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444237, 33.871590, 42.173119>,  <33.076641, 33.723572, 42.118668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444237, 33.871590, 42.173119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132564, -0.035164, 0.990551,
		0.371339, -0.928346, 0.016740,
		0.918985, 0.370050, 0.136123,
		33.719933, 33.982605, 42.213955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953094, 33.205715, 41.590752>,  <33.076641, 33.723572, 42.118668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953094, 33.205715, 41.590752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730015, 32.915474, 41.751984>,  <32.596169, 32.741329, 41.848724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730015, 32.915474, 41.751984>,  <32.953094, 33.205715, 41.590752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730015, 32.915474, 41.751984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434129, -0.158914, -0.886724,
		0.707464, -0.669512, -0.226379,
		-0.557697, -0.725603, 0.403080,
		32.562706, 32.697792, 41.872910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051960, 32.507851, 41.332844>,  <32.953094, 33.205715, 41.590752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051960, 32.507851, 41.332844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677101, 32.524593, 41.471413>,  <32.452187, 32.534637, 41.554554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677101, 32.524593, 41.471413>,  <33.051960, 32.507851, 41.332844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677101, 32.524593, 41.471413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345645, 0.024775, -0.938038,
		-0.047850, -0.998816, -0.008749,
		-0.937145, 0.041861, 0.346421,
		32.395958, 32.537151, 41.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641144, 32.096588, 40.887093>,  <33.051960, 32.507851, 41.332844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641144, 32.096588, 40.887093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361984, 32.307873, 41.080563>,  <32.194489, 32.434643, 41.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361984, 32.307873, 41.080563>,  <32.641144, 32.096588, 40.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361984, 32.307873, 41.080563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498232, 0.127074, -0.857681,
		-0.514497, -0.839552, 0.174486,
		-0.697896, 0.528209, 0.483671,
		32.152615, 32.466335, 41.225662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989130, 31.886108, 40.653397>,  <32.641144, 32.096588, 40.887093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989130, 31.886108, 40.653397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940426, 32.253891, 40.802944>,  <31.911203, 32.474560, 40.892673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940426, 32.253891, 40.802944>,  <31.989130, 31.886108, 40.653397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940426, 32.253891, 40.802944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390026, 0.302049, -0.869854,
		-0.912718, -0.251733, 0.321834,
		-0.121761, 0.919455, 0.373867,
		31.903898, 32.529728, 40.915104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416183, 32.056278, 40.489349>,  <31.989130, 31.886108, 40.653397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416183, 32.056278, 40.489349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564697, 32.418114, 40.573128>,  <31.653807, 32.635216, 40.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564697, 32.418114, 40.573128>,  <31.416183, 32.056278, 40.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564697, 32.418114, 40.573128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584896, 0.403043, -0.703884,
		-0.721141, 0.138839, 0.678734,
		0.371285, 0.904588, 0.209445,
		31.676083, 32.689491, 40.635960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874796, 32.501266, 40.574997>,  <31.416183, 32.056278, 40.489349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874796, 32.501266, 40.574997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197922, 32.713734, 40.472778>,  <31.391796, 32.841213, 40.411449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197922, 32.713734, 40.472778>,  <30.874796, 32.501266, 40.574997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197922, 32.713734, 40.472778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534108, 0.476227, -0.698525,
		-0.249334, 0.700766, 0.668401,
		0.807813, 0.531164, -0.255545,
		31.440266, 32.873081, 40.396114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772802, 33.104691, 40.701054>,  <30.874796, 32.501266, 40.574997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772802, 33.104691, 40.701054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056597, 33.128357, 40.420162>,  <31.226873, 33.142559, 40.251625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056597, 33.128357, 40.420162>,  <30.772802, 33.104691, 40.701054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056597, 33.128357, 40.420162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629140, 0.502137, -0.593331,
		0.317508, 0.862761, 0.393486,
		0.709487, 0.059171, -0.702230,
		31.269444, 33.146107, 40.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491459, 33.626862, 40.264744>,  <30.772802, 33.104691, 40.701054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491459, 33.626862, 40.264744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795156, 33.555847, 40.014294>,  <30.977375, 33.513237, 39.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795156, 33.555847, 40.014294>,  <30.491459, 33.626862, 40.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795156, 33.555847, 40.014294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539366, 0.366715, -0.758027,
		0.364185, 0.913237, 0.182669,
		0.759245, -0.177536, -0.626121,
		31.022930, 33.502586, 39.826458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647514, 34.200008, 39.855911>,  <30.491459, 33.626862, 40.264744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647514, 34.200008, 39.855911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803303, 33.898949, 39.643559>,  <30.896776, 33.718311, 39.516148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803303, 33.898949, 39.643559>,  <30.647514, 34.200008, 39.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803303, 33.898949, 39.643559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469155, 0.333892, -0.817563,
		0.792595, 0.567480, -0.223069,
		0.389470, -0.752650, -0.530877,
		30.920143, 33.673153, 39.484295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195402, 34.529732, 39.312199>,  <30.647514, 34.200008, 39.855911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195402, 34.529732, 39.312199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053730, 34.181149, 39.176479>,  <30.968727, 33.972000, 39.095047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053730, 34.181149, 39.176479>,  <31.195402, 34.529732, 39.312199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053730, 34.181149, 39.176479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324923, 0.454885, -0.829159,
		0.876915, -0.183429, -0.444268,
		-0.354182, -0.871455, -0.339296,
		30.947475, 33.919712, 39.074692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342402, 34.490639, 38.508305>,  <31.195402, 34.529732, 39.312199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342402, 34.490639, 38.508305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061035, 34.219875, 38.595016>,  <30.892216, 34.057415, 38.647045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061035, 34.219875, 38.595016>,  <31.342402, 34.490639, 38.508305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061035, 34.219875, 38.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454287, 0.193595, -0.869566,
		0.546650, -0.710150, -0.443690,
		-0.703418, -0.676911, 0.216783,
		30.850010, 34.016804, 38.660049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338699, 34.053005, 37.913887>,  <31.342402, 34.490639, 38.508305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338699, 34.053005, 37.913887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983736, 34.003422, 38.091488>,  <30.770758, 33.973671, 38.198048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983736, 34.003422, 38.091488>,  <31.338699, 34.053005, 37.913887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983736, 34.003422, 38.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460806, 0.211954, -0.861820,
		0.012715, -0.969387, -0.245208,
		-0.887410, -0.123951, 0.444004,
		30.717514, 33.966236, 38.224689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143229, 33.532112, 37.614998>,  <31.338699, 34.053005, 37.913887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143229, 33.532112, 37.614998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278191, 33.186161, 37.763664>,  <31.359167, 32.978588, 37.852863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278191, 33.186161, 37.763664>,  <31.143229, 33.532112, 37.614998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278191, 33.186161, 37.763664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525653, -0.154434, -0.836564,
		0.780927, 0.477630, 0.402521,
		0.337405, -0.864881, 0.371669,
		31.379412, 32.926697, 37.875164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912693, 33.522327, 37.448174>,  <31.143229, 33.532112, 37.614998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912693, 33.522327, 37.448174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748129, 33.160740, 37.494785>,  <31.649389, 32.943787, 37.522755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748129, 33.160740, 37.494785>,  <31.912693, 33.522327, 37.448174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748129, 33.160740, 37.494785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476004, -0.322128, -0.818324,
		0.777278, -0.281198, 0.562821,
		-0.411411, -0.903970, 0.116532,
		31.624706, 32.889549, 37.529743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479267, 33.014809, 37.502392>,  <31.912693, 33.522327, 37.448174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479267, 33.014809, 37.502392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142525, 32.867596, 37.344486>,  <31.940481, 32.779266, 37.249744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142525, 32.867596, 37.344486>,  <32.479267, 33.014809, 37.502392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142525, 32.867596, 37.344486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529975, -0.425421, -0.733583,
		0.102042, -0.826782, 0.553190,
		-0.841852, -0.368033, -0.394763,
		31.889969, 32.757187, 37.226059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686275, 32.283310, 37.249866>,  <32.479267, 33.014809, 37.502392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686275, 32.283310, 37.249866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368427, 32.443470, 37.067322>,  <32.177719, 32.539566, 36.957794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368427, 32.443470, 37.067322>,  <32.686275, 32.283310, 37.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368427, 32.443470, 37.067322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266820, -0.444879, -0.854921,
		-0.545339, -0.801098, 0.246671,
		-0.794614, 0.400405, -0.456359,
		32.130043, 32.563591, 36.930416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195320, 31.810553, 37.375042>,  <32.686275, 32.283310, 37.249866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195320, 31.810553, 37.375042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514381, 31.716263, 37.152985>,  <33.705818, 31.659689, 37.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514381, 31.716263, 37.152985>,  <33.195320, 31.810553, 37.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514381, 31.716263, 37.152985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524509, -0.183262, 0.831448,
		-0.297730, -0.954384, -0.022540,
		0.797651, -0.235724, -0.555146,
		33.753677, 31.645546, 36.986443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297432, 31.135172, 37.550125>,  <33.195320, 31.810553, 37.375042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297432, 31.135172, 37.550125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630444, 31.329130, 37.442963>,  <33.830250, 31.445505, 37.378666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630444, 31.329130, 37.442963>,  <33.297432, 31.135172, 37.550125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630444, 31.329130, 37.442963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442319, -0.290660, 0.848452,
		0.333540, -0.824860, -0.456461,
		0.832530, 0.484894, -0.267904,
		33.880203, 31.474598, 37.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963215, 30.641863, 37.618870>,  <33.297432, 31.135172, 37.550125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963215, 30.641863, 37.618870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062901, 31.028959, 37.633690>,  <34.122711, 31.261217, 37.642582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062901, 31.028959, 37.633690>,  <33.963215, 30.641863, 37.618870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062901, 31.028959, 37.633690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318941, -0.118138, 0.940383,
		0.914424, -0.222535, -0.338093,
		0.249210, 0.967740, 0.037053,
		34.137665, 31.319281, 37.644806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589893, 30.654408, 37.928104>,  <33.963215, 30.641863, 37.618870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589893, 30.654408, 37.928104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416256, 31.011095, 37.979324>,  <34.312073, 31.225107, 38.010056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416256, 31.011095, 37.979324>,  <34.589893, 30.654408, 37.928104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416256, 31.011095, 37.979324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122707, -0.082283, 0.989026,
		0.892470, 0.445045, -0.073701,
		-0.434096, 0.891720, 0.128045,
		34.286026, 31.278610, 38.017738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976673, 30.917809, 38.493443>,  <34.589893, 30.654408, 37.928104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976673, 30.917809, 38.493443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663517, 31.165545, 38.469784>,  <34.475624, 31.314186, 38.455589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663517, 31.165545, 38.469784>,  <34.976673, 30.917809, 38.493443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663517, 31.165545, 38.469784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077104, -0.002248, 0.997020,
		0.617362, 0.785119, 0.049514,
		-0.782891, 0.619341, -0.059148,
		34.428650, 31.351347, 38.452038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178902, 31.485641, 38.823071>,  <34.976673, 30.917809, 38.493443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178902, 31.485641, 38.823071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780216, 31.516088, 38.834171>,  <34.541004, 31.534357, 38.840832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780216, 31.516088, 38.834171>,  <35.178902, 31.485641, 38.823071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780216, 31.516088, 38.834171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035966, 0.108741, 0.993419,
		0.072597, 0.991152, -0.111121,
		-0.996713, 0.076116, 0.027753,
		34.481201, 31.538923, 38.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994255, 32.094456, 39.198540>,  <35.178902, 31.485641, 38.823071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994255, 32.094456, 39.198540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674034, 31.854935, 39.207916>,  <34.481899, 31.711222, 39.213543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674034, 31.854935, 39.207916>,  <34.994255, 32.094456, 39.198540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674034, 31.854935, 39.207916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148224, -0.159954, 0.975933,
		-0.580639, 0.784762, 0.216809,
		-0.800555, -0.598801, 0.023445,
		34.433868, 31.675295, 39.214951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791912, 32.208172, 39.851341>,  <34.994255, 32.094456, 39.198540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791912, 32.208172, 39.851341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579296, 31.881611, 39.761051>,  <34.451725, 31.685675, 39.706875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579296, 31.881611, 39.761051>,  <34.791912, 32.208172, 39.851341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579296, 31.881611, 39.761051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159138, -0.358003, 0.920059,
		-0.831947, 0.453129, 0.320215,
		-0.531544, -0.816399, -0.225730,
		34.419834, 31.636692, 39.693333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105698, 32.137203, 40.321617>,  <34.791912, 32.208172, 39.851341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105698, 32.137203, 40.321617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295826, 31.803965, 40.208469>,  <34.409904, 31.604021, 40.140579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295826, 31.803965, 40.208469>,  <34.105698, 32.137203, 40.321617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295826, 31.803965, 40.208469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086436, -0.364174, 0.927311,
		-0.875556, -0.416321, -0.245109,
		0.475322, -0.833099, -0.282869,
		34.438423, 31.554035, 40.123608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948971, 31.889597, 40.939037>,  <34.105698, 32.137203, 40.321617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948971, 31.889597, 40.939037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162693, 31.603542, 40.758774>,  <34.290928, 31.431910, 40.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162693, 31.603542, 40.758774>,  <33.948971, 31.889597, 40.939037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162693, 31.603542, 40.758774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164928, -0.434699, 0.885345,
		-0.829044, -0.547372, -0.114317,
		0.534307, -0.715136, -0.450662,
		34.322987, 31.389002, 40.623573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739590, 31.257399, 41.125847>,  <33.948971, 31.889597, 40.939037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739590, 31.257399, 41.125847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108856, 31.186823, 40.989235>,  <34.330414, 31.144478, 40.907269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108856, 31.186823, 40.989235>,  <33.739590, 31.257399, 41.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108856, 31.186823, 40.989235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207159, -0.520057, 0.828629,
		-0.323816, -0.835710, -0.443546,
		0.923162, -0.176438, -0.341527,
		34.385803, 31.133890, 40.886776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821724, 30.596329, 41.210197>,  <33.739590, 31.257399, 41.125847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821724, 30.596329, 41.210197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191433, 30.746201, 41.181000>,  <34.413258, 30.836124, 41.163483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191433, 30.746201, 41.181000>,  <33.821724, 30.596329, 41.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191433, 30.746201, 41.181000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294617, -0.578614, 0.760530,
		0.242721, -0.724445, -0.645187,
		0.924276, 0.374680, -0.072992,
		34.468716, 30.858604, 41.159103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320454, 29.978062, 41.378628>,  <33.821724, 30.596329, 41.210197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320454, 29.978062, 41.378628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550056, 30.305115, 41.396484>,  <34.687820, 30.501347, 41.407200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550056, 30.305115, 41.396484>,  <34.320454, 29.978062, 41.378628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550056, 30.305115, 41.396484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482231, -0.381601, 0.788565,
		0.661790, -0.431115, -0.613329,
		0.574010, 0.817631, 0.044643,
		34.722260, 30.550404, 41.409878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016216, 29.789497, 41.439140>,  <34.320454, 29.978062, 41.378628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016216, 29.789497, 41.439140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976967, 30.153662, 41.599899>,  <34.953419, 30.372160, 41.696354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976967, 30.153662, 41.599899>,  <35.016216, 29.789497, 41.439140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976967, 30.153662, 41.599899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451539, -0.319156, 0.833218,
		0.886839, 0.263232, -0.379769,
		-0.098124, 0.910411, 0.401900,
		34.947529, 30.426785, 41.720470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568729, 29.805906, 41.787838>,  <35.016216, 29.789497, 41.439140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568729, 29.805906, 41.787838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383873, 30.113731, 41.964111>,  <35.272961, 30.298428, 42.069874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383873, 30.113731, 41.964111>,  <35.568729, 29.805906, 41.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383873, 30.113731, 41.964111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456462, -0.219619, 0.862212,
		0.760309, 0.599616, -0.249782,
		-0.462139, 0.769564, 0.440680,
		35.245232, 30.344601, 42.096313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087605, 30.074457, 42.154892>,  <35.568729, 29.805906, 41.787838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087605, 30.074457, 42.154892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735588, 30.177830, 42.314266>,  <35.524380, 30.239853, 42.409889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735588, 30.177830, 42.314266>,  <36.087605, 30.074457, 42.154892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735588, 30.177830, 42.314266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309184, -0.325030, 0.893734,
		0.360472, 0.909708, 0.206135,
		-0.880037, 0.258433, 0.398432,
		35.471577, 30.255360, 42.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238365, 30.310215, 42.820858>,  <36.087605, 30.074457, 42.154892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238365, 30.310215, 42.820858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843178, 30.273733, 42.870811>,  <35.606064, 30.251844, 42.900784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843178, 30.273733, 42.870811>,  <36.238365, 30.310215, 42.820858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843178, 30.273733, 42.870811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133289, -0.092788, 0.986724,
		-0.078407, 0.991500, 0.103828,
		-0.987971, -0.091205, 0.124880,
		35.546787, 30.246372, 42.908276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050377, 30.718819, 43.406227>,  <36.238365, 30.310215, 42.820858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050377, 30.718819, 43.406227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760067, 30.448549, 43.354519>,  <35.585880, 30.286388, 43.323494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760067, 30.448549, 43.354519>,  <36.050377, 30.718819, 43.406227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760067, 30.448549, 43.354519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094073, -0.283623, 0.954310,
		-0.681466, 0.680457, 0.269410,
		-0.725779, -0.675674, -0.129267,
		35.542332, 30.245848, 43.315739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594734, 30.800694, 44.001938>,  <36.050377, 30.718819, 43.406227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594734, 30.800694, 44.001938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525326, 30.440197, 43.843113>,  <35.483681, 30.223900, 43.747818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525326, 30.440197, 43.843113>,  <35.594734, 30.800694, 44.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525326, 30.440197, 43.843113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150932, -0.422750, 0.893589,
		-0.973196, 0.095125, 0.209381,
		-0.173518, -0.901240, -0.397061,
		35.473270, 30.169825, 43.723995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196407, 30.465477, 44.495583>,  <35.594734, 30.800694, 44.001938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196407, 30.465477, 44.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.167706, 44.275932>,  <35.439514, 29.989042, 44.144142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.167706, 44.275932>,  <35.196407, 30.465477, 44.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348351, 30.167706, 44.275932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366931, -0.423662, 0.828174,
		-0.849159, -0.516077, 0.112224,
		0.379856, -0.744429, -0.549121,
		35.462307, 29.944376, 44.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889210, 29.874056, 44.718941>,  <35.196407, 30.465477, 44.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889210, 29.874056, 44.718941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225086, 29.734179, 44.552746>,  <35.426613, 29.650251, 44.453030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225086, 29.734179, 44.552746>,  <34.889210, 29.874056, 44.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225086, 29.734179, 44.552746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239192, -0.448724, 0.861066,
		-0.487554, -0.822410, -0.293144,
		0.839689, -0.349698, -0.415491,
		35.476994, 29.629271, 44.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950447, 29.165127, 44.964828>,  <34.889210, 29.874056, 44.718941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950447, 29.165127, 44.964828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318642, 29.254208, 44.836384>,  <35.539558, 29.307657, 44.759315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318642, 29.254208, 44.836384>,  <34.950447, 29.165127, 44.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318642, 29.254208, 44.836384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390761, -0.532732, 0.750669,
		-0.003890, -0.816456, -0.577395,
		0.920484, 0.222703, -0.321111,
		35.594788, 29.321018, 44.740051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378662, 28.552843, 44.791016>,  <34.950447, 29.165127, 44.964828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378662, 28.552843, 44.791016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677006, 28.811180, 44.856220>,  <35.856014, 28.966183, 44.895344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677006, 28.811180, 44.856220>,  <35.378662, 28.552843, 44.791016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677006, 28.811180, 44.856220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315664, -0.558218, 0.767300,
		0.586553, -0.520843, -0.620224,
		0.745863, 0.645845, 0.163013,
		35.900764, 29.004934, 44.905125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865608, 28.160303, 44.935017>,  <35.378662, 28.552843, 44.791016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865608, 28.160303, 44.935017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017765, 28.498701, 45.084465>,  <36.109058, 28.701740, 45.174133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017765, 28.498701, 45.084465>,  <35.865608, 28.160303, 44.935017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017765, 28.498701, 45.084465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409339, -0.516283, 0.752259,
		0.829302, -0.133217, -0.542690,
		0.380395, 0.845993, 0.373623,
		36.131886, 28.752499, 45.196552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631081, 28.084921, 45.170624>,  <35.865608, 28.160303, 44.935017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631081, 28.084921, 45.170624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549549, 28.413309, 45.383965>,  <36.500629, 28.610342, 45.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549549, 28.413309, 45.383965>,  <36.631081, 28.084921, 45.170624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549549, 28.413309, 45.383965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412634, -0.421991, 0.807253,
		0.887799, 0.384621, -0.252746,
		-0.203830, 0.820969, 0.533351,
		36.488400, 28.659599, 45.543968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148701, 28.117893, 45.619400>,  <36.631081, 28.084921, 45.170624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148701, 28.117893, 45.619400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854813, 28.329329, 45.789471>,  <36.678478, 28.456190, 45.891514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854813, 28.329329, 45.789471>,  <37.148701, 28.117893, 45.619400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854813, 28.329329, 45.789471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140669, -0.494422, 0.857764,
		0.663620, 0.690030, 0.288908,
		-0.734725, 0.528589, 0.425174,
		36.634396, 28.487906, 45.917023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738079, 28.431799, 45.482159>,  <37.148701, 28.117893, 45.619400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738079, 28.431799, 45.482159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135475, 28.466885, 45.511250>,  <38.373913, 28.487936, 45.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135475, 28.466885, 45.511250>,  <37.738079, 28.431799, 45.482159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135475, 28.466885, 45.511250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060483, 0.134936, -0.989007,
		-0.096563, 0.986964, 0.128751,
		0.993487, 0.087715, 0.072725,
		38.433521, 28.493198, 45.533066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039852, 29.063299, 45.086838>,  <37.738079, 28.431799, 45.482159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039852, 29.063299, 45.086838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329144, 28.787088, 45.091240>,  <38.502716, 28.621363, 45.093884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329144, 28.787088, 45.091240>,  <38.039852, 29.063299, 45.086838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329144, 28.787088, 45.091240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118596, 0.108477, -0.986999,
		0.680354, 0.715128, 0.160347,
		0.723225, -0.690525, 0.011009,
		38.546112, 28.579931, 45.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507362, 29.378576, 44.762695>,  <38.039852, 29.063299, 45.086838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507362, 29.378576, 44.762695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584126, 28.987614, 44.727253>,  <38.630184, 28.753036, 44.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584126, 28.987614, 44.727253>,  <38.507362, 29.378576, 44.762695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584126, 28.987614, 44.727253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087828, 0.107028, -0.990369,
		0.977475, 0.182277, 0.106383,
		0.191908, -0.977405, -0.088609,
		38.641697, 28.694393, 44.700672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084187, 29.312517, 44.396084>,  <38.507362, 29.378576, 44.762695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084187, 29.312517, 44.396084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924358, 28.949369, 44.345314>,  <38.828461, 28.731480, 44.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924358, 28.949369, 44.345314>,  <39.084187, 29.312517, 44.396084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924358, 28.949369, 44.345314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066902, 0.166973, -0.983689,
		0.914256, -0.384565, -0.127456,
		-0.399574, -0.907871, -0.126928,
		38.804485, 28.677008, 44.307236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501640, 28.874207, 43.882172>,  <39.084187, 29.312517, 44.396084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501640, 28.874207, 43.882172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122726, 28.746054, 43.882542>,  <38.895378, 28.669161, 43.882763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122726, 28.746054, 43.882542>,  <39.501640, 28.874207, 43.882172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122726, 28.746054, 43.882542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043712, 0.126377, -0.991019,
		0.317391, -0.938820, -0.133720,
		-0.947287, -0.320386, 0.000927,
		38.838539, 28.649939, 43.882820>
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
