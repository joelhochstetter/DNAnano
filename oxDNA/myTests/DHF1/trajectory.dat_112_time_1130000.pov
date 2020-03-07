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
	<1.195306, -0.141596, 2.205065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.979509, 0.088608, 1.959223>,  <0.850031, 0.226730, 1.811718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.979509, 0.088608, 1.959223>,  <1.195306, -0.141596, 2.205065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.979509, 0.088608, 1.959223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621379, 0.220446, 0.751859,
		0.568188, 0.787524, 0.238680,
		-0.539491, 0.575509, -0.614605,
		0.817662, 0.261260, 1.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216649, 0.588886, 2.487726>,  <1.195306, -0.141596, 2.205065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216649, 0.588886, 2.487726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.894631, 0.470566, 2.282043>,  <0.701421, 0.399574, 2.158634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.894631, 0.470566, 2.282043>,  <1.216649, 0.588886, 2.487726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.894631, 0.470566, 2.282043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573252, 0.164927, 0.802609,
		-0.152605, 0.940905, -0.302341,
		-0.805043, -0.295800, -0.514206,
		0.653118, 0.381826, 2.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.670064, 1.145787, 2.517274>,  <1.216649, 0.588886, 2.487726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.670064, 1.145787, 2.517274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.499875, 0.790901, 2.445917>,  <0.397762, 0.577970, 2.403103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.499875, 0.790901, 2.445917>,  <0.670064, 1.145787, 2.517274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.499875, 0.790901, 2.445917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651269, 0.163317, 0.741064,
		-0.628348, 0.431483, -0.647303,
		-0.425472, -0.887215, -0.178392,
		0.372233, 0.524737, 2.392400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.041098, 1.271587, 2.716971>,  <0.670064, 1.145787, 2.517274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.041098, 1.271587, 2.716971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.066480, 0.890762, 2.775278>,  <0.131026, 0.662268, 2.810262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.066480, 0.890762, 2.775278>,  <-0.041098, 1.271587, 2.716971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.066480, 0.890762, 2.775278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461870, 0.005324, 0.886932,
		-0.845190, -0.305861, -0.438296,
		0.268944, -0.952062, 0.145768,
		0.147163, 0.605144, 2.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.636731, 0.842118, 2.827064>,  <-0.041098, 1.271587, 2.716971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.636731, 0.842118, 2.827064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.327752, 0.649803, 2.993036>,  <-0.142365, 0.534414, 3.092620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.327752, 0.649803, 2.993036>,  <-0.636731, 0.842118, 2.827064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.327752, 0.649803, 2.993036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525439, -0.116855, 0.842769,
		-0.356705, -0.869017, -0.342888,
		0.772448, -0.480786, 0.414932,
		-0.096018, 0.505567, 3.117516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.907582, 0.270995, 3.058185>,  <-0.636731, 0.842118, 2.827064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.907582, 0.270995, 3.058185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.577153, 0.310600, 3.280106>,  <-0.378896, 0.334363, 3.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.577153, 0.310600, 3.280106>,  <-0.907582, 0.270995, 3.058185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.577153, 0.310600, 3.280106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543798, -0.118411, 0.830821,
		0.147957, -0.988016, -0.043973,
		0.826070, 0.099014, 0.554800,
		-0.329332, 0.340304, 3.446546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.906395, -0.302825, 3.529515>,  <-0.907582, 0.270995, 3.058185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.906395, -0.302825, 3.529515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.643139, -0.044685, 3.684628>,  <-0.485185, 0.110199, 3.777695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.643139, -0.044685, 3.684628>,  <-0.906395, -0.302825, 3.529515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.643139, -0.044685, 3.684628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355978, -0.187117, 0.915569,
		0.663423, -0.740615, 0.106581,
		0.658141, 0.645350, 0.387781,
		-0.445696, 0.148919, 3.800962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.495219, -0.618541, 3.975913>,  <-0.906395, -0.302825, 3.529515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.495219, -0.618541, 3.975913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.486090, -0.237518, 4.097315>,  <-0.480612, -0.008905, 4.170156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.486090, -0.237518, 4.097315>,  <-0.495219, -0.618541, 3.975913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.486090, -0.237518, 4.097315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242586, -0.289233, 0.926011,
		0.969861, -0.094760, 0.224476,
		0.022823, 0.952557, 0.303504,
		-0.479243, 0.048249, 4.188366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.306139, -0.435157, 4.862087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.392962, -0.272728, 5.217163>,  <4.445055, -0.175271, 5.430209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.392962, -0.272728, 5.217163>,  <4.306139, -0.435157, 4.862087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.392962, -0.272728, 5.217163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963306, 0.057977, -0.262068,
		-0.157884, 0.912000, -0.378588,
		0.217057, 0.406072, 0.887689,
		4.458078, -0.150906, 5.483470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.982508, -0.255564, 5.420036>,  <4.306139, -0.435157, 4.862087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.982508, -0.255564, 5.420036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195093, 0.079117, 5.472916>,  <4.322644, 0.279925, 5.504643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195093, 0.079117, 5.472916>,  <3.982508, -0.255564, 5.420036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195093, 0.079117, 5.472916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217089, 0.016318, -0.976015,
		-0.818791, 0.547415, -0.172967,
		0.531464, 0.836702, 0.132199,
		4.354532, 0.330127, 5.512576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763624, 0.405503, 4.974482>,  <3.982508, -0.255564, 5.420036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763624, 0.405503, 4.974482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149693, 0.427437, 5.076805>,  <4.381333, 0.440597, 5.138199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.149693, 0.427437, 5.076805>,  <3.763624, 0.405503, 4.974482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.149693, 0.427437, 5.076805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254927, 0.022641, -0.966695,
		-0.058800, 0.998239, 0.007874,
		0.965171, 0.054835, 0.255809,
		4.439244, 0.443887, 5.153548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.026706, 1.041661, 4.735541>,  <3.763624, 0.405503, 4.974482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.026706, 1.041661, 4.735541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.303339, 0.753387, 4.754848>,  <4.469318, 0.580423, 4.766433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.303339, 0.753387, 4.754848>,  <4.026706, 1.041661, 4.735541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.303339, 0.753387, 4.754848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204457, 0.131233, -0.970039,
		0.692757, 0.680729, 0.238108,
		0.691581, -0.720684, 0.048268,
		4.510814, 0.537182, 4.769329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.698779, 1.235375, 4.569660>,  <4.026706, 1.041661, 4.735541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.698779, 1.235375, 4.569660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666580, 0.854012, 4.453362>,  <4.647261, 0.625194, 4.383583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666580, 0.854012, 4.453362>,  <4.698779, 1.235375, 4.569660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666580, 0.854012, 4.453362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376411, 0.241017, -0.894553,
		0.922949, -0.181447, 0.339473,
		-0.080495, -0.953408, -0.290745,
		4.642432, 0.567989, 4.366138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.420694, 1.122195, 4.188445>,  <4.698779, 1.235375, 4.569660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.420694, 1.122195, 4.188445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.177061, 0.814926, 4.109524>,  <5.030881, 0.630565, 4.062171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.177061, 0.814926, 4.109524>,  <5.420694, 1.122195, 4.188445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.177061, 0.814926, 4.109524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492578, -0.171418, -0.853219,
		0.621598, -0.616869, 0.482793,
		-0.609084, -0.768172, -0.197303,
		4.994336, 0.584475, 4.050333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.813230, 0.518681, 4.032723>,  <5.420694, 1.122195, 4.188445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.813230, 0.518681, 4.032723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.460413, 0.435059, 3.863823>,  <5.248723, 0.384885, 3.762482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.460413, 0.435059, 3.863823>,  <5.813230, 0.518681, 4.032723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.460413, 0.435059, 3.863823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470665, -0.349484, -0.810145,
		0.021795, -0.913322, 0.406655,
		-0.882043, -0.209056, -0.422251,
		5.195800, 0.372342, 3.737147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.929134, -0.146460, 3.725616>,  <5.813230, 0.518681, 4.032723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.929134, -0.146460, 3.725616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.617830, 0.040276, 3.557629>,  <5.431048, 0.152317, 3.456836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.617830, 0.040276, 3.557629>,  <5.929134, -0.146460, 3.725616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.617830, 0.040276, 3.557629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364036, -0.209519, -0.907513,
		-0.511653, -0.859164, -0.006886,
		-0.778260, 0.466839, -0.419968,
		5.384352, 0.180327, 3.431638>
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
