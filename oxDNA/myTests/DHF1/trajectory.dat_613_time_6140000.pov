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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<-0.113014, 1.085752, -0.098553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.427013, 0.973284, 0.122253>,  <-0.615413, 0.905803, 0.254737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.427013, 0.973284, 0.122253>,  <-0.113014, 1.085752, -0.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.427013, 0.973284, 0.122253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611740, -0.492393, 0.619131,
		0.097727, 0.823707, 0.558531,
		-0.784999, -0.281170, 0.552015,
		-0.662513, 0.888933, 0.287858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.072281, 1.435832, 0.531287>,  <-0.113014, 1.085752, -0.098553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.072281, 1.435832, 0.531287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.154255, 1.106432, 0.517978>,  <-0.290176, 0.908792, 0.509992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.154255, 1.106432, 0.517978>,  <0.072281, 1.435832, 0.531287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.154255, 1.106432, 0.517978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593446, -0.435474, 0.676893,
		-0.571911, 0.363605, 0.735329,
		-0.566339, -0.823501, -0.033272,
		-0.324156, 0.859382, 0.507996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.304328, 1.188805, 1.196453>,  <0.072281, 1.435832, 0.531287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.304328, 1.188805, 1.196453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163574, 0.919401, 0.936434>,  <-0.079122, 0.757759, 0.780422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163574, 0.919401, 0.936434>,  <-0.304328, 1.188805, 1.196453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.163574, 0.919401, 0.936434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850681, -0.059646, 0.522288,
		-0.390538, -0.736769, 0.551953,
		0.351884, -0.673509, -0.650049,
		-0.058009, 0.717349, 0.741419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.089398, 0.635097, 1.626019>,  <-0.304328, 1.188805, 1.196453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.089398, 0.635097, 1.626019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.198692, 0.700039, 1.246760>,  <0.264269, 0.739004, 1.019205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.198692, 0.700039, 1.246760>,  <0.089398, 0.635097, 1.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.198692, 0.700039, 1.246760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961301, -0.009964, 0.275320,
		0.035252, -0.986682, -0.158794,
		0.273236, 0.162354, -0.948147,
		0.280663, 0.748745, 0.962316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.754292, 0.424929, 1.664337>,  <0.089398, 0.635097, 1.626019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.754292, 0.424929, 1.664337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741512, 0.573269, 1.293080>,  <0.733844, 0.662273, 1.070326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741512, 0.573269, 1.293080>,  <0.754292, 0.424929, 1.664337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.741512, 0.573269, 1.293080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952851, 0.291657, 0.083734,
		0.301753, -0.881706, -0.362684,
		-0.031950, 0.370851, -0.928143,
		0.731927, 0.684524, 1.014637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.392329, 0.209442, 1.342891>,  <0.754292, 0.424929, 1.664337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.392329, 0.209442, 1.342891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.270584, 0.548574, 1.169205>,  <1.197537, 0.752054, 1.064993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.270584, 0.548574, 1.169205>,  <1.392329, 0.209442, 1.342891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.270584, 0.548574, 1.169205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928294, 0.366229, 0.064398,
		0.213622, -0.383480, -0.898504,
		-0.304363, 0.847832, -0.434217,
		1.179275, 0.802924, 1.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.897366, 0.400672, 0.848883>,  <1.392329, 0.209442, 1.342891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.897366, 0.400672, 0.848883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698872, 0.740158, 0.922022>,  <1.579775, 0.943850, 0.965905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698872, 0.740158, 0.922022>,  <1.897366, 0.400672, 0.848883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698872, 0.740158, 0.922022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868032, 0.489002, 0.086006,
		-0.016418, 0.201396, -0.979372,
		-0.496237, 0.848715, 0.182847,
		1.550001, 0.994772, 0.976876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.125446, 0.882742, 0.334429>,  <1.897366, 0.400672, 0.848883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.125446, 0.882742, 0.334429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.966438, 1.085897, 0.640116>,  <1.871034, 1.207791, 0.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.966438, 1.085897, 0.640116>,  <2.125446, 0.882742, 0.334429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.966438, 1.085897, 0.640116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764994, 0.643355, -0.029643,
		-0.506718, 0.572838, -0.644278,
		-0.397519, 0.507889, 0.764217,
		1.847183, 1.238264, 0.869381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.948538, 1.476697, 1.656261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.791138, 1.844015, 1.673670>,  <2.696698, 2.064405, 1.684115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.791138, 1.844015, 1.673670>,  <2.948538, 1.476697, 1.656261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.791138, 1.844015, 1.673670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814322, -0.326194, -0.480081,
		-0.426659, -0.224352, 0.876144,
		-0.393500, 0.918294, 0.043521,
		2.673088, 2.119503, 1.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.372726, 1.548922, 2.097002>,  <2.948538, 1.476697, 1.656261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.372726, 1.548922, 2.097002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326485, 1.821126, 1.807577>,  <2.298740, 1.984449, 1.633922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326485, 1.821126, 1.807577>,  <2.372726, 1.548922, 2.097002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.326485, 1.821126, 1.807577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875328, -0.414113, -0.249624,
		-0.469508, 0.604496, 0.643543,
		-0.115603, 0.680511, -0.723561,
		2.291804, 2.025279, 1.590509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.732638, 1.736968, 2.107010>,  <2.372726, 1.548922, 2.097002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.732638, 1.736968, 2.107010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820419, 1.845542, 1.732168>,  <1.873088, 1.910686, 1.507263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820419, 1.845542, 1.732168>,  <1.732638, 1.736968, 2.107010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.820419, 1.845542, 1.732168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854787, -0.409522, -0.318796,
		-0.470297, 0.870985, 0.142146,
		0.219454, 0.271433, -0.937104,
		1.886256, 1.926972, 1.451037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193493, 2.048802, 1.741373>,  <1.732638, 1.736968, 2.107010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193493, 2.048802, 1.741373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427238, 1.897374, 1.454262>,  <1.567486, 1.806517, 1.281995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427238, 1.897374, 1.454262>,  <1.193493, 2.048802, 1.741373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.427238, 1.897374, 1.454262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767103, -0.546235, -0.336424,
		-0.264715, 0.747202, -0.609603,
		0.584363, -0.378571, -0.717777,
		1.602547, 1.783803, 1.238929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926003, 2.156312, 1.101270>,  <1.193493, 2.048802, 1.741373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926003, 2.156312, 1.101270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115540, 1.807972, 1.048967>,  <1.229262, 1.598969, 1.017586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115540, 1.807972, 1.048967>,  <0.926003, 2.156312, 1.101270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.115540, 1.807972, 1.048967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847846, -0.411029, -0.334981,
		0.237973, 0.269590, -0.933108,
		0.473842, -0.870848, -0.130757,
		1.257692, 1.546718, 1.009740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.733667, 1.886331, 0.442735>,  <0.926003, 2.156312, 1.101270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.733667, 1.886331, 0.442735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872864, 1.564043, 0.634449>,  <0.956382, 1.370670, 0.749478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872864, 1.564043, 0.634449>,  <0.733667, 1.886331, 0.442735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.872864, 1.564043, 0.634449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754032, -0.544338, -0.367603,
		0.557079, -0.233474, -0.796965,
		0.347992, -0.805721, 0.479286,
		0.977261, 1.322326, 0.778235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.894680, 1.337646, -0.045587>,  <0.733667, 1.886331, 0.442735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.894680, 1.337646, -0.045587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.798836, 1.170166, 0.304790>,  <0.741329, 1.069678, 0.515017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.798836, 1.170166, 0.304790>,  <0.894680, 1.337646, -0.045587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.798836, 1.170166, 0.304790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803366, -0.421101, -0.421043,
		0.545152, -0.804589, -0.235470,
		-0.239610, -0.418701, 0.875943,
		0.726953, 1.044556, 0.567573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.844345, 0.591661, -0.152390>,  <0.894680, 1.337646, -0.045587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.844345, 0.591661, -0.152390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.619728, 0.683037, 0.165726>,  <0.484958, 0.737863, 0.356595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.619728, 0.683037, 0.165726>,  <0.844345, 0.591661, -0.152390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.619728, 0.683037, 0.165726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809048, -0.353142, -0.469821,
		0.173523, -0.907252, 0.383124,
		-0.561544, 0.228441, 0.795289,
		0.451265, 0.751570, 0.404312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
