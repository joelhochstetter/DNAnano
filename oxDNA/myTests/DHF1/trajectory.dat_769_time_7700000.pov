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
	<2.516380, 5.572993, 4.477072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287773, 5.631958, 4.799969>,  <2.150609, 5.667337, 4.993707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287773, 5.631958, 4.799969>,  <2.516380, 5.572993, 4.477072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287773, 5.631958, 4.799969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587022, -0.760829, -0.276667,
		0.573388, -0.631988, 0.521361,
		-0.571517, 0.147413, 0.807241,
		2.116318, 5.676182, 5.042141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.492468, 5.040418, 5.073192>,  <2.516380, 5.572993, 4.477072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.492468, 5.040418, 5.073192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142128, 5.220390, 5.003393>,  <1.931924, 5.328374, 4.961514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142128, 5.220390, 5.003393>,  <2.492468, 5.040418, 5.073192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142128, 5.220390, 5.003393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399814, -0.879024, -0.259742,
		-0.270253, -0.157729, 0.949782,
		-0.875850, 0.449932, -0.174496,
		1.879373, 5.355370, 4.951044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.032149, 4.517193, 5.198552>,  <2.492468, 5.040418, 5.073192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.032149, 4.517193, 5.198552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824478, 4.783852, 4.984621>,  <1.699876, 4.943847, 4.856263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824478, 4.783852, 4.984621>,  <2.032149, 4.517193, 5.198552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824478, 4.783852, 4.984621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644133, -0.716499, -0.267809,
		-0.561736, 0.205459, 0.801398,
		-0.519177, 0.666645, -0.534827,
		1.668725, 4.983845, 4.824173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.233722, 4.486040, 5.356660>,  <2.032149, 4.517193, 5.198552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.233722, 4.486040, 5.356660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.291195, 4.613811, 4.981998>,  <1.325679, 4.690475, 4.757202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.291195, 4.613811, 4.981998>,  <1.233722, 4.486040, 5.356660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.291195, 4.613811, 4.981998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789573, -0.533584, -0.303089,
		-0.596599, 0.783105, 0.175546,
		0.143682, 0.319429, -0.936654,
		1.334300, 4.709640, 4.701002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.651519, 4.844944, 5.053455>,  <1.233722, 4.486040, 5.356660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.651519, 4.844944, 5.053455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.873981, 4.643375, 4.789106>,  <1.007459, 4.522434, 4.630497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.873981, 4.643375, 4.789106>,  <0.651519, 4.844944, 5.053455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.873981, 4.643375, 4.789106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755498, -0.637891, -0.149391,
		-0.346282, 0.582372, -0.735480,
		0.556157, -0.503922, -0.660872,
		1.040829, 4.492198, 4.590845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.311288, 4.664476, 4.411220>,  <0.651519, 4.844944, 5.053455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.311288, 4.664476, 4.411220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.591984, 4.385601, 4.469858>,  <0.760401, 4.218276, 4.505041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.591984, 4.385601, 4.469858>,  <0.311288, 4.664476, 4.411220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.591984, 4.385601, 4.469858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606718, -0.692680, -0.389985,
		0.373437, 0.184725, -0.909077,
		0.701740, -0.697188, 0.146596,
		0.802506, 4.176445, 4.513837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.338972, 4.289578, 3.785561>,  <0.311288, 4.664476, 4.411220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.338972, 4.289578, 3.785561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.521797, 4.055477, 4.053463>,  <0.631492, 3.915016, 4.214204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.521797, 4.055477, 4.053463>,  <0.338972, 4.289578, 3.785561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.521797, 4.055477, 4.053463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455420, -0.800806, -0.388976,
		0.763994, -0.127234, -0.632554,
		0.457062, -0.585253, 0.669756,
		0.658916, 3.879901, 4.254390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.765185, 3.839729, 3.477765>,  <0.338972, 4.289578, 3.785561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.765185, 3.839729, 3.477765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.626179, 3.671864, 3.813173>,  <0.542775, 3.571144, 4.014418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.626179, 3.671864, 3.813173>,  <0.765185, 3.839729, 3.477765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.626179, 3.671864, 3.813173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361126, -0.765374, -0.532720,
		0.865345, -0.487940, 0.114428,
		-0.347515, -0.419664, 0.838520,
		0.521924, 3.545964, 4.064729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.325909, 2.487499, 3.785295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.145119, 2.316986, 4.098728>,  <-0.036645, 2.214679, 4.286788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.145119, 2.316986, 4.098728>,  <-0.325909, 2.487499, 3.785295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.145119, 2.316986, 4.098728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327328, 0.896406, 0.298853,
		-0.829804, 0.121414, 0.544687,
		0.451976, -0.426281, 0.783583,
		-0.009526, 2.189102, 4.333803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.360032, 3.011754, 4.378898>,  <-0.325909, 2.487499, 3.785295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.360032, 3.011754, 4.378898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.040176, 2.778221, 4.435064>,  <0.151737, 2.638102, 4.468764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.040176, 2.778221, 4.435064>,  <-0.360032, 3.011754, 4.378898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.040176, 2.778221, 4.435064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560166, 0.809510, 0.175804,
		-0.216309, -0.061923, 0.974359,
		0.799640, -0.583831, 0.140417,
		0.199716, 2.603072, 4.477190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.107418, 3.185201, 5.022117>,  <-0.360032, 3.011754, 4.378898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.107418, 3.185201, 5.022117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.165115, 3.042946, 4.766209>,  <0.328635, 2.957592, 4.612664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.165115, 3.042946, 4.766209>,  <-0.107418, 3.185201, 5.022117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.165115, 3.042946, 4.766209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546591, 0.828534, 0.121531,
		0.486850, -0.432495, 0.758897,
		0.681333, -0.355639, -0.639770,
		0.369515, 2.936254, 4.574278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.571719, 3.064201, 5.286113>,  <-0.107418, 3.185201, 5.022117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.571719, 3.064201, 5.286113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.629303, 3.138992, 4.897409>,  <0.663853, 3.183867, 4.664187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.629303, 3.138992, 4.897409>,  <0.571719, 3.064201, 5.286113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.629303, 3.138992, 4.897409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606212, 0.759499, 0.235943,
		0.782166, -0.623058, -0.004011,
		0.143960, 0.186978, -0.971759,
		0.672491, 3.195086, 4.605882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.243927, 3.126928, 5.143470>,  <0.571719, 3.064201, 5.286113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.243927, 3.126928, 5.143470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074318, 3.326607, 4.841209>,  <0.972553, 3.446414, 4.659853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074318, 3.326607, 4.841209>,  <1.243927, 3.126928, 5.143470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.074318, 3.326607, 4.841209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543228, 0.807802, 0.228824,
		0.724644, -0.313464, -0.613702,
		-0.424022, 0.499196, -0.755651,
		0.947111, 3.476366, 4.614514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.800233, 3.347344, 4.759804>,  <1.243927, 3.126928, 5.143470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.800233, 3.347344, 4.759804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489128, 3.586021, 4.680767>,  <1.302465, 3.729228, 4.633345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.489128, 3.586021, 4.680767>,  <1.800233, 3.347344, 4.759804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489128, 3.586021, 4.680767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591402, 0.801168, 0.091511,
		0.212909, -0.045682, -0.976004,
		-0.777762, 0.596694, -0.197592,
		1.255799, 3.765029, 4.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.068491, 3.807502, 4.212629>,  <1.800233, 3.347344, 4.759804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.068491, 3.807502, 4.212629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759033, 3.931351, 4.433756>,  <1.573358, 4.005660, 4.566432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759033, 3.931351, 4.433756>,  <2.068491, 3.807502, 4.212629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.759033, 3.931351, 4.433756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405429, 0.912387, 0.056371,
		-0.486930, 0.267740, -0.831393,
		-0.773645, 0.309622, 0.552818,
		1.526940, 4.024237, 4.599601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.855372, 4.454163, 4.075561>,  <2.068491, 3.807502, 4.212629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.855372, 4.454163, 4.075561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.672058, 4.447380, 4.431019>,  <1.562070, 4.443311, 4.644293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.672058, 4.447380, 4.431019>,  <1.855372, 4.454163, 4.075561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672058, 4.447380, 4.431019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277783, 0.947001, 0.161326,
		-0.844282, 0.320783, -0.429285,
		-0.458284, -0.016956, 0.888644,
		1.534573, 4.442293, 4.697612>
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
