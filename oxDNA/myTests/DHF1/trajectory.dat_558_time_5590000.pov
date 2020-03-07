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
	<-1.268360, 0.767293, 4.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.954674, 0.944513, 4.332142>,  <-0.766462, 1.050846, 4.227884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.954674, 0.944513, 4.332142>,  <-1.268360, 0.767293, 4.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.954674, 0.944513, 4.332142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613918, -0.655639, 0.439593,
		-0.090052, -0.611426, -0.786161,
		0.784217, 0.443052, -0.434407,
		-0.719409, 1.077429, 4.201820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.789594, 0.291645, 4.216104>,  <-1.268360, 0.767293, 4.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.789594, 0.291645, 4.216104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.560703, 0.606367, 4.308617>,  <-0.423369, 0.795201, 4.364125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.560703, 0.606367, 4.308617>,  <-0.789594, 0.291645, 4.216104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.560703, 0.606367, 4.308617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686720, -0.613878, 0.389318,
		0.448298, -0.063952, -0.891594,
		0.572228, 0.786806, 0.231283,
		-0.389035, 0.842409, 4.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.098809, 0.247838, 3.967587>,  <-0.789594, 0.291645, 4.216104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.098809, 0.247838, 3.967587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.126217, 0.446154, 4.313881>,  <-0.142661, 0.565143, 4.521657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.126217, 0.446154, 4.313881>,  <-0.098809, 0.247838, 3.967587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.126217, 0.446154, 4.313881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594521, -0.676570, 0.434510,
		0.801156, 0.544470, -0.248399,
		-0.068519, 0.495788, 0.865736,
		-0.146772, 0.594890, 4.573602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.503599, 0.551173, 4.249747>,  <-0.098809, 0.247838, 3.967587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.503599, 0.551173, 4.249747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275581, 0.473413, 4.569061>,  <0.138771, 0.426758, 4.760650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.275581, 0.473413, 4.569061>,  <0.503599, 0.551173, 4.249747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.275581, 0.473413, 4.569061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651407, -0.699062, 0.294925,
		0.500718, 0.688129, 0.525128,
		-0.570044, -0.194398, 0.798285,
		0.104568, 0.415094, 4.808547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022660, 0.555968, 4.788204>,  <0.503599, 0.551173, 4.249747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022660, 0.555968, 4.788204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.671135, 0.390615, 4.883539>,  <0.460220, 0.291404, 4.940741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.671135, 0.390615, 4.883539>,  <1.022660, 0.555968, 4.788204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.671135, 0.390615, 4.883539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466592, -0.849043, 0.247827,
		0.099913, 0.329000, 0.939029,
		-0.878811, -0.413382, 0.238339,
		0.407492, 0.266601, 4.955041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.073395, 0.171594, 5.522465>,  <1.022660, 0.555968, 4.788204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.073395, 0.171594, 5.522465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.771824, 0.010271, 5.315029>,  <0.590881, -0.086523, 5.190567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.771824, 0.010271, 5.315029>,  <1.073395, 0.171594, 5.522465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.771824, 0.010271, 5.315029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335738, -0.915047, 0.223537,
		-0.564688, -0.005580, 0.825285,
		-0.753928, -0.403308, -0.518590,
		0.545646, -0.110721, 5.159452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759501, -0.246346, 5.960078>,  <1.073395, 0.171594, 5.522465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759501, -0.246346, 5.960078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.699970, -0.355289, 5.579832>,  <0.664252, -0.420656, 5.351684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.699970, -0.355289, 5.579832>,  <0.759501, -0.246346, 5.960078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.699970, -0.355289, 5.579832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450475, -0.874453, 0.180012,
		-0.880297, -0.401438, 0.252834,
		-0.148828, -0.272360, -0.950616,
		0.655322, -0.436997, 5.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.542229, -0.868250, 6.078427>,  <0.759501, -0.246346, 5.960078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.542229, -0.868250, 6.078427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.663414, -0.839897, 5.698282>,  <0.736125, -0.822885, 5.470195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.663414, -0.839897, 5.698282>,  <0.542229, -0.868250, 6.078427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.663414, -0.839897, 5.698282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461259, -0.883548, 0.081143,
		-0.833939, -0.462946, -0.300377,
		0.302962, 0.070883, -0.950363,
		0.754302, -0.818632, 5.413173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.292216, 3.014341, 5.458617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318947, 3.072468, 5.063766>,  <1.334985, 3.107344, 4.826856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.318947, 3.072468, 5.063766>,  <1.292216, 3.014341, 5.458617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.318947, 3.072468, 5.063766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456958, 0.883940, 0.099190,
		0.886975, 0.444446, 0.125473,
		0.066826, 0.145315, -0.987126,
		1.338995, 3.116063, 4.767629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.556094, 3.711091, 5.251927>,  <1.292216, 3.014341, 5.458617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.556094, 3.711091, 5.251927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333145, 3.591759, 4.942001>,  <1.199376, 3.520159, 4.756046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333145, 3.591759, 4.942001>,  <1.556094, 3.711091, 5.251927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333145, 3.591759, 4.942001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504967, 0.862577, 0.031132,
		0.659049, 0.408607, -0.631423,
		-0.557371, -0.298330, -0.774814,
		1.165934, 3.502260, 4.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.488762, 4.208853, 4.639146>,  <1.556094, 3.711091, 5.251927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.488762, 4.208853, 4.639146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.170647, 3.975697, 4.705784>,  <0.979777, 3.835803, 4.745767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.170647, 3.975697, 4.705784>,  <1.488762, 4.208853, 4.639146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.170647, 3.975697, 4.705784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552724, 0.810062, 0.195692,
		-0.249019, 0.063551, -0.966411,
		-0.795289, -0.582890, 0.166595,
		0.932060, 3.800830, 4.755762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.790472, 4.427409, 4.253994>,  <1.488762, 4.208853, 4.639146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.790472, 4.427409, 4.253994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662041, 4.219604, 4.570732>,  <0.584982, 4.094922, 4.760775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.662041, 4.219604, 4.570732>,  <0.790472, 4.427409, 4.253994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.662041, 4.219604, 4.570732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653898, 0.726433, 0.211454,
		-0.685074, -0.449892, -0.572949,
		-0.321078, -0.519512, 0.791844,
		0.565717, 4.063751, 4.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.044878, 4.307343, 4.227018>,  <0.790472, 4.427409, 4.253994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.044878, 4.307343, 4.227018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183525, 4.305260, 4.602215>,  <0.266714, 4.304010, 4.827333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183525, 4.305260, 4.602215>,  <0.044878, 4.307343, 4.227018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.183525, 4.305260, 4.602215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631924, 0.737708, 0.237611,
		-0.693201, -0.675100, 0.252413,
		0.346618, -0.005206, 0.937992,
		0.287511, 4.303698, 4.883612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.559803, 4.269564, 4.687324>,  <0.044878, 4.307343, 4.227018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.559803, 4.269564, 4.687324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.225594, 4.443619, 4.821522>,  <-0.025068, 4.548052, 4.902040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.225594, 4.443619, 4.821522>,  <-0.559803, 4.269564, 4.687324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.225594, 4.443619, 4.821522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496148, 0.859852, 0.120386,
		-0.236091, -0.267040, 0.934318,
		0.835523, 0.435138, 0.335495,
		0.025063, 4.574160, 4.922170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.709135, 4.536404, 5.354198>,  <-0.559803, 4.269564, 4.687324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.709135, 4.536404, 5.354198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.393845, 4.731686, 5.204342>,  <-0.204670, 4.848855, 5.114428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.393845, 4.731686, 5.204342>,  <-0.709135, 4.536404, 5.354198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.393845, 4.731686, 5.204342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405745, 0.870017, 0.280074,
		0.462678, -0.068753, 0.883856,
		0.788226, 0.488205, -0.374641,
		-0.157377, 4.878147, 5.091949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.538308, 5.020461, 5.900399>,  <-0.709135, 4.536404, 5.354198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.538308, 5.020461, 5.900399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.369781, 5.137684, 5.557095>,  <-0.268666, 5.208017, 5.351112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.369781, 5.137684, 5.557095>,  <-0.538308, 5.020461, 5.900399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.369781, 5.137684, 5.557095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358396, 0.923123, 0.139270,
		0.833094, 0.248920, 0.493956,
		0.421316, 0.293057, -0.858261,
		-0.243387, 5.225601, 5.299616>
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
