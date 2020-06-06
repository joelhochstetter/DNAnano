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
	<24.189030, 35.146687, 35.513451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319401, 35.072727, 35.142597>,  <24.397623, 35.028351, 34.920086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319401, 35.072727, 35.142597>,  <24.189030, 35.146687, 35.513451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319401, 35.072727, 35.142597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247810, -0.929689, 0.272522,
		-0.912337, -0.318577, -0.257196,
		0.325932, -0.184896, -0.927136,
		24.417179, 35.017258, 34.864456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009222, 34.432713, 35.281773>,  <24.189030, 35.146687, 35.513451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009222, 34.432713, 35.281773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363201, 34.539204, 35.128941>,  <24.575588, 34.603100, 35.037239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363201, 34.539204, 35.128941>,  <24.009222, 34.432713, 35.281773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363201, 34.539204, 35.128941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297977, -0.954239, 0.025253,
		-0.357876, -0.136200, -0.923783,
		0.884949, 0.266229, -0.382083,
		24.628685, 34.619072, 35.014317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176828, 34.030521, 34.672642>,  <24.009222, 34.432713, 35.281773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176828, 34.030521, 34.672642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502253, 34.152897, 34.870438>,  <24.697508, 34.226322, 34.989117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502253, 34.152897, 34.870438>,  <24.176828, 34.030521, 34.672642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502253, 34.152897, 34.870438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258820, -0.952038, 0.163203,
		0.520703, -0.004792, -0.853725,
		0.813561, 0.305942, 0.494488,
		24.746321, 34.244678, 35.018784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702257, 33.528835, 34.499493>,  <24.176828, 34.030521, 34.672642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702257, 33.528835, 34.499493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815702, 33.695629, 34.844906>,  <24.883770, 33.795704, 35.052155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815702, 33.695629, 34.844906>,  <24.702257, 33.528835, 34.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815702, 33.695629, 34.844906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317928, -0.890464, 0.325569,
		0.904702, 0.182206, -0.385118,
		0.283613, 0.416983, 0.863533,
		24.900785, 33.820724, 35.103966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278866, 33.227390, 34.561035>,  <24.702257, 33.528835, 34.499493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278866, 33.227390, 34.561035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151232, 33.375641, 34.909935>,  <25.074652, 33.464592, 35.119274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151232, 33.375641, 34.909935>,  <25.278866, 33.227390, 34.561035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151232, 33.375641, 34.909935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229011, -0.862932, 0.450447,
		0.919641, 0.343485, 0.190469,
		-0.319084, 0.370630, 0.872249,
		25.055506, 33.486832, 35.171608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871386, 33.409538, 35.082733>,  <25.278866, 33.227390, 34.561035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871386, 33.409538, 35.082733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541088, 33.280224, 35.267616>,  <25.342911, 33.202637, 35.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541088, 33.280224, 35.267616>,  <25.871386, 33.409538, 35.082733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541088, 33.280224, 35.267616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518709, -0.757123, 0.397122,
		0.221566, 0.567673, 0.792878,
		-0.825742, -0.323285, 0.462210,
		25.293365, 33.183239, 35.406281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066467, 33.341255, 35.787251>,  <25.871386, 33.409538, 35.082733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066467, 33.341255, 35.787251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773008, 33.091652, 35.679634>,  <25.596933, 32.941891, 35.615063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773008, 33.091652, 35.679634>,  <26.066467, 33.341255, 35.787251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773008, 33.091652, 35.679634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445676, -0.740723, 0.502695,
		-0.512970, 0.248894, 0.821531,
		-0.733645, -0.624004, -0.269042,
		25.552916, 32.904449, 35.598923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602821, 33.209320, 36.399364>,  <26.066467, 33.341255, 35.787251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602821, 33.209320, 36.399364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593142, 32.891102, 36.157200>,  <25.587334, 32.700172, 36.011902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593142, 32.891102, 36.157200>,  <25.602821, 33.209320, 36.399364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593142, 32.891102, 36.157200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596632, -0.497407, 0.629775,
		-0.802150, -0.345966, 0.486686,
		-0.024200, -0.795546, -0.605409,
		25.585882, 32.652439, 35.975578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295706, 32.657967, 36.840954>,  <25.602821, 33.209320, 36.399364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295706, 32.657967, 36.840954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512827, 32.488758, 36.550735>,  <25.643101, 32.387234, 36.376606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512827, 32.488758, 36.550735>,  <25.295706, 32.657967, 36.840954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512827, 32.488758, 36.550735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590653, -0.421878, 0.687858,
		-0.597071, -0.801917, 0.020862,
		0.542804, -0.423022, -0.725545,
		25.675669, 32.361851, 36.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355633, 31.924776, 36.972507>,  <25.295706, 32.657967, 36.840954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355633, 31.924776, 36.972507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660357, 32.011871, 36.728462>,  <25.843191, 32.064129, 36.582035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660357, 32.011871, 36.728462>,  <25.355633, 31.924776, 36.972507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660357, 32.011871, 36.728462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646578, -0.313388, 0.695503,
		-0.039764, -0.924326, -0.379526,
		0.761811, 0.217737, -0.610110,
		25.888899, 32.077194, 36.545429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717030, 31.352465, 36.790623>,  <25.355633, 31.924776, 36.972507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717030, 31.352465, 36.790623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995239, 31.637165, 36.751312>,  <26.162165, 31.807985, 36.727726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995239, 31.637165, 36.751312>,  <25.717030, 31.352465, 36.790623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995239, 31.637165, 36.751312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602718, -0.503504, 0.619044,
		0.391123, -0.489791, -0.779184,
		0.695524, 0.711751, -0.098274,
		26.203896, 31.850691, 36.721828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088669, 31.216688, 37.486229>,  <25.717030, 31.352465, 36.790623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088669, 31.216688, 37.486229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103476, 30.869259, 37.288555>,  <26.112360, 30.660801, 37.169952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103476, 30.869259, 37.288555>,  <26.088669, 31.216688, 37.486229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103476, 30.869259, 37.288555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798462, -0.323071, 0.508020,
		-0.600906, 0.375779, -0.705480,
		0.037017, -0.868571, -0.494180,
		26.114580, 30.608688, 37.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077133, 31.934727, 37.786255>,  <26.088669, 31.216688, 37.486229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077133, 31.934727, 37.786255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255396, 31.762478, 38.100185>,  <26.362354, 31.659128, 38.288544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255396, 31.762478, 38.100185>,  <26.077133, 31.934727, 37.786255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255396, 31.762478, 38.100185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000789, -0.876890, -0.480690,
		0.895203, 0.213604, -0.391132,
		0.445657, -0.430624, 0.784826,
		26.389093, 31.633291, 38.335632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700188, 31.589821, 37.480747>,  <26.077133, 31.934727, 37.786255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700188, 31.589821, 37.480747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545900, 31.452839, 37.823429>,  <26.453329, 31.370649, 38.029037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545900, 31.452839, 37.823429>,  <26.700188, 31.589821, 37.480747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545900, 31.452839, 37.823429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087087, -0.937931, -0.335711,
		0.918498, -0.054881, 0.391599,
		-0.385717, -0.342453, 0.856708,
		26.430185, 31.350103, 38.080441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892052, 32.264614, 37.606972>,  <26.700188, 31.589821, 37.480747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892052, 32.264614, 37.606972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095074, 32.110439, 37.298729>,  <27.216887, 32.017933, 37.113785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095074, 32.110439, 37.298729>,  <26.892052, 32.264614, 37.606972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095074, 32.110439, 37.298729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696628, 0.342749, -0.630264,
		0.507050, 0.856716, -0.094542,
		0.507554, -0.385436, -0.770603,
		27.247339, 31.994808, 37.067547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796572, 32.709057, 37.002449>,  <26.892052, 32.264614, 37.606972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796572, 32.709057, 37.002449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865944, 32.338177, 36.869652>,  <26.907568, 32.115650, 36.789974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865944, 32.338177, 36.869652>,  <26.796572, 32.709057, 37.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865944, 32.338177, 36.869652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781563, 0.075534, -0.619237,
		0.599234, 0.366870, -0.711565,
		0.173432, -0.927200, -0.331995,
		26.917973, 32.060017, 36.770054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015413, 32.690445, 36.240417>,  <26.796572, 32.709057, 37.002449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015413, 32.690445, 36.240417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798922, 32.376789, 36.361877>,  <26.669027, 32.188595, 36.434753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798922, 32.376789, 36.361877>,  <27.015413, 32.690445, 36.240417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798922, 32.376789, 36.361877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684121, 0.200655, -0.701225,
		0.488928, -0.587254, -0.645045,
		-0.541228, -0.784137, 0.303647,
		26.636553, 32.141548, 36.452972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861229, 32.216087, 35.654827>,  <27.015413, 32.690445, 36.240417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861229, 32.216087, 35.654827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584473, 32.186272, 35.942085>,  <26.418419, 32.168381, 36.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584473, 32.186272, 35.942085>,  <26.861229, 32.216087, 35.654827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584473, 32.186272, 35.942085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717552, 0.181281, -0.672500,
		-0.080057, -0.980602, -0.178914,
		-0.691889, -0.074542, 0.718146,
		26.376905, 32.163910, 36.157528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292782, 31.848068, 35.281849>,  <26.861229, 32.216087, 35.654827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292782, 31.848068, 35.281849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149122, 32.015583, 35.615467>,  <26.062925, 32.116093, 35.815639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149122, 32.015583, 35.615467>,  <26.292782, 31.848068, 35.281849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149122, 32.015583, 35.615467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839925, 0.244557, -0.484478,
		-0.406864, -0.874534, 0.263917,
		-0.359149, 0.418787, 0.834044,
		26.041378, 32.141220, 35.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610016, 31.602219, 35.240597>,  <26.292782, 31.848068, 35.281849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610016, 31.602219, 35.240597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604336, 31.909388, 35.496750>,  <25.600927, 32.093689, 35.650440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604336, 31.909388, 35.496750>,  <25.610016, 31.602219, 35.240597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604336, 31.909388, 35.496750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835146, 0.343074, -0.429920,
		-0.549846, -0.540917, 0.636457,
		-0.014199, 0.767924, 0.640382,
		25.600077, 32.139767, 35.688866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880583, 31.878716, 35.091351>,  <25.610016, 31.602219, 35.240597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880583, 31.878716, 35.091351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081741, 32.102222, 35.355129>,  <25.202436, 32.236328, 35.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081741, 32.102222, 35.355129>,  <24.880583, 31.878716, 35.091351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081741, 32.102222, 35.355129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660885, 0.740293, -0.123278,
		-0.557069, -0.373825, 0.741572,
		0.502896, 0.558768, 0.659449,
		25.232611, 32.269852, 35.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376291, 32.245190, 35.561115>,  <24.880583, 31.878716, 35.091351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376291, 32.245190, 35.561115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723072, 32.443741, 35.579048>,  <24.931141, 32.562870, 35.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723072, 32.443741, 35.579048>,  <24.376291, 32.245190, 35.561115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723072, 32.443741, 35.579048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490831, 0.865943, -0.096053,
		-0.086498, 0.061270, 0.994366,
		0.866950, 0.496375, 0.044829,
		24.983156, 32.592651, 35.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260866, 32.805874, 36.035477>,  <24.376291, 32.245190, 35.561115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260866, 32.805874, 36.035477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586636, 32.902832, 35.824589>,  <24.782097, 32.961006, 35.698055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586636, 32.902832, 35.824589>,  <24.260866, 32.805874, 36.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586636, 32.902832, 35.824589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301660, 0.953009, -0.027827,
		0.495697, 0.181703, 0.849275,
		0.814424, 0.242399, -0.527216,
		24.830963, 32.975552, 35.666424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.289938, 33.526745, 36.103271>,  <24.260866, 32.805874, 36.035477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.289938, 33.526745, 36.103271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575542, 33.441795, 35.836414>,  <24.746904, 33.390827, 35.676300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.575542, 33.441795, 35.836414>,  <24.289938, 33.526745, 36.103271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.575542, 33.441795, 35.836414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136988, 0.976844, -0.164351,
		0.686602, 0.025957, 0.726570,
		0.714011, -0.212375, -0.667147,
		24.789745, 33.378082, 35.636269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675098, 34.083038, 36.280388>,  <24.289938, 33.526745, 36.103271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675098, 34.083038, 36.280388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803043, 33.895096, 35.951286>,  <24.879810, 33.782330, 35.753826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803043, 33.895096, 35.951286>,  <24.675098, 34.083038, 36.280388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803043, 33.895096, 35.951286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292513, 0.874925, -0.385932,
		0.901180, -0.117222, 0.417293,
		0.319861, -0.469857, -0.822753,
		24.899002, 33.754139, 35.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348671, 34.443657, 36.127644>,  <24.675098, 34.083038, 36.280388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348671, 34.443657, 36.127644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187729, 34.260571, 35.810505>,  <25.091164, 34.150719, 35.620220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187729, 34.260571, 35.810505>,  <25.348671, 34.443657, 36.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187729, 34.260571, 35.810505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166218, 0.815125, -0.554926,
		0.900269, -0.355062, -0.251886,
		-0.402352, -0.457715, -0.792849,
		25.067022, 34.123257, 35.572651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812939, 34.623764, 35.637398>,  <25.348671, 34.443657, 36.127644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812939, 34.623764, 35.637398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486528, 34.498539, 35.443039>,  <25.290682, 34.423405, 35.326424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.486528, 34.498539, 35.443039>,  <25.812939, 34.623764, 35.637398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486528, 34.498539, 35.443039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059941, 0.881928, -0.467558,
		0.574897, -0.352415, -0.738443,
		-0.816027, -0.313061, -0.485893,
		25.241720, 34.404621, 35.297272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782827, 34.645321, 34.792843>,  <25.812939, 34.623764, 35.637398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782827, 34.645321, 34.792843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435999, 34.722626, 34.976513>,  <25.227901, 34.769009, 35.086716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435999, 34.722626, 34.976513>,  <25.782827, 34.645321, 34.792843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435999, 34.722626, 34.976513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025017, 0.903637, -0.427569,
		-0.497558, -0.382219, -0.778682,
		-0.867070, 0.193260, 0.459173,
		25.175879, 34.780605, 35.114265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193611, 34.846046, 34.310757>,  <25.782827, 34.645321, 34.792843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193611, 34.846046, 34.310757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130545, 35.005512, 34.672134>,  <25.092705, 35.101192, 34.888962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130545, 35.005512, 34.672134>,  <25.193611, 34.846046, 34.310757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130545, 35.005512, 34.672134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072347, 0.907764, -0.413196,
		-0.984838, -0.130509, -0.114283,
		-0.157668, 0.398663, 0.903442,
		25.083244, 35.125111, 34.943169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821737, 35.396015, 34.169044>,  <25.193611, 34.846046, 34.310757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821737, 35.396015, 34.169044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006496, 35.469391, 34.516148>,  <25.117352, 35.513416, 34.724407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006496, 35.469391, 34.516148>,  <24.821737, 35.396015, 34.169044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006496, 35.469391, 34.516148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049745, 0.971481, -0.231842,
		-0.885536, 0.150254, 0.439602,
		0.461900, 0.183436, 0.867756,
		25.145067, 35.524422, 34.776474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501825, 35.829357, 34.731709>,  <24.821737, 35.396015, 34.169044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501825, 35.829357, 34.731709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900211, 35.851334, 34.703323>,  <25.139242, 35.864517, 34.686295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900211, 35.851334, 34.703323>,  <24.501825, 35.829357, 34.731709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900211, 35.851334, 34.703323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055654, 0.998417, -0.008123,
		0.070402, 0.012040, 0.997446,
		0.995965, 0.054940, -0.070960,
		25.199001, 35.867817, 34.682034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969629, 36.099354, 35.337681>,  <24.501825, 35.829357, 34.731709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969629, 36.099354, 35.337681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099022, 36.165062, 34.964935>,  <25.176657, 36.204487, 34.741287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099022, 36.165062, 34.964935>,  <24.969629, 36.099354, 35.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099022, 36.165062, 34.964935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168915, 0.979022, 0.113950,
		0.931036, 0.120545, 0.344443,
		0.323481, 0.164273, -0.931866,
		25.196066, 36.214344, 34.685375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452963, 36.572342, 35.461380>,  <24.969629, 36.099354, 35.337681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452963, 36.572342, 35.461380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362238, 36.613262, 35.073959>,  <25.307804, 36.637814, 34.841507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362238, 36.613262, 35.073959>,  <25.452963, 36.572342, 35.461380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362238, 36.613262, 35.073959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105211, 0.991222, 0.080062,
		0.968239, -0.083743, -0.235584,
		-0.226811, 0.102305, -0.968551,
		25.294195, 36.643955, 34.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018206, 36.933132, 35.157894>,  <25.452963, 36.572342, 35.461380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018206, 36.933132, 35.157894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705803, 36.992771, 34.915310>,  <25.518362, 37.028553, 34.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705803, 36.992771, 34.915310>,  <26.018206, 36.933132, 35.157894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705803, 36.992771, 34.915310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181073, 0.983432, 0.008586,
		0.597697, -0.103109, -0.795064,
		-0.781006, 0.149097, -0.606465,
		25.471500, 37.037498, 34.733372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215445, 37.236267, 34.398151>,  <26.018206, 36.933132, 35.157894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215445, 37.236267, 34.398151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853624, 37.316467, 34.548660>,  <25.636532, 37.364590, 34.638966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853624, 37.316467, 34.548660>,  <26.215445, 37.236267, 34.398151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853624, 37.316467, 34.548660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246673, 0.965932, 0.078278,
		-0.347761, 0.163623, -0.923195,
		-0.904552, 0.200505, 0.376275,
		25.582258, 37.376617, 34.661541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142887, 37.885513, 34.234619>,  <26.215445, 37.236267, 34.398151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142887, 37.885513, 34.234619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854919, 37.685543, 34.042042>,  <25.682138, 37.565559, 33.926495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854919, 37.685543, 34.042042>,  <26.142887, 37.885513, 34.234619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854919, 37.685543, 34.042042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649797, 0.729235, 0.214429,
		0.243885, 0.467211, -0.849844,
		-0.719920, -0.499930, -0.481442,
		25.638943, 37.535564, 33.897610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929176, 38.152527, 33.638504>,  <26.142887, 37.885513, 34.234619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929176, 38.152527, 33.638504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641733, 37.960018, 33.839294>,  <25.469267, 37.844513, 33.959770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641733, 37.960018, 33.839294>,  <25.929176, 38.152527, 33.638504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641733, 37.960018, 33.839294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483848, 0.864492, 0.136178,
		-0.499491, -0.145021, -0.854094,
		-0.718609, -0.481272, 0.501975,
		25.426151, 37.815636, 33.989887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269300, 38.461906, 33.340229>,  <25.929176, 38.152527, 33.638504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269300, 38.461906, 33.340229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200903, 38.315754, 33.706238>,  <25.159864, 38.228062, 33.925842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200903, 38.315754, 33.706238>,  <25.269300, 38.461906, 33.340229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200903, 38.315754, 33.706238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493689, 0.835474, 0.241359,
		-0.852662, -0.410464, -0.323245,
		-0.170994, -0.365381, 0.915018,
		25.149605, 38.206139, 33.980743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633425, 38.600746, 33.525326>,  <25.269300, 38.461906, 33.340229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633425, 38.600746, 33.525326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801764, 38.541386, 33.883289>,  <24.902767, 38.505768, 34.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801764, 38.541386, 33.883289>,  <24.633425, 38.600746, 33.525326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801764, 38.541386, 33.883289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482004, 0.799157, 0.359195,
		-0.768480, -0.582515, 0.264790,
		0.420845, -0.148405, 0.894911,
		24.928017, 38.496864, 34.151764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171270, 38.633694, 34.138142>,  <24.633425, 38.600746, 33.525326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171270, 38.633694, 34.138142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520529, 38.778214, 34.269032>,  <24.730083, 38.864925, 34.347565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520529, 38.778214, 34.269032>,  <24.171270, 38.633694, 34.138142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520529, 38.778214, 34.269032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478217, 0.764980, 0.431408,
		-0.094449, -0.533166, 0.840722,
		0.873148, 0.361302, 0.327220,
		24.782473, 38.886604, 34.367199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.163553, 38.732231, 34.878395>,  <24.171270, 38.633694, 34.138142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.163553, 38.732231, 34.878395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385645, 39.002132, 34.683899>,  <24.518900, 39.164074, 34.567200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385645, 39.002132, 34.683899>,  <24.163553, 38.732231, 34.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385645, 39.002132, 34.683899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490049, 0.737788, 0.464242,
		0.671992, -0.019477, 0.740303,
		0.555229, 0.674751, -0.486242,
		24.552214, 39.204559, 34.538025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678942, 39.310169, 35.272038>,  <24.163553, 38.732231, 34.878395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678942, 39.310169, 35.272038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471025, 39.411396, 34.945656>,  <24.346275, 39.472130, 34.749828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471025, 39.411396, 34.945656>,  <24.678942, 39.310169, 35.272038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471025, 39.411396, 34.945656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450403, 0.730410, 0.513458,
		0.725917, 0.634397, -0.265679,
		-0.519790, 0.253065, -0.815951,
		24.315088, 39.487316, 34.700871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437983, 39.038891, 35.218670>,  <24.678942, 39.310169, 35.272038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437983, 39.038891, 35.218670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146940, 38.873238, 34.999916>,  <24.972315, 38.773846, 34.868664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146940, 38.873238, 34.999916>,  <25.437983, 39.038891, 35.218670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146940, 38.873238, 34.999916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624687, -0.729427, -0.278753,
		-0.283467, -0.544452, 0.789442,
		-0.727607, -0.414137, -0.546880,
		24.928658, 38.748997, 34.835854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457943, 38.170654, 35.307308>,  <25.437983, 39.038891, 35.218670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457943, 38.170654, 35.307308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273212, 38.274937, 34.968193>,  <25.162374, 38.337505, 34.764725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273212, 38.274937, 34.968193>,  <25.457943, 38.170654, 35.307308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273212, 38.274937, 34.968193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289368, -0.859243, -0.421862,
		-0.838441, -0.440150, 0.321379,
		-0.461825, 0.260710, -0.847790,
		25.134665, 38.353149, 34.713856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987690, 37.724361, 35.187420>,  <25.457943, 38.170654, 35.307308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987690, 37.724361, 35.187420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055685, 37.879959, 34.825253>,  <25.096483, 37.973316, 34.607952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055685, 37.879959, 34.825253>,  <24.987690, 37.724361, 35.187420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055685, 37.879959, 34.825253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136360, -0.919241, -0.369327,
		-0.975966, -0.060682, -0.209304,
		0.169989, 0.388991, -0.905423,
		25.106682, 37.996655, 34.553627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438284, 37.387714, 34.695278>,  <24.987690, 37.724361, 35.187420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438284, 37.387714, 34.695278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754274, 37.505413, 34.480110>,  <24.943869, 37.576031, 34.351009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754274, 37.505413, 34.480110>,  <24.438284, 37.387714, 34.695278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754274, 37.505413, 34.480110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177521, -0.949510, -0.258685,
		-0.586874, 0.108864, -0.802326,
		0.789978, 0.294245, -0.537917,
		24.991268, 37.593685, 34.318733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536703, 37.237179, 33.880791>,  <24.438284, 37.387714, 34.695278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536703, 37.237179, 33.880791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848213, 37.157654, 34.118774>,  <25.035120, 37.109940, 34.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848213, 37.157654, 34.118774>,  <24.536703, 37.237179, 33.880791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848213, 37.157654, 34.118774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077485, -0.971673, -0.223265,
		0.622498, 0.127773, -0.772121,
		0.778776, -0.198809, 0.594964,
		25.081846, 37.098011, 34.297264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905525, 36.727402, 33.537971>,  <24.536703, 37.237179, 33.880791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905525, 36.727402, 33.537971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047432, 36.694183, 33.910477>,  <25.132576, 36.674252, 34.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047432, 36.694183, 33.910477>,  <24.905525, 36.727402, 33.537971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047432, 36.694183, 33.910477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162083, -0.975503, -0.148737,
		0.920798, 0.203709, -0.332617,
		0.354768, -0.083045, 0.931259,
		25.153862, 36.669270, 34.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512083, 36.333683, 33.481869>,  <24.905525, 36.727402, 33.537971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512083, 36.333683, 33.481869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388083, 36.297661, 33.860455>,  <25.313683, 36.276047, 34.087605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388083, 36.297661, 33.860455>,  <25.512083, 36.333683, 33.481869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388083, 36.297661, 33.860455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023151, -0.994493, -0.102211,
		0.950454, -0.053597, 0.306210,
		-0.310002, -0.090057, 0.946461,
		25.295082, 36.270645, 34.144394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395813, 35.921089, 32.918346>,  <25.512083, 36.333683, 33.481869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395813, 35.921089, 32.918346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605156, 36.260788, 32.890408>,  <25.730762, 36.464607, 32.873646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605156, 36.260788, 32.890408>,  <25.395813, 35.921089, 32.918346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605156, 36.260788, 32.890408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369717, -0.300163, -0.879325,
		-0.767728, 0.434378, -0.471073,
		0.523358, 0.849245, -0.069847,
		25.762163, 36.515560, 32.869453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316303, 36.274158, 32.265896>,  <25.395813, 35.921089, 32.918346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316303, 36.274158, 32.265896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675760, 36.348598, 32.424797>,  <25.891434, 36.393265, 32.520138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675760, 36.348598, 32.424797>,  <25.316303, 36.274158, 32.265896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675760, 36.348598, 32.424797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435549, -0.486597, -0.757311,
		0.052365, 0.853574, -0.518333,
		0.898641, 0.186103, 0.397254,
		25.945353, 36.404430, 32.543972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755989, 36.498623, 31.698210>,  <25.316303, 36.274158, 32.265896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755989, 36.498623, 31.698210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002552, 36.340733, 31.970749>,  <26.150490, 36.245998, 32.134274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002552, 36.340733, 31.970749>,  <25.755989, 36.498623, 31.698210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002552, 36.340733, 31.970749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263511, -0.711990, -0.650870,
		0.742026, 0.580745, -0.334863,
		0.616408, -0.394722, 0.681348,
		26.187475, 36.222317, 32.175152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402273, 36.318027, 31.373936>,  <25.755989, 36.498623, 31.698210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402273, 36.318027, 31.373936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275431, 36.071468, 31.662239>,  <26.199326, 35.923531, 31.835220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275431, 36.071468, 31.662239>,  <26.402273, 36.318027, 31.373936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275431, 36.071468, 31.662239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009214, -0.757943, -0.652256,
		0.948346, -0.213475, 0.234668,
		-0.317105, -0.616401, 0.720759,
		26.180300, 35.886547, 31.878468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001915, 36.297646, 31.824440>,  <26.402273, 36.318027, 31.373936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001915, 36.297646, 31.824440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235956, 36.110870, 32.089657>,  <27.376381, 35.998806, 32.248787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235956, 36.110870, 32.089657>,  <27.001915, 36.297646, 31.824440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235956, 36.110870, 32.089657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773249, 0.074812, -0.629673,
		0.244414, 0.881120, 0.404831,
		0.585104, -0.466937, 0.663041,
		27.411488, 35.970791, 32.288570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574001, 36.809143, 31.933493>,  <27.001915, 36.297646, 31.824440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574001, 36.809143, 31.933493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668787, 36.432652, 32.029770>,  <27.725658, 36.206757, 32.087536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668787, 36.432652, 32.029770>,  <27.574001, 36.809143, 31.933493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668787, 36.432652, 32.029770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839156, 0.073455, -0.538907,
		0.489555, 0.329683, 0.807245,
		0.236965, -0.941230, 0.240695,
		27.739876, 36.150284, 32.101978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270084, 36.762154, 32.284225>,  <27.574001, 36.809143, 31.933493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270084, 36.762154, 32.284225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126373, 36.475193, 32.045475>,  <28.040146, 36.303017, 31.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126373, 36.475193, 32.045475>,  <28.270084, 36.762154, 32.284225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126373, 36.475193, 32.045475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741522, 0.168880, -0.649326,
		0.566626, -0.675884, 0.471292,
		-0.359277, -0.717398, -0.596875,
		28.018591, 36.259975, 31.866413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856070, 36.325771, 32.141567>,  <28.270084, 36.762154, 32.284225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856070, 36.325771, 32.141567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587500, 36.306702, 31.845753>,  <28.426357, 36.295261, 31.668264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587500, 36.306702, 31.845753>,  <28.856070, 36.325771, 32.141567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587500, 36.306702, 31.845753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740685, -0.075418, -0.667606,
		-0.023945, -0.996011, 0.085951,
		-0.671426, -0.047677, -0.739537,
		28.386072, 36.292400, 31.623892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876059, 35.731312, 31.710405>,  <28.856070, 36.325771, 32.141567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876059, 35.731312, 31.710405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747551, 36.047226, 31.501396>,  <28.670446, 36.236774, 31.375992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747551, 36.047226, 31.501396>,  <28.876059, 35.731312, 31.710405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747551, 36.047226, 31.501396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702887, -0.170894, -0.690468,
		-0.634615, -0.589099, -0.500225,
		-0.321269, 0.789783, -0.522522,
		28.651171, 36.284161, 31.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934078, 35.544453, 31.056223>,  <28.876059, 35.731312, 31.710405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934078, 35.544453, 31.056223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922646, 35.944241, 31.062458>,  <28.915787, 36.184113, 31.066198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922646, 35.944241, 31.062458>,  <28.934078, 35.544453, 31.056223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922646, 35.944241, 31.062458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803729, 0.032249, -0.594121,
		-0.594309, -0.004451, -0.804224,
		-0.028580, 0.999470, 0.015588,
		28.914072, 36.244083, 31.067135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569702, 35.313347, 30.577888>,  <28.934078, 35.544453, 31.056223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569702, 35.313347, 30.577888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460140, 35.627071, 30.355240>,  <29.394403, 35.815308, 30.221651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460140, 35.627071, 30.355240>,  <29.569702, 35.313347, 30.577888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460140, 35.627071, 30.355240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961714, 0.228879, -0.150737,
		0.009174, -0.576599, -0.816976,
		-0.273903, 0.784314, -0.556623,
		29.377970, 35.862366, 30.188253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001503, 35.260586, 30.100471>,  <29.569702, 35.313347, 30.577888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001503, 35.260586, 30.100471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868629, 35.633751, 30.044859>,  <29.788904, 35.857651, 30.011492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868629, 35.633751, 30.044859>,  <30.001503, 35.260586, 30.100471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868629, 35.633751, 30.044859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939723, 0.314669, -0.133807,
		-0.081082, -0.175099, -0.981206,
		-0.332185, 0.932911, -0.139031,
		29.768974, 35.913624, 30.003149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261541, 35.578461, 29.585806>,  <30.001503, 35.260586, 30.100471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261541, 35.578461, 29.585806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179100, 35.904655, 29.802137>,  <30.129635, 36.100372, 29.931936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179100, 35.904655, 29.802137>,  <30.261541, 35.578461, 29.585806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179100, 35.904655, 29.802137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973877, 0.224780, 0.032200,
		-0.095310, 0.533339, -0.840515,
		-0.206105, 0.815489, 0.540831,
		30.117270, 36.149303, 29.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316925, 36.275265, 29.243736>,  <30.261541, 35.578461, 29.585806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316925, 36.275265, 29.243736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428490, 36.282051, 29.627802>,  <30.495428, 36.286121, 29.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428490, 36.282051, 29.627802>,  <30.316925, 36.275265, 29.243736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428490, 36.282051, 29.627802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957241, 0.075036, -0.279390,
		-0.076787, 0.997036, 0.004688,
		0.278914, 0.016966, 0.960166,
		30.512163, 36.287140, 29.915852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768631, 36.811935, 29.299921>,  <30.316925, 36.275265, 29.243736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768631, 36.811935, 29.299921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865862, 36.545631, 29.582106>,  <30.924200, 36.385849, 29.751417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865862, 36.545631, 29.582106>,  <30.768631, 36.811935, 29.299921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865862, 36.545631, 29.582106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967211, 0.111174, -0.228349,
		0.073597, 0.737836, 0.670955,
		0.243078, -0.665761, 0.705461,
		30.938786, 36.345901, 29.793743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328142, 37.063087, 29.679405>,  <30.768631, 36.811935, 29.299921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328142, 37.063087, 29.679405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315964, 36.663460, 29.691620>,  <31.308657, 36.423683, 29.698948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315964, 36.663460, 29.691620>,  <31.328142, 37.063087, 29.679405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315964, 36.663460, 29.691620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965930, -0.037262, -0.256108,
		0.257008, 0.021699, 0.966166,
		-0.030444, -0.999070, 0.030536,
		31.306831, 36.363739, 29.700781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926449, 36.725620, 30.009947>,  <31.328142, 37.063087, 29.679405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926449, 36.725620, 30.009947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770657, 36.446304, 29.769712>,  <31.677181, 36.278717, 29.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770657, 36.446304, 29.769712>,  <31.926449, 36.725620, 30.009947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770657, 36.446304, 29.769712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918956, -0.250825, -0.304314,
		0.061858, -0.670434, 0.739386,
		-0.389479, -0.698287, -0.600584,
		31.653812, 36.236816, 29.589537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236370, 36.079826, 30.143850>,  <31.926449, 36.725620, 30.009947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236370, 36.079826, 30.143850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147900, 36.101280, 29.754347>,  <32.094818, 36.114151, 29.520645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147900, 36.101280, 29.754347>,  <32.236370, 36.079826, 30.143850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147900, 36.101280, 29.754347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901731, -0.369042, -0.225141,
		-0.371431, -0.927864, 0.033269,
		-0.221178, 0.053625, -0.973758,
		32.081547, 36.117371, 29.462219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388939, 35.393414, 29.816000>,  <32.236370, 36.079826, 30.143850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388939, 35.393414, 29.816000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398621, 35.689602, 29.547340>,  <32.404430, 35.867313, 29.386145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398621, 35.689602, 29.547340>,  <32.388939, 35.393414, 29.816000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398621, 35.689602, 29.547340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870621, -0.345830, -0.349885,
		-0.491358, -0.576283, -0.653043,
		0.024209, 0.740472, -0.671651,
		32.405884, 35.911743, 29.345844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553482, 35.095673, 29.197868>,  <32.388939, 35.393414, 29.816000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553482, 35.095673, 29.197868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646751, 35.479931, 29.137470>,  <32.702713, 35.710484, 29.101231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646751, 35.479931, 29.137470>,  <32.553482, 35.095673, 29.197868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646751, 35.479931, 29.137470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867109, -0.275681, -0.414876,
		-0.440174, -0.034193, -0.897261,
		0.233172, 0.960641, -0.150996,
		32.716702, 35.768124, 29.092171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600899, 35.031277, 28.474482>,  <32.553482, 35.095673, 29.197868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600899, 35.031277, 28.474482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802582, 35.339973, 28.629499>,  <32.923592, 35.525192, 28.722509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802582, 35.339973, 28.629499>,  <32.600899, 35.031277, 28.474482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802582, 35.339973, 28.629499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773776, -0.204453, -0.599559,
		-0.383471, 0.602172, -0.700242,
		0.504204, 0.771743, 0.387544,
		32.953842, 35.571495, 28.745762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872013, 35.523109, 27.891451>,  <32.600899, 35.031277, 28.474482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872013, 35.523109, 27.891451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112171, 35.548660, 28.210310>,  <33.256268, 35.563992, 28.401625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112171, 35.548660, 28.210310>,  <32.872013, 35.523109, 27.891451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112171, 35.548660, 28.210310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791700, -0.188147, -0.581215,
		0.112853, 0.980061, -0.163537,
		0.600396, 0.063881, 0.797148,
		33.292290, 35.567825, 28.449453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343586, 36.046696, 27.708494>,  <32.872013, 35.523109, 27.891451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343586, 36.046696, 27.708494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539639, 35.859974, 28.002939>,  <33.657272, 35.747940, 28.179605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539639, 35.859974, 28.002939>,  <33.343586, 36.046696, 27.708494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539639, 35.859974, 28.002939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801125, -0.091516, -0.591459,
		0.343463, 0.879611, 0.329116,
		0.490135, -0.466807, 0.736111,
		33.686680, 35.719933, 28.223772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874676, 36.395962, 27.713255>,  <33.343586, 36.046696, 27.708494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874676, 36.395962, 27.713255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960567, 36.042183, 27.878977>,  <34.012104, 35.829914, 27.978409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960567, 36.042183, 27.878977>,  <33.874676, 36.395962, 27.713255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960567, 36.042183, 27.878977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760531, -0.114724, -0.639086,
		0.612767, 0.452320, 0.648015,
		0.214729, -0.884446, 0.414303,
		34.024986, 35.776848, 28.003267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533016, 36.378071, 27.635212>,  <33.874676, 36.395962, 27.713255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533016, 36.378071, 27.635212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449303, 36.000645, 27.737881>,  <34.399075, 35.774189, 27.799482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449303, 36.000645, 27.737881>,  <34.533016, 36.378071, 27.635212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449303, 36.000645, 27.737881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723579, -0.325988, -0.608413,
		0.657750, 0.058392, 0.750969,
		-0.209281, -0.943569, 0.256670,
		34.386517, 35.717575, 27.814882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160408, 36.146194, 28.022451>,  <34.533016, 36.378071, 27.635212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160408, 36.146194, 28.022451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938293, 35.857323, 27.857471>,  <34.805023, 35.684002, 27.758484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938293, 35.857323, 27.857471>,  <35.160408, 36.146194, 28.022451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938293, 35.857323, 27.857471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721652, -0.171910, -0.670572,
		0.413366, -0.670007, 0.616619,
		-0.555290, -0.722176, -0.412450,
		34.771706, 35.640671, 27.733736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663071, 35.524033, 27.870342>,  <35.160408, 36.146194, 28.022451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663071, 35.524033, 27.870342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347061, 35.458878, 27.633928>,  <35.157455, 35.419785, 27.492081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347061, 35.458878, 27.633928>,  <35.663071, 35.524033, 27.870342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347061, 35.458878, 27.633928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613064, -0.214446, -0.760372,
		-0.002888, -0.963057, 0.269281,
		-0.790028, -0.162891, -0.591035,
		35.110054, 35.410011, 27.456617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951546, 34.999470, 27.438236>,  <35.663071, 35.524033, 27.870342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951546, 34.999470, 27.438236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615002, 35.129147, 27.265257>,  <35.413074, 35.206951, 27.161470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615002, 35.129147, 27.265257>,  <35.951546, 34.999470, 27.438236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615002, 35.129147, 27.265257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410395, -0.137436, -0.901492,
		-0.351690, -0.935955, -0.017413,
		-0.841362, 0.324191, -0.432446,
		35.362595, 35.226402, 27.135523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727604, 34.466885, 26.935293>,  <35.951546, 34.999470, 27.438236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727604, 34.466885, 26.935293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588589, 34.825275, 26.824696>,  <35.505180, 35.040310, 26.758337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588589, 34.825275, 26.824696>,  <35.727604, 34.466885, 26.935293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588589, 34.825275, 26.824696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295781, -0.175066, -0.939077,
		-0.889794, -0.408142, -0.204172,
		-0.347534, 0.895976, -0.276493,
		35.484329, 35.094067, 26.741747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442589, 34.405602, 26.269148>,  <35.727604, 34.466885, 26.935293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442589, 34.405602, 26.269148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517155, 34.798336, 26.283266>,  <35.561893, 35.033978, 26.291737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517155, 34.798336, 26.283266>,  <35.442589, 34.405602, 26.269148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517155, 34.798336, 26.283266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443345, -0.052006, -0.894841,
		-0.876752, 0.182463, -0.444987,
		0.186417, 0.981836, 0.035298,
		35.573078, 35.092888, 26.293856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225063, 34.648796, 25.598518>,  <35.442589, 34.405602, 26.269148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225063, 34.648796, 25.598518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468739, 34.938461, 25.727808>,  <35.614944, 35.112263, 25.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468739, 34.938461, 25.727808>,  <35.225063, 34.648796, 25.598518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468739, 34.938461, 25.727808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323058, 0.145610, -0.935110,
		-0.724239, 0.674078, -0.145243,
		0.609189, 0.724166, 0.323223,
		35.651497, 35.155712, 25.824776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195221, 35.190830, 25.082926>,  <35.225063, 34.648796, 25.598518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195221, 35.190830, 25.082926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522392, 35.284412, 25.293169>,  <35.718693, 35.340561, 25.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522392, 35.284412, 25.293169>,  <35.195221, 35.190830, 25.082926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522392, 35.284412, 25.293169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443208, 0.326279, -0.834931,
		-0.366829, 0.915865, 0.163182,
		0.817926, 0.233954, 0.525607,
		35.767769, 35.354599, 25.450851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384048, 35.873028, 24.819487>,  <35.195221, 35.190830, 25.082926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384048, 35.873028, 24.819487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705383, 35.726006, 25.006910>,  <35.898186, 35.637791, 25.119364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705383, 35.726006, 25.006910>,  <35.384048, 35.873028, 24.819487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705383, 35.726006, 25.006910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582651, 0.322416, -0.746034,
		0.123139, 0.872324, 0.473167,
		0.803340, -0.367557, 0.468559,
		35.946384, 35.615738, 25.147478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855381, 36.406227, 24.776787>,  <35.384048, 35.873028, 24.819487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855381, 36.406227, 24.776787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058338, 36.064632, 24.822863>,  <36.180111, 35.859676, 24.850508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058338, 36.064632, 24.822863>,  <35.855381, 36.406227, 24.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058338, 36.064632, 24.822863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504321, 0.185897, -0.843269,
		0.698724, 0.485959, 0.525004,
		0.507391, -0.853983, 0.115189,
		36.210556, 35.808437, 24.857420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633957, 36.573395, 24.712500>,  <35.855381, 36.406227, 24.776787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633957, 36.573395, 24.712500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575195, 36.186451, 24.629900>,  <36.539940, 35.954285, 24.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575195, 36.186451, 24.629900>,  <36.633957, 36.573395, 24.712500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575195, 36.186451, 24.629900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541480, 0.096060, -0.835208,
		0.827780, -0.234506, 0.509693,
		-0.146900, -0.967357, -0.206497,
		36.531124, 35.896244, 24.567951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291618, 36.370064, 24.577377>,  <36.633957, 36.573395, 24.712500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291618, 36.370064, 24.577377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033619, 36.118946, 24.403091>,  <36.878819, 35.968277, 24.298519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033619, 36.118946, 24.403091>,  <37.291618, 36.370064, 24.577377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033619, 36.118946, 24.403091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588523, -0.044379, -0.807262,
		0.487458, -0.777112, 0.398097,
		-0.645000, -0.627795, -0.435715,
		36.840118, 35.930607, 24.272377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677528, 36.302044, 24.078720>,  <37.291618, 36.370064, 24.577377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677528, 36.302044, 24.078720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378956, 36.070763, 23.946949>,  <37.199814, 35.931992, 23.867886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378956, 36.070763, 23.946949>,  <37.677528, 36.302044, 24.078720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378956, 36.070763, 23.946949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452568, -0.078137, -0.888300,
		0.487879, -0.812141, 0.320001,
		-0.746429, -0.578205, -0.329428,
		37.155025, 35.897301, 23.848120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937416, 35.590630, 23.848680>,  <37.677528, 36.302044, 24.078720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937416, 35.590630, 23.848680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603600, 35.695362, 23.654779>,  <37.403309, 35.758202, 23.538439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603600, 35.695362, 23.654779>,  <37.937416, 35.590630, 23.848680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603600, 35.695362, 23.654779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498446, -0.016033, -0.866773,
		-0.234723, -0.964980, -0.117130,
		-0.834540, 0.261834, -0.484753,
		37.353237, 35.773911, 23.509354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935848, 35.155132, 23.173109>,  <37.937416, 35.590630, 23.848680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935848, 35.155132, 23.173109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701950, 35.476627, 23.129141>,  <37.561611, 35.669525, 23.102760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701950, 35.476627, 23.129141>,  <37.935848, 35.155132, 23.173109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701950, 35.476627, 23.129141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425683, 0.188665, -0.884985,
		-0.690555, -0.564283, -0.452457,
		-0.584746, 0.803735, -0.109922,
		37.526527, 35.717747, 23.096165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919201, 35.231689, 22.462887>,  <37.935848, 35.155132, 23.173109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919201, 35.231689, 22.462887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731838, 35.574516, 22.548712>,  <37.619419, 35.780212, 22.600206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731838, 35.574516, 22.548712>,  <37.919201, 35.231689, 22.462887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731838, 35.574516, 22.548712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386732, 0.417244, -0.822403,
		-0.794376, -0.302241, -0.526894,
		-0.468407, 0.857064, 0.214562,
		37.591316, 35.831635, 22.613081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414303, 35.443642, 21.860945>,  <37.919201, 35.231689, 22.462887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414303, 35.443642, 21.860945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516426, 35.773499, 22.062847>,  <37.577702, 35.971413, 22.183989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516426, 35.773499, 22.062847>,  <37.414303, 35.443642, 21.860945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516426, 35.773499, 22.062847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470767, 0.349968, -0.809877,
		-0.844509, 0.444393, -0.298864,
		0.255311, 0.824643, 0.504757,
		37.593018, 36.020893, 22.214273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230640, 36.071384, 21.400303>,  <37.414303, 35.443642, 21.860945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230640, 36.071384, 21.400303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504585, 36.205982, 21.658833>,  <37.668953, 36.286743, 21.813950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504585, 36.205982, 21.658833>,  <37.230640, 36.071384, 21.400303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504585, 36.205982, 21.658833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419066, 0.543738, -0.727140,
		-0.596112, 0.768843, 0.231370,
		0.684861, 0.336497, 0.646324,
		37.710045, 36.306931, 21.852730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334911, 36.749966, 21.250013>,  <37.230640, 36.071384, 21.400303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334911, 36.749966, 21.250013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666489, 36.642254, 21.446114>,  <37.865433, 36.577625, 21.563774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666489, 36.642254, 21.446114>,  <37.334911, 36.749966, 21.250013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666489, 36.642254, 21.446114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548792, 0.560950, -0.619808,
		-0.108103, 0.782830, 0.612773,
		0.828939, -0.269282, 0.490252,
		37.915169, 36.561470, 21.593189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912083, 37.259953, 21.088367>,  <37.334911, 36.749966, 21.250013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912083, 37.259953, 21.088367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135384, 36.969574, 21.249041>,  <38.269363, 36.795345, 21.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135384, 36.969574, 21.249041>,  <37.912083, 37.259953, 21.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135384, 36.969574, 21.249041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819232, 0.405767, -0.405230,
		0.131186, 0.555294, 0.821242,
		0.558255, -0.725949, 0.401684,
		38.302860, 36.751789, 21.369545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407383, 37.566292, 21.306532>,  <37.912083, 37.259953, 21.088367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407383, 37.566292, 21.306532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571636, 37.203201, 21.272087>,  <38.670189, 36.985348, 21.251419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571636, 37.203201, 21.272087>,  <38.407383, 37.566292, 21.306532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571636, 37.203201, 21.272087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797809, 0.403418, -0.448057,
		0.441452, 0.115285, 0.889848,
		0.410635, -0.907724, -0.086114,
		38.694828, 36.930885, 21.246252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106846, 37.696526, 21.435608>,  <38.407383, 37.566292, 21.306532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106846, 37.696526, 21.435608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137600, 37.325603, 21.289074>,  <39.156052, 37.103050, 21.201155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137600, 37.325603, 21.289074>,  <39.106846, 37.696526, 21.435608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137600, 37.325603, 21.289074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767586, 0.289543, -0.571818,
		0.636317, -0.237227, 0.734046,
		0.076887, -0.927302, -0.366333,
		39.160667, 37.047413, 21.179174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759789, 37.662071, 21.488602>,  <39.106846, 37.696526, 21.435608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759789, 37.662071, 21.488602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655090, 37.388748, 21.215960>,  <39.592270, 37.224754, 21.052374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655090, 37.388748, 21.215960>,  <39.759789, 37.662071, 21.488602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655090, 37.388748, 21.215960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825320, 0.207649, -0.525099,
		0.500337, -0.699984, 0.509593,
		-0.261744, -0.683304, -0.681606,
		39.576569, 37.183758, 21.011478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258858, 37.252621, 21.298079>,  <39.759789, 37.662071, 21.488602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258858, 37.252621, 21.298079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017963, 37.219231, 20.980501>,  <39.873428, 37.199196, 20.789955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017963, 37.219231, 20.980501>,  <40.258858, 37.252621, 21.298079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017963, 37.219231, 20.980501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777551, 0.164027, -0.607050,
		0.180898, -0.982918, -0.033881,
		-0.602238, -0.083470, -0.793941,
		39.837292, 37.194187, 20.742319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660587, 36.965168, 20.888533>,  <40.258858, 37.252621, 21.298079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660587, 36.965168, 20.888533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373356, 37.133060, 20.666473>,  <40.201015, 37.233795, 20.533237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373356, 37.133060, 20.666473>,  <40.660587, 36.965168, 20.888533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373356, 37.133060, 20.666473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695903, 0.443345, -0.564946,
		0.008999, -0.792007, -0.610446,
		-0.718079, 0.419727, -0.555150,
		40.157932, 37.258980, 20.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863392, 36.869026, 20.193161>,  <40.660587, 36.965168, 20.888533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863392, 36.869026, 20.193161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599911, 37.169773, 20.181751>,  <40.441822, 37.350220, 20.174906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599911, 37.169773, 20.181751>,  <40.863392, 36.869026, 20.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599911, 37.169773, 20.181751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583765, 0.486776, -0.649821,
		-0.474694, -0.444687, -0.759552,
		-0.658698, 0.751866, -0.028523,
		40.402302, 37.395332, 20.173195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880878, 37.112133, 19.515953>,  <40.863392, 36.869026, 20.193161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880878, 37.112133, 19.515953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695923, 37.407791, 19.711855>,  <40.584949, 37.585186, 19.829395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695923, 37.407791, 19.711855>,  <40.880878, 37.112133, 19.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695923, 37.407791, 19.711855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449209, 0.671495, -0.589327,
		-0.764466, -0.052496, -0.642523,
		-0.462388, 0.739147, 0.489754,
		40.557205, 37.629536, 19.858782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732018, 37.623501, 18.960602>,  <40.880878, 37.112133, 19.515953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732018, 37.623501, 18.960602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689648, 37.832527, 19.299000>,  <40.664227, 37.957943, 19.502039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689648, 37.832527, 19.299000>,  <40.732018, 37.623501, 18.960602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689648, 37.832527, 19.299000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537888, 0.745674, -0.393252,
		-0.836336, 0.413397, -0.360064,
		-0.105921, 0.522565, 0.845994,
		40.657871, 37.989296, 19.552797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238361, 38.262245, 18.801062>,  <40.732018, 37.623501, 18.960602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238361, 38.262245, 18.801062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483292, 38.340458, 19.107477>,  <40.630249, 38.387386, 19.291327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483292, 38.340458, 19.107477>,  <40.238361, 38.262245, 18.801062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483292, 38.340458, 19.107477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202740, 0.897696, -0.391200,
		-0.764165, 0.394851, 0.510044,
		0.612330, 0.195535, 0.766040,
		40.666992, 38.399120, 19.337290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113251, 39.010254, 19.087038>,  <40.238361, 38.262245, 18.801062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113251, 39.010254, 19.087038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481289, 38.897881, 19.196217>,  <40.702114, 38.830456, 19.261724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481289, 38.897881, 19.196217>,  <40.113251, 39.010254, 19.087038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481289, 38.897881, 19.196217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378466, 0.817176, -0.434726,
		-0.100918, 0.503291, 0.858203,
		0.920097, -0.280929, 0.272947,
		40.757317, 38.813602, 19.278101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376102, 39.567612, 19.453295>,  <40.113251, 39.010254, 19.087038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376102, 39.567612, 19.453295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707726, 39.359848, 19.370464>,  <40.906700, 39.235191, 19.320766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707726, 39.359848, 19.370464>,  <40.376102, 39.567612, 19.453295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707726, 39.359848, 19.370464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459821, 0.844011, -0.276060,
		0.318160, 0.133653, 0.938568,
		0.829059, -0.519405, -0.207074,
		40.956444, 39.204025, 19.308342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912899, 39.897907, 19.843422>,  <40.376102, 39.567612, 19.453295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912899, 39.897907, 19.843422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067265, 39.705330, 19.528643>,  <41.159885, 39.589783, 19.339775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067265, 39.705330, 19.528643>,  <40.912899, 39.897907, 19.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067265, 39.705330, 19.528643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528892, 0.814383, -0.238857,
		0.755871, -0.324031, 0.568913,
		0.385916, -0.481439, -0.786946,
		41.183041, 39.560898, 19.292559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615406, 40.105091, 19.857504>,  <40.912899, 39.897907, 19.843422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615406, 40.105091, 19.857504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547386, 39.985149, 19.482021>,  <41.506573, 39.913185, 19.256731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547386, 39.985149, 19.482021>,  <41.615406, 40.105091, 19.857504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547386, 39.985149, 19.482021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678851, 0.654852, -0.332159,
		0.714313, -0.693727, 0.092197,
		-0.170052, -0.299853, -0.938707,
		41.496372, 39.895195, 19.200409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249447, 40.260326, 19.574100>,  <41.615406, 40.105091, 19.857504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249447, 40.260326, 19.574100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017498, 40.162624, 19.263208>,  <41.878330, 40.104004, 19.076674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017498, 40.162624, 19.263208>,  <42.249447, 40.260326, 19.574100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017498, 40.162624, 19.263208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619476, 0.487431, -0.615354,
		0.529150, -0.838302, -0.131338,
		-0.579871, -0.244254, -0.777232,
		41.843536, 40.089348, 19.030039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697002, 40.024651, 19.022085>,  <42.249447, 40.260326, 19.574100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697002, 40.024651, 19.022085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369789, 40.133114, 18.819187>,  <42.173462, 40.198189, 18.697449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369789, 40.133114, 18.819187>,  <42.697002, 40.024651, 19.022085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369789, 40.133114, 18.819187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573189, 0.457460, -0.679841,
		0.047702, -0.846880, -0.529640,
		-0.818033, 0.271154, -0.507245,
		42.124378, 40.214458, 18.667013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861473, 39.882076, 18.358448>,  <42.697002, 40.024651, 19.022085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861473, 39.882076, 18.358448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548382, 40.130856, 18.349279>,  <42.360527, 40.280121, 18.343779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548382, 40.130856, 18.349279>,  <42.861473, 39.882076, 18.358448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548382, 40.130856, 18.349279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482930, 0.583715, -0.652730,
		-0.392583, -0.521977, -0.757244,
		-0.782724, 0.621947, -0.022922,
		42.313564, 40.317440, 18.342403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932499, 40.108871, 17.643827>,  <42.861473, 39.882076, 18.358448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932499, 40.108871, 17.643827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700233, 40.368084, 17.840961>,  <42.560875, 40.523613, 17.959242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700233, 40.368084, 17.840961>,  <42.932499, 40.108871, 17.643827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700233, 40.368084, 17.840961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512107, 0.761309, -0.397688,
		-0.632915, 0.021463, -0.773923,
		-0.580659, 0.648034, 0.492835,
		42.526035, 40.562492, 17.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473915, 40.632774, 17.263590>,  <42.932499, 40.108871, 17.643827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473915, 40.632774, 17.263590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617348, 40.764854, 17.612848>,  <42.703407, 40.844101, 17.822403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617348, 40.764854, 17.612848>,  <42.473915, 40.632774, 17.263590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617348, 40.764854, 17.612848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527009, 0.700429, -0.481312,
		-0.770505, 0.632748, 0.077147,
		0.358585, 0.330196, 0.873148,
		42.724922, 40.863914, 17.874792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397942, 41.426601, 17.376585>,  <42.473915, 40.632774, 17.263590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397942, 41.426601, 17.376585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731743, 41.345448, 17.581501>,  <42.932026, 41.296757, 17.704451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731743, 41.345448, 17.581501>,  <42.397942, 41.426601, 17.376585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731743, 41.345448, 17.581501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470364, 0.746550, -0.470554,
		-0.286984, 0.633642, 0.718427,
		0.834505, -0.202881, 0.512290,
		42.982094, 41.284584, 17.735188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792316, 42.041241, 17.646370>,  <42.397942, 41.426601, 17.376585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792316, 42.041241, 17.646370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034496, 41.747311, 17.524080>,  <43.179802, 41.570953, 17.450706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034496, 41.747311, 17.524080>,  <42.792316, 42.041241, 17.646370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034496, 41.747311, 17.524080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598679, 0.673595, -0.433420,
		0.524422, 0.079383, 0.847750,
		0.605446, -0.734825, -0.305723,
		43.216129, 41.526863, 17.432364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059708, 42.643852, 17.530508>,  <42.792316, 42.041241, 17.646370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059708, 42.643852, 17.530508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981846, 42.802628, 17.171722>,  <42.935127, 42.897892, 16.956451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981846, 42.802628, 17.171722>,  <43.059708, 42.643852, 17.530508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981846, 42.802628, 17.171722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444337, 0.779563, 0.441413,
		0.874456, 0.484479, 0.024627,
		-0.194658, 0.396939, -0.896966,
		42.923450, 42.921711, 16.902632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412109, 43.246006, 17.302433>,  <43.059708, 42.643852, 17.530508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412109, 43.246006, 17.302433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041061, 43.220570, 17.155199>,  <42.818432, 43.205307, 17.066858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041061, 43.220570, 17.155199>,  <43.412109, 43.246006, 17.302433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041061, 43.220570, 17.155199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255818, 0.826197, 0.501952,
		0.272189, 0.559781, -0.782661,
		-0.927615, -0.063593, -0.368084,
		42.762775, 43.201492, 17.044773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136448, 43.765690, 16.744955>,  <43.412109, 43.246006, 17.302433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136448, 43.765690, 16.744955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864933, 43.630424, 17.005690>,  <42.702023, 43.549263, 17.162130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864933, 43.630424, 17.005690>,  <43.136448, 43.765690, 16.744955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864933, 43.630424, 17.005690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017742, 0.879845, 0.474930,
		-0.734118, 0.333942, -0.591230,
		-0.678790, -0.338165, 0.651834,
		42.661297, 43.528976, 17.201241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661491, 44.296093, 16.764540>,  <43.136448, 43.765690, 16.744955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661491, 44.296093, 16.764540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624554, 44.081326, 17.099966>,  <42.602390, 43.952465, 17.301222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624554, 44.081326, 17.099966>,  <42.661491, 44.296093, 16.764540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624554, 44.081326, 17.099966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178660, 0.837433, 0.516514,
		-0.979568, -0.102122, -0.173255,
		-0.092342, -0.536915, 0.838568,
		42.596851, 43.920250, 17.351536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952888, 44.238415, 17.199371>,  <42.661491, 44.296093, 16.764540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952888, 44.238415, 17.199371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286488, 44.260464, 17.418972>,  <42.486649, 44.273693, 17.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286488, 44.260464, 17.418972>,  <41.952888, 44.238415, 17.199371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286488, 44.260464, 17.418972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332626, 0.844099, 0.420544,
		-0.440229, -0.533347, 0.722315,
		0.834001, 0.055125, 0.549002,
		42.536690, 44.277000, 17.583672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684303, 44.364002, 17.838335>,  <41.952888, 44.238415, 17.199371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684303, 44.364002, 17.838335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066650, 44.480171, 17.820581>,  <42.296059, 44.549873, 17.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066650, 44.480171, 17.820581>,  <41.684303, 44.364002, 17.838335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066650, 44.480171, 17.820581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281546, 0.948670, 0.144074,
		0.083949, -0.125219, 0.988571,
		0.955868, 0.290423, -0.044385,
		42.353413, 44.567299, 17.807266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080177, 44.135765, 17.609678>,  <41.684303, 44.364002, 17.838335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080177, 44.135765, 17.609678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207504, 43.763943, 17.535280>,  <41.283901, 43.540848, 17.490643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207504, 43.763943, 17.535280>,  <41.080177, 44.135765, 17.609678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207504, 43.763943, 17.535280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809052, -0.368642, 0.457752,
		-0.494073, 0.004767, -0.869407,
		0.318318, -0.929559, -0.185993,
		41.303001, 43.485073, 17.479483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544453, 43.725456, 17.305634>,  <41.080177, 44.135765, 17.609678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544453, 43.725456, 17.305634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782494, 43.468357, 17.498602>,  <40.925320, 43.314098, 17.614382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782494, 43.468357, 17.498602>,  <40.544453, 43.725456, 17.305634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782494, 43.468357, 17.498602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800541, -0.421377, 0.426116,
		-0.070604, -0.639780, -0.765308,
		0.595104, -0.642746, 0.482419,
		40.961025, 43.275532, 17.643328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270653, 42.991970, 17.272789>,  <40.544453, 43.725456, 17.305634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270653, 42.991970, 17.272789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500805, 42.963432, 17.598698>,  <40.638897, 42.946308, 17.794243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500805, 42.963432, 17.598698>,  <40.270653, 42.991970, 17.272789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500805, 42.963432, 17.598698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689103, -0.578868, 0.435946,
		0.440543, -0.812294, -0.382230,
		0.575377, -0.071344, 0.814771,
		40.673416, 42.942028, 17.843128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195347, 42.271114, 17.651772>,  <40.270653, 42.991970, 17.272789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195347, 42.271114, 17.651772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373108, 42.474819, 17.946568>,  <40.479763, 42.597042, 18.123446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373108, 42.474819, 17.946568>,  <40.195347, 42.271114, 17.651772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373108, 42.474819, 17.946568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468316, -0.569251, 0.675746,
		0.763668, -0.645447, -0.014478,
		0.444400, 0.509266, 0.736992,
		40.506428, 42.627598, 18.167665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472393, 41.801430, 18.186726>,  <40.195347, 42.271114, 17.651772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472393, 41.801430, 18.186726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455002, 42.143383, 18.393524>,  <40.444569, 42.348557, 18.517603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455002, 42.143383, 18.393524>,  <40.472393, 41.801430, 18.186726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455002, 42.143383, 18.393524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400790, -0.488943, 0.774791,
		0.915138, -0.173523, 0.363885,
		-0.043475, 0.854882, 0.516997,
		40.441959, 42.399849, 18.548624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549984, 41.544147, 18.864412>,  <40.472393, 41.801430, 18.186726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549984, 41.544147, 18.864412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399113, 41.914116, 18.883436>,  <40.308590, 42.136097, 18.894850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399113, 41.914116, 18.883436>,  <40.549984, 41.544147, 18.864412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399113, 41.914116, 18.883436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532033, -0.258425, 0.806324,
		0.758073, 0.278828, 0.589560,
		-0.377183, 0.924917, 0.047559,
		40.285957, 42.191589, 18.897703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742973, 41.705284, 19.552397>,  <40.549984, 41.544147, 18.864412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742973, 41.705284, 19.552397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457363, 41.967758, 19.454754>,  <40.285995, 42.125240, 19.396168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457363, 41.967758, 19.454754>,  <40.742973, 41.705284, 19.552397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457363, 41.967758, 19.454754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503182, -0.238545, 0.830605,
		0.486798, 0.715906, 0.500507,
		-0.714028, 0.656183, -0.244108,
		40.243156, 42.164612, 19.381521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592197, 42.071602, 20.121553>,  <40.742973, 41.705284, 19.552397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592197, 42.071602, 20.121553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269081, 42.138306, 19.895399>,  <40.075211, 42.178329, 19.759706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269081, 42.138306, 19.895399>,  <40.592197, 42.071602, 20.121553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269081, 42.138306, 19.895399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588847, -0.184297, 0.786952,
		0.027032, 0.968621, 0.247069,
		-0.807792, 0.166759, -0.565387,
		40.026745, 42.188332, 19.725782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295528, 42.663895, 20.441256>,  <40.592197, 42.071602, 20.121553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295528, 42.663895, 20.441256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014721, 42.452637, 20.250158>,  <39.846237, 42.325882, 20.135500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014721, 42.452637, 20.250158>,  <40.295528, 42.663895, 20.441256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014721, 42.452637, 20.250158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496195, -0.118458, 0.860092,
		-0.510842, 0.840854, -0.178901,
		-0.702019, -0.528141, -0.477741,
		39.804115, 42.294193, 20.106836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732616, 42.935440, 20.699404>,  <40.295528, 42.663895, 20.441256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732616, 42.935440, 20.699404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616650, 42.578960, 20.559853>,  <39.547070, 42.365074, 20.476122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616650, 42.578960, 20.559853>,  <39.732616, 42.935440, 20.699404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616650, 42.578960, 20.559853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569282, -0.132443, 0.811404,
		-0.769327, 0.433851, -0.468945,
		-0.289920, -0.891197, -0.348876,
		39.529675, 42.311600, 20.455191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112148, 42.798801, 21.021942>,  <39.732616, 42.935440, 20.699404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112148, 42.798801, 21.021942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120239, 42.426533, 20.875820>,  <39.125095, 42.203171, 20.788147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120239, 42.426533, 20.875820>,  <39.112148, 42.798801, 21.021942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120239, 42.426533, 20.875820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647148, -0.290699, 0.704765,
		-0.762096, 0.222153, -0.608159,
		0.020226, -0.930668, -0.365306,
		39.126308, 42.147331, 20.766228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416241, 42.462509, 20.961184>,  <39.112148, 42.798801, 21.021942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416241, 42.462509, 20.961184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689186, 42.174046, 21.009029>,  <38.852955, 42.000969, 21.037737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689186, 42.174046, 21.009029>,  <38.416241, 42.462509, 20.961184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689186, 42.174046, 21.009029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573801, -0.427025, 0.698857,
		-0.452908, -0.545512, -0.705189,
		0.682368, -0.721156, 0.119613,
		38.893898, 41.957699, 21.044912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967896, 41.817940, 21.002562>,  <38.416241, 42.462509, 20.961184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967896, 41.817940, 21.002562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318092, 41.746807, 21.182293>,  <38.528210, 41.704128, 21.290133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318092, 41.746807, 21.182293>,  <37.967896, 41.817940, 21.002562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318092, 41.746807, 21.182293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468123, -0.542856, 0.697258,
		0.119926, -0.820782, -0.558511,
		0.875488, -0.177833, 0.449329,
		38.580738, 41.693459, 21.317091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931416, 41.246700, 21.420454>,  <37.967896, 41.817940, 21.002562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931416, 41.246700, 21.420454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 41.361923, 21.596689>,  <38.475567, 41.431057, 21.702431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 41.361923, 21.596689>,  <37.931416, 41.246700, 21.420454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271511, 41.361923, 21.596689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338106, -0.342665, 0.876507,
		0.403462, -0.894204, -0.193951,
		0.850237, 0.288061, 0.440589,
		38.526581, 41.448341, 21.728867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195724, 40.654404, 21.669962>,  <37.931416, 41.246700, 21.420454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195724, 40.654404, 21.669962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373142, 40.929283, 21.900105>,  <38.479591, 41.094212, 22.038191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373142, 40.929283, 21.900105>,  <38.195724, 40.654404, 21.669962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373142, 40.929283, 21.900105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616324, -0.232215, 0.752477,
		0.650704, -0.688360, 0.320538,
		0.443541, 0.687195, 0.575356,
		38.506203, 41.135441, 22.072712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151810, 40.259136, 22.290649>,  <38.195724, 40.654404, 21.669962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151810, 40.259136, 22.290649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202568, 40.648727, 22.365755>,  <38.233025, 40.882484, 22.410818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202568, 40.648727, 22.365755>,  <38.151810, 40.259136, 22.290649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202568, 40.648727, 22.365755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734074, -0.035094, 0.678162,
		0.667107, -0.223891, 0.710522,
		0.126899, 0.973982, 0.187764,
		38.240639, 40.940922, 22.422085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264042, 40.207203, 22.953012>,  <38.151810, 40.259136, 22.290649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264042, 40.207203, 22.953012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136967, 40.579872, 22.882515>,  <38.060722, 40.803474, 22.840216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136967, 40.579872, 22.882515>,  <38.264042, 40.207203, 22.953012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136967, 40.579872, 22.882515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654721, -0.081086, 0.751509,
		0.685868, 0.354137, 0.635745,
		-0.317688, 0.931672, -0.176246,
		38.041660, 40.859375, 22.829641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236187, 40.471798, 23.558655>,  <38.264042, 40.207203, 22.953012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236187, 40.471798, 23.558655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992836, 40.680294, 23.319262>,  <37.846825, 40.805389, 23.175625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992836, 40.680294, 23.319262>,  <38.236187, 40.471798, 23.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992836, 40.680294, 23.319262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784311, -0.279552, 0.553812,
		0.121359, 0.806327, 0.578886,
		-0.608382, 0.521237, -0.598484,
		37.810322, 40.836666, 23.139717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737587, 40.828804, 24.007402>,  <38.236187, 40.471798, 23.558655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737587, 40.828804, 24.007402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556725, 40.833706, 23.650660>,  <37.448208, 40.836647, 23.436613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556725, 40.833706, 23.650660>,  <37.737587, 40.828804, 24.007402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556725, 40.833706, 23.650660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851318, -0.304252, 0.427420,
		-0.266112, 0.952513, 0.148000,
		-0.452152, 0.012253, -0.891857,
		37.421078, 40.837383, 23.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969753, 40.875923, 24.299683>,  <37.737587, 40.828804, 24.007402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969753, 40.875923, 24.299683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937576, 40.794575, 23.909367>,  <36.918270, 40.745766, 23.675177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937576, 40.794575, 23.909367>,  <36.969753, 40.875923, 24.299683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937576, 40.794575, 23.909367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904538, -0.396364, 0.157181,
		-0.418735, 0.895285, -0.152073,
		-0.080445, -0.203373, -0.975791,
		36.913445, 40.733562, 23.616629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291855, 41.211407, 24.082119>,  <36.969753, 40.875923, 24.299683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291855, 41.211407, 24.082119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401863, 40.950878, 23.799234>,  <36.467869, 40.794563, 23.629503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401863, 40.950878, 23.799234>,  <36.291855, 41.211407, 24.082119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401863, 40.950878, 23.799234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928219, -0.371561, -0.018769,
		-0.250548, 0.661611, -0.706751,
		0.275018, -0.651317, -0.707213,
		36.484367, 40.755482, 23.587070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786945, 41.275776, 23.620363>,  <36.291855, 41.211407, 24.082119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786945, 41.275776, 23.620363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952141, 40.914284, 23.575264>,  <36.051258, 40.697388, 23.548204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952141, 40.914284, 23.575264>,  <35.786945, 41.275776, 23.620363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952141, 40.914284, 23.575264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908235, -0.417856, 0.022484,
		-0.067432, 0.093118, -0.993369,
		0.412992, -0.903729, -0.112750,
		36.076038, 40.643166, 23.541439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282619, 41.003880, 23.103996>,  <35.786945, 41.275776, 23.620363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282619, 41.003880, 23.103996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497795, 40.722599, 23.289959>,  <35.626900, 40.553833, 23.401537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497795, 40.722599, 23.289959>,  <35.282619, 41.003880, 23.103996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497795, 40.722599, 23.289959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841784, -0.477522, 0.251738,
		0.044981, -0.526770, -0.848817,
		0.537937, -0.703197, 0.464906,
		35.659176, 40.511639, 23.429430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066063, 40.379982, 22.886518>,  <35.282619, 41.003880, 23.103996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066063, 40.379982, 22.886518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236115, 40.309387, 23.241623>,  <35.338146, 40.267033, 23.454685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236115, 40.309387, 23.241623>,  <35.066063, 40.379982, 22.886518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236115, 40.309387, 23.241623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817412, -0.496074, 0.292827,
		0.388715, -0.850155, -0.355157,
		0.425132, -0.176484, 0.887759,
		35.363655, 40.256443, 23.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736336, 39.774368, 23.175426>,  <35.066063, 40.379982, 22.886518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736336, 39.774368, 23.175426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883102, 39.968639, 23.492788>,  <34.971161, 40.085201, 23.683205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883102, 39.968639, 23.492788>,  <34.736336, 39.774368, 23.175426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883102, 39.968639, 23.492788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744951, -0.357415, 0.563297,
		0.557155, -0.797730, 0.230664,
		0.366916, 0.485677, 0.793405,
		34.993176, 40.114342, 23.730810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670124, 39.232574, 23.703226>,  <34.736336, 39.774368, 23.175426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670124, 39.232574, 23.703226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700428, 39.589127, 23.881975>,  <34.718613, 39.803059, 23.989223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700428, 39.589127, 23.881975>,  <34.670124, 39.232574, 23.703226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700428, 39.589127, 23.881975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680921, -0.281141, 0.676245,
		0.728428, -0.355519, 0.585661,
		0.075764, 0.891384, 0.446872,
		34.723156, 39.856541, 24.016037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736813, 39.064766, 24.386156>,  <34.670124, 39.232574, 23.703226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736813, 39.064766, 24.386156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612671, 39.444847, 24.374958>,  <34.538185, 39.672897, 24.368238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612671, 39.444847, 24.374958>,  <34.736813, 39.064766, 24.386156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612671, 39.444847, 24.374958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628432, -0.182983, 0.756036,
		0.713268, 0.252235, 0.653931,
		-0.310357, 0.950207, -0.027996,
		34.519566, 39.729908, 24.366560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580883, 39.100914, 25.090534>,  <34.736813, 39.064766, 24.386156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580883, 39.100914, 25.090534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421242, 39.419498, 24.908827>,  <34.325459, 39.610649, 24.799803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421242, 39.419498, 24.908827>,  <34.580883, 39.100914, 25.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421242, 39.419498, 24.908827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588846, 0.157123, 0.792825,
		0.702834, 0.583914, 0.406287,
		-0.399105, 0.796465, -0.454267,
		34.301510, 39.658440, 24.772547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617378, 39.740616, 25.557028>,  <34.580883, 39.100914, 25.090534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617378, 39.740616, 25.557028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306301, 39.800957, 25.312920>,  <34.119656, 39.837162, 25.166454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306301, 39.800957, 25.312920>,  <34.617378, 39.740616, 25.557028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306301, 39.800957, 25.312920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585923, 0.177809, 0.790619,
		0.227778, 0.972434, -0.049894,
		-0.777696, 0.150852, -0.610272,
		34.072990, 39.846210, 25.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239422, 40.278812, 25.869164>,  <34.617378, 39.740616, 25.557028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239422, 40.278812, 25.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972931, 40.123295, 25.614611>,  <33.813038, 40.029984, 25.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972931, 40.123295, 25.614611>,  <34.239422, 40.278812, 25.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972931, 40.123295, 25.614611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722637, 0.125753, 0.679693,
		-0.184237, 0.912701, -0.364740,
		-0.666223, -0.388799, -0.636383,
		33.773064, 40.006657, 25.423697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556282, 40.534046, 26.089914>,  <34.239422, 40.278812, 25.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556282, 40.534046, 26.089914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490158, 40.210064, 25.864828>,  <33.450485, 40.015675, 25.729776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490158, 40.210064, 25.864828>,  <33.556282, 40.534046, 26.089914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490158, 40.210064, 25.864828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735988, -0.278490, 0.617062,
		-0.656502, 0.516160, -0.550077,
		-0.165311, -0.809952, -0.562717,
		33.440563, 39.967079, 25.696012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900139, 40.412384, 26.202614>,  <33.556282, 40.534046, 26.089914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900139, 40.412384, 26.202614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000156, 40.064991, 26.031397>,  <33.060165, 39.856556, 25.928667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000156, 40.064991, 26.031397>,  <32.900139, 40.412384, 26.202614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000156, 40.064991, 26.031397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501597, -0.494323, 0.709961,
		-0.828179, 0.037186, -0.559229,
		0.250039, -0.868482, -0.428041,
		33.075169, 39.804447, 25.902985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262428, 39.899384, 26.213430>,  <32.900139, 40.412384, 26.202614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262428, 39.899384, 26.213430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617432, 39.715389, 26.202457>,  <32.830433, 39.604992, 26.195873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617432, 39.715389, 26.202457>,  <32.262428, 39.899384, 26.213430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617432, 39.715389, 26.202457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236361, -0.505534, 0.829800,
		-0.395560, -0.729968, -0.557386,
		0.887505, -0.459980, -0.027434,
		32.883682, 39.577396, 26.194227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029091, 39.236168, 26.503490>,  <32.262428, 39.899384, 26.213430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029091, 39.236168, 26.503490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428871, 39.249302, 26.505529>,  <32.668739, 39.257183, 26.506754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428871, 39.249302, 26.505529>,  <32.029091, 39.236168, 26.503490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428871, 39.249302, 26.505529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012152, -0.503993, 0.863622,
		0.030928, -0.863084, -0.504114,
		0.999448, 0.032836, 0.005099,
		32.728706, 39.259151, 26.507059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265747, 38.585838, 26.554163>,  <32.029091, 39.236168, 26.503490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265747, 38.585838, 26.554163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568687, 38.797901, 26.706665>,  <32.750450, 38.925140, 26.798166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568687, 38.797901, 26.706665>,  <32.265747, 38.585838, 26.554163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568687, 38.797901, 26.706665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076884, -0.507390, 0.858280,
		0.648470, -0.679329, -0.343510,
		0.757348, 0.530158, 0.381257,
		32.795891, 38.956947, 26.821043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488808, 38.089111, 27.002329>,  <32.265747, 38.585838, 26.554163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488808, 38.089111, 27.002329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672329, 38.431332, 27.098265>,  <32.782444, 38.636665, 27.155827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672329, 38.431332, 27.098265>,  <32.488808, 38.089111, 27.002329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672329, 38.431332, 27.098265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011896, -0.263990, 0.964452,
		0.888457, -0.445349, -0.110942,
		0.458805, 0.855554, 0.239842,
		32.809971, 38.688000, 27.170218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105885, 37.911995, 27.343821>,  <32.488808, 38.089111, 27.002329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105885, 37.911995, 27.343821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045887, 38.293369, 27.448477>,  <33.009888, 38.522194, 27.511271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045887, 38.293369, 27.448477>,  <33.105885, 37.911995, 27.343821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045887, 38.293369, 27.448477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144697, -0.240615, 0.959775,
		0.978041, 0.181820, -0.101869,
		-0.149995, 0.953439, 0.261640,
		33.000889, 38.579403, 27.526968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682880, 38.106983, 27.774569>,  <33.105885, 37.911995, 27.343821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682880, 38.106983, 27.774569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372715, 38.343994, 27.861874>,  <33.186615, 38.486202, 27.914257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372715, 38.343994, 27.861874>,  <33.682880, 38.106983, 27.774569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372715, 38.343994, 27.861874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077895, -0.432770, 0.898133,
		0.626628, 0.679425, 0.381732,
		-0.775416, 0.592530, 0.218262,
		33.140091, 38.521751, 27.927353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789124, 38.247719, 28.466967>,  <33.682880, 38.106983, 27.774569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789124, 38.247719, 28.466967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406441, 38.323917, 28.378944>,  <33.176830, 38.369637, 28.326130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406441, 38.323917, 28.378944>,  <33.789124, 38.247719, 28.466967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406441, 38.323917, 28.378944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288916, -0.529971, 0.797282,
		0.035257, 0.826342, 0.562064,
		-0.956705, 0.190499, -0.220058,
		33.119431, 38.381065, 28.312927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494972, 38.536751, 29.038233>,  <33.789124, 38.247719, 28.466967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494972, 38.536751, 29.038233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201771, 38.382217, 28.814287>,  <33.025848, 38.289497, 28.679920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201771, 38.382217, 28.814287>,  <33.494972, 38.536751, 29.038233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201771, 38.382217, 28.814287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366715, -0.468776, 0.803598,
		-0.572907, 0.794353, 0.201942,
		-0.733006, -0.386332, -0.559866,
		32.981869, 38.266319, 28.646328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865700, 39.011551, 29.163408>,  <33.494972, 38.536751, 29.038233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865700, 39.011551, 29.163408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000202, 38.844318, 29.500961>,  <34.080906, 38.743980, 29.703493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000202, 38.844318, 29.500961>,  <33.865700, 39.011551, 29.163408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000202, 38.844318, 29.500961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878251, 0.462713, -0.120714,
		-0.340007, 0.781732, 0.522772,
		0.336259, -0.418082, 0.843882,
		34.101082, 38.718895, 29.754126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329247, 39.481003, 29.427843>,  <33.865700, 39.011551, 29.163408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329247, 39.481003, 29.427843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459164, 39.139782, 29.591211>,  <34.537113, 38.935051, 29.689232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459164, 39.139782, 29.591211>,  <34.329247, 39.481003, 29.427843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459164, 39.139782, 29.591211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942969, 0.258785, -0.209379,
		0.072917, 0.453136, 0.888454,
		0.324796, -0.853052, 0.408423,
		34.556602, 38.883865, 29.713737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997074, 39.679268, 29.680372>,  <34.329247, 39.481003, 29.427843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997074, 39.679268, 29.680372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020557, 39.280201, 29.694292>,  <35.034649, 39.040760, 29.702644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020557, 39.280201, 29.694292>,  <34.997074, 39.679268, 29.680372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020557, 39.280201, 29.694292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947289, 0.044677, -0.317250,
		0.314956, 0.051592, 0.947703,
		0.058708, -0.997668, 0.034801,
		35.038170, 38.980900, 29.704733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599537, 39.554440, 29.981016>,  <34.997074, 39.679268, 29.680372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599537, 39.554440, 29.981016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501255, 39.218746, 29.786976>,  <35.442284, 39.017330, 29.670551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501255, 39.218746, 29.786976>,  <35.599537, 39.554440, 29.981016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501255, 39.218746, 29.786976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913395, -0.032891, -0.405744,
		0.324557, -0.542782, 0.774629,
		-0.245708, -0.839229, -0.485099,
		35.427544, 38.966976, 29.641445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234062, 39.169312, 29.984585>,  <35.599537, 39.554440, 29.981016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234062, 39.169312, 29.984585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011196, 38.983685, 29.709133>,  <35.877476, 38.872307, 29.543861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011196, 38.983685, 29.709133>,  <36.234062, 39.169312, 29.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011196, 38.983685, 29.709133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808258, -0.112828, -0.577917,
		0.190498, -0.878583, 0.437952,
		-0.557162, -0.464070, -0.688628,
		35.844048, 38.844463, 29.502544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604801, 38.588184, 29.845570>,  <36.234062, 39.169312, 29.984585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604801, 38.588184, 29.845570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369061, 38.631218, 29.525297>,  <36.227615, 38.657040, 29.333134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369061, 38.631218, 29.525297>,  <36.604801, 38.588184, 29.845570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369061, 38.631218, 29.525297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807778, 0.094045, -0.581937,
		0.012693, -0.989738, -0.142329,
		-0.589350, 0.107584, -0.800682,
		36.192257, 38.663494, 29.285093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852203, 38.122231, 29.326351>,  <36.604801, 38.588184, 29.845570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852203, 38.122231, 29.326351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625843, 38.386902, 29.129601>,  <36.490028, 38.545704, 29.011551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625843, 38.386902, 29.129601>,  <36.852203, 38.122231, 29.326351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625843, 38.386902, 29.129601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740509, 0.145604, -0.656084,
		-0.362497, -0.735515, -0.572375,
		-0.565899, 0.661678, -0.491875,
		36.456074, 38.585403, 28.982038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921772, 38.013969, 28.595997>,  <36.852203, 38.122231, 29.326351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921772, 38.013969, 28.595997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790451, 38.391754, 28.601778>,  <36.711658, 38.618423, 28.605247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790451, 38.391754, 28.601778>,  <36.921772, 38.013969, 28.595997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790451, 38.391754, 28.601778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836952, 0.297956, -0.459058,
		-0.437870, -0.138612, -0.888289,
		-0.328301, 0.944463, 0.014455,
		36.691959, 38.675095, 28.606113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102409, 38.271538, 27.982082>,  <36.921772, 38.013969, 28.595997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102409, 38.271538, 27.982082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045555, 38.612057, 28.184109>,  <37.011440, 38.816368, 28.305325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045555, 38.612057, 28.184109>,  <37.102409, 38.271538, 27.982082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045555, 38.612057, 28.184109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655967, 0.463126, -0.596005,
		-0.741286, 0.246590, -0.624251,
		-0.142138, 0.851297, 0.505064,
		37.002914, 38.867447, 28.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975216, 38.742970, 27.487211>,  <37.102409, 38.271538, 27.982082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975216, 38.742970, 27.487211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069908, 38.961765, 27.808397>,  <37.126724, 39.093044, 28.001110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069908, 38.961765, 27.808397>,  <36.975216, 38.742970, 27.487211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069908, 38.961765, 27.808397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599753, 0.567926, -0.563700,
		-0.764366, 0.615027, -0.193615,
		0.236732, 0.546994, 0.802967,
		37.140926, 39.125862, 28.049288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955032, 39.530823, 27.279747>,  <36.975216, 38.742970, 27.487211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955032, 39.530823, 27.279747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170860, 39.532627, 27.616518>,  <37.300358, 39.533710, 27.818581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170860, 39.532627, 27.616518>,  <36.955032, 39.530823, 27.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170860, 39.532627, 27.616518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667379, 0.607348, -0.430967,
		-0.513288, 0.794423, 0.324696,
		0.539574, 0.004515, 0.841926,
		37.332733, 39.533981, 27.869097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196556, 40.267906, 27.383102>,  <36.955032, 39.530823, 27.279747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196556, 40.267906, 27.383102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449295, 40.035786, 27.588636>,  <37.600937, 39.896515, 27.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449295, 40.035786, 27.588636>,  <37.196556, 40.267906, 27.383102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449295, 40.035786, 27.588636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774341, 0.443346, -0.451486,
		0.034191, 0.683152, 0.729476,
		0.631844, -0.580300, 0.513834,
		37.638847, 39.861694, 27.742786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593010, 40.668121, 27.702711>,  <37.196556, 40.267906, 27.383102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593010, 40.668121, 27.702711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794952, 40.323544, 27.680674>,  <37.916119, 40.116798, 27.667452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794952, 40.323544, 27.680674>,  <37.593010, 40.668121, 27.702711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794952, 40.323544, 27.680674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797148, 0.489755, -0.353122,
		0.331177, 0.134358, 0.933954,
		0.504854, -0.861445, -0.055092,
		37.946407, 40.065109, 27.664146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236534, 40.823193, 27.976295>,  <37.593010, 40.668121, 27.702711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236534, 40.823193, 27.976295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261986, 40.507397, 27.732113>,  <38.277256, 40.317921, 27.585604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261986, 40.507397, 27.732113>,  <38.236534, 40.823193, 27.976295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261986, 40.507397, 27.732113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607421, 0.515981, -0.603989,
		0.791827, -0.332371, 0.512386,
		0.063633, -0.789489, -0.610457,
		38.281075, 40.270550, 27.548975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848324, 40.884087, 27.761955>,  <38.236534, 40.823193, 27.976295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848324, 40.884087, 27.761955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694698, 40.644073, 27.481253>,  <38.602524, 40.500065, 27.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694698, 40.644073, 27.481253>,  <38.848324, 40.884087, 27.761955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694698, 40.644073, 27.481253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461630, 0.533443, -0.708757,
		0.799623, -0.596156, 0.072118,
		-0.384059, -0.600030, -0.701757,
		38.579479, 40.464066, 27.270725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440552, 40.540852, 27.371687>,  <38.848324, 40.884087, 27.761955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440552, 40.540852, 27.371687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116489, 40.571568, 27.139221>,  <38.922054, 40.589996, 26.999743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116489, 40.571568, 27.139221>,  <39.440552, 40.540852, 27.371687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116489, 40.571568, 27.139221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521592, 0.546926, -0.654838,
		0.267567, -0.833651, -0.483150,
		-0.810154, 0.076794, -0.581165,
		38.873444, 40.594604, 26.964872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751282, 40.597279, 26.692879>,  <39.440552, 40.540852, 27.371687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751282, 40.597279, 26.692879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363811, 40.666775, 26.621912>,  <39.131329, 40.708473, 26.579332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363811, 40.666775, 26.621912>,  <39.751282, 40.597279, 26.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363811, 40.666775, 26.621912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247274, 0.609411, -0.753308,
		-0.022763, -0.773583, -0.633286,
		-0.968678, 0.173743, -0.177415,
		39.073208, 40.718899, 26.568687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669048, 40.562046, 26.007401>,  <39.751282, 40.597279, 26.692879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669048, 40.562046, 26.007401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380123, 40.806187, 26.137472>,  <39.206768, 40.952671, 26.215515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380123, 40.806187, 26.137472>,  <39.669048, 40.562046, 26.007401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380123, 40.806187, 26.137472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240107, 0.662283, -0.709739,
		-0.648550, -0.434574, -0.624923,
		-0.722310, 0.610350, 0.325180,
		39.163429, 40.989292, 26.235025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271175, 40.735695, 25.394655>,  <39.669048, 40.562046, 26.007401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271175, 40.735695, 25.394655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174747, 41.017818, 25.661318>,  <39.116890, 41.187092, 25.821316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174747, 41.017818, 25.661318>,  <39.271175, 40.735695, 25.394655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174747, 41.017818, 25.661318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218580, 0.708724, -0.670771,
		-0.945574, -0.015982, -0.325015,
		-0.241066, 0.705305, 0.666657,
		39.102428, 41.229408, 25.861315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743526, 41.026711, 25.107414>,  <39.271175, 40.735695, 25.394655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743526, 41.026711, 25.107414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916908, 41.283760, 25.360128>,  <39.020939, 41.437988, 25.511757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916908, 41.283760, 25.360128>,  <38.743526, 41.026711, 25.107414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916908, 41.283760, 25.360128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241459, 0.592616, -0.768442,
		-0.868225, 0.485636, 0.101705,
		0.433456, 0.642623, 0.631785,
		39.046944, 41.476547, 25.549664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627075, 41.690399, 24.874054>,  <38.743526, 41.026711, 25.107414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627075, 41.690399, 24.874054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969540, 41.708138, 25.079971>,  <39.175018, 41.718781, 25.203522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969540, 41.708138, 25.079971>,  <38.627075, 41.690399, 24.874054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969540, 41.708138, 25.079971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410757, 0.546008, -0.730174,
		-0.313464, 0.836605, 0.449257,
		0.856165, 0.044348, 0.514795,
		39.226391, 41.721443, 25.234409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960106, 42.360435, 24.847832>,  <38.627075, 41.690399, 24.874054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960106, 42.360435, 24.847832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262749, 42.112316, 24.930565>,  <39.444336, 41.963444, 24.980206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262749, 42.112316, 24.930565>,  <38.960106, 42.360435, 24.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262749, 42.112316, 24.930565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469198, 0.294727, -0.832460,
		0.455410, 0.726891, 0.514033,
		0.756607, -0.620294, 0.206835,
		39.489731, 41.926228, 24.992615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572628, 42.722660, 24.718042>,  <38.960106, 42.360435, 24.847832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572628, 42.722660, 24.718042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712952, 42.348179, 24.726667>,  <39.797146, 42.123489, 24.731842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712952, 42.348179, 24.726667>,  <39.572628, 42.722660, 24.718042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712952, 42.348179, 24.726667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565671, 0.193500, -0.801607,
		0.746292, 0.293407, 0.597462,
		0.350806, -0.936200, 0.021564,
		39.818195, 42.067318, 24.733137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358917, 42.772453, 24.547539>,  <39.572628, 42.722660, 24.718042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358917, 42.772453, 24.547539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232964, 42.397644, 24.487085>,  <40.157391, 42.172760, 24.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232964, 42.397644, 24.487085>,  <40.358917, 42.772453, 24.547539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232964, 42.397644, 24.487085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726914, -0.135701, -0.673187,
		0.610280, -0.321840, 0.723863,
		-0.314887, -0.937019, -0.151135,
		40.138496, 42.116539, 24.441744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854530, 42.622707, 24.211672>,  <40.358917, 42.772453, 24.547539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854530, 42.622707, 24.211672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637497, 42.290287, 24.162754>,  <40.507278, 42.090836, 24.133404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637497, 42.290287, 24.162754>,  <40.854530, 42.622707, 24.211672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637497, 42.290287, 24.162754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657853, -0.329868, -0.677064,
		0.522333, -0.447817, 0.725691,
		-0.542583, -0.831051, -0.122297,
		40.474720, 42.040970, 24.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275467, 41.981045, 24.202623>,  <40.854530, 42.622707, 24.211672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275467, 41.981045, 24.202623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944611, 41.900948, 23.992582>,  <40.746098, 41.852890, 23.866558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944611, 41.900948, 23.992582>,  <41.275467, 41.981045, 24.202623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944611, 41.900948, 23.992582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560691, -0.357518, -0.746865,
		-0.038180, -0.912186, 0.407993,
		-0.827145, -0.200243, -0.525104,
		40.696468, 41.840874, 23.835051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317913, 41.364983, 23.949764>,  <41.275467, 41.981045, 24.202623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317913, 41.364983, 23.949764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033031, 41.487602, 23.697165>,  <40.862103, 41.561176, 23.545605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033031, 41.487602, 23.697165>,  <41.317913, 41.364983, 23.949764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033031, 41.487602, 23.697165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555576, -0.303711, -0.774012,
		-0.429068, -0.902101, 0.045991,
		-0.712205, 0.306553, -0.631498,
		40.819370, 41.579567, 23.507715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200768, 40.874432, 23.485767>,  <41.317913, 41.364983, 23.949764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200768, 40.874432, 23.485767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094719, 41.211761, 23.298788>,  <41.031090, 41.414162, 23.186600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094719, 41.211761, 23.298788>,  <41.200768, 40.874432, 23.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094719, 41.211761, 23.298788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573822, -0.251602, -0.779374,
		-0.774879, -0.474861, -0.417215,
		-0.265122, 0.843329, -0.467447,
		41.015182, 41.464760, 23.158554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150547, 40.600700, 22.851019>,  <41.200768, 40.874432, 23.485767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150547, 40.600700, 22.851019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181404, 40.998394, 22.821217>,  <41.199917, 41.237011, 22.803335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181404, 40.998394, 22.821217>,  <41.150547, 40.600700, 22.851019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181404, 40.998394, 22.821217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339780, -0.096472, -0.935544,
		-0.937336, 0.046856, -0.345263,
		0.077144, 0.994232, -0.074506,
		41.204548, 41.296665, 22.798864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999954, 40.761337, 22.091246>,  <41.150547, 40.600700, 22.851019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999954, 40.761337, 22.091246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201443, 41.072327, 22.241869>,  <41.322338, 41.258919, 22.332243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201443, 41.072327, 22.241869>,  <40.999954, 40.761337, 22.091246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201443, 41.072327, 22.241869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440364, 0.143910, -0.886211,
		-0.743197, 0.612228, -0.269881,
		0.503724, 0.777475, 0.376556,
		41.352558, 41.305569, 22.354836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094414, 41.303314, 21.452971>,  <40.999954, 40.761337, 22.091246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094414, 41.303314, 21.452971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347523, 41.397381, 21.748075>,  <41.499386, 41.453823, 21.925138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347523, 41.397381, 21.748075>,  <41.094414, 41.303314, 21.452971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347523, 41.397381, 21.748075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748322, 0.059180, -0.660690,
		-0.199036, 0.970151, -0.138537,
		0.632770, 0.235171, 0.737764,
		41.537354, 41.467934, 21.969404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444324, 41.937946, 21.275066>,  <41.094414, 41.303314, 21.452971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444324, 41.937946, 21.275066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698002, 41.783058, 21.542755>,  <41.850208, 41.690125, 21.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698002, 41.783058, 21.542755>,  <41.444324, 41.937946, 21.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698002, 41.783058, 21.542755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772838, 0.291881, -0.563495,
		0.022864, 0.874565, 0.484368,
		0.634191, -0.387222, 0.669224,
		41.888260, 41.666893, 21.743523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108162, 42.152760, 20.944628>,  <41.444324, 41.937946, 21.275066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108162, 42.152760, 20.944628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243656, 41.914482, 21.235947>,  <42.324951, 41.771515, 21.410738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243656, 41.914482, 21.235947>,  <42.108162, 42.152760, 20.944628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243656, 41.914482, 21.235947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927153, 0.079579, -0.366134,
		0.160145, 0.799263, 0.579252,
		0.338733, -0.595690, 0.728295,
		42.345276, 41.735775, 21.454435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738968, 42.561394, 21.162935>,  <42.108162, 42.152760, 20.944628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738968, 42.561394, 21.162935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747532, 42.187130, 21.303837>,  <42.752670, 41.962570, 21.388378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747532, 42.187130, 21.303837>,  <42.738968, 42.561394, 21.162935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747532, 42.187130, 21.303837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999522, 0.012175, -0.028425,
		0.022307, 0.352693, 0.935473,
		0.021414, -0.935660, 0.352253,
		42.753956, 41.906433, 21.409513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160351, 42.564442, 21.689354>,  <42.738968, 42.561394, 21.162935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160351, 42.564442, 21.689354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163956, 42.182240, 21.571421>,  <43.166119, 41.952919, 21.500660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163956, 42.182240, 21.571421>,  <43.160351, 42.564442, 21.689354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163956, 42.182240, 21.571421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995146, 0.037466, -0.090996,
		0.097994, -0.292583, 0.951206,
		0.009014, -0.955506, -0.294834,
		43.166660, 41.895588, 21.482971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662201, 42.342491, 22.060326>,  <43.160351, 42.564442, 21.689354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662201, 42.342491, 22.060326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626240, 42.060818, 21.778605>,  <43.604664, 41.891811, 21.609571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626240, 42.060818, 21.778605>,  <43.662201, 42.342491, 22.060326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626240, 42.060818, 21.778605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974285, 0.084515, -0.208868,
		0.206606, -0.704968, 0.678480,
		-0.089903, -0.704186, -0.704301,
		43.599270, 41.849564, 21.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119534, 41.844795, 22.191584>,  <43.662201, 42.342491, 22.060326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119534, 41.844795, 22.191584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058975, 41.803188, 21.798389>,  <44.022640, 41.778225, 21.562473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058975, 41.803188, 21.798389>,  <44.119534, 41.844795, 22.191584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058975, 41.803188, 21.798389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981483, -0.133880, -0.136993,
		-0.117351, -0.985523, 0.122363,
		-0.151392, -0.104021, -0.982985,
		44.013557, 41.771980, 21.503494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314335, 41.179768, 21.866154>,  <44.119534, 41.844795, 22.191584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314335, 41.179768, 21.866154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354042, 41.464954, 21.588501>,  <44.377869, 41.636066, 21.421909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354042, 41.464954, 21.588501>,  <44.314335, 41.179768, 21.866154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354042, 41.464954, 21.588501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963704, -0.242625, -0.111387,
		-0.247829, -0.657881, -0.711177,
		0.099270, 0.712970, -0.694132,
		44.383823, 41.678844, 21.380260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700520, 40.970802, 21.227694>,  <44.314335, 41.179768, 21.866154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700520, 40.970802, 21.227694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742256, 41.365486, 21.277534>,  <44.767300, 41.602295, 21.307440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742256, 41.365486, 21.277534>,  <44.700520, 40.970802, 21.227694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742256, 41.365486, 21.277534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951119, -0.062387, -0.302456,
		-0.290661, 0.150071, -0.944984,
		0.104344, 0.986705, 0.124602,
		44.773560, 41.661499, 21.314915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327164, 40.524582, 21.201077>,  <44.700520, 40.970802, 21.227694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327164, 40.524582, 21.201077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705956, 40.542923, 21.328283>,  <45.933231, 40.553928, 21.404608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705956, 40.542923, 21.328283>,  <45.327164, 40.524582, 21.201077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705956, 40.542923, 21.328283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303876, -0.193736, 0.932805,
		0.104384, -0.979982, -0.169529,
		0.946976, 0.045855, 0.318016,
		45.990047, 40.556679, 21.423689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388737, 39.966614, 21.787439>,  <45.327164, 40.524582, 21.201077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388737, 39.966614, 21.787439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714809, 40.191956, 21.841267>,  <45.910454, 40.327160, 21.873562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714809, 40.191956, 21.841267>,  <45.388737, 39.966614, 21.787439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714809, 40.191956, 21.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008664, -0.244163, 0.969695,
		0.579139, -0.789313, -0.203918,
		0.815183, 0.563355, 0.134566,
		45.959366, 40.360962, 21.881636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810192, 39.525581, 22.127005>,  <45.388737, 39.966614, 21.787439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810192, 39.525581, 22.127005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903549, 39.903008, 22.220995>,  <45.959564, 40.129463, 22.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903549, 39.903008, 22.220995>,  <45.810192, 39.525581, 22.127005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903549, 39.903008, 22.220995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060352, -0.227129, 0.971993,
		0.970509, -0.241033, 0.003937,
		0.233388, 0.943565, 0.234978,
		45.973564, 40.186077, 22.291489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256725, 39.456028, 22.697058>,  <45.810192, 39.525581, 22.127005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256725, 39.456028, 22.697058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114277, 39.829369, 22.715057>,  <46.028809, 40.053375, 22.725857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114277, 39.829369, 22.715057>,  <46.256725, 39.456028, 22.697058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114277, 39.829369, 22.715057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164011, -0.109840, 0.980324,
		0.919933, 0.341736, 0.192197,
		-0.356123, 0.933355, 0.044997,
		46.007439, 40.109375, 22.728556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450901, 39.772980, 23.372845>,  <46.256725, 39.456028, 22.697058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450901, 39.772980, 23.372845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136784, 39.985096, 23.245028>,  <45.948315, 40.112366, 23.168337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136784, 39.985096, 23.245028>,  <46.450901, 39.772980, 23.372845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136784, 39.985096, 23.245028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395078, -0.031829, 0.918096,
		0.476689, 0.847217, 0.234502,
		-0.785290, 0.530293, -0.319544,
		45.901196, 40.144184, 23.149164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330894, 40.320377, 23.817200>,  <46.450901, 39.772980, 23.372845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330894, 40.320377, 23.817200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974499, 40.286469, 23.638784>,  <45.760662, 40.266125, 23.531736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974499, 40.286469, 23.638784>,  <46.330894, 40.320377, 23.817200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974499, 40.286469, 23.638784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448525, 0.011968, 0.893690,
		-0.070419, 0.996329, -0.048684,
		-0.890992, -0.084769, -0.446036,
		45.707203, 40.261040, 23.504974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971378, 40.711281, 24.277075>,  <46.330894, 40.320377, 23.817200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971378, 40.711281, 24.277075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716537, 40.489357, 24.063055>,  <45.563633, 40.356201, 23.934643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716537, 40.489357, 24.063055>,  <45.971378, 40.711281, 24.277075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716537, 40.489357, 24.063055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622130, -0.039651, 0.781909,
		-0.455028, 0.831030, -0.319903,
		-0.637106, -0.554812, -0.535051,
		45.525406, 40.322914, 23.902540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333111, 40.991734, 24.454967>,  <45.971378, 40.711281, 24.277075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333111, 40.991734, 24.454967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249580, 40.626499, 24.314875>,  <45.199463, 40.407356, 24.230820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249580, 40.626499, 24.314875>,  <45.333111, 40.991734, 24.454967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249580, 40.626499, 24.314875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776846, -0.062666, 0.626565,
		-0.594057, 0.402917, -0.696243,
		-0.208823, -0.913089, -0.350232,
		45.186932, 40.352573, 24.209805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661377, 40.939350, 24.313278>,  <45.333111, 40.991734, 24.454967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661377, 40.939350, 24.313278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779411, 40.564289, 24.386738>,  <44.850231, 40.339252, 24.430815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779411, 40.564289, 24.386738>,  <44.661377, 40.939350, 24.313278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779411, 40.564289, 24.386738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787916, -0.130078, 0.601887,
		-0.540473, -0.322312, -0.777177,
		0.295089, -0.937654, 0.183651,
		44.867939, 40.282993, 24.441833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105911, 40.587231, 24.337353>,  <44.661377, 40.939350, 24.313278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105911, 40.587231, 24.337353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345695, 40.335899, 24.535688>,  <44.489567, 40.185101, 24.654690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345695, 40.335899, 24.535688>,  <44.105911, 40.587231, 24.337353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345695, 40.335899, 24.535688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738520, -0.195352, 0.645311,
		-0.308605, -0.753022, -0.581138,
		0.599460, -0.628328, 0.495835,
		44.525532, 40.147400, 24.684439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732216, 39.974804, 24.267653>,  <44.105911, 40.587231, 24.337353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732216, 39.974804, 24.267653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982883, 39.929829, 24.576105>,  <44.133286, 39.902843, 24.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982883, 39.929829, 24.576105>,  <43.732216, 39.974804, 24.267653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982883, 39.929829, 24.576105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779140, -0.109547, 0.617204,
		0.015078, -0.987602, -0.156254,
		0.626669, -0.112437, 0.771132,
		44.170883, 39.896099, 24.807446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569069, 39.417885, 24.583515>,  <43.732216, 39.974804, 24.267653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569069, 39.417885, 24.583515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762970, 39.608261, 24.877045>,  <43.879311, 39.722485, 25.053162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762970, 39.608261, 24.877045>,  <43.569069, 39.417885, 24.583515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762970, 39.608261, 24.877045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707158, -0.280473, 0.649048,
		0.514724, -0.833557, 0.200603,
		0.484755, 0.475938, 0.733822,
		43.908398, 39.751041, 25.097191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501633, 38.989346, 25.066267>,  <43.569069, 39.417885, 24.583515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501633, 38.989346, 25.066267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555405, 39.328529, 25.271362>,  <43.587666, 39.532040, 25.394419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555405, 39.328529, 25.271362>,  <43.501633, 38.989346, 25.066267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555405, 39.328529, 25.271362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719483, -0.272277, 0.638913,
		0.681377, -0.454793, 0.573489,
		0.134425, 0.847956, 0.512738,
		43.595734, 39.582916, 25.425184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693031, 38.778961, 25.748072>,  <43.501633, 38.989346, 25.066267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693031, 38.778961, 25.748072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532627, 39.145382, 25.750847>,  <43.436386, 39.365234, 25.752512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532627, 39.145382, 25.750847>,  <43.693031, 38.778961, 25.748072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532627, 39.145382, 25.750847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708587, -0.314973, 0.631423,
		0.580599, 0.248291, 0.775407,
		-0.401009, 0.916048, 0.006938,
		43.412323, 39.420197, 25.752928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427605, 38.984997, 26.455860>,  <43.693031, 38.778961, 25.748072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427605, 38.984997, 26.455860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250511, 39.271954, 26.240698>,  <43.144257, 39.444126, 26.111601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250511, 39.271954, 26.240698>,  <43.427605, 38.984997, 26.455860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250511, 39.271954, 26.240698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871935, -0.204558, 0.444844,
		0.209094, 0.665963, 0.716081,
		-0.442730, 0.717391, -0.537905,
		43.117691, 39.487171, 26.079327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066288, 39.478333, 26.888662>,  <43.427605, 38.984997, 26.455860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066288, 39.478333, 26.888662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876514, 39.476505, 26.536551>,  <42.762650, 39.475410, 26.325283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876514, 39.476505, 26.536551>,  <43.066288, 39.478333, 26.888662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876514, 39.476505, 26.536551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874509, -0.111969, 0.471908,
		-0.100719, 0.993701, 0.049128,
		-0.474437, -0.004567, -0.880278,
		42.734184, 39.475136, 26.272467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430405, 39.785526, 27.044413>,  <43.066288, 39.478333, 26.888662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430405, 39.785526, 27.044413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377586, 39.595913, 26.696192>,  <42.345894, 39.482143, 26.487259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377586, 39.595913, 26.696192>,  <42.430405, 39.785526, 27.044413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377586, 39.595913, 26.696192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934191, -0.234141, 0.269195,
		-0.331438, 0.848806, -0.411918,
		-0.132047, -0.474032, -0.870550,
		42.337971, 39.453705, 26.435026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828255, 39.999084, 26.730791>,  <42.430405, 39.785526, 27.044413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828255, 39.999084, 26.730791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877995, 39.648594, 26.544561>,  <41.907837, 39.438297, 26.432823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877995, 39.648594, 26.544561>,  <41.828255, 39.999084, 26.730791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877995, 39.648594, 26.544561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924636, -0.272560, 0.266005,
		-0.359979, 0.397411, -0.844085,
		0.124350, -0.876228, -0.465577,
		41.915298, 39.385727, 26.404888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232792, 39.893059, 26.443726>,  <41.828255, 39.999084, 26.730791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232792, 39.893059, 26.443726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392113, 39.526169, 26.440725>,  <41.487705, 39.306034, 26.438925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392113, 39.526169, 26.440725>,  <41.232792, 39.893059, 26.443726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392113, 39.526169, 26.440725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790266, -0.347297, 0.504842,
		-0.465658, -0.195151, -0.863179,
		0.398300, -0.917224, -0.007500,
		41.511604, 39.251003, 26.438475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782032, 39.430634, 26.072901>,  <41.232792, 39.893059, 26.443726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782032, 39.430634, 26.072901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994808, 39.163830, 26.281569>,  <41.122475, 39.003750, 26.406769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994808, 39.163830, 26.281569>,  <40.782032, 39.430634, 26.072901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994808, 39.163830, 26.281569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846780, -0.418243, 0.328688,
		-0.001052, -0.616584, -0.787288,
		0.531942, -0.667006, 0.521671,
		41.154392, 38.963726, 26.438070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489914, 38.744827, 25.989218>,  <40.782032, 39.430634, 26.072901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489914, 38.744827, 25.989218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699745, 38.754784, 26.329617>,  <40.825645, 38.760757, 26.533855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699745, 38.754784, 26.329617>,  <40.489914, 38.744827, 25.989218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699745, 38.754784, 26.329617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754743, -0.448908, 0.478376,
		0.393928, -0.893231, -0.216700,
		0.524579, 0.024893, 0.850997,
		40.857121, 38.762253, 26.584915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445118, 38.113697, 26.280312>,  <40.489914, 38.744827, 25.989218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445118, 38.113697, 26.280312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540436, 38.341156, 26.595234>,  <40.597626, 38.477631, 26.784187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540436, 38.341156, 26.595234>,  <40.445118, 38.113697, 26.280312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540436, 38.341156, 26.595234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751391, -0.405666, 0.520429,
		0.615326, -0.715592, 0.330609,
		0.238298, 0.568651, 0.787306,
		40.611927, 38.511749, 26.831427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336365, 37.736721, 26.819651>,  <40.445118, 38.113697, 26.280312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336365, 37.736721, 26.819651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353981, 38.084316, 27.016800>,  <40.364552, 38.292873, 27.135090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353981, 38.084316, 27.016800>,  <40.336365, 37.736721, 26.819651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353981, 38.084316, 27.016800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613231, -0.365958, 0.700016,
		0.788675, -0.333077, 0.516770,
		0.044043, 0.868985, 0.492875,
		40.367195, 38.345013, 27.164663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290588, 37.532429, 27.476860>,  <40.336365, 37.736721, 26.819651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290588, 37.532429, 27.476860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191193, 37.914139, 27.543337>,  <40.131557, 38.143166, 27.583223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191193, 37.914139, 27.543337>,  <40.290588, 37.532429, 27.476860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191193, 37.914139, 27.543337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530437, -0.277616, 0.800978,
		0.810488, 0.110878, 0.575165,
		-0.248486, 0.954272, 0.166191,
		40.116646, 38.200420, 27.593195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656002, 37.791893, 28.084753>,  <40.290588, 37.532429, 27.476860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656002, 37.791893, 28.084753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338295, 38.031109, 28.041872>,  <40.147671, 38.174637, 28.016144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338295, 38.031109, 28.041872>,  <40.656002, 37.791893, 28.084753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338295, 38.031109, 28.041872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327953, -0.273470, 0.904246,
		0.511458, 0.753369, 0.413336,
		-0.794266, 0.598038, -0.107201,
		40.100014, 38.210522, 28.009712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656296, 38.228874, 28.656166>,  <40.656002, 37.791893, 28.084753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656296, 38.228874, 28.656166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281639, 38.213940, 28.516851>,  <40.056843, 38.204979, 28.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281639, 38.213940, 28.516851>,  <40.656296, 38.228874, 28.656166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281639, 38.213940, 28.516851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324258, -0.283684, 0.902430,
		-0.132495, 0.958191, 0.253605,
		-0.936644, -0.037334, -0.348287,
		40.000645, 38.202740, 28.412365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322006, 38.594589, 29.172174>,  <40.656296, 38.228874, 28.656166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322006, 38.594589, 29.172174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023094, 38.401443, 28.989567>,  <39.843746, 38.285553, 28.880003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023094, 38.401443, 28.989567>,  <40.322006, 38.594589, 29.172174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023094, 38.401443, 28.989567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433446, -0.166533, 0.885659,
		-0.503682, 0.859712, -0.084851,
		-0.747281, -0.482869, -0.456518,
		39.798908, 38.256584, 28.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735146, 38.863522, 29.454641>,  <40.322006, 38.594589, 29.172174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735146, 38.863522, 29.454641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652973, 38.503166, 29.301695>,  <39.603668, 38.286953, 29.209927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652973, 38.503166, 29.301695>,  <39.735146, 38.863522, 29.454641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652973, 38.503166, 29.301695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394369, -0.281372, 0.874816,
		-0.895695, 0.330509, -0.297478,
		-0.205433, -0.900885, -0.382366,
		39.591343, 38.232903, 29.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118427, 38.729263, 29.717577>,  <39.735146, 38.863522, 29.454641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118427, 38.729263, 29.717577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235909, 38.362324, 29.610092>,  <39.306396, 38.142159, 29.545601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235909, 38.362324, 29.610092>,  <39.118427, 38.729263, 29.717577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235909, 38.362324, 29.610092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414286, -0.375497, 0.829077,
		-0.861455, -0.132179, -0.490330,
		0.293704, -0.917350, -0.268714,
		39.324020, 38.087120, 29.529478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520992, 38.392159, 29.856413>,  <39.118427, 38.729263, 29.717577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520992, 38.392159, 29.856413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808689, 38.116192, 29.823643>,  <38.981308, 37.950611, 29.803980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808689, 38.116192, 29.823643>,  <38.520992, 38.392159, 29.856413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808689, 38.116192, 29.823643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410322, -0.516973, 0.751249,
		-0.560654, -0.506710, -0.654914,
		0.719238, -0.689916, -0.081928,
		39.024460, 37.909218, 29.799065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261112, 37.699764, 29.894028>,  <38.520992, 38.392159, 29.856413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261112, 37.699764, 29.894028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642555, 37.680847, 30.012957>,  <38.871422, 37.669498, 30.084314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642555, 37.680847, 30.012957>,  <38.261112, 37.699764, 29.894028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642555, 37.680847, 30.012957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287837, -0.432691, 0.854359,
		0.088247, -0.900301, -0.426228,
		0.953605, -0.047290, 0.297323,
		38.928638, 37.666660, 30.102154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497849, 36.967812, 30.132282>,  <38.261112, 37.699764, 29.894028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497849, 36.967812, 30.132282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752174, 37.201870, 30.333616>,  <38.904770, 37.342304, 30.454416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752174, 37.201870, 30.333616>,  <38.497849, 36.967812, 30.132282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752174, 37.201870, 30.333616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126497, -0.564305, 0.815818,
		0.761406, -0.582379, -0.284774,
		0.635814, 0.585145, 0.503334,
		38.942921, 37.377415, 30.484617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788445, 36.482624, 30.561253>,  <38.497849, 36.967812, 30.132282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788445, 36.482624, 30.561253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863777, 36.845272, 30.712286>,  <38.908978, 37.062862, 30.802906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863777, 36.845272, 30.712286>,  <38.788445, 36.482624, 30.561253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863777, 36.845272, 30.712286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243383, -0.329388, 0.912287,
		0.951471, -0.263707, 0.158623,
		0.188328, 0.906621, 0.377585,
		38.920277, 37.117260, 30.825562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197693, 36.262081, 31.134964>,  <38.788445, 36.482624, 30.561253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197693, 36.262081, 31.134964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109371, 36.647015, 31.198400>,  <39.056377, 36.877975, 31.236462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109371, 36.647015, 31.198400>,  <39.197693, 36.262081, 31.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109371, 36.647015, 31.198400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284033, -0.219005, 0.933468,
		0.933043, 0.161071, 0.321693,
		-0.220807, 0.962337, 0.158591,
		39.043129, 36.935715, 31.245977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461243, 36.450665, 31.808809>,  <39.197693, 36.262081, 31.134964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461243, 36.450665, 31.808809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186050, 36.733894, 31.745174>,  <39.020935, 36.903831, 31.706993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186050, 36.733894, 31.745174>,  <39.461243, 36.450665, 31.808809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186050, 36.733894, 31.745174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327470, -0.107263, 0.938753,
		0.647647, 0.697939, 0.305670,
		-0.687980, 0.708079, -0.159085,
		38.979656, 36.946320, 31.697449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533154, 36.932953, 32.363354>,  <39.461243, 36.450665, 31.808809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533154, 36.932953, 32.363354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163380, 36.955811, 32.212540>,  <38.941517, 36.969524, 32.122051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163380, 36.955811, 32.212540>,  <39.533154, 36.932953, 32.363354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163380, 36.955811, 32.212540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381135, -0.171180, 0.908534,
		-0.012622, 0.983581, 0.180025,
		-0.924433, 0.057146, -0.377038,
		38.886051, 36.972954, 32.099430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258747, 37.322857, 32.845062>,  <39.533154, 36.932953, 32.363354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258747, 37.322857, 32.845062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968399, 37.126797, 32.652035>,  <38.794189, 37.009163, 32.536217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968399, 37.126797, 32.652035>,  <39.258747, 37.322857, 32.845062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968399, 37.126797, 32.652035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449807, -0.192525, 0.872128,
		-0.520378, 0.850112, -0.080724,
		-0.725866, -0.490147, -0.482572,
		38.750641, 36.979752, 32.507263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587902, 37.753872, 32.934273>,  <39.258747, 37.322857, 32.845062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587902, 37.753872, 32.934273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507484, 37.369225, 32.859581>,  <38.459232, 37.138435, 32.814766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507484, 37.369225, 32.859581>,  <38.587902, 37.753872, 32.934273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507484, 37.369225, 32.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448642, -0.079065, 0.890208,
		-0.870805, 0.262746, -0.415527,
		-0.201044, -0.961620, -0.186729,
		38.447170, 37.080738, 32.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972569, 37.751984, 33.200603>,  <38.587902, 37.753872, 32.934273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972569, 37.751984, 33.200603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063942, 37.362930, 33.183617>,  <38.118767, 37.129498, 33.173424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063942, 37.362930, 33.183617>,  <37.972569, 37.751984, 33.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063942, 37.362930, 33.183617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530040, -0.160842, 0.832579,
		-0.816624, -0.167681, -0.552276,
		0.228437, -0.972632, -0.042470,
		38.132473, 37.071140, 33.170876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355000, 37.412773, 33.212677>,  <37.972569, 37.751984, 33.200603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355000, 37.412773, 33.212677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631546, 37.150963, 33.335060>,  <37.797474, 36.993877, 33.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631546, 37.150963, 33.335060>,  <37.355000, 37.412773, 33.212677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631546, 37.150963, 33.335060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559315, -0.216798, 0.800104,
		-0.457356, -0.724292, -0.515972,
		0.691371, -0.654523, 0.305953,
		37.838959, 36.954605, 33.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982960, 36.802467, 33.346939>,  <37.355000, 37.412773, 33.212677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982960, 36.802467, 33.346939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327412, 36.790539, 33.549942>,  <37.534084, 36.783382, 33.671741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327412, 36.790539, 33.549942>,  <36.982960, 36.802467, 33.346939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327412, 36.790539, 33.549942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491254, -0.305725, 0.815599,
		0.130837, -0.951653, -0.277918,
		0.861134, -0.029818, 0.507503,
		37.585751, 36.781593, 33.702194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871754, 36.353642, 33.966747>,  <36.982960, 36.802467, 33.346939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871754, 36.353642, 33.966747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219498, 36.518497, 34.075809>,  <37.428146, 36.617413, 34.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219498, 36.518497, 34.075809>,  <36.871754, 36.353642, 33.966747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219498, 36.518497, 34.075809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224820, -0.161486, 0.960926,
		0.440070, -0.896694, -0.047732,
		0.869364, 0.412144, 0.272660,
		37.480309, 36.642139, 34.157608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188797, 35.921783, 34.557304>,  <36.871754, 36.353642, 33.966747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188797, 35.921783, 34.557304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345108, 36.289429, 34.577427>,  <37.438896, 36.510014, 34.589500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345108, 36.289429, 34.577427>,  <37.188797, 35.921783, 34.557304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345108, 36.289429, 34.577427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064033, -0.081661, 0.994601,
		0.918256, -0.385446, -0.090765,
		0.390777, 0.919110, 0.050304,
		37.462341, 36.565163, 34.592518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464371, 35.952168, 35.311634>,  <37.188797, 35.921783, 34.557304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464371, 35.952168, 35.311634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497757, 36.338757, 35.214500>,  <37.517788, 36.570709, 35.156219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497757, 36.338757, 35.214500>,  <37.464371, 35.952168, 35.311634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497757, 36.338757, 35.214500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051521, 0.247541, 0.967507,
		0.995178, -0.068244, 0.070455,
		0.083467, 0.966471, -0.242832,
		37.522797, 36.628696, 35.141651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106136, 36.286041, 35.692425>,  <37.464371, 35.952168, 35.311634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106136, 36.286041, 35.692425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830578, 36.563522, 35.608334>,  <37.665241, 36.730011, 35.557880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830578, 36.563522, 35.608334>,  <38.106136, 36.286041, 35.692425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830578, 36.563522, 35.608334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129456, 0.403104, 0.905951,
		0.713204, 0.596894, -0.367502,
		-0.688899, 0.693703, -0.210224,
		37.623909, 36.771633, 35.545265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355877, 36.860729, 35.949165>,  <38.106136, 36.286041, 35.692425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355877, 36.860729, 35.949165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978943, 36.991955, 35.922680>,  <37.752785, 37.070690, 35.906788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978943, 36.991955, 35.922680>,  <38.355877, 36.860729, 35.949165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978943, 36.991955, 35.922680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152679, 0.597458, 0.787231,
		0.297822, 0.731724, -0.613092,
		-0.942333, 0.328061, -0.066217,
		37.696243, 37.090374, 35.902817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456947, 37.654518, 36.058510>,  <38.355877, 36.860729, 35.949165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456947, 37.654518, 36.058510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058865, 37.617496, 36.071091>,  <37.820015, 37.595284, 36.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058865, 37.617496, 36.071091>,  <38.456947, 37.654518, 36.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058865, 37.617496, 36.071091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050958, 0.765789, 0.641069,
		-0.083416, 0.636397, -0.766838,
		-0.995211, -0.092552, 0.031450,
		37.760300, 37.589729, 36.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242653, 38.260880, 36.142990>,  <38.456947, 37.654518, 36.058510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242653, 38.260880, 36.142990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897087, 38.071449, 36.211555>,  <37.689747, 37.957790, 36.252693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897087, 38.071449, 36.211555>,  <38.242653, 38.260880, 36.142990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897087, 38.071449, 36.211555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187838, 0.618758, 0.762794,
		-0.467305, 0.626789, -0.623508,
		-0.863912, -0.473576, 0.171414,
		37.637913, 37.929375, 36.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590221, 38.746750, 36.220890>,  <38.242653, 38.260880, 36.142990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590221, 38.746750, 36.220890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482288, 38.418457, 36.422318>,  <37.417530, 38.221481, 36.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482288, 38.418457, 36.422318>,  <37.590221, 38.746750, 36.220890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482288, 38.418457, 36.422318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299875, 0.568587, 0.766018,
		-0.915023, 0.055686, -0.399540,
		-0.269830, -0.820736, 0.503572,
		37.401340, 38.172237, 36.573387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895752, 38.783890, 36.243053>,  <37.590221, 38.746750, 36.220890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895752, 38.783890, 36.243053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036373, 38.579823, 36.557030>,  <37.120747, 38.457382, 36.745415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036373, 38.579823, 36.557030>,  <36.895752, 38.783890, 36.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036373, 38.579823, 36.557030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484210, 0.618510, 0.618858,
		-0.801217, -0.597642, -0.029586,
		0.351556, -0.510166, 0.784945,
		37.141842, 38.426773, 36.792515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298485, 38.523621, 36.536957>,  <36.895752, 38.783890, 36.243053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298485, 38.523621, 36.536957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587997, 38.529934, 36.812897>,  <36.761707, 38.533722, 36.978458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587997, 38.529934, 36.812897>,  <36.298485, 38.523621, 36.536957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587997, 38.529934, 36.812897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550397, 0.616171, 0.563380,
		-0.416174, -0.787455, 0.454659,
		0.723783, 0.015779, 0.689847,
		36.805134, 38.534668, 37.019852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052528, 38.209057, 37.198772>,  <36.298485, 38.523621, 36.536957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052528, 38.209057, 37.198772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365913, 38.445576, 37.275249>,  <36.553944, 38.587486, 37.321136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365913, 38.445576, 37.275249>,  <36.052528, 38.209057, 37.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365913, 38.445576, 37.275249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576565, 0.576845, 0.578638,
		0.231862, -0.563574, 0.792858,
		0.783462, 0.591299, 0.191189,
		36.600952, 38.622967, 37.332607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170822, 38.256062, 37.947823>,  <36.052528, 38.209057, 37.198772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170822, 38.256062, 37.947823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241150, 38.591248, 37.741169>,  <36.283348, 38.792358, 37.617176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241150, 38.591248, 37.741169>,  <36.170822, 38.256062, 37.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241150, 38.591248, 37.741169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484275, 0.530538, 0.695706,
		0.857067, 0.127871, 0.499084,
		0.175823, 0.837961, -0.516631,
		36.293896, 38.842636, 37.586178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154602, 38.761909, 38.513554>,  <36.170822, 38.256062, 37.947823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154602, 38.761909, 38.513554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120739, 38.969307, 38.173203>,  <36.100422, 39.093746, 37.968990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120739, 38.969307, 38.173203>,  <36.154602, 38.761909, 38.513554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120739, 38.969307, 38.173203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702000, 0.574988, 0.420221,
		0.707127, 0.632894, 0.315303,
		-0.084660, 0.518492, -0.850881,
		36.095341, 39.124855, 37.917938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154125, 39.456528, 38.754318>,  <36.154602, 38.761909, 38.513554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154125, 39.456528, 38.754318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046062, 39.466648, 38.369324>,  <35.981224, 39.472721, 38.138329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046062, 39.466648, 38.369324>,  <36.154125, 39.456528, 38.754318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046062, 39.466648, 38.369324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622669, 0.757876, 0.194699,
		0.734370, 0.651908, -0.188986,
		-0.270154, 0.025305, -0.962484,
		35.965015, 39.474239, 38.080578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205128, 40.134579, 38.626530>,  <36.154125, 39.456528, 38.754318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205128, 40.134579, 38.626530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935684, 39.976387, 38.376778>,  <35.774017, 39.881470, 38.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935684, 39.976387, 38.376778>,  <36.205128, 40.134579, 38.626530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935684, 39.976387, 38.376778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708334, 0.586610, 0.392622,
		0.210990, 0.706740, -0.675279,
		-0.673607, -0.395484, -0.624376,
		35.733601, 39.857742, 38.189465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903019, 40.762932, 38.322796>,  <36.205128, 40.134579, 38.626530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903019, 40.762932, 38.322796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674168, 40.435051, 38.311771>,  <35.536858, 40.238323, 38.305157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674168, 40.435051, 38.311771>,  <35.903019, 40.762932, 38.322796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674168, 40.435051, 38.311771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744782, 0.505176, 0.436001,
		-0.343468, 0.269975, -0.899524,
		-0.572128, -0.819701, -0.027561,
		35.502529, 40.189140, 38.303505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256557, 41.101677, 38.192455>,  <35.903019, 40.762932, 38.322796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256557, 41.101677, 38.192455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173714, 40.727280, 38.306313>,  <35.124008, 40.502640, 38.374626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173714, 40.727280, 38.306313>,  <35.256557, 41.101677, 38.192455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173714, 40.727280, 38.306313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807517, 0.327804, 0.490368,
		-0.552288, -0.128292, -0.823723,
		-0.207109, -0.935995, 0.284640,
		35.111580, 40.446480, 38.391705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647274, 41.338497, 38.560089>,  <35.256557, 41.101677, 38.192455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647274, 41.338497, 38.560089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658623, 40.938923, 38.545555>,  <34.665432, 40.699177, 38.536835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658623, 40.938923, 38.545555>,  <34.647274, 41.338497, 38.560089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658623, 40.938923, 38.545555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777961, -0.044889, 0.626707,
		-0.627672, 0.010486, -0.778407,
		0.028370, -0.998937, -0.036334,
		34.667133, 40.639240, 38.534657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955662, 41.152336, 38.329479>,  <34.647274, 41.338497, 38.560089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955662, 41.152336, 38.329479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131165, 40.887672, 38.572693>,  <34.236465, 40.728874, 38.718620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131165, 40.887672, 38.572693>,  <33.955662, 41.152336, 38.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131165, 40.887672, 38.572693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756397, 0.093363, 0.647415,
		-0.485134, -0.743972, -0.459511,
		0.438757, -0.661657, 0.608032,
		34.262791, 40.689175, 38.755104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423645, 40.665379, 38.546989>,  <33.955662, 41.152336, 38.329479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423645, 40.665379, 38.546989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711777, 40.720520, 38.818909>,  <33.884655, 40.753605, 38.982059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711777, 40.720520, 38.818909>,  <33.423645, 40.665379, 38.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711777, 40.720520, 38.818909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681484, -0.042009, 0.730627,
		0.129275, -0.989562, 0.063683,
		0.720325, 0.137851, 0.679801,
		33.927876, 40.761875, 39.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360023, 40.227848, 39.181095>,  <33.423645, 40.665379, 38.546989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360023, 40.227848, 39.181095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569000, 40.532982, 39.333481>,  <33.694386, 40.716061, 39.424911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569000, 40.532982, 39.333481>,  <33.360023, 40.227848, 39.181095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569000, 40.532982, 39.333481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566577, -0.023319, 0.823679,
		0.637214, -0.646173, 0.420022,
		0.522444, 0.762835, 0.380966,
		33.725735, 40.761833, 39.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484905, 40.236359, 39.901382>,  <33.360023, 40.227848, 39.181095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484905, 40.236359, 39.901382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540997, 40.632156, 39.887318>,  <33.574650, 40.869637, 39.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540997, 40.632156, 39.887318>,  <33.484905, 40.236359, 39.901382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540997, 40.632156, 39.887318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372238, 0.085589, 0.924182,
		0.917483, -0.116506, 0.380330,
		0.140225, 0.989495, -0.035158,
		33.583065, 40.929005, 39.876770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739304, 39.494999, 39.883873>,  <33.484905, 40.236359, 39.901382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739304, 39.494999, 39.883873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981667, 39.746361, 40.079010>,  <34.127083, 39.897179, 40.196091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981667, 39.746361, 40.079010>,  <33.739304, 39.494999, 39.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981667, 39.746361, 40.079010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567826, 0.771108, -0.288038,
		-0.557180, -0.102483, 0.824043,
		0.605907, 0.628403, 0.487839,
		34.163437, 39.934883, 40.225361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333012, 39.384697, 39.305668>,  <33.739304, 39.494999, 39.883873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333012, 39.384697, 39.305668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280045, 39.037102, 39.496384>,  <34.248264, 38.828545, 39.610813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280045, 39.037102, 39.496384>,  <34.333012, 39.384697, 39.305668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280045, 39.037102, 39.496384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252614, 0.494726, 0.831524,
		-0.958463, -0.010336, -0.285028,
		-0.132416, -0.868987, 0.476788,
		34.240318, 38.776405, 39.639420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965664, 39.254265, 38.833168>,  <34.333012, 39.384697, 39.305668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965664, 39.254265, 38.833168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963772, 39.625587, 38.684448>,  <34.962635, 39.848381, 38.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963772, 39.625587, 38.684448>,  <34.965664, 39.254265, 38.833168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963772, 39.625587, 38.684448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752652, -0.241491, -0.612533,
		-0.658401, -0.282731, -0.697547,
		-0.004731, 0.928303, -0.371796,
		34.962353, 39.904079, 38.572910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856304, 39.094009, 38.114124>,  <34.965664, 39.254265, 38.833168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856304, 39.094009, 38.114124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036896, 39.443523, 38.186424>,  <35.145252, 39.653233, 38.229805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036896, 39.443523, 38.186424>,  <34.856304, 39.094009, 38.114124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036896, 39.443523, 38.186424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688587, -0.212358, -0.693363,
		-0.567464, 0.437502, -0.697550,
		0.451478, 0.873783, 0.180753,
		35.172340, 39.705658, 38.240650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778965, 39.365269, 37.518173>,  <34.856304, 39.094009, 38.114124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778965, 39.365269, 37.518173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081310, 39.508121, 37.737675>,  <35.262718, 39.593834, 37.869377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081310, 39.508121, 37.737675>,  <34.778965, 39.365269, 37.518173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081310, 39.508121, 37.737675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653995, -0.372079, -0.658671,
		-0.031051, 0.856747, -0.514801,
		0.755861, 0.357130, 0.548755,
		35.308067, 39.615261, 37.902302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170074, 39.423321, 37.052685>,  <34.778965, 39.365269, 37.518173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170074, 39.423321, 37.052685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414677, 39.462749, 37.366718>,  <35.561436, 39.486408, 37.555138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414677, 39.462749, 37.366718>,  <35.170074, 39.423321, 37.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414677, 39.462749, 37.366718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780614, -0.237250, -0.578234,
		0.129262, 0.966435, -0.222025,
		0.611501, 0.098572, 0.785079,
		35.598125, 39.492321, 37.602242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748100, 39.827011, 36.832199>,  <35.170074, 39.423321, 37.052685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748100, 39.827011, 36.832199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862896, 39.608612, 37.147038>,  <35.931774, 39.477573, 37.335941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862896, 39.608612, 37.147038>,  <35.748100, 39.827011, 36.832199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862896, 39.608612, 37.147038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854215, -0.225996, -0.468234,
		0.433536, 0.806728, 0.401543,
		0.286990, -0.546000, 0.787096,
		35.948994, 39.444813, 37.383167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457371, 40.064335, 37.027527>,  <35.748100, 39.827011, 36.832199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457371, 40.064335, 37.027527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427574, 39.697483, 37.184155>,  <36.409695, 39.477371, 37.278130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427574, 39.697483, 37.184155>,  <36.457371, 40.064335, 37.027527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427574, 39.697483, 37.184155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871816, -0.250524, -0.420920,
		0.484135, 0.310017, 0.818231,
		-0.074494, -0.917130, 0.391565,
		36.405228, 39.422344, 37.301624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089108, 39.555809, 37.266743>,  <36.457371, 40.064335, 37.027527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089108, 39.555809, 37.266743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923531, 39.314148, 37.539112>,  <36.824184, 39.169151, 37.702534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923531, 39.314148, 37.539112>,  <37.089108, 39.555809, 37.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923531, 39.314148, 37.539112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358387, -0.795766, -0.488175,
		0.836784, 0.041956, 0.545922,
		-0.413945, -0.604149, 0.680921,
		36.799347, 39.132904, 37.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627720, 39.247795, 37.759811>,  <37.089108, 39.555809, 37.266743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627720, 39.247795, 37.759811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305058, 39.030472, 37.666752>,  <37.111462, 38.900078, 37.610916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305058, 39.030472, 37.666752>,  <37.627720, 39.247795, 37.759811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305058, 39.030472, 37.666752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586316, -0.686022, -0.430821,
		0.074468, -0.483929, 0.871933,
		-0.806652, -0.543311, -0.232649,
		37.063061, 38.867477, 37.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793324, 38.518726, 37.936741>,  <37.627720, 39.247795, 37.759811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793324, 38.518726, 37.936741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478611, 38.474995, 37.693752>,  <37.289783, 38.448757, 37.547958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478611, 38.474995, 37.693752>,  <37.793324, 38.518726, 37.936741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478611, 38.474995, 37.693752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468856, -0.745953, -0.472999,
		-0.401436, -0.656964, 0.638160,
		-0.786780, -0.109326, -0.607474,
		37.242577, 38.442196, 37.511509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692062, 37.833141, 37.805515>,  <37.793324, 38.518726, 37.936741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692062, 37.833141, 37.805515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515049, 38.008339, 37.492508>,  <37.408840, 38.113457, 37.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515049, 38.008339, 37.492508>,  <37.692062, 37.833141, 37.805515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515049, 38.008339, 37.492508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273951, -0.764864, -0.583038,
		-0.853884, -0.472383, 0.218488,
		-0.442531, 0.437992, -0.782515,
		37.382290, 38.139736, 37.257755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091690, 37.359653, 37.569653>,  <37.692062, 37.833141, 37.805515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091690, 37.359653, 37.569653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222153, 37.603367, 37.280544>,  <37.300430, 37.749596, 37.107079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222153, 37.603367, 37.280544>,  <37.091690, 37.359653, 37.569653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222153, 37.603367, 37.280544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086367, -0.742176, -0.664617,
		-0.941362, 0.279192, -0.189443,
		0.326156, 0.609284, -0.722769,
		37.320000, 37.786152, 37.063713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668407, 37.238216, 36.912735>,  <37.091690, 37.359653, 37.569653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668407, 37.238216, 36.912735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960625, 37.429264, 36.717518>,  <37.135956, 37.543892, 36.600388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960625, 37.429264, 36.717518>,  <36.668407, 37.238216, 36.912735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960625, 37.429264, 36.717518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206023, -0.527235, -0.824365,
		-0.651049, 0.702780, -0.286765,
		0.730540, 0.477622, -0.488045,
		37.179787, 37.572552, 36.571106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452381, 37.518543, 36.311241>,  <36.668407, 37.238216, 36.912735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452381, 37.518543, 36.311241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843742, 37.518196, 36.228558>,  <37.078560, 37.517990, 36.178947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843742, 37.518196, 36.228558>,  <36.452381, 37.518543, 36.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843742, 37.518196, 36.228558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187250, -0.427255, -0.884528,
		-0.087552, 0.904131, -0.418189,
		0.978403, -0.000864, -0.206705,
		37.137264, 37.517937, 36.166546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536339, 37.604069, 35.535095>,  <36.452381, 37.518543, 36.311241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536339, 37.604069, 35.535095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897041, 37.465878, 35.639004>,  <37.113464, 37.382965, 35.701351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897041, 37.465878, 35.639004>,  <36.536339, 37.604069, 35.535095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897041, 37.465878, 35.639004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131737, -0.352737, -0.926403,
		0.411680, 0.869612, -0.272571,
		0.901756, -0.345474, 0.259775,
		37.167568, 37.362236, 35.716938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907745, 37.709728, 34.910927>,  <36.536339, 37.604069, 35.535095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907745, 37.709728, 34.910927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107750, 37.428143, 35.112690>,  <37.227753, 37.259190, 35.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107750, 37.428143, 35.112690>,  <36.907745, 37.709728, 34.910927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107750, 37.428143, 35.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421711, -0.310798, -0.851801,
		0.756405, 0.638623, 0.141467,
		0.500011, -0.703964, 0.504404,
		37.257755, 37.216953, 35.264011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529110, 37.869453, 34.776398>,  <36.907745, 37.709728, 34.910927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529110, 37.869453, 34.776398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526020, 37.484688, 34.885700>,  <37.524166, 37.253830, 34.951283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526020, 37.484688, 34.885700>,  <37.529110, 37.869453, 34.776398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526020, 37.484688, 34.885700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430394, -0.249851, -0.867373,
		0.902608, 0.110910, 0.415929,
		-0.007720, -0.961911, 0.273253,
		37.523705, 37.196114, 34.967674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116608, 37.628857, 34.666973>,  <37.529110, 37.869453, 34.776398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116608, 37.628857, 34.666973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891205, 37.299538, 34.639717>,  <37.755962, 37.101944, 34.623363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891205, 37.299538, 34.639717>,  <38.116608, 37.628857, 34.666973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891205, 37.299538, 34.639717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483960, -0.262147, -0.834902,
		0.669513, -0.503445, 0.546165,
		-0.563503, -0.823300, -0.068136,
		37.722153, 37.052547, 34.619278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610863, 37.161064, 34.541527>,  <38.116608, 37.628857, 34.666973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610863, 37.161064, 34.541527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253006, 37.031040, 34.418922>,  <38.038292, 36.953026, 34.345360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253006, 37.031040, 34.418922>,  <38.610863, 37.161064, 34.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253006, 37.031040, 34.418922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353565, -0.095679, -0.930504,
		0.273144, -0.940840, 0.200529,
		-0.894642, -0.325061, -0.306514,
		37.984612, 36.933521, 34.326969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775570, 36.530006, 34.170959>,  <38.610863, 37.161064, 34.541527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775570, 36.530006, 34.170959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405598, 36.604252, 34.038265>,  <38.183613, 36.648800, 33.958649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405598, 36.604252, 34.038265>,  <38.775570, 36.530006, 34.170959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405598, 36.604252, 34.038265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288856, -0.224110, -0.930772,
		-0.247107, -0.956725, 0.153672,
		-0.924933, 0.185611, -0.331735,
		38.128117, 36.659935, 33.938744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640797, 35.989750, 33.739231>,  <38.775570, 36.530006, 34.170959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640797, 35.989750, 33.739231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392170, 36.284393, 33.632599>,  <38.242992, 36.461178, 33.568619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392170, 36.284393, 33.632599>,  <38.640797, 35.989750, 33.739231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392170, 36.284393, 33.632599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470969, 0.079467, -0.878563,
		-0.625969, -0.671640, -0.396312,
		-0.621571, 0.736604, -0.266578,
		38.205700, 36.505375, 33.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269245, 36.112606, 33.301998>,  <38.640797, 35.989750, 33.739231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269245, 36.112606, 33.301998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461235, 35.985893, 33.629234>,  <39.576431, 35.909866, 33.825577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461235, 35.985893, 33.629234>,  <39.269245, 36.112606, 33.301998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461235, 35.985893, 33.629234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862876, 0.338767, -0.375077,
		-0.158326, 0.885939, 0.435941,
		0.479978, -0.316779, 0.818091,
		39.605228, 35.890862, 33.874660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603703, 36.651630, 33.647083>,  <39.269245, 36.112606, 33.301998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603703, 36.651630, 33.647083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794804, 36.304909, 33.704231>,  <39.909466, 36.096878, 33.738518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794804, 36.304909, 33.704231>,  <39.603703, 36.651630, 33.647083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794804, 36.304909, 33.704231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856091, 0.422878, -0.297123,
		0.197130, 0.264259, 0.944090,
		0.477752, -0.866800, 0.142868,
		39.938129, 36.044868, 33.747093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216042, 36.908455, 33.919338>,  <39.603703, 36.651630, 33.647083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216042, 36.908455, 33.919338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263805, 36.519402, 33.839619>,  <40.292461, 36.285969, 33.791786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263805, 36.519402, 33.839619>,  <40.216042, 36.908455, 33.919338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263805, 36.519402, 33.839619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942739, 0.174037, -0.284526,
		0.311426, -0.153913, 0.937723,
		0.119406, -0.972637, -0.199300,
		40.299625, 36.227612, 33.779827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842361, 36.652378, 34.349171>,  <40.216042, 36.908455, 33.919338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842361, 36.652378, 34.349171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795918, 36.438766, 34.014187>,  <40.768051, 36.310600, 33.813198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795918, 36.438766, 34.014187>,  <40.842361, 36.652378, 34.349171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795918, 36.438766, 34.014187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929911, 0.237796, -0.280567,
		0.348974, -0.811336, 0.468989,
		-0.116110, -0.534029, -0.837455,
		40.761086, 36.278557, 33.762951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349972, 36.097687, 34.148560>,  <40.842361, 36.652378, 34.349171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349972, 36.097687, 34.148560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213665, 36.203960, 33.787830>,  <41.131882, 36.267727, 33.571392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213665, 36.203960, 33.787830>,  <41.349972, 36.097687, 34.148560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213665, 36.203960, 33.787830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938790, 0.147709, -0.311215,
		0.050521, -0.952676, -0.299759,
		-0.340764, 0.265688, -0.901825,
		41.111435, 36.283669, 33.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730946, 35.704178, 33.675842>,  <41.349972, 36.097687, 34.148560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730946, 35.704178, 33.675842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577721, 36.055824, 33.562405>,  <41.485786, 36.266811, 33.494343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577721, 36.055824, 33.562405>,  <41.730946, 35.704178, 33.675842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577721, 36.055824, 33.562405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921331, 0.341544, -0.185735,
		-0.066422, -0.332431, -0.940786,
		-0.383064, 0.879111, -0.283593,
		41.462803, 36.319557, 33.477325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897831, 35.967476, 32.909248>,  <41.730946, 35.704178, 33.675842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897831, 35.967476, 32.909248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865349, 36.261177, 33.178848>,  <41.845860, 36.437401, 33.340607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865349, 36.261177, 33.178848>,  <41.897831, 35.967476, 32.909248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865349, 36.261177, 33.178848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973859, 0.202384, -0.103144,
		-0.212141, 0.648002, -0.731498,
		-0.081206, 0.734258, 0.673996,
		41.840988, 36.481453, 33.381046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345020, 36.579281, 32.671692>,  <41.897831, 35.967476, 32.909248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345020, 36.579281, 32.671692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332752, 36.529613, 33.068405>,  <42.325390, 36.499813, 33.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332752, 36.529613, 33.068405>,  <42.345020, 36.579281, 32.671692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332752, 36.529613, 33.068405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998455, -0.049798, 0.024646,
		0.046329, 0.991011, 0.125505,
		-0.030674, -0.124170, 0.991787,
		42.323551, 36.492363, 33.365940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521469, 37.276581, 33.192726>,  <42.345020, 36.579281, 32.671692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521469, 37.276581, 33.192726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610252, 36.901196, 33.298576>,  <42.663521, 36.675964, 33.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610252, 36.901196, 33.298576>,  <42.521469, 37.276581, 33.192726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610252, 36.901196, 33.298576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955965, 0.262887, 0.130464,
		-0.192001, 0.224015, 0.955486,
		0.221959, -0.938460, 0.264625,
		42.676842, 36.619656, 33.377964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960320, 37.157455, 33.872135>,  <42.521469, 37.276581, 33.192726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960320, 37.157455, 33.872135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036171, 36.860798, 33.614761>,  <43.081684, 36.682804, 33.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036171, 36.860798, 33.614761>,  <42.960320, 37.157455, 33.872135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036171, 36.860798, 33.614761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943206, 0.319653, -0.090461,
		0.272766, -0.589739, 0.760136,
		0.189632, -0.741640, -0.643436,
		43.093060, 36.638306, 33.421730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556789, 36.903652, 34.129501>,  <42.960320, 37.157455, 33.872135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556789, 36.903652, 34.129501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513439, 36.783649, 33.750397>,  <43.487427, 36.711647, 33.522934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513439, 36.783649, 33.750397>,  <43.556789, 36.903652, 34.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513439, 36.783649, 33.750397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977943, 0.139062, -0.155850,
		0.178553, -0.943747, 0.278316,
		-0.108380, -0.300005, -0.947761,
		43.480927, 36.693649, 33.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139175, 36.657303, 34.023304>,  <43.556789, 36.903652, 34.129501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139175, 36.657303, 34.023304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999519, 36.691162, 33.650009>,  <43.915726, 36.711479, 33.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999519, 36.691162, 33.650009>,  <44.139175, 36.657303, 34.023304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999519, 36.691162, 33.650009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937034, 0.040476, -0.346885,
		0.008411, -0.995588, -0.093451,
		-0.349137, 0.084650, -0.933240,
		43.894779, 36.716557, 33.370037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891792, 36.447262, 34.185139>,  <44.139175, 36.657303, 34.023304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891792, 36.447262, 34.185139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212425, 36.317699, 34.386158>,  <45.404804, 36.239964, 34.506771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212425, 36.317699, 34.386158>,  <44.891792, 36.447262, 34.185139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212425, 36.317699, 34.386158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030780, -0.861783, -0.506342,
		0.597097, 0.390404, -0.700757,
		0.801578, -0.323904, 0.502552,
		45.452900, 36.220528, 34.536922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379627, 36.206104, 33.725136>,  <44.891792, 36.447262, 34.185139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379627, 36.206104, 33.725136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496014, 36.003307, 34.049679>,  <45.565845, 35.881630, 34.244404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496014, 36.003307, 34.049679>,  <45.379627, 36.206104, 33.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496014, 36.003307, 34.049679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265421, -0.771982, -0.577577,
		0.919180, 0.383403, -0.090050,
		0.290962, -0.506997, 0.811354,
		45.583302, 35.851208, 34.293083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985065, 35.785042, 33.596397>,  <45.379627, 36.206104, 33.725136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985065, 35.785042, 33.596397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849602, 35.572952, 33.907310>,  <45.768326, 35.445698, 34.093861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849602, 35.572952, 33.907310>,  <45.985065, 35.785042, 33.596397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849602, 35.572952, 33.907310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478497, -0.808352, -0.342940,
		0.810156, 0.255791, 0.527464,
		-0.338655, -0.530225, 0.777286,
		45.748005, 35.413883, 34.140495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520473, 35.306232, 33.867805>,  <45.985065, 35.785042, 33.596397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520473, 35.306232, 33.867805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163166, 35.170654, 33.985912>,  <45.948780, 35.089310, 34.056778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163166, 35.170654, 33.985912>,  <46.520473, 35.306232, 33.867805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163166, 35.170654, 33.985912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266871, -0.928442, -0.258409,
		0.361729, -0.152030, 0.919804,
		-0.893270, -0.338943, 0.295271,
		45.895184, 35.068970, 34.074493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647190, 34.674191, 34.303967>,  <46.520473, 35.306232, 33.867805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647190, 34.674191, 34.303967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295368, 34.660927, 34.114109>,  <46.084274, 34.652969, 34.000195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295368, 34.660927, 34.114109>,  <46.647190, 34.674191, 34.303967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295368, 34.660927, 34.114109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218594, -0.914224, -0.341192,
		-0.422616, -0.403851, 0.811357,
		-0.879552, -0.033164, -0.474645,
		46.031502, 34.650978, 33.971714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249550, 34.605019, 34.823387>,  <46.647190, 34.674191, 34.303967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249550, 34.605019, 34.823387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609890, 34.472973, 34.936169>,  <46.826092, 34.393745, 35.003838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609890, 34.472973, 34.936169>,  <46.249550, 34.605019, 34.823387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609890, 34.472973, 34.936169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431548, 0.751706, -0.498702,
		-0.047322, 0.570933, 0.819632,
		0.900848, -0.330111, 0.281957,
		46.880146, 34.373940, 35.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600868, 35.108696, 35.234638>,  <46.249550, 34.605019, 34.823387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600868, 35.108696, 35.234638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866711, 34.867798, 35.057735>,  <47.026218, 34.723259, 34.951591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866711, 34.867798, 35.057735>,  <46.600868, 35.108696, 35.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866711, 34.867798, 35.057735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517003, 0.797986, -0.309720,
		0.539444, -0.022807, 0.841712,
		0.664611, -0.602245, -0.442260,
		47.066093, 34.687126, 34.925056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295799, 35.261845, 35.425892>,  <46.600868, 35.108696, 35.234638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295799, 35.261845, 35.425892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287666, 35.104713, 35.058136>,  <47.282787, 35.010437, 34.837482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287666, 35.104713, 35.058136>,  <47.295799, 35.261845, 35.425892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287666, 35.104713, 35.058136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535124, 0.772496, -0.341896,
		0.844529, -0.498937, 0.194506,
		-0.020330, -0.392826, -0.919388,
		47.281567, 34.986866, 34.782318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906620, 35.275051, 35.137695>,  <47.295799, 35.261845, 35.425892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906620, 35.275051, 35.137695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677555, 35.251827, 34.810604>,  <47.540115, 35.237892, 34.614349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677555, 35.251827, 34.810604>,  <47.906620, 35.275051, 35.137695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677555, 35.251827, 34.810604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613338, 0.631501, -0.474366,
		0.543941, -0.773198, -0.326027,
		-0.572666, -0.058063, -0.817730,
		47.505756, 35.234409, 34.565285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.143559, 35.496868, 24.384212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.862667, 35.464577, 24.101269>,  <40.694134, 35.445202, 23.931501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.862667, 35.464577, 24.101269>,  <41.143559, 35.496868, 24.384212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862667, 35.464577, 24.101269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692548, -0.152930, 0.704975,
		-0.165090, 0.984934, 0.051481,
		-0.702227, -0.080731, -0.707361,
		40.652000, 35.440357, 23.889061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680702, 36.035069, 24.561237>,  <41.143559, 35.496868, 24.384212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680702, 36.035069, 24.561237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468777, 35.792889, 24.323675>,  <40.341621, 35.647579, 24.181137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.468777, 35.792889, 24.323675>,  <40.680702, 36.035069, 24.561237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468777, 35.792889, 24.323675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692874, -0.094847, 0.714794,
		-0.489104, 0.790210, -0.369252,
		-0.529814, -0.605453, -0.593905,
		40.309834, 35.611252, 24.145504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998783, 36.305199, 24.476973>,  <40.680702, 36.035069, 24.561237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998783, 36.305199, 24.476973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964584, 35.914436, 24.398645>,  <39.944065, 35.679977, 24.351650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964584, 35.914436, 24.398645>,  <39.998783, 36.305199, 24.476973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964584, 35.914436, 24.398645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647031, -0.095016, 0.756520,
		-0.757655, 0.191379, -0.623966,
		-0.085495, -0.976907, -0.195817,
		39.938934, 35.621365, 24.339901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332180, 36.181530, 24.565998>,  <39.998783, 36.305199, 24.476973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332180, 36.181530, 24.565998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471443, 35.807068, 24.546425>,  <39.555000, 35.582390, 24.534681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.471443, 35.807068, 24.546425>,  <39.332180, 36.181530, 24.565998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471443, 35.807068, 24.546425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610115, -0.265917, 0.746356,
		-0.711719, -0.229996, -0.663746,
		0.348160, -0.936157, -0.048934,
		39.575890, 35.526222, 24.531744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703564, 35.729942, 24.452297>,  <39.332180, 36.181530, 24.565998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703564, 35.729942, 24.452297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016071, 35.531128, 24.603333>,  <39.203575, 35.411839, 24.693953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016071, 35.531128, 24.603333>,  <38.703564, 35.729942, 24.452297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016071, 35.531128, 24.603333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560842, -0.293429, 0.774181,
		-0.274002, -0.816610, -0.508007,
		0.781268, -0.497038, 0.377589,
		39.250450, 35.382015, 24.716608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405602, 35.218098, 24.714060>,  <38.703564, 35.729942, 24.452297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405602, 35.218098, 24.714060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756020, 35.201172, 24.906206>,  <38.966270, 35.191017, 25.021494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756020, 35.201172, 24.906206>,  <38.405602, 35.218098, 24.714060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756020, 35.201172, 24.906206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480321, -0.164982, 0.861436,
		0.042799, -0.985388, -0.164857,
		0.876048, -0.042316, 0.480364,
		39.018833, 35.188477, 25.050316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535732, 34.529850, 24.987112>,  <38.405602, 35.218098, 24.714060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535732, 34.529850, 24.987112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768158, 34.783554, 25.191103>,  <38.907612, 34.935776, 25.313498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768158, 34.783554, 25.191103>,  <38.535732, 34.529850, 24.987112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768158, 34.783554, 25.191103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617811, -0.064145, 0.783706,
		0.529786, -0.770454, 0.354580,
		0.581065, 0.634260, 0.509978,
		38.942478, 34.973831, 25.344097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614784, 34.208080, 25.567883>,  <38.535732, 34.529850, 24.987112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614784, 34.208080, 25.567883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719868, 34.588039, 25.635630>,  <38.782917, 34.816013, 25.676277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719868, 34.588039, 25.635630>,  <38.614784, 34.208080, 25.567883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719868, 34.588039, 25.635630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466246, -0.028703, 0.884189,
		0.844747, -0.311251, 0.435344,
		0.262709, 0.949894, 0.169366,
		38.798679, 34.873009, 25.686440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048481, 34.200119, 26.172045>,  <38.614784, 34.208080, 25.567883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048481, 34.200119, 26.172045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862389, 34.549618, 26.115294>,  <38.750732, 34.759315, 26.081242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862389, 34.549618, 26.115294>,  <39.048481, 34.200119, 26.172045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862389, 34.549618, 26.115294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368292, -0.045313, 0.928606,
		0.804934, 0.484271, 0.342874,
		-0.465233, 0.873744, -0.141879,
		38.722820, 34.811741, 26.072729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045639, 34.481224, 26.831024>,  <39.048481, 34.200119, 26.172045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045639, 34.481224, 26.831024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781937, 34.734459, 26.668749>,  <38.623714, 34.886402, 26.571383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781937, 34.734459, 26.668749>,  <39.045639, 34.481224, 26.831024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781937, 34.734459, 26.668749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373911, 0.192081, 0.907356,
		0.652363, 0.749868, 0.110089,
		-0.659252, 0.633089, -0.405691,
		38.584160, 34.924385, 26.547041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132767, 35.160114, 27.136892>,  <39.045639, 34.481224, 26.831024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132767, 35.160114, 27.136892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754864, 35.132462, 27.008738>,  <38.528122, 35.115871, 26.931845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754864, 35.132462, 27.008738>,  <39.132767, 35.160114, 27.136892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754864, 35.132462, 27.008738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327397, 0.245189, 0.912521,
		0.015474, 0.967008, -0.254277,
		-0.944760, -0.069129, -0.320389,
		38.471436, 35.111721, 26.912621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909454, 35.717972, 27.415276>,  <39.132767, 35.160114, 27.136892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909454, 35.717972, 27.415276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593948, 35.489895, 27.323421>,  <38.404644, 35.353046, 27.268309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593948, 35.489895, 27.323421>,  <38.909454, 35.717972, 27.415276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593948, 35.489895, 27.323421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335467, 0.086255, 0.938095,
		-0.515089, 0.816969, -0.259316,
		-0.788762, -0.570194, -0.229637,
		38.357319, 35.318836, 27.254530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385788, 36.102024, 27.670393>,  <38.909454, 35.717972, 27.415276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385788, 36.102024, 27.670393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264244, 35.722603, 27.634792>,  <38.191319, 35.494949, 27.613432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264244, 35.722603, 27.634792>,  <38.385788, 36.102024, 27.670393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264244, 35.722603, 27.634792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253162, -0.009668, 0.967376,
		-0.918464, 0.316482, -0.237199,
		-0.303864, -0.948549, -0.089001,
		38.173084, 35.438038, 27.608091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835934, 36.140896, 28.031181>,  <38.385788, 36.102024, 27.670393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835934, 36.140896, 28.031181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900284, 35.747879, 27.993824>,  <37.938896, 35.512070, 27.971411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900284, 35.747879, 27.993824>,  <37.835934, 36.140896, 28.031181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900284, 35.747879, 27.993824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332965, -0.143108, 0.932017,
		-0.929114, -0.118846, -0.350176,
		0.160879, -0.982546, -0.093392,
		37.948547, 35.453114, 27.965807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236858, 35.793102, 27.988564>,  <37.835934, 36.140896, 28.031181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236858, 35.793102, 27.988564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513676, 35.548439, 28.141899>,  <37.679768, 35.401642, 28.233900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513676, 35.548439, 28.141899>,  <37.236858, 35.793102, 27.988564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513676, 35.548439, 28.141899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506051, -0.032394, 0.861895,
		-0.514766, -0.790460, -0.331947,
		0.692047, -0.611656, 0.383338,
		37.721291, 35.364941, 28.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828850, 35.331650, 28.431644>,  <37.236858, 35.793102, 27.988564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828850, 35.331650, 28.431644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 35.291023, 28.547064>,  <37.438171, 35.266647, 28.616316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 35.291023, 28.547064>,  <36.828850, 35.331650, 28.431644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209675, 35.291023, 28.547064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286081, 0.038401, 0.957436,
		-0.108330, -0.994087, 0.007502,
		0.952062, -0.101573, 0.288549,
		37.495293, 35.260551, 28.633629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859684, 34.801689, 28.867348>,  <36.828850, 35.331650, 28.431644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859684, 34.801689, 28.867348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189014, 35.003525, 28.971287>,  <37.386612, 35.124626, 29.033651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189014, 35.003525, 28.971287>,  <36.859684, 34.801689, 28.867348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189014, 35.003525, 28.971287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204097, -0.163989, 0.965118,
		0.529602, -0.847641, -0.032031,
		0.823326, 0.504591, 0.259850,
		37.436012, 35.154903, 29.049242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118797, 34.246376, 29.283175>,  <36.859684, 34.801689, 28.867348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118797, 34.246376, 29.283175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364281, 34.555214, 29.349182>,  <37.511570, 34.740517, 29.388786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364281, 34.555214, 29.349182>,  <37.118797, 34.246376, 29.283175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364281, 34.555214, 29.349182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048298, -0.245332, 0.968235,
		0.788055, -0.586243, -0.187853,
		0.613708, 0.772095, 0.165021,
		37.548393, 34.786842, 29.398689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710663, 34.024082, 29.717144>,  <37.118797, 34.246376, 29.283175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710663, 34.024082, 29.717144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657291, 34.418663, 29.755331>,  <37.625267, 34.655411, 29.778244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657291, 34.418663, 29.755331>,  <37.710663, 34.024082, 29.717144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657291, 34.418663, 29.755331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014890, -0.094322, 0.995430,
		0.990946, 0.134244, -0.002103,
		-0.133432, 0.986449, 0.095467,
		37.617260, 34.714600, 29.783972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175938, 34.186481, 30.277020>,  <37.710663, 34.024082, 29.717144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175938, 34.186481, 30.277020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886738, 34.462822, 30.276682>,  <37.713219, 34.628624, 30.276480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886738, 34.462822, 30.276682>,  <38.175938, 34.186481, 30.277020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886738, 34.462822, 30.276682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121250, -0.125689, 0.984632,
		0.680126, 0.711990, 0.174638,
		-0.722999, 0.690849, -0.000844,
		37.669838, 34.670078, 30.276428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294395, 34.626492, 30.913750>,  <38.175938, 34.186481, 30.277020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294395, 34.626492, 30.913750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910645, 34.663158, 30.807022>,  <37.680393, 34.685158, 30.742987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910645, 34.663158, 30.807022>,  <38.294395, 34.626492, 30.913750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910645, 34.663158, 30.807022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277532, -0.136693, 0.950942,
		0.050695, 0.986363, 0.156580,
		-0.959378, 0.091664, -0.266818,
		37.622829, 34.690659, 30.726976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023170, 35.273483, 31.314459>,  <38.294395, 34.626492, 30.913750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023170, 35.273483, 31.314459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741192, 35.014862, 31.197828>,  <37.572002, 34.859688, 31.127850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741192, 35.014862, 31.197828>,  <38.023170, 35.273483, 31.314459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741192, 35.014862, 31.197828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302718, -0.097497, 0.948080,
		-0.641412, 0.756613, -0.126992,
		-0.704949, -0.646553, -0.291576,
		37.529709, 34.820896, 31.110355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923248, 34.844353, 31.944950>,  <38.023170, 35.273483, 31.314459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923248, 34.844353, 31.944950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193565, 34.669540, 32.182373>,  <38.355755, 34.564651, 32.324825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193565, 34.669540, 32.182373>,  <37.923248, 34.844353, 31.944950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193565, 34.669540, 32.182373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648760, -0.029573, -0.760418,
		0.349880, 0.898960, 0.263544,
		0.675792, -0.437032, 0.593556,
		38.396301, 34.538429, 32.360439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554306, 35.184723, 31.789345>,  <37.923248, 34.844353, 31.944950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554306, 35.184723, 31.789345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676033, 34.851986, 31.975000>,  <38.749069, 34.652344, 32.086395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.676033, 34.851986, 31.975000>,  <38.554306, 35.184723, 31.789345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676033, 34.851986, 31.975000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828570, -0.009237, -0.559810,
		0.469962, 0.554931, 0.686431,
		0.304315, -0.831845, 0.464140,
		38.767326, 34.602432, 32.114243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228756, 35.268646, 31.787933>,  <38.554306, 35.184723, 31.789345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228756, 35.268646, 31.787933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220764, 34.871361, 31.833754>,  <39.215969, 34.632988, 31.861246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220764, 34.871361, 31.833754>,  <39.228756, 35.268646, 31.787933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220764, 34.871361, 31.833754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651906, -0.099814, -0.751702,
		0.758036, 0.059655, 0.649478,
		-0.019984, -0.993216, 0.114552,
		39.214767, 34.573395, 31.868118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902534, 34.994659, 31.922356>,  <39.228756, 35.268646, 31.787933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902534, 34.994659, 31.922356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705799, 34.678455, 31.776377>,  <39.587757, 34.488731, 31.688789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705799, 34.678455, 31.776377>,  <39.902534, 34.994659, 31.922356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705799, 34.678455, 31.776377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659086, -0.064133, -0.749328,
		0.568949, -0.609076, 0.552560,
		-0.491835, -0.790514, -0.364945,
		39.558250, 34.441299, 31.666893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451984, 34.481632, 31.741064>,  <39.902534, 34.994659, 31.922356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451984, 34.481632, 31.741064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117809, 34.359142, 31.558516>,  <39.917305, 34.285648, 31.448986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117809, 34.359142, 31.558516>,  <40.451984, 34.481632, 31.741064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117809, 34.359142, 31.558516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526456, -0.207518, -0.824488,
		0.157774, -0.929065, 0.334583,
		-0.835435, -0.306226, -0.456371,
		39.867180, 34.267273, 31.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623856, 33.813694, 31.456715>,  <40.451984, 34.481632, 31.741064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623856, 33.813694, 31.456715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317757, 33.951633, 31.239285>,  <40.134098, 34.034397, 31.108826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317757, 33.951633, 31.239285>,  <40.623856, 33.813694, 31.456715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317757, 33.951633, 31.239285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473601, -0.270323, -0.838229,
		-0.436002, -0.898891, 0.043544,
		-0.765247, 0.344847, -0.543578,
		40.088181, 34.055088, 31.076212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512226, 33.199726, 30.958109>,  <40.623856, 33.813694, 31.456715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512226, 33.199726, 30.958109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365250, 33.533546, 30.793913>,  <40.277065, 33.733841, 30.695395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365250, 33.533546, 30.793913>,  <40.512226, 33.199726, 30.958109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365250, 33.533546, 30.793913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420757, -0.244452, -0.873617,
		-0.829427, -0.493721, -0.261323,
		-0.367442, 0.834556, -0.410491,
		40.255016, 33.783913, 30.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340950, 33.026718, 30.217495>,  <40.512226, 33.199726, 30.958109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340950, 33.026718, 30.217495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337181, 33.426678, 30.221752>,  <40.334919, 33.666653, 30.224306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337181, 33.426678, 30.221752>,  <40.340950, 33.026718, 30.217495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337181, 33.426678, 30.221752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389796, 0.013473, -0.920803,
		-0.920853, -0.004529, -0.389884,
		-0.009423, 0.999899, 0.010641,
		40.334354, 33.726646, 30.224945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002083, 33.266903, 29.521097>,  <40.340950, 33.026718, 30.217495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002083, 33.266903, 29.521097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227379, 33.562077, 29.669807>,  <40.362556, 33.739182, 29.759033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227379, 33.562077, 29.669807>,  <40.002083, 33.266903, 29.521097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227379, 33.562077, 29.669807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412881, 0.138395, -0.900209,
		-0.715748, 0.660529, -0.226731,
		0.563235, 0.737935, 0.371775,
		40.396351, 33.783459, 29.781340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899235, 33.913517, 29.095806>,  <40.002083, 33.266903, 29.521097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899235, 33.913517, 29.095806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248287, 33.944580, 29.288670>,  <40.457718, 33.963219, 29.404388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248287, 33.944580, 29.288670>,  <39.899235, 33.913517, 29.095806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248287, 33.944580, 29.288670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435757, 0.321956, -0.840512,
		-0.220506, 0.943564, 0.247111,
		0.872636, 0.077658, 0.482158,
		40.510078, 33.967876, 29.433317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122681, 34.619999, 28.927460>,  <39.899235, 33.913517, 29.095806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122681, 34.619999, 28.927460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454185, 34.425701, 29.038603>,  <40.653088, 34.309124, 29.105289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454185, 34.425701, 29.038603>,  <40.122681, 34.619999, 28.927460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454185, 34.425701, 29.038603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455923, 0.298193, -0.838579,
		0.324479, 0.821666, 0.468593,
		0.828762, -0.485743, 0.277859,
		40.702816, 34.279980, 29.121962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562523, 35.036182, 28.752790>,  <40.122681, 34.619999, 28.927460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562523, 35.036182, 28.752790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774883, 34.698788, 28.785458>,  <40.902302, 34.496349, 28.805058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774883, 34.698788, 28.785458>,  <40.562523, 35.036182, 28.752790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774883, 34.698788, 28.785458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450830, 0.199525, -0.870025,
		0.717560, 0.498718, 0.486198,
		0.530906, -0.843487, 0.081666,
		40.934155, 34.445740, 28.809958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199471, 35.193615, 28.486629>,  <40.562523, 35.036182, 28.752790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199471, 35.193615, 28.486629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.193020, 34.793797, 28.496788>,  <41.189148, 34.553905, 28.502882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.193020, 34.793797, 28.496788>,  <41.199471, 35.193615, 28.486629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193020, 34.793797, 28.496788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410189, -0.029777, -0.911514,
		0.911858, -0.004285, 0.410484,
		-0.016129, -0.999547, 0.025394,
		41.188183, 34.493931, 28.504406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760712, 35.123333, 28.092123>,  <41.199471, 35.193615, 28.486629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760712, 35.123333, 28.092123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559116, 34.778481, 28.113022>,  <41.438160, 34.571571, 28.125561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559116, 34.778481, 28.113022>,  <41.760712, 35.123333, 28.092123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559116, 34.778481, 28.113022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403940, -0.288744, -0.868020,
		0.763430, -0.416370, 0.493772,
		-0.503991, -0.862127, 0.052247,
		41.407921, 34.519844, 28.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226086, 34.596451, 28.072668>,  <41.760712, 35.123333, 28.092123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226086, 34.596451, 28.072668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877842, 34.451851, 27.939192>,  <41.668896, 34.365089, 27.859106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.877842, 34.451851, 27.939192>,  <42.226086, 34.596451, 28.072668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877842, 34.451851, 27.939192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443852, -0.284603, -0.849704,
		0.212198, -0.887874, 0.408231,
		-0.870614, -0.361500, -0.333692,
		41.616657, 34.343403, 27.839085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366982, 33.991722, 27.702156>,  <42.226086, 34.596451, 28.072668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366982, 33.991722, 27.702156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006859, 34.076855, 27.550287>,  <41.790787, 34.127934, 27.459166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006859, 34.076855, 27.550287>,  <42.366982, 33.991722, 27.702156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006859, 34.076855, 27.550287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337304, -0.210146, -0.917641,
		-0.275086, -0.954224, 0.117409,
		-0.900307, 0.212828, -0.379672,
		41.736767, 34.140701, 27.436386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376453, 33.542439, 27.293070>,  <42.366982, 33.991722, 27.702156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376453, 33.542439, 27.293070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096645, 33.800152, 27.169416>,  <41.928761, 33.954781, 27.095224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096645, 33.800152, 27.169416>,  <42.376453, 33.542439, 27.293070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096645, 33.800152, 27.169416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331658, -0.090473, -0.939051,
		-0.632987, -0.759413, -0.150395,
		-0.699522, 0.644287, -0.309134,
		41.886787, 33.993439, 27.076675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999889, 33.218906, 26.624491>,  <42.376453, 33.542439, 27.293070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999889, 33.218906, 26.624491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.945839, 33.614120, 26.654205>,  <41.913406, 33.851250, 26.672033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.945839, 33.614120, 26.654205>,  <41.999889, 33.218906, 26.624491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945839, 33.614120, 26.654205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353827, 0.118150, -0.927819,
		-0.925498, -0.099092, -0.365560,
		-0.135130, 0.988039, 0.074286,
		41.905300, 33.910534, 26.676491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.802784, 33.572937, 25.744659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907127, 33.914410, 25.924961>,  <41.969734, 34.119293, 26.033142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907127, 33.914410, 25.924961>,  <41.802784, 33.572937, 25.744659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907127, 33.914410, 25.924961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485282, 0.287681, -0.825676,
		-0.834538, 0.434130, -0.339231,
		0.260860, 0.853681, 0.450757,
		41.985386, 34.170513, 26.060188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632637, 34.152184, 25.332811>,  <41.802784, 33.572937, 25.744659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632637, 34.152184, 25.332811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905910, 34.299751, 25.584894>,  <42.069874, 34.388290, 25.736143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905910, 34.299751, 25.584894>,  <41.632637, 34.152184, 25.332811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905910, 34.299751, 25.584894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432531, 0.490904, -0.756261,
		-0.588367, 0.789250, 0.175811,
		0.683185, 0.368915, 0.630206,
		42.110867, 34.410427, 25.773956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621300, 34.872898, 25.140753>,  <41.632637, 34.152184, 25.332811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621300, 34.872898, 25.140753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969059, 34.812332, 25.328892>,  <42.177715, 34.775993, 25.441774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969059, 34.812332, 25.328892>,  <41.621300, 34.872898, 25.140753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969059, 34.812332, 25.328892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472179, 0.535067, -0.700535,
		-0.145599, 0.831131, 0.536678,
		0.869395, -0.151411, 0.470348,
		42.229877, 34.766911, 25.469995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776295, 35.494038, 25.136480>,  <41.621300, 34.872898, 25.140753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776295, 35.494038, 25.136480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.101254, 35.264591, 25.178383>,  <42.296230, 35.126923, 25.203526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.101254, 35.264591, 25.178383>,  <41.776295, 35.494038, 25.136480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101254, 35.264591, 25.178383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512077, 0.615903, -0.598699,
		0.278902, 0.540026, 0.794094,
		0.812398, -0.573616, 0.104759,
		42.344975, 35.092506, 25.209810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354752, 35.972816, 25.242327>,  <41.776295, 35.494038, 25.136480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354752, 35.972816, 25.242327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547226, 35.635387, 25.146954>,  <42.662708, 35.432930, 25.089729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547226, 35.635387, 25.146954>,  <42.354752, 35.972816, 25.242327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547226, 35.635387, 25.146954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679491, 0.530763, -0.506541,
		0.553856, 0.081724, 0.828592,
		0.481182, -0.843571, -0.238435,
		42.691582, 35.382317, 25.075422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026134, 36.040119, 25.487259>,  <42.354752, 35.972816, 25.242327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026134, 36.040119, 25.487259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.010323, 35.790882, 25.174799>,  <43.000835, 35.641342, 24.987322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.010323, 35.790882, 25.174799>,  <43.026134, 36.040119, 25.487259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010323, 35.790882, 25.174799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648630, 0.578663, -0.494397,
		0.760077, -0.526222, 0.381279,
		-0.039531, -0.623089, -0.781151,
		42.998463, 35.603954, 24.940453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679806, 35.965675, 25.187628>,  <43.026134, 36.040119, 25.487259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679806, 35.965675, 25.187628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470207, 35.826397, 24.876709>,  <43.344448, 35.742832, 24.690157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470207, 35.826397, 24.876709>,  <43.679806, 35.965675, 25.187628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470207, 35.826397, 24.876709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666926, 0.399892, -0.628726,
		0.529752, -0.847849, 0.022677,
		-0.523996, -0.348193, -0.777296,
		43.313007, 35.721939, 24.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163040, 35.733295, 24.671263>,  <43.679806, 35.965675, 25.187628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163040, 35.733295, 24.671263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822186, 35.763084, 24.464067>,  <43.617672, 35.780960, 24.339750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.822186, 35.763084, 24.464067>,  <44.163040, 35.733295, 24.671263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822186, 35.763084, 24.464067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486119, 0.479152, -0.730823,
		0.193765, -0.874567, -0.444509,
		-0.852141, 0.074476, -0.517986,
		43.566544, 35.785427, 24.308672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352039, 35.553356, 24.067041>,  <44.163040, 35.733295, 24.671263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352039, 35.553356, 24.067041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.014366, 35.747208, 23.975399>,  <43.811760, 35.863518, 23.920414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.014366, 35.747208, 23.975399>,  <44.352039, 35.553356, 24.067041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014366, 35.747208, 23.975399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445821, 0.397416, -0.802063,
		-0.297651, -0.779229, -0.551549,
		-0.844185, 0.484627, -0.229105,
		43.761112, 35.892597, 23.906668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166859, 35.362541, 23.376822>,  <44.352039, 35.553356, 24.067041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166859, 35.362541, 23.376822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.972507, 35.705517, 23.444618>,  <43.855896, 35.911301, 23.485296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.972507, 35.705517, 23.444618>,  <44.166859, 35.362541, 23.376822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972507, 35.705517, 23.444618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436161, 0.405909, -0.803120,
		-0.757424, -0.316289, -0.571201,
		-0.485874, 0.857437, 0.169493,
		43.826744, 35.962749, 23.495466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086681, 35.577965, 22.771341>,  <44.166859, 35.362541, 23.376822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086681, 35.577965, 22.771341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.980476, 35.918541, 22.952253>,  <43.916752, 36.122887, 23.060801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.980476, 35.918541, 22.952253>,  <44.086681, 35.577965, 22.771341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980476, 35.918541, 22.952253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347929, 0.522125, -0.778672,
		-0.899137, -0.049387, -0.434871,
		-0.265514, 0.851437, 0.452279,
		43.900822, 36.173973, 23.087936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639572, 36.033596, 22.348173>,  <44.086681, 35.577965, 22.771341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639572, 36.033596, 22.348173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.870728, 36.249561, 22.592972>,  <44.009418, 36.379143, 22.739851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.870728, 36.249561, 22.592972>,  <43.639572, 36.033596, 22.348173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870728, 36.249561, 22.592972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302977, 0.554369, -0.775164,
		-0.757796, 0.633376, 0.156779,
		0.577884, 0.539917, 0.611997,
		44.044094, 36.411537, 22.776571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785625, 36.609074, 22.012138>,  <43.639572, 36.033596, 22.348173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785625, 36.609074, 22.012138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050316, 36.665405, 22.306698>,  <44.209129, 36.699203, 22.483433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050316, 36.665405, 22.306698>,  <43.785625, 36.609074, 22.012138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050316, 36.665405, 22.306698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513085, 0.631118, -0.581751,
		-0.546681, 0.762796, 0.345372,
		0.661728, 0.140827, 0.736399,
		44.248833, 36.707653, 22.527618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010605, 37.340061, 22.028030>,  <43.785625, 36.609074, 22.012138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010605, 37.340061, 22.028030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308590, 37.158546, 22.223625>,  <44.487381, 37.049637, 22.340982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308590, 37.158546, 22.223625>,  <44.010605, 37.340061, 22.028030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308590, 37.158546, 22.223625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660255, 0.606325, -0.443208,
		-0.095363, 0.653030, 0.751304,
		0.744962, -0.453786, 0.488987,
		44.532078, 37.022411, 22.370321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446033, 37.820614, 22.181467>,  <44.010605, 37.340061, 22.028030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446033, 37.820614, 22.181467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657135, 37.482056, 22.210012>,  <44.783794, 37.278919, 22.227139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657135, 37.482056, 22.210012>,  <44.446033, 37.820614, 22.181467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657135, 37.482056, 22.210012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767703, 0.439354, -0.466477,
		0.363471, 0.300969, 0.881650,
		0.527752, -0.846396, 0.071363,
		44.815460, 37.228138, 22.231421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068810, 38.040493, 22.301643>,  <44.446033, 37.820614, 22.181467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068810, 38.040493, 22.301643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.102707, 37.664188, 22.170322>,  <45.123047, 37.438404, 22.091530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.102707, 37.664188, 22.170322>,  <45.068810, 38.040493, 22.301643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102707, 37.664188, 22.170322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812398, 0.256011, -0.523897,
		0.576912, -0.222314, 0.785970,
		0.084748, -0.940763, -0.328303,
		45.128132, 37.381958, 22.071831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709869, 37.903538, 22.429884>,  <45.068810, 38.040493, 22.301643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709869, 37.903538, 22.429884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.617172, 37.644985, 22.139097>,  <45.561554, 37.489853, 21.964624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.617172, 37.644985, 22.139097>,  <45.709869, 37.903538, 22.429884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617172, 37.644985, 22.139097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650195, 0.452935, -0.609997,
		0.723561, -0.614035, 0.315309,
		-0.231745, -0.646383, -0.726969,
		45.547649, 37.451069, 21.921007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365734, 37.675919, 22.214905>,  <45.709869, 37.903538, 22.429884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365734, 37.675919, 22.214905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.117683, 37.574821, 21.917833>,  <45.968853, 37.514164, 21.739590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.117683, 37.574821, 21.917833>,  <46.365734, 37.675919, 22.214905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117683, 37.574821, 21.917833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652181, 0.360067, -0.667092,
		0.436015, -0.898039, -0.058453,
		-0.620121, -0.252740, -0.742679,
		45.931648, 37.499001, 21.695030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861172, 37.448025, 21.607958>,  <46.365734, 37.675919, 22.214905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861172, 37.448025, 21.607958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.504757, 37.506130, 21.435930>,  <46.290909, 37.540993, 21.332714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.504757, 37.506130, 21.435930>,  <46.861172, 37.448025, 21.607958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504757, 37.506130, 21.435930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449342, 0.416711, -0.790218,
		0.064424, -0.897357, -0.436577,
		-0.891034, 0.145263, -0.430066,
		46.237446, 37.549709, 21.306910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915756, 37.323975, 20.953228>,  <46.861172, 37.448025, 21.607958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915756, 37.323975, 20.953228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.579067, 37.539062, 20.972666>,  <46.377056, 37.668118, 20.984329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.579067, 37.539062, 20.972666>,  <46.915756, 37.323975, 20.953228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579067, 37.539062, 20.972666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291792, 0.528780, -0.797025,
		-0.454275, -0.656693, -0.601988,
		-0.841720, 0.537724, 0.048594,
		46.326550, 37.700378, 20.987244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626926, 37.334431, 20.254934>,  <46.915756, 37.323975, 20.953228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626926, 37.334431, 20.254934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.527447, 37.667587, 20.452696>,  <46.467758, 37.867481, 20.571352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.527447, 37.667587, 20.452696>,  <46.626926, 37.334431, 20.254934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527447, 37.667587, 20.452696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305687, 0.551849, -0.775898,
		-0.919077, -0.041834, -0.391851,
		-0.248702, 0.832894, 0.494404,
		46.452835, 37.917454, 20.601017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447540, 37.781765, 19.739967>,  <46.626926, 37.334431, 20.254934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447540, 37.781765, 19.739967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.479671, 38.023479, 20.057053>,  <46.498951, 38.168507, 20.247303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.479671, 38.023479, 20.057053>,  <46.447540, 37.781765, 19.739967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479671, 38.023479, 20.057053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413772, 0.703308, -0.578057,
		-0.906830, 0.374434, -0.193543,
		0.080324, 0.604282, 0.792711,
		46.503769, 38.204765, 20.294867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009258, 38.461655, 19.770414>,  <46.447540, 37.781765, 19.739967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009258, 38.461655, 19.770414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.374901, 38.472260, 19.932257>,  <46.594288, 38.478622, 20.029362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.374901, 38.472260, 19.932257>,  <46.009258, 38.461655, 19.770414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374901, 38.472260, 19.932257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209849, 0.822894, -0.528023,
		-0.346946, 0.567576, 0.746650,
		0.914107, 0.026512, 0.404605,
		46.649132, 38.480213, 20.053638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004276, 39.032169, 20.022495>,  <46.009258, 38.461655, 19.770414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004276, 39.032169, 20.022495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.356079, 38.920238, 19.868525>,  <46.567162, 38.853081, 19.776142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.356079, 38.920238, 19.868525>,  <46.004276, 39.032169, 20.022495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356079, 38.920238, 19.868525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101941, 0.900859, -0.421973,
		0.464844, 0.331888, 0.820836,
		0.879505, -0.279828, -0.384925,
		46.619930, 38.836288, 19.753046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838242, 39.225754, 19.213051>,  <46.004276, 39.032169, 20.022495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838242, 39.225754, 19.213051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.661419, 39.043453, 18.904020>,  <45.555325, 38.934074, 18.718601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.661419, 39.043453, 18.904020>,  <45.838242, 39.225754, 19.213051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661419, 39.043453, 18.904020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788474, -0.213212, 0.576931,
		-0.427658, 0.864196, -0.265092,
		-0.442061, -0.455748, -0.772578,
		45.528801, 38.906731, 18.672247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209431, 39.511379, 19.054296>,  <45.838242, 39.225754, 19.213051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209431, 39.511379, 19.054296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173389, 39.144863, 18.898195>,  <45.151764, 38.924953, 18.804535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173389, 39.144863, 18.898195>,  <45.209431, 39.511379, 19.054296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173389, 39.144863, 18.898195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736431, -0.202506, 0.645493,
		-0.670486, 0.345555, -0.656536,
		-0.090101, -0.916287, -0.390255,
		45.146358, 38.869976, 18.781118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517540, 39.520206, 18.978735>,  <45.209431, 39.511379, 19.054296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517540, 39.520206, 18.978735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.620708, 39.135410, 18.942833>,  <44.682610, 38.904533, 18.921291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.620708, 39.135410, 18.942833>,  <44.517540, 39.520206, 18.978735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620708, 39.135410, 18.942833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565894, -0.225711, 0.792980,
		-0.783096, -0.153734, -0.602599,
		0.257922, -0.961987, -0.089756,
		44.698086, 38.846813, 18.915907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843037, 39.245117, 18.857807>,  <44.517540, 39.520206, 18.978735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843037, 39.245117, 18.857807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.094147, 38.963486, 18.990578>,  <44.244812, 38.794506, 19.070240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.094147, 38.963486, 18.990578>,  <43.843037, 39.245117, 18.857807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094147, 38.963486, 18.990578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723321, -0.370120, 0.582939,
		-0.287581, -0.606044, -0.741625,
		0.627777, -0.704075, 0.331925,
		44.282478, 38.752262, 19.090155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436935, 38.762081, 18.835276>,  <43.843037, 39.245117, 18.857807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436935, 38.762081, 18.835276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.713013, 38.618370, 19.086531>,  <43.878658, 38.532143, 19.237284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.713013, 38.618370, 19.086531>,  <43.436935, 38.762081, 18.835276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713013, 38.618370, 19.086531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700143, -0.550906, 0.454205,
		0.182859, -0.753274, -0.631776,
		0.690190, -0.359278, 0.628138,
		43.920071, 38.510586, 19.274973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352055, 38.079273, 18.735979>,  <43.436935, 38.762081, 18.835276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352055, 38.079273, 18.735979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.522968, 38.162075, 19.088018>,  <43.625515, 38.211758, 19.299242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.522968, 38.162075, 19.088018>,  <43.352055, 38.079273, 18.735979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522968, 38.162075, 19.088018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628387, -0.631888, 0.453704,
		0.650045, -0.746904, -0.139914,
		0.427283, 0.207008, 0.880100,
		43.651154, 38.224178, 19.352049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534016, 37.398666, 19.098747>,  <43.352055, 38.079273, 18.735979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534016, 37.398666, 19.098747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.533447, 37.666721, 19.395641>,  <43.533108, 37.827553, 19.573778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.533447, 37.666721, 19.395641>,  <43.534016, 37.398666, 19.098747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533447, 37.666721, 19.395641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421398, -0.673517, 0.607288,
		0.906874, -0.311914, 0.283352,
		-0.001421, 0.670138, 0.742235,
		43.533020, 37.867764, 19.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784336, 37.096840, 19.650932>,  <43.534016, 37.398666, 19.098747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784336, 37.096840, 19.650932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579502, 37.404999, 19.802856>,  <43.456600, 37.589893, 19.894011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579502, 37.404999, 19.802856>,  <43.784336, 37.096840, 19.650932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579502, 37.404999, 19.802856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517825, -0.629692, 0.579089,
		0.685292, 0.099869, 0.721388,
		-0.512086, 0.770398, 0.379808,
		43.425877, 37.636120, 19.916800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671146, 36.886368, 20.343374>,  <43.784336, 37.096840, 19.650932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671146, 36.886368, 20.343374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.418694, 37.194672, 20.308521>,  <43.267220, 37.379654, 20.287609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.418694, 37.194672, 20.308521>,  <43.671146, 36.886368, 20.343374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418694, 37.194672, 20.308521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632045, -0.445896, 0.633794,
		0.449653, 0.455082, 0.768578,
		-0.631135, 0.770764, -0.087133,
		43.229355, 37.425900, 20.282381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507828, 37.157043, 20.946243>,  <43.671146, 36.886368, 20.343374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507828, 37.157043, 20.946243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.182751, 37.303356, 20.764812>,  <42.987705, 37.391144, 20.655954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.182751, 37.303356, 20.764812>,  <43.507828, 37.157043, 20.946243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182751, 37.303356, 20.764812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553992, -0.243759, 0.796037,
		0.180611, 0.898213, 0.400741,
		-0.812695, 0.365780, -0.453577,
		42.938942, 37.413090, 20.628738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358799, 37.674484, 21.296679>,  <43.507828, 37.157043, 20.946243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358799, 37.674484, 21.296679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.036980, 37.523846, 21.112993>,  <42.843887, 37.433464, 21.002781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.036980, 37.523846, 21.112993>,  <43.358799, 37.674484, 21.296679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036980, 37.523846, 21.112993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377439, -0.272753, 0.884955,
		-0.458522, 0.885315, 0.077301,
		-0.804548, -0.376594, -0.459215,
		42.795616, 37.410866, 20.975229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920860, 37.627480, 21.841988>,  <43.358799, 37.674484, 21.296679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920860, 37.627480, 21.841988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.735531, 37.420818, 21.553988>,  <42.624332, 37.296822, 21.381187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.735531, 37.420818, 21.553988>,  <42.920860, 37.627480, 21.841988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735531, 37.420818, 21.553988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630613, -0.378607, 0.677484,
		-0.622623, 0.767934, -0.150394,
		-0.463323, -0.516657, -0.719998,
		42.596535, 37.265820, 21.337988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317917, 37.633499, 22.066088>,  <42.920860, 37.627480, 21.841988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317917, 37.633499, 22.066088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304226, 37.324738, 21.812162>,  <42.296013, 37.139481, 21.659807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.304226, 37.324738, 21.812162>,  <42.317917, 37.633499, 22.066088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304226, 37.324738, 21.812162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611729, -0.486119, 0.624080,
		-0.790326, 0.409693, -0.455561,
		-0.034225, -0.771907, -0.634814,
		42.293957, 37.093166, 21.621717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613438, 37.453678, 21.925299>,  <42.317917, 37.633499, 22.066088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613438, 37.453678, 21.925299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826023, 37.120705, 21.862564>,  <41.953575, 36.920921, 21.824923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.826023, 37.120705, 21.862564>,  <41.613438, 37.453678, 21.925299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826023, 37.120705, 21.862564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703763, -0.536957, 0.465182,
		-0.471447, -0.136853, -0.871211,
		0.531465, -0.832435, -0.156835,
		41.985462, 36.870975, 21.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144726, 36.927536, 21.655445>,  <41.613438, 37.453678, 21.925299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144726, 36.927536, 21.655445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.458508, 36.733459, 21.809961>,  <41.646778, 36.617012, 21.902670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.458508, 36.733459, 21.809961>,  <41.144726, 36.927536, 21.655445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458508, 36.733459, 21.809961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620067, -0.625913, 0.473023,
		0.012275, -0.610589, -0.791852,
		0.784453, -0.485195, 0.386289,
		41.693844, 36.587902, 21.925848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003681, 36.205009, 21.622227>,  <41.144726, 36.927536, 21.655445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003681, 36.205009, 21.622227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.304470, 36.209179, 21.885872>,  <41.484943, 36.211681, 22.044060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.304470, 36.209179, 21.885872>,  <41.003681, 36.205009, 21.622227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304470, 36.209179, 21.885872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450880, -0.721270, 0.525810,
		0.480883, -0.692575, -0.537672,
		0.751970, 0.010428, 0.659115,
		41.530060, 36.212307, 22.083607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197826, 35.599598, 21.775526>,  <41.003681, 36.205009, 21.622227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197826, 35.599598, 21.775526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343277, 35.788742, 22.096569>,  <41.430546, 35.902229, 22.289194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343277, 35.788742, 22.096569>,  <41.197826, 35.599598, 21.775526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343277, 35.788742, 22.096569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485975, -0.638757, 0.596504,
		0.794735, -0.606951, -0.002470,
		0.363627, 0.472863, 0.802606,
		41.452366, 35.930599, 22.337351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379295, 35.000961, 22.240788>,  <41.197826, 35.599598, 21.775526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379295, 35.000961, 22.240788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354130, 35.345745, 22.442011>,  <41.339031, 35.552616, 22.562746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354130, 35.345745, 22.442011>,  <41.379295, 35.000961, 22.240788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354130, 35.345745, 22.442011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479283, -0.468222, 0.742331,
		0.875403, -0.194408, 0.442579,
		-0.062910, 0.861959, 0.503059,
		41.335258, 35.604332, 22.592928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495308, 34.782536, 22.957682>,  <41.379295, 35.000961, 22.240788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495308, 34.782536, 22.957682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.311691, 35.137314, 22.978077>,  <41.201519, 35.350182, 22.990314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.311691, 35.137314, 22.978077>,  <41.495308, 34.782536, 22.957682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311691, 35.137314, 22.978077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534692, -0.321656, 0.781436,
		0.709495, 0.331450, 0.621899,
		-0.459045, 0.886949, 0.050990,
		41.173977, 35.403397, 22.993374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532024, 35.040665, 23.685968>,  <41.495308, 34.782536, 22.957682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532024, 35.040665, 23.685968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218102, 35.250446, 23.553892>,  <41.029747, 35.376316, 23.474646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218102, 35.250446, 23.553892>,  <41.532024, 35.040665, 23.685968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218102, 35.250446, 23.553892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534375, -0.302823, 0.789139,
		0.313877, 0.795769, 0.517912,
		-0.784809, 0.524452, -0.330190,
		40.982658, 35.407784, 23.454836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.527512, 33.350018, 29.072311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359673, 33.703922, 28.991179>,  <41.258968, 33.916264, 28.942499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359673, 33.703922, 28.991179>,  <41.527512, 33.350018, 29.072311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359673, 33.703922, 28.991179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134438, 0.160417, 0.977851,
		0.897699, 0.437573, 0.051634,
		-0.419598, 0.884758, -0.202833,
		41.233791, 33.969349, 28.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793224, 33.784782, 29.630863>,  <41.527512, 33.350018, 29.072311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793224, 33.784782, 29.630863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470310, 33.959042, 29.471611>,  <41.276562, 34.063595, 29.376060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470310, 33.959042, 29.471611>,  <41.793224, 33.784782, 29.630863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470310, 33.959042, 29.471611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400164, 0.091780, 0.911836,
		0.433776, 0.895428, 0.100237,
		-0.807284, 0.435644, -0.398130,
		41.228127, 34.089733, 29.352173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604591, 34.411324, 29.979729>,  <41.793224, 33.784782, 29.630863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604591, 34.411324, 29.979729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277294, 34.240879, 29.825377>,  <41.080914, 34.138615, 29.732765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.277294, 34.240879, 29.825377>,  <41.604591, 34.411324, 29.979729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277294, 34.240879, 29.825377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514954, 0.244930, 0.821481,
		-0.255526, 0.870885, -0.419840,
		-0.818247, -0.426108, -0.385880,
		41.031818, 34.113049, 29.709612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051823, 34.827091, 30.269337>,  <41.604591, 34.411324, 29.979729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051823, 34.827091, 30.269337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854053, 34.516655, 30.112759>,  <40.735394, 34.330391, 30.018812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854053, 34.516655, 30.112759>,  <41.051823, 34.827091, 30.269337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854053, 34.516655, 30.112759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661247, 0.043521, 0.748904,
		-0.564183, 0.629115, -0.534707,
		-0.494418, -0.776093, -0.391447,
		40.705727, 34.283829, 29.995325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351387, 35.027130, 30.229357>,  <41.051823, 34.827091, 30.269337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351387, 35.027130, 30.229357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336399, 34.627556, 30.240147>,  <40.327408, 34.387814, 30.246620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336399, 34.627556, 30.240147>,  <40.351387, 35.027130, 30.229357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336399, 34.627556, 30.240147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753049, 0.045972, 0.656357,
		-0.656897, 0.004279, -0.753968,
		-0.037470, -0.998933, 0.026977,
		40.325157, 34.327877, 30.248240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648556, 34.890175, 30.150196>,  <40.351387, 35.027130, 30.229357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648556, 34.890175, 30.150196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833469, 34.582432, 30.326555>,  <39.944416, 34.397785, 30.432371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833469, 34.582432, 30.326555>,  <39.648556, 34.890175, 30.150196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833469, 34.582432, 30.326555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758712, -0.085825, 0.645748,
		-0.458970, -0.633029, -0.623395,
		0.462280, -0.769356, 0.440895,
		39.972153, 34.351624, 30.458824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132774, 34.502132, 30.325651>,  <39.648556, 34.890175, 30.150196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132774, 34.502132, 30.325651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426922, 34.368355, 30.561407>,  <39.603409, 34.288086, 30.702862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426922, 34.368355, 30.561407>,  <39.132774, 34.502132, 30.325651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426922, 34.368355, 30.561407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662776, -0.173603, 0.728416,
		-0.141294, -0.926288, -0.349323,
		0.735366, -0.334444, 0.589393,
		39.647533, 34.268021, 30.738224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806828, 33.906475, 30.707245>,  <39.132774, 34.502132, 30.325651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806828, 33.906475, 30.707245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131306, 33.998676, 30.922216>,  <39.325993, 34.053997, 31.051199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131306, 33.998676, 30.922216>,  <38.806828, 33.906475, 30.707245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131306, 33.998676, 30.922216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530359, -0.097152, 0.842188,
		0.246337, -0.968210, 0.043439,
		0.811195, 0.230500, 0.537431,
		39.374664, 34.067825, 31.083447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892696, 33.375893, 31.275770>,  <38.806828, 33.906475, 30.707245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892696, 33.375893, 31.275770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090767, 33.695534, 31.412138>,  <39.209610, 33.887318, 31.493959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090767, 33.695534, 31.412138>,  <38.892696, 33.375893, 31.275770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090767, 33.695534, 31.412138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491826, -0.065638, 0.868216,
		0.716174, -0.597597, 0.360518,
		0.495179, 0.799106, 0.340922,
		39.239319, 33.935265, 31.514414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100624, 33.261566, 32.010395>,  <38.892696, 33.375893, 31.275770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100624, 33.261566, 32.010395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106220, 33.657883, 31.956539>,  <39.109577, 33.895672, 31.924225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106220, 33.657883, 31.956539>,  <39.100624, 33.261566, 32.010395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106220, 33.657883, 31.956539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505591, 0.123180, 0.853935,
		0.862660, 0.056129, 0.502660,
		0.013987, 0.990796, -0.134641,
		39.110416, 33.955120, 31.916147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241077, 33.561115, 32.681744>,  <39.100624, 33.261566, 32.010395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241077, 33.561115, 32.681744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.068272, 33.862625, 32.483677>,  <38.964588, 34.043533, 32.364838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.068272, 33.862625, 32.483677>,  <39.241077, 33.561115, 32.681744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068272, 33.862625, 32.483677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502820, 0.254480, 0.826082,
		0.748692, 0.605853, 0.269077,
		-0.432010, 0.753778, -0.495162,
		38.938667, 34.088760, 32.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456440, 34.171009, 33.003819>,  <39.241077, 33.561115, 32.681744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456440, 34.171009, 33.003819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114872, 34.272282, 32.821957>,  <38.909931, 34.333046, 32.712837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114872, 34.272282, 32.821957>,  <39.456440, 34.171009, 33.003819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114872, 34.272282, 32.821957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449764, 0.080431, 0.889518,
		0.261775, 0.964070, 0.045188,
		-0.853924, 0.253178, -0.454659,
		38.858696, 34.348236, 32.685558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131805, 34.799572, 33.359314>,  <39.456440, 34.171009, 33.003819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131805, 34.799572, 33.359314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850410, 34.581604, 33.176807>,  <38.681576, 34.450825, 33.067303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850410, 34.581604, 33.176807>,  <39.131805, 34.799572, 33.359314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850410, 34.581604, 33.176807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566213, 0.041697, 0.823203,
		-0.429552, 0.837453, -0.337872,
		-0.703483, -0.544916, -0.456266,
		38.639366, 34.418129, 33.039928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482002, 35.102577, 33.334282>,  <39.131805, 34.799572, 33.359314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482002, 35.102577, 33.334282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457348, 34.705803, 33.378567>,  <38.442554, 34.467739, 33.405140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457348, 34.705803, 33.378567>,  <38.482002, 35.102577, 33.334282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457348, 34.705803, 33.378567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587819, 0.125724, 0.799163,
		-0.806641, -0.015822, -0.590830,
		-0.061637, -0.991939, 0.110715,
		38.438858, 34.408222, 33.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332771, 35.794411, 33.081936>,  <38.482002, 35.102577, 33.334282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332771, 35.794411, 33.081936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246098, 36.184345, 33.102901>,  <38.194096, 36.418304, 33.115482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246098, 36.184345, 33.102901>,  <38.332771, 35.794411, 33.081936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246098, 36.184345, 33.102901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180809, 0.092834, -0.979127,
		-0.959353, -0.202680, -0.196374,
		-0.216680, 0.974835, 0.052414,
		38.181095, 36.476795, 33.118626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106464, 35.891201, 32.490276>,  <38.332771, 35.794411, 33.081936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106464, 35.891201, 32.490276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173553, 36.268600, 32.604591>,  <38.213806, 36.495041, 32.673180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173553, 36.268600, 32.604591>,  <38.106464, 35.891201, 32.490276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173553, 36.268600, 32.604591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453359, 0.183601, -0.872213,
		-0.875406, 0.275853, -0.396951,
		0.167722, 0.943502, 0.285786,
		38.223869, 36.551651, 32.690327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852196, 36.286217, 31.898596>,  <38.106464, 35.891201, 32.490276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852196, 36.286217, 31.898596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106209, 36.514286, 32.107067>,  <38.258617, 36.651127, 32.232151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106209, 36.514286, 32.107067>,  <37.852196, 36.286217, 31.898596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106209, 36.514286, 32.107067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350657, 0.388395, -0.852167,
		-0.688310, 0.723911, 0.046707,
		0.635034, 0.570177, 0.521181,
		38.296719, 36.685341, 32.263420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657963, 37.061062, 31.684427>,  <37.852196, 36.286217, 31.898596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657963, 37.061062, 31.684427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033154, 37.006863, 31.812075>,  <38.258266, 36.974342, 31.888662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033154, 37.006863, 31.812075>,  <37.657963, 37.061062, 31.684427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033154, 37.006863, 31.812075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338830, 0.553239, -0.761000,
		-0.073431, 0.821928, 0.564838,
		0.937978, -0.135503, 0.319119,
		38.314548, 36.966213, 31.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964699, 37.728378, 31.523354>,  <37.657963, 37.061062, 31.684427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964699, 37.728378, 31.523354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278763, 37.485088, 31.569975>,  <38.467201, 37.339115, 31.597948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278763, 37.485088, 31.569975>,  <37.964699, 37.728378, 31.523354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278763, 37.485088, 31.569975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450890, 0.432426, -0.780837,
		0.424525, 0.665634, 0.613767,
		0.785160, -0.608226, 0.116552,
		38.514313, 37.302620, 31.604940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596821, 38.158718, 31.486343>,  <37.964699, 37.728378, 31.523354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596821, 38.158718, 31.486343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712048, 37.789303, 31.385077>,  <38.781185, 37.567654, 31.324316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712048, 37.789303, 31.385077>,  <38.596821, 38.158718, 31.486343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712048, 37.789303, 31.385077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565095, 0.377379, -0.733657,
		0.773101, 0.068277, 0.630597,
		0.288066, -0.923538, -0.253169,
		38.798466, 37.512241, 31.309126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281944, 38.200802, 31.494768>,  <38.596821, 38.158718, 31.486343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281944, 38.200802, 31.494768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140610, 37.906116, 31.264147>,  <39.055809, 37.729305, 31.125774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140610, 37.906116, 31.264147>,  <39.281944, 38.200802, 31.494768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140610, 37.906116, 31.264147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522462, 0.355835, -0.774864,
		0.776009, -0.575011, 0.259175,
		-0.353332, -0.736711, -0.576553,
		39.034611, 37.685104, 31.091181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827496, 38.087456, 31.042265>,  <39.281944, 38.200802, 31.494768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827496, 38.087456, 31.042265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543926, 37.879593, 30.851526>,  <39.373783, 37.754875, 30.737083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543926, 37.879593, 30.851526>,  <39.827496, 38.087456, 31.042265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543926, 37.879593, 30.851526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445566, 0.194102, -0.873954,
		0.546711, -0.832036, 0.093936,
		-0.708928, -0.519655, -0.476845,
		39.331249, 37.723698, 30.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120106, 37.585251, 30.507265>,  <39.827496, 38.087456, 31.042265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120106, 37.585251, 30.507265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739044, 37.613491, 30.388973>,  <39.510406, 37.630436, 30.317997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739044, 37.613491, 30.388973>,  <40.120106, 37.585251, 30.507265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739044, 37.613491, 30.388973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298966, 0.040518, -0.953403,
		-0.055329, -0.996682, -0.059707,
		-0.952659, 0.070601, -0.295732,
		39.453247, 37.634670, 30.300253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090706, 37.076866, 29.883316>,  <40.120106, 37.585251, 30.507265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090706, 37.076866, 29.883316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 37.324940, 29.857752>,  <39.590321, 37.473782, 29.842413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777966, 37.324940, 29.857752>,  <40.090706, 37.076866, 29.883316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777966, 37.324940, 29.857752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276484, 0.253015, -0.927114,
		-0.558807, -0.742536, -0.369290,
		-0.781851, 0.620181, -0.063913,
		39.543411, 37.510994, 29.838577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810883, 36.913292, 29.194841>,  <40.090706, 37.076866, 29.883316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810883, 36.913292, 29.194841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683563, 37.273476, 29.313406>,  <39.607170, 37.489586, 29.384544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683563, 37.273476, 29.313406>,  <39.810883, 36.913292, 29.194841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683563, 37.273476, 29.313406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228432, 0.376314, -0.897890,
		-0.920057, -0.218086, -0.325474,
		-0.318297, 0.900459, 0.296413,
		39.588074, 37.543613, 29.402330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220707, 37.149422, 28.721321>,  <39.810883, 36.913292, 29.194841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220707, 37.149422, 28.721321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333641, 37.508717, 28.856056>,  <39.401402, 37.724293, 28.936897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333641, 37.508717, 28.856056>,  <39.220707, 37.149422, 28.721321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333641, 37.508717, 28.856056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053443, 0.335851, -0.940398,
		-0.957826, 0.283511, 0.046819,
		0.282337, 0.898235, 0.336839,
		39.418343, 37.778187, 28.957108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857052, 37.602119, 28.269999>,  <39.220707, 37.149422, 28.721321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857052, 37.602119, 28.269999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142216, 37.819572, 28.447186>,  <39.313316, 37.950043, 28.553497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142216, 37.819572, 28.447186>,  <38.857052, 37.602119, 28.269999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142216, 37.819572, 28.447186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250903, 0.392124, -0.885035,
		-0.654832, 0.742094, 0.143151,
		0.712911, 0.543632, 0.442969,
		39.356091, 37.982662, 28.580076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799458, 38.347847, 28.004959>,  <38.857052, 37.602119, 28.269999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799458, 38.347847, 28.004959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172321, 38.288738, 28.137167>,  <39.396038, 38.253273, 28.216492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172321, 38.288738, 28.137167>,  <38.799458, 38.347847, 28.004959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172321, 38.288738, 28.137167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360528, 0.462545, -0.809982,
		-0.033187, 0.874194, 0.484442,
		0.932158, -0.147774, 0.330522,
		39.451969, 38.244408, 28.236324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559906, 39.046646, 28.335333>,  <38.799458, 38.347847, 28.004959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559906, 39.046646, 28.335333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303707, 39.304066, 28.167709>,  <38.149990, 39.458519, 28.067135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303707, 39.304066, 28.167709>,  <38.559906, 39.046646, 28.335333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303707, 39.304066, 28.167709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632802, -0.133092, 0.762789,
		0.435121, 0.753742, 0.492486,
		-0.640493, 0.643552, -0.419059,
		38.111561, 39.497131, 28.041992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164845, 39.334240, 28.841913>,  <38.559906, 39.046646, 28.335333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164845, 39.334240, 28.841913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900478, 39.424992, 28.555775>,  <37.741859, 39.479443, 28.384090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900478, 39.424992, 28.555775>,  <38.164845, 39.334240, 28.841913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900478, 39.424992, 28.555775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750431, -0.190918, 0.632774,
		0.006989, 0.955028, 0.296435,
		-0.660912, 0.226876, -0.715348,
		37.702206, 39.493053, 28.341169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549644, 39.816772, 29.124182>,  <38.164845, 39.334240, 28.841913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549644, 39.816772, 29.124182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437435, 39.600372, 28.807039>,  <37.370110, 39.470531, 28.616753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437435, 39.600372, 28.807039>,  <37.549644, 39.816772, 29.124182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437435, 39.600372, 28.807039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839768, -0.261719, 0.475702,
		-0.464862, 0.799263, -0.380897,
		-0.280523, -0.541001, -0.792859,
		37.353279, 39.438072, 28.569181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941124, 39.906261, 29.132063>,  <37.549644, 39.816772, 29.124182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941124, 39.906261, 29.132063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951839, 39.608242, 28.865473>,  <36.958267, 39.429432, 28.705519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951839, 39.608242, 28.865473>,  <36.941124, 39.906261, 29.132063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951839, 39.608242, 28.865473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846219, -0.371828, 0.381650,
		-0.532161, 0.553761, -0.640432,
		0.026787, -0.745045, -0.666476,
		36.959877, 39.384727, 28.665529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298630, 39.935184, 28.685963>,  <36.941124, 39.906261, 29.132063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298630, 39.935184, 28.685963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 39.557205, 28.683891>,  <36.508022, 39.330418, 28.682650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 39.557205, 28.683891>,  <36.298630, 39.935184, 28.685963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429501, 39.557205, 28.683891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890013, -0.309994, 0.334335,
		-0.317538, -0.104770, -0.942440,
		0.327179, -0.944948, -0.005188,
		36.527657, 39.273720, 28.682339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772781, 39.547287, 28.377895>,  <36.298630, 39.935184, 28.685963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772781, 39.547287, 28.377895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981716, 39.270840, 28.577702>,  <36.107079, 39.104973, 28.697586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981716, 39.270840, 28.577702>,  <35.772781, 39.547287, 28.377895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981716, 39.270840, 28.577702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846892, -0.351971, 0.398610,
		-0.099672, -0.631246, -0.769152,
		0.522340, -0.691119, 0.499516,
		36.138416, 39.063503, 28.727556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464386, 38.939926, 28.273956>,  <35.772781, 39.547287, 28.377895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464386, 38.939926, 28.273956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677113, 38.859200, 28.602940>,  <35.804749, 38.810764, 28.800329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.677113, 38.859200, 28.602940>,  <35.464386, 38.939926, 28.273956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677113, 38.859200, 28.602940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834330, -0.291297, 0.468016,
		0.145130, -0.935103, -0.323295,
		0.531818, -0.201811, 0.822460,
		35.836658, 38.798656, 28.849678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148323, 38.413071, 28.437958>,  <35.464386, 38.939926, 28.273956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148323, 38.413071, 28.437958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336155, 38.543823, 28.766018>,  <35.448853, 38.622272, 28.962854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336155, 38.543823, 28.766018>,  <35.148323, 38.413071, 28.437958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336155, 38.543823, 28.766018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778610, -0.284636, 0.559239,
		0.416249, -0.901183, 0.120854,
		0.469577, 0.326880, 0.820150,
		35.477028, 38.641888, 29.012062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038891, 37.862045, 29.041340>,  <35.148323, 38.413071, 28.437958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038891, 37.862045, 29.041340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156139, 38.192406, 29.233994>,  <35.226490, 38.390621, 29.349586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156139, 38.192406, 29.233994>,  <35.038891, 37.862045, 29.041340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156139, 38.192406, 29.233994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680674, -0.173484, 0.711749,
		0.671387, -0.536468, 0.511313,
		0.293126, 0.825896, 0.481635,
		35.244076, 38.440174, 29.378485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054485, 37.669769, 29.690165>,  <35.038891, 37.862045, 29.041340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054485, 37.669769, 29.690165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034729, 38.069244, 29.695547>,  <35.022877, 38.308929, 29.698776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034729, 38.069244, 29.695547>,  <35.054485, 37.669769, 29.690165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034729, 38.069244, 29.695547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644746, -0.042171, 0.763233,
		0.762800, 0.029019, 0.645983,
		-0.049390, 0.998689, 0.013458,
		35.019913, 38.368851, 29.699585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980164, 37.817596, 30.374357>,  <35.054485, 37.669769, 29.690165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980164, 37.817596, 30.374357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853081, 38.145988, 30.184599>,  <34.776829, 38.343025, 30.070744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853081, 38.145988, 30.184599>,  <34.980164, 37.817596, 30.374357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853081, 38.145988, 30.184599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764184, 0.074483, 0.640684,
		0.561323, 0.566078, 0.603716,
		-0.317710, 0.820980, -0.474396,
		34.757767, 38.392284, 30.042280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576481, 38.297382, 30.829655>,  <34.980164, 37.817596, 30.374357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576481, 38.297382, 30.829655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.438900, 38.383755, 30.464127>,  <34.356350, 38.435577, 30.244810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.438900, 38.383755, 30.464127>,  <34.576481, 38.297382, 30.829655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438900, 38.383755, 30.464127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929453, -0.216626, 0.298647,
		-0.133470, 0.952075, 0.275207,
		-0.343951, 0.215932, -0.913822,
		34.335716, 38.448536, 30.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.903122, 42.151283, 25.912647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542610, 42.151802, 25.739353>,  <39.326302, 42.152111, 25.635376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542610, 42.151802, 25.739353>,  <39.903122, 42.151283, 25.912647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542610, 42.151802, 25.739353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331412, -0.646127, 0.687521,
		-0.279036, 0.763228, 0.582770,
		-0.901279, 0.001294, -0.433236,
		39.272224, 42.152191, 25.609383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447369, 42.292648, 26.445833>,  <39.903122, 42.151283, 25.912647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447369, 42.292648, 26.445833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317280, 42.056351, 26.150467>,  <39.239227, 41.914574, 25.973248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317280, 42.056351, 26.150467>,  <39.447369, 42.292648, 26.445833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317280, 42.056351, 26.150467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375674, -0.635887, 0.674178,
		-0.867814, 0.496659, -0.015123,
		-0.325220, -0.590743, -0.738414,
		39.219715, 41.879128, 25.928944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854881, 42.105179, 26.782925>,  <39.447369, 42.292648, 26.445833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854881, 42.105179, 26.782925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953693, 41.845207, 26.495434>,  <39.012981, 41.689224, 26.322939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953693, 41.845207, 26.495434>,  <38.854881, 42.105179, 26.782925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953693, 41.845207, 26.495434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414898, -0.741230, 0.527672,
		-0.875691, 0.167846, -0.452762,
		0.247034, -0.649927, -0.718727,
		39.027805, 41.650230, 26.279816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201542, 41.830997, 26.533218>,  <38.854881, 42.105179, 26.782925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201542, 41.830997, 26.533218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510906, 41.581142, 26.490036>,  <38.696526, 41.431229, 26.464127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510906, 41.581142, 26.490036>,  <38.201542, 41.830997, 26.533218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510906, 41.581142, 26.490036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538321, -0.737131, 0.408470,
		-0.334725, -0.257802, -0.906365,
		0.773414, -0.624641, -0.107956,
		38.742931, 41.393749, 26.457649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887260, 41.291161, 26.612007>,  <38.201542, 41.830997, 26.533218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887260, 41.291161, 26.612007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243382, 41.112968, 26.574242>,  <38.457054, 41.006054, 26.551582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243382, 41.112968, 26.574242>,  <37.887260, 41.291161, 26.612007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243382, 41.112968, 26.574242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339213, -0.787110, 0.515161,
		-0.303807, -0.426622, -0.851877,
		0.890301, -0.445478, -0.094413,
		38.510471, 40.979324, 26.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744804, 40.546883, 26.303106>,  <37.887260, 41.291161, 26.612007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744804, 40.546883, 26.303106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083729, 40.559540, 26.515171>,  <38.287083, 40.567135, 26.642410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083729, 40.559540, 26.515171>,  <37.744804, 40.546883, 26.303106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083729, 40.559540, 26.515171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287658, -0.811787, 0.508188,
		0.446458, -0.583096, -0.678730,
		0.847306, 0.031642, 0.530161,
		38.337921, 40.569031, 26.674219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056610, 39.829945, 26.329422>,  <37.744804, 40.546883, 26.303106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056610, 39.829945, 26.329422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230793, 40.037224, 26.623863>,  <38.335300, 40.161591, 26.800528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230793, 40.037224, 26.623863>,  <38.056610, 39.829945, 26.329422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230793, 40.037224, 26.623863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133545, -0.771465, 0.622099,
		0.890250, -0.369199, -0.266735,
		0.435455, 0.518202, 0.736101,
		38.361431, 40.192684, 26.844694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446987, 39.309177, 26.732220>,  <38.056610, 39.829945, 26.329422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446987, 39.309177, 26.732220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359600, 39.614376, 26.975567>,  <38.307167, 39.797493, 27.121576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359600, 39.614376, 26.975567>,  <38.446987, 39.309177, 26.732220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359600, 39.614376, 26.975567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396999, -0.638999, 0.658842,
		0.891439, -0.097587, 0.442508,
		-0.218468, 0.762993, 0.608370,
		38.294060, 39.843273, 27.158077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570763, 38.961002, 27.460051>,  <38.446987, 39.309177, 26.732220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570763, 38.961002, 27.460051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375317, 39.306534, 27.509136>,  <38.258049, 39.513851, 27.538588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375317, 39.306534, 27.509136>,  <38.570763, 38.961002, 27.460051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375317, 39.306534, 27.509136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476846, -0.382170, 0.791558,
		0.730668, 0.328249, 0.598646,
		-0.488613, 0.863828, 0.122715,
		38.228733, 39.565681, 27.545950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109097, 39.019566, 27.873295>,  <38.570763, 38.961002, 27.460051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109097, 39.019566, 27.873295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427338, 38.783291, 27.927120>,  <39.618282, 38.641525, 27.959415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427338, 38.783291, 27.927120>,  <39.109097, 39.019566, 27.873295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427338, 38.783291, 27.927120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434552, 0.401666, -0.806120,
		0.422114, 0.699825, 0.576250,
		0.795603, -0.590685, 0.134561,
		39.666019, 38.606087, 27.967489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709259, 39.420567, 27.799797>,  <39.109097, 39.019566, 27.873295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709259, 39.420567, 27.799797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848511, 39.052612, 27.727566>,  <39.932064, 38.831841, 27.684227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848511, 39.052612, 27.727566>,  <39.709259, 39.420567, 27.799797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848511, 39.052612, 27.727566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647845, 0.375309, -0.662903,
		0.677570, 0.113789, 0.726602,
		0.348131, -0.919889, -0.180580,
		39.952950, 38.776646, 27.673391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447353, 39.436699, 27.898535>,  <39.709259, 39.420567, 27.799797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447353, 39.436699, 27.898535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407284, 39.108871, 27.672874>,  <40.383244, 38.912174, 27.537477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407284, 39.108871, 27.672874>,  <40.447353, 39.436699, 27.898535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407284, 39.108871, 27.672874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736798, 0.319940, -0.595623,
		0.668651, -0.475332, 0.571809,
		-0.100174, -0.819572, -0.564152,
		40.377232, 38.862999, 27.503630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082069, 39.105453, 27.891384>,  <40.447353, 39.436699, 27.898535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082069, 39.105453, 27.891384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910667, 38.953094, 27.563652>,  <40.807827, 38.861679, 27.367014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910667, 38.953094, 27.563652>,  <41.082069, 39.105453, 27.891384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910667, 38.953094, 27.563652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852846, 0.128960, -0.505988,
		0.298391, -0.915579, 0.269589,
		-0.428505, -0.380900, -0.819328,
		40.782116, 38.838825, 27.317854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629360, 38.753433, 27.632299>,  <41.082069, 39.105453, 27.891384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629360, 38.753433, 27.632299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377762, 38.764069, 27.321518>,  <41.226803, 38.770451, 27.135050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377762, 38.764069, 27.321518>,  <41.629360, 38.753433, 27.632299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377762, 38.764069, 27.321518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769372, -0.122030, -0.627037,
		-0.111483, -0.992171, 0.056301,
		-0.628999, 0.026587, -0.776952,
		41.189064, 38.772045, 27.088432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922653, 38.264500, 27.224718>,  <41.629360, 38.753433, 27.632299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922653, 38.264500, 27.224718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685513, 38.493484, 26.998154>,  <41.543228, 38.630875, 26.862215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685513, 38.493484, 26.998154>,  <41.922653, 38.264500, 27.224718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685513, 38.493484, 26.998154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756838, 0.155723, -0.634780,
		-0.275183, -0.805009, -0.525581,
		-0.592849, 0.572460, -0.566409,
		41.507656, 38.665222, 26.828230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108616, 38.071259, 26.543549>,  <41.922653, 38.264500, 27.224718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108616, 38.071259, 26.543549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915825, 38.416855, 26.485285>,  <41.800152, 38.624214, 26.450327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915825, 38.416855, 26.485285>,  <42.108616, 38.071259, 26.543549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915825, 38.416855, 26.485285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734299, 0.307606, -0.605131,
		-0.478024, -0.398615, -0.782687,
		-0.481974, 0.863994, -0.145660,
		41.771233, 38.676052, 26.441587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209106, 38.265446, 25.797464>,  <42.108616, 38.071259, 26.543549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209106, 38.265446, 25.797464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121735, 38.608215, 25.984213>,  <42.069309, 38.813877, 26.096262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121735, 38.608215, 25.984213>,  <42.209106, 38.265446, 25.797464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121735, 38.608215, 25.984213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730903, 0.460660, -0.503561,
		-0.646582, 0.231243, -0.726952,
		-0.218433, 0.856924, 0.466871,
		42.056206, 38.865292, 26.124273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244053, 38.755032, 25.349655>,  <42.209106, 38.265446, 25.797464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244053, 38.755032, 25.349655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262970, 38.992565, 25.670935>,  <42.274319, 39.135086, 25.863703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262970, 38.992565, 25.670935>,  <42.244053, 38.755032, 25.349655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262970, 38.992565, 25.670935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686077, 0.565111, -0.458200,
		-0.725990, 0.572723, -0.380691,
		0.047289, 0.593833, 0.803198,
		42.277157, 39.170715, 25.911894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169857, 39.567726, 25.090717>,  <42.244053, 38.755032, 25.349655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169857, 39.567726, 25.090717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342659, 39.534130, 25.449898>,  <42.446342, 39.513973, 25.665405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342659, 39.534130, 25.449898>,  <42.169857, 39.567726, 25.090717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342659, 39.534130, 25.449898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763427, 0.564140, -0.314523,
		-0.480154, 0.821396, 0.307833,
		0.432009, -0.083989, 0.897950,
		42.472263, 39.508934, 25.719282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673569, 40.224937, 25.150820>,  <42.169857, 39.567726, 25.090717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673569, 40.224937, 25.150820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787777, 40.015686, 25.472021>,  <42.856300, 39.890133, 25.664742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787777, 40.015686, 25.472021>,  <42.673569, 40.224937, 25.150820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787777, 40.015686, 25.472021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913654, 0.401538, -0.063276,
		-0.289334, 0.751732, 0.592609,
		0.285522, -0.523131, 0.803001,
		42.873432, 39.858746, 25.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950756, 40.670864, 25.701284>,  <42.673569, 40.224937, 25.150820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950756, 40.670864, 25.701284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117859, 40.307446, 25.699221>,  <43.218121, 40.089394, 25.697983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117859, 40.307446, 25.699221>,  <42.950756, 40.670864, 25.701284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117859, 40.307446, 25.699221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894151, 0.412138, -0.175034,
		0.161152, 0.068508, 0.984549,
		0.417761, -0.908543, -0.005161,
		43.243187, 40.034882, 25.697672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609150, 40.807762, 25.905142>,  <42.950756, 40.670864, 25.701284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609150, 40.807762, 25.905142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626945, 40.428299, 25.779877>,  <43.637623, 40.200623, 25.704718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626945, 40.428299, 25.779877>,  <43.609150, 40.807762, 25.905142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626945, 40.428299, 25.779877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913287, 0.165668, -0.372104,
		0.404880, -0.269454, 0.873766,
		0.044490, -0.948656, -0.313165,
		43.640293, 40.143703, 25.685926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313885, 40.564754, 26.005625>,  <43.609150, 40.807762, 25.905142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313885, 40.564754, 26.005625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182495, 40.316998, 25.720400>,  <44.103661, 40.168343, 25.549265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182495, 40.316998, 25.720400>,  <44.313885, 40.564754, 26.005625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182495, 40.316998, 25.720400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842426, 0.149273, -0.517723,
		0.427115, -0.770760, 0.472760,
		-0.328470, -0.619392, -0.713064,
		44.083954, 40.131180, 25.506481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.275429, 35.938717, 20.548248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248611, 36.276592, 20.760666>,  <39.232521, 36.479317, 20.888117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248611, 36.276592, 20.760666>,  <39.275429, 35.938717, 20.548248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248611, 36.276592, 20.760666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642211, -0.443862, 0.624941,
		0.763590, -0.299145, 0.572226,
		-0.067042, 0.844689, 0.531043,
		39.228500, 36.529999, 20.919979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254551, 35.809017, 21.173271>,  <39.275429, 35.938717, 20.548248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254551, 35.809017, 21.173271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082581, 36.167175, 21.219635>,  <38.979397, 36.382069, 21.247454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082581, 36.167175, 21.219635>,  <39.254551, 35.809017, 21.173271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082581, 36.167175, 21.219635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713464, -0.415602, 0.564132,
		0.553290, 0.159841, 0.817509,
		-0.429929, 0.895392, 0.115908,
		38.953602, 36.435791, 21.254408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105804, 35.904575, 21.863207>,  <39.254551, 35.809017, 21.173271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105804, 35.904575, 21.863207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849316, 36.168121, 21.705864>,  <38.695423, 36.326248, 21.611458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849316, 36.168121, 21.705864>,  <39.105804, 35.904575, 21.863207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849316, 36.168121, 21.705864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697176, -0.286049, 0.657359,
		0.320590, 0.695754, 0.642766,
		-0.641223, 0.658864, -0.393359,
		38.656948, 36.365780, 21.587856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938503, 36.384533, 22.416250>,  <39.105804, 35.904575, 21.863207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938503, 36.384533, 22.416250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633068, 36.393005, 22.158106>,  <38.449806, 36.398090, 22.003220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633068, 36.393005, 22.158106>,  <38.938503, 36.384533, 22.416250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633068, 36.393005, 22.158106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641777, -0.135035, 0.754910,
		-0.071153, 0.990614, 0.116706,
		-0.763584, 0.021185, -0.645361,
		38.403992, 36.399361, 21.964497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529495, 36.705887, 22.758499>,  <38.938503, 36.384533, 22.416250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529495, 36.705887, 22.758499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274586, 36.589046, 22.473246>,  <38.121639, 36.518944, 22.302094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274586, 36.589046, 22.473246>,  <38.529495, 36.705887, 22.758499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274586, 36.589046, 22.473246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629244, -0.337000, 0.700345,
		-0.444895, 0.895047, 0.030962,
		-0.637276, -0.292098, -0.713133,
		38.083405, 36.501419, 22.259306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976830, 37.042904, 22.920130>,  <38.529495, 36.705887, 22.758499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976830, 37.042904, 22.920130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876247, 36.719536, 22.707253>,  <37.815899, 36.525517, 22.579527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876247, 36.719536, 22.707253>,  <37.976830, 37.042904, 22.920130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876247, 36.719536, 22.707253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697190, -0.230104, 0.678953,
		-0.671337, 0.541769, -0.505760,
		-0.251458, -0.808418, -0.532193,
		37.800812, 36.477009, 22.547594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217083, 36.988369, 22.948778>,  <37.976830, 37.042904, 22.920130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217083, 36.988369, 22.948778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332443, 36.617714, 22.852304>,  <37.401657, 36.395321, 22.794420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332443, 36.617714, 22.852304>,  <37.217083, 36.988369, 22.948778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332443, 36.617714, 22.852304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627609, -0.373171, 0.683264,
		-0.723142, -0.045681, -0.689187,
		0.288397, -0.926637, -0.241186,
		37.418961, 36.339722, 22.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688835, 36.661694, 22.738066>,  <37.217083, 36.988369, 22.948778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688835, 36.661694, 22.738066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946819, 36.387363, 22.872923>,  <37.101612, 36.222767, 22.953836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946819, 36.387363, 22.872923>,  <36.688835, 36.661694, 22.738066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946819, 36.387363, 22.872923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694013, -0.340939, 0.634118,
		-0.319947, -0.642968, -0.695864,
		0.644965, -0.685823, 0.337146,
		37.140308, 36.181614, 22.974066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216984, 36.018826, 22.923130>,  <36.688835, 36.661694, 22.738066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216984, 36.018826, 22.923130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.570534, 35.961273, 23.101149>,  <36.782665, 35.926743, 23.207960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.570534, 35.961273, 23.101149>,  <36.216984, 36.018826, 22.923130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570534, 35.961273, 23.101149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464641, -0.379158, 0.800218,
		0.053610, -0.914078, -0.401979,
		0.883875, -0.143876, 0.445045,
		36.835697, 35.918110, 23.234661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071095, 35.370056, 23.474735>,  <36.216984, 36.018826, 22.923130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071095, 35.370056, 23.474735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.420811, 35.524601, 23.592268>,  <36.630642, 35.617329, 23.662788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.420811, 35.524601, 23.592268>,  <36.071095, 35.370056, 23.474735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420811, 35.524601, 23.592268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170978, -0.321419, 0.931373,
		0.454290, -0.864532, -0.214955,
		0.874292, 0.386361, 0.293833,
		36.683098, 35.640511, 23.680418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374142, 34.852440, 23.805351>,  <36.071095, 35.370056, 23.474735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374142, 34.852440, 23.805351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512615, 35.201385, 23.943415>,  <36.595699, 35.410751, 24.026253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512615, 35.201385, 23.943415>,  <36.374142, 34.852440, 23.805351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512615, 35.201385, 23.943415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302411, -0.244504, 0.921284,
		0.888089, -0.423316, 0.179169,
		0.346187, 0.872365, 0.345157,
		36.616470, 35.463097, 24.046961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499092, 34.664375, 24.438496>,  <36.374142, 34.852440, 23.805351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499092, 34.664375, 24.438496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548149, 35.058887, 24.482679>,  <36.577583, 35.295597, 24.509190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548149, 35.058887, 24.482679>,  <36.499092, 34.664375, 24.438496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548149, 35.058887, 24.482679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292442, -0.070445, 0.953685,
		0.948386, -0.149266, 0.279791,
		0.122643, 0.986284, 0.110460,
		36.584942, 35.354774, 24.515818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847836, 34.746895, 25.052422>,  <36.499092, 34.664375, 24.438496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847836, 34.746895, 25.052422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634563, 35.081741, 25.003521>,  <36.506599, 35.282650, 24.974180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634563, 35.081741, 25.003521>,  <36.847836, 34.746895, 25.052422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634563, 35.081741, 25.003521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301674, -0.053127, 0.951930,
		0.790384, 0.544434, 0.280864,
		-0.533184, 0.837120, -0.122251,
		36.474609, 35.332878, 24.966846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027378, 35.079155, 25.698631>,  <36.847836, 34.746895, 25.052422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027378, 35.079155, 25.698631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698589, 35.233627, 25.531187>,  <36.501316, 35.326309, 25.430721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698589, 35.233627, 25.531187>,  <37.027378, 35.079155, 25.698631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698589, 35.233627, 25.531187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425560, 0.072024, 0.902059,
		0.378507, 0.919608, 0.105141,
		-0.821968, 0.386180, -0.418610,
		36.452000, 35.349480, 25.405603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615284, 35.500641, 25.872885>,  <37.027378, 35.079155, 25.698631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615284, 35.500641, 25.872885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919548, 35.360214, 26.091295>,  <38.102108, 35.275959, 26.222342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919548, 35.360214, 26.091295>,  <37.615284, 35.500641, 25.872885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919548, 35.360214, 26.091295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639380, 0.259800, -0.723670,
		0.112199, 0.899586, 0.422085,
		0.760661, -0.351068, 0.546028,
		38.147747, 35.254894, 26.255104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258659, 36.011181, 25.928019>,  <37.615284, 35.500641, 25.872885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258659, 36.011181, 25.928019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412224, 35.646053, 25.983704>,  <38.504364, 35.426979, 26.017115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412224, 35.646053, 25.983704>,  <38.258659, 36.011181, 25.928019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412224, 35.646053, 25.983704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704252, 0.191955, -0.683507,
		0.597193, 0.360448, 0.716546,
		0.383913, -0.912815, 0.139213,
		38.527397, 35.372208, 26.025467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947258, 36.154335, 25.869692>,  <38.258659, 36.011181, 25.928019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947258, 36.154335, 25.869692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924179, 35.755650, 25.846966>,  <38.910332, 35.516438, 25.833330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924179, 35.755650, 25.846966>,  <38.947258, 36.154335, 25.869692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924179, 35.755650, 25.846966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723101, -0.002487, -0.690738,
		0.688328, -0.080937, 0.720870,
		-0.057699, -0.996716, -0.056813,
		38.906868, 35.456635, 25.829922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663338, 35.855495, 25.881868>,  <38.947258, 36.154335, 25.869692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663338, 35.855495, 25.881868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432419, 35.569859, 25.723476>,  <39.293869, 35.398476, 25.628441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.432419, 35.569859, 25.723476>,  <39.663338, 35.855495, 25.881868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432419, 35.569859, 25.723476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694369, -0.174171, -0.698224,
		0.429627, -0.678040, 0.596391,
		-0.577298, -0.714091, -0.395981,
		39.259228, 35.355633, 25.604681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146046, 35.219566, 25.726151>,  <39.663338, 35.855495, 25.881868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146046, 35.219566, 25.726151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813263, 35.185722, 25.506813>,  <39.613594, 35.165417, 25.375210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813263, 35.185722, 25.506813>,  <40.146046, 35.219566, 25.726151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813263, 35.185722, 25.506813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541342, -0.340412, -0.768810,
		-0.121614, -0.936462, 0.329012,
		-0.831961, -0.084610, -0.548345,
		39.563675, 35.160339, 25.342310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264492, 34.652416, 25.298067>,  <40.146046, 35.219566, 25.726151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264492, 34.652416, 25.298067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968681, 34.830914, 25.096487>,  <39.791195, 34.938011, 24.975538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968681, 34.830914, 25.096487>,  <40.264492, 34.652416, 25.298067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968681, 34.830914, 25.096487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539076, -0.055723, -0.840412,
		-0.403111, -0.893175, -0.199351,
		-0.739526, 0.446245, -0.503951,
		39.746822, 34.964787, 24.945301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165180, 34.360966, 24.659019>,  <40.264492, 34.652416, 25.298067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165180, 34.360966, 24.659019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987400, 34.714706, 24.601906>,  <39.880733, 34.926952, 24.567638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987400, 34.714706, 24.601906>,  <40.165180, 34.360966, 24.659019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987400, 34.714706, 24.601906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401439, 0.054135, -0.914284,
		-0.800819, -0.463673, -0.379074,
		-0.444450, 0.884351, -0.142784,
		39.854065, 34.980011, 24.559071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009483, 34.422367, 24.007421>,  <40.165180, 34.360966, 24.659019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009483, 34.422367, 24.007421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017941, 34.808090, 24.112995>,  <40.023014, 35.039524, 24.176340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017941, 34.808090, 24.112995>,  <40.009483, 34.422367, 24.007421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017941, 34.808090, 24.112995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504649, 0.217604, -0.835451,
		-0.863066, 0.150856, -0.482037,
		0.021140, 0.964309, 0.263936,
		40.024284, 35.097382, 24.192177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618263, 34.872143, 23.390636>,  <40.009483, 34.422367, 24.007421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618263, 34.872143, 23.390636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857014, 35.097309, 23.619322>,  <40.000263, 35.232410, 23.756533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.857014, 35.097309, 23.619322>,  <39.618263, 34.872143, 23.390636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857014, 35.097309, 23.619322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376090, 0.433137, -0.819115,
		-0.708726, 0.703929, 0.046823,
		0.596879, 0.562918, 0.571715,
		40.036076, 35.266186, 23.790836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763756, 35.470230, 22.916201>,  <39.618263, 34.872143, 23.390636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763756, 35.470230, 22.916201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025867, 35.480415, 23.218184>,  <40.183136, 35.486526, 23.399374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025867, 35.480415, 23.218184>,  <39.763756, 35.470230, 22.916201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025867, 35.480415, 23.218184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599539, 0.590454, -0.540293,
		-0.459525, 0.806669, 0.371647,
		0.655278, 0.025462, 0.754958,
		40.222450, 35.488052, 23.444672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076412, 36.177326, 22.930162>,  <39.763756, 35.470230, 22.916201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076412, 36.177326, 22.930162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361732, 35.960651, 23.108051>,  <40.532925, 35.830647, 23.214785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361732, 35.960651, 23.108051>,  <40.076412, 36.177326, 22.930162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361732, 35.960651, 23.108051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664726, 0.321767, -0.674244,
		0.222136, 0.776554, 0.589592,
		0.713298, -0.541691, 0.444720,
		40.575722, 35.798145, 23.241467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582535, 36.603989, 23.148476>,  <40.076412, 36.177326, 22.930162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582535, 36.603989, 23.148476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751137, 36.244099, 23.103176>,  <40.852299, 36.028164, 23.075996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751137, 36.244099, 23.103176>,  <40.582535, 36.603989, 23.148476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751137, 36.244099, 23.103176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662308, 0.390744, -0.639270,
		0.619419, 0.194453, 0.760598,
		0.421507, -0.899726, -0.113246,
		40.877590, 35.974182, 23.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303303, 36.645870, 23.378223>,  <40.582535, 36.603989, 23.148476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303303, 36.645870, 23.378223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.301727, 36.321438, 23.144257>,  <41.300781, 36.126778, 23.003876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.301727, 36.321438, 23.144257>,  <41.303303, 36.645870, 23.378223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301727, 36.321438, 23.144257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654839, 0.439973, -0.614499,
		0.755758, -0.385446, 0.529397,
		-0.003936, -0.811083, -0.584918,
		41.300545, 36.078114, 22.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986252, 36.502052, 23.341719>,  <41.303303, 36.645870, 23.378223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986252, 36.502052, 23.341719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.802242, 36.336983, 23.027246>,  <41.691837, 36.237942, 22.838562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.802242, 36.336983, 23.027246>,  <41.986252, 36.502052, 23.341719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802242, 36.336983, 23.027246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612037, 0.494096, -0.617479,
		0.643264, -0.765227, 0.025274,
		-0.460024, -0.412671, -0.786181,
		41.664234, 36.213181, 22.791391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415413, 35.950359, 23.763060>,  <41.986252, 36.502052, 23.341719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415413, 35.950359, 23.763060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.777714, 35.873093, 23.913946>,  <42.995094, 35.826733, 24.004478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.777714, 35.873093, 23.913946>,  <42.415413, 35.950359, 23.763060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777714, 35.873093, 23.913946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382248, -0.756731, 0.530325,
		0.183009, -0.624535, -0.759252,
		0.905756, -0.193168, 0.377216,
		43.049442, 35.815144, 24.027111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488979, 35.207550, 23.798393>,  <42.415413, 35.950359, 23.763060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488979, 35.207550, 23.798393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.777367, 35.338760, 24.042559>,  <42.950397, 35.417488, 24.189058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.777367, 35.338760, 24.042559>,  <42.488979, 35.207550, 23.798393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777367, 35.338760, 24.042559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345771, -0.593089, 0.727109,
		0.600542, -0.735285, -0.314175,
		0.720966, 0.328027, 0.610415,
		42.993656, 35.437168, 24.225683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800941, 34.584702, 24.198383>,  <42.488979, 35.207550, 23.798393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800941, 34.584702, 24.198383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.931248, 34.892021, 24.418783>,  <43.009430, 35.076412, 24.551023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.931248, 34.892021, 24.418783>,  <42.800941, 34.584702, 24.198383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931248, 34.892021, 24.418783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441199, -0.391909, 0.807310,
		0.836195, -0.506092, 0.211302,
		0.325762, 0.768296, 0.551000,
		43.028976, 35.122509, 24.584084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258144, 34.287083, 24.721996>,  <42.800941, 34.584702, 24.198383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258144, 34.287083, 24.721996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.080658, 34.622978, 24.847187>,  <42.974167, 34.824516, 24.922300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.080658, 34.622978, 24.847187>,  <43.258144, 34.287083, 24.721996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080658, 34.622978, 24.847187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492773, -0.520325, 0.697450,
		0.748525, 0.155244, 0.644678,
		-0.443717, 0.839739, 0.312976,
		42.947544, 34.874901, 24.941080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311321, 34.252228, 25.430782>,  <43.258144, 34.287083, 24.721996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311321, 34.252228, 25.430782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.035061, 34.536510, 25.377268>,  <42.869305, 34.707081, 25.345160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.035061, 34.536510, 25.377268>,  <43.311321, 34.252228, 25.430782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035061, 34.536510, 25.377268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473914, -0.305036, 0.826050,
		0.546272, 0.633912, 0.547488,
		-0.690646, 0.710710, -0.133787,
		42.827866, 34.749725, 25.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331314, 34.551308, 26.112057>,  <43.311321, 34.252228, 25.430782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331314, 34.551308, 26.112057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.996140, 34.616451, 25.903694>,  <42.795036, 34.655537, 25.778677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.996140, 34.616451, 25.903694>,  <43.331314, 34.551308, 26.112057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996140, 34.616451, 25.903694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542833, -0.149758, 0.826381,
		0.056570, 0.975218, 0.213890,
		-0.837933, 0.162855, -0.520909,
		42.744759, 34.665306, 25.747421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945358, 35.009411, 26.538919>,  <43.331314, 34.551308, 26.112057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945358, 35.009411, 26.538919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.686481, 34.827816, 26.293959>,  <42.531155, 34.718857, 26.146982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.686481, 34.827816, 26.293959>,  <42.945358, 35.009411, 26.538919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686481, 34.827816, 26.293959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655327, -0.079096, 0.751193,
		-0.389472, 0.887490, -0.246321,
		-0.647193, -0.453989, -0.612401,
		42.492325, 34.691620, 26.110239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372860, 35.262436, 26.711014>,  <42.945358, 35.009411, 26.538919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372860, 35.262436, 26.711014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263321, 34.928402, 26.520170>,  <42.197598, 34.727982, 26.405664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263321, 34.928402, 26.520170>,  <42.372860, 35.262436, 26.711014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263321, 34.928402, 26.520170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671891, -0.188837, 0.716172,
		-0.688163, 0.516689, -0.509376,
		-0.273849, -0.835088, -0.477109,
		42.181168, 34.677876, 26.377037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683201, 35.240360, 26.686733>,  <42.372860, 35.262436, 26.711014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683201, 35.240360, 26.686733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.757263, 34.849350, 26.646402>,  <41.801701, 34.614746, 26.622204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.757263, 34.849350, 26.646402>,  <41.683201, 35.240360, 26.686733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757263, 34.849350, 26.646402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751690, -0.206969, 0.626199,
		-0.632993, -0.040152, -0.773116,
		0.185154, -0.977523, -0.100828,
		41.812809, 34.556091, 26.616154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019115, 34.829369, 26.567081>,  <41.683201, 35.240360, 26.686733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019115, 34.829369, 26.567081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288055, 34.581429, 26.728943>,  <41.449417, 34.432667, 26.826059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288055, 34.581429, 26.728943>,  <41.019115, 34.829369, 26.567081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288055, 34.581429, 26.728943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577623, -0.097454, 0.810466,
		-0.462929, -0.778649, -0.423560,
		0.672345, -0.619846, 0.404651,
		41.489758, 34.395473, 26.850338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584351, 34.493641, 26.912437>,  <41.019115, 34.829369, 26.567081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584351, 34.493641, 26.912437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933804, 34.376320, 27.067741>,  <41.143475, 34.305927, 27.160923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933804, 34.376320, 27.067741>,  <40.584351, 34.493641, 26.912437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933804, 34.376320, 27.067741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463113, -0.256333, 0.848422,
		-0.149317, -0.921016, -0.359770,
		0.873631, -0.293298, 0.388260,
		41.195892, 34.288330, 27.184219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408413, 34.025856, 27.500349>,  <40.584351, 34.493641, 26.912437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408413, 34.025856, 27.500349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787617, 34.119968, 27.586065>,  <41.015141, 34.176437, 27.637495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787617, 34.119968, 27.586065>,  <40.408413, 34.025856, 27.500349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787617, 34.119968, 27.586065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132500, -0.320401, 0.937969,
		0.289347, -0.917597, -0.272568,
		0.948009, 0.235283, 0.214289,
		41.072021, 34.190552, 27.650352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591564, 33.429035, 27.945850>,  <40.408413, 34.025856, 27.500349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591564, 33.429035, 27.945850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.864731, 33.713982, 28.010540>,  <41.028629, 33.884949, 28.049355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.864731, 33.713982, 28.010540>,  <40.591564, 33.429035, 27.945850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864731, 33.713982, 28.010540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024994, -0.244049, 0.969441,
		0.730069, -0.658005, -0.184470,
		0.682917, 0.712369, 0.161726,
		41.069607, 33.927692, 28.059057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164333, 33.180683, 28.397900>,  <40.591564, 33.429035, 27.945850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164333, 33.180683, 28.397900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157589, 33.578350, 28.440508>,  <41.153542, 33.816952, 28.466072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157589, 33.578350, 28.440508>,  <41.164333, 33.180683, 28.397900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157589, 33.578350, 28.440508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051851, -0.107263, 0.992878,
		0.998513, 0.011220, 0.053357,
		-0.016863, 0.994168, 0.106521,
		41.152531, 33.876602, 28.472464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.069141, 39.946011, 25.749083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.776920, 39.920628, 25.477123>,  <44.601585, 39.905399, 25.313948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.776920, 39.920628, 25.477123>,  <45.069141, 39.946011, 25.749083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776920, 39.920628, 25.477123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682750, -0.085140, -0.725675,
		-0.011838, -0.994346, 0.105524,
		-0.730556, -0.063456, -0.679898,
		44.557755, 39.901592, 25.273153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374119, 39.459839, 25.285744>,  <45.069141, 39.946011, 25.749083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374119, 39.459839, 25.285744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.076790, 39.632515, 25.081348>,  <44.898392, 39.736122, 24.958712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.076790, 39.632515, 25.081348>,  <45.374119, 39.459839, 25.285744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076790, 39.632515, 25.081348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557665, -0.021953, -0.829776,
		-0.369426, -0.901753, -0.224422,
		-0.743326, 0.431693, -0.510986,
		44.853790, 39.762024, 24.928053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269844, 39.121628, 24.558489>,  <45.374119, 39.459839, 25.285744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269844, 39.121628, 24.558489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.107880, 39.482140, 24.496862>,  <45.010700, 39.698448, 24.459887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.107880, 39.482140, 24.496862>,  <45.269844, 39.121628, 24.558489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107880, 39.482140, 24.496862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401632, 0.023944, -0.915488,
		-0.821426, -0.432567, -0.371680,
		-0.404909, 0.901284, -0.154065,
		44.986408, 39.752525, 24.450644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028461, 39.128498, 23.838463>,  <45.269844, 39.121628, 24.558489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028461, 39.128498, 23.838463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.058201, 39.513901, 23.941330>,  <45.076046, 39.745140, 24.003050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.058201, 39.513901, 23.941330>,  <45.028461, 39.128498, 23.838463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058201, 39.513901, 23.941330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484423, 0.190515, -0.853838,
		-0.871669, 0.188061, -0.452577,
		0.074351, 0.963503, 0.257167,
		45.080505, 39.802952, 24.018480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677071, 39.619434, 23.237818>,  <45.028461, 39.128498, 23.838463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677071, 39.619434, 23.237818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949711, 39.822701, 23.448414>,  <45.113293, 39.944660, 23.574772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949711, 39.822701, 23.448414>,  <44.677071, 39.619434, 23.237818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949711, 39.822701, 23.448414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412708, 0.327172, -0.850077,
		-0.604233, 0.796697, 0.013276,
		0.681597, 0.508165, 0.526492,
		45.154190, 39.975151, 23.606361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591866, 40.271957, 22.853458>,  <44.677071, 39.619434, 23.237818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591866, 40.271957, 22.853458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933613, 40.271557, 23.061323>,  <45.138660, 40.271317, 23.186043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933613, 40.271557, 23.061323>,  <44.591866, 40.271957, 22.853458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933613, 40.271557, 23.061323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478954, 0.389506, -0.786694,
		-0.201623, 0.921023, 0.333263,
		0.854372, -0.001002, 0.519661,
		45.189926, 40.271255, 23.217222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975937, 40.940315, 22.813963>,  <44.591866, 40.271957, 22.853458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975937, 40.940315, 22.813963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.237747, 40.647430, 22.889280>,  <45.394833, 40.471699, 22.934471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.237747, 40.647430, 22.889280>,  <44.975937, 40.940315, 22.813963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237747, 40.647430, 22.889280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543364, 0.282414, -0.790568,
		0.525690, 0.619760, 0.582707,
		0.654527, -0.732216, 0.188293,
		45.434105, 40.427765, 22.945768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551842, 41.368645, 22.852072>,  <44.975937, 40.940315, 22.813963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551842, 41.368645, 22.852072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.678448, 40.993805, 22.793201>,  <45.754410, 40.768902, 22.757879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.678448, 40.993805, 22.793201>,  <45.551842, 41.368645, 22.852072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678448, 40.993805, 22.793201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321037, 0.251822, -0.912974,
		0.892610, 0.241721, 0.380549,
		0.316516, -0.937100, -0.147177,
		45.773403, 40.712673, 22.749048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126713, 41.445721, 22.525763>,  <45.551842, 41.368645, 22.852072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126713, 41.445721, 22.525763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.091255, 41.051979, 22.464846>,  <46.069981, 40.815735, 22.428295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.091255, 41.051979, 22.464846>,  <46.126713, 41.445721, 22.525763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091255, 41.051979, 22.464846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384451, 0.107235, -0.916896,
		0.918880, -0.139825, 0.368930,
		-0.088643, -0.984352, -0.152292,
		46.064663, 40.756672, 22.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858624, 41.205181, 22.234123>,  <46.126713, 41.445721, 22.525763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858624, 41.205181, 22.234123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.593636, 40.928936, 22.118065>,  <46.434643, 40.763191, 22.048429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.593636, 40.928936, 22.118065>,  <46.858624, 41.205181, 22.234123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593636, 40.928936, 22.118065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338156, 0.069911, -0.938490,
		0.668415, -0.719840, 0.187220,
		-0.662474, -0.690610, -0.290148,
		46.394894, 40.721752, 22.031021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218037, 40.764233, 21.789797>,  <46.858624, 41.205181, 22.234123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218037, 40.764233, 21.789797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.837734, 40.696682, 21.685837>,  <46.609554, 40.656151, 21.623461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.837734, 40.696682, 21.685837>,  <47.218037, 40.764233, 21.789797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837734, 40.696682, 21.685837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279790, -0.106833, -0.954099,
		0.133365, -0.979829, 0.148823,
		-0.950753, -0.168883, -0.259898,
		46.552509, 40.646019, 21.607866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158009, 40.311249, 21.139490>,  <47.218037, 40.764233, 21.789797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158009, 40.311249, 21.139490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.782909, 40.449863, 21.148815>,  <46.557850, 40.533031, 21.154409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.782909, 40.449863, 21.148815>,  <47.158009, 40.311249, 21.139490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782909, 40.449863, 21.148815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043112, -0.049544, -0.997841,
		-0.344630, -0.936729, 0.061400,
		-0.937748, 0.346533, 0.023310,
		46.501583, 40.553822, 21.155807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744053, 39.818848, 20.854940>,  <47.158009, 40.311249, 21.139490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744053, 39.818848, 20.854940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.563755, 40.171951, 20.801928>,  <46.455574, 40.383812, 20.770121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.563755, 40.171951, 20.801928>,  <46.744053, 39.818848, 20.854940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563755, 40.171951, 20.801928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016173, -0.140370, -0.989967,
		-0.892505, -0.448369, 0.048994,
		-0.450748, 0.882758, -0.132533,
		46.428532, 40.436779, 20.762167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062492, 39.161270, 20.951366>,  <46.744053, 39.818848, 20.854940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062492, 39.161270, 20.951366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.853954, 39.002922, 20.648979>,  <46.728832, 38.907913, 20.467546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.853954, 39.002922, 20.648979>,  <47.062492, 39.161270, 20.951366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853954, 39.002922, 20.648979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443307, -0.631327, 0.636322,
		-0.729163, 0.666868, 0.153646,
		-0.521344, -0.395870, -0.755967,
		46.697552, 38.884159, 20.422190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320995, 39.092270, 21.137939>,  <47.062492, 39.161270, 20.951366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320995, 39.092270, 21.137939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.372925, 38.799500, 20.870377>,  <46.404083, 38.623837, 20.709839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.372925, 38.799500, 20.870377>,  <46.320995, 39.092270, 21.137939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372925, 38.799500, 20.870377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621825, -0.585567, 0.520044,
		-0.772321, 0.348429, -0.531148,
		0.129824, -0.731921, -0.668907,
		46.411873, 38.579922, 20.669704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698391, 38.870876, 21.178097>,  <46.320995, 39.092270, 21.137939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698391, 38.870876, 21.178097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.927502, 38.591583, 21.006329>,  <46.064968, 38.424007, 20.903267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.927502, 38.591583, 21.006329>,  <45.698391, 38.870876, 21.178097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927502, 38.591583, 21.006329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541871, -0.715601, 0.440785,
		-0.615064, -0.019780, -0.788229,
		0.572776, -0.698230, -0.429422,
		46.099335, 38.382114, 20.877502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193825, 38.411449, 20.921879>,  <45.698391, 38.870876, 21.178097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193825, 38.411449, 20.921879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536327, 38.205021, 20.930866>,  <45.741829, 38.081165, 20.936258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536327, 38.205021, 20.930866>,  <45.193825, 38.411449, 20.921879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536327, 38.205021, 20.930866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502192, -0.821465, 0.270183,
		-0.120974, -0.242630, -0.962547,
		0.856253, -0.516068, 0.022471,
		45.793201, 38.050201, 20.937607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104195, 37.762211, 20.683903>,  <45.193825, 38.411449, 20.921879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104195, 37.762211, 20.683903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.447906, 37.713196, 20.882547>,  <45.654133, 37.683784, 21.001734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.447906, 37.713196, 20.882547>,  <45.104195, 37.762211, 20.683903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447906, 37.713196, 20.882547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368461, -0.821707, 0.434781,
		0.354791, -0.556580, -0.751227,
		0.859278, -0.122542, 0.496612,
		45.705688, 37.676434, 21.031530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159283, 37.053181, 20.704565>,  <45.104195, 37.762211, 20.683903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159283, 37.053181, 20.704565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.397812, 37.185204, 20.997267>,  <45.540928, 37.264416, 21.172888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.397812, 37.185204, 20.997267>,  <45.159283, 37.053181, 20.704565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397812, 37.185204, 20.997267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375563, -0.690938, 0.617703,
		0.709475, -0.643169, -0.288063,
		0.596321, 0.330059, 0.731754,
		45.576710, 37.284222, 21.216793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320202, 36.482323, 21.083921>,  <45.159283, 37.053181, 20.704565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320202, 36.482323, 21.083921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.386726, 36.774536, 21.348848>,  <45.426640, 36.949863, 21.507805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.386726, 36.774536, 21.348848>,  <45.320202, 36.482323, 21.083921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386726, 36.774536, 21.348848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363241, -0.579050, 0.729902,
		0.916732, -0.361968, 0.169060,
		0.166307, 0.730534, 0.662315,
		45.436619, 36.993698, 21.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464043, 36.203583, 21.744789>,  <45.320202, 36.482323, 21.083921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464043, 36.203583, 21.744789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.356499, 36.569824, 21.864380>,  <45.291973, 36.789570, 21.936134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.356499, 36.569824, 21.864380>,  <45.464043, 36.203583, 21.744789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356499, 36.569824, 21.864380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467429, -0.395439, 0.790657,
		0.842154, 0.072826, 0.534297,
		-0.268862, 0.915601, 0.298979,
		45.275841, 36.844505, 21.954073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527317, 36.124714, 22.531107>,  <45.464043, 36.203583, 21.744789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527317, 36.124714, 22.531107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316032, 36.452187, 22.440994>,  <45.189262, 36.648670, 22.386927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316032, 36.452187, 22.440994>,  <45.527317, 36.124714, 22.531107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316032, 36.452187, 22.440994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539163, -0.118418, 0.833834,
		0.655967, 0.561906, 0.503953,
		-0.528214, 0.818681, -0.225281,
		45.157570, 36.697792, 22.373409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602604, 36.613056, 22.985838>,  <45.527317, 36.124714, 22.531107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602604, 36.613056, 22.985838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244896, 36.669254, 22.815876>,  <45.030270, 36.702972, 22.713900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244896, 36.669254, 22.815876>,  <45.602604, 36.613056, 22.985838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244896, 36.669254, 22.815876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447316, -0.251300, 0.858345,
		0.013815, 0.957658, 0.287575,
		-0.894269, 0.140495, -0.424904,
		44.976616, 36.711403, 22.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128490, 36.875423, 23.456610>,  <45.602604, 36.613056, 22.985838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128490, 36.875423, 23.456610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.859909, 36.805397, 23.168581>,  <44.698761, 36.763382, 22.995764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.859909, 36.805397, 23.168581>,  <45.128490, 36.875423, 23.456610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859909, 36.805397, 23.168581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717500, -0.089417, 0.690796,
		-0.185320, 0.980488, -0.065570,
		-0.671454, -0.175065, -0.720071,
		44.658474, 36.752876, 22.952560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606266, 37.217972, 23.706451>,  <45.128490, 36.875423, 23.456610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606266, 37.217972, 23.706451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.432751, 37.004799, 23.415852>,  <44.328640, 36.876896, 23.241491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.432751, 37.004799, 23.415852>,  <44.606266, 37.217972, 23.706451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432751, 37.004799, 23.415852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790327, -0.162139, 0.590842,
		-0.432674, 0.830477, -0.350858,
		-0.433793, -0.532935, -0.726502,
		44.302612, 36.844917, 23.197901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852833, 37.291897, 23.717812>,  <44.606266, 37.217972, 23.706451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852833, 37.291897, 23.717812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.863434, 36.939102, 23.529598>,  <43.869793, 36.727425, 23.416670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.863434, 36.939102, 23.529598>,  <43.852833, 37.291897, 23.717812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863434, 36.939102, 23.529598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754367, -0.326493, 0.569502,
		-0.655917, 0.339861, -0.673993,
		0.026502, -0.881985, -0.470533,
		43.871384, 36.674507, 23.388439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139511, 37.075974, 23.591934>,  <43.852833, 37.291897, 23.717812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139511, 37.075974, 23.591934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353245, 36.738480, 23.571533>,  <43.481483, 36.535984, 23.559292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353245, 36.738480, 23.571533>,  <43.139511, 37.075974, 23.591934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353245, 36.738480, 23.571533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599417, -0.420770, 0.680921,
		-0.595977, -0.333266, -0.730579,
		0.534333, -0.843734, -0.051004,
		43.513546, 36.485359, 23.556232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699009, 36.604443, 23.648167>,  <43.139511, 37.075974, 23.591934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699009, 36.604443, 23.648167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027363, 36.397400, 23.744690>,  <43.224377, 36.273174, 23.802605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027363, 36.397400, 23.744690>,  <42.699009, 36.604443, 23.648167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027363, 36.397400, 23.744690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557138, -0.633003, 0.537498,
		-0.125461, -0.575668, -0.808001,
		0.820888, -0.517604, 0.241309,
		43.273628, 36.242119, 23.817083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550667, 36.294994, 22.936653>,  <42.699009, 36.604443, 23.648167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550667, 36.294994, 22.936653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.234959, 36.282059, 22.691376>,  <42.045536, 36.274296, 22.544209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.234959, 36.282059, 22.691376>,  <42.550667, 36.294994, 22.936653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234959, 36.282059, 22.691376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519097, 0.498297, -0.694434,
		0.328012, -0.866403, -0.376502,
		-0.789269, -0.032342, -0.613195,
		41.998177, 36.272354, 22.507418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753593, 35.948032, 22.322304>,  <42.550667, 36.294994, 22.936653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753593, 35.948032, 22.322304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422516, 36.136375, 22.200180>,  <42.223869, 36.249382, 22.126905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422516, 36.136375, 22.200180>,  <42.753593, 35.948032, 22.322304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422516, 36.136375, 22.200180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502840, 0.380740, -0.776008,
		-0.249147, -0.795820, -0.551903,
		-0.827694, 0.470859, -0.305310,
		42.174206, 36.277634, 22.108587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729225, 35.800236, 21.577002>,  <42.753593, 35.948032, 22.322304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729225, 35.800236, 21.577002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.490547, 36.114571, 21.642010>,  <42.347340, 36.303173, 21.681015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.490547, 36.114571, 21.642010>,  <42.729225, 35.800236, 21.577002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490547, 36.114571, 21.642010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444308, 0.492178, -0.748566,
		-0.668241, -0.374457, -0.642835,
		-0.596695, 0.785839, 0.162519,
		42.311539, 36.350323, 21.690765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396305, 35.979939, 20.928659>,  <42.729225, 35.800236, 21.577002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396305, 35.979939, 20.928659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.340336, 36.307556, 21.151222>,  <42.306755, 36.504128, 21.284760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.340336, 36.307556, 21.151222>,  <42.396305, 35.979939, 20.928659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340336, 36.307556, 21.151222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171776, 0.573494, -0.800998,
		-0.975149, -0.016500, -0.220936,
		-0.139922, 0.819044, 0.556408,
		42.298359, 36.553268, 21.318144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973286, 36.479565, 20.541889>,  <42.396305, 35.979939, 20.928659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973286, 36.479565, 20.541889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142540, 36.745201, 20.788443>,  <42.244095, 36.904583, 20.936375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.142540, 36.745201, 20.788443>,  <41.973286, 36.479565, 20.541889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142540, 36.745201, 20.788443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212059, 0.588808, -0.779959,
		-0.880899, 0.460742, 0.108321,
		0.423140, 0.664095, 0.616385,
		42.269482, 36.944431, 20.973358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729679, 37.142982, 20.301434>,  <41.973286, 36.479565, 20.541889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729679, 37.142982, 20.301434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050686, 37.234447, 20.521864>,  <42.243290, 37.289330, 20.654121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050686, 37.234447, 20.521864>,  <41.729679, 37.142982, 20.301434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050686, 37.234447, 20.521864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341116, 0.581941, -0.738231,
		-0.489502, 0.780420, 0.389013,
		0.802513, 0.228667, 0.551075,
		42.291439, 37.303047, 20.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836926, 37.852798, 20.133598>,  <41.729679, 37.142982, 20.301434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836926, 37.852798, 20.133598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.179684, 37.713223, 20.285372>,  <42.385338, 37.629475, 20.376436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.179684, 37.713223, 20.285372>,  <41.836926, 37.852798, 20.133598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179684, 37.713223, 20.285372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514962, 0.612797, -0.599411,
		-0.023354, 0.709026, 0.704795,
		0.856894, -0.348944, 0.379433,
		42.436752, 37.608540, 20.399202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390579, 38.449310, 20.411963>,  <41.836926, 37.852798, 20.133598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390579, 38.449310, 20.411963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146469, 38.471092, 20.095837>,  <41.000004, 38.484161, 19.906160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146469, 38.471092, 20.095837>,  <41.390579, 38.449310, 20.411963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146469, 38.471092, 20.095837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628887, -0.639964, 0.441528,
		-0.481730, 0.766474, 0.424800,
		-0.610276, 0.054454, -0.790315,
		40.963387, 38.487427, 19.858742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739357, 38.629612, 20.665503>,  <41.390579, 38.449310, 20.411963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739357, 38.629612, 20.665503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709690, 38.432510, 20.318701>,  <40.691891, 38.314251, 20.110620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709690, 38.432510, 20.318701>,  <40.739357, 38.629612, 20.665503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709690, 38.432510, 20.318701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704054, -0.589846, 0.395461,
		-0.706263, 0.639748, -0.303176,
		-0.074168, -0.492751, -0.867003,
		40.687439, 38.284683, 20.058599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061783, 38.643963, 20.485483>,  <40.739357, 38.629612, 20.665503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061783, 38.643963, 20.485483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210480, 38.328686, 20.289295>,  <40.299698, 38.139519, 20.171583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.210480, 38.328686, 20.289295>,  <40.061783, 38.643963, 20.485483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210480, 38.328686, 20.289295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750952, -0.565931, 0.340283,
		-0.545780, 0.241820, -0.802276,
		0.371745, -0.788191, -0.490469,
		40.322002, 38.092228, 20.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524265, 38.373833, 20.051693>,  <40.061783, 38.643963, 20.485483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524265, 38.373833, 20.051693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783691, 38.071175, 20.084793>,  <39.939346, 37.889580, 20.104652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783691, 38.071175, 20.084793>,  <39.524265, 38.373833, 20.051693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783691, 38.071175, 20.084793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759140, -0.635101, 0.142664,
		-0.055392, -0.155346, -0.986306,
		0.648566, -0.756647, 0.082750,
		39.978260, 37.844181, 20.109617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195854, 37.809181, 19.776234>,  <39.524265, 38.373833, 20.051693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195854, 37.809181, 19.776234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477448, 37.642719, 20.006443>,  <39.646404, 37.542843, 20.144569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477448, 37.642719, 20.006443>,  <39.195854, 37.809181, 19.776234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477448, 37.642719, 20.006443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647204, -0.709600, 0.278558,
		0.292469, -0.568581, -0.768881,
		0.703981, -0.416153, 0.575524,
		39.688641, 37.517872, 20.179100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092075, 37.059334, 19.712133>,  <39.195854, 37.809181, 19.776234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092075, 37.059334, 19.712133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.331211, 37.094460, 20.030851>,  <39.474693, 37.115536, 20.222082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.331211, 37.094460, 20.030851>,  <39.092075, 37.059334, 19.712133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331211, 37.094460, 20.030851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632791, -0.558498, 0.536336,
		0.492104, -0.824845, -0.278325,
		0.597838, 0.087811, 0.796793,
		39.510563, 37.120804, 20.269890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974533, 36.416553, 20.111042>,  <39.092075, 37.059334, 19.712133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974533, 36.416553, 20.111042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160004, 36.645302, 20.381733>,  <39.271286, 36.782551, 20.544147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160004, 36.645302, 20.381733>,  <38.974533, 36.416553, 20.111042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160004, 36.645302, 20.381733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541305, -0.421828, 0.727358,
		0.701421, -0.703577, 0.113966,
		0.463678, 0.571875, 0.676728,
		39.299107, 36.816864, 20.584751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.883472, 42.415192, 20.551332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.083378, 42.140343, 20.762274>,  <44.203320, 41.975433, 20.888838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.083378, 42.140343, 20.762274>,  <43.883472, 42.415192, 20.551332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083378, 42.140343, 20.762274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851143, -0.502478, 0.151895,
		0.160612, -0.524763, -0.835959,
		0.499760, -0.687124, 0.527352,
		44.233307, 41.934204, 20.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711758, 41.706951, 20.193985>,  <43.883472, 42.415192, 20.551332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711758, 41.706951, 20.193985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.786442, 41.704140, 20.586941>,  <43.831253, 41.702454, 20.822714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.786442, 41.704140, 20.586941>,  <43.711758, 41.706951, 20.193985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786442, 41.704140, 20.586941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933562, -0.312679, 0.175196,
		0.305941, -0.949833, -0.064942,
		0.186712, -0.007028, 0.982389,
		43.842457, 41.702030, 20.881657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262188, 41.136688, 20.533783>,  <43.711758, 41.706951, 20.193985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262188, 41.136688, 20.533783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.396107, 41.332661, 20.855745>,  <43.476460, 41.450245, 21.048923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.396107, 41.332661, 20.855745>,  <43.262188, 41.136688, 20.533783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396107, 41.332661, 20.855745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900541, -0.085082, 0.426364,
		0.277373, -0.867599, 0.412719,
		0.334798, 0.489932, 0.804908,
		43.496548, 41.479641, 21.097218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078560, 40.709698, 21.011751>,  <43.262188, 41.136688, 20.533783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078560, 40.709698, 21.011751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122913, 41.072380, 21.174522>,  <43.149525, 41.289989, 21.272186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.122913, 41.072380, 21.174522>,  <43.078560, 40.709698, 21.011751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122913, 41.072380, 21.174522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909677, -0.072302, 0.408975,
		0.400242, -0.415522, 0.816791,
		0.110882, 0.906705, 0.406929,
		43.156178, 41.344391, 21.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680424, 40.568581, 21.650417>,  <43.078560, 40.709698, 21.011751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680424, 40.568581, 21.650417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.694927, 40.961666, 21.577801>,  <42.703629, 41.197517, 21.534231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.694927, 40.961666, 21.577801>,  <42.680424, 40.568581, 21.650417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694927, 40.961666, 21.577801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837575, 0.128977, 0.530879,
		0.545117, 0.132804, 0.827774,
		0.036261, 0.982715, -0.181541,
		42.705807, 41.256481, 21.523338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732841, 40.789497, 22.272738>,  <42.680424, 40.568581, 21.650417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732841, 40.789497, 22.272738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611904, 41.083870, 22.030416>,  <42.539341, 41.260494, 21.885025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611904, 41.083870, 22.030416>,  <42.732841, 40.789497, 22.272738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611904, 41.083870, 22.030416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701918, 0.258095, 0.663851,
		0.644902, 0.625934, 0.438528,
		-0.302345, 0.735930, -0.605801,
		42.521202, 41.304649, 21.848677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750519, 41.433399, 22.612005>,  <42.732841, 40.789497, 22.272738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750519, 41.433399, 22.612005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.469677, 41.484653, 22.331823>,  <42.301174, 41.515404, 22.163713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.469677, 41.484653, 22.331823>,  <42.750519, 41.433399, 22.612005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469677, 41.484653, 22.331823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698438, 0.067695, 0.712462,
		0.138708, 0.989444, 0.041965,
		-0.702100, 0.128134, -0.700455,
		42.259048, 41.523094, 22.121687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314838, 41.951939, 22.857035>,  <42.750519, 41.433399, 22.612005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314838, 41.951939, 22.857035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.088146, 41.800873, 22.564137>,  <41.952129, 41.710232, 22.388397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.088146, 41.800873, 22.564137>,  <42.314838, 41.951939, 22.857035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088146, 41.800873, 22.564137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819723, 0.169066, 0.547239,
		-0.082876, 0.910376, -0.405397,
		-0.566732, -0.377667, -0.732245,
		41.918125, 41.687572, 22.344463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889629, 42.491596, 22.539284>,  <42.314838, 41.951939, 22.857035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889629, 42.491596, 22.539284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717979, 42.131615, 22.508476>,  <41.614990, 41.915627, 22.489992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717979, 42.131615, 22.508476>,  <41.889629, 42.491596, 22.539284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717979, 42.131615, 22.508476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729190, 0.294852, 0.617530,
		-0.533040, 0.321162, -0.782767,
		-0.429127, -0.899954, -0.077020,
		41.589241, 41.861629, 22.485371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257610, 42.611847, 22.773008>,  <41.889629, 42.491596, 22.539284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257610, 42.611847, 22.773008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223911, 42.215164, 22.734188>,  <41.203693, 41.977154, 22.710896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223911, 42.215164, 22.734188>,  <41.257610, 42.611847, 22.773008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223911, 42.215164, 22.734188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788586, 0.006819, 0.614886,
		-0.609126, 0.128334, -0.782621,
		-0.084247, -0.991708, -0.097049,
		41.198639, 41.917652, 22.705074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571426, 42.555920, 22.647133>,  <41.257610, 42.611847, 22.773008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571426, 42.555920, 22.647133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705894, 42.204597, 22.783112>,  <40.786575, 41.993805, 22.864698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705894, 42.204597, 22.783112>,  <40.571426, 42.555920, 22.647133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705894, 42.204597, 22.783112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625794, 0.061429, 0.777566,
		-0.703825, -0.474132, -0.528989,
		0.336173, -0.878308, 0.339944,
		40.806747, 41.941105, 22.885096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981880, 42.105114, 22.721313>,  <40.571426, 42.555920, 22.647133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981880, 42.105114, 22.721313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249111, 41.956253, 22.979052>,  <40.409451, 41.866936, 23.133694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249111, 41.956253, 22.979052>,  <39.981880, 42.105114, 22.721313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249111, 41.956253, 22.979052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670680, 0.073892, 0.738057,
		-0.322283, -0.925225, -0.200232,
		0.668073, -0.372155, 0.644343,
		40.449532, 41.844608, 23.172356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506443, 41.711948, 22.485983>,  <39.981880, 42.105114, 22.721313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506443, 41.711948, 22.485983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.212692, 41.661125, 22.219286>,  <39.036442, 41.630630, 22.059267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.212692, 41.661125, 22.219286>,  <39.506443, 41.711948, 22.485983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212692, 41.661125, 22.219286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655946, 0.119587, -0.745274,
		0.174428, -0.984660, -0.004478,
		-0.734377, -0.127059, -0.666743,
		38.992378, 41.623009, 22.019262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765976, 41.451057, 21.890104>,  <39.506443, 41.711948, 22.485983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765976, 41.451057, 21.890104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415352, 41.513584, 21.708023>,  <39.204979, 41.551102, 21.598774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415352, 41.513584, 21.708023>,  <39.765976, 41.451057, 21.890104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415352, 41.513584, 21.708023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472862, 0.103456, -0.875042,
		-0.089691, -0.982274, -0.164602,
		-0.876560, 0.156317, -0.455200,
		39.152386, 41.560478, 21.571463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789482, 41.087219, 21.276054>,  <39.765976, 41.451057, 21.890104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789482, 41.087219, 21.276054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493999, 41.350971, 21.220150>,  <39.316708, 41.509220, 21.186607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493999, 41.350971, 21.220150>,  <39.789482, 41.087219, 21.276054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493999, 41.350971, 21.220150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295848, 0.130881, -0.946226,
		-0.605626, -0.740334, -0.291759,
		-0.738709, 0.659376, -0.139761,
		39.272388, 41.548782, 21.178221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565838, 40.979782, 20.493801>,  <39.789482, 41.087219, 21.276054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565838, 40.979782, 20.493801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.418060, 41.342922, 20.573116>,  <39.329395, 41.560806, 20.620707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.418060, 41.342922, 20.573116>,  <39.565838, 40.979782, 20.493801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418060, 41.342922, 20.573116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290505, 0.315526, -0.903355,
		-0.882678, -0.276131, -0.380304,
		-0.369440, 0.907852, 0.198290,
		39.307228, 41.615276, 20.632603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080715, 41.203854, 19.988895>,  <39.565838, 40.979782, 20.493801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080715, 41.203854, 19.988895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206871, 41.553558, 20.136517>,  <39.282566, 41.763382, 20.225090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206871, 41.553558, 20.136517>,  <39.080715, 41.203854, 19.988895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206871, 41.553558, 20.136517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432542, 0.213714, -0.875919,
		-0.844651, 0.435890, -0.310749,
		0.315393, 0.874257, 0.369055,
		39.301491, 41.815834, 20.247232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787521, 41.757641, 19.520479>,  <39.080715, 41.203854, 19.988895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787521, 41.757641, 19.520479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099659, 41.921883, 19.709143>,  <39.286942, 42.020428, 19.822340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099659, 41.921883, 19.709143>,  <38.787521, 41.757641, 19.520479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099659, 41.921883, 19.709143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367801, 0.308629, -0.877195,
		-0.505746, 0.857994, 0.089819,
		0.780349, 0.410602, 0.471659,
		39.333763, 42.045063, 19.850641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883549, 42.352024, 19.115562>,  <38.787521, 41.757641, 19.520479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883549, 42.352024, 19.115562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233624, 42.336010, 19.308413>,  <39.443668, 42.326401, 19.424122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233624, 42.336010, 19.308413>,  <38.883549, 42.352024, 19.115562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233624, 42.336010, 19.308413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443693, 0.463645, -0.766922,
		-0.192828, 0.885116, 0.423541,
		0.875188, -0.040039, 0.482124,
		39.496181, 42.323997, 19.453049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243320, 42.965206, 18.987051>,  <38.883549, 42.352024, 19.115562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243320, 42.965206, 18.987051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544079, 42.741856, 19.127260>,  <39.724533, 42.607845, 19.211386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544079, 42.741856, 19.127260>,  <39.243320, 42.965206, 18.987051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544079, 42.741856, 19.127260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617777, 0.411062, -0.670358,
		0.230229, 0.720582, 0.654030,
		0.751895, -0.558381, 0.350521,
		39.769646, 42.574341, 19.232416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779881, 43.378510, 19.101067>,  <39.243320, 42.965206, 18.987051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779881, 43.378510, 19.101067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961231, 43.023899, 19.064144>,  <40.070042, 42.811131, 19.041990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961231, 43.023899, 19.064144>,  <39.779881, 43.378510, 19.101067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961231, 43.023899, 19.064144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711426, 0.422312, -0.561717,
		0.536961, 0.188998, 0.822164,
		0.453373, -0.886528, -0.092307,
		40.097244, 42.757942, 19.036451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468338, 43.468006, 19.278427>,  <39.779881, 43.378510, 19.101067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468338, 43.468006, 19.278427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455151, 43.148403, 19.038260>,  <40.447239, 42.956642, 18.894159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455151, 43.148403, 19.038260>,  <40.468338, 43.468006, 19.278427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455151, 43.148403, 19.038260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700211, 0.410200, -0.584329,
		0.713174, -0.439686, 0.545948,
		-0.032973, -0.799007, -0.600417,
		40.445259, 42.908703, 18.858135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085747, 43.401672, 19.036833>,  <40.468338, 43.468006, 19.278427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085747, 43.401672, 19.036833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.910431, 43.156757, 18.773619>,  <40.805241, 43.009808, 18.615690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.910431, 43.156757, 18.773619>,  <41.085747, 43.401672, 19.036833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910431, 43.156757, 18.773619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692921, 0.236136, -0.681249,
		0.572504, -0.754551, 0.320769,
		-0.438291, -0.612285, -0.658033,
		40.778942, 42.973072, 18.576208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520649, 42.839031, 18.814863>,  <41.085747, 43.401672, 19.036833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520649, 42.839031, 18.814863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256363, 42.923168, 18.526638>,  <41.097794, 42.973652, 18.353703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.256363, 42.923168, 18.526638>,  <41.520649, 42.839031, 18.814863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256363, 42.923168, 18.526638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747158, 0.276626, -0.604345,
		0.072206, -0.937674, -0.339931,
		-0.660713, 0.210344, -0.720565,
		41.058147, 42.986271, 18.310469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740925, 42.395149, 18.243683>,  <41.520649, 42.839031, 18.814863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740925, 42.395149, 18.243683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.521301, 42.686382, 18.079523>,  <41.389526, 42.861122, 17.981028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.521301, 42.686382, 18.079523>,  <41.740925, 42.395149, 18.243683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521301, 42.686382, 18.079523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747775, 0.208604, -0.630331,
		-0.373325, -0.652973, -0.658980,
		-0.549055, 0.728087, -0.410400,
		41.356586, 42.904808, 17.956404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863712, 41.585011, 18.473801>,  <41.740925, 42.395149, 18.243683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863712, 41.585011, 18.473801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.025700, 41.252155, 18.322252>,  <42.122894, 41.052441, 18.231323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.025700, 41.252155, 18.322252>,  <41.863712, 41.585011, 18.473801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025700, 41.252155, 18.322252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670284, -0.552021, 0.495976,
		-0.621865, 0.053095, -0.781322,
		0.404972, -0.832138, -0.378872,
		42.147190, 41.002514, 18.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350586, 41.172901, 18.256096>,  <41.863712, 41.585011, 18.473801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350586, 41.172901, 18.256096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654110, 40.914448, 18.288914>,  <41.836224, 40.759377, 18.308603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.654110, 40.914448, 18.288914>,  <41.350586, 41.172901, 18.256096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654110, 40.914448, 18.288914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607518, -0.656729, 0.446799,
		-0.234810, -0.388876, -0.890864,
		0.758806, -0.646129, 0.082043,
		41.881752, 40.720608, 18.313526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094814, 40.613235, 18.077539>,  <41.350586, 41.172901, 18.256096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094814, 40.613235, 18.077539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418388, 40.456459, 18.252817>,  <41.612534, 40.362392, 18.357985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418388, 40.456459, 18.252817>,  <41.094814, 40.613235, 18.077539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418388, 40.456459, 18.252817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538850, -0.792352, 0.286038,
		0.235095, -0.467507, -0.852155,
		0.808932, -0.391938, 0.438194,
		41.661068, 40.338879, 18.384275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270924, 39.984478, 17.889090>,  <41.094814, 40.613235, 18.077539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270924, 39.984478, 17.889090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438545, 40.015026, 18.250986>,  <41.539120, 40.033356, 18.468124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438545, 40.015026, 18.250986>,  <41.270924, 39.984478, 17.889090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438545, 40.015026, 18.250986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401061, -0.878407, 0.259906,
		0.814582, -0.471772, -0.337472,
		0.419055, 0.076368, 0.904744,
		41.564262, 40.037937, 18.522409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426769, 39.354416, 17.995281>,  <41.270924, 39.984478, 17.889090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426769, 39.354416, 17.995281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465527, 39.512825, 18.360527>,  <41.488781, 39.607868, 18.579674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465527, 39.512825, 18.360527>,  <41.426769, 39.354416, 17.995281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465527, 39.512825, 18.360527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326676, -0.853953, 0.405027,
		0.940157, -0.337538, 0.046627,
		0.096895, 0.396021, 0.913115,
		41.494595, 39.631630, 18.634462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858131, 38.899025, 18.398685>,  <41.426769, 39.354416, 17.995281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858131, 38.899025, 18.398685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.630909, 39.102734, 18.657284>,  <41.494576, 39.224960, 18.812443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.630909, 39.102734, 18.657284>,  <41.858131, 38.899025, 18.398685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630909, 39.102734, 18.657284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216242, -0.850304, 0.479814,
		0.794075, 0.132760, 0.593144,
		-0.568053, 0.509271, 0.646497,
		41.460491, 39.255516, 18.851233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054646, 38.576748, 19.098879>,  <41.858131, 38.899025, 18.398685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054646, 38.576748, 19.098879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.705845, 38.769054, 19.135704>,  <41.496567, 38.884438, 19.157799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.705845, 38.769054, 19.135704>,  <42.054646, 38.576748, 19.098879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705845, 38.769054, 19.135704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319647, -0.701694, 0.636751,
		0.370732, 0.525818, 0.765554,
		-0.872000, 0.480770, 0.092064,
		41.444244, 38.913284, 19.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932774, 38.587074, 19.741957>,  <42.054646, 38.576748, 19.098879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932774, 38.587074, 19.741957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563873, 38.624191, 19.591841>,  <41.342533, 38.646461, 19.501770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563873, 38.624191, 19.591841>,  <41.932774, 38.587074, 19.741957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563873, 38.624191, 19.591841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310305, -0.756684, 0.575447,
		-0.230578, 0.647161, 0.726647,
		-0.922250, 0.092796, -0.375292,
		41.287197, 38.652031, 19.479254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344444, 38.386436, 20.259325>,  <41.932774, 38.587074, 19.741957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344444, 38.386436, 20.259325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615528, 38.092327, 20.262867>,  <42.778179, 37.915863, 20.264992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.615528, 38.092327, 20.262867>,  <42.344444, 38.386436, 20.259325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615528, 38.092327, 20.262867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637031, 0.581059, -0.506519,
		0.367285, 0.348915, 0.862183,
		0.677712, -0.735274, 0.008855,
		42.818840, 37.871746, 20.265524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931953, 38.679218, 20.488779>,  <42.344444, 38.386436, 20.259325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931953, 38.679218, 20.488779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.077557, 38.352962, 20.308897>,  <43.164921, 38.157211, 20.200968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.077557, 38.352962, 20.308897>,  <42.931953, 38.679218, 20.488779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077557, 38.352962, 20.308897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687121, 0.561122, -0.461526,
		0.628777, -0.141003, 0.764694,
		0.364010, -0.815635, -0.449707,
		43.186760, 38.108273, 20.173985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613976, 38.780052, 20.507975>,  <42.931953, 38.679218, 20.488779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613976, 38.780052, 20.507975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578678, 38.492641, 20.232023>,  <43.557499, 38.320194, 20.066452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578678, 38.492641, 20.232023>,  <43.613976, 38.780052, 20.507975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578678, 38.492641, 20.232023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727560, 0.426544, -0.537324,
		0.680345, -0.549345, 0.485130,
		-0.088247, -0.718527, -0.689878,
		43.552204, 38.277084, 20.025061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278900, 38.455647, 20.450726>,  <43.613976, 38.780052, 20.507975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278900, 38.455647, 20.450726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.056904, 38.379868, 20.126728>,  <43.923706, 38.334400, 19.932329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.056904, 38.379868, 20.126728>,  <44.278900, 38.455647, 20.450726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056904, 38.379868, 20.126728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767033, 0.260294, -0.586437,
		0.321935, -0.946761, 0.000850,
		-0.554994, -0.189446, -0.809995,
		43.890404, 38.323032, 19.883730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823483, 38.084209, 20.054989>,  <44.278900, 38.455647, 20.450726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823483, 38.084209, 20.054989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.532269, 38.163090, 19.792364>,  <44.357540, 38.210419, 19.634789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.532269, 38.163090, 19.792364>,  <44.823483, 38.084209, 20.054989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532269, 38.163090, 19.792364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681791, 0.108268, -0.723491,
		-0.071591, -0.974366, -0.213275,
		-0.728036, 0.197204, -0.656562,
		44.313858, 38.222252, 19.595396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955845, 37.686760, 19.479717>,  <44.823483, 38.084209, 20.054989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955845, 37.686760, 19.479717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.749271, 38.011642, 19.371183>,  <44.625328, 38.206570, 19.306063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.749271, 38.011642, 19.371183>,  <44.955845, 37.686760, 19.479717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749271, 38.011642, 19.371183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697673, 0.215344, -0.683285,
		-0.496537, -0.542174, -0.677863,
		-0.516433, 0.812203, -0.271334,
		44.594341, 38.255302, 19.289783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923706, 37.583214, 18.786140>,  <44.955845, 37.686760, 19.479717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923706, 37.583214, 18.786140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.845978, 37.974556, 18.814589>,  <44.799343, 38.209362, 18.831657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.845978, 37.974556, 18.814589>,  <44.923706, 37.583214, 18.786140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845978, 37.974556, 18.814589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631931, 0.180306, -0.753759,
		-0.750269, -0.101525, -0.653291,
		-0.194317, 0.978357, 0.071121,
		44.787682, 38.268063, 18.835924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802361, 37.811867, 18.036255>,  <44.923706, 37.583214, 18.786140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802361, 37.811867, 18.036255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.895771, 38.118240, 18.275860>,  <44.951817, 38.302063, 18.419622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.895771, 38.118240, 18.275860>,  <44.802361, 37.811867, 18.036255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895771, 38.118240, 18.275860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585254, 0.381238, -0.715636,
		-0.776494, 0.517695, -0.359235,
		0.233527, 0.765931, 0.599012,
		44.965828, 38.348019, 18.455563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890022, 38.371403, 17.679201>,  <44.802361, 37.811867, 18.036255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890022, 38.371403, 17.679201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.104820, 38.510265, 17.986738>,  <45.233700, 38.593582, 18.171261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.104820, 38.510265, 17.986738>,  <44.890022, 38.371403, 17.679201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104820, 38.510265, 17.986738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745332, 0.231631, -0.625161,
		-0.395116, 0.908752, -0.134362,
		0.536994, 0.347155, 0.768844,
		45.265919, 38.614410, 18.217392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.381523, 34.326389, 30.629719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720390, 34.480453, 30.776117>,  <36.923710, 34.572891, 30.863956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720390, 34.480453, 30.776117>,  <36.381523, 34.326389, 30.629719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720390, 34.480453, 30.776117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166174, 0.462211, -0.871061,
		-0.504667, 0.798756, 0.327568,
		0.847170, 0.385163, 0.365995,
		36.974541, 34.596001, 30.885916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457844, 34.967144, 30.311430>,  <36.381523, 34.326389, 30.629719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457844, 34.967144, 30.311430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824547, 34.893196, 30.453068>,  <37.044567, 34.848827, 30.538050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824547, 34.893196, 30.453068>,  <36.457844, 34.967144, 30.311430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824547, 34.893196, 30.453068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396237, 0.308707, -0.864694,
		0.050544, 0.933018, 0.356261,
		0.916756, -0.184869, 0.354094,
		37.099575, 34.837734, 30.559296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866657, 35.627552, 30.235987>,  <36.457844, 34.967144, 30.311430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866657, 35.627552, 30.235987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108513, 35.308983, 30.240324>,  <37.253628, 35.117840, 30.242926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108513, 35.308983, 30.240324>,  <36.866657, 35.627552, 30.235987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108513, 35.308983, 30.240324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381403, 0.277556, -0.881757,
		0.699244, 0.537281, 0.471580,
		0.604641, -0.796425, 0.010841,
		37.289906, 35.070057, 30.243576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526695, 35.959702, 29.977129>,  <36.866657, 35.627552, 30.235987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526695, 35.959702, 29.977129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560089, 35.568172, 29.902370>,  <37.580124, 35.333256, 29.857515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560089, 35.568172, 29.902370>,  <37.526695, 35.959702, 29.977129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560089, 35.568172, 29.902370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459150, 0.204241, -0.864562,
		0.884427, -0.013639, 0.466479,
		0.083483, -0.978826, -0.186898,
		37.585133, 35.274525, 29.846300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195564, 35.970631, 29.658329>,  <37.526695, 35.959702, 29.977129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195564, 35.970631, 29.658329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002148, 35.626854, 29.591942>,  <37.886097, 35.420586, 29.552109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002148, 35.626854, 29.591942>,  <38.195564, 35.970631, 29.658329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002148, 35.626854, 29.591942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260577, 0.039678, -0.964637,
		0.835637, -0.509687, 0.204766,
		-0.483538, -0.859444, -0.165970,
		37.857086, 35.369022, 29.542150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643669, 35.636681, 29.220587>,  <38.195564, 35.970631, 29.658329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643669, 35.636681, 29.220587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289593, 35.451866, 29.198858>,  <38.077145, 35.340977, 29.185822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289593, 35.451866, 29.198858>,  <38.643669, 35.636681, 29.220587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289593, 35.451866, 29.198858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125680, -0.125080, -0.984154,
		0.447924, -0.877994, 0.168789,
		-0.885194, -0.462040, -0.054320,
		38.024033, 35.313255, 29.182562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807682, 35.009850, 28.809278>,  <38.643669, 35.636681, 29.220587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807682, 35.009850, 28.809278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417469, 35.089161, 28.771286>,  <38.183342, 35.136749, 28.748491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417469, 35.089161, 28.771286>,  <38.807682, 35.009850, 28.809278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417469, 35.089161, 28.771286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062185, -0.165522, -0.984244,
		-0.210885, -0.966067, 0.149141,
		-0.975531, 0.198288, -0.094981,
		38.124809, 35.148647, 28.742792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611073, 34.446850, 28.341293>,  <38.807682, 35.009850, 28.809278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611073, 34.446850, 28.341293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332920, 34.734280, 28.337566>,  <38.166027, 34.906738, 28.335331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332920, 34.734280, 28.337566>,  <38.611073, 34.446850, 28.341293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332920, 34.734280, 28.337566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055251, -0.066385, -0.996263,
		-0.716513, -0.692270, 0.085866,
		-0.695383, 0.718579, -0.009317,
		38.124306, 34.949852, 28.334772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182522, 34.161282, 27.896917>,  <38.611073, 34.446850, 28.341293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182522, 34.161282, 27.896917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079899, 34.547794, 27.905653>,  <38.018326, 34.779701, 27.910894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079899, 34.547794, 27.905653>,  <38.182522, 34.161282, 27.896917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079899, 34.547794, 27.905653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091092, -0.001680, -0.995841,
		-0.962226, -0.257481, 0.088452,
		-0.256559, 0.966282, 0.021838,
		38.002930, 34.837677, 27.912205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672462, 34.197990, 27.460497>,  <38.182522, 34.161282, 27.896917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672462, 34.197990, 27.460497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801579, 34.574047, 27.504194>,  <37.879047, 34.799683, 27.530413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801579, 34.574047, 27.504194>,  <37.672462, 34.197990, 27.460497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801579, 34.574047, 27.504194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040915, 0.129173, -0.990778,
		-0.945587, 0.315342, 0.080161,
		0.322788, 0.940146, 0.109242,
		37.898415, 34.856091, 27.536966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283253, 34.518768, 27.065380>,  <37.672462, 34.197990, 27.460497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283253, 34.518768, 27.065380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613670, 34.742661, 27.091736>,  <37.811920, 34.876995, 27.107550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613670, 34.742661, 27.091736>,  <37.283253, 34.518768, 27.065380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613670, 34.742661, 27.091736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024458, 0.152396, -0.988017,
		-0.563068, 0.814539, 0.139577,
		0.826049, 0.559734, 0.065888,
		37.861485, 34.910580, 27.111502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266468, 34.957245, 26.498100>,  <37.283253, 34.518768, 27.065380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266468, 34.957245, 26.498100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643700, 35.026974, 26.611385>,  <37.870041, 35.068813, 26.679356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.643700, 35.026974, 26.611385>,  <37.266468, 34.957245, 26.498100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643700, 35.026974, 26.611385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243080, 0.219852, -0.944763,
		-0.226961, 0.959831, 0.164964,
		0.943081, 0.174325, 0.283213,
		37.926624, 35.079269, 26.696350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832779, 35.601570, 26.154509>,  <37.266468, 34.957245, 26.498100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832779, 35.601570, 26.154509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499687, 35.512363, 25.951799>,  <36.299831, 35.458839, 25.830173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499687, 35.512363, 25.951799>,  <36.832779, 35.601570, 26.154509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499687, 35.512363, 25.951799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540770, 0.131129, 0.830887,
		-0.118847, 0.965955, -0.229795,
		-0.832733, -0.223014, -0.506775,
		36.249866, 35.445457, 25.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362984, 36.088287, 26.344959>,  <36.832779, 35.601570, 26.154509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362984, 36.088287, 26.344959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148022, 35.784523, 26.198273>,  <36.019043, 35.602264, 26.110260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148022, 35.784523, 26.198273>,  <36.362984, 36.088287, 26.344959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148022, 35.784523, 26.198273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671293, 0.122013, 0.731080,
		-0.510449, 0.639062, -0.575361,
		-0.537408, -0.759415, -0.366717,
		35.986801, 35.556698, 26.088257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739498, 36.311398, 26.461153>,  <36.362984, 36.088287, 26.344959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739498, 36.311398, 26.461153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669872, 35.926544, 26.377241>,  <35.628098, 35.695633, 26.326895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669872, 35.926544, 26.377241>,  <35.739498, 36.311398, 26.461153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669872, 35.926544, 26.377241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747310, -0.009667, 0.664405,
		-0.641272, 0.272418, -0.717328,
		-0.174061, -0.962131, -0.209780,
		35.617653, 35.637905, 26.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992794, 36.241959, 26.394144>,  <35.739498, 36.311398, 26.461153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992794, 36.241959, 26.394144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150600, 35.889977, 26.499998>,  <35.245285, 35.678787, 26.563511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150600, 35.889977, 26.499998>,  <34.992794, 36.241959, 26.394144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150600, 35.889977, 26.499998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689260, -0.092931, 0.718529,
		-0.607682, -0.465875, -0.643182,
		0.394517, -0.879957, 0.264636,
		35.268955, 35.625988, 26.579390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428474, 35.849129, 26.468466>,  <34.992794, 36.241959, 26.394144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428474, 35.849129, 26.468466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705742, 35.652935, 26.679724>,  <34.872101, 35.535217, 26.806479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705742, 35.652935, 26.679724>,  <34.428474, 35.849129, 26.468466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705742, 35.652935, 26.679724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645878, -0.097437, 0.757197,
		-0.319936, -0.865983, -0.384337,
		0.693168, -0.490489, 0.528146,
		34.913692, 35.505787, 26.838167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116066, 35.150230, 26.732899>,  <34.428474, 35.849129, 26.468466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116066, 35.150230, 26.732899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431561, 35.233997, 26.964087>,  <34.620857, 35.284256, 27.102798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431561, 35.233997, 26.964087>,  <34.116066, 35.150230, 26.732899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431561, 35.233997, 26.964087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550600, -0.177472, 0.815686,
		0.273390, -0.961587, -0.024674,
		0.788732, 0.209415, 0.577969,
		34.668179, 35.296822, 27.137478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299782, 34.500454, 27.200333>,  <34.116066, 35.150230, 26.732899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299782, 34.500454, 27.200333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410473, 34.850296, 27.359571>,  <34.476887, 35.060204, 27.455114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410473, 34.850296, 27.359571>,  <34.299782, 34.500454, 27.200333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410473, 34.850296, 27.359571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636140, -0.143776, 0.758059,
		0.720243, -0.463020, 0.516588,
		0.276723, 0.874609, 0.398099,
		34.493488, 35.112679, 27.479002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122353, 34.467041, 27.941502>,  <34.299782, 34.500454, 27.200333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122353, 34.467041, 27.941502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194878, 34.857483, 27.893585>,  <34.238392, 35.091747, 27.864836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194878, 34.857483, 27.893585>,  <34.122353, 34.467041, 27.941502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194878, 34.857483, 27.893585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666089, 0.211509, 0.715255,
		0.723499, -0.049893, 0.688520,
		0.181314, 0.976102, -0.119793,
		34.249271, 35.150314, 27.857647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317268, 34.670086, 28.593021>,  <34.122353, 34.467041, 27.941502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317268, 34.670086, 28.593021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211880, 35.010883, 28.412052>,  <34.148647, 35.215363, 28.303471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211880, 35.010883, 28.412052>,  <34.317268, 34.670086, 28.593021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211880, 35.010883, 28.412052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514184, 0.272786, 0.813144,
		0.816208, 0.446873, 0.366209,
		-0.263476, 0.851993, -0.452425,
		34.132835, 35.266479, 28.276325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226524, 35.159351, 29.234715>,  <34.317268, 34.670086, 28.593021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226524, 35.159351, 29.234715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061157, 35.345165, 28.921461>,  <33.961937, 35.456654, 28.733509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061157, 35.345165, 28.921461>,  <34.226524, 35.159351, 29.234715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061157, 35.345165, 28.921461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771859, 0.277471, 0.572052,
		0.483035, 0.840962, 0.243845,
		-0.413414, 0.464535, -0.783132,
		33.937134, 35.484528, 28.686522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003860, 35.805683, 29.499517>,  <34.226524, 35.159351, 29.234715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003860, 35.805683, 29.499517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800808, 35.733372, 29.162560>,  <33.678978, 35.689983, 28.960384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800808, 35.733372, 29.162560>,  <34.003860, 35.805683, 29.499517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800808, 35.733372, 29.162560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835701, 0.341126, 0.430390,
		0.209558, 0.922470, -0.324243,
		-0.507630, -0.180779, -0.842396,
		33.648518, 35.679138, 28.909842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809849, 36.482708, 29.249615>,  <34.003860, 35.805683, 29.499517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809849, 36.482708, 29.249615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561275, 36.194622, 29.126253>,  <33.412132, 36.021770, 29.052237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561275, 36.194622, 29.126253>,  <33.809849, 36.482708, 29.249615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561275, 36.194622, 29.126253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776032, 0.511747, 0.368633,
		-0.107668, 0.468413, -0.876925,
		-0.621436, -0.720212, -0.308404,
		33.374844, 35.978558, 29.033731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227261, 36.941502, 29.027147>,  <33.809849, 36.482708, 29.249615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227261, 36.941502, 29.027147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063534, 36.576782, 29.013947>,  <32.965298, 36.357952, 29.006027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063534, 36.576782, 29.013947>,  <33.227261, 36.941502, 29.027147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063534, 36.576782, 29.013947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911983, 0.407783, 0.044715,
		-0.027314, 0.048399, -0.998455,
		-0.409317, -0.911795, -0.033001,
		32.940739, 36.303246, 29.004045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559242, 37.013027, 28.601254>,  <33.227261, 36.941502, 29.027147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559242, 37.013027, 28.601254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525822, 36.684322, 28.826723>,  <32.505772, 36.487099, 28.962006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525822, 36.684322, 28.826723>,  <32.559242, 37.013027, 28.601254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525822, 36.684322, 28.826723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884287, 0.321916, 0.338241,
		-0.459410, -0.470191, -0.753567,
		-0.083547, -0.821760, 0.563675,
		32.500759, 36.437794, 28.995825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851120, 36.849915, 28.650169>,  <32.559242, 37.013027, 28.601254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851120, 36.849915, 28.650169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995840, 36.649853, 28.964861>,  <32.082672, 36.529816, 29.153675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995840, 36.649853, 28.964861>,  <31.851120, 36.849915, 28.650169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995840, 36.649853, 28.964861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805712, 0.256761, 0.533762,
		-0.468967, -0.826991, -0.310088,
		0.361798, -0.500159, 0.786729,
		32.104378, 36.499805, 29.200880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155052, 37.644020, 28.693340>,  <31.851120, 36.849915, 28.650169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155052, 37.644020, 28.693340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399773, 37.897682, 28.882462>,  <32.546604, 38.049881, 28.995934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399773, 37.897682, 28.882462>,  <32.155052, 37.644020, 28.693340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399773, 37.897682, 28.882462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089894, 0.538105, -0.838070,
		-0.785885, 0.555236, 0.272208,
		0.611804, 0.634157, 0.472801,
		32.583313, 38.087929, 29.024302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853926, 38.264385, 28.777620>,  <32.155052, 37.644020, 28.693340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853926, 38.264385, 28.777620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248802, 38.326565, 28.763243>,  <32.485729, 38.363873, 28.754616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248802, 38.326565, 28.763243>,  <31.853926, 38.264385, 28.777620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248802, 38.326565, 28.763243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115049, 0.537463, -0.835403,
		-0.110545, 0.828836, 0.548462,
		0.987190, 0.155450, -0.035943,
		32.544960, 38.373199, 28.752460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870222, 38.676289, 28.200485>,  <31.853926, 38.264385, 28.777620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870222, 38.676289, 28.200485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262115, 38.616859, 28.254225>,  <32.497250, 38.581200, 28.286469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.262115, 38.616859, 28.254225>,  <31.870222, 38.676289, 28.200485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262115, 38.616859, 28.254225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191186, 0.493509, -0.848467,
		0.059759, 0.856956, 0.511913,
		0.979733, -0.148574, 0.134347,
		32.556034, 38.572289, 28.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081673, 39.330803, 28.148663>,  <31.870222, 38.676289, 28.200485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081673, 39.330803, 28.148663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383316, 39.079441, 28.072313>,  <32.564301, 38.928623, 28.026505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383316, 39.079441, 28.072313>,  <32.081673, 39.330803, 28.148663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383316, 39.079441, 28.072313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050717, 0.345486, -0.937053,
		0.654789, 0.696959, 0.292404,
		0.754108, -0.628402, -0.190873,
		32.609547, 38.890919, 28.015051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559731, 39.768456, 27.848265>,  <32.081673, 39.330803, 28.148663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559731, 39.768456, 27.848265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704563, 39.411114, 27.741827>,  <32.791462, 39.196709, 27.677965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704563, 39.411114, 27.741827>,  <32.559731, 39.768456, 27.848265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704563, 39.411114, 27.741827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339671, 0.392289, -0.854829,
		0.868054, 0.219137, 0.445490,
		0.362086, -0.893358, -0.266093,
		32.813190, 39.143105, 27.661999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245739, 39.829582, 27.721891>,  <32.559731, 39.768456, 27.848265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245739, 39.829582, 27.721891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118073, 39.513336, 27.512871>,  <33.041473, 39.323589, 27.387459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118073, 39.513336, 27.512871>,  <33.245739, 39.829582, 27.721891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118073, 39.513336, 27.512871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408808, 0.382593, -0.828552,
		0.854990, -0.478072, 0.201097,
		-0.319169, -0.790613, -0.522553,
		33.022320, 39.276154, 27.356106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774479, 39.696213, 27.339348>,  <33.245739, 39.829582, 27.721891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774479, 39.696213, 27.339348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488865, 39.491699, 27.148037>,  <33.317497, 39.368992, 27.033251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488865, 39.491699, 27.148037>,  <33.774479, 39.696213, 27.339348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488865, 39.491699, 27.148037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324504, 0.363639, -0.873192,
		0.620367, -0.778690, -0.093738,
		-0.714032, -0.511281, -0.478277,
		33.274654, 39.338314, 27.004553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039104, 39.493149, 26.643986>,  <33.774479, 39.696213, 27.339348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039104, 39.493149, 26.643986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647449, 39.422981, 26.602953>,  <33.412457, 39.380882, 26.578333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647449, 39.422981, 26.602953>,  <34.039104, 39.493149, 26.643986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647449, 39.422981, 26.602953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071544, 0.174907, -0.981982,
		0.190212, -0.968830, -0.158706,
		-0.979133, -0.175430, -0.102584,
		33.353710, 39.370358, 26.572178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046196, 39.056938, 26.152449>,  <34.039104, 39.493149, 26.643986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046196, 39.056938, 26.152449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674202, 39.200901, 26.182377>,  <33.451004, 39.287277, 26.200335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674202, 39.200901, 26.182377>,  <34.046196, 39.056938, 26.152449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674202, 39.200901, 26.182377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040729, 0.101402, -0.994011,
		-0.365336, -0.927462, -0.079644,
		-0.929984, 0.359905, 0.074820,
		33.395206, 39.308872, 26.204823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590271, 38.684711, 25.636776>,  <34.046196, 39.056938, 26.152449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590271, 38.684711, 25.636776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419479, 39.039738, 25.705973>,  <33.317005, 39.252754, 25.747490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419479, 39.039738, 25.705973>,  <33.590271, 38.684711, 25.636776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419479, 39.039738, 25.705973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123680, 0.246828, -0.961134,
		-0.895764, -0.388988, -0.215164,
		-0.426978, 0.887561, 0.172990,
		33.291386, 39.306007, 25.757870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154205, 38.870140, 25.048016>,  <33.590271, 38.684711, 25.636776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154205, 38.870140, 25.048016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245739, 39.212517, 25.233488>,  <33.300659, 39.417942, 25.344772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245739, 39.212517, 25.233488>,  <33.154205, 38.870140, 25.048016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245739, 39.212517, 25.233488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303949, 0.389683, -0.869346,
		-0.924798, 0.339868, -0.170992,
		0.228831, 0.855942, 0.463680,
		33.314388, 39.469299, 25.372593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958717, 39.361217, 24.613813>,  <33.154205, 38.870140, 25.048016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958717, 39.361217, 24.613813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207306, 39.560799, 24.855415>,  <33.356461, 39.680546, 25.000376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207306, 39.560799, 24.855415>,  <32.958717, 39.361217, 24.613813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207306, 39.560799, 24.855415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462551, 0.388564, -0.796910,
		-0.632313, 0.774639, 0.010691,
		0.621471, 0.498952, 0.604004,
		33.393745, 39.710484, 25.036617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124016, 40.085785, 24.321396>,  <32.958717, 39.361217, 24.613813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124016, 40.085785, 24.321396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428364, 39.978321, 24.557667>,  <33.610973, 39.913841, 24.699430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428364, 39.978321, 24.557667>,  <33.124016, 40.085785, 24.321396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428364, 39.978321, 24.557667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648356, 0.277282, -0.709048,
		0.026708, 0.922462, 0.385163,
		0.760868, -0.268660, 0.590678,
		33.656624, 39.897724, 24.734871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584846, 40.614368, 24.245043>,  <33.124016, 40.085785, 24.321396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584846, 40.614368, 24.245043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805519, 40.321293, 24.404448>,  <33.937923, 40.145447, 24.500090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805519, 40.321293, 24.404448>,  <33.584846, 40.614368, 24.245043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805519, 40.321293, 24.404448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798274, 0.325397, -0.506829,
		0.241675, 0.597729, 0.764404,
		0.551681, -0.732692, 0.398511,
		33.971024, 40.101486, 24.524000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214554, 40.983822, 24.463230>,  <33.584846, 40.614368, 24.245043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214554, 40.983822, 24.463230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299290, 40.593887, 24.435453>,  <34.350132, 40.359928, 24.418787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299290, 40.593887, 24.435453>,  <34.214554, 40.983822, 24.463230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299290, 40.593887, 24.435453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887633, 0.221650, -0.403706,
		0.408938, 0.023883, 0.912250,
		0.211841, -0.974834, -0.069441,
		34.362843, 40.301437, 24.414621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910828, 40.852013, 24.781633>,  <34.214554, 40.983822, 24.463230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910828, 40.852013, 24.781633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853626, 40.535545, 24.543774>,  <34.819305, 40.345665, 24.401058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853626, 40.535545, 24.543774>,  <34.910828, 40.852013, 24.781633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853626, 40.535545, 24.543774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915077, 0.123213, -0.383995,
		0.377072, -0.599061, 0.706358,
		-0.143004, -0.791166, -0.594648,
		34.810726, 40.298195, 24.365379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548309, 40.608192, 24.765726>,  <34.910828, 40.852013, 24.781633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548309, 40.608192, 24.765726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364494, 40.459003, 24.443308>,  <35.254204, 40.369488, 24.249857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364494, 40.459003, 24.443308>,  <35.548309, 40.608192, 24.765726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364494, 40.459003, 24.443308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870141, -0.007202, -0.492751,
		0.177979, -0.927813, 0.327851,
		-0.459542, -0.372976, -0.806046,
		35.226631, 40.347111, 24.201494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060440, 40.137470, 24.529470>,  <35.548309, 40.608192, 24.765726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060440, 40.137470, 24.529470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839241, 40.127674, 24.196341>,  <35.706520, 40.121796, 23.996464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839241, 40.127674, 24.196341>,  <36.060440, 40.137470, 24.529470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839241, 40.127674, 24.196341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805144, 0.241424, -0.541717,
		0.214330, -0.970111, -0.113790,
		-0.552997, -0.024489, -0.832823,
		35.673344, 40.120327, 23.946493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347073, 39.574890, 24.083878>,  <36.060440, 40.137470, 24.529470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347073, 39.574890, 24.083878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159126, 39.868969, 23.888445>,  <36.046360, 40.045418, 23.771185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159126, 39.868969, 23.888445>,  <36.347073, 39.574890, 24.083878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159126, 39.868969, 23.888445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869010, 0.288018, -0.402327,
		-0.155069, -0.613622, -0.774223,
		-0.469867, 0.735196, -0.488582,
		36.018166, 40.089527, 23.741871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582314, 39.457973, 23.406307>,  <36.347073, 39.574890, 24.083878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582314, 39.457973, 23.406307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433434, 39.827942, 23.437252>,  <36.344105, 40.049923, 23.455818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433434, 39.827942, 23.437252>,  <36.582314, 39.457973, 23.406307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433434, 39.827942, 23.437252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751273, 0.349164, -0.560066,
		-0.545030, -0.150335, -0.824828,
		-0.372198, 0.924924, 0.077363,
		36.321774, 40.105419, 23.460461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755383, 39.708668, 22.730049>,  <36.582314, 39.457973, 23.406307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755383, 39.708668, 22.730049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682129, 40.026134, 22.962101>,  <36.638176, 40.216614, 23.101332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682129, 40.026134, 22.962101>,  <36.755383, 39.708668, 22.730049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682129, 40.026134, 22.962101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677764, 0.529380, -0.510286,
		-0.712108, 0.299740, -0.634869,
		-0.183133, 0.793670, 0.580129,
		36.627190, 40.264236, 23.136139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707127, 40.350082, 22.339109>,  <36.755383, 39.708668, 22.730049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707127, 40.350082, 22.339109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776405, 40.485504, 22.709057>,  <36.817974, 40.566757, 22.931025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776405, 40.485504, 22.709057>,  <36.707127, 40.350082, 22.339109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776405, 40.485504, 22.709057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765594, 0.544462, -0.342677,
		-0.619571, 0.767425, -0.164895,
		0.173200, 0.338555, 0.924869,
		36.828365, 40.587070, 22.986517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819450, 41.058037, 22.261213>,  <36.707127, 40.350082, 22.339109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819450, 41.058037, 22.261213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996376, 40.977394, 22.610775>,  <37.102531, 40.929008, 22.820513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996376, 40.977394, 22.610775>,  <36.819450, 41.058037, 22.261213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996376, 40.977394, 22.610775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763117, 0.596521, -0.248625,
		-0.471179, 0.776863, 0.417701,
		0.442315, -0.201608, 0.873906,
		37.129070, 40.916912, 22.872948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172527, 41.661118, 22.385542>,  <36.819450, 41.058037, 22.261213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172527, 41.661118, 22.385542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356678, 41.388374, 22.612917>,  <37.467167, 41.224728, 22.749342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356678, 41.388374, 22.612917>,  <37.172527, 41.661118, 22.385542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356678, 41.388374, 22.612917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887556, 0.366004, -0.279797,
		-0.017268, 0.633331, 0.773688,
		0.460377, -0.681860, 0.568437,
		37.494793, 41.183815, 22.783447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666897, 42.121239, 22.723099>,  <37.172527, 41.661118, 22.385542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666897, 42.121239, 22.723099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789207, 41.740566, 22.734488>,  <37.862595, 41.512165, 22.741322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789207, 41.740566, 22.734488>,  <37.666897, 42.121239, 22.723099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789207, 41.740566, 22.734488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904714, 0.281110, -0.320109,
		0.296636, 0.123641, 0.946953,
		0.305776, -0.951678, 0.028473,
		37.880939, 41.455063, 22.743029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300049, 42.120361, 22.954113>,  <37.666897, 42.121239, 22.723099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300049, 42.120361, 22.954113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303509, 41.762512, 22.775415>,  <38.305584, 41.547802, 22.668198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303509, 41.762512, 22.775415>,  <38.300049, 42.120361, 22.954113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303509, 41.762512, 22.775415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875133, 0.222925, -0.429471,
		0.483804, -0.387244, 0.784841,
		0.008651, -0.894621, -0.446743,
		38.306103, 41.494125, 22.641392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956093, 41.965317, 22.916523>,  <38.300049, 42.120361, 22.954113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956093, 41.965317, 22.916523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823311, 41.704899, 22.643480>,  <38.743641, 41.548649, 22.479654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823311, 41.704899, 22.643480>,  <38.956093, 41.965317, 22.916523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823311, 41.704899, 22.643480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744508, 0.263531, -0.613399,
		0.579236, -0.711827, 0.397225,
		-0.331953, -0.651041, -0.682608,
		38.723724, 41.509586, 22.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595558, 41.744999, 23.197916>,  <38.956093, 41.965317, 22.916523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595558, 41.744999, 23.197916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.945858, 41.734463, 23.390734>,  <40.156036, 41.728142, 23.506424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.945858, 41.734463, 23.390734>,  <39.595558, 41.744999, 23.197916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945858, 41.734463, 23.390734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471401, -0.262025, 0.842095,
		0.104124, -0.964702, -0.241886,
		0.875750, -0.026343, 0.482044,
		40.208584, 41.726559, 23.535347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395458, 41.347179, 23.766962>,  <39.595558, 41.744999, 23.197916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395458, 41.347179, 23.766962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742027, 41.514580, 23.875898>,  <39.949970, 41.615021, 23.941259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742027, 41.514580, 23.875898>,  <39.395458, 41.347179, 23.766962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742027, 41.514580, 23.875898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305357, 0.012561, 0.952155,
		0.395057, -0.908130, 0.138675,
		0.866422, 0.418501, 0.272341,
		40.001953, 41.640129, 23.957602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777355, 40.882511, 24.237654>,  <39.395458, 41.347179, 23.766962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777355, 40.882511, 24.237654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870239, 41.268456, 24.286854>,  <39.925968, 41.500023, 24.316374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870239, 41.268456, 24.286854>,  <39.777355, 40.882511, 24.237654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870239, 41.268456, 24.286854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140734, -0.091799, 0.985783,
		0.962431, -0.246216, 0.114472,
		0.232207, 0.964858, 0.123001,
		39.939899, 41.557915, 24.323753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300266, 40.896755, 24.825842>,  <39.777355, 40.882511, 24.237654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300266, 40.896755, 24.825842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146969, 41.263306, 24.779560>,  <40.054993, 41.483234, 24.751791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146969, 41.263306, 24.779560>,  <40.300266, 40.896755, 24.825842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146969, 41.263306, 24.779560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099726, 0.083484, 0.991506,
		0.918249, 0.391525, 0.059392,
		-0.383242, 0.916372, -0.115704,
		40.031998, 41.538216, 24.744848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510872, 41.202229, 25.359131>,  <40.300266, 40.896755, 24.825842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510872, 41.202229, 25.359131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194798, 41.414371, 25.236277>,  <40.005154, 41.541656, 25.162563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.194798, 41.414371, 25.236277>,  <40.510872, 41.202229, 25.359131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194798, 41.414371, 25.236277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353259, 0.015381, 0.935399,
		0.500820, 0.847635, 0.175200,
		-0.790182, 0.530357, -0.307138,
		39.957745, 41.573479, 25.144135>
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
