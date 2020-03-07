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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.776360, 52.685535, 50.298527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784912, 52.986057, 50.034683>,  <36.790043, 53.166370, 49.876377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784912, 52.986057, 50.034683>,  <36.776360, 52.685535, 50.298527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784912, 52.986057, 50.034683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988298, -0.115551, -0.099573,
		-0.151028, -0.649758, -0.744987,
		0.021386, 0.751308, -0.659606,
		36.791328, 53.211449, 49.836800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018295, 52.512486, 49.621483>,  <36.776360, 52.685535, 50.298527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018295, 52.512486, 49.621483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129642, 52.885372, 49.713989>,  <37.196449, 53.109104, 49.769493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129642, 52.885372, 49.713989>,  <37.018295, 52.512486, 49.621483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129642, 52.885372, 49.713989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933195, -0.205522, -0.294801,
		-0.227290, 0.297874, -0.927152,
		0.278364, 0.932219, 0.231262,
		37.213150, 53.165039, 49.783367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480438, 52.839802, 49.032742>,  <37.018295, 52.512486, 49.621483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480438, 52.839802, 49.032742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562263, 52.988934, 49.394768>,  <37.611359, 53.078415, 49.611984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562263, 52.988934, 49.394768>,  <37.480438, 52.839802, 49.032742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562263, 52.988934, 49.394768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976099, -0.008374, -0.217163,
		-0.073386, 0.927860, -0.365636,
		0.204559, 0.372834, 0.905069,
		37.623631, 53.100784, 49.666290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974495, 53.384167, 48.897629>,  <37.480438, 52.839802, 49.032742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974495, 53.384167, 48.897629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994713, 53.326641, 49.292953>,  <38.006844, 53.292126, 49.530148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994713, 53.326641, 49.292953>,  <37.974495, 53.384167, 48.897629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994713, 53.326641, 49.292953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996791, 0.068763, -0.040971,
		-0.062068, 0.987213, 0.146829,
		0.050543, -0.143815, 0.988313,
		38.009876, 53.283497, 49.589447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281628, 54.038208, 49.288765>,  <37.974495, 53.384167, 48.897629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281628, 54.038208, 49.288765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352638, 53.680382, 49.452835>,  <38.395245, 53.465687, 49.551277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352638, 53.680382, 49.452835>,  <38.281628, 54.038208, 49.288765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352638, 53.680382, 49.452835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974641, 0.102123, -0.199112,
		0.136230, 0.435119, 0.890007,
		0.177527, -0.894563, 0.410173,
		38.405895, 53.412014, 49.575886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956131, 53.898445, 49.168770>,  <38.281628, 54.038208, 49.288765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956131, 53.898445, 49.168770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883400, 53.639412, 49.464764>,  <38.839760, 53.483994, 49.642361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883400, 53.639412, 49.464764>,  <38.956131, 53.898445, 49.168770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883400, 53.639412, 49.464764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961518, -0.274710, -0.004139,
		0.205961, 0.710755, 0.672612,
		-0.181832, -0.647581, 0.739983,
		38.828850, 53.445137, 49.686760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361740, 53.958645, 49.890766>,  <38.956131, 53.898445, 49.168770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361740, 53.958645, 49.890766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272514, 53.587582, 49.770966>,  <39.218979, 53.364944, 49.699085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272514, 53.587582, 49.770966>,  <39.361740, 53.958645, 49.890766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272514, 53.587582, 49.770966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971656, -0.236259, 0.008105,
		-0.078278, -0.289201, 0.954063,
		-0.223062, -0.927655, -0.299498,
		39.205597, 53.309284, 49.681118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667141, 53.470268, 50.272896>,  <39.361740, 53.958645, 49.890766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667141, 53.470268, 50.272896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627876, 53.318855, 49.904747>,  <39.604317, 53.228008, 49.683857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627876, 53.318855, 49.904747>,  <39.667141, 53.470268, 50.272896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627876, 53.318855, 49.904747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979378, -0.200853, -0.021848,
		-0.176589, -0.903532, 0.390443,
		-0.098162, -0.378533, -0.920368,
		39.598427, 53.205296, 49.628635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918091, 52.818157, 50.193203>,  <39.667141, 53.470268, 50.272896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918091, 52.818157, 50.193203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959431, 52.965717, 49.823719>,  <39.984234, 53.054253, 49.602028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959431, 52.965717, 49.823719>,  <39.918091, 52.818157, 50.193203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959431, 52.965717, 49.823719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947065, -0.320293, -0.021947,
		-0.303953, -0.872541, -0.382473,
		0.103353, 0.368897, -0.923706,
		39.990437, 53.076385, 49.546608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202095, 52.329018, 49.741470>,  <39.918091, 52.818157, 50.193203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202095, 52.329018, 49.741470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279362, 52.706734, 49.634888>,  <40.325722, 52.933365, 49.570938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279362, 52.706734, 49.634888>,  <40.202095, 52.329018, 49.741470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279362, 52.706734, 49.634888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975982, -0.212802, -0.046624,
		-0.100730, -0.251054, -0.962718,
		0.193163, 0.944292, -0.266460,
		40.337311, 52.990021, 49.554951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527489, 52.342907, 49.149216>,  <40.202095, 52.329018, 49.741470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527489, 52.342907, 49.149216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631775, 52.676910, 49.343037>,  <40.694347, 52.877312, 49.459332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631775, 52.676910, 49.343037>,  <40.527489, 52.342907, 49.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631775, 52.676910, 49.343037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949774, -0.311827, 0.026323,
		0.173078, 0.453357, -0.874364,
		0.260716, 0.835004, 0.484557,
		40.709991, 52.927410, 49.488403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158833, 52.387657, 49.379425>,  <40.527489, 52.342907, 49.149216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158833, 52.387657, 49.379425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263168, 52.738602, 49.218327>,  <41.325768, 52.949169, 49.121666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263168, 52.738602, 49.218327>,  <41.158833, 52.387657, 49.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263168, 52.738602, 49.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806540, 0.427313, 0.408529,
		0.530525, 0.218272, 0.819085,
		0.260836, 0.877360, -0.402745,
		41.341419, 53.001808, 49.097504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300541, 52.235569, 50.057404>,  <41.158833, 52.387657, 49.379425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300541, 52.235569, 50.057404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656002, 52.054291, 50.085438>,  <41.869278, 51.945526, 50.102257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656002, 52.054291, 50.085438>,  <41.300541, 52.235569, 50.057404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656002, 52.054291, 50.085438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134215, 0.403167, 0.905231,
		-0.438499, -0.795030, 0.419101,
		0.888653, -0.453193, 0.070084,
		41.922600, 51.918331, 50.106464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174366, 51.973198, 50.799255>,  <41.300541, 52.235569, 50.057404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174366, 51.973198, 50.799255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917984, 51.670017, 50.847736>,  <40.764156, 51.488110, 50.876823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917984, 51.670017, 50.847736>,  <41.174366, 51.973198, 50.799255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917984, 51.670017, 50.847736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747461, -0.580411, 0.323147,
		-0.174581, 0.297718, 0.938555,
		-0.640955, -0.757949, 0.121204,
		40.725697, 51.442631, 50.884098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519894, 51.611267, 51.351227>,  <41.174366, 51.973198, 50.799255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519894, 51.611267, 51.351227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221764, 51.384220, 51.211342>,  <41.042885, 51.247993, 51.127411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221764, 51.384220, 51.211342>,  <41.519894, 51.611267, 51.351227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221764, 51.384220, 51.211342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463618, -0.818219, 0.339964,
		-0.479113, 0.091249, 0.872997,
		-0.745324, -0.567619, -0.349715,
		40.998165, 51.213936, 51.106426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466125, 51.185741, 51.900822>,  <41.519894, 51.611267, 51.351227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466125, 51.185741, 51.900822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365280, 51.018730, 51.551624>,  <41.304771, 50.918526, 51.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365280, 51.018730, 51.551624>,  <41.466125, 51.185741, 51.900822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365280, 51.018730, 51.551624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531229, -0.813758, 0.235782,
		-0.808847, -0.404313, 0.426963,
		-0.252115, -0.417526, -0.872989,
		41.289646, 50.893471, 51.289726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569214, 50.359646, 51.784367>,  <41.466125, 51.185741, 51.900822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569214, 50.359646, 51.784367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312305, 50.641457, 51.663616>,  <41.158161, 50.810543, 51.591167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312305, 50.641457, 51.663616>,  <41.569214, 50.359646, 51.784367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312305, 50.641457, 51.663616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725252, -0.431171, 0.536750,
		0.247996, 0.563674, 0.787889,
		-0.642267, 0.704531, -0.301877,
		41.119625, 50.852818, 51.573051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179077, 50.821831, 51.868980>,  <41.569214, 50.359646, 51.784367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179077, 50.821831, 51.868980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293518, 51.196526, 51.788307>,  <42.362183, 51.421341, 51.739902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293518, 51.196526, 51.788307>,  <42.179077, 50.821831, 51.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293518, 51.196526, 51.788307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107262, 0.177850, 0.978195,
		0.952177, -0.301496, -0.049593,
		0.286101, 0.936734, -0.201683,
		42.379349, 51.477547, 51.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842651, 51.073818, 52.244625>,  <42.179077, 50.821831, 51.868980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842651, 51.073818, 52.244625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561016, 51.352974, 52.192139>,  <42.392036, 51.520466, 52.160648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561016, 51.352974, 52.192139>,  <42.842651, 51.073818, 52.244625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561016, 51.352974, 52.192139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071498, 0.253507, 0.964688,
		0.706505, 0.669842, -0.228389,
		-0.704087, 0.697886, -0.131211,
		42.349789, 51.562340, 52.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033585, 51.803005, 52.503284>,  <42.842651, 51.073818, 52.244625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033585, 51.803005, 52.503284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672443, 51.633644, 52.533180>,  <42.455757, 51.532028, 52.551117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672443, 51.633644, 52.533180>,  <43.033585, 51.803005, 52.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672443, 51.633644, 52.533180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044297, 0.081303, 0.995705,
		-0.427660, 0.902286, -0.054650,
		-0.902854, -0.423402, 0.074739,
		42.401588, 51.506622, 52.555603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429867, 52.184448, 52.066231>,  <43.033585, 51.803005, 52.503284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429867, 52.184448, 52.066231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714363, 51.916832, 52.152504>,  <43.885063, 51.756264, 52.204269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714363, 51.916832, 52.152504>,  <43.429867, 52.184448, 52.066231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714363, 51.916832, 52.152504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593360, 0.406889, -0.694525,
		0.376904, 0.621956, 0.686377,
		0.711243, -0.669038, 0.215686,
		43.927734, 51.716122, 52.217209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226173, 52.498539, 52.256149>,  <43.429867, 52.184448, 52.066231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226173, 52.498539, 52.256149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184696, 52.152691, 52.059509>,  <44.159809, 51.945183, 51.941525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184696, 52.152691, 52.059509>,  <44.226173, 52.498539, 52.256149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184696, 52.152691, 52.059509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352131, 0.430338, -0.831151,
		0.930189, -0.259295, 0.259837,
		-0.103696, -0.864624, -0.491601,
		44.153587, 51.893303, 51.912029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833046, 52.397015, 51.819595>,  <44.226173, 52.498539, 52.256149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833046, 52.397015, 51.819595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524361, 52.204208, 51.653641>,  <44.339149, 52.088524, 51.554070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524361, 52.204208, 51.653641>,  <44.833046, 52.397015, 51.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524361, 52.204208, 51.653641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191795, 0.445596, -0.874448,
		0.606365, -0.754392, -0.251424,
		-0.771710, -0.482013, -0.414883,
		44.292847, 52.059605, 51.529175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141659, 52.065556, 51.269691>,  <44.833046, 52.397015, 51.819595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141659, 52.065556, 51.269691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757771, 52.154442, 51.200924>,  <44.527439, 52.207775, 51.159664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757771, 52.154442, 51.200924>,  <45.141659, 52.065556, 51.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757771, 52.154442, 51.200924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266350, 0.524880, -0.808430,
		-0.089412, -0.821657, -0.562926,
		-0.959720, 0.222218, -0.171918,
		44.469856, 52.221107, 51.149349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829098, 52.211407, 51.643524>,  <45.141659, 52.065556, 51.269691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829098, 52.211407, 51.643524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169849, 52.054848, 51.782730>,  <46.374298, 51.960915, 51.866253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169849, 52.054848, 51.782730>,  <45.829098, 52.211407, 51.643524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169849, 52.054848, 51.782730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432085, 0.900726, -0.044663,
		-0.295989, 0.188421, 0.936423,
		0.851876, -0.391394, 0.348019,
		46.425411, 51.937431, 51.887135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218163, 52.661835, 52.171284>,  <45.829098, 52.211407, 51.643524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218163, 52.661835, 52.171284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507519, 52.433319, 52.016190>,  <46.681133, 52.296211, 51.923134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507519, 52.433319, 52.016190>,  <46.218163, 52.661835, 52.171284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507519, 52.433319, 52.016190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609218, 0.792400, -0.030913,
		0.324903, -0.213854, 0.921252,
		0.723389, -0.571287, -0.387737,
		46.724537, 52.261932, 51.899868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764351, 52.690239, 52.613457>,  <46.218163, 52.661835, 52.171284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764351, 52.690239, 52.613457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861992, 52.628998, 52.230423>,  <46.920574, 52.592251, 52.000603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861992, 52.628998, 52.230423>,  <46.764351, 52.690239, 52.613457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861992, 52.628998, 52.230423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543409, 0.839457, 0.004302,
		0.803195, -0.521412, 0.288109,
		0.244098, -0.153106, -0.957588,
		46.935223, 52.583065, 51.943146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330921, 52.560913, 52.303059>,  <46.764351, 52.690239, 52.613457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330921, 52.560913, 52.303059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508247, 52.257210, 52.112484>,  <47.614643, 52.074986, 51.998138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508247, 52.257210, 52.112484>,  <47.330921, 52.560913, 52.303059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508247, 52.257210, 52.112484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886289, 0.450759, 0.106335,
		0.134022, -0.469401, 0.872755,
		0.443316, -0.759262, -0.476437,
		47.641243, 52.029430, 51.969551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.028412, 52.756245, 52.293377>,  <47.330921, 52.560913, 52.303059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.028412, 52.756245, 52.293377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032833, 52.426052, 52.067650>,  <48.035484, 52.227936, 51.932213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032833, 52.426052, 52.067650>,  <48.028412, 52.756245, 52.293377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.032833, 52.426052, 52.067650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907549, 0.245208, -0.340922,
		0.419800, -0.508376, 0.751879,
		0.011050, -0.825486, -0.564315,
		48.036148, 52.178406, 51.898354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.629852, 52.203068, 52.369434>,  <48.028412, 52.756245, 52.293377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.629852, 52.203068, 52.369434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.522335, 52.186489, 51.984512>,  <48.457825, 52.176544, 51.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.522335, 52.186489, 51.984512>,  <48.629852, 52.203068, 52.369434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.522335, 52.186489, 51.984512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955915, 0.111149, -0.271794,
		0.118224, -0.992939, 0.009745,
		-0.268792, -0.041448, -0.962306,
		48.441696, 52.174057, 51.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.069462, 51.607342, 52.035000>,  <48.629852, 52.203068, 52.369434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.069462, 51.607342, 52.035000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.925442, 51.883022, 51.783485>,  <48.839031, 52.048431, 51.632576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.925442, 51.883022, 51.783485>,  <49.069462, 51.607342, 52.035000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.925442, 51.883022, 51.783485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919918, 0.150092, -0.362247,
		-0.155284, -0.708858, -0.688046,
		-0.360052, 0.689197, -0.628785,
		48.817425, 52.089783, 51.594849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.363369, 51.477787, 51.428619>,  <49.069462, 51.607342, 52.035000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.363369, 51.477787, 51.428619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.259445, 51.864033, 51.432552>,  <49.197090, 52.095779, 51.434910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.259445, 51.864033, 51.432552>,  <49.363369, 51.477787, 51.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.259445, 51.864033, 51.432552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924850, 0.251743, -0.285094,
		-0.277764, -0.064980, -0.958449,
		-0.259808, 0.965610, 0.009828,
		49.181503, 52.153717, 51.435501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.694611, 51.828552, 50.760208>,  <49.363369, 51.477787, 51.428619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.694611, 51.828552, 50.760208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.611797, 52.098389, 51.043636>,  <49.562107, 52.260288, 51.213692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.611797, 52.098389, 51.043636>,  <49.694611, 51.828552, 50.760208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.611797, 52.098389, 51.043636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693416, 0.612102, -0.380139,
		-0.690153, 0.412631, -0.594496,
		-0.207035, 0.674587, 0.708568,
		49.549686, 52.300766, 51.256207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.478619, 52.505119, 50.470085>,  <49.694611, 51.828552, 50.760208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.478619, 52.505119, 50.470085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.622799, 52.563507, 50.838600>,  <49.709309, 52.598541, 51.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.622799, 52.563507, 50.838600>,  <49.478619, 52.505119, 50.470085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.622799, 52.563507, 50.838600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746857, 0.546544, -0.378805,
		-0.558819, 0.824609, 0.087982,
		0.360452, 0.145974, 0.921285,
		49.730934, 52.607300, 51.114986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.407520, 53.181255, 50.771828>,  <49.478619, 52.505119, 50.470085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.407520, 53.181255, 50.771828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.737381, 52.991360, 50.894836>,  <49.935299, 52.877422, 50.968643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.737381, 52.991360, 50.894836>,  <49.407520, 53.181255, 50.771828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.737381, 52.991360, 50.894836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565570, 0.700751, -0.434832,
		-0.009064, 0.532511, 0.846375,
		0.824650, -0.474743, 0.307523,
		49.984776, 52.848938, 50.987095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.881813, 53.592979, 51.044392>,  <49.407520, 53.181255, 50.771828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.881813, 53.592979, 51.044392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.085735, 53.297943, 50.867283>,  <50.208088, 53.120922, 50.761017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.085735, 53.297943, 50.867283>,  <49.881813, 53.592979, 51.044392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.085735, 53.297943, 50.867283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634346, 0.669967, -0.385681,
		0.581120, -0.084248, 0.809445,
		0.509808, -0.737595, -0.442774,
		50.238678, 53.076664, 50.734451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.332542, 53.917194, 51.552444>,  <49.881813, 53.592979, 51.044392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.332542, 53.917194, 51.552444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.731342, 53.934544, 51.578087>,  <50.970623, 53.944954, 51.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.731342, 53.934544, 51.578087>,  <50.332542, 53.917194, 51.552444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.731342, 53.934544, 51.578087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043608, 0.999046, 0.002240,
		-0.063952, -0.005029, 0.997940,
		0.997000, 0.043375, 0.064110,
		51.030441, 53.947556, 51.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.373692, 54.360180, 52.044014>,  <50.332542, 53.917194, 51.552444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.373692, 54.360180, 52.044014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.676033, 54.386063, 51.783401>,  <50.857437, 54.401592, 51.627033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.676033, 54.386063, 51.783401>,  <50.373692, 54.360180, 52.044014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.676033, 54.386063, 51.783401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126434, 0.990799, -0.048284,
		0.642414, 0.118871, 0.757083,
		0.755857, 0.064703, -0.651532,
		50.902790, 54.405472, 51.587940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.930508, 54.808304, 52.267750>,  <50.373692, 54.360180, 52.044014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.930508, 54.808304, 52.267750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.883591, 54.793613, 51.870781>,  <50.855442, 54.784798, 51.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.883591, 54.793613, 51.870781>,  <50.930508, 54.808304, 52.267750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.883591, 54.793613, 51.870781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254237, 0.967125, -0.005742,
		0.960003, 0.251636, -0.122769,
		-0.117289, -0.036725, -0.992419,
		50.848404, 54.782597, 51.573055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.192352, 55.332260, 52.020542>,  <50.930508, 54.808304, 52.267750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.192352, 55.332260, 52.020542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944363, 55.231674, 51.723248>,  <50.795570, 55.171322, 51.544872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944363, 55.231674, 51.723248>,  <51.192352, 55.332260, 52.020542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.944363, 55.231674, 51.723248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294598, 0.952551, -0.076544,
		0.727217, 0.171500, -0.664638,
		-0.619974, -0.251465, -0.743234,
		50.758369, 55.156235, 51.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.730164, 55.312870, 51.349262>,  <51.192352, 55.332260, 52.020542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.730164, 55.312870, 51.349262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.975143, 55.209702, 51.050362>,  <52.122131, 55.147800, 50.871021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.975143, 55.209702, 51.050362>,  <51.730164, 55.312870, 51.349262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.975143, 55.209702, 51.050362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790201, 0.226218, 0.569568,
		0.022138, -0.939310, 0.342356,
		0.612448, -0.257921, -0.747251,
		52.158878, 55.132324, 50.826187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.446472, 54.914387, 51.621346>,  <51.730164, 55.312870, 51.349262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.446472, 54.914387, 51.621346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.493370, 55.129295, 51.287258>,  <52.521511, 55.258240, 51.086807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.493370, 55.129295, 51.287258>,  <52.446472, 54.914387, 51.621346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.493370, 55.129295, 51.287258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923646, 0.249998, 0.290480,
		0.364871, -0.805504, -0.466940,
		0.117249, 0.537275, -0.835218,
		52.528545, 55.290478, 51.036694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.005913, 54.782116, 51.159000>,  <52.446472, 54.914387, 51.621346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.005913, 54.782116, 51.159000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932072, 55.173801, 51.125397>,  <52.887768, 55.408813, 51.105232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932072, 55.173801, 51.125397>,  <53.005913, 54.782116, 51.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.932072, 55.173801, 51.125397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935093, 0.201310, 0.291678,
		0.302528, -0.024714, -0.952820,
		-0.184604, 0.979216, -0.084012,
		52.876690, 55.467567, 51.100193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.462727, 55.241863, 50.640251>,  <53.005913, 54.782116, 51.159000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.462727, 55.241863, 50.640251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.327213, 55.405018, 50.979393>,  <53.245903, 55.502911, 51.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.327213, 55.405018, 50.979393>,  <53.462727, 55.241863, 50.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.327213, 55.405018, 50.979393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939650, 0.100937, 0.326909,
		0.047761, 0.907438, -0.417463,
		-0.338787, 0.407883, 0.847853,
		53.225578, 55.527382, 51.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.778442, 56.002899, 50.733925>,  <53.462727, 55.241863, 50.640251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.778442, 56.002899, 50.733925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.698654, 55.808304, 51.074169>,  <53.650780, 55.691547, 51.278316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.698654, 55.808304, 51.074169>,  <53.778442, 56.002899, 50.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.698654, 55.808304, 51.074169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931169, 0.176242, 0.319159,
		-0.305181, 0.855727, 0.417847,
		-0.199471, -0.486488, 0.850612,
		53.638813, 55.662357, 51.329353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.211742, 56.320946, 51.210045>,  <53.778442, 56.002899, 50.733925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.211742, 56.320946, 51.210045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.141548, 55.946255, 51.331207>,  <54.099430, 55.721439, 51.403904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.141548, 55.946255, 51.331207>,  <54.211742, 56.320946, 51.210045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.141548, 55.946255, 51.331207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918846, -0.045379, 0.391997,
		-0.353448, 0.347112, 0.868670,
		-0.175486, -0.936725, 0.302904,
		54.088902, 55.665237, 51.422077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.399914, 56.193642, 51.966778>,  <54.211742, 56.320946, 51.210045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.399914, 56.193642, 51.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423347, 55.846947, 51.768650>,  <54.437408, 55.638931, 51.649773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423347, 55.846947, 51.768650>,  <54.399914, 56.193642, 51.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.423347, 55.846947, 51.768650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931105, -0.131492, 0.340224,
		-0.360014, -0.481124, 0.799318,
		0.058586, -0.866735, -0.495316,
		54.440922, 55.586926, 51.620056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.716873, 55.722160, 52.381229>,  <54.399914, 56.193642, 51.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.716873, 55.722160, 52.381229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778442, 55.579712, 52.012558>,  <54.815384, 55.494244, 51.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778442, 55.579712, 52.012558>,  <54.716873, 55.722160, 52.381229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.778442, 55.579712, 52.012558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988082, 0.054927, 0.143793,
		-0.000583, -0.932825, 0.360330,
		0.153925, -0.356120, -0.921676,
		54.824619, 55.472878, 51.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.120201, 55.096371, 52.431290>,  <54.716873, 55.722160, 52.381229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.120201, 55.096371, 52.431290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.212234, 55.243671, 52.070969>,  <55.267456, 55.332050, 51.854774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.212234, 55.243671, 52.070969>,  <55.120201, 55.096371, 52.431290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.212234, 55.243671, 52.070969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969139, -0.002531, 0.246502,
		0.088495, -0.929723, -0.357469,
		0.230083, 0.368251, -0.900807,
		55.281258, 55.354145, 51.800728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.799648, 54.807774, 52.327827>,  <55.120201, 55.096371, 52.431290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.799648, 54.807774, 52.327827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721512, 55.099792, 52.065872>,  <55.674629, 55.275002, 51.908699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721512, 55.099792, 52.065872>,  <55.799648, 54.807774, 52.327827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.721512, 55.099792, 52.065872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946785, 0.314549, 0.068238,
		0.255811, -0.606706, -0.752641,
		-0.195343, 0.730046, -0.654885,
		55.662910, 55.318806, 51.869408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.292290, 54.816387, 51.769424>,  <55.799648, 54.807774, 52.327827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.292290, 54.816387, 51.769424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.132416, 55.180466, 51.812859>,  <56.036491, 55.398914, 51.838921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.132416, 55.180466, 51.812859>,  <56.292290, 54.816387, 51.769424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.132416, 55.180466, 51.812859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915079, 0.389257, 0.105401,
		0.053668, 0.141492, -0.988484,
		-0.399687, 0.910197, 0.108586,
		56.012508, 55.453526, 51.845436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.535122, 55.408829, 51.296036>,  <56.292290, 54.816387, 51.769424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.535122, 55.408829, 51.296036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.415108, 55.562412, 51.645332>,  <56.343102, 55.654564, 51.854912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.415108, 55.562412, 51.645332>,  <56.535122, 55.408829, 51.296036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.415108, 55.562412, 51.645332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928064, 0.329216, 0.174111,
		-0.220634, 0.862665, -0.455116,
		-0.300031, 0.383962, 0.873244,
		56.325100, 55.677601, 51.907307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.871426, 56.116428, 51.503635>,  <56.535122, 55.408829, 51.296036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.871426, 56.116428, 51.503635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.832283, 55.928444, 51.854534>,  <56.808796, 55.815655, 52.065075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.832283, 55.928444, 51.854534>,  <56.871426, 56.116428, 51.503635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.832283, 55.928444, 51.854534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926048, 0.279846, 0.253223,
		-0.364499, 0.837151, 0.407821,
		-0.097858, -0.469961, 0.877246,
		56.802925, 55.787457, 52.117706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.342529, 56.584652, 51.939045>,  <56.871426, 56.116428, 51.503635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.342529, 56.584652, 51.939045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.279305, 56.240265, 52.132439>,  <57.241367, 56.033634, 52.248474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.279305, 56.240265, 52.132439>,  <57.342529, 56.584652, 51.939045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.279305, 56.240265, 52.132439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953511, -0.005858, 0.301301,
		-0.256577, 0.508633, 0.821864,
		-0.158066, -0.860963, 0.483485,
		57.231884, 55.981976, 52.277485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.588902, 56.668060, 52.670307>,  <57.342529, 56.584652, 51.939045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.588902, 56.668060, 52.670307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.616455, 56.314537, 52.485207>,  <57.632988, 56.102425, 52.374146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.616455, 56.314537, 52.485207>,  <57.588902, 56.668060, 52.670307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.616455, 56.314537, 52.485207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973338, -0.042185, 0.225461,
		-0.218785, -0.465945, 0.857338,
		0.068886, -0.883807, -0.462752,
		57.637119, 56.049397, 52.346382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.064278, 56.162933, 53.130299>,  <57.588902, 56.668060, 52.670307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.064278, 56.162933, 53.130299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.101135, 56.040604, 52.751251>,  <58.123249, 55.967205, 52.523823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.101135, 56.040604, 52.751251>,  <58.064278, 56.162933, 53.130299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.101135, 56.040604, 52.751251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992228, -0.051718, 0.113178,
		-0.083622, -0.950681, 0.298686,
		0.092149, -0.305828, -0.947617,
		58.128780, 55.948856, 52.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.303940, 55.531853, 53.051895>,  <58.064278, 56.162933, 53.130299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.303940, 55.531853, 53.051895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.389359, 55.674152, 52.687950>,  <58.440609, 55.759533, 52.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.389359, 55.674152, 52.687950>,  <58.303940, 55.531853, 53.051895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.389359, 55.674152, 52.687950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976500, -0.105476, 0.187944,
		-0.029107, -0.928611, -0.369912,
		0.213544, 0.355749, -0.909858,
		58.453423, 55.780876, 52.414993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.768688, 55.099449, 52.796700>,  <58.303940, 55.531853, 53.051895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.768688, 55.099449, 52.796700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.811989, 55.469711, 52.651680>,  <58.837971, 55.691868, 52.564667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.811989, 55.469711, 52.651680>,  <58.768688, 55.099449, 52.796700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.811989, 55.469711, 52.651680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954119, 0.005676, 0.299375,
		0.279176, -0.378326, -0.882570,
		0.108252, 0.925655, -0.362552,
		58.844463, 55.747406, 52.542915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.279713, 55.201256, 52.174526>,  <58.768688, 55.099449, 52.796700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.279713, 55.201256, 52.174526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.259308, 55.519115, 52.416496>,  <59.247063, 55.709831, 52.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.259308, 55.519115, 52.416496>,  <59.279713, 55.201256, 52.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.259308, 55.519115, 52.416496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939985, -0.166419, 0.297881,
		0.337381, 0.583818, -0.738465,
		-0.051014, 0.794646, 0.604926,
		59.244003, 55.757507, 52.597973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.791504, 55.767380, 51.835224>,  <59.279713, 55.201256, 52.174526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.791504, 55.767380, 51.835224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722694, 55.772816, 52.229225>,  <59.681408, 55.776077, 52.465626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.722694, 55.772816, 52.229225>,  <59.791504, 55.767380, 51.835224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.722694, 55.772816, 52.229225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983292, 0.062785, 0.170863,
		-0.059521, 0.997934, -0.024167,
		-0.172027, 0.013594, 0.984998,
		59.671085, 55.776894, 52.524723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.067978, 56.257576, 52.001068>,  <59.791504, 55.767380, 51.835224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.067978, 56.257576, 52.001068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.088745, 56.038525, 52.335110>,  <60.101208, 55.907093, 52.535534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.088745, 56.038525, 52.335110>,  <60.067978, 56.257576, 52.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.088745, 56.038525, 52.335110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990874, 0.132411, 0.025223,
		-0.124391, 0.826177, 0.549508,
		0.051923, -0.547631, 0.835108,
		60.104321, 55.874237, 52.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.531956, 56.643631, 52.506466>,  <60.067978, 56.257576, 52.001068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.531956, 56.643631, 52.506466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.535904, 56.244270, 52.528725>,  <60.538273, 56.004654, 52.542080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.535904, 56.244270, 52.528725>,  <60.531956, 56.643631, 52.506466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.535904, 56.244270, 52.528725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999739, 0.008706, -0.021136,
		0.020618, 0.055840, 0.998227,
		0.009871, -0.998402, 0.055646,
		60.538864, 55.944748, 52.545418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.142616, 56.419136, 52.835327>,  <60.531956, 56.643631, 52.506466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.142616, 56.419136, 52.835327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087906, 56.118259, 52.577492>,  <61.055080, 55.937733, 52.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.087906, 56.118259, 52.577492>,  <61.142616, 56.419136, 52.835327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.087906, 56.118259, 52.577492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982882, -0.021963, -0.182922,
		0.123435, -0.658575, 0.742322,
		-0.136771, -0.752194, -0.644591,
		61.046875, 55.892601, 52.384113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.844219, 56.458324, 53.196247>,  <61.142616, 56.419136, 52.835327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.844219, 56.458324, 53.196247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.185654, 56.541702, 53.387218>,  <62.390514, 56.591728, 53.501801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.185654, 56.541702, 53.387218>,  <61.844219, 56.458324, 53.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.185654, 56.541702, 53.387218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346147, -0.457944, 0.818822,
		0.389316, -0.864197, -0.318743,
		0.853590, 0.208448, 0.477425,
		62.441730, 56.604237, 53.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.066650, 55.825207, 53.477139>,  <61.844219, 56.458324, 53.196247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.066650, 55.825207, 53.477139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.216270, 56.100925, 53.725319>,  <62.306042, 56.266357, 53.874226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.216270, 56.100925, 53.725319>,  <62.066650, 55.825207, 53.477139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.216270, 56.100925, 53.725319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341610, -0.519570, 0.783167,
		0.862202, -0.504892, 0.041128,
		0.374046, 0.689298, 0.620450,
		62.328484, 56.307716, 53.911453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.315422, 55.405918, 54.032753>,  <62.066650, 55.825207, 53.477139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.315422, 55.405918, 54.032753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.298759, 55.790474, 54.141556>,  <62.288761, 56.021210, 54.206837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.298759, 55.790474, 54.141556>,  <62.315422, 55.405918, 54.032753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.298759, 55.790474, 54.141556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382820, -0.266828, 0.884450,
		0.922883, -0.067285, 0.379156,
		-0.041659, 0.961393, 0.272009,
		62.286263, 56.078892, 54.223160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.711327, 55.498451, 54.664547>,  <62.315422, 55.405918, 54.032753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.711327, 55.498451, 54.664547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412491, 55.764339, 54.665825>,  <62.233189, 55.923870, 54.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412491, 55.764339, 54.665825>,  <62.711327, 55.498451, 54.664547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.412491, 55.764339, 54.665825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368605, -0.418271, 0.830168,
		0.553163, 0.619031, 0.557504,
		-0.747088, 0.664717, 0.003194,
		62.188366, 55.963753, 54.666782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.713348, 55.848503, 55.398941>,  <62.711327, 55.498451, 54.664547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.713348, 55.848503, 55.398941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.359467, 55.827164, 55.213707>,  <62.147137, 55.814362, 55.102566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.359467, 55.827164, 55.213707>,  <62.713348, 55.848503, 55.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.359467, 55.827164, 55.213707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398048, -0.430528, 0.810064,
		-0.242586, 0.900999, 0.359657,
		-0.884709, -0.053349, -0.463081,
		62.094055, 55.811157, 55.074783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.901920, 56.637539, 55.525791>,  <62.713348, 55.848503, 55.398941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.901920, 56.637539, 55.525791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.896118, 56.538830, 55.138206>,  <62.892635, 56.479607, 54.905655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.896118, 56.538830, 55.138206>,  <62.901920, 56.637539, 55.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.896118, 56.538830, 55.138206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644362, -0.738703, 0.197777,
		-0.764583, 0.627235, -0.148290,
		-0.014510, -0.246769, -0.968965,
		62.891766, 56.464798, 54.847515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.670238, 56.847363, 55.467316>,  <62.901920, 56.637539, 55.525791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.670238, 56.847363, 55.467316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.826935, 57.177757, 55.629448>,  <63.920952, 57.375992, 55.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.826935, 57.177757, 55.629448>,  <63.670238, 56.847363, 55.467316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.826935, 57.177757, 55.629448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147864, 0.491328, -0.858332,
		-0.908117, 0.276309, 0.314606,
		0.391739, 0.825984, 0.405327,
		63.944458, 57.425552, 55.751045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.317543, 57.511776, 55.460419>,  <63.670238, 56.847363, 55.467316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.317543, 57.511776, 55.460419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.709351, 57.590424, 55.443077>,  <63.944435, 57.637611, 55.432674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.709351, 57.590424, 55.443077>,  <63.317543, 57.511776, 55.460419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.709351, 57.590424, 55.443077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107947, 0.331098, -0.937402,
		-0.169955, 0.922885, 0.345541,
		0.979522, 0.196616, -0.043351,
		64.003204, 57.649406, 55.430073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.042442, 58.089306, 55.846321>,  <63.317543, 57.511776, 55.460419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.042442, 58.089306, 55.846321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.326973, 58.120747, 56.125702>,  <63.497692, 58.139610, 56.293331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.326973, 58.120747, 56.125702>,  <63.042442, 58.089306, 55.846321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.326973, 58.120747, 56.125702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701332, 0.013883, 0.712700,
		0.046323, -0.996809, 0.065002,
		0.711328, 0.078602, 0.698451,
		63.540371, 58.144325, 56.335236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.942070, 57.424477, 56.342266>,  <63.042442, 58.089306, 55.846321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.942070, 57.424477, 56.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.091232, 57.764122, 56.491905>,  <63.180729, 57.967911, 56.581688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.091232, 57.764122, 56.491905>,  <62.942070, 57.424477, 56.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.091232, 57.764122, 56.491905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765267, 0.053466, 0.641488,
		0.524695, -0.525498, 0.669737,
		0.372909, 0.849113, 0.374093,
		63.203106, 58.018856, 56.604134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.254070, 57.394825, 57.045776>,  <62.942070, 57.424477, 56.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.254070, 57.394825, 57.045776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079552, 57.741615, 56.949440>,  <62.974842, 57.949688, 56.891640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079552, 57.741615, 56.949440>,  <63.254070, 57.394825, 57.045776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.079552, 57.741615, 56.949440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754968, -0.207086, 0.622204,
		0.489561, 0.453290, 0.744888,
		-0.436295, 0.866974, -0.240838,
		62.948662, 58.001709, 56.877190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.866413, 57.578384, 57.528156>,  <63.254070, 57.394825, 57.045776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.866413, 57.578384, 57.528156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.858871, 57.933964, 57.345108>,  <63.854347, 58.147312, 57.235279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.858871, 57.933964, 57.345108>,  <63.866413, 57.578384, 57.528156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.858871, 57.933964, 57.345108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660782, 0.354571, 0.661549,
		0.750341, -0.289911, -0.594087,
		-0.018856, 0.888950, -0.457617,
		63.853214, 58.200649, 57.207825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.587494, 57.976124, 57.208431>,  <63.866413, 57.578384, 57.528156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.587494, 57.976124, 57.208431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.327171, 58.202553, 57.410820>,  <64.170975, 58.338409, 57.532253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.327171, 58.202553, 57.410820>,  <64.587494, 57.976124, 57.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.327171, 58.202553, 57.410820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751990, 0.388727, 0.532355,
		0.104666, 0.726950, -0.678667,
		-0.650812, 0.566070, 0.505972,
		64.131927, 58.372375, 57.562611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.760666, 58.773434, 57.146252>,  <64.587494, 57.976124, 57.208431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.760666, 58.773434, 57.146252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.598358, 58.645943, 57.488892>,  <64.500977, 58.569447, 57.694477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.598358, 58.645943, 57.488892>,  <64.760666, 58.773434, 57.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.598358, 58.645943, 57.488892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701297, 0.492457, 0.515431,
		-0.586122, 0.809876, 0.023701,
		-0.405763, -0.318727, 0.856603,
		64.476631, 58.550323, 57.745872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.131775, 59.122250, 57.644283>,  <64.760666, 58.773434, 57.146252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.131775, 59.122250, 57.644283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.901466, 58.904968, 57.888718>,  <64.763283, 58.774601, 58.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.901466, 58.904968, 57.888718>,  <65.131775, 59.122250, 57.644283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.901466, 58.904968, 57.888718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537647, 0.311537, 0.783505,
		-0.615978, 0.779663, 0.112679,
		-0.575766, -0.543203, 0.611084,
		64.728737, 58.742008, 58.072044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.245132, 59.785240, 57.830578>,  <65.131775, 59.122250, 57.644283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.245132, 59.785240, 57.830578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.225891, 59.771130, 57.431290>,  <65.214348, 59.762661, 57.191715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.225891, 59.771130, 57.431290>,  <65.245132, 59.785240, 57.830578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.225891, 59.771130, 57.431290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468361, 0.881901, -0.053739,
		0.882227, -0.470112, -0.025901,
		-0.048106, -0.035279, -0.998219,
		65.211456, 59.760544, 57.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.847900, 59.920128, 57.484505>,  <65.245132, 59.785240, 57.830578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.847900, 59.920128, 57.484505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.565521, 60.037655, 57.226730>,  <65.396095, 60.108170, 57.072067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.565521, 60.037655, 57.226730>,  <65.847900, 59.920128, 57.484505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.565521, 60.037655, 57.226730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482933, 0.865260, -0.134538,
		0.518075, -0.406197, -0.752730,
		-0.705956, 0.293818, -0.644436,
		65.353737, 60.125801, 57.033398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.197319, 60.110027, 56.841629>,  <65.847900, 59.920128, 57.484505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.197319, 60.110027, 56.841629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.869698, 60.331535, 56.901619>,  <65.673126, 60.464439, 56.937614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.869698, 60.331535, 56.901619>,  <66.197319, 60.110027, 56.841629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.869698, 60.331535, 56.901619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562463, 0.826589, 0.019637,
		-0.113095, 0.100440, -0.988494,
		-0.819051, 0.553771, 0.149977,
		65.623985, 60.497665, 56.946613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.854424, 59.900822, 57.198147>,  <66.197319, 60.110027, 56.841629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.854424, 59.900822, 57.198147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.000008, 59.798031, 56.840042>,  <67.087357, 59.736359, 56.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.000008, 59.798031, 56.840042>,  <66.854424, 59.900822, 57.198147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.000008, 59.798031, 56.840042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894469, -0.171584, 0.412898,
		-0.259716, -0.951064, 0.167403,
		0.363969, -0.256973, -0.895260,
		67.109200, 59.720940, 56.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.034821, 59.221539, 57.171616>,  <66.854424, 59.900822, 57.198147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.034821, 59.221539, 57.171616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.251869, 59.435474, 56.912537>,  <67.382095, 59.563835, 56.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.251869, 59.435474, 56.912537>,  <67.034821, 59.221539, 57.171616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.251869, 59.435474, 56.912537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812012, -0.136689, 0.567408,
		0.214942, -0.833822, -0.508469,
		0.542620, 0.534843, -0.647693,
		67.414658, 59.595928, 56.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.685043, 58.737186, 56.957714>,  <67.034821, 59.221539, 57.171616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.685043, 58.737186, 56.957714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.727188, 59.133575, 56.924553>,  <67.752480, 59.371410, 56.904655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.727188, 59.133575, 56.924553>,  <67.685043, 58.737186, 56.957714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.727188, 59.133575, 56.924553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797984, -0.034515, 0.601690,
		0.593397, -0.129553, -0.794416,
		0.105370, 0.990972, -0.082900,
		67.758797, 59.430866, 56.899681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.327126, 58.952080, 56.591393>,  <67.685043, 58.737186, 56.957714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.327126, 58.952080, 56.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.198334, 59.216019, 56.862961>,  <68.121063, 59.374382, 57.025902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.198334, 59.216019, 56.862961>,  <68.327126, 58.952080, 56.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.198334, 59.216019, 56.862961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840120, -0.131493, 0.526220,
		0.436497, 0.739807, -0.512011,
		-0.321975, 0.659844, 0.678924,
		68.101738, 59.413971, 57.066639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.791969, 59.538326, 56.806438>,  <68.327126, 58.952080, 56.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.791969, 59.538326, 56.806438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.565025, 59.400871, 57.105774>,  <68.428856, 59.318398, 57.285378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.565025, 59.400871, 57.105774>,  <68.791969, 59.538326, 56.806438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.565025, 59.400871, 57.105774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809923, -0.068694, 0.582500,
		-0.148765, 0.936585, 0.317297,
		-0.567357, -0.343642, 0.748342,
		68.394821, 59.297779, 57.330276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.213547, 59.708649, 57.353184>,  <68.791969, 59.538326, 56.806438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.213547, 59.708649, 57.353184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.947716, 59.464596, 57.525726>,  <68.788216, 59.318165, 57.629250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.947716, 59.464596, 57.525726>,  <69.213547, 59.708649, 57.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.947716, 59.464596, 57.525726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645274, -0.177551, 0.743033,
		-0.376759, 0.772151, 0.511698,
		-0.664586, -0.610130, 0.431355,
		68.748337, 59.281555, 57.655132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.124947, 59.820274, 58.073563>,  <69.213547, 59.708649, 57.353184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.124947, 59.820274, 58.073563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068161, 59.427879, 58.020622>,  <69.034088, 59.192444, 57.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068161, 59.427879, 58.020622>,  <69.124947, 59.820274, 58.073563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.068161, 59.427879, 58.020622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797330, -0.192565, 0.572000,
		-0.586609, -0.024323, 0.809505,
		-0.141969, -0.980983, -0.132354,
		69.025574, 59.133583, 57.980915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.046524, 59.370258, 58.631798>,  <69.124947, 59.820274, 58.073563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.046524, 59.370258, 58.631798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.248306, 59.155396, 58.361397>,  <69.369377, 59.026478, 58.199154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.248306, 59.155396, 58.361397>,  <69.046524, 59.370258, 58.631798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.248306, 59.155396, 58.361397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669441, -0.251144, 0.699125,
		-0.545312, -0.805228, 0.232901,
		0.504463, -0.537154, -0.676005,
		69.399643, 58.994247, 58.158596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.265823, 58.698841, 58.900257>,  <69.046524, 59.370258, 58.631798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.265823, 58.698841, 58.900257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.520966, 58.805305, 58.611176>,  <69.674049, 58.869186, 58.437729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.520966, 58.805305, 58.611176>,  <69.265823, 58.698841, 58.900257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.520966, 58.805305, 58.611176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769998, -0.201526, 0.605384,
		0.015488, -0.942626, -0.333490,
		0.637858, 0.266163, -0.722700,
		69.712326, 58.885155, 58.394367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.928368, 58.494278, 59.103909>,  <69.265823, 58.698841, 58.900257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.928368, 58.494278, 59.103909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.991463, 58.758003, 58.809853>,  <70.029320, 58.916237, 58.633419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.991463, 58.758003, 58.809853>,  <69.928368, 58.494278, 59.103909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.991463, 58.758003, 58.809853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950815, 0.099577, 0.293316,
		0.266589, -0.745249, -0.611175,
		0.157735, 0.659309, -0.735140,
		70.038780, 58.955795, 58.589310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.375305, 58.238213, 58.600815>,  <69.928368, 58.494278, 59.103909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.375305, 58.238213, 58.600815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.429092, 58.633701, 58.627213>,  <70.461365, 58.870995, 58.643051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.429092, 58.633701, 58.627213>,  <70.375305, 58.238213, 58.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.429092, 58.633701, 58.627213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948851, -0.147664, 0.279065,
		0.285661, 0.025093, -0.958002,
		0.134460, 0.988719, 0.065991,
		70.469429, 58.930317, 58.647011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.972282, 58.381992, 58.122124>,  <70.375305, 58.238213, 58.600815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.972282, 58.381992, 58.122124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.908363, 58.607254, 58.446426>,  <70.870010, 58.742413, 58.641006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.908363, 58.607254, 58.446426>,  <70.972282, 58.381992, 58.122124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.908363, 58.607254, 58.446426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911608, -0.230919, 0.340071,
		0.378731, 0.793432, -0.476476,
		-0.159796, 0.563154, 0.810754,
		70.860428, 58.776199, 58.689651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.554489, 58.835007, 58.224998>,  <70.972282, 58.381992, 58.122124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.554489, 58.835007, 58.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.402863, 58.790314, 58.592438>,  <71.311882, 58.763496, 58.812901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.402863, 58.790314, 58.592438>,  <71.554489, 58.835007, 58.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.402863, 58.790314, 58.592438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925290, -0.058642, 0.374700,
		0.012002, 0.992006, 0.125616,
		-0.379071, -0.111734, 0.918597,
		71.289139, 58.756794, 58.868015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.772614, 59.426277, 58.773930>,  <71.554489, 58.835007, 58.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.772614, 59.426277, 58.773930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681648, 59.078201, 58.948769>,  <71.627068, 58.869354, 59.053673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681648, 59.078201, 58.948769>,  <71.772614, 59.426277, 58.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.681648, 59.078201, 58.948769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896902, -0.012344, 0.442057,
		-0.379278, 0.492561, 0.783282,
		-0.227409, -0.870190, 0.437097,
		71.613426, 58.817142, 59.079899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.011673, 59.456516, 59.432724>,  <71.772614, 59.426277, 58.773930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.011673, 59.456516, 59.432724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.998314, 59.062508, 59.365059>,  <71.990295, 58.826103, 59.324459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.998314, 59.062508, 59.365059>,  <72.011673, 59.456516, 59.432724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.998314, 59.062508, 59.365059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891325, -0.105924, 0.440818,
		-0.452134, -0.136059, 0.881512,
		-0.033396, -0.985022, -0.169164,
		71.988297, 58.767002, 59.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.193268, 59.128639, 60.056210>,  <72.011673, 59.456516, 59.432724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.193268, 59.128639, 60.056210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.248970, 58.855343, 59.769493>,  <72.282394, 58.691364, 59.597462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.248970, 58.855343, 59.769493>,  <72.193268, 59.128639, 60.056210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.248970, 58.855343, 59.769493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898754, -0.216697, 0.381160,
		-0.415750, -0.697302, 0.583885,
		0.139258, -0.683237, -0.716795,
		72.290749, 58.650372, 59.554455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.442276, 58.586777, 60.403053>,  <72.193268, 59.128639, 60.056210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.442276, 58.586777, 60.403053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.551369, 58.500038, 60.028122>,  <72.616829, 58.447994, 59.803162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.551369, 58.500038, 60.028122>,  <72.442276, 58.586777, 60.403053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.551369, 58.500038, 60.028122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903766, -0.276313, 0.326893,
		-0.329883, -0.936284, 0.120619,
		0.272736, -0.216848, -0.937333,
		72.633186, 58.434982, 59.746922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.617271, 57.875450, 60.252350>,  <72.442276, 58.586777, 60.403053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.617271, 57.875450, 60.252350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.830681, 58.109467, 60.008034>,  <72.958725, 58.249878, 59.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.830681, 58.109467, 60.008034>,  <72.617271, 57.875450, 60.252350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.830681, 58.109467, 60.008034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845777, -0.371137, 0.383300,
		-0.002440, -0.721097, -0.692830,
		0.533531, 0.585045, -0.610792,
		72.990738, 58.284981, 59.824795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.376373, 57.607582, 60.263321>,  <72.617271, 57.875450, 60.252350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.376373, 57.607582, 60.263321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.390068, 57.972172, 60.099350>,  <73.398285, 58.190926, 60.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.390068, 57.972172, 60.099350>,  <73.376373, 57.607582, 60.263321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.390068, 57.972172, 60.099350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980339, 0.049121, 0.191109,
		0.194327, -0.408414, -0.891872,
		0.034242, 0.911474, -0.409929,
		73.400337, 58.245613, 59.976372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
