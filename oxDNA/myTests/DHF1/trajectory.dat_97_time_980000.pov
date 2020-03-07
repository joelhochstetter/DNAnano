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
	<0.283504, -0.166569, 6.454424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547621, -0.367142, 6.230788>,  <0.706091, -0.487485, 6.096607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547621, -0.367142, 6.230788>,  <0.283504, -0.166569, 6.454424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.547621, -0.367142, 6.230788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271870, 0.534364, -0.800339,
		0.700073, 0.680456, 0.216512,
		0.660292, -0.501432, -0.559089,
		0.745708, -0.517571, 6.063062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.650263, 0.324702, 6.011073>,  <0.283504, -0.166569, 6.454424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.650263, 0.324702, 6.011073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.677861, -0.024422, 5.817808>,  <0.694420, -0.233896, 5.701849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.677861, -0.024422, 5.817808>,  <0.650263, 0.324702, 6.011073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.677861, -0.024422, 5.817808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142440, 0.470736, -0.870700,
		0.987396, 0.128895, -0.091844,
		0.068995, -0.872808, -0.483162,
		0.698560, -0.286264, 5.672860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.103954, 0.461841, 5.502145>,  <0.650263, 0.324702, 6.011073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.103954, 0.461841, 5.502145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850020, 0.161682, 5.428509>,  <0.697659, -0.018413, 5.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.850020, 0.161682, 5.428509>,  <1.103954, 0.461841, 5.502145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.850020, 0.161682, 5.428509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210086, 0.396928, -0.893483,
		0.743537, -0.528539, -0.409632,
		-0.634835, -0.750396, -0.184091,
		0.659569, -0.063437, 5.373281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.259290, 0.069804, 4.905125>,  <1.103954, 0.461841, 5.502145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.259290, 0.069804, 4.905125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.863556, 0.068321, 4.963369>,  <0.626116, 0.067431, 4.998316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.863556, 0.068321, 4.963369>,  <1.259290, 0.069804, 4.905125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.863556, 0.068321, 4.963369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129882, 0.474960, -0.870370,
		-0.065932, -0.880000, -0.470376,
		-0.989335, -0.003708, 0.145611,
		0.566755, 0.067209, 5.007053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.964838, -0.056435, 4.270945>,  <1.259290, 0.069804, 4.905125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.964838, -0.056435, 4.270945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675582, 0.113235, 4.488989>,  <0.502029, 0.215038, 4.619815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675582, 0.113235, 4.488989>,  <0.964838, -0.056435, 4.270945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675582, 0.113235, 4.488989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276301, 0.545663, -0.791144,
		-0.633031, -0.722722, -0.277390,
		-0.723139, 0.424176, 0.545111,
		0.458641, 0.240488, 4.652522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.496123, -0.060007, 3.773256>,  <0.964838, -0.056435, 4.270945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.496123, -0.060007, 3.773256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.335793, 0.172676, 4.056369>,  <0.239595, 0.312286, 4.226237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.335793, 0.172676, 4.056369>,  <0.496123, -0.060007, 3.773256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.335793, 0.172676, 4.056369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528964, 0.483836, -0.697209,
		-0.748022, -0.653850, 0.113769,
		-0.400825, 0.581707, 0.707783,
		0.215546, 0.347188, 4.268703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.292360, 0.034938, 3.531651>,  <0.496123, -0.060007, 3.773256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.292360, 0.034938, 3.531651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197449, 0.317070, 3.798846>,  <-0.140502, 0.486349, 3.959163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197449, 0.317070, 3.798846>,  <-0.292360, 0.034938, 3.531651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197449, 0.317070, 3.798846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761965, 0.561664, -0.322402,
		-0.602585, -0.432484, 0.670708,
		0.237279, 0.705330, 0.667988,
		-0.126265, 0.528669, 3.999243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.791274, 0.172295, 4.091016>,  <-0.292360, 0.034938, 3.531651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.791274, 0.172295, 4.091016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.592068, 0.510773, 4.015190>,  <-0.472544, 0.713859, 3.969695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.592068, 0.510773, 4.015190>,  <-0.791274, 0.172295, 4.091016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.592068, 0.510773, 4.015190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866347, 0.476000, -0.151219,
		-0.037728, 0.239538, 0.970154,
		0.498016, 0.846195, -0.189564,
		-0.442663, 0.764631, 3.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.239984, 2.201846, 2.658093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.603294, 2.034798, 2.648085>,  <4.821281, 1.934569, 2.642080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.603294, 2.034798, 2.648085>,  <4.239984, 2.201846, 2.658093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.603294, 2.034798, 2.648085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163711, -0.409813, 0.897358,
		-0.385008, -0.810954, -0.440593,
		0.908277, -0.417620, -0.025020,
		4.875777, 1.909511, 2.640579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.233269, 1.391035, 2.736696>,  <4.239984, 2.201846, 2.658093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.233269, 1.391035, 2.736696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.563904, 1.571243, 2.871624>,  <4.762285, 1.679368, 2.952581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.563904, 1.571243, 2.871624>,  <4.233269, 1.391035, 2.736696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.563904, 1.571243, 2.871624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120482, -0.443810, 0.887984,
		0.549761, -0.774638, -0.312569,
		0.826588, 0.450520, 0.337320,
		4.811880, 1.706399, 2.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.804131, 0.952871, 3.004794>,  <4.233269, 1.391035, 2.736696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.804131, 0.952871, 3.004794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734509, 1.303337, 3.184589>,  <4.692735, 1.513617, 3.292467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734509, 1.303337, 3.184589>,  <4.804131, 0.952871, 3.004794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.734509, 1.303337, 3.184589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201615, -0.478494, 0.854631,
		0.963875, 0.058129, 0.259932,
		-0.174055, 0.876164, 0.449489,
		4.682292, 1.566186, 3.319436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.318361, 1.178978, 3.358280>,  <4.804131, 0.952871, 3.004794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.318361, 1.178978, 3.358280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.962402, 1.272964, 3.514677>,  <4.748827, 1.329357, 3.608515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.962402, 1.272964, 3.514677>,  <5.318361, 1.178978, 3.358280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.962402, 1.272964, 3.514677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229352, -0.510448, 0.828758,
		0.394312, 0.827184, 0.400356,
		-0.889897, 0.234967, 0.390992,
		4.695434, 1.343455, 3.631975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.454993, 1.710606, 3.937288>,  <5.318361, 1.178978, 3.358280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.454993, 1.710606, 3.937288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.151787, 1.449791, 3.943726>,  <4.969863, 1.293302, 3.947588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.151787, 1.449791, 3.943726>,  <5.454993, 1.710606, 3.937288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.151787, 1.449791, 3.943726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363193, -0.401469, 0.840782,
		-0.541761, 0.643170, 0.541135,
		-0.758015, -0.652039, 0.016095,
		4.924382, 1.254179, 3.948554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.338627, 1.505481, 4.683271>,  <5.454993, 1.710606, 3.937288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.338627, 1.505481, 4.683271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.157433, 1.215897, 4.475163>,  <5.048716, 1.042146, 4.350297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.157433, 1.215897, 4.475163>,  <5.338627, 1.505481, 4.683271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.157433, 1.215897, 4.475163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100941, -0.621478, 0.776901,
		-0.885784, 0.299410, 0.354599,
		-0.452988, -0.723960, -0.520273,
		5.021536, 0.998708, 4.319081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.672842, 1.239504, 5.074459>,  <5.338627, 1.505481, 4.683271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.672842, 1.239504, 5.074459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.834690, 0.969086, 4.828127>,  <4.931799, 0.806835, 4.680328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.834690, 0.969086, 4.828127>,  <4.672842, 1.239504, 5.074459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.834690, 0.969086, 4.828127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035480, -0.684515, 0.728135,
		-0.913796, -0.272768, -0.300955,
		0.404620, -0.676045, -0.615829,
		4.956076, 0.766272, 4.643378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.340701, 0.633041, 5.247410>,  <4.672842, 1.239504, 5.074459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.340701, 0.633041, 5.247410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664577, 0.508530, 5.048410>,  <4.858903, 0.433823, 4.929010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664577, 0.508530, 5.048410>,  <4.340701, 0.633041, 5.247410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.664577, 0.508530, 5.048410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122495, -0.739419, 0.662008,
		-0.573929, -0.596963, -0.560571,
		0.809691, -0.311278, -0.497499,
		4.907485, 0.415146, 4.899160>
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
