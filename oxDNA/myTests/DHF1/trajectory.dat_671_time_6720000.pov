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
	<3.250202, 2.028735, 3.064971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165354, 2.170401, 2.700647>,  <3.114445, 2.255400, 2.482053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.165354, 2.170401, 2.700647>,  <3.250202, 2.028735, 3.064971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165354, 2.170401, 2.700647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856426, 0.516268, 0.001294,
		0.470680, -0.779766, -0.412827,
		-0.212120, 0.354164, -0.910809,
		3.101718, 2.276650, 2.427405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.768012, 1.963266, 2.691906>,  <3.250202, 2.028735, 3.064971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.768012, 1.963266, 2.691906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588280, 2.251356, 2.480480>,  <3.480441, 2.424210, 2.353625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588280, 2.251356, 2.480480>,  <3.768012, 1.963266, 2.691906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.588280, 2.251356, 2.480480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855943, 0.516520, -0.023819,
		0.255859, -0.463124, -0.848559,
		-0.449329, 0.720224, -0.528564,
		3.453481, 2.467423, 2.321911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997536, 2.014776, 1.930050>,  <3.768012, 1.963266, 2.691906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997536, 2.014776, 1.930050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889332, 2.363085, 2.094284>,  <3.824409, 2.572070, 2.192825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.889332, 2.363085, 2.094284>,  <3.997536, 2.014776, 1.930050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.889332, 2.363085, 2.094284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941427, 0.328461, -0.076352,
		-0.201346, 0.365882, -0.908620,
		-0.270510, 0.870772, 0.410586,
		3.808179, 2.624316, 2.217460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.315291, 2.543168, 1.531023>,  <3.997536, 2.014776, 1.930050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.315291, 2.543168, 1.531023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259554, 2.662172, 1.908821>,  <4.226112, 2.733575, 2.135500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259554, 2.662172, 1.908821>,  <4.315291, 2.543168, 1.531023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259554, 2.662172, 1.908821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980926, 0.172010, 0.090535,
		-0.135527, 0.939095, -0.315804,
		-0.139342, 0.297511, 0.944495,
		4.217751, 2.751426, 2.192170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.718303, 3.171032, 1.622373>,  <4.315291, 2.543168, 1.531023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.718303, 3.171032, 1.622373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649059, 3.031885, 1.990942>,  <4.607513, 2.948397, 2.212084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649059, 3.031885, 1.990942>,  <4.718303, 3.171032, 1.622373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.649059, 3.031885, 1.990942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971732, 0.092162, 0.217354,
		-0.160531, 0.933003, 0.322080,
		-0.173108, -0.347868, 0.921424,
		4.597127, 2.927525, 2.267369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.033670, 3.684241, 2.090508>,  <4.718303, 3.171032, 1.622373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.033670, 3.684241, 2.090508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.987442, 3.324877, 2.259979>,  <4.959705, 3.109258, 2.361662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.987442, 3.324877, 2.259979>,  <5.033670, 3.684241, 2.090508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.987442, 3.324877, 2.259979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992649, -0.089025, 0.081994,
		-0.035947, 0.430040, 0.902094,
		-0.115570, -0.898410, 0.423679,
		4.952771, 3.055354, 2.387083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.396690, 3.747796, 2.636490>,  <5.033670, 3.684241, 2.090508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.396690, 3.747796, 2.636490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.383791, 3.359095, 2.542976>,  <5.376051, 3.125874, 2.486868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.383791, 3.359095, 2.542976>,  <5.396690, 3.747796, 2.636490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.383791, 3.359095, 2.542976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990566, -0.062245, 0.122086,
		-0.133189, -0.227642, 0.964593,
		-0.032249, -0.971753, -0.233785,
		5.374116, 3.067569, 2.472841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.719593, 3.346135, 3.159548>,  <5.396690, 3.747796, 2.636490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.719593, 3.346135, 3.159548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.747431, 3.180727, 2.796415>,  <5.764133, 3.081482, 2.578536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.747431, 3.180727, 2.796415>,  <5.719593, 3.346135, 3.159548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.747431, 3.180727, 2.796415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997555, 0.023128, 0.065938,
		-0.006271, -0.910201, 0.414120,
		0.069594, -0.413521, -0.907831,
		5.768309, 3.056671, 2.524066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.830850, 3.389025, 1.535250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.768768, 3.020155, 1.393543>,  <1.731519, 2.798833, 1.308519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.768768, 3.020155, 1.393543>,  <1.830850, 3.389025, 1.535250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.768768, 3.020155, 1.393543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800483, -0.092755, 0.592134,
		-0.578911, 0.375487, -0.723790,
		-0.155204, -0.922175, -0.354268,
		1.722207, 2.743503, 1.287263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.193766, 3.296201, 1.445082>,  <1.830850, 3.389025, 1.535250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.193766, 3.296201, 1.445082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.327881, 2.920761, 1.477606>,  <1.408350, 2.695497, 1.497120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.327881, 2.920761, 1.477606>,  <1.193766, 3.296201, 1.445082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.327881, 2.920761, 1.477606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608129, -0.149701, 0.779595,
		-0.719556, -0.310836, -0.620983,
		0.335288, -0.938600, 0.081310,
		1.428467, 2.639181, 1.501999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.615301, 2.840449, 1.380324>,  <1.193766, 3.296201, 1.445082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.615301, 2.840449, 1.380324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905392, 2.676052, 1.601278>,  <1.079446, 2.577414, 1.733851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905392, 2.676052, 1.601278>,  <0.615301, 2.840449, 1.380324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.905392, 2.676052, 1.601278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601948, 0.010969, 0.798460,
		-0.334221, -0.911572, -0.239442,
		0.725227, -0.410994, 0.552385,
		1.122960, 2.552754, 1.766994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.377526, 2.248038, 1.588981>,  <0.615301, 2.840449, 1.380324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.377526, 2.248038, 1.588981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.616428, 2.400831, 1.871080>,  <0.759770, 2.492507, 2.040340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.616428, 2.400831, 1.871080>,  <0.377526, 2.248038, 1.588981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.616428, 2.400831, 1.871080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764276, 0.004373, 0.644875,
		0.243248, -0.924158, 0.294554,
		0.597255, 0.381985, 0.705248,
		0.795605, 2.515426, 2.082655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.171416, 1.831940, 2.193183>,  <0.377526, 2.248038, 1.588981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.171416, 1.831940, 2.193183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.246937, 2.211265, 2.295211>,  <0.292249, 2.438859, 2.356428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.246937, 2.211265, 2.295211>,  <0.171416, 1.831940, 2.193183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.246937, 2.211265, 2.295211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936934, 0.096157, 0.336019,
		0.294124, -0.302426, 0.906659,
		0.188802, 0.948311, 0.255071,
		0.303577, 2.495758, 2.371732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020304, 1.916496, 3.022717>,  <0.171416, 1.831940, 2.193183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020304, 1.916496, 3.022717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.012573, 2.258269, 2.817510>,  <-0.032299, 2.463334, 2.694386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.012573, 2.258269, 2.817510>,  <0.020304, 1.916496, 3.022717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.012573, 2.258269, 2.817510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956158, 0.077575, 0.282391,
		0.281082, 0.513736, 0.810598,
		-0.082192, 0.854434, -0.513017,
		-0.037231, 2.514600, 2.663604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.460916, 2.291291, 3.382509>,  <0.020304, 1.916496, 3.022717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.460916, 2.291291, 3.382509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.446758, 2.487568, 3.034264>,  <-0.438264, 2.605334, 2.825316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.446758, 2.487568, 3.034264>,  <-0.460916, 2.291291, 3.382509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.446758, 2.487568, 3.034264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986928, 0.154220, 0.046797,
		0.157229, 0.857578, 0.489733,
		0.035394, 0.490689, -0.870616,
		-0.436140, 2.634775, 2.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.834694, 2.869907, 3.521272>,  <-0.460916, 2.291291, 3.382509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.834694, 2.869907, 3.521272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.834518, 2.808950, 3.125944>,  <-0.834413, 2.772377, 2.888747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.834518, 2.808950, 3.125944>,  <-0.834694, 2.869907, 3.521272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.834518, 2.808950, 3.125944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999937, 0.011059, -0.002150,
		0.011257, 0.988258, -0.152377,
		0.000440, -0.152391, -0.988320,
		-0.834387, 2.763233, 2.829448>
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
