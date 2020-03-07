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
	<1.065272, 2.860996, 2.611777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.697559, 2.792316, 2.753447>,  <0.476932, 2.751109, 2.838449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.697559, 2.792316, 2.753447>,  <1.065272, 2.860996, 2.611777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.697559, 2.792316, 2.753447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129763, -0.717320, -0.684554,
		0.371595, -0.675257, 0.637138,
		-0.919282, -0.171700, 0.354176,
		0.421775, 2.740807, 2.859699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.007612, 2.149260, 2.852262>,  <1.065272, 2.860996, 2.611777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.007612, 2.149260, 2.852262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.673389, 2.316509, 2.709703>,  <0.472856, 2.416859, 2.624168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.673389, 2.316509, 2.709703>,  <1.007612, 2.149260, 2.852262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.673389, 2.316509, 2.709703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077282, -0.731695, -0.677237,
		-0.543942, -0.538327, 0.643685,
		-0.835556, 0.418123, -0.356397,
		0.422723, 2.441946, 2.602784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.437203, 1.710552, 2.854258>,  <1.007612, 2.149260, 2.852262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.437203, 1.710552, 2.854258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383026, 1.969387, 2.554142>,  <0.350520, 2.124688, 2.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.383026, 1.969387, 2.554142>,  <0.437203, 1.710552, 2.854258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.383026, 1.969387, 2.554142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104058, -0.762370, -0.638721,
		-0.985306, -0.008437, 0.170592,
		-0.135443, 0.647087, -0.750289,
		0.342393, 2.163513, 2.329056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.200588, 1.535187, 2.396019>,  <0.437203, 1.710552, 2.854258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.200588, 1.535187, 2.396019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.080326, 1.738047, 2.196182>,  <0.248875, 1.859763, 2.076279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.080326, 1.738047, 2.196182>,  <-0.200588, 1.535187, 2.396019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.080326, 1.738047, 2.196182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097930, -0.626286, -0.773418,
		-0.705128, 0.592086, -0.390166,
		0.702285, 0.507149, -0.499594,
		0.291012, 1.890192, 2.046304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.464150, 1.756424, 1.763444>,  <-0.200588, 1.535187, 2.396019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.464150, 1.756424, 1.763444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.071106, 1.773695, 1.691207>,  <0.164720, 1.784058, 1.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.071106, 1.773695, 1.691207>,  <-0.464150, 1.756424, 1.763444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.071106, 1.773695, 1.691207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143094, -0.443728, -0.884664,
		-0.118332, 0.895121, -0.429833,
		0.982610, 0.043178, -0.180593,
		0.223677, 1.786648, 1.637029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.508176, 1.852564, 1.049240>,  <-0.464150, 1.756424, 1.763444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.508176, 1.852564, 1.049240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.125816, 1.768005, 1.130792>,  <0.103600, 1.717270, 1.179723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.125816, 1.768005, 1.130792>,  <-0.508176, 1.852564, 1.049240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.125816, 1.768005, 1.130792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088759, -0.453793, -0.886676,
		0.279959, 0.865669, -0.415017,
		0.955900, -0.211397, 0.203879,
		0.160954, 1.704586, 1.191955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.034273, 2.109564, 0.468864>,  <-0.508176, 1.852564, 1.049240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.034273, 2.109564, 0.468864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.140289, 1.813547, 0.673564>,  <0.245027, 1.635937, 0.796384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.140289, 1.813547, 0.673564>,  <-0.034273, 2.109564, 0.468864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.140289, 1.813547, 0.673564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015106, -0.562663, -0.826549,
		0.899623, 0.368441, -0.234371,
		0.436406, -0.740042, 0.511750,
		0.271211, 1.591535, 0.827089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.453284, 1.942888, 0.026832>,  <-0.034273, 2.109564, 0.468864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.453284, 1.942888, 0.026832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420910, 1.636028, 0.281368>,  <0.401485, 1.451912, 0.434090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420910, 1.636028, 0.281368>,  <0.453284, 1.942888, 0.026832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.420910, 1.636028, 0.281368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250734, -0.633575, -0.731925,
		0.964667, 0.100314, 0.243630,
		-0.080936, -0.767150, 0.636341,
		0.396629, 1.405883, 0.472270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.055602, 1.243226, -0.389208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.102699, 0.878650, -0.344204>,  <0.197680, 0.659904, -0.317202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.102699, 0.878650, -0.344204>,  <-0.055602, 1.243226, -0.389208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.102699, 0.878650, -0.344204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507943, 0.319308, 0.800022,
		-0.765097, -0.259462, 0.589327,
		0.395752, -0.911440, 0.112510,
		0.221425, 0.605218, -0.310451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.356558, 0.939235, 0.244635>,  <-0.055602, 1.243226, -0.389208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.356558, 0.939235, 0.244635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.005524, 0.764214, 0.166260>,  <0.205097, 0.659202, 0.119235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.005524, 0.764214, 0.166260>,  <-0.356558, 0.939235, 0.244635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.005524, 0.764214, 0.166260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312246, 0.211527, 0.926153,
		-0.363794, -0.873959, 0.322257,
		0.877586, -0.437552, -0.195938,
		0.257752, 0.632949, 0.107478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.197530, 0.396426, 0.692924>,  <-0.356558, 0.939235, 0.244635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.197530, 0.396426, 0.692924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.098869, 0.620567, 0.544910>,  <0.276709, 0.755052, 0.456102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.098869, 0.620567, 0.544910>,  <-0.197530, 0.396426, 0.692924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.098869, 0.620567, 0.544910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140974, 0.408958, 0.901598,
		0.656544, -0.720247, 0.224042,
		0.740997, 0.560354, -0.370035,
		0.321169, 0.788673, 0.433900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224979, 0.467341, 1.306078>,  <-0.197530, 0.396426, 0.692924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224979, 0.467341, 1.306078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.305611, 0.754260, 1.039289>,  <0.353990, 0.926412, 0.879217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.305611, 0.754260, 1.039289>,  <0.224979, 0.467341, 1.306078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.305611, 0.754260, 1.039289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268976, 0.614231, 0.741871,
		0.941817, -0.328944, -0.069120,
		0.201578, 0.717298, -0.666970,
		0.366084, 0.969450, 0.839198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.907212, 0.701315, 1.482651>,  <0.224979, 0.467341, 1.306078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.907212, 0.701315, 1.482651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709908, 0.978947, 1.272910>,  <0.591525, 1.145527, 1.147066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.709908, 0.978947, 1.272910>,  <0.907212, 0.701315, 1.482651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.709908, 0.978947, 1.272910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190907, 0.674465, 0.713198,
		0.848674, 0.251691, -0.465192,
		-0.493261, 0.694081, -0.524352,
		0.561929, 1.187172, 1.115605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.370717, 1.298840, 1.428945>,  <0.907212, 0.701315, 1.482651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.370717, 1.298840, 1.428945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.997116, 1.420267, 1.353593>,  <0.772956, 1.493123, 1.308382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.997116, 1.420267, 1.353593>,  <1.370717, 1.298840, 1.428945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.997116, 1.420267, 1.353593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142645, 0.800293, 0.582395,
		0.327555, 0.517086, -0.790778,
		-0.934002, 0.303567, -0.188380,
		0.716915, 1.511337, 1.297079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.368677, 1.990890, 1.161295>,  <1.370717, 1.298840, 1.428945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.368677, 1.990890, 1.161295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.013954, 1.916492, 1.330518>,  <0.801120, 1.871853, 1.432052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.013954, 1.916492, 1.330518>,  <1.368677, 1.990890, 1.161295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.013954, 1.916492, 1.330518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143332, 0.759596, 0.634405,
		-0.439349, 0.623233, -0.646957,
		-0.886808, -0.185995, 0.423057,
		0.747912, 1.860693, 1.457435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.138502, 2.634869, 1.256282>,  <1.368677, 1.990890, 1.161295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.138502, 2.634869, 1.256282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932289, 2.411540, 1.516283>,  <0.808562, 2.277543, 1.672284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932289, 2.411540, 1.516283>,  <1.138502, 2.634869, 1.256282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.932289, 2.411540, 1.516283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172825, 0.675237, 0.717068,
		-0.839261, 0.482008, -0.251614,
		-0.515531, -0.558322, 0.650003,
		0.777630, 2.244044, 1.711284>
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
