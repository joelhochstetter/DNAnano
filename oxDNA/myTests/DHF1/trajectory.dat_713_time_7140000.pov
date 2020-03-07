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
	<-0.442744, 2.878238, 2.511796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.551323, 3.204874, 2.308032>,  <-0.616470, 3.400856, 2.185774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.551323, 3.204874, 2.308032>,  <-0.442744, 2.878238, 2.511796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.551323, 3.204874, 2.308032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927975, 0.081659, -0.363585,
		-0.255302, -0.571413, -0.779941,
		-0.271446, 0.816590, -0.509409,
		-0.632757, 3.449851, 2.155209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.145491, 2.774473, 1.935644>,  <-0.442744, 2.878238, 2.511796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.145491, 2.774473, 1.935644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.210840, 3.167562, 1.970429>,  <-0.250050, 3.403416, 1.991301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.210840, 3.167562, 1.970429>,  <-0.145491, 2.774473, 1.935644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.210840, 3.167562, 1.970429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932683, 0.182582, -0.311074,
		-0.321578, 0.030288, -0.946399,
		-0.163374, 0.982724, 0.086963,
		-0.259852, 3.462380, 1.996518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.088020, 3.124591, 1.251576>,  <-0.145491, 2.774473, 1.935644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.088020, 3.124591, 1.251576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.112968, 3.320335, 1.599515>,  <0.127937, 3.437782, 1.808278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.112968, 3.320335, 1.599515>,  <0.088020, 3.124591, 1.251576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.112968, 3.320335, 1.599515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973028, 0.164129, -0.162104,
		-0.222095, 0.856497, -0.465926,
		0.062370, 0.489362, 0.869848,
		0.131679, 3.467144, 1.860469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.396438, 3.810161, 1.145550>,  <0.088020, 3.124591, 1.251576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.396438, 3.810161, 1.145550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.443336, 3.646472, 1.507498>,  <0.471476, 3.548259, 1.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.443336, 3.646472, 1.507498>,  <0.396438, 3.810161, 1.145550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.443336, 3.646472, 1.507498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992961, 0.063703, -0.099851,
		-0.016781, 0.910209, 0.413810,
		0.117246, -0.409222, 0.904871,
		0.478510, 3.523705, 1.778960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.880260, 4.242077, 1.461629>,  <0.396438, 3.810161, 1.145550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.880260, 4.242077, 1.461629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.888622, 3.900242, 1.669183>,  <0.893640, 3.695141, 1.793715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.888622, 3.900242, 1.669183>,  <0.880260, 4.242077, 1.461629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.888622, 3.900242, 1.669183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997317, 0.054245, 0.049160,
		-0.070159, 0.516465, 0.853429,
		0.020905, -0.854588, 0.518885,
		0.894894, 3.643865, 1.824848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.363449, 4.423507, 1.943539>,  <0.880260, 4.242077, 1.461629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.363449, 4.423507, 1.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329375, 4.025755, 1.918392>,  <1.308931, 3.787104, 1.903304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329375, 4.025755, 1.918392>,  <1.363449, 4.423507, 1.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329375, 4.025755, 1.918392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995694, -0.082641, -0.041998,
		0.036567, -0.066173, 0.997138,
		-0.085184, -0.994380, -0.062866,
		1.303820, 3.727441, 1.899532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.004923, 4.140137, 2.351467>,  <1.363449, 4.423507, 1.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.004923, 4.140137, 2.351467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.867455, 3.857457, 2.104092>,  <1.784974, 3.687849, 1.955667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.867455, 3.857457, 2.104092>,  <2.004923, 4.140137, 2.351467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.867455, 3.857457, 2.104092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938101, -0.228129, -0.260623,
		0.043099, -0.669725, 0.741357,
		-0.343671, -0.706701, -0.618437,
		1.764353, 3.645447, 1.918561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.481165, 3.580743, 2.521577>,  <2.004923, 4.140137, 2.351467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.481165, 3.580743, 2.521577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.307168, 3.463778, 2.180924>,  <2.202770, 3.393598, 1.976533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.307168, 3.463778, 2.180924>,  <2.481165, 3.580743, 2.521577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.307168, 3.463778, 2.180924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860681, -0.412953, -0.297824,
		-0.264595, -0.862533, 0.431307,
		-0.434992, -0.292415, -0.851631,
		2.176670, 3.376053, 1.925435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.497838, 3.427768, 1.627541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.302402, 3.262094, 1.320365>,  <3.185141, 3.162691, 1.136059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.302402, 3.262094, 1.320365>,  <3.497838, 3.427768, 1.627541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.302402, 3.262094, 1.320365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841513, -0.008835, 0.540164,
		-0.230511, 0.910151, -0.344223,
		-0.488590, -0.414182, -0.767941,
		3.155825, 3.137840, 1.089983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.867846, 3.799790, 1.194645>,  <3.497838, 3.427768, 1.627541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.867846, 3.799790, 1.194645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809219, 3.404169, 1.187787>,  <2.774044, 3.166796, 1.183672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809219, 3.404169, 1.187787>,  <2.867846, 3.799790, 1.194645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809219, 3.404169, 1.187787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882807, 0.122963, 0.453355,
		-0.446284, 0.081582, -0.891165,
		-0.146566, -0.989052, -0.017145,
		2.765249, 3.107453, 1.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.329239, 3.478462, 0.681878>,  <2.867846, 3.799790, 1.194645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.329239, 3.478462, 0.681878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373215, 3.297207, 1.035733>,  <2.399600, 3.188454, 1.248045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373215, 3.297207, 1.035733>,  <2.329239, 3.478462, 0.681878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.373215, 3.297207, 1.035733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931468, 0.263588, 0.250778,
		-0.346816, -0.851579, -0.393104,
		0.109940, -0.453137, 0.884635,
		2.406197, 3.161266, 1.301123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.844678, 2.994663, 0.745690>,  <2.329239, 3.478462, 0.681878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.844678, 2.994663, 0.745690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.947796, 3.083227, 1.121886>,  <2.009667, 3.136366, 1.347603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.947796, 3.083227, 1.121886>,  <1.844678, 2.994663, 0.745690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.947796, 3.083227, 1.121886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965586, 0.093728, 0.242609,
		-0.034436, -0.970667, 0.237947,
		0.257795, 0.221404, 0.940490,
		2.025134, 3.149650, 1.404032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.273075, 2.800992, 1.022470>,  <1.844678, 2.994663, 0.745690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.273075, 2.800992, 1.022470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428879, 3.026220, 1.314013>,  <1.522361, 3.161358, 1.488938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428879, 3.026220, 1.314013>,  <1.273075, 2.800992, 1.022470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.428879, 3.026220, 1.314013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891674, 0.032361, 0.451520,
		0.230652, -0.825774, 0.514682,
		0.389509, 0.563072, 0.728857,
		1.545731, 3.195142, 1.532670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.098855, 2.497921, 1.716487>,  <1.273075, 2.800992, 1.022470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.098855, 2.497921, 1.716487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166901, 2.887726, 1.774988>,  <1.207728, 3.121608, 1.810088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166901, 2.887726, 1.774988>,  <1.098855, 2.497921, 1.716487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.166901, 2.887726, 1.774988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860258, 0.074473, 0.504391,
		0.480643, -0.211619, 0.850999,
		0.170115, 0.974511, 0.146252,
		1.217935, 3.180079, 1.818864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.122883, 2.634684, 2.554479>,  <1.098855, 2.497921, 1.716487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.122883, 2.634684, 2.554479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037807, 2.946211, 2.318443>,  <0.986762, 3.133127, 2.176822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037807, 2.946211, 2.318443>,  <1.122883, 2.634684, 2.554479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037807, 2.946211, 2.318443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907689, 0.066100, 0.414405,
		0.361750, 0.623758, 0.692866,
		-0.212690, 0.778818, -0.590090,
		0.974001, 3.179856, 2.141416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.667616, 3.026896, 3.011249>,  <1.122883, 2.634684, 2.554479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.667616, 3.026896, 3.011249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.627094, 3.165443, 2.638204>,  <0.602781, 3.248572, 2.414377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.627094, 3.165443, 2.638204>,  <0.667616, 3.026896, 3.011249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.627094, 3.165443, 2.638204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992746, 0.025818, 0.117426,
		0.064751, 0.937743, 0.341241,
		-0.101305, 0.346369, -0.932612,
		0.596703, 3.269354, 2.358420>
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
