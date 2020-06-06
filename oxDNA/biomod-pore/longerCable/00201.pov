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
	<24.329430, 35.118725, 35.006435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192701, 34.986217, 34.654659>,  <24.110664, 34.906712, 34.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192701, 34.986217, 34.654659>,  <24.329430, 35.118725, 35.006435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192701, 34.986217, 34.654659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939755, -0.116005, -0.321564,
		0.004506, -0.936377, 0.350968,
		-0.341819, -0.331273, -0.879442,
		24.090157, 34.886837, 34.390827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583670, 34.411617, 34.736172>,  <24.329430, 35.118725, 35.006435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583670, 34.411617, 34.736172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505766, 34.691521, 34.461243>,  <24.459024, 34.859463, 34.296284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505766, 34.691521, 34.461243>,  <24.583670, 34.411617, 34.736172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505766, 34.691521, 34.461243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937502, -0.073217, -0.340191,
		-0.288374, -0.710621, -0.641762,
		-0.194759, 0.699755, -0.687322,
		24.447338, 34.901447, 34.255047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573631, 34.211143, 33.940548>,  <24.583670, 34.411617, 34.736172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573631, 34.211143, 33.940548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701326, 34.580120, 34.027435>,  <24.777943, 34.801506, 34.079567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701326, 34.580120, 34.027435>,  <24.573631, 34.211143, 33.940548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701326, 34.580120, 34.027435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870232, -0.194593, -0.452581,
		-0.375211, 0.333513, -0.864862,
		0.319237, 0.922444, 0.217220,
		24.797098, 34.856853, 34.092602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771910, 34.607620, 33.366993>,  <24.573631, 34.211143, 33.940548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771910, 34.607620, 33.366993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982422, 34.761223, 33.670456>,  <25.108728, 34.853386, 33.852535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982422, 34.761223, 33.670456>,  <24.771910, 34.607620, 33.366993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982422, 34.761223, 33.670456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848182, -0.300184, -0.436437,
		0.060144, 0.873171, -0.483689,
		0.526280, 0.384007, 0.758662,
		25.140306, 34.876427, 33.898056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284506, 35.072235, 33.027939>,  <24.771910, 34.607620, 33.366993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284506, 35.072235, 33.027939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398457, 34.932987, 33.385185>,  <25.466827, 34.849438, 33.599533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398457, 34.932987, 33.385185>,  <25.284506, 35.072235, 33.027939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398457, 34.932987, 33.385185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935656, -0.101490, -0.338006,
		0.208309, 0.931940, 0.296808,
		0.284878, -0.348120, 0.893116,
		25.483919, 34.828552, 33.653122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009239, 35.563122, 32.480244>,  <25.284506, 35.072235, 33.027939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009239, 35.563122, 32.480244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321190, 35.811951, 32.508022>,  <25.508360, 35.961246, 32.524689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321190, 35.811951, 32.508022>,  <25.009239, 35.563122, 32.480244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321190, 35.811951, 32.508022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507885, 0.564034, 0.651090,
		0.365850, -0.543043, 0.755816,
		0.779876, 0.622069, 0.069452,
		25.555153, 35.998573, 32.528858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123571, 35.742844, 33.275131>,  <25.009239, 35.563122, 32.480244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123571, 35.742844, 33.275131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278908, 36.038345, 33.054794>,  <25.372110, 36.215649, 32.922592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278908, 36.038345, 33.054794>,  <25.123571, 35.742844, 33.275131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278908, 36.038345, 33.054794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413580, 0.673899, 0.612218,
		0.823494, -0.009931, 0.567237,
		0.388341, 0.738757, -0.550845,
		25.395411, 36.259972, 32.889542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139824, 36.277287, 33.722923>,  <25.123571, 35.742844, 33.275131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139824, 36.277287, 33.722923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146732, 36.434090, 33.355003>,  <25.150877, 36.528172, 33.134251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146732, 36.434090, 33.355003>,  <25.139824, 36.277287, 33.722923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146732, 36.434090, 33.355003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417741, 0.838626, 0.349569,
		0.908402, 0.378202, 0.178240,
		0.017269, 0.392007, -0.919800,
		25.151913, 36.551693, 33.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483650, 36.870766, 33.778973>,  <25.139824, 36.277287, 33.722923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483650, 36.870766, 33.778973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270878, 36.930077, 33.445492>,  <25.143215, 36.965664, 33.245403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270878, 36.930077, 33.445492>,  <25.483650, 36.870766, 33.778973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270878, 36.930077, 33.445492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365957, 0.847604, 0.384243,
		0.763627, 0.509491, -0.396602,
		-0.531930, 0.148279, -0.833705,
		25.111300, 36.974560, 33.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598059, 37.599976, 33.666065>,  <25.483650, 36.870766, 33.778973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598059, 37.599976, 33.666065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289869, 37.497681, 33.432495>,  <25.104956, 37.436302, 33.292355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289869, 37.497681, 33.432495>,  <25.598059, 37.599976, 33.666065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289869, 37.497681, 33.432495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398240, 0.908357, 0.127644,
		0.497767, 0.330888, -0.801711,
		-0.770476, -0.255737, -0.583923,
		25.058727, 37.420959, 33.257317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634644, 38.106194, 33.140991>,  <25.598059, 37.599976, 33.666065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634644, 38.106194, 33.140991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264841, 37.961105, 33.187847>,  <25.042959, 37.874054, 33.215961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264841, 37.961105, 33.187847>,  <25.634644, 38.106194, 33.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264841, 37.961105, 33.187847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328130, 0.913733, 0.239632,
		-0.193954, 0.183104, -0.963771,
		-0.924507, -0.362720, 0.117140,
		24.987490, 37.852291, 33.222988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230433, 38.473618, 32.685696>,  <25.634644, 38.106194, 33.140991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230433, 38.473618, 32.685696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021999, 38.314941, 32.987984>,  <24.896938, 38.219738, 33.169357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021999, 38.314941, 32.987984>,  <25.230433, 38.473618, 32.685696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021999, 38.314941, 32.987984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406298, 0.893959, 0.189101,
		-0.750595, -0.208509, -0.627002,
		-0.521085, -0.396688, 0.755718,
		24.865673, 38.195934, 33.214699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820620, 38.902100, 32.642483>,  <25.230433, 38.473618, 32.685696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820620, 38.902100, 32.642483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730112, 38.735359, 32.994629>,  <24.675808, 38.635315, 33.205917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730112, 38.735359, 32.994629>,  <24.820620, 38.902100, 32.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730112, 38.735359, 32.994629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354992, 0.876934, 0.323987,
		-0.907074, -0.239213, -0.346402,
		-0.226270, -0.416850, 0.880362,
		24.662231, 38.610306, 33.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159023, 39.035286, 32.820091>,  <24.820620, 38.902100, 32.642483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159023, 39.035286, 32.820091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357681, 38.995026, 33.164932>,  <24.476875, 38.970871, 33.371838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357681, 38.995026, 33.164932>,  <24.159023, 39.035286, 32.820091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357681, 38.995026, 33.164932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354093, 0.883346, 0.307114,
		-0.792442, -0.457789, 0.403069,
		0.496643, -0.100646, 0.862100,
		24.506674, 38.964832, 33.423561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696207, 38.992943, 33.293484>,  <24.159023, 39.035286, 32.820091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696207, 38.992943, 33.293484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022779, 39.144264, 33.467987>,  <24.218723, 39.235058, 33.572689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022779, 39.144264, 33.467987>,  <23.696207, 38.992943, 33.293484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022779, 39.144264, 33.467987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530339, 0.790115, 0.307341,
		-0.228426, -0.482289, 0.845706,
		0.816432, 0.378306, 0.436260,
		24.267710, 39.257755, 33.598866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.819435, 38.136459, 33.448505>,  <23.696207, 38.992943, 33.293484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.819435, 38.136459, 33.448505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136446, 38.086040, 33.209839>,  <24.326653, 38.055790, 33.066639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136446, 38.086040, 33.209839>,  <23.819435, 38.136459, 33.448505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136446, 38.086040, 33.209839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065300, -0.990322, 0.122469,
		-0.606329, -0.058098, -0.793088,
		0.792528, -0.126045, -0.596667,
		24.374205, 38.048225, 33.030838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728846, 37.461597, 33.141037>,  <23.819435, 38.136459, 33.448505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728846, 37.461597, 33.141037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115347, 37.553799, 33.095043>,  <24.347248, 37.609119, 33.067448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115347, 37.553799, 33.095043>,  <23.728846, 37.461597, 33.141037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115347, 37.553799, 33.095043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220360, -0.970837, -0.094425,
		-0.133395, 0.065901, -0.988869,
		0.966254, 0.230503, -0.114983,
		24.405224, 37.622948, 33.060547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.881699, 37.095131, 32.559841>,  <23.728846, 37.461597, 33.141037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.881699, 37.095131, 32.559841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214884, 37.167149, 32.769131>,  <24.414795, 37.210358, 32.894703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214884, 37.167149, 32.769131>,  <23.881699, 37.095131, 32.559841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214884, 37.167149, 32.769131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383033, -0.870018, -0.310409,
		0.399325, 0.458970, -0.793654,
		0.832962, 0.180042, 0.523220,
		24.464773, 37.221161, 32.926098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.467283, 36.970112, 32.064804>,  <23.881699, 37.095131, 32.559841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.467283, 36.970112, 32.064804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667141, 36.996872, 32.410259>,  <24.787056, 37.012928, 32.617535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667141, 36.996872, 32.410259>,  <24.467283, 36.970112, 32.064804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667141, 36.996872, 32.410259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559988, -0.785610, -0.263117,
		0.660884, 0.615094, -0.429990,
		0.499647, 0.066899, 0.863642,
		24.817036, 37.016941, 32.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196379, 37.020618, 31.855679>,  <24.467283, 36.970112, 32.064804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196379, 37.020618, 31.855679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179359, 36.885460, 32.231766>,  <25.169147, 36.804363, 32.457420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179359, 36.885460, 32.231766>,  <25.196379, 37.020618, 31.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179359, 36.885460, 32.231766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588692, -0.768836, -0.249666,
		0.807237, 0.542877, 0.231632,
		-0.042549, -0.337899, 0.940220,
		25.166595, 36.784092, 32.513832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331917, 37.345341, 32.529106>,  <25.196379, 37.020618, 31.855679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331917, 37.345341, 32.529106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428392, 37.072136, 32.804878>,  <25.486279, 36.908211, 32.970341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428392, 37.072136, 32.804878>,  <25.331917, 37.345341, 32.529106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428392, 37.072136, 32.804878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447342, -0.552187, -0.703544,
		0.861227, 0.478101, 0.172359,
		0.241191, -0.683014, 0.689433,
		25.500750, 36.867233, 33.011707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099545, 37.192902, 32.406082>,  <25.331917, 37.345341, 32.529106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099545, 37.192902, 32.406082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905331, 36.890903, 32.582375>,  <25.788803, 36.709705, 32.688148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905331, 36.890903, 32.582375>,  <26.099545, 37.192902, 32.406082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905331, 36.890903, 32.582375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409223, -0.641781, -0.648579,
		0.772524, -0.134550, 0.620566,
		-0.485534, -0.754993, 0.440730,
		25.759670, 36.664406, 32.714592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629051, 36.660629, 32.822342>,  <26.099545, 37.192902, 32.406082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629051, 36.660629, 32.822342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287649, 36.494312, 32.696709>,  <26.082808, 36.394524, 32.621326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287649, 36.494312, 32.696709>,  <26.629051, 36.660629, 32.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287649, 36.494312, 32.696709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520183, -0.715333, -0.466591,
		-0.030672, -0.561620, 0.826827,
		-0.853504, -0.415790, -0.314086,
		26.031597, 36.369576, 32.602482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806175, 35.913204, 32.663578>,  <26.629051, 36.660629, 32.822342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806175, 35.913204, 32.663578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474483, 36.002079, 32.458439>,  <26.275469, 36.055405, 32.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474483, 36.002079, 32.458439>,  <26.806175, 35.913204, 32.663578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474483, 36.002079, 32.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348880, -0.511089, -0.785539,
		-0.436642, -0.830315, 0.346296,
		-0.829233, 0.222183, -0.512843,
		26.225714, 36.068733, 32.304585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517199, 35.268620, 32.332230>,  <26.806175, 35.913204, 32.663578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517199, 35.268620, 32.332230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450966, 35.608749, 32.132416>,  <26.411226, 35.812828, 32.012527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450966, 35.608749, 32.132416>,  <26.517199, 35.268620, 32.332230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450966, 35.608749, 32.132416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297685, -0.439802, -0.847324,
		-0.940195, -0.289005, -0.180305,
		-0.165583, 0.850323, -0.499532,
		26.401291, 35.863846, 31.982555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048573, 35.157742, 31.722057>,  <26.517199, 35.268620, 32.332230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048573, 35.157742, 31.722057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274969, 35.480846, 31.656126>,  <26.410807, 35.674709, 31.616568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274969, 35.480846, 31.656126>,  <26.048573, 35.157742, 31.722057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274969, 35.480846, 31.656126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308414, -0.392878, -0.866330,
		-0.764548, 0.439502, -0.471492,
		0.565993, 0.807765, -0.164826,
		26.444767, 35.723175, 31.606678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843023, 35.263374, 30.914061>,  <26.048573, 35.157742, 31.722057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843023, 35.263374, 30.914061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213751, 35.382278, 31.005833>,  <26.436188, 35.453621, 31.060896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213751, 35.382278, 31.005833>,  <25.843023, 35.263374, 30.914061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213751, 35.382278, 31.005833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354418, -0.490640, -0.796028,
		-0.124059, 0.819090, -0.560090,
		0.926821, 0.297260, 0.229432,
		26.491796, 35.471455, 31.074663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076630, 35.503403, 30.304514>,  <25.843023, 35.263374, 30.914061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076630, 35.503403, 30.304514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384722, 35.386383, 30.531199>,  <26.569578, 35.316174, 30.667210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384722, 35.386383, 30.531199>,  <26.076630, 35.503403, 30.304514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384722, 35.386383, 30.531199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322156, -0.588421, -0.741604,
		0.550417, 0.753776, -0.358975,
		0.770232, -0.292545, 0.566710,
		26.615791, 35.298618, 30.701212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743155, 35.745358, 30.027836>,  <26.076630, 35.503403, 30.304514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743155, 35.745358, 30.027836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817137, 35.437805, 30.272657>,  <26.861526, 35.253273, 30.419550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817137, 35.437805, 30.272657>,  <26.743155, 35.745358, 30.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817137, 35.437805, 30.272657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647427, -0.373216, -0.664491,
		0.739344, 0.519161, 0.428768,
		0.184954, -0.768884, 0.612054,
		26.872623, 35.207142, 30.456274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538654, 35.711605, 29.939844>,  <26.743155, 35.745358, 30.027836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538654, 35.711605, 29.939844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384857, 35.374081, 30.089588>,  <27.292580, 35.171566, 30.179434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384857, 35.374081, 30.089588>,  <27.538654, 35.711605, 29.939844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384857, 35.374081, 30.089588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568523, -0.535950, -0.624131,
		0.727287, -0.027142, 0.685796,
		-0.384493, -0.843813, 0.374359,
		27.269508, 35.120937, 30.201897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156647, 35.206909, 30.074905>,  <27.538654, 35.711605, 29.939844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156647, 35.206909, 30.074905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833517, 34.971146, 30.073109>,  <27.639639, 34.829689, 30.072031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833517, 34.971146, 30.073109>,  <28.156647, 35.206909, 30.074905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833517, 34.971146, 30.073109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470497, -0.640221, -0.607248,
		0.355042, -0.492661, 0.794500,
		-0.807823, -0.589408, -0.004490,
		27.591169, 34.794323, 30.071762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342319, 34.500774, 30.139046>,  <28.156647, 35.206909, 30.074905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342319, 34.500774, 30.139046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994320, 34.482059, 29.942715>,  <27.785521, 34.470829, 29.824917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994320, 34.482059, 29.942715>,  <28.342319, 34.500774, 30.139046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994320, 34.482059, 29.942715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434292, -0.544032, -0.717927,
		-0.233434, -0.837759, 0.493628,
		-0.869999, -0.046790, -0.490828,
		27.733320, 34.468021, 29.795465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143736, 33.722229, 29.935904>,  <28.342319, 34.500774, 30.139046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143736, 33.722229, 29.935904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954046, 33.987686, 29.704493>,  <27.840233, 34.146961, 29.565647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954046, 33.987686, 29.704493>,  <28.143736, 33.722229, 29.935904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954046, 33.987686, 29.704493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314530, -0.486042, -0.815373,
		-0.822302, -0.568635, 0.021759,
		-0.474225, 0.663640, -0.578526,
		27.811779, 34.186779, 29.530935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679050, 33.325939, 29.515802>,  <28.143736, 33.722229, 29.935904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679050, 33.325939, 29.515802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786957, 33.685146, 29.376783>,  <27.851700, 33.900669, 29.293371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786957, 33.685146, 29.376783>,  <27.679050, 33.325939, 29.515802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786957, 33.685146, 29.376783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286388, -0.419420, -0.861434,
		-0.919353, 0.132850, -0.370326,
		0.269764, 0.898019, -0.347549,
		27.867886, 33.954552, 29.272518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348183, 33.196648, 28.938326>,  <27.679050, 33.325939, 29.515802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348183, 33.196648, 28.938326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645399, 33.463787, 28.955582>,  <27.823729, 33.624073, 28.965935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645399, 33.463787, 28.955582>,  <27.348183, 33.196648, 28.938326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645399, 33.463787, 28.955582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456693, -0.458881, -0.762141,
		-0.489202, 0.586005, -0.645972,
		0.743043, 0.667852, 0.043139,
		27.868313, 33.664143, 28.968523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607084, 33.523792, 28.278540>,  <27.348183, 33.196648, 28.938326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607084, 33.523792, 28.278540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938517, 33.501060, 28.501331>,  <28.137375, 33.487419, 28.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938517, 33.501060, 28.501331>,  <27.607084, 33.523792, 28.278540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938517, 33.501060, 28.501331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507628, -0.343365, -0.790199,
		0.236156, 0.937481, -0.255656,
		0.828580, -0.056831, 0.556979,
		28.187090, 33.484013, 28.668425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345001, 34.312481, 28.254610>,  <27.607084, 33.523792, 28.278540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345001, 34.312481, 28.254610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319628, 34.700943, 28.162666>,  <27.304403, 34.934021, 28.107500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319628, 34.700943, 28.162666>,  <27.345001, 34.312481, 28.254610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319628, 34.700943, 28.162666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997982, -0.061115, 0.017202,
		0.002658, 0.230487, 0.973072,
		-0.063434, 0.971154, -0.229860,
		27.300598, 34.992290, 28.093708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845905, 34.686314, 28.689381>,  <27.345001, 34.312481, 28.254610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845905, 34.686314, 28.689381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869457, 34.868031, 28.333818>,  <26.883589, 34.977062, 28.120481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869457, 34.868031, 28.333818>,  <26.845905, 34.686314, 28.689381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869457, 34.868031, 28.333818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993755, 0.111214, -0.008987,
		0.094776, 0.883884, 0.458003,
		0.058880, 0.454292, -0.888905,
		26.887121, 35.004318, 28.067146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529272, 34.377686, 29.306616>,  <26.845905, 34.686314, 28.689381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529272, 34.377686, 29.306616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898552, 34.396080, 29.459240>,  <27.120119, 34.407116, 29.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898552, 34.396080, 29.459240>,  <26.529272, 34.377686, 29.306616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898552, 34.396080, 29.459240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374756, 0.327845, 0.867223,
		-0.085216, -0.943612, 0.319898,
		0.923199, 0.045983, 0.381562,
		27.175512, 34.409874, 29.573709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381830, 34.469353, 30.045383>,  <26.529272, 34.377686, 29.306616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381830, 34.469353, 30.045383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780100, 34.506439, 30.047770>,  <27.019062, 34.528690, 30.049202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780100, 34.506439, 30.047770>,  <26.381830, 34.469353, 30.045383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780100, 34.506439, 30.047770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028852, 0.247509, 0.968456,
		0.088317, -0.964439, 0.249113,
		0.995674, 0.092719, 0.005967,
		27.078802, 34.534256, 30.049559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728132, 34.033482, 30.556297>,  <26.381830, 34.469353, 30.045383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728132, 34.033482, 30.556297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937368, 34.367725, 30.489214>,  <27.062910, 34.568272, 30.448965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937368, 34.367725, 30.489214>,  <26.728132, 34.033482, 30.556297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937368, 34.367725, 30.489214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326055, 0.378013, 0.866484,
		0.787441, -0.398569, 0.470192,
		0.523092, 0.835613, -0.167707,
		27.094296, 34.618408, 30.438902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141695, 34.177353, 31.221729>,  <26.728132, 34.033482, 30.556297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141695, 34.177353, 31.221729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063997, 34.490810, 30.985704>,  <27.017380, 34.678883, 30.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063997, 34.490810, 30.985704>,  <27.141695, 34.177353, 31.221729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063997, 34.490810, 30.985704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312561, 0.520727, 0.794449,
		0.929826, 0.338747, 0.143789,
		-0.194243, 0.783642, -0.590064,
		27.005724, 34.725903, 30.808685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594917, 34.730595, 31.348646>,  <27.141695, 34.177353, 31.221729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594917, 34.730595, 31.348646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251513, 34.865292, 31.193953>,  <27.045469, 34.946110, 31.101137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251513, 34.865292, 31.193953>,  <27.594917, 34.730595, 31.348646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251513, 34.865292, 31.193953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177922, 0.511708, 0.840535,
		0.480942, 0.790416, -0.379391,
		-0.858510, 0.336747, -0.386734,
		26.993959, 34.966316, 31.077932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741848, 35.468468, 31.407343>,  <27.594917, 34.730595, 31.348646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741848, 35.468468, 31.407343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352936, 35.378181, 31.382925>,  <27.119589, 35.324009, 31.368275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352936, 35.378181, 31.382925>,  <27.741848, 35.468468, 31.407343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352936, 35.378181, 31.382925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212934, 0.746838, 0.629994,
		-0.096609, 0.625528, -0.774197,
		-0.972279, -0.225715, -0.061045,
		27.061253, 35.310467, 31.364611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043531, 34.944939, 31.983288>,  <27.741848, 35.468468, 31.407343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043531, 34.944939, 31.983288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847233, 35.291550, 31.946869>,  <27.729454, 35.499516, 31.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847233, 35.291550, 31.946869>,  <28.043531, 34.944939, 31.983288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847233, 35.291550, 31.946869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509897, 0.370352, 0.776431,
		0.706521, 0.334608, -0.623591,
		-0.490748, 0.866531, -0.091046,
		27.700008, 35.551510, 31.919556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476036, 35.598297, 32.049240>,  <28.043531, 34.944939, 31.983288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476036, 35.598297, 32.049240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107096, 35.714733, 32.150856>,  <27.885731, 35.784595, 32.211826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107096, 35.714733, 32.150856>,  <28.476036, 35.598297, 32.049240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107096, 35.714733, 32.150856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375863, 0.523884, 0.764377,
		0.089416, 0.800507, -0.592615,
		-0.922351, 0.291089, 0.254038,
		27.830391, 35.802059, 32.227066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045034, 35.787849, 32.390507>,  <28.476036, 35.598297, 32.049240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045034, 35.787849, 32.390507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030275, 35.420162, 32.233700>,  <29.021420, 35.199551, 32.139618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030275, 35.420162, 32.233700>,  <29.045034, 35.787849, 32.390507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030275, 35.420162, 32.233700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934247, -0.107511, 0.340035,
		-0.354713, 0.378786, -0.854810,
		-0.036899, -0.919218, -0.392015,
		29.019205, 35.144398, 32.116096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652288, 35.945946, 32.682762>,  <29.045034, 35.787849, 32.390507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652288, 35.945946, 32.682762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877851, 36.205044, 32.477852>,  <30.013189, 36.360504, 32.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877851, 36.205044, 32.477852>,  <29.652288, 35.945946, 32.682762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877851, 36.205044, 32.477852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617088, 0.081741, 0.782637,
		0.548826, -0.757457, -0.353624,
		0.563908, 0.647748, -0.512279,
		30.047024, 36.399368, 32.324169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347452, 35.731716, 32.781548>,  <29.652288, 35.945946, 32.682762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347452, 35.731716, 32.781548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344221, 36.116737, 32.673161>,  <30.342281, 36.347752, 32.608128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344221, 36.116737, 32.673161>,  <30.347452, 35.731716, 32.781548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344221, 36.116737, 32.673161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679965, 0.203975, 0.704302,
		0.733200, -0.178559, -0.656152,
		-0.008079, 0.962554, -0.270968,
		30.341797, 36.405502, 32.591869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067089, 35.893631, 33.032249>,  <30.347452, 35.731716, 32.781548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067089, 35.893631, 33.032249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838017, 36.214401, 32.964188>,  <30.700573, 36.406864, 32.923351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838017, 36.214401, 32.964188>,  <31.067089, 35.893631, 33.032249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838017, 36.214401, 32.964188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384118, 0.445860, 0.808493,
		0.724216, 0.397649, -0.563370,
		-0.572681, 0.801925, -0.170155,
		30.666212, 36.454979, 32.913139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501631, 36.552147, 32.937401>,  <31.067089, 35.893631, 33.032249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501631, 36.552147, 32.937401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141891, 36.630051, 33.093987>,  <30.926048, 36.676792, 33.187939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141891, 36.630051, 33.093987>,  <31.501631, 36.552147, 32.937401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141891, 36.630051, 33.093987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430822, 0.241959, 0.869395,
		0.074607, 0.950539, -0.301513,
		-0.899348, 0.194762, 0.391461,
		30.872087, 36.688480, 33.211426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506687, 37.262661, 33.366261>,  <31.501631, 36.552147, 32.937401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506687, 37.262661, 33.366261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225986, 37.007767, 33.493679>,  <31.057566, 36.854828, 33.570129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225986, 37.007767, 33.493679>,  <31.506687, 37.262661, 33.366261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225986, 37.007767, 33.493679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307908, 0.131921, 0.942226,
		-0.642445, 0.759292, 0.103635,
		-0.701753, -0.637238, 0.318544,
		31.015461, 36.816597, 33.589241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099283, 37.648891, 33.859039>,  <31.506687, 37.262661, 33.366261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099283, 37.648891, 33.859039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053881, 37.259556, 33.938766>,  <31.026640, 37.025955, 33.986603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053881, 37.259556, 33.938766>,  <31.099283, 37.648891, 33.859039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053881, 37.259556, 33.938766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204469, 0.173440, 0.963385,
		-0.972270, 0.150104, 0.179332,
		-0.113504, -0.973338, 0.199322,
		31.019829, 36.967556, 33.998562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648602, 37.685436, 34.454620>,  <31.099283, 37.648891, 33.859039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648602, 37.685436, 34.454620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851416, 37.341106, 34.437180>,  <30.973104, 37.134510, 34.426716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851416, 37.341106, 34.437180>,  <30.648602, 37.685436, 34.454620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851416, 37.341106, 34.437180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119845, 0.020318, 0.992585,
		-0.853552, -0.508502, 0.113467,
		0.507037, -0.860821, -0.043599,
		31.003527, 37.082859, 34.424099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461597, 37.404102, 35.000862>,  <30.648602, 37.685436, 34.454620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461597, 37.404102, 35.000862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821808, 37.265102, 34.896328>,  <31.037935, 37.181702, 34.833607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821808, 37.265102, 34.896328>,  <30.461597, 37.404102, 35.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821808, 37.265102, 34.896328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227591, -0.135396, 0.964298,
		-0.370475, -0.927854, -0.042841,
		0.900528, -0.347498, -0.261332,
		31.091967, 37.160854, 34.817928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647121, 36.891304, 35.433723>,  <30.461597, 37.404102, 35.000862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647121, 36.891304, 35.433723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015890, 36.989059, 35.313503>,  <31.237152, 37.047714, 35.241371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015890, 36.989059, 35.313503>,  <30.647121, 36.891304, 35.433723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015890, 36.989059, 35.313503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270299, 0.149917, 0.951033,
		0.277483, -0.958017, 0.072153,
		0.921923, 0.244393, -0.300550,
		31.292467, 37.062378, 35.223339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075188, 36.492386, 35.885422>,  <30.647121, 36.891304, 35.433723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075188, 36.492386, 35.885422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322418, 36.763142, 35.725521>,  <31.470757, 36.925594, 35.629581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322418, 36.763142, 35.725521>,  <31.075188, 36.492386, 35.885422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322418, 36.763142, 35.725521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522317, 0.026428, 0.852341,
		0.587507, -0.735608, -0.337218,
		0.618078, 0.676892, -0.399748,
		31.507841, 36.966209, 35.605598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738440, 36.227928, 36.031246>,  <31.075188, 36.492386, 35.885422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738440, 36.227928, 36.031246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756620, 36.622978, 35.971210>,  <31.767529, 36.860008, 35.935188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756620, 36.622978, 35.971210>,  <31.738440, 36.227928, 36.031246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756620, 36.622978, 35.971210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509185, 0.106354, 0.854060,
		0.859456, -0.115241, -0.498052,
		0.045452, 0.987628, -0.150086,
		31.770256, 36.919266, 35.926186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529732, 36.525650, 36.044292>,  <31.738440, 36.227928, 36.031246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529732, 36.525650, 36.044292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202801, 36.733425, 36.144024>,  <32.006641, 36.858089, 36.203865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202801, 36.733425, 36.144024>,  <32.529732, 36.525650, 36.044292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202801, 36.733425, 36.144024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319999, 0.049364, 0.946131,
		0.479147, 0.853082, -0.206566,
		-0.817324, 0.519437, 0.249333,
		31.957603, 36.889256, 36.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679100, 37.038628, 36.357407>,  <32.529732, 36.525650, 36.044292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679100, 37.038628, 36.357407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326778, 36.997643, 36.542309>,  <32.115383, 36.973053, 36.653252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326778, 36.997643, 36.542309>,  <32.679100, 37.038628, 36.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326778, 36.997643, 36.542309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432647, 0.222432, 0.873693,
		-0.192341, 0.969549, -0.151590,
		-0.880807, -0.102462, 0.462256,
		32.062538, 36.966904, 36.680984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489395, 37.534168, 36.930710>,  <32.679100, 37.038628, 36.357407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489395, 37.534168, 36.930710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323841, 37.188751, 37.045944>,  <32.224510, 36.981499, 37.115086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323841, 37.188751, 37.045944>,  <32.489395, 37.534168, 36.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323841, 37.188751, 37.045944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376223, 0.125908, 0.917934,
		-0.828949, 0.488301, 0.272774,
		-0.413883, -0.863545, 0.288082,
		32.199677, 36.929688, 37.132370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031898, 37.670143, 36.376835>,  <32.489395, 37.534168, 36.930710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031898, 37.670143, 36.376835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354321, 37.660652, 36.140289>,  <32.547775, 37.654957, 35.998363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354321, 37.660652, 36.140289>,  <32.031898, 37.670143, 36.376835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354321, 37.660652, 36.140289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400771, -0.757120, -0.515899,
		-0.435491, 0.652845, -0.619792,
		0.806059, -0.023725, -0.591360,
		32.596138, 37.653534, 35.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838007, 38.070007, 35.748623>,  <32.031898, 37.670143, 36.376835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838007, 38.070007, 35.748623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950777, 37.686481, 35.762444>,  <32.018440, 37.456367, 35.770737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950777, 37.686481, 35.762444>,  <31.838007, 38.070007, 35.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950777, 37.686481, 35.762444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333512, -0.131702, -0.933501,
		0.899604, 0.251655, -0.356906,
		0.281926, -0.958814, 0.034549,
		32.035355, 37.398838, 35.772808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257214, 37.913864, 35.162262>,  <31.838007, 38.070007, 35.748623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257214, 37.913864, 35.162262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059364, 37.588455, 35.284592>,  <31.940655, 37.393211, 35.357990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059364, 37.588455, 35.284592>,  <32.257214, 37.913864, 35.162262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059364, 37.588455, 35.284592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398606, -0.100351, -0.911615,
		0.772310, -0.572809, -0.274639,
		-0.494621, -0.813523, 0.305827,
		31.910978, 37.344398, 35.376339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471951, 37.320320, 34.714432>,  <32.257214, 37.913864, 35.162262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471951, 37.320320, 34.714432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107986, 37.258930, 34.868580>,  <31.889608, 37.222095, 34.961067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107986, 37.258930, 34.868580>,  <32.471951, 37.320320, 34.714432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107986, 37.258930, 34.868580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361721, -0.161138, -0.918255,
		0.203025, -0.974926, 0.091107,
		-0.909911, -0.153474, 0.385366,
		31.835012, 37.212887, 34.984188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291351, 36.712879, 34.496517>,  <32.471951, 37.320320, 34.714432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291351, 36.712879, 34.496517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933201, 36.862225, 34.593590>,  <31.718309, 36.951832, 34.651833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933201, 36.862225, 34.593590>,  <32.291351, 36.712879, 34.496517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933201, 36.862225, 34.593590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345370, -0.238231, -0.907726,
		-0.281103, -0.896572, 0.342257,
		-0.895378, 0.373369, 0.242682,
		31.664587, 36.974236, 34.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577862, 36.239002, 34.126289>,  <32.291351, 36.712879, 34.496517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577862, 36.239002, 34.126289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427715, 36.304470, 33.761364>,  <32.337627, 36.343750, 33.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427715, 36.304470, 33.761364>,  <32.577862, 36.239002, 34.126289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427715, 36.304470, 33.761364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214726, -0.972864, -0.086184,
		-0.901661, 0.163546, 0.400326,
		-0.375368, 0.163669, -0.912311,
		32.315105, 36.353569, 33.487671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001671, 35.634678, 33.850796>,  <32.577862, 36.239002, 34.126289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001671, 35.634678, 33.850796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173805, 35.816250, 33.538704>,  <32.277084, 35.925194, 33.351448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173805, 35.816250, 33.538704>,  <32.001671, 35.634678, 33.850796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173805, 35.816250, 33.538704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122895, -0.885772, -0.447554,
		-0.894265, 0.096710, -0.436963,
		0.430332, 0.453933, -0.780230,
		32.302906, 35.952431, 33.304634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776482, 35.201344, 33.217995>,  <32.001671, 35.634678, 33.850796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776482, 35.201344, 33.217995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092140, 35.419552, 33.105106>,  <32.281536, 35.550476, 33.037373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092140, 35.419552, 33.105106>,  <31.776482, 35.201344, 33.217995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092140, 35.419552, 33.105106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282125, -0.730098, -0.622384,
		-0.545573, 0.411532, -0.730062,
		0.789148, 0.545525, -0.282219,
		32.328884, 35.583210, 33.020439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968559, 34.911179, 32.573288>,  <31.776482, 35.201344, 33.217995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968559, 34.911179, 32.573288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271721, 35.158806, 32.655590>,  <32.453617, 35.307384, 32.704971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271721, 35.158806, 32.655590>,  <31.968559, 34.911179, 32.573288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271721, 35.158806, 32.655590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579085, -0.493195, -0.649167,
		-0.300403, 0.611155, -0.732289,
		0.757904, 0.619070, 0.205754,
		32.499092, 35.344528, 32.717316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288254, 35.011257, 31.978342>,  <31.968559, 34.911179, 32.573288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288254, 35.011257, 31.978342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561867, 35.128189, 32.245667>,  <32.726036, 35.198349, 32.406063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561867, 35.128189, 32.245667>,  <32.288254, 35.011257, 31.978342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561867, 35.128189, 32.245667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701549, -0.514608, -0.492958,
		0.199815, 0.806055, -0.557090,
		0.684034, 0.292325, 0.668313,
		32.767078, 35.215885, 32.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836651, 35.259026, 31.618151>,  <32.288254, 35.011257, 31.978342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836651, 35.259026, 31.618151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986748, 35.156723, 31.974527>,  <33.076805, 35.095341, 32.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986748, 35.156723, 31.974527>,  <32.836651, 35.259026, 31.618151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986748, 35.156723, 31.974527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728331, -0.513179, -0.454072,
		0.573345, 0.819290, -0.006292,
		0.375245, -0.255757, 0.890943,
		33.099319, 35.079994, 32.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575142, 35.370659, 31.602093>,  <32.836651, 35.259026, 31.618151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575142, 35.370659, 31.602093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545830, 35.123276, 31.915049>,  <33.528244, 34.974846, 32.102821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545830, 35.123276, 31.915049>,  <33.575142, 35.370659, 31.602093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545830, 35.123276, 31.915049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662031, -0.616891, -0.425630,
		0.745886, 0.486777, 0.454646,
		-0.073280, -0.618460, 0.782392,
		33.523846, 34.937737, 32.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264572, 35.193596, 31.794125>,  <33.575142, 35.370659, 31.602093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264572, 35.193596, 31.794125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018318, 34.913040, 31.937813>,  <33.870567, 34.744705, 32.024025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018318, 34.913040, 31.937813>,  <34.264572, 35.193596, 31.794125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018318, 34.913040, 31.937813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674248, -0.704789, -0.220594,
		0.407898, 0.106398, 0.906807,
		-0.615636, -0.701393, 0.359221,
		33.833626, 34.702621, 32.045578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714424, 34.724102, 32.199570>,  <34.264572, 35.193596, 31.794125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714424, 34.724102, 32.199570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379608, 34.511829, 32.146294>,  <34.178719, 34.384468, 32.114326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379608, 34.511829, 32.146294>,  <34.714424, 34.724102, 32.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379608, 34.511829, 32.146294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545364, -0.789643, -0.281144,
		0.044023, -0.307968, 0.950378,
		-0.837042, -0.530679, -0.133193,
		34.128494, 34.352627, 32.106335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849712, 34.063896, 32.398800>,  <34.714424, 34.724102, 32.199570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849712, 34.063896, 32.398800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539875, 34.020996, 32.149479>,  <34.353973, 33.995255, 31.999886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539875, 34.020996, 32.149479>,  <34.849712, 34.063896, 32.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539875, 34.020996, 32.149479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437935, -0.801994, -0.406225,
		-0.456317, -0.587624, 0.668186,
		-0.774589, -0.107254, -0.623305,
		34.307499, 33.988819, 31.962488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842651, 33.356556, 32.361393>,  <34.849712, 34.063896, 32.398800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842651, 33.356556, 32.361393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626640, 33.484348, 32.049931>,  <34.497032, 33.561024, 31.863054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626640, 33.484348, 32.049931>,  <34.842651, 33.356556, 32.361393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626640, 33.484348, 32.049931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302683, -0.789538, -0.533867,
		-0.785322, -0.523997, 0.329693,
		-0.540050, 0.319465, -0.778646,
		34.464630, 33.580193, 31.816334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402187, 32.769650, 32.080883>,  <34.842651, 33.356556, 32.361393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402187, 32.769650, 32.080883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476353, 33.017193, 31.775560>,  <34.520851, 33.165718, 31.592367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476353, 33.017193, 31.775560>,  <34.402187, 32.769650, 32.080883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476353, 33.017193, 31.775560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302428, -0.775008, -0.554888,
		-0.934964, -0.127958, -0.330860,
		0.185417, 0.618861, -0.763303,
		34.531979, 33.202850, 31.546570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288597, 32.356056, 31.679733>,  <34.402187, 32.769650, 32.080883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288597, 32.356056, 31.679733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487061, 32.628498, 31.464357>,  <34.606140, 32.791965, 31.335133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487061, 32.628498, 31.464357>,  <34.288597, 32.356056, 31.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487061, 32.628498, 31.464357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313827, -0.718916, -0.620220,
		-0.809527, 0.138754, -0.570450,
		0.496163, 0.681108, -0.538437,
		34.635910, 32.832829, 31.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086975, 32.228256, 30.908123>,  <34.288597, 32.356056, 31.679733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086975, 32.228256, 30.908123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428913, 32.433357, 30.876297>,  <34.634075, 32.556419, 30.857203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428913, 32.433357, 30.876297>,  <34.086975, 32.228256, 30.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428913, 32.433357, 30.876297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232605, -0.515737, -0.824567,
		-0.463832, 0.686368, -0.560143,
		0.854842, 0.512752, -0.079563,
		34.685368, 32.587181, 30.852428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085381, 32.314266, 30.247738>,  <34.086975, 32.228256, 30.908123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085381, 32.314266, 30.247738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462429, 32.392933, 30.355650>,  <34.688660, 32.440132, 30.420397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462429, 32.392933, 30.355650>,  <34.085381, 32.314266, 30.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462429, 32.392933, 30.355650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333176, -0.605750, -0.722538,
		0.021319, 0.770966, -0.636519,
		0.942624, 0.196669, 0.269781,
		34.745216, 32.451935, 30.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479736, 32.507847, 29.678545>,  <34.085381, 32.314266, 30.247738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479736, 32.507847, 29.678545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802917, 32.412193, 29.893965>,  <34.996826, 32.354801, 30.023216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802917, 32.412193, 29.893965>,  <34.479736, 32.507847, 29.678545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802917, 32.412193, 29.893965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477026, -0.271106, -0.836031,
		0.345923, 0.932373, -0.104969,
		0.807950, -0.239130, 0.538547,
		35.045303, 32.340454, 30.055529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971378, 32.781124, 29.292349>,  <34.479736, 32.507847, 29.678545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971378, 32.781124, 29.292349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159412, 32.509808, 29.518250>,  <35.272232, 32.347019, 29.653790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159412, 32.509808, 29.518250>,  <34.971378, 32.781124, 29.292349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159412, 32.509808, 29.518250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579585, -0.245342, -0.777103,
		0.665656, 0.692628, 0.277793,
		0.470089, -0.678288, 0.564750,
		35.300438, 32.306320, 29.687674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702583, 32.801445, 29.204739>,  <34.971378, 32.781124, 29.292349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702583, 32.801445, 29.204739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624763, 32.429935, 29.330929>,  <35.578072, 32.207027, 29.406643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624763, 32.429935, 29.330929>,  <35.702583, 32.801445, 29.204739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624763, 32.429935, 29.330929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524710, -0.370279, -0.766533,
		0.828751, 0.016401, 0.559377,
		-0.194554, -0.928776, 0.315475,
		35.566399, 32.151302, 29.425571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329735, 32.479523, 29.379961>,  <35.702583, 32.801445, 29.204739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329735, 32.479523, 29.379961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067253, 32.192173, 29.287577>,  <35.909763, 32.019764, 29.232145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067253, 32.192173, 29.287577>,  <36.329735, 32.479523, 29.379961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067253, 32.192173, 29.287577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644433, -0.374284, -0.666796,
		0.392562, -0.586391, 0.708548,
		-0.656201, -0.718371, -0.230960,
		35.870392, 31.976662, 29.218288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536774, 31.717636, 29.495981>,  <36.329735, 32.479523, 29.379961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536774, 31.717636, 29.495981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226566, 31.650826, 29.252449>,  <36.040443, 31.610739, 29.106329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226566, 31.650826, 29.252449>,  <36.536774, 31.717636, 29.495981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226566, 31.650826, 29.252449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631292, -0.215211, -0.745087,
		-0.006575, -0.962178, 0.272344,
		-0.775518, -0.167029, -0.608830,
		35.993912, 31.600718, 29.069799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756889, 31.116846, 29.078306>,  <36.536774, 31.717636, 29.495981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756889, 31.116846, 29.078306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462627, 31.287132, 28.867563>,  <36.286072, 31.389303, 28.741117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462627, 31.287132, 28.867563>,  <36.756889, 31.116846, 29.078306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462627, 31.287132, 28.867563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480910, -0.219491, -0.848852,
		-0.477011, -0.877832, -0.043262,
		-0.735654, 0.425716, -0.526858,
		36.241932, 31.414846, 28.709505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511948, 30.602837, 28.589405>,  <36.756889, 31.116846, 29.078306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511948, 30.602837, 28.589405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401192, 30.957693, 28.441721>,  <36.334740, 31.170607, 28.353109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401192, 30.957693, 28.441721>,  <36.511948, 30.602837, 28.589405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401192, 30.957693, 28.441721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340825, -0.268582, -0.900945,
		-0.898428, -0.375295, -0.227994,
		-0.276886, 0.887140, -0.369211,
		36.318127, 31.223835, 28.330957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293671, 30.336828, 27.854637>,  <36.511948, 30.602837, 28.589405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293671, 30.336828, 27.854637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314583, 30.735415, 27.828337>,  <36.327129, 30.974566, 27.812557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314583, 30.735415, 27.828337>,  <36.293671, 30.336828, 27.854637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314583, 30.735415, 27.828337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346494, -0.079852, -0.934647,
		-0.936594, 0.026085, -0.349444,
		0.052284, 0.996465, -0.065750,
		36.330269, 31.034353, 27.808611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963734, 30.580362, 27.258991>,  <36.293671, 30.336828, 27.854637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963734, 30.580362, 27.258991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262718, 30.830683, 27.348146>,  <36.442108, 30.980875, 27.401640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262718, 30.830683, 27.348146>,  <35.963734, 30.580362, 27.258991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262718, 30.830683, 27.348146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421811, -0.187898, -0.887001,
		-0.513205, 0.757013, -0.404415,
		0.747460, 0.625800, 0.222886,
		36.486958, 31.018423, 27.415012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970425, 31.002903, 26.697451>,  <35.963734, 30.580362, 27.258991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970425, 31.002903, 26.697451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322002, 31.106325, 26.857754>,  <36.532948, 31.168379, 26.953936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322002, 31.106325, 26.857754>,  <35.970425, 31.002903, 26.697451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322002, 31.106325, 26.857754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381120, 0.124374, -0.916121,
		-0.286714, 0.957956, 0.010777,
		0.878944, 0.258557, 0.400756,
		36.585686, 31.183893, 26.977982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228130, 31.650806, 26.384321>,  <35.970425, 31.002903, 26.697451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228130, 31.650806, 26.384321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573204, 31.522364, 26.540609>,  <36.780251, 31.445297, 26.634382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573204, 31.522364, 26.540609>,  <36.228130, 31.650806, 26.384321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573204, 31.522364, 26.540609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490371, 0.342092, -0.801566,
		0.123728, 0.883098, 0.452580,
		0.862686, -0.321109, 0.390720,
		36.832008, 31.426031, 26.657825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802452, 32.204678, 26.288460>,  <36.228130, 31.650806, 26.384321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802452, 32.204678, 26.288460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984890, 31.853230, 26.345039>,  <37.094353, 31.642361, 26.378988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984890, 31.853230, 26.345039>,  <36.802452, 32.204678, 26.288460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984890, 31.853230, 26.345039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738241, 0.284783, -0.611473,
		0.496968, 0.383315, 0.778519,
		0.456096, -0.878617, 0.141451,
		37.121719, 31.589643, 26.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491276, 32.266857, 26.489582>,  <36.802452, 32.204678, 26.288460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491276, 32.266857, 26.489582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466415, 31.896627, 26.340214>,  <37.451500, 31.674488, 26.250593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466415, 31.896627, 26.340214>,  <37.491276, 32.266857, 26.489582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466415, 31.896627, 26.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661725, 0.241873, -0.709660,
		0.747166, -0.291210, 0.597444,
		-0.062154, -0.925578, -0.373420,
		37.447769, 31.618954, 26.228188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210377, 32.055305, 26.264589>,  <37.491276, 32.266857, 26.489582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210377, 32.055305, 26.264589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972599, 31.796465, 26.073631>,  <37.829933, 31.641161, 25.959057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972599, 31.796465, 26.073631>,  <38.210377, 32.055305, 26.264589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972599, 31.796465, 26.073631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651186, -0.039048, -0.757913,
		0.471803, -0.761406, 0.444593,
		-0.594440, -0.647099, -0.477393,
		37.794266, 31.602335, 25.930414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666138, 31.548311, 25.899189>,  <38.210377, 32.055305, 26.264589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666138, 31.548311, 25.899189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307713, 31.507355, 25.726404>,  <38.092659, 31.482780, 25.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307713, 31.507355, 25.726404>,  <38.666138, 31.548311, 25.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307713, 31.507355, 25.726404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443928, -0.202837, -0.872803,
		0.001751, -0.973845, 0.227209,
		-0.896061, -0.102393, -0.431962,
		38.038895, 31.476637, 25.596815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701073, 30.960606, 25.571011>,  <38.666138, 31.548311, 25.899189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701073, 30.960606, 25.571011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412823, 31.164148, 25.382641>,  <38.239872, 31.286274, 25.269619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412823, 31.164148, 25.382641>,  <38.701073, 30.960606, 25.571011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412823, 31.164148, 25.382641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434824, -0.197352, -0.878624,
		-0.540031, -0.837925, -0.079046,
		-0.720621, 0.508855, -0.470926,
		38.196636, 31.316805, 25.241364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570919, 30.505760, 25.035313>,  <38.701073, 30.960606, 25.571011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570919, 30.505760, 25.035313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401699, 30.856613, 24.944389>,  <38.300167, 31.067125, 24.889835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401699, 30.856613, 24.944389>,  <38.570919, 30.505760, 25.035313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401699, 30.856613, 24.944389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197096, -0.155776, -0.967929,
		-0.884412, -0.454281, -0.106979,
		-0.423047, 0.877133, -0.227307,
		38.274784, 31.119753, 24.876198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105213, 30.307100, 24.518139>,  <38.570919, 30.505760, 25.035313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105213, 30.307100, 24.518139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191944, 30.694254, 24.467245>,  <38.243984, 30.926546, 24.436708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191944, 30.694254, 24.467245>,  <38.105213, 30.307100, 24.518139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191944, 30.694254, 24.467245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218291, -0.175108, -0.960045,
		-0.951490, 0.180394, -0.249249,
		0.216832, 0.967882, -0.127235,
		38.256992, 30.984619, 24.429075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805317, 30.469519, 23.756695>,  <38.105213, 30.307100, 24.518139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805317, 30.469519, 23.756695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059498, 30.767227, 23.838917>,  <38.212006, 30.945852, 23.888250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059498, 30.767227, 23.838917>,  <37.805317, 30.469519, 23.756695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059498, 30.767227, 23.838917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459142, -0.150198, -0.875573,
		-0.620792, 0.650767, -0.437172,
		0.635457, 0.744273, 0.205553,
		38.250134, 30.990509, 23.900583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804276, 30.940069, 23.143370>,  <37.805317, 30.469519, 23.756695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804276, 30.940069, 23.143370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144222, 30.974165, 23.351393>,  <38.348190, 30.994623, 23.476206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144222, 30.974165, 23.351393>,  <37.804276, 30.940069, 23.143370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144222, 30.974165, 23.351393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526761, -0.107870, -0.843141,
		-0.015770, 0.990504, -0.136576,
		0.849867, 0.085239, 0.520057,
		38.399181, 30.999737, 23.507410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257179, 31.385752, 22.775358>,  <37.804276, 30.940069, 23.143370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257179, 31.385752, 22.775358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529022, 31.201363, 23.003614>,  <38.692127, 31.090729, 23.140568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529022, 31.201363, 23.003614>,  <38.257179, 31.385752, 22.775358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529022, 31.201363, 23.003614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646948, 0.009928, -0.762470,
		0.345813, 0.887358, 0.304972,
		0.679612, -0.460973, 0.570641,
		38.732906, 31.063070, 23.174807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946365, 31.680161, 22.672623>,  <38.257179, 31.385752, 22.775358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946365, 31.680161, 22.672623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042580, 31.319773, 22.817062>,  <39.100307, 31.103540, 22.903727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042580, 31.319773, 22.817062>,  <38.946365, 31.680161, 22.672623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042580, 31.319773, 22.817062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819522, -0.010836, -0.572946,
		0.520120, 0.433744, 0.735759,
		0.240539, -0.900971, 0.361098,
		39.114742, 31.049480, 22.925392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617237, 31.772516, 22.689590>,  <38.946365, 31.680161, 22.672623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617237, 31.772516, 22.689590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537907, 31.380604, 22.700140>,  <39.490311, 31.145456, 22.706470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537907, 31.380604, 22.700140>,  <39.617237, 31.772516, 22.689590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537907, 31.380604, 22.700140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587722, -0.140411, -0.796786,
		0.784380, -0.142520, 0.603686,
		-0.198323, -0.979782, 0.026374,
		39.478409, 31.086670, 22.708052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255585, 31.441460, 22.786268>,  <39.617237, 31.772516, 22.689590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255585, 31.441460, 22.786268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014935, 31.172831, 22.613276>,  <39.870544, 31.011654, 22.509480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014935, 31.172831, 22.613276>,  <40.255585, 31.441460, 22.786268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014935, 31.172831, 22.613276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735137, -0.253730, -0.628645,
		0.312448, -0.696140, 0.646348,
		-0.601622, -0.671573, -0.432481,
		39.834446, 30.971359, 22.483532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772614, 31.019737, 22.513096>,  <40.255585, 31.441460, 22.786268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772614, 31.019737, 22.513096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440910, 30.883110, 22.336164>,  <40.241886, 30.801134, 22.230005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440910, 30.883110, 22.336164>,  <40.772614, 31.019737, 22.513096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440910, 30.883110, 22.336164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551821, -0.375224, -0.744782,
		0.088421, -0.861706, 0.499644,
		-0.829262, -0.341569, -0.442330,
		40.192131, 30.780640, 22.203466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036697, 30.440414, 22.220203>,  <40.772614, 31.019737, 22.513096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036697, 30.440414, 22.220203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695984, 30.522774, 22.027508>,  <40.491558, 30.572189, 21.911890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695984, 30.522774, 22.027508>,  <41.036697, 30.440414, 22.220203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695984, 30.522774, 22.027508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457736, -0.154809, -0.875506,
		-0.254846, -0.966250, 0.037615,
		-0.851781, 0.205901, -0.481740,
		40.440449, 30.584543, 21.882986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851002, 29.842564, 21.723608>,  <41.036697, 30.440414, 22.220203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851002, 29.842564, 21.723608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671429, 30.171646, 21.584116>,  <40.563683, 30.369095, 21.500422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671429, 30.171646, 21.584116>,  <40.851002, 29.842564, 21.723608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671429, 30.171646, 21.584116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406937, -0.159213, -0.899474,
		-0.795524, -0.545718, -0.263313,
		-0.448936, 0.822705, -0.348730,
		40.536747, 30.418457, 21.479496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546116, 29.627897, 21.132324>,  <40.851002, 29.842564, 21.723608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546116, 29.627897, 21.132324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564247, 30.025539, 21.092920>,  <40.575127, 30.264124, 21.069277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564247, 30.025539, 21.092920>,  <40.546116, 29.627897, 21.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564247, 30.025539, 21.092920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387259, -0.108387, -0.915578,
		-0.920856, 0.003352, -0.389888,
		0.045328, 0.994103, -0.098511,
		40.577847, 30.323771, 21.063368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126682, 29.832911, 20.596735>,  <40.546116, 29.627897, 21.132324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126682, 29.832911, 20.596735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412777, 30.106874, 20.652367>,  <40.584435, 30.271252, 20.685745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412777, 30.106874, 20.652367>,  <40.126682, 29.832911, 20.596735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412777, 30.106874, 20.652367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347141, -0.175438, -0.921257,
		-0.606577, 0.707193, -0.363239,
		0.715232, 0.684909, 0.139079,
		40.627346, 30.312347, 20.694090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085438, 30.332222, 19.995554>,  <40.126682, 29.832911, 20.596735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085438, 30.332222, 19.995554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451214, 30.259830, 20.140354>,  <40.670681, 30.216394, 20.227234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451214, 30.259830, 20.140354>,  <40.085438, 30.332222, 19.995554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451214, 30.259830, 20.140354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250106, -0.450512, -0.857022,
		0.318189, 0.874234, -0.366702,
		0.914442, -0.180980, 0.361999,
		40.725548, 30.205536, 20.248953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249653, 29.931374, 19.351198>,  <40.085438, 30.332222, 19.995554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249653, 29.931374, 19.351198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464840, 30.076979, 19.655327>,  <40.593952, 30.164341, 19.837805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464840, 30.076979, 19.655327>,  <40.249653, 29.931374, 19.351198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464840, 30.076979, 19.655327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712084, 0.286479, -0.640988,
		-0.451144, 0.886242, -0.105092,
		0.537964, 0.364012, 0.760322,
		40.626228, 30.186182, 19.883423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395943, 30.662979, 19.192938>,  <40.249653, 29.931374, 19.351198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395943, 30.662979, 19.192938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664658, 30.471302, 19.418888>,  <40.825886, 30.356297, 19.554459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664658, 30.471302, 19.418888>,  <40.395943, 30.662979, 19.192938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664658, 30.471302, 19.418888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739529, 0.390119, -0.548547,
		0.042491, 0.786245, 0.616452,
		0.671783, -0.479192, 0.564874,
		40.866192, 30.327545, 19.588350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017960, 31.104340, 19.324310>,  <40.395943, 30.662979, 19.192938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017960, 31.104340, 19.324310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153080, 30.728512, 19.346575>,  <41.234154, 30.503016, 19.359934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153080, 30.728512, 19.346575>,  <41.017960, 31.104340, 19.324310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153080, 30.728512, 19.346575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765516, 0.239857, -0.597039,
		0.547608, 0.244293, 0.800279,
		0.337805, -0.939569, 0.055663,
		41.254421, 30.446642, 19.363274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663422, 30.850668, 19.397268>,  <41.017960, 31.104340, 19.324310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663422, 30.850668, 19.397268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457901, 31.033031, 19.106571>,  <41.334587, 31.142450, 18.932154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457901, 31.033031, 19.106571>,  <41.663422, 30.850668, 19.397268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457901, 31.033031, 19.106571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585789, -0.432457, -0.685443,
		-0.626785, -0.777899, -0.044869,
		-0.513802, 0.455909, -0.726742,
		41.303761, 31.169804, 18.888548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796692, 30.572098, 18.830986>,  <41.663422, 30.850668, 19.397268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796692, 30.572098, 18.830986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608128, 30.879028, 18.657097>,  <41.494991, 31.063187, 18.552763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608128, 30.879028, 18.657097>,  <41.796692, 30.572098, 18.830986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608128, 30.879028, 18.657097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588007, -0.093909, -0.803386,
		-0.657285, -0.634340, -0.406925,
		-0.471406, 0.767329, -0.434722,
		41.466705, 31.109226, 18.526680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915375, 31.025757, 18.195332>,  <41.796692, 30.572098, 18.830986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915375, 31.025757, 18.195332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978798, 31.219519, 18.539474>,  <42.016850, 31.335775, 18.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978798, 31.219519, 18.539474>,  <41.915375, 31.025757, 18.195332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978798, 31.219519, 18.539474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841222, 0.389928, -0.374569,
		-0.516920, 0.783140, -0.345666,
		0.158555, 0.484405, 0.860356,
		42.026363, 31.364840, 18.797581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055279, 31.795349, 18.151855>,  <41.915375, 31.025757, 18.195332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055279, 31.795349, 18.151855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271271, 31.677237, 18.467129>,  <42.400864, 31.606369, 18.656294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271271, 31.677237, 18.467129>,  <42.055279, 31.795349, 18.151855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271271, 31.677237, 18.467129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819784, 0.396716, -0.413001,
		-0.190734, 0.869152, 0.456284,
		0.539976, -0.295281, 0.788185,
		42.433262, 31.588652, 18.703585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720295, 32.367584, 18.602858>,  <42.055279, 31.795349, 18.151855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720295, 32.367584, 18.602858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356720, 32.201252, 18.614985>,  <41.138577, 32.101452, 18.622261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356720, 32.201252, 18.614985>,  <41.720295, 32.367584, 18.602858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356720, 32.201252, 18.614985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264433, 0.631180, 0.729169,
		-0.322345, 0.654752, -0.683662,
		-0.908938, -0.415827, 0.030319,
		41.084038, 32.076504, 18.624081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228218, 32.849651, 18.585140>,  <41.720295, 32.367584, 18.602858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228218, 32.849651, 18.585140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041420, 32.541794, 18.759300>,  <40.929340, 32.357079, 18.863796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041420, 32.541794, 18.759300>,  <41.228218, 32.849651, 18.585140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041420, 32.541794, 18.759300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240967, 0.584515, 0.774775,
		-0.850796, 0.256896, -0.458422,
		-0.466991, -0.769640, 0.435399,
		40.901321, 32.310902, 18.889919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578850, 33.053764, 18.700193>,  <41.228218, 32.849651, 18.585140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578850, 33.053764, 18.700193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734486, 32.813244, 18.979349>,  <40.827866, 32.668934, 19.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734486, 32.813244, 18.979349>,  <40.578850, 33.053764, 18.700193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734486, 32.813244, 18.979349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299933, 0.633618, 0.713140,
		-0.871006, -0.486794, 0.066184,
		0.389088, -0.601298, 0.697890,
		40.851212, 32.632854, 19.188717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033798, 33.022526, 19.201654>,  <40.578850, 33.053764, 18.700193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033798, 33.022526, 19.201654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350418, 32.887379, 19.405338>,  <40.540390, 32.806290, 19.527550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350418, 32.887379, 19.405338>,  <40.033798, 33.022526, 19.201654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350418, 32.887379, 19.405338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306680, 0.501114, 0.809217,
		-0.528581, -0.796699, 0.293039,
		0.791549, -0.337868, 0.509211,
		40.587883, 32.786018, 19.558102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877132, 32.569180, 19.828384>,  <40.033798, 33.022526, 19.201654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877132, 32.569180, 19.828384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230885, 32.740608, 19.902348>,  <40.443138, 32.843468, 19.946726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230885, 32.740608, 19.902348>,  <39.877132, 32.569180, 19.828384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230885, 32.740608, 19.902348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358585, 0.370231, 0.856940,
		0.298803, -0.824169, 0.481106,
		0.884383, 0.428573, 0.184908,
		40.496201, 32.869183, 19.957819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992104, 32.383579, 20.507341>,  <39.877132, 32.569180, 19.828384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992104, 32.383579, 20.507341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212303, 32.710114, 20.437433>,  <40.344421, 32.906036, 20.395489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212303, 32.710114, 20.437433>,  <39.992104, 32.383579, 20.507341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212303, 32.710114, 20.437433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393112, 0.438158, 0.808381,
		0.736491, -0.376305, 0.562117,
		0.550494, 0.816341, -0.174769,
		40.377453, 32.955017, 20.385002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155319, 32.532581, 21.132284>,  <39.992104, 32.383579, 20.507341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155319, 32.532581, 21.132284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245247, 32.863739, 20.926741>,  <40.299202, 33.062431, 20.803415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245247, 32.863739, 20.926741>,  <40.155319, 32.532581, 21.132284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245247, 32.863739, 20.926741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318795, 0.560831, 0.764093,
		0.920774, -0.007967, 0.390014,
		0.224820, 0.827892, -0.513859,
		40.312695, 33.112106, 20.772583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683079, 32.939419, 21.502729>,  <40.155319, 32.532581, 21.132284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683079, 32.939419, 21.502729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490143, 33.203701, 21.272663>,  <40.374382, 33.362270, 21.134624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490143, 33.203701, 21.272663>,  <40.683079, 32.939419, 21.502729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490143, 33.203701, 21.272663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104636, 0.608433, 0.786677,
		0.869714, 0.439627, -0.224336,
		-0.482338, 0.660710, -0.575164,
		40.345440, 33.401913, 21.100115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887184, 33.628696, 21.711910>,  <40.683079, 32.939419, 21.502729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887184, 33.628696, 21.711910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541451, 33.690430, 21.520447>,  <40.334011, 33.727470, 21.405569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541451, 33.690430, 21.520447>,  <40.887184, 33.628696, 21.711910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541451, 33.690430, 21.520447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249105, 0.695423, 0.674042,
		0.436897, 0.701831, -0.562631,
		-0.864331, 0.154333, -0.478658,
		40.282150, 33.736729, 21.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751698, 34.308060, 21.875330>,  <40.887184, 33.628696, 21.711910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751698, 34.308060, 21.875330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408108, 34.165840, 21.727957>,  <40.201954, 34.080509, 21.639532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408108, 34.165840, 21.727957>,  <40.751698, 34.308060, 21.875330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408108, 34.165840, 21.727957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508448, 0.507513, 0.695637,
		-0.060350, 0.784865, -0.616721,
		-0.858975, -0.355552, -0.368435,
		40.150414, 34.059174, 21.617426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286785, 34.899784, 21.834875>,  <40.751698, 34.308060, 21.875330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286785, 34.899784, 21.834875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048645, 34.578491, 21.827127>,  <39.905762, 34.385715, 21.822479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048645, 34.578491, 21.827127>,  <40.286785, 34.899784, 21.834875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048645, 34.578491, 21.827127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569368, 0.404761, 0.715534,
		-0.566899, 0.437024, -0.698309,
		-0.595354, -0.803230, -0.019368,
		39.870037, 34.337521, 21.821318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765732, 35.160236, 21.997828>,  <40.286785, 34.899784, 21.834875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765732, 35.160236, 21.997828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689739, 34.775272, 22.075468>,  <39.644142, 34.544292, 22.122053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689739, 34.775272, 22.075468>,  <39.765732, 35.160236, 21.997828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689739, 34.775272, 22.075468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571019, 0.269140, 0.775565,
		-0.798651, 0.036509, -0.600686,
		-0.189984, -0.962409, 0.194101,
		39.632744, 34.486549, 22.133699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055569, 35.174419, 21.962894>,  <39.765732, 35.160236, 21.997828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055569, 35.174419, 21.962894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175507, 34.857460, 22.175385>,  <39.247467, 34.667286, 22.302877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175507, 34.857460, 22.175385>,  <39.055569, 35.174419, 21.962894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175507, 34.857460, 22.175385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638898, 0.246731, 0.728652,
		-0.708452, -0.557878, -0.432282,
		0.299842, -0.792399, 0.531224,
		39.265461, 34.619740, 22.334751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454239, 34.767796, 22.183334>,  <39.055569, 35.174419, 21.962894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454239, 34.767796, 22.183334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745113, 34.655121, 22.433725>,  <38.919640, 34.587517, 22.583960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745113, 34.655121, 22.433725>,  <38.454239, 34.767796, 22.183334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745113, 34.655121, 22.433725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619864, 0.122299, 0.775120,
		-0.294897, -0.951681, -0.085673,
		0.727190, -0.281686, 0.625978,
		38.963272, 34.570614, 22.621519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134811, 34.307106, 22.600561>,  <38.454239, 34.767796, 22.183334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134811, 34.307106, 22.600561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454342, 34.426056, 22.809729>,  <38.646061, 34.497425, 22.935228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454342, 34.426056, 22.809729>,  <38.134811, 34.307106, 22.600561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454342, 34.426056, 22.809729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561606, 0.057153, 0.825428,
		0.215576, -0.953048, 0.212664,
		0.798828, 0.297375, 0.522917,
		38.693989, 34.515266, 22.966604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017918, 33.894451, 23.258106>,  <38.134811, 34.307106, 22.600561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017918, 33.894451, 23.258106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272385, 34.193913, 23.332735>,  <38.425064, 34.373589, 23.377512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272385, 34.193913, 23.332735>,  <38.017918, 33.894451, 23.258106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272385, 34.193913, 23.332735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464183, 0.178219, 0.867624,
		0.616298, -0.638559, 0.460889,
		0.636169, 0.748652, 0.186572,
		38.463234, 34.418507, 23.388706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359070, 33.724121, 23.926132>,  <38.017918, 33.894451, 23.258106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359070, 33.724121, 23.926132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368717, 34.117870, 23.856354>,  <38.374504, 34.354118, 23.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368717, 34.117870, 23.856354>,  <38.359070, 33.724121, 23.926132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368717, 34.117870, 23.856354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550376, 0.158746, 0.819686,
		0.834568, 0.076240, 0.545603,
		0.024119, 0.984372, -0.174445,
		38.375954, 34.413181, 23.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523197, 34.178993, 24.551247>,  <38.359070, 33.724121, 23.926132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523197, 34.178993, 24.551247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322517, 34.428436, 24.311443>,  <38.202110, 34.578102, 24.167562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322517, 34.428436, 24.311443>,  <38.523197, 34.178993, 24.551247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322517, 34.428436, 24.311443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565872, 0.287595, 0.772709,
		0.654284, 0.726911, 0.208597,
		-0.501699, 0.623610, -0.599507,
		38.172009, 34.615520, 24.131592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441128, 34.842793, 24.916290>,  <38.523197, 34.178993, 24.551247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441128, 34.842793, 24.916290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170795, 34.885185, 24.624529>,  <38.008598, 34.910622, 24.449472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170795, 34.885185, 24.624529>,  <38.441128, 34.842793, 24.916290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170795, 34.885185, 24.624529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675926, 0.305497, 0.670668,
		0.293909, 0.946277, -0.134827,
		-0.675827, 0.105982, -0.729401,
		37.968048, 34.916981, 24.405708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052826, 35.381943, 25.157778>,  <38.441128, 34.842793, 24.916290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052826, 35.381943, 25.157778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797794, 35.246456, 24.881006>,  <37.644775, 35.165165, 24.714943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797794, 35.246456, 24.881006>,  <38.052826, 35.381943, 25.157778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797794, 35.246456, 24.881006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769723, 0.317293, 0.553942,
		0.031915, 0.885775, -0.463017,
		-0.637580, -0.338715, -0.691927,
		37.606522, 35.144840, 24.673428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577553, 35.924385, 25.029507>,  <38.052826, 35.381943, 25.157778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577553, 35.924385, 25.029507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405037, 35.582172, 24.914928>,  <37.301529, 35.376842, 24.846182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405037, 35.582172, 24.914928>,  <37.577553, 35.924385, 25.029507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405037, 35.582172, 24.914928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851912, 0.281642, 0.441501,
		-0.297045, 0.434440, -0.850309,
		-0.431289, -0.855535, -0.286445,
		37.275650, 35.325512, 24.828995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956615, 36.122715, 24.727468>,  <37.577553, 35.924385, 25.029507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956615, 36.122715, 24.727468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911049, 35.741287, 24.838982>,  <36.883709, 35.512428, 24.905890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911049, 35.741287, 24.838982>,  <36.956615, 36.122715, 24.727468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911049, 35.741287, 24.838982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836156, 0.243568, 0.491445,
		-0.536531, -0.177119, -0.825084,
		-0.113920, -0.953574, 0.278781,
		36.876873, 35.455215, 24.922615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279469, 35.969707, 24.644590>,  <36.956615, 36.122715, 24.727468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279469, 35.969707, 24.644590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403957, 35.693413, 24.905672>,  <36.478649, 35.527634, 25.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403957, 35.693413, 24.905672>,  <36.279469, 35.969707, 24.644590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403957, 35.693413, 24.905672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801561, 0.178169, 0.570750,
		-0.510531, -0.700810, -0.498220,
		0.311220, -0.690740, 0.652703,
		36.497322, 35.486191, 25.101482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679226, 35.573162, 24.750076>,  <36.279469, 35.969707, 24.644590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679226, 35.573162, 24.750076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907780, 35.512024, 25.072605>,  <36.044914, 35.475342, 25.266123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907780, 35.512024, 25.072605>,  <35.679226, 35.573162, 24.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907780, 35.512024, 25.072605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798099, 0.125407, 0.589332,
		-0.191198, -0.980260, -0.050335,
		0.571386, -0.152851, 0.806322,
		36.079197, 35.466167, 25.314501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200947, 35.421288, 25.274603>,  <35.679226, 35.573162, 24.750076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200947, 35.421288, 25.274603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520363, 35.486355, 25.506422>,  <35.712013, 35.525394, 25.645514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520363, 35.486355, 25.506422>,  <35.200947, 35.421288, 25.274603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520363, 35.486355, 25.506422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601306, 0.171283, 0.780444,
		0.027681, -0.971702, 0.234584,
		0.798539, 0.162660, 0.579549,
		35.759926, 35.535152, 25.680286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208073, 35.077988, 25.920099>,  <35.200947, 35.421288, 25.274603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208073, 35.077988, 25.920099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424370, 35.404858, 25.999924>,  <35.554146, 35.600979, 26.047817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424370, 35.404858, 25.999924>,  <35.208073, 35.077988, 25.920099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424370, 35.404858, 25.999924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528683, 0.145625, 0.836234,
		0.654289, -0.557690, 0.510772,
		0.540741, 0.817175, 0.199560,
		35.586594, 35.650009, 26.059792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338627, 35.014290, 26.644960>,  <35.208073, 35.077988, 25.920099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338627, 35.014290, 26.644960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413441, 35.388161, 26.524038>,  <35.458328, 35.612484, 26.451485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413441, 35.388161, 26.524038>,  <35.338627, 35.014290, 26.644960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413441, 35.388161, 26.524038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532431, 0.355069, 0.768404,
		0.825552, 0.017241, 0.564062,
		0.187033, 0.934681, -0.302308,
		35.469551, 35.668564, 26.433346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458183, 35.353775, 27.232197>,  <35.338627, 35.014290, 26.644960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458183, 35.353775, 27.232197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387627, 35.643356, 26.965431>,  <35.345295, 35.817104, 26.805372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387627, 35.643356, 26.965431>,  <35.458183, 35.353775, 27.232197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387627, 35.643356, 26.965431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497437, 0.519091, 0.695054,
		0.849378, 0.454348, 0.268561,
		-0.176389, 0.723956, -0.666914,
		35.334709, 35.860542, 26.765356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658291, 35.935764, 27.654150>,  <35.458183, 35.353775, 27.232197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658291, 35.935764, 27.654150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412678, 36.060642, 27.364185>,  <35.265308, 36.135571, 27.190207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412678, 36.060642, 27.364185>,  <35.658291, 35.935764, 27.654150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412678, 36.060642, 27.364185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596920, 0.417203, 0.685294,
		0.516382, 0.853507, -0.069820,
		-0.614033, 0.312197, -0.724911,
		35.228466, 36.154301, 27.146711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459641, 36.585606, 27.830011>,  <35.658291, 35.935764, 27.654150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459641, 36.585606, 27.830011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175774, 36.484196, 27.567076>,  <35.005455, 36.423347, 27.409315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175774, 36.484196, 27.567076>,  <35.459641, 36.585606, 27.830011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175774, 36.484196, 27.567076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701434, 0.341695, 0.625487,
		0.066031, 0.904969, -0.420323,
		-0.709669, -0.253527, -0.657339,
		34.962872, 36.408138, 27.369875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995644, 37.191471, 27.752329>,  <35.459641, 36.585606, 27.830011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995644, 37.191471, 27.752329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766380, 36.893593, 27.615557>,  <34.628822, 36.714867, 27.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766380, 36.893593, 27.615557>,  <34.995644, 37.191471, 27.752329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766380, 36.893593, 27.615557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717792, 0.254966, 0.647895,
		-0.395305, 0.616780, -0.680674,
		-0.573157, -0.744698, -0.341930,
		34.594433, 36.670185, 27.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368015, 37.484417, 27.643970>,  <34.995644, 37.191471, 27.752329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368015, 37.484417, 27.643970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299076, 37.090740, 27.660242>,  <34.257713, 36.854534, 27.670004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299076, 37.090740, 27.660242>,  <34.368015, 37.484417, 27.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299076, 37.090740, 27.660242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733534, 0.155794, 0.661556,
		-0.657438, 0.084177, -0.748792,
		-0.172345, -0.984196, 0.040678,
		34.247372, 36.795483, 27.672445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555992, 37.392410, 27.618193>,  <34.368015, 37.484417, 27.643970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555992, 37.392410, 27.618193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720409, 37.059917, 27.767906>,  <33.819061, 36.860420, 27.857735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720409, 37.059917, 27.767906>,  <33.555992, 37.392410, 27.618193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720409, 37.059917, 27.767906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634066, 0.034298, 0.772518,
		-0.654981, -0.554862, -0.512960,
		0.411047, -0.831235, 0.374284,
		33.843723, 36.810547, 27.880192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981277, 36.981602, 27.846087>,  <33.555992, 37.392410, 27.618193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981277, 36.981602, 27.846087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304337, 36.845493, 28.038715>,  <33.498173, 36.763828, 28.154293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304337, 36.845493, 28.038715>,  <32.981277, 36.981602, 27.846087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304337, 36.845493, 28.038715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480981, 0.092280, 0.871861,
		-0.341109, -0.935788, -0.089134,
		0.807652, -0.340272, 0.481574,
		33.546631, 36.743412, 28.183187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698299, 36.696514, 28.415674>,  <32.981277, 36.981602, 27.846087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698299, 36.696514, 28.415674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085403, 36.679718, 28.515018>,  <33.317665, 36.669640, 28.574625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085403, 36.679718, 28.515018>,  <32.698299, 36.696514, 28.415674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085403, 36.679718, 28.515018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250705, -0.065289, 0.965859,
		-0.024342, -0.996983, -0.073712,
		0.967758, -0.041991, 0.248359,
		33.375732, 36.667118, 28.589525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803993, 36.127930, 28.886858>,  <32.698299, 36.696514, 28.415674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803993, 36.127930, 28.886858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078342, 36.405224, 28.975405>,  <33.242954, 36.571598, 29.028534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078342, 36.405224, 28.975405>,  <32.803993, 36.127930, 28.886858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078342, 36.405224, 28.975405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333883, 0.029484, 0.942153,
		0.646605, -0.720110, 0.251681,
		0.685874, 0.693233, 0.221368,
		33.284103, 36.613194, 29.041815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033199, 35.928772, 29.573854>,  <32.803993, 36.127930, 28.886858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033199, 35.928772, 29.573854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187309, 36.295498, 29.531893>,  <33.279778, 36.515533, 29.506716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187309, 36.295498, 29.531893>,  <33.033199, 35.928772, 29.573854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187309, 36.295498, 29.531893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151562, 0.175003, 0.972832,
		0.910269, -0.358911, 0.206380,
		0.385277, 0.916819, -0.104903,
		33.302891, 36.570545, 29.500422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472031, 36.022217, 30.107849>,  <33.033199, 35.928772, 29.573854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472031, 36.022217, 30.107849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356613, 36.384262, 29.982941>,  <33.287365, 36.601490, 29.907995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356613, 36.384262, 29.982941>,  <33.472031, 36.022217, 30.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356613, 36.384262, 29.982941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300977, 0.223868, 0.926982,
		0.908932, 0.361458, 0.207824,
		-0.288540, 0.905114, -0.312271,
		33.270050, 36.655796, 29.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875412, 36.485401, 30.493900>,  <33.472031, 36.022217, 30.107849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875412, 36.485401, 30.493900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551098, 36.681847, 30.366499>,  <33.356510, 36.799713, 30.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551098, 36.681847, 30.366499>,  <33.875412, 36.485401, 30.493900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551098, 36.681847, 30.366499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203282, 0.274017, 0.939995,
		0.548916, 0.826877, -0.122334,
		-0.810782, 0.491110, -0.318501,
		33.307861, 36.829178, 30.270948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862019, 36.963757, 30.965986>,  <33.875412, 36.485401, 30.493900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862019, 36.963757, 30.965986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493797, 36.964115, 30.809742>,  <33.272865, 36.964333, 30.715996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493797, 36.964115, 30.809742>,  <33.862019, 36.963757, 30.965986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493797, 36.964115, 30.809742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363392, 0.364792, 0.857247,
		0.143263, 0.931088, -0.335485,
		-0.920555, 0.000899, -0.390612,
		33.217632, 36.964386, 30.692558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604568, 37.656105, 31.079973>,  <33.862019, 36.963757, 30.965986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604568, 37.656105, 31.079973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305229, 37.393356, 31.043098>,  <33.125626, 37.235706, 31.020973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305229, 37.393356, 31.043098>,  <33.604568, 37.656105, 31.079973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305229, 37.393356, 31.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302604, 0.214415, 0.928686,
		-0.590258, 0.722876, -0.359228,
		-0.748349, -0.656868, -0.092185,
		33.080723, 37.196297, 31.015444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253056, 37.731220, 31.389856>,  <33.604568, 37.656105, 31.079973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253056, 37.731220, 31.389856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 37.919888, 31.623451>,  <34.675888, 38.033089, 31.763607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 37.919888, 31.623451>,  <34.253056, 37.731220, 31.389856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517326, 37.919888, 31.623451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637321, 0.058624, -0.768366,
		-0.396646, 0.879827, -0.261870,
		0.660677, 0.471664, 0.583985,
		34.715530, 38.061386, 31.798647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352535, 38.336464, 31.094212>,  <34.253056, 37.731220, 31.389856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352535, 38.336464, 31.094212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662144, 38.211830, 31.314686>,  <34.847908, 38.137051, 31.446970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662144, 38.211830, 31.314686>,  <34.352535, 38.336464, 31.094212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662144, 38.211830, 31.314686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596442, 0.066689, -0.799881,
		0.212470, 0.947876, 0.237459,
		0.774024, -0.311581, 0.551184,
		34.894352, 38.118355, 31.480042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891304, 38.768684, 30.854780>,  <34.352535, 38.336464, 31.094212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891304, 38.768684, 30.854780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091873, 38.480019, 31.045687>,  <35.212215, 38.306820, 31.160231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091873, 38.480019, 31.045687>,  <34.891304, 38.768684, 30.854780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091873, 38.480019, 31.045687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734679, 0.063788, -0.675409,
		0.456973, 0.689300, 0.562175,
		0.501420, -0.721662, 0.477265,
		35.242298, 38.263519, 31.188866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538116, 39.051338, 30.918346>,  <34.891304, 38.768684, 30.854780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538116, 39.051338, 30.918346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552471, 38.652596, 30.946596>,  <35.561085, 38.413349, 30.963547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552471, 38.652596, 30.946596>,  <35.538116, 39.051338, 30.918346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552471, 38.652596, 30.946596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632343, -0.032073, -0.774025,
		0.773857, 0.072435, 0.629204,
		0.035885, -0.996857, 0.070624,
		35.563236, 38.353539, 30.967783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238297, 38.913509, 30.743813>,  <35.538116, 39.051338, 30.918346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238297, 38.913509, 30.743813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093647, 38.541325, 30.720234>,  <36.006859, 38.318016, 30.706087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093647, 38.541325, 30.720234>,  <36.238297, 38.913509, 30.743813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093647, 38.541325, 30.720234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746549, -0.251113, -0.616123,
		0.558476, -0.266809, 0.785441,
		-0.361621, -0.930460, -0.058945,
		35.985161, 38.262188, 30.702551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839359, 38.335587, 30.909716>,  <36.238297, 38.913509, 30.743813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839359, 38.335587, 30.909716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552391, 38.189320, 30.672537>,  <36.380211, 38.101559, 30.530230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552391, 38.189320, 30.672537>,  <36.839359, 38.335587, 30.909716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552391, 38.189320, 30.672537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696046, -0.341249, -0.631720,
		0.028658, -0.865930, 0.499343,
		-0.717425, -0.365670, -0.592947,
		36.337162, 38.079620, 30.494652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138096, 37.663288, 30.627840>,  <36.839359, 38.335587, 30.909716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138096, 37.663288, 30.627840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839706, 37.780308, 30.388529>,  <36.660671, 37.850521, 30.244942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839706, 37.780308, 30.388529>,  <37.138096, 37.663288, 30.627840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839706, 37.780308, 30.388529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542856, -0.253278, -0.800723,
		-0.385783, -0.922097, 0.030126,
		-0.745975, 0.292552, -0.598276,
		36.615913, 37.868073, 30.209045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091911, 37.179390, 30.026764>,  <37.138096, 37.663288, 30.627840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091911, 37.179390, 30.026764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860542, 37.473385, 29.885216>,  <36.721722, 37.649780, 29.800287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860542, 37.473385, 29.885216>,  <37.091911, 37.179390, 30.026764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860542, 37.473385, 29.885216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366776, -0.153151, -0.917616,
		-0.728629, -0.660563, -0.180988,
		-0.578425, 0.734983, -0.353869,
		36.687016, 37.693878, 29.779055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666008, 36.930256, 29.382286>,  <37.091911, 37.179390, 30.026764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666008, 36.930256, 29.382286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697063, 37.328983, 29.389565>,  <36.715694, 37.568218, 29.393930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697063, 37.328983, 29.389565>,  <36.666008, 36.930256, 29.382286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697063, 37.328983, 29.389565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281789, -0.004433, -0.959466,
		-0.956330, 0.079616, -0.281236,
		0.077635, 0.996816, 0.018195,
		36.720352, 37.628029, 29.395023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232407, 37.148613, 28.795145>,  <36.666008, 36.930256, 29.382286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232407, 37.148613, 28.795145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489494, 37.438461, 28.894609>,  <36.643749, 37.612370, 28.954288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489494, 37.438461, 28.894609>,  <36.232407, 37.148613, 28.795145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489494, 37.438461, 28.894609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290964, 0.069369, -0.954216,
		-0.708695, 0.685646, -0.166254,
		0.642721, 0.724622, 0.248660,
		36.682312, 37.655849, 28.969208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076309, 37.776463, 28.349024>,  <36.232407, 37.148613, 28.795145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076309, 37.776463, 28.349024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451717, 37.783150, 28.486946>,  <36.676964, 37.787163, 28.569700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451717, 37.783150, 28.486946>,  <36.076309, 37.776463, 28.349024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451717, 37.783150, 28.486946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345144, -0.065347, -0.936272,
		0.006879, 0.997723, -0.067100,
		0.938525, 0.016718, 0.344807,
		36.733276, 37.788166, 28.590389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376686, 38.187065, 27.883739>,  <36.076309, 37.776463, 28.349024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376686, 38.187065, 27.883739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673588, 37.981705, 28.056009>,  <36.851727, 37.858486, 28.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673588, 37.981705, 28.056009>,  <36.376686, 38.187065, 27.883739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673588, 37.981705, 28.056009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441348, -0.109079, -0.890682,
		0.504256, 0.851187, 0.145626,
		0.742252, -0.513403, 0.430673,
		36.896263, 37.827682, 28.185211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036465, 38.463741, 27.831734>,  <36.376686, 38.187065, 27.883739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036465, 38.463741, 27.831734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150494, 38.093906, 27.932829>,  <37.218910, 37.872005, 27.993486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150494, 38.093906, 27.932829>,  <37.036465, 38.463741, 27.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150494, 38.093906, 27.932829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685711, 0.012485, -0.727767,
		0.669727, 0.380772, 0.637557,
		0.285073, -0.924585, 0.252738,
		37.236015, 37.816532, 28.008650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772858, 38.515671, 27.663357>,  <37.036465, 38.463741, 27.831734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772858, 38.515671, 27.663357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676281, 38.130913, 27.714672>,  <37.618336, 37.900059, 27.745461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676281, 38.130913, 27.714672>,  <37.772858, 38.515671, 27.663357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676281, 38.130913, 27.714672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751909, -0.269011, -0.601885,
		0.613462, -0.048862, 0.788211,
		-0.241446, -0.961897, 0.128288,
		37.603848, 37.842342, 27.753159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408421, 38.148724, 27.783880>,  <37.772858, 38.515671, 27.663357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408421, 38.148724, 27.783880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140354, 37.884369, 27.648766>,  <37.979515, 37.725754, 27.567696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140354, 37.884369, 27.648766>,  <38.408421, 38.148724, 27.783880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140354, 37.884369, 27.648766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668580, -0.339913, -0.661408,
		0.322299, -0.669093, 0.669655,
		-0.670168, -0.660889, -0.337789,
		37.939304, 37.686104, 27.547428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689812, 37.482330, 27.935999>,  <38.408421, 38.148724, 27.783880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689812, 37.482330, 27.935999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419453, 37.438766, 27.644438>,  <38.257236, 37.412628, 27.469501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419453, 37.438766, 27.644438>,  <38.689812, 37.482330, 27.935999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419453, 37.438766, 27.644438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683452, -0.462714, -0.564614,
		-0.275780, -0.879792, 0.387184,
		-0.675898, -0.108913, -0.728903,
		38.216682, 37.406094, 27.425766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858910, 36.873013, 27.596874>,  <38.689812, 37.482330, 27.935999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858910, 36.873013, 27.596874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590576, 36.991280, 27.324827>,  <38.429577, 37.062241, 27.161598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590576, 36.991280, 27.324827>,  <38.858910, 36.873013, 27.596874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590576, 36.991280, 27.324827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497887, -0.500122, -0.708510,
		-0.549630, -0.813914, 0.188286,
		-0.670832, 0.295673, -0.680120,
		38.389328, 37.079979, 27.120790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590080, 36.252777, 27.280289>,  <38.858910, 36.873013, 27.596874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590080, 36.252777, 27.280289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552341, 36.570415, 27.040117>,  <38.529697, 36.760998, 26.896015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552341, 36.570415, 27.040117>,  <38.590080, 36.252777, 27.280289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552341, 36.570415, 27.040117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546040, -0.463026, -0.698175,
		-0.832429, -0.393731, -0.389920,
		-0.094350, 0.794093, -0.600429,
		38.524036, 36.808643, 26.859989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435406, 36.029587, 26.666649>,  <38.590080, 36.252777, 27.280289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435406, 36.029587, 26.666649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574810, 36.384949, 26.547127>,  <38.658451, 36.598164, 26.475414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574810, 36.384949, 26.547127>,  <38.435406, 36.029587, 26.666649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574810, 36.384949, 26.547127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509656, -0.447159, -0.735051,
		-0.786633, 0.103885, -0.608618,
		0.348509, 0.888401, -0.298805,
		38.679363, 36.651470, 26.457485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246548, 36.116096, 25.933590>,  <38.435406, 36.029587, 26.666649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246548, 36.116096, 25.933590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570850, 36.336582, 26.012415>,  <38.765434, 36.468872, 26.059710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570850, 36.336582, 26.012415>,  <38.246548, 36.116096, 25.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570850, 36.336582, 26.012415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476619, -0.426150, -0.768915,
		-0.339855, 0.717331, -0.608223,
		0.810760, 0.551210, 0.197064,
		38.814079, 36.501945, 26.071535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513638, 36.306541, 25.290991>,  <38.246548, 36.116096, 25.933590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513638, 36.306541, 25.290991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828773, 36.344616, 25.534384>,  <39.017857, 36.367462, 25.680420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828773, 36.344616, 25.534384>,  <38.513638, 36.306541, 25.290991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828773, 36.344616, 25.534384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591506, -0.392147, -0.704515,
		0.171553, 0.914964, -0.365253,
		0.787839, 0.095188, 0.608481,
		39.065125, 36.373173, 25.716928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996132, 36.577709, 24.876574>,  <38.513638, 36.306541, 25.290991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996132, 36.577709, 24.876574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199738, 36.420326, 25.182800>,  <39.321899, 36.325897, 25.366537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199738, 36.420326, 25.182800>,  <38.996132, 36.577709, 24.876574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199738, 36.420326, 25.182800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668587, -0.379441, -0.639543,
		0.542120, 0.837387, 0.069918,
		0.509016, -0.393456, 0.765569,
		39.352444, 36.302288, 25.412472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588261, 36.640076, 24.644798>,  <38.996132, 36.577709, 24.876574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588261, 36.640076, 24.644798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641747, 36.383919, 24.947325>,  <39.673840, 36.230225, 25.128839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641747, 36.383919, 24.947325>,  <39.588261, 36.640076, 24.644798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641747, 36.383919, 24.947325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851534, -0.316158, -0.418250,
		0.506961, 0.699954, 0.503045,
		0.133715, -0.640397, 0.756315,
		39.681862, 36.191799, 25.174219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293720, 36.672325, 24.900087>,  <39.588261, 36.640076, 24.644798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293720, 36.672325, 24.900087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149757, 36.314465, 25.005964>,  <40.063377, 36.099747, 25.069490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149757, 36.314465, 25.005964>,  <40.293720, 36.672325, 24.900087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149757, 36.314465, 25.005964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809582, -0.440483, -0.388010,
		0.463726, 0.074642, 0.882829,
		-0.359909, -0.894653, 0.264692,
		40.041786, 36.046070, 25.085371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809029, 36.233440, 25.216532>,  <40.293720, 36.672325, 24.900087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809029, 36.233440, 25.216532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535671, 35.963284, 25.105669>,  <40.371655, 35.801189, 25.039150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535671, 35.963284, 25.105669>,  <40.809029, 36.233440, 25.216532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535671, 35.963284, 25.105669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728369, -0.605060, -0.321530,
		0.049461, -0.421606, 0.905429,
		-0.683397, -0.675390, -0.277158,
		40.330650, 35.760666, 25.022522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234894, 35.628307, 25.235357>,  <40.809029, 36.233440, 25.216532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234894, 35.628307, 25.235357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898342, 35.518005, 25.049437>,  <40.696411, 35.451824, 24.937883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898342, 35.518005, 25.049437>,  <41.234894, 35.628307, 25.235357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898342, 35.518005, 25.049437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487352, -0.758859, -0.431995,
		-0.233596, -0.589995, 0.772877,
		-0.841380, -0.275751, -0.464802,
		40.645927, 35.435280, 24.909996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168835, 34.894741, 25.294542>,  <41.234894, 35.628307, 25.235357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168835, 34.894741, 25.294542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976040, 35.006233, 24.962276>,  <40.860363, 35.073128, 24.762917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976040, 35.006233, 24.962276>,  <41.168835, 34.894741, 25.294542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976040, 35.006233, 24.962276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531004, -0.661185, -0.529971,
		-0.696941, -0.696523, 0.170674,
		-0.481984, 0.278730, -0.830663,
		40.831444, 35.089851, 24.713078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108139, 34.340534, 24.840092>,  <41.168835, 34.894741, 25.294542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108139, 34.340534, 24.840092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033913, 34.629028, 24.573143>,  <40.989376, 34.802124, 24.412973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033913, 34.629028, 24.573143>,  <41.108139, 34.340534, 24.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033913, 34.629028, 24.573143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639508, -0.427011, -0.639290,
		-0.746054, -0.545417, -0.381999,
		-0.185562, 0.721236, -0.667372,
		40.978245, 34.845398, 24.372931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206371, 33.983685, 24.198202>,  <41.108139, 34.340534, 24.840092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206371, 33.983685, 24.198202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231987, 34.372780, 24.109053>,  <41.247356, 34.606239, 24.055563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231987, 34.372780, 24.109053>,  <41.206371, 33.983685, 24.198202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231987, 34.372780, 24.109053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701565, -0.202713, -0.683165,
		-0.709722, -0.112610, -0.695423,
		0.064041, 0.972742, -0.222873,
		41.251198, 34.664604, 24.042191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044483, 33.917446, 23.527124>,  <41.206371, 33.983685, 24.198202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044483, 33.917446, 23.527124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258301, 34.252071, 23.575161>,  <41.386593, 34.452847, 23.603983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258301, 34.252071, 23.575161>,  <41.044483, 33.917446, 23.527124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258301, 34.252071, 23.575161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525485, -0.217701, -0.822479,
		-0.661913, 0.502757, -0.555973,
		0.534543, 0.836566, 0.120092,
		41.418663, 34.503040, 23.611189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955700, 34.266861, 22.890194>,  <41.044483, 33.917446, 23.527124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955700, 34.266861, 22.890194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290115, 34.390553, 23.071487>,  <41.490765, 34.464767, 23.180264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290115, 34.390553, 23.071487>,  <40.955700, 34.266861, 22.890194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290115, 34.390553, 23.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536010, -0.283857, -0.795058,
		-0.117203, 0.907635, -0.403065,
		0.836036, 0.309230, 0.453233,
		41.540928, 34.483322, 23.207457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390240, 34.486385, 22.381220>,  <40.955700, 34.266861, 22.890194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390240, 34.486385, 22.381220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649395, 34.495014, 22.685791>,  <41.804890, 34.500191, 22.868534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649395, 34.495014, 22.685791>,  <41.390240, 34.486385, 22.381220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649395, 34.495014, 22.685791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753893, -0.161197, -0.636915,
		0.108998, 0.986686, -0.120703,
		0.647893, 0.021575, 0.761426,
		41.843761, 34.501488, 22.914219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892742, 34.949257, 22.140331>,  <41.390240, 34.486385, 22.381220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892742, 34.949257, 22.140331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058071, 34.711903, 22.416609>,  <42.157269, 34.569489, 22.582375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058071, 34.711903, 22.416609>,  <41.892742, 34.949257, 22.140331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058071, 34.711903, 22.416609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731388, -0.235512, -0.640004,
		0.542437, 0.769692, 0.336655,
		0.413320, -0.593387, 0.690694,
		42.182068, 34.533886, 22.623817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497402, 34.931393, 22.016178>,  <41.892742, 34.949257, 22.140331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497402, 34.931393, 22.016178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466129, 34.586922, 22.217081>,  <42.447365, 34.380238, 22.337622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466129, 34.586922, 22.217081>,  <42.497402, 34.931393, 22.016178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466129, 34.586922, 22.217081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637177, -0.430635, -0.639186,
		0.766741, 0.270052, 0.582392,
		-0.078185, -0.861177, 0.502257,
		42.442673, 34.328568, 22.367758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200024, 34.709415, 22.196825>,  <42.497402, 34.931393, 22.016178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200024, 34.709415, 22.196825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980061, 34.375443, 22.205772>,  <42.848083, 34.175060, 22.211142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980061, 34.375443, 22.205772>,  <43.200024, 34.709415, 22.196825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980061, 34.375443, 22.205772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698728, -0.474543, -0.535339,
		0.457584, -0.278756, 0.844341,
		-0.549905, -0.834928, 0.022369,
		42.815090, 34.124966, 22.212482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692616, 34.162376, 22.331436>,  <43.200024, 34.709415, 22.196825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692616, 34.162376, 22.331436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384304, 33.931789, 22.222935>,  <43.199318, 33.793438, 22.157833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384304, 33.931789, 22.222935>,  <43.692616, 34.162376, 22.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384304, 33.931789, 22.222935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622611, -0.591296, -0.512566,
		0.135087, -0.563963, 0.814676,
		-0.770783, -0.576468, -0.271254,
		43.153069, 33.758850, 22.141558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731426, 33.478180, 22.627609>,  <43.692616, 34.162376, 22.331436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731426, 33.478180, 22.627609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500282, 33.443153, 22.303040>,  <43.361595, 33.422138, 22.108297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500282, 33.443153, 22.303040>,  <43.731426, 33.478180, 22.627609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500282, 33.443153, 22.303040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639784, -0.665886, -0.383761,
		-0.506711, -0.740897, 0.440813,
		-0.577858, -0.087570, -0.811425,
		43.326923, 33.416882, 22.059612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679626, 32.692867, 22.521482>,  <43.731426, 33.478180, 22.627609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679626, 32.692867, 22.521482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586929, 32.849670, 22.165365>,  <43.531311, 32.943752, 21.951694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586929, 32.849670, 22.165365>,  <43.679626, 32.692867, 22.521482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586929, 32.849670, 22.165365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556790, -0.697015, -0.451835,
		-0.797672, -0.600417, -0.056737,
		-0.231743, 0.392007, -0.890295,
		43.517406, 32.967274, 21.898277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551067, 31.993736, 22.197241>,  <43.679626, 32.692867, 22.521482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551067, 31.993736, 22.197241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718719, 31.732374, 22.449398>,  <43.819309, 31.575558, 22.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718719, 31.732374, 22.449398>,  <43.551067, 31.993736, 22.197241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718719, 31.732374, 22.449398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623106, 0.297988, 0.723148,
		-0.660357, -0.695893, -0.282244,
		0.419128, -0.653403, 0.630393,
		43.844460, 31.536354, 22.638515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994095, 31.664362, 22.529999>,  <43.551067, 31.993736, 22.197241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994095, 31.664362, 22.529999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301636, 31.599384, 22.777380>,  <43.486160, 31.560398, 22.925808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301636, 31.599384, 22.777380>,  <42.994095, 31.664362, 22.529999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301636, 31.599384, 22.777380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610090, 0.103256, 0.785575,
		-0.191471, -0.981300, -0.019718,
		0.768849, -0.162444, 0.618452,
		43.532291, 31.550652, 22.962915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899765, 31.135645, 22.915583>,  <42.994095, 31.664362, 22.529999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899765, 31.135645, 22.915583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151875, 31.355448, 23.134964>,  <43.303139, 31.487329, 23.266592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151875, 31.355448, 23.134964>,  <42.899765, 31.135645, 22.915583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151875, 31.355448, 23.134964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641230, -0.029818, 0.766769,
		0.437698, -0.834957, 0.333567,
		0.630273, 0.549507, 0.548451,
		43.340958, 31.520300, 23.299500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831211, 30.963032, 23.606567>,  <42.899765, 31.135645, 22.915583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831211, 30.963032, 23.606567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043297, 31.291996, 23.689035>,  <43.170547, 31.489374, 23.738516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043297, 31.291996, 23.689035>,  <42.831211, 30.963032, 23.606567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043297, 31.291996, 23.689035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381855, 0.014519, 0.924108,
		0.757005, -0.568707, 0.321740,
		0.530218, 0.822413, 0.206172,
		43.202362, 31.538719, 23.750887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269428, 30.901674, 24.290577>,  <42.831211, 30.963032, 23.606567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269428, 30.901674, 24.290577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173481, 31.278948, 24.198605>,  <43.115913, 31.505312, 24.143421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173481, 31.278948, 24.198605>,  <43.269428, 30.901674, 24.290577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173481, 31.278948, 24.198605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506281, 0.080553, 0.858598,
		0.828338, 0.322358, 0.458194,
		-0.239867, 0.943184, -0.229929,
		43.101521, 31.561903, 24.129625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187321, 31.139153, 24.900372>,  <43.269428, 30.901674, 24.290577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187321, 31.139153, 24.900372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029690, 31.446100, 24.698044>,  <42.935112, 31.630268, 24.576647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029690, 31.446100, 24.698044>,  <43.187321, 31.139153, 24.900372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029690, 31.446100, 24.698044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647508, 0.158773, 0.745336,
		0.652257, 0.621238, 0.434309,
		-0.394074, 0.767369, -0.505817,
		42.911469, 31.676311, 24.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141254, 31.697361, 25.347153>,  <43.187321, 31.139153, 24.900372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141254, 31.697361, 25.347153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889130, 31.808775, 25.057289>,  <42.737854, 31.875624, 24.883371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889130, 31.808775, 25.057289>,  <43.141254, 31.697361, 25.347153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889130, 31.808775, 25.057289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705716, 0.183427, 0.684339,
		0.323532, 0.942748, 0.080949,
		-0.630311, 0.278533, -0.724657,
		42.700035, 31.892334, 24.839891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849899, 32.343498, 25.541115>,  <43.141254, 31.697361, 25.347153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849899, 32.343498, 25.541115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579067, 32.203438, 25.282206>,  <42.416569, 32.119404, 25.126860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579067, 32.203438, 25.282206>,  <42.849899, 32.343498, 25.541115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579067, 32.203438, 25.282206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735911, 0.320761, 0.596277,
		-0.001165, 0.880062, -0.474857,
		-0.677077, -0.350147, -0.647274,
		42.375946, 32.098392, 25.088024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467979, 32.938812, 25.446680>,  <42.849899, 32.343498, 25.541115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467979, 32.938812, 25.446680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242188, 32.628242, 25.334591>,  <42.106712, 32.441902, 25.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242188, 32.628242, 25.334591>,  <42.467979, 32.938812, 25.446680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242188, 32.628242, 25.334591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708549, 0.281612, 0.647033,
		-0.423459, 0.563789, -0.709101,
		-0.564482, -0.776425, -0.280221,
		42.072842, 32.395313, 25.250525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827744, 33.227509, 25.204884>,  <42.467979, 32.938812, 25.446680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827744, 33.227509, 25.204884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744133, 32.843460, 25.279154>,  <41.693966, 32.613029, 25.323717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744133, 32.843460, 25.279154>,  <41.827744, 33.227509, 25.204884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744133, 32.843460, 25.279154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814387, 0.276019, 0.510478,
		-0.541371, -0.044510, -0.839605,
		-0.209025, -0.960121, 0.185677,
		41.681427, 32.555424, 25.334856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072140, 33.175198, 25.246698>,  <41.827744, 33.227509, 25.204884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072140, 33.175198, 25.246698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171848, 32.829773, 25.422028>,  <41.231674, 32.622520, 25.527225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171848, 32.829773, 25.422028>,  <41.072140, 33.175198, 25.246698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171848, 32.829773, 25.422028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862584, 0.007770, 0.505854,
		-0.440241, -0.504188, -0.742955,
		0.249273, -0.863559, 0.438325,
		41.246632, 32.570705, 25.553526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563152, 32.678791, 25.178991>,  <41.072140, 33.175198, 25.246698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563152, 32.678791, 25.178991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769444, 32.567253, 25.503033>,  <40.893219, 32.500332, 25.697458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769444, 32.567253, 25.503033>,  <40.563152, 32.678791, 25.178991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769444, 32.567253, 25.503033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804204, 0.168499, 0.569969,
		-0.295436, -0.945438, -0.137349,
		0.515727, -0.278846, 0.810106,
		40.924160, 32.483601, 25.746065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212673, 32.135818, 25.596914>,  <40.563152, 32.678791, 25.178991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212673, 32.135818, 25.596914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472889, 32.327030, 25.832979>,  <40.629017, 32.441757, 25.974619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472889, 32.327030, 25.832979>,  <40.212673, 32.135818, 25.596914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472889, 32.327030, 25.832979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737671, 0.212841, 0.640734,
		0.180673, -0.852170, 0.491084,
		0.650537, 0.478022, 0.590167,
		40.668049, 32.470440, 26.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040188, 31.984715, 26.302998>,  <40.212673, 32.135818, 25.596914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040188, 31.984715, 26.302998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265060, 32.314613, 26.327463>,  <40.399986, 32.512554, 26.342142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265060, 32.314613, 26.327463>,  <40.040188, 31.984715, 26.302998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265060, 32.314613, 26.327463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519010, 0.294266, 0.802518,
		0.643877, -0.482906, 0.593484,
		0.562184, 0.824747, 0.061162,
		40.433716, 32.562038, 26.345812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218632, 32.017311, 27.045321>,  <40.040188, 31.984715, 26.302998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218632, 32.017311, 27.045321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251987, 32.369217, 26.858109>,  <40.271999, 32.580360, 26.745781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251987, 32.369217, 26.858109>,  <40.218632, 32.017311, 27.045321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251987, 32.369217, 26.858109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519451, 0.439186, 0.732998,
		0.850421, 0.181994, 0.493621,
		0.083390, 0.879769, -0.468031,
		40.277004, 32.633148, 26.717699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349369, 32.481689, 27.617800>,  <40.218632, 32.017311, 27.045321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349369, 32.481689, 27.617800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239964, 32.716263, 27.312832>,  <40.174320, 32.857006, 27.129852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239964, 32.716263, 27.312832>,  <40.349369, 32.481689, 27.617800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239964, 32.716263, 27.312832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433309, 0.632536, 0.641982,
		0.858739, 0.505955, 0.081099,
		-0.273516, 0.586436, -0.762418,
		40.157909, 32.892193, 27.084106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417732, 33.037319, 27.882599>,  <40.349369, 32.481689, 27.617800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417732, 33.037319, 27.882599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177017, 33.140339, 27.580204>,  <40.032589, 33.202148, 27.398767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177017, 33.140339, 27.580204>,  <40.417732, 33.037319, 27.882599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177017, 33.140339, 27.580204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517133, 0.595694, 0.614591,
		0.608623, 0.760802, -0.225297,
		-0.601790, 0.257546, -0.755988,
		39.996479, 33.217602, 27.353407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316498, 33.821861, 27.907818>,  <40.417732, 33.037319, 27.882599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316498, 33.821861, 27.907818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024437, 33.660587, 27.687157>,  <39.849201, 33.563824, 27.554760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024437, 33.660587, 27.687157>,  <40.316498, 33.821861, 27.907818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024437, 33.660587, 27.687157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647429, 0.666339, 0.369904,
		0.218448, 0.627241, -0.747562,
		-0.730149, -0.403189, -0.551654,
		39.805393, 33.539631, 27.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984993, 34.444954, 27.550611>,  <40.316498, 33.821861, 27.907818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984993, 34.444954, 27.550611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712997, 34.153522, 27.517641>,  <39.549801, 33.978664, 27.497858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712997, 34.153522, 27.517641>,  <39.984993, 34.444954, 27.550611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712997, 34.153522, 27.517641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691857, 0.600326, 0.401177,
		-0.242807, 0.329822, -0.912284,
		-0.679985, -0.728579, -0.082426,
		39.509003, 33.934948, 27.492912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528141, 34.828415, 27.114801>,  <39.984993, 34.444954, 27.550611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528141, 34.828415, 27.114801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343472, 34.535866, 27.315582>,  <39.232670, 34.360336, 27.436050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343472, 34.535866, 27.315582>,  <39.528141, 34.828415, 27.114801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343472, 34.535866, 27.315582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711698, 0.643163, 0.282539,
		-0.529477, -0.226797, -0.817446,
		-0.461671, -0.731372, 0.501951,
		39.204971, 34.316456, 27.466167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827030, 35.001980, 27.147667>,  <39.528141, 34.828415, 27.114801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827030, 35.001980, 27.147667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859421, 34.726913, 27.436266>,  <38.878853, 34.561874, 27.609425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859421, 34.726913, 27.436266>,  <38.827030, 35.001980, 27.147667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859421, 34.726913, 27.436266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719617, 0.460516, 0.519688,
		-0.689633, -0.561282, -0.457568,
		0.080974, -0.687668, 0.721496,
		38.883713, 34.520615, 27.652716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177971, 34.899857, 27.328665>,  <38.827030, 35.001980, 27.147667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177971, 34.899857, 27.328665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387886, 34.770924, 27.643801>,  <38.513836, 34.693565, 27.832882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387886, 34.770924, 27.643801>,  <38.177971, 34.899857, 27.328665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387886, 34.770924, 27.643801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642085, 0.457743, 0.614979,
		-0.558856, -0.828598, 0.033255,
		0.524792, -0.322332, 0.787842,
		38.545322, 34.674225, 27.880154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650581, 34.742580, 27.818945>,  <38.177971, 34.899857, 27.328665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650581, 34.742580, 27.818945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 34.779018, 28.031212>,  <38.189892, 34.800880, 28.158571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 34.779018, 28.031212>,  <37.650581, 34.742580, 27.818945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987652, 34.779018, 28.031212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479164, 0.576393, 0.661947,
		-0.245573, -0.812080, 0.529358,
		0.842672, 0.091093, 0.530666,
		38.240452, 34.806347, 28.190413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368347, 34.728394, 28.483217>,  <37.650581, 34.742580, 27.818945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368347, 34.728394, 28.483217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738468, 34.879723, 28.493704>,  <37.960541, 34.970520, 28.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738468, 34.879723, 28.493704>,  <37.368347, 34.728394, 28.483217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738468, 34.879723, 28.493704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246470, 0.547391, 0.799760,
		0.288218, -0.746481, 0.599747,
		0.925301, 0.378324, 0.026217,
		38.016060, 34.993221, 28.501570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635151, 34.730316, 29.220301>,  <37.368347, 34.728394, 28.483217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635151, 34.730316, 29.220301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864330, 34.999508, 29.033182>,  <38.001839, 35.161022, 28.920912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864330, 34.999508, 29.033182>,  <37.635151, 34.730316, 29.220301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864330, 34.999508, 29.033182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025949, 0.555583, 0.831056,
		0.819183, -0.488288, 0.300855,
		0.572945, 0.672980, -0.467795,
		38.036213, 35.201401, 28.892843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271725, 34.726997, 29.532644>,  <37.635151, 34.730316, 29.220301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271725, 34.726997, 29.532644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229458, 35.081688, 29.352623>,  <38.204098, 35.294502, 29.244610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229458, 35.081688, 29.352623>,  <38.271725, 34.726997, 29.532644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229458, 35.081688, 29.352623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291056, 0.460347, 0.838670,
		0.950853, -0.042371, -0.306730,
		-0.105667, 0.886727, -0.450055,
		38.197758, 35.347706, 29.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917114, 35.013577, 29.469883>,  <38.271725, 34.726997, 29.532644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917114, 35.013577, 29.469883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684425, 35.336700, 29.431866>,  <38.544811, 35.530575, 29.409056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684425, 35.336700, 29.431866>,  <38.917114, 35.013577, 29.469883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684425, 35.336700, 29.431866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435830, 0.408225, 0.802125,
		0.686767, 0.425193, -0.589544,
		-0.581725, 0.807814, -0.095043,
		38.509907, 35.579044, 29.403353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322269, 35.512775, 29.553024>,  <38.917114, 35.013577, 29.469883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322269, 35.512775, 29.553024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967899, 35.683041, 29.626715>,  <38.755276, 35.785202, 29.670929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967899, 35.683041, 29.626715>,  <39.322269, 35.512775, 29.553024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967899, 35.683041, 29.626715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417482, 0.558760, 0.716586,
		0.202087, 0.711756, -0.672729,
		-0.885928, 0.425665, 0.184227,
		38.702122, 35.810741, 29.681982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541260, 36.185356, 29.543278>,  <39.322269, 35.512775, 29.553024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541260, 36.185356, 29.543278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180817, 36.203243, 29.715794>,  <38.964550, 36.213978, 29.819304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180817, 36.203243, 29.715794>,  <39.541260, 36.185356, 29.543278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180817, 36.203243, 29.715794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323204, 0.732344, 0.599343,
		-0.289049, 0.679465, -0.674372,
		-0.901105, 0.044721, 0.431289,
		38.910484, 36.216660, 29.845181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353172, 36.967670, 29.556427>,  <39.541260, 36.185356, 29.543278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353172, 36.967670, 29.556427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139587, 36.751774, 29.816757>,  <39.011436, 36.622238, 29.972956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139587, 36.751774, 29.816757>,  <39.353172, 36.967670, 29.556427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139587, 36.751774, 29.816757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121408, 0.712820, 0.690758,
		-0.836749, 0.447851, -0.315088,
		-0.533958, -0.539737, 0.650824,
		38.979401, 36.589851, 30.012005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855167, 37.383747, 29.903683>,  <39.353172, 36.967670, 29.556427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855167, 37.383747, 29.903683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919262, 37.082897, 30.159380>,  <38.957718, 36.902386, 30.312799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919262, 37.082897, 30.159380>,  <38.855167, 37.383747, 29.903683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919262, 37.082897, 30.159380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059950, 0.653832, 0.754261,
		-0.985257, -0.082534, 0.149854,
		0.160232, -0.752125, 0.639245,
		38.967331, 36.857258, 30.351154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521290, 37.647068, 30.395147>,  <38.855167, 37.383747, 29.903683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521290, 37.647068, 30.395147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712227, 37.337749, 30.562078>,  <38.826790, 37.152161, 30.662237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712227, 37.337749, 30.562078>,  <38.521290, 37.647068, 30.395147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712227, 37.337749, 30.562078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135187, 0.533898, 0.834672,
		-0.868256, -0.342007, 0.359391,
		0.477342, -0.773294, 0.417326,
		38.855431, 37.105762, 30.687277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130947, 37.438046, 31.074993>,  <38.521290, 37.647068, 30.395147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130947, 37.438046, 31.074993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520123, 37.347271, 31.092361>,  <38.753628, 37.292809, 31.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520123, 37.347271, 31.092361>,  <38.130947, 37.438046, 31.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520123, 37.347271, 31.092361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082211, 0.515647, 0.852848,
		-0.215928, -0.826202, 0.520351,
		0.972942, -0.226932, 0.043420,
		38.812004, 37.279190, 31.105387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280327, 37.388275, 31.778769>,  <38.130947, 37.438046, 31.074993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280327, 37.388275, 31.778769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662132, 37.367634, 31.661299>,  <38.891216, 37.355251, 31.590816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662132, 37.367634, 31.661299>,  <38.280327, 37.388275, 31.778769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662132, 37.367634, 31.661299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293917, 0.328608, 0.897569,
		0.050187, -0.943056, 0.328827,
		0.954512, -0.051601, -0.293672,
		38.948486, 37.352154, 31.573196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615654, 37.065113, 32.327129>,  <38.280327, 37.388275, 31.778769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615654, 37.065113, 32.327129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909409, 37.254833, 32.132931>,  <39.085663, 37.368668, 32.016411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909409, 37.254833, 32.132931>,  <38.615654, 37.065113, 32.327129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909409, 37.254833, 32.132931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358121, 0.336851, 0.870793,
		0.576560, -0.813369, 0.077522,
		0.734390, 0.474303, -0.485499,
		39.129726, 37.397125, 31.987282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236008, 36.818726, 32.619411>,  <38.615654, 37.065113, 32.327129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236008, 36.818726, 32.619411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337734, 37.165916, 32.448792>,  <39.398769, 37.374229, 32.346420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337734, 37.165916, 32.448792>,  <39.236008, 36.818726, 32.619411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337734, 37.165916, 32.448792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532238, 0.242639, 0.811079,
		0.807494, -0.433295, -0.400262,
		0.254317, 0.867976, -0.426546,
		39.414028, 37.426308, 32.320827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919647, 36.911339, 32.761826>,  <39.236008, 36.818726, 32.619411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919647, 36.911339, 32.761826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796326, 37.281658, 32.674324>,  <39.722332, 37.503849, 32.621822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796326, 37.281658, 32.674324>,  <39.919647, 36.911339, 32.761826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796326, 37.281658, 32.674324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545513, 0.360447, 0.756633,
		0.779336, 0.113939, -0.616160,
		-0.308303, 0.925795, -0.218754,
		39.703835, 37.559395, 32.608696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482761, 37.267673, 33.032970>,  <39.919647, 36.911339, 32.761826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482761, 37.267673, 33.032970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242146, 37.580387, 32.967281>,  <40.097778, 37.768013, 32.927868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242146, 37.580387, 32.967281>,  <40.482761, 37.267673, 33.032970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242146, 37.580387, 32.967281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467816, 0.511384, 0.720857,
		0.647534, 0.356797, -0.673347,
		-0.601538, 0.781782, -0.164223,
		40.061684, 37.814922, 32.918015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859142, 37.841095, 32.921177>,  <40.482761, 37.267673, 33.032970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859142, 37.841095, 32.921177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519135, 38.020172, 33.032196>,  <40.315128, 38.127617, 33.098808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519135, 38.020172, 33.032196>,  <40.859142, 37.841095, 32.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519135, 38.020172, 33.032196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494665, 0.497385, 0.712682,
		0.181013, 0.743089, -0.644246,
		-0.850024, 0.447691, 0.277547,
		40.264126, 38.154480, 33.115459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998741, 38.567078, 33.059464>,  <40.859142, 37.841095, 32.921177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998741, 38.567078, 33.059464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649990, 38.505112, 33.245296>,  <40.440739, 38.467934, 33.356796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649990, 38.505112, 33.245296>,  <40.998741, 38.567078, 33.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649990, 38.505112, 33.245296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367116, 0.421121, 0.829387,
		-0.324130, 0.893677, -0.310293,
		-0.871875, -0.154916, 0.464581,
		40.388428, 38.458637, 33.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641865, 39.246254, 33.374454>,  <40.998741, 38.567078, 33.059464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641865, 39.246254, 33.374454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568314, 38.912277, 33.581940>,  <40.524185, 38.711891, 33.706432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568314, 38.912277, 33.581940>,  <40.641865, 39.246254, 33.374454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568314, 38.912277, 33.581940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431419, 0.405619, 0.805823,
		-0.883214, 0.371955, 0.285626,
		-0.183875, -0.834939, 0.518717,
		40.513153, 38.661797, 33.737556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156395, 39.216267, 33.924263>,  <40.641865, 39.246254, 33.374454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156395, 39.216267, 33.924263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414257, 38.948174, 34.071346>,  <40.568974, 38.787319, 34.159595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414257, 38.948174, 34.071346>,  <40.156395, 39.216267, 33.924263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414257, 38.948174, 34.071346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337933, 0.681286, 0.649346,
		-0.685723, -0.294347, 0.665690,
		0.644658, -0.670231, 0.367704,
		40.607655, 38.747105, 34.181656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119534, 39.071865, 34.696915>,  <40.156395, 39.216267, 33.924263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119534, 39.071865, 34.696915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494823, 39.012707, 34.571789>,  <40.719997, 38.977211, 34.496712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494823, 39.012707, 34.571789>,  <40.119534, 39.071865, 34.696915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494823, 39.012707, 34.571789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336721, 0.598383, 0.727019,
		0.079656, -0.787442, 0.611221,
		0.938229, -0.147899, -0.312813,
		40.776291, 38.968338, 34.477943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456337, 38.991634, 35.342590>,  <40.119534, 39.071865, 34.696915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456337, 38.991634, 35.342590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712460, 39.112671, 35.060188>,  <40.866135, 39.185291, 34.890747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712460, 39.112671, 35.060188>,  <40.456337, 38.991634, 35.342590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712460, 39.112671, 35.060188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331546, 0.720231, 0.609380,
		0.692878, -0.624266, 0.360850,
		0.640311, 0.302588, -0.706005,
		40.904552, 39.203449, 34.848385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925613, 39.364788, 35.739140>,  <40.456337, 38.991634, 35.342590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925613, 39.364788, 35.739140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067188, 39.474400, 35.381451>,  <41.152134, 39.540165, 35.166836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067188, 39.474400, 35.381451>,  <40.925613, 39.364788, 35.739140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067188, 39.474400, 35.381451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156749, 0.925210, 0.345565,
		0.922040, -0.262477, 0.284513,
		0.353937, 0.274028, -0.894224,
		41.173370, 39.556606, 35.113182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620811, 39.747398, 35.815323>,  <40.925613, 39.364788, 35.739140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620811, 39.747398, 35.815323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420094, 39.850353, 35.485001>,  <41.299660, 39.912125, 35.286808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420094, 39.850353, 35.485001>,  <41.620811, 39.747398, 35.815323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420094, 39.850353, 35.485001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177250, 0.965040, 0.193078,
		0.846628, -0.049487, -0.529879,
		-0.501800, 0.257387, -0.825802,
		41.269554, 39.927570, 35.237259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041401, 40.181911, 35.308926>,  <41.620811, 39.747398, 35.815323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041401, 40.181911, 35.308926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649483, 40.261391, 35.299755>,  <41.414333, 40.309078, 35.294254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649483, 40.261391, 35.299755>,  <42.041401, 40.181911, 35.308926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649483, 40.261391, 35.299755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190035, 0.960517, 0.203207,
		0.062400, 0.194743, -0.978867,
		-0.979792, 0.198699, -0.022928,
		41.355545, 40.320999, 35.292877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326141, 40.882717, 34.873882>,  <42.041401, 40.181911, 35.308926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326141, 40.882717, 34.873882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929211, 40.927166, 34.852165>,  <41.691051, 40.953835, 34.839134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929211, 40.927166, 34.852165>,  <42.326141, 40.882717, 34.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929211, 40.927166, 34.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073430, 0.882619, 0.464318,
		0.099514, 0.456767, -0.884003,
		-0.992323, 0.111119, -0.054293,
		41.631516, 40.960503, 34.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070572, 41.504974, 34.432091>,  <42.326141, 40.882717, 34.873882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070572, 41.504974, 34.432091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835964, 41.409592, 34.741707>,  <41.695198, 41.352364, 34.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835964, 41.409592, 34.741707>,  <42.070572, 41.504974, 34.432091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835964, 41.409592, 34.741707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149104, 0.907556, 0.392569,
		-0.796092, 0.345661, -0.496745,
		-0.586519, -0.238455, 0.774037,
		41.660007, 41.338055, 34.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640160, 42.128120, 34.574436>,  <42.070572, 41.504974, 34.432091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640160, 42.128120, 34.574436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636551, 41.899712, 34.902790>,  <41.634388, 41.762665, 35.099804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636551, 41.899712, 34.902790>,  <41.640160, 42.128120, 34.574436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636551, 41.899712, 34.902790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169649, 0.808143, 0.564026,
		-0.985463, 0.144348, 0.089585,
		-0.009019, -0.571024, 0.820883,
		41.633846, 41.728405, 35.149055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195641, 42.458527, 35.056499>,  <41.640160, 42.128120, 34.574436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195641, 42.458527, 35.056499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495869, 42.235401, 35.198196>,  <41.676006, 42.101528, 35.283215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495869, 42.235401, 35.198196>,  <41.195641, 42.458527, 35.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495869, 42.235401, 35.198196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348046, 0.789427, 0.505638,
		-0.561697, -0.256227, 0.786667,
		0.750574, -0.557811, 0.354239,
		41.721043, 42.068058, 35.304470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506893, 42.085648, 35.232056>,  <41.195641, 42.458527, 35.056499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506893, 42.085648, 35.232056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816338, 42.006485, 35.472839>,  <41.002007, 41.958988, 35.617310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816338, 42.006485, 35.472839>,  <40.506893, 42.085648, 35.232056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816338, 42.006485, 35.472839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062822, 0.969250, 0.237924,
		-0.630534, -0.146246, 0.762259,
		0.773615, -0.197905, 0.601957,
		41.048424, 41.947113, 35.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404644, 42.264622, 36.010391>,  <40.506893, 42.085648, 35.232056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404644, 42.264622, 36.010391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799221, 42.241592, 35.948929>,  <41.035969, 42.227776, 35.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799221, 42.241592, 35.948929>,  <40.404644, 42.264622, 36.010391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799221, 42.241592, 35.948929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138959, 0.791088, 0.595710,
		0.087259, -0.608988, 0.788365,
		0.986446, -0.057570, -0.153654,
		41.095154, 42.224323, 35.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741722, 42.514309, 36.675346>,  <40.404644, 42.264622, 36.010391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741722, 42.514309, 36.675346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007252, 42.553661, 36.378792>,  <41.166569, 42.577274, 36.200859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007252, 42.553661, 36.378792>,  <40.741722, 42.514309, 36.675346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007252, 42.553661, 36.378792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231765, 0.915448, 0.328999,
		0.711071, -0.390226, 0.584895,
		0.663824, 0.098384, -0.741389,
		41.206398, 42.583176, 36.156376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282398, 42.764778, 37.027836>,  <40.741722, 42.514309, 36.675346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282398, 42.764778, 37.027836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404190, 42.836723, 36.653683>,  <41.477264, 42.879890, 36.429192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404190, 42.836723, 36.653683>,  <41.282398, 42.764778, 37.027836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404190, 42.836723, 36.653683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413961, 0.859437, 0.300007,
		0.857860, -0.478560, 0.187235,
		0.304488, 0.179856, -0.935382,
		41.495533, 42.890682, 36.373066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053268, 42.923103, 37.091137>,  <41.282398, 42.764778, 37.027836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053268, 42.923103, 37.091137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864834, 43.080097, 36.775154>,  <41.751774, 43.174294, 36.585564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864834, 43.080097, 36.775154>,  <42.053268, 42.923103, 37.091137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864834, 43.080097, 36.775154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343097, 0.906565, 0.245816,
		0.812629, -0.155233, -0.561727,
		-0.471083, 0.392484, -0.789960,
		41.723507, 43.197842, 36.538166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598087, 43.297829, 36.868607>,  <42.053268, 42.923103, 37.091137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598087, 43.297829, 36.868607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281509, 43.438309, 36.668495>,  <42.091564, 43.522594, 36.548428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281509, 43.438309, 36.668495>,  <42.598087, 43.297829, 36.868607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281509, 43.438309, 36.668495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220175, 0.927318, 0.302661,
		0.570212, 0.129390, -0.811244,
		-0.791442, 0.351196, -0.500280,
		42.044075, 43.543667, 36.518410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824860, 43.794945, 36.411877>,  <42.598087, 43.297829, 36.868607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824860, 43.794945, 36.411877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442989, 43.885059, 36.489681>,  <42.213867, 43.939129, 36.536362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442989, 43.885059, 36.489681>,  <42.824860, 43.794945, 36.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442989, 43.885059, 36.489681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263595, 0.943456, 0.201021,
		-0.138224, 0.243183, -0.960082,
		-0.954679, 0.225287, 0.194510,
		42.156586, 43.952644, 36.548035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865269, 44.434540, 36.240753>,  <42.824860, 43.794945, 36.411877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865269, 44.434540, 36.240753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536640, 44.400841, 36.466293>,  <42.339462, 44.380623, 36.601616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536640, 44.400841, 36.466293>,  <42.865269, 44.434540, 36.240753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536640, 44.400841, 36.466293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258071, 0.826931, 0.499585,
		-0.508350, 0.555957, -0.657641,
		-0.821571, -0.084246, 0.563847,
		42.290169, 44.375568, 36.635448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614925, 45.125771, 36.181965>,  <42.865269, 44.434540, 36.240753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614925, 45.125771, 36.181965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491768, 44.938908, 36.513500>,  <42.417873, 44.826790, 36.712421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491768, 44.938908, 36.513500>,  <42.614925, 45.125771, 36.181965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491768, 44.938908, 36.513500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114831, 0.846539, 0.519794,
		-0.944467, 0.255215, -0.206996,
		-0.307889, -0.467159, 0.828835,
		42.399403, 44.798759, 36.762150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051231, 45.602383, 36.459953>,  <42.614925, 45.125771, 36.181965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051231, 45.602383, 36.459953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191071, 45.374844, 36.757729>,  <42.274975, 45.238319, 36.936394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191071, 45.374844, 36.757729>,  <42.051231, 45.602383, 36.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191071, 45.374844, 36.757729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003774, 0.795428, 0.606036,
		-0.936892, -0.209059, 0.280227,
		0.349598, -0.568848, 0.744441,
		42.295948, 45.204189, 36.981060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563297, 46.107796, 36.529842>,  <42.051231, 45.602383, 36.459953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563297, 46.107796, 36.529842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315483, 46.376965, 36.368176>,  <42.166794, 46.538467, 36.271175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315483, 46.376965, 36.368176>,  <42.563297, 46.107796, 36.529842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315483, 46.376965, 36.368176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530910, 0.738466, 0.415696,
		0.578195, 0.042961, -0.814766,
		-0.619536, 0.672921, -0.404169,
		42.129623, 46.578842, 36.246925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827438, 45.840755, 37.078640>,  <42.563297, 46.107796, 36.529842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827438, 45.840755, 37.078640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613869, 45.749382, 37.404274>,  <42.485725, 45.694557, 37.599655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613869, 45.749382, 37.404274>,  <42.827438, 45.840755, 37.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613869, 45.749382, 37.404274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506841, -0.684192, -0.524398,
		0.676783, -0.692604, 0.249528,
		-0.533925, -0.228433, 0.814090,
		42.453690, 45.680851, 37.648502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832909, 45.150845, 37.219975>,  <42.827438, 45.840755, 37.078640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832909, 45.150845, 37.219975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493668, 45.282570, 37.385998>,  <42.290123, 45.361607, 37.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493668, 45.282570, 37.385998>,  <42.832909, 45.150845, 37.219975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493668, 45.282570, 37.385998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508385, -0.726428, -0.462436,
		0.149220, -0.603202, 0.783505,
		-0.848102, 0.329318, 0.415057,
		42.239239, 45.381367, 37.510513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471260, 44.590710, 37.670601>,  <42.832909, 45.150845, 37.219975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471260, 44.590710, 37.670601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230145, 44.842148, 37.474026>,  <42.085476, 44.993011, 37.356083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230145, 44.842148, 37.474026>,  <42.471260, 44.590710, 37.670601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230145, 44.842148, 37.474026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490288, -0.777721, -0.393404,
		-0.629491, 0.003804, 0.776998,
		-0.602791, 0.628597, -0.491434,
		42.049309, 45.030727, 37.326595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718842, 44.413258, 37.695053>,  <42.471260, 44.590710, 37.670601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718842, 44.413258, 37.695053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821751, 44.585190, 37.348862>,  <41.883495, 44.688351, 37.141148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821751, 44.585190, 37.348862>,  <41.718842, 44.413258, 37.695053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821751, 44.585190, 37.348862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359023, -0.789002, -0.498576,
		-0.897169, 0.438997, -0.048669,
		0.257273, 0.429833, -0.865479,
		41.898933, 44.714138, 37.089218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123440, 44.527370, 37.257473>,  <41.718842, 44.413258, 37.695053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123440, 44.527370, 37.257473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464848, 44.475674, 37.055561>,  <41.669693, 44.444656, 36.934414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464848, 44.475674, 37.055561>,  <41.123440, 44.527370, 37.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464848, 44.475674, 37.055561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336158, -0.876766, -0.343918,
		-0.398125, 0.463226, -0.791782,
		0.853519, -0.129241, -0.504779,
		41.720901, 44.436901, 36.904129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927124, 44.335850, 36.594791>,  <41.123440, 44.527370, 37.257473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927124, 44.335850, 36.594791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310139, 44.221012, 36.584160>,  <41.539948, 44.152107, 36.577782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310139, 44.221012, 36.584160>,  <40.927124, 44.335850, 36.594791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310139, 44.221012, 36.584160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268678, -0.855040, -0.443530,
		0.104610, 0.431835, -0.895866,
		0.957533, -0.287097, -0.026579,
		41.597397, 44.134884, 36.576187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036972, 44.077126, 35.850864>,  <40.927124, 44.335850, 36.594791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036972, 44.077126, 35.850864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338268, 43.918232, 36.060562>,  <41.519047, 43.822895, 36.186382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338268, 43.918232, 36.060562>,  <41.036972, 44.077126, 35.850864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338268, 43.918232, 36.060562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154061, -0.881415, -0.446512,
		0.639448, 0.255565, -0.725116,
		0.753241, -0.397234, 0.524246,
		41.564240, 43.799061, 36.217834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396435, 43.730011, 35.375679>,  <41.036972, 44.077126, 35.850864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396435, 43.730011, 35.375679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470322, 43.565548, 35.732738>,  <41.514652, 43.466869, 35.946976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470322, 43.565548, 35.732738>,  <41.396435, 43.730011, 35.375679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470322, 43.565548, 35.732738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204179, -0.904519, -0.374375,
		0.961348, -0.113108, -0.251030,
		0.184717, -0.411160, 0.892652,
		41.525738, 43.442200, 36.000534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830975, 43.234497, 35.198723>,  <41.396435, 43.730011, 35.375679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830975, 43.234497, 35.198723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726570, 43.121376, 35.567917>,  <41.663929, 43.053505, 35.789433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726570, 43.121376, 35.567917>,  <41.830975, 43.234497, 35.198723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726570, 43.121376, 35.567917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144147, -0.933988, -0.326938,
		0.954513, -0.218379, 0.203015,
		-0.261010, -0.282803, 0.922983,
		41.648266, 43.036537, 35.844810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204990, 42.648899, 35.282333>,  <41.830975, 43.234497, 35.198723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204990, 42.648899, 35.282333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900543, 42.639088, 35.541592>,  <41.717876, 42.633202, 35.697147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900543, 42.639088, 35.541592>,  <42.204990, 42.648899, 35.282333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900543, 42.639088, 35.541592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186692, -0.948709, -0.255140,
		0.621166, -0.315196, 0.717499,
		-0.761117, -0.024533, 0.648150,
		41.672207, 42.631729, 35.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129719, 42.823399, 36.043629>,  <42.204990, 42.648899, 35.282333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129719, 42.823399, 36.043629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104378, 42.471287, 36.231709>,  <42.089172, 42.260017, 36.344555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104378, 42.471287, 36.231709>,  <42.129719, 42.823399, 36.043629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104378, 42.471287, 36.231709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663826, 0.314635, 0.678484,
		-0.745199, 0.355115, 0.564422,
		-0.063353, -0.880283, 0.470200,
		42.085373, 42.207203, 36.372768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358696, 42.102074, 35.966518>,  <42.129719, 42.823399, 36.043629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358696, 42.102074, 35.966518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969357, 42.158146, 35.893917>,  <41.735752, 42.191792, 35.850357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969357, 42.158146, 35.893917>,  <42.358696, 42.102074, 35.966518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969357, 42.158146, 35.893917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098357, -0.970118, -0.221804,
		-0.207172, -0.198040, 0.958050,
		-0.973348, 0.140182, -0.181503,
		41.677353, 42.200199, 35.839466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089417, 41.416183, 36.108589>,  <42.358696, 42.102074, 35.966518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089417, 41.416183, 36.108589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833267, 41.624882, 35.883129>,  <41.679577, 41.750099, 35.747852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833267, 41.624882, 35.883129>,  <42.089417, 41.416183, 36.108589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833267, 41.624882, 35.883129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226861, -0.829606, -0.510185,
		-0.733797, -0.198838, 0.649620,
		-0.640372, 0.521745, -0.563653,
		41.641155, 41.781406, 35.714035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533649, 41.056652, 36.228207>,  <42.089417, 41.416183, 36.108589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533649, 41.056652, 36.228207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498253, 41.281651, 35.899384>,  <41.477016, 41.416649, 35.702091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498253, 41.281651, 35.899384>,  <41.533649, 41.056652, 36.228207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498253, 41.281651, 35.899384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251894, -0.811103, -0.527884,
		-0.963701, 0.160360, 0.213461,
		-0.088487, 0.562492, -0.822054,
		41.471706, 41.450397, 35.652767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883656, 40.859020, 35.899071>,  <41.533649, 41.056652, 36.228207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883656, 40.859020, 35.899071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123604, 41.019764, 35.622326>,  <41.267570, 41.116211, 35.456280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123604, 41.019764, 35.622326>,  <40.883656, 40.859020, 35.899071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123604, 41.019764, 35.622326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013344, -0.859572, -0.510840,
		-0.799989, 0.315668, -0.510266,
		0.599866, 0.401857, -0.691861,
		41.303562, 41.140320, 35.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525509, 40.830997, 35.182690>,  <40.883656, 40.859020, 35.899071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525509, 40.830997, 35.182690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924301, 40.824703, 35.213081>,  <41.163578, 40.820927, 35.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924301, 40.824703, 35.213081>,  <40.525509, 40.830997, 35.182690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924301, 40.824703, 35.213081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014629, -0.923543, -0.383217,
		0.076203, 0.383173, -0.920528,
		0.996985, -0.015736, 0.075982,
		41.223396, 40.819981, 35.235874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744507, 40.778481, 34.481510>,  <40.525509, 40.830997, 35.182690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744507, 40.778481, 34.481510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030941, 40.643742, 34.726051>,  <41.202801, 40.562901, 34.872776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030941, 40.643742, 34.726051>,  <40.744507, 40.778481, 34.481510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030941, 40.643742, 34.726051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026168, -0.888194, -0.458723,
		0.697521, 0.312488, -0.644838,
		0.716087, -0.336843, 0.611356,
		41.245766, 40.542690, 34.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992275, 40.333706, 34.121597>,  <40.744507, 40.778481, 34.481510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992275, 40.333706, 34.121597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142769, 40.217369, 34.473473>,  <41.233067, 40.147568, 34.684597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142769, 40.217369, 34.473473>,  <40.992275, 40.333706, 34.121597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142769, 40.217369, 34.473473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109199, -0.928917, -0.353820,
		0.920065, 0.229182, -0.317735,
		0.376238, -0.290841, 0.879691,
		41.255642, 40.130116, 34.737381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584755, 40.010731, 33.961678>,  <40.992275, 40.333706, 34.121597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584755, 40.010731, 33.961678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464706, 39.868172, 34.315605>,  <41.392677, 39.782635, 34.527962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464706, 39.868172, 34.315605>,  <41.584755, 40.010731, 33.961678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464706, 39.868172, 34.315605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119428, -0.934321, -0.335829,
		0.946397, 0.004885, 0.322970,
		-0.300117, -0.356399, 0.884821,
		41.374672, 39.761253, 34.581051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916393, 39.418274, 34.094639>,  <41.584755, 40.010731, 33.961678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916393, 39.418274, 34.094639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596786, 39.369247, 34.330112>,  <41.405022, 39.339832, 34.471397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596786, 39.369247, 34.330112>,  <41.916393, 39.418274, 34.094639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596786, 39.369247, 34.330112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225490, -0.846490, -0.482295,
		0.557427, -0.518104, 0.648724,
		-0.799017, -0.122564, 0.588684,
		41.357082, 39.332478, 34.506718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104923, 38.712578, 34.356071>,  <41.916393, 39.418274, 34.094639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104923, 38.712578, 34.356071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727509, 38.844997, 34.360756>,  <41.501060, 38.924450, 34.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727509, 38.844997, 34.360756>,  <42.104923, 38.712578, 34.356071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727509, 38.844997, 34.360756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297123, -0.830149, -0.471774,
		-0.146458, -0.448618, 0.881642,
		-0.943540, 0.331051, 0.011713,
		41.444447, 38.944313, 34.364269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614799, 38.360256, 34.837463>,  <42.104923, 38.712578, 34.356071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614799, 38.360256, 34.837463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226154, 38.439034, 34.785019>,  <40.992970, 38.486298, 34.753551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226154, 38.439034, 34.785019>,  <41.614799, 38.360256, 34.837463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226154, 38.439034, 34.785019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064690, -0.754184, -0.653469,
		-0.227572, -0.626436, 0.745512,
		-0.971610, 0.196939, -0.131107,
		40.934669, 38.498116, 34.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355083, 37.781261, 34.675667>,  <41.614799, 38.360256, 34.837463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355083, 37.781261, 34.675667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107395, 38.064301, 34.539505>,  <40.958782, 38.234123, 34.457806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107395, 38.064301, 34.539505>,  <41.355083, 37.781261, 34.675667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107395, 38.064301, 34.539505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128794, -0.519175, -0.844908,
		-0.774585, -0.479339, 0.412617,
		-0.619218, 0.707595, -0.340409,
		40.921631, 38.276581, 34.437382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619335, 37.524467, 34.579090>,  <41.355083, 37.781261, 34.675667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619335, 37.524467, 34.579090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743538, 37.818310, 34.337780>,  <40.818058, 37.994617, 34.192993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743538, 37.818310, 34.337780>,  <40.619335, 37.524467, 34.579090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743538, 37.818310, 34.337780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053527, -0.620123, -0.782676,
		-0.949064, 0.275316, -0.153230,
		0.310504, 0.734608, -0.603273,
		40.836689, 38.038692, 34.156799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130379, 37.521126, 33.959743>,  <40.619335, 37.524467, 34.579090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130379, 37.521126, 33.959743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490440, 37.675598, 33.879154>,  <40.706478, 37.768280, 33.830799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490440, 37.675598, 33.879154>,  <40.130379, 37.521126, 33.959743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490440, 37.675598, 33.879154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118476, -0.662183, -0.739917,
		-0.419153, 0.642168, -0.641818,
		0.900152, 0.386178, -0.201475,
		40.760487, 37.791451, 33.818710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015545, 36.856293, 33.648247>,  <40.130379, 37.521126, 33.959743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015545, 36.856293, 33.648247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923077, 37.016735, 34.002800>,  <39.867596, 37.112999, 34.215530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923077, 37.016735, 34.002800>,  <40.015545, 36.856293, 33.648247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923077, 37.016735, 34.002800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644516, -0.619340, 0.448350,
		0.728808, 0.674932, -0.115347,
		-0.231166, 0.401104, 0.886384,
		39.853725, 37.137066, 34.268715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669872, 36.811787, 34.076893>,  <40.015545, 36.856293, 33.648247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669872, 36.811787, 34.076893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350784, 36.812553, 34.318104>,  <40.159332, 36.813011, 34.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350784, 36.812553, 34.318104>,  <40.669872, 36.811787, 34.076893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350784, 36.812553, 34.318104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451481, -0.661023, 0.599344,
		0.399763, 0.750363, 0.526446,
		-0.797718, 0.001915, 0.603027,
		40.111469, 36.813129, 34.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326202, 36.436077, 34.361713>,  <40.669872, 36.811787, 34.076893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326202, 36.436077, 34.361713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459709, 36.059464, 34.380077>,  <41.539814, 35.833496, 34.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459709, 36.059464, 34.380077>,  <41.326202, 36.436077, 34.361713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459709, 36.059464, 34.380077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797117, 0.255905, -0.546915,
		0.503191, 0.219143, 0.835928,
		0.333771, -0.941535, 0.045914,
		41.559841, 35.777004, 34.393852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950954, 36.490303, 34.216770>,  <41.326202, 36.436077, 34.361713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950954, 36.490303, 34.216770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918068, 36.093689, 34.176590>,  <41.898335, 35.855721, 34.152481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918068, 36.093689, 34.176590>,  <41.950954, 36.490303, 34.216770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918068, 36.093689, 34.176590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706193, 0.013160, -0.707897,
		0.703229, -0.129142, 0.699136,
		-0.082219, -0.991539, -0.100453,
		41.893402, 35.796227, 34.146454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529934, 36.056080, 34.198746>,  <41.950954, 36.490303, 34.216770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529934, 36.056080, 34.198746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280430, 35.840904, 33.971928>,  <42.130726, 35.711800, 33.835835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280430, 35.840904, 33.971928>,  <42.529934, 36.056080, 34.198746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280430, 35.840904, 33.971928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715052, -0.099774, -0.691914,
		0.315632, -0.837058, 0.446891,
		-0.623760, -0.537940, -0.567048,
		42.093300, 35.679523, 33.801811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947716, 35.431728, 34.213089>,  <42.529934, 36.056080, 34.198746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947716, 35.431728, 34.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291378, 35.440414, 34.417591>,  <43.497574, 35.445625, 34.540291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291378, 35.440414, 34.417591>,  <42.947716, 35.431728, 34.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291378, 35.440414, 34.417591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494270, 0.223436, -0.840103,
		-0.132475, 0.974477, 0.181233,
		0.859155, 0.021715, 0.511254,
		43.549126, 35.446930, 34.570969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282009, 36.063175, 34.067684>,  <42.947716, 35.431728, 34.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282009, 36.063175, 34.067684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552044, 35.782536, 34.158909>,  <43.714066, 35.614151, 34.213642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552044, 35.782536, 34.158909>,  <43.282009, 36.063175, 34.067684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552044, 35.782536, 34.158909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411632, 0.101687, -0.905659,
		0.612220, 0.705278, 0.357449,
		0.675089, -0.701600, 0.228061,
		43.754570, 35.572056, 34.227325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985027, 36.308933, 33.988853>,  <43.282009, 36.063175, 34.067684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985027, 36.308933, 33.988853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929379, 35.914909, 33.948257>,  <43.895988, 35.678493, 33.923901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929379, 35.914909, 33.948257>,  <43.985027, 36.308933, 33.988853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929379, 35.914909, 33.948257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461303, 0.026224, -0.886855,
		0.876268, -0.170198, 0.450763,
		-0.139120, -0.985061, -0.101492,
		43.887642, 35.619392, 33.917809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569881, 36.058918, 33.767868>,  <43.985027, 36.308933, 33.988853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569881, 36.058918, 33.767868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291039, 35.797421, 33.650120>,  <44.123734, 35.640522, 33.579472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291039, 35.797421, 33.650120>,  <44.569881, 36.058918, 33.767868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291039, 35.797421, 33.650120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187588, 0.229967, -0.954948,
		0.691991, -0.720922, -0.037677,
		-0.697108, -0.653748, -0.294371,
		44.081905, 35.601295, 33.561810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766758, 35.888458, 33.101727>,  <44.569881, 36.058918, 33.767868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766758, 35.888458, 33.101727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409431, 35.711166, 33.131496>,  <44.195034, 35.604794, 33.149357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409431, 35.711166, 33.131496>,  <44.766758, 35.888458, 33.101727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409431, 35.711166, 33.131496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079957, -0.006225, -0.996779,
		0.442262, -0.896388, -0.029878,
		-0.893315, -0.443226, 0.074425,
		44.141438, 35.578197, 33.153824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680111, 35.196419, 32.827980>,  <44.766758, 35.888458, 33.101727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680111, 35.196419, 32.827980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395916, 35.458580, 32.725487>,  <44.225399, 35.615879, 32.663990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395916, 35.458580, 32.725487>,  <44.680111, 35.196419, 32.827980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395916, 35.458580, 32.725487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310098, -0.035263, -0.950050,
		-0.631704, -0.754454, -0.178187,
		-0.710486, 0.655405, -0.256230,
		44.182770, 35.655201, 32.648617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049774, 34.671299, 33.261311>,  <44.680111, 35.196419, 32.827980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049774, 34.671299, 33.261311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214825, 34.312252, 33.199303>,  <45.313854, 34.096825, 33.162098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214825, 34.312252, 33.199303>,  <45.049774, 34.671299, 33.261311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214825, 34.312252, 33.199303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649139, 0.170369, 0.741345,
		-0.639031, -0.406526, 0.652974,
		0.412623, -0.897614, -0.155021,
		45.338612, 34.042969, 33.152798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162643, 34.219997, 33.906952>,  <45.049774, 34.671299, 33.261311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162643, 34.219997, 33.906952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444099, 34.164349, 33.628231>,  <45.612972, 34.130959, 33.460999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444099, 34.164349, 33.628231>,  <45.162643, 34.219997, 33.906952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444099, 34.164349, 33.628231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709203, 0.077026, 0.700784,
		-0.043825, -0.987274, 0.152867,
		0.703641, -0.139126, -0.696802,
		45.655193, 34.122612, 33.419189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670799, 33.626888, 34.039829>,  <45.162643, 34.219997, 33.906952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670799, 33.626888, 34.039829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851280, 33.900948, 33.811096>,  <45.959568, 34.065384, 33.673855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851280, 33.900948, 33.811096>,  <45.670799, 33.626888, 34.039829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851280, 33.900948, 33.811096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757711, 0.044416, 0.651077,
		0.471480, -0.727052, -0.499102,
		0.451199, 0.685145, -0.571836,
		45.986641, 34.106491, 33.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325771, 33.405907, 33.828548>,  <45.670799, 33.626888, 34.039829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325771, 33.405907, 33.828548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299496, 33.791153, 33.932930>,  <46.283730, 34.022301, 33.995560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299496, 33.791153, 33.932930>,  <46.325771, 33.405907, 33.828548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299496, 33.791153, 33.932930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705994, -0.139956, 0.694251,
		0.705165, 0.229840, -0.670758,
		-0.065691, 0.963113, 0.260958,
		46.279789, 34.080086, 34.011219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920242, 33.763546, 33.539612>,  <46.325771, 33.405907, 33.828548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920242, 33.763546, 33.539612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723431, 33.837875, 33.879818>,  <46.605343, 33.882473, 34.083942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723431, 33.837875, 33.879818>,  <46.920242, 33.763546, 33.539612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723431, 33.837875, 33.879818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832192, -0.186499, 0.522182,
		0.255653, 0.964722, -0.062876,
		-0.492034, 0.185822, 0.850513,
		46.575821, 33.893623, 34.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569324, 34.196705, 33.686031>,  <46.920242, 33.763546, 33.539612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569324, 34.196705, 33.686031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804771, 34.052700, 33.975563>,  <47.946041, 33.966297, 34.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804771, 34.052700, 33.975563>,  <47.569324, 34.196705, 33.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804771, 34.052700, 33.975563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002290, 0.896106, 0.443834,
		-0.808409, -0.259590, 0.528288,
		0.588617, -0.360009, 0.723826,
		47.981358, 33.944698, 34.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147335, 34.100548, 34.341789>,  <47.569324, 34.196705, 33.686031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147335, 34.100548, 34.341789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538963, 34.180283, 34.358208>,  <47.773941, 34.228123, 34.368057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538963, 34.180283, 34.358208>,  <47.147335, 34.100548, 34.341789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538963, 34.180283, 34.358208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200572, 0.910881, 0.360648,
		0.034501, -0.361333, 0.931798,
		0.979071, 0.199335, 0.041047,
		47.832684, 34.240082, 34.370522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325584, 34.221947, 35.041080>,  <47.147335, 34.100548, 34.341789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325584, 34.221947, 35.041080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525146, 34.413902, 34.752415>,  <47.644882, 34.529076, 34.579216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525146, 34.413902, 34.752415>,  <47.325584, 34.221947, 35.041080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525146, 34.413902, 34.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411728, 0.863973, 0.289880,
		0.762611, 0.152509, 0.628622,
		0.498904, 0.479887, -0.721667,
		47.674816, 34.557869, 34.535915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640293, 34.876892, 35.198574>,  <47.325584, 34.221947, 35.041080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640293, 34.876892, 35.198574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570621, 34.890301, 34.804916>,  <47.528816, 34.898346, 34.568722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570621, 34.890301, 34.804916>,  <47.640293, 34.876892, 35.198574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.570621, 34.890301, 34.804916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488859, 0.864620, 0.115970,
		0.854796, 0.501307, -0.134216,
		-0.174183, 0.033518, -0.984143,
		47.518368, 34.900356, 34.509674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.075859, 30.826199, 29.281466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730762, 30.696827, 29.125992>,  <39.523705, 30.619204, 29.032707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730762, 30.696827, 29.125992>,  <40.075859, 30.826199, 29.281466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730762, 30.696827, 29.125992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505593, 0.563455, 0.653372,
		0.007686, 0.760205, -0.649638,
		-0.862738, -0.323430, -0.388685,
		39.471943, 30.599798, 29.009386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559990, 31.358311, 29.467335>,  <40.075859, 30.826199, 29.281466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559990, 31.358311, 29.467335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342529, 31.039854, 29.361053>,  <39.212051, 30.848780, 29.297285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342529, 31.039854, 29.361053>,  <39.559990, 31.358311, 29.467335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342529, 31.039854, 29.361053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651366, 0.200575, 0.731773,
		-0.529302, 0.570902, -0.627623,
		-0.543656, -0.796142, -0.265701,
		39.179432, 30.801012, 29.281343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809708, 31.557367, 29.142931>,  <39.559990, 31.358311, 29.467335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809708, 31.557367, 29.142931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766575, 31.178381, 29.263386>,  <38.740696, 30.950989, 29.335659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766575, 31.178381, 29.263386>,  <38.809708, 31.557367, 29.142931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766575, 31.178381, 29.263386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649708, 0.296432, 0.700005,
		-0.752497, -0.120167, -0.647540,
		-0.107834, -0.947464, 0.301138,
		38.734226, 30.894142, 29.353727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097324, 31.380302, 29.057451>,  <38.809708, 31.557367, 29.142931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097324, 31.380302, 29.057451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.257401, 31.134321, 29.329239>,  <38.353447, 30.986732, 29.492311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.257401, 31.134321, 29.329239>,  <38.097324, 31.380302, 29.057451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257401, 31.134321, 29.329239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648122, 0.334263, 0.684256,
		-0.647907, -0.714212, -0.264796,
		0.400192, -0.614955, 0.679469,
		38.377457, 30.949835, 29.533079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514481, 31.127937, 29.297186>,  <38.097324, 31.380302, 29.057451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514481, 31.127937, 29.297186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793182, 31.078560, 29.579828>,  <37.960403, 31.048933, 29.749413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793182, 31.078560, 29.579828>,  <37.514481, 31.127937, 29.297186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793182, 31.078560, 29.579828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633398, 0.356444, 0.686844,
		-0.336652, -0.926126, 0.170166,
		0.696758, -0.123445, 0.706604,
		38.002209, 31.041527, 29.791809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167076, 30.758057, 29.845680>,  <37.514481, 31.127937, 29.297186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167076, 30.758057, 29.845680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483768, 30.903938, 30.041702>,  <37.673782, 30.991468, 30.159315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483768, 30.903938, 30.041702>,  <37.167076, 30.758057, 29.845680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483768, 30.903938, 30.041702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599171, 0.307367, 0.739270,
		0.118988, -0.878929, 0.461872,
		0.791730, 0.364704, 0.490056,
		37.721287, 31.013350, 30.188719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046940, 30.577652, 30.651463>,  <37.167076, 30.758057, 29.845680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046940, 30.577652, 30.651463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328426, 30.861193, 30.632221>,  <37.497318, 31.031317, 30.620676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328426, 30.861193, 30.632221>,  <37.046940, 30.577652, 30.651463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328426, 30.861193, 30.632221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395637, 0.447206, 0.802171,
		0.590131, -0.545471, 0.595154,
		0.703717, 0.708850, -0.048101,
		37.539539, 31.073849, 30.617790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313999, 30.732813, 31.396523>,  <37.046940, 30.577652, 30.651463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313999, 30.732813, 31.396523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385872, 31.045006, 31.157001>,  <37.428997, 31.232321, 31.013288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385872, 31.045006, 31.157001>,  <37.313999, 30.732813, 31.396523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385872, 31.045006, 31.157001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350818, 0.619525, 0.702222,
		0.919043, 0.083892, 0.385127,
		0.179685, 0.780481, -0.598800,
		37.439777, 31.279150, 30.977362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600338, 31.134693, 31.877724>,  <37.313999, 30.732813, 31.396523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600338, 31.134693, 31.877724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533722, 31.371031, 31.561958>,  <37.493752, 31.512833, 31.372499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533722, 31.371031, 31.561958>,  <37.600338, 31.134693, 31.877724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533722, 31.371031, 31.561958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038901, 0.796031, 0.604004,
		0.985267, 0.131298, -0.109585,
		-0.166537, 0.590843, -0.789411,
		37.483761, 31.548285, 31.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150146, 31.723242, 31.887571>,  <37.600338, 31.134693, 31.877724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150146, 31.723242, 31.887571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828537, 31.847715, 31.684902>,  <37.635571, 31.922400, 31.563301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828537, 31.847715, 31.684902>,  <38.150146, 31.723242, 31.887571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828537, 31.847715, 31.684902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018118, 0.838904, 0.543977,
		0.594327, 0.446548, -0.668857,
		-0.804019, 0.311182, -0.506674,
		37.587330, 31.941071, 31.532900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239105, 32.389709, 31.785698>,  <38.150146, 31.723242, 31.887571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239105, 32.389709, 31.785698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847034, 32.385288, 31.706575>,  <37.611790, 32.382637, 31.659101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847034, 32.385288, 31.706575>,  <38.239105, 32.389709, 31.785698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847034, 32.385288, 31.706575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118070, 0.834342, 0.538455,
		0.159090, 0.551137, -0.819109,
		-0.980179, -0.011049, -0.197808,
		37.552982, 32.381973, 31.647234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064819, 33.152126, 31.642065>,  <38.239105, 32.389709, 31.785698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064819, 33.152126, 31.642065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733944, 32.944664, 31.728548>,  <37.535419, 32.820187, 31.780437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733944, 32.944664, 31.728548>,  <38.064819, 33.152126, 31.642065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733944, 32.944664, 31.728548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306300, 0.738766, 0.600337,
		-0.471097, 0.430370, -0.769967,
		-0.827193, -0.518659, 0.216208,
		37.485786, 32.789066, 31.793411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463806, 33.614475, 31.523533>,  <38.064819, 33.152126, 31.642065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463806, 33.614475, 31.523533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332943, 33.339436, 31.782820>,  <37.254425, 33.174412, 31.938391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332943, 33.339436, 31.782820>,  <37.463806, 33.614475, 31.523533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332943, 33.339436, 31.782820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514882, 0.704902, 0.487863,
		-0.792380, -0.174147, -0.584643,
		-0.327156, -0.687595, 0.648215,
		37.234795, 33.133156, 31.977283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762653, 33.769764, 31.549166>,  <37.463806, 33.614475, 31.523533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762653, 33.769764, 31.549166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835411, 33.561462, 31.882809>,  <36.879066, 33.436481, 32.082993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835411, 33.561462, 31.882809>,  <36.762653, 33.769764, 31.549166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835411, 33.561462, 31.882809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594985, 0.617065, 0.514999,
		-0.782883, -0.589957, -0.197596,
		0.181898, -0.520751, 0.834105,
		36.889980, 33.405235, 32.133041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057526, 33.722023, 31.854803>,  <36.762653, 33.769764, 31.549166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057526, 33.722023, 31.854803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314625, 33.626896, 32.146095>,  <36.468884, 33.569820, 32.320869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314625, 33.626896, 32.146095>,  <36.057526, 33.722023, 31.854803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314625, 33.626896, 32.146095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478798, 0.617353, 0.624201,
		-0.598023, -0.749878, 0.282933,
		0.642745, -0.237818, 0.728232,
		36.507450, 33.555550, 32.364563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755806, 33.800232, 32.456505>,  <36.057526, 33.722023, 31.854803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755806, 33.800232, 32.456505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132248, 33.814892, 32.590950>,  <36.358112, 33.823689, 32.671616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132248, 33.814892, 32.590950>,  <35.755806, 33.800232, 32.456505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132248, 33.814892, 32.590950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275395, 0.659810, 0.699148,
		-0.196147, -0.750538, 0.631046,
		0.941108, 0.036651, 0.336114,
		36.414581, 33.825886, 32.691784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638721, 33.810493, 33.182732>,  <35.755806, 33.800232, 32.456505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638721, 33.810493, 33.182732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015408, 33.936001, 33.134201>,  <36.241421, 34.011307, 33.105083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015408, 33.936001, 33.134201>,  <35.638721, 33.810493, 33.182732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015408, 33.936001, 33.134201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184665, 0.783594, 0.593194,
		0.281194, -0.536217, 0.795865,
		0.941716, 0.313771, -0.121322,
		36.297924, 34.030132, 33.097805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844849, 34.081093, 33.811348>,  <35.638721, 33.810493, 33.182732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844849, 34.081093, 33.811348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100681, 34.258373, 33.560108>,  <36.254181, 34.364742, 33.409363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100681, 34.258373, 33.560108>,  <35.844849, 34.081093, 33.811348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100681, 34.258373, 33.560108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147261, 0.872574, 0.465755,
		0.754487, -0.205393, 0.623349,
		0.639581, 0.443201, -0.628100,
		36.292557, 34.391335, 33.371677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412506, 34.377338, 34.263279>,  <35.844849, 34.081093, 33.811348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412506, 34.377338, 34.263279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417992, 34.573391, 33.914661>,  <36.421284, 34.691021, 33.705490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417992, 34.573391, 33.914661>,  <36.412506, 34.377338, 34.263279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417992, 34.573391, 33.914661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065878, 0.869288, 0.489895,
		0.997734, -0.064132, -0.020370,
		0.013711, 0.490127, -0.871543,
		36.422104, 34.720428, 33.653198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973507, 34.792690, 34.308548>,  <36.412506, 34.377338, 34.263279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973507, 34.792690, 34.308548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739414, 34.960823, 34.031181>,  <36.598957, 35.061703, 33.864761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739414, 34.960823, 34.031181>,  <36.973507, 34.792690, 34.308548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739414, 34.960823, 34.031181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136748, 0.894069, 0.426544,
		0.799249, 0.154806, -0.580720,
		-0.585235, 0.420328, -0.693415,
		36.563843, 35.086922, 33.823158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183777, 35.517990, 34.221321>,  <36.973507, 34.792690, 34.308548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183777, 35.517990, 34.221321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817261, 35.533455, 34.061859>,  <36.597351, 35.542732, 33.966183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817261, 35.533455, 34.061859>,  <37.183777, 35.517990, 34.221321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817261, 35.533455, 34.061859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148233, 0.891924, 0.427199,
		0.372082, 0.450530, -0.811528,
		-0.916287, 0.038657, -0.398652,
		36.542374, 35.545052, 33.942265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771008, 35.976337, 34.499641>,  <37.183777, 35.517990, 34.221321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771008, 35.976337, 34.499641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007347, 36.295055, 34.550266>,  <37.149151, 36.486286, 34.580643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007347, 36.295055, 34.550266>,  <36.771008, 35.976337, 34.499641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007347, 36.295055, 34.550266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793840, -0.546194, -0.267376,
		-0.143915, 0.258450, -0.955244,
		0.590852, 0.796791, 0.126562,
		37.184601, 36.534092, 34.588234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036644, 36.201698, 33.874073>,  <36.771008, 35.976337, 34.499641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036644, 36.201698, 33.874073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 36.270264, 34.171677>,  <37.449955, 36.311405, 34.350239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 36.270264, 34.171677>,  <37.036644, 36.201698, 33.874073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294964, 36.270264, 34.171677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627652, -0.674046, -0.389506,
		0.434731, 0.718525, -0.542891,
		0.645803, 0.171416, 0.744013,
		37.488705, 36.321690, 34.394882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640381, 36.095722, 33.499855>,  <37.036644, 36.201698, 33.874073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640381, 36.095722, 33.499855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805454, 36.146278, 33.860680>,  <37.904499, 36.176613, 34.077175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805454, 36.146278, 33.860680>,  <37.640381, 36.095722, 33.499855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805454, 36.146278, 33.860680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772830, -0.572740, -0.273319,
		0.482103, 0.809935, -0.334038,
		0.412687, 0.126386, 0.902062,
		37.929260, 36.184193, 34.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336658, 36.123314, 33.346691>,  <37.640381, 36.095722, 33.499855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336658, 36.123314, 33.346691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294598, 36.027058, 33.732651>,  <38.269360, 35.969303, 33.964226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294598, 36.027058, 33.732651>,  <38.336658, 36.123314, 33.346691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294598, 36.027058, 33.732651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748761, -0.657696, -0.082421,
		0.654445, 0.713814, 0.249340,
		-0.105157, -0.240636, 0.964902,
		38.263050, 35.954868, 34.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988491, 36.227253, 33.665695>,  <38.336658, 36.123314, 33.346691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988491, 36.227253, 33.665695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798264, 35.964226, 33.899426>,  <38.684128, 35.806408, 34.039665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798264, 35.964226, 33.899426>,  <38.988491, 36.227253, 33.665695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798264, 35.964226, 33.899426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708795, -0.679847, -0.188196,
		0.521005, 0.324668, 0.789395,
		-0.475567, -0.657570, 0.584327,
		38.655594, 35.766956, 34.074722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492607, 35.934116, 33.951801>,  <38.988491, 36.227253, 33.665695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492607, 35.934116, 33.951801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208580, 35.662163, 34.025093>,  <39.038166, 35.498993, 34.069069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208580, 35.662163, 34.025093>,  <39.492607, 35.934116, 33.951801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208580, 35.662163, 34.025093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620256, -0.727101, -0.294289,
		0.333305, -0.095317, 0.937989,
		-0.710064, -0.679881, 0.183226,
		38.995560, 35.458199, 34.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804985, 35.322121, 34.253677>,  <39.492607, 35.934116, 33.951801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804985, 35.322121, 34.253677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453072, 35.175652, 34.132416>,  <39.241924, 35.087769, 34.059658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453072, 35.175652, 34.132416>,  <39.804985, 35.322121, 34.253677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453072, 35.175652, 34.132416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434282, -0.878467, -0.199235,
		-0.193357, -0.306938, 0.931881,
		-0.879780, -0.366176, -0.303155,
		39.189137, 35.065800, 34.041470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643772, 34.642899, 34.624390>,  <39.804985, 35.322121, 34.253677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643772, 34.642899, 34.624390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459946, 34.645275, 34.269138>,  <39.349651, 34.646702, 34.055988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459946, 34.645275, 34.269138>,  <39.643772, 34.642899, 34.624390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459946, 34.645275, 34.269138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442828, -0.865281, -0.234931,
		-0.769872, -0.501252, 0.395023,
		-0.459566, 0.005939, -0.888124,
		39.322075, 34.647057, 34.002701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265358, 33.960983, 34.520863>,  <39.643772, 34.642899, 34.624390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265358, 33.960983, 34.520863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293552, 34.091995, 34.143982>,  <39.310471, 34.170605, 33.917854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293552, 34.091995, 34.143982>,  <39.265358, 33.960983, 34.520863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293552, 34.091995, 34.143982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354882, -0.890992, -0.283181,
		-0.932250, -0.314411, -0.179041,
		0.070489, 0.327534, -0.942206,
		39.314701, 34.190254, 33.861320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050240, 33.428276, 34.186142>,  <39.265358, 33.960983, 34.520863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050240, 33.428276, 34.186142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218735, 33.632488, 33.886295>,  <39.319832, 33.755016, 33.706387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218735, 33.632488, 33.886295>,  <39.050240, 33.428276, 34.186142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218735, 33.632488, 33.886295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046426, -0.837572, -0.544350,
		-0.905763, 0.194497, -0.376516,
		0.421234, 0.510532, -0.749612,
		39.345104, 33.785648, 33.661411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722034, 33.259323, 33.520382>,  <39.050240, 33.428276, 34.186142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722034, 33.259323, 33.520382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073170, 33.421337, 33.418137>,  <39.283852, 33.518547, 33.356789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073170, 33.421337, 33.418137>,  <38.722034, 33.259323, 33.520382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073170, 33.421337, 33.418137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122182, -0.705423, -0.698176,
		-0.463105, 0.581656, -0.668737,
		0.877841, 0.405037, -0.255617,
		39.336521, 33.542847, 33.341450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866745, 32.941212, 32.891209>,  <38.722034, 33.259323, 33.520382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866745, 32.941212, 32.891209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223988, 33.112583, 32.946064>,  <39.438335, 33.215405, 32.978977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223988, 33.112583, 32.946064>,  <38.866745, 32.941212, 32.891209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223988, 33.112583, 32.946064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330141, -0.417190, -0.846734,
		-0.305550, 0.801501, -0.514038,
		0.893110, 0.428425, 0.137136,
		39.491920, 33.241112, 32.987206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036747, 33.352772, 32.317974>,  <38.866745, 32.941212, 32.891209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036747, 33.352772, 32.317974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367973, 33.230537, 32.505981>,  <39.566711, 33.157196, 32.618786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367973, 33.230537, 32.505981>,  <39.036747, 33.352772, 32.317974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367973, 33.230537, 32.505981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405041, -0.253549, -0.878439,
		0.387614, 0.917785, -0.086180,
		0.828069, -0.305589, 0.470019,
		39.616394, 33.138863, 32.646988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600224, 33.603031, 31.912544>,  <39.036747, 33.352772, 32.317974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600224, 33.603031, 31.912544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753502, 33.297726, 32.120621>,  <39.845470, 33.114544, 32.245464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753502, 33.297726, 32.120621>,  <39.600224, 33.603031, 31.912544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753502, 33.297726, 32.120621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589179, -0.231749, -0.774055,
		0.711358, 0.603098, 0.360892,
		0.383195, -0.763259, 0.520189,
		39.868462, 33.068748, 32.276676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246178, 33.647282, 31.731857>,  <39.600224, 33.603031, 31.912544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246178, 33.647282, 31.731857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219189, 33.271732, 31.866892>,  <40.202995, 33.046402, 31.947912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.219189, 33.271732, 31.866892>,  <40.246178, 33.647282, 31.731857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219189, 33.271732, 31.866892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564711, -0.314877, -0.762859,
		0.822526, 0.139170, 0.551437,
		-0.067468, -0.938874, 0.337586,
		40.198948, 32.990070, 31.968168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011673, 33.465546, 31.685940>,  <40.246178, 33.647282, 31.731857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011673, 33.465546, 31.685940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811329, 33.119957, 31.706697>,  <40.691120, 32.912605, 31.719152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811329, 33.119957, 31.706697>,  <41.011673, 33.465546, 31.685940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811329, 33.119957, 31.706697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621641, -0.400805, -0.672992,
		0.602244, -0.304816, 0.737827,
		-0.500864, -0.863969, 0.051896,
		40.661068, 32.860767, 31.722267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476208, 32.842819, 31.789713>,  <41.011673, 33.465546, 31.685940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476208, 32.842819, 31.789713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.132938, 32.722153, 31.623560>,  <40.926979, 32.649754, 31.523869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.132938, 32.722153, 31.623560>,  <41.476208, 32.842819, 31.789713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132938, 32.722153, 31.623560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501659, -0.320958, -0.803321,
		0.109014, -0.897766, 0.426770,
		-0.858169, -0.301666, -0.415383,
		40.875488, 32.631653, 31.498945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621693, 32.257530, 31.456394>,  <41.476208, 32.842819, 31.789713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621693, 32.257530, 31.456394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280201, 32.367538, 31.279528>,  <41.075306, 32.433544, 31.173407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280201, 32.367538, 31.279528>,  <41.621693, 32.257530, 31.456394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280201, 32.367538, 31.279528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410035, -0.168350, -0.896398,
		-0.320971, -0.946583, 0.030955,
		-0.853727, 0.275025, -0.442168,
		41.024082, 32.450047, 31.146877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579472, 31.744921, 30.993658>,  <41.621693, 32.257530, 31.456394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579472, 31.744921, 30.993658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338985, 32.030827, 30.850744>,  <41.194695, 32.202370, 30.764996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338985, 32.030827, 30.850744>,  <41.579472, 31.744921, 30.993658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338985, 32.030827, 30.850744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216493, -0.284696, -0.933852,
		-0.769203, -0.638793, 0.016421,
		-0.601213, 0.714766, -0.357284,
		41.158623, 32.245258, 30.743559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.142761, 31.355789, 30.547585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139141, 31.739933, 30.436136>,  <41.136971, 31.970419, 30.369268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139141, 31.739933, 30.436136>,  <41.142761, 31.355789, 30.547585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139141, 31.739933, 30.436136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153172, -0.274011, -0.949451,
		-0.988158, -0.051267, -0.144621,
		-0.009048, 0.960359, -0.278618,
		41.136425, 32.028042, 30.352551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664780, 31.312016, 30.090437>,  <41.142761, 31.355789, 30.547585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664780, 31.312016, 30.090437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839310, 31.658968, 29.994713>,  <40.944027, 31.867140, 29.937279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839310, 31.658968, 29.994713>,  <40.664780, 31.312016, 30.090437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839310, 31.658968, 29.994713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029698, -0.279702, -0.959628,
		-0.899299, 0.411602, -0.147800,
		0.436324, 0.867382, -0.239312,
		40.970207, 31.919182, 29.922920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389042, 31.624439, 29.476778>,  <40.664780, 31.312016, 30.090437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389042, 31.624439, 29.476778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756233, 31.782320, 29.492374>,  <40.976547, 31.877048, 29.501732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756233, 31.782320, 29.492374>,  <40.389042, 31.624439, 29.476778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756233, 31.782320, 29.492374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101650, -0.139098, -0.985048,
		-0.383379, 0.908218, -0.167810,
		0.917980, 0.394704, 0.038993,
		41.031628, 31.900732, 29.504072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634407, 31.978060, 28.808979>,  <40.389042, 31.624439, 29.476778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634407, 31.978060, 28.808979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976112, 31.892088, 28.998308>,  <41.181137, 31.840506, 29.111906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976112, 31.892088, 28.998308>,  <40.634407, 31.978060, 28.808979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976112, 31.892088, 28.998308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433919, -0.206577, -0.876950,
		0.286260, 0.954532, -0.083210,
		0.854266, -0.214929, 0.473324,
		41.232391, 31.827610, 29.140305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073555, 32.152542, 28.268778>,  <40.634407, 31.978060, 28.808979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073555, 32.152542, 28.268778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307243, 31.956493, 28.527534>,  <41.447456, 31.838863, 28.682789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307243, 31.956493, 28.527534>,  <41.073555, 32.152542, 28.268778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307243, 31.956493, 28.527534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543642, -0.355493, -0.760314,
		0.602613, 0.795867, 0.058766,
		0.584218, -0.490123, 0.646892,
		41.482510, 31.809456, 28.721601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760441, 32.328873, 28.092583>,  <41.073555, 32.152542, 28.268778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760441, 32.328873, 28.092583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761536, 31.982386, 28.292444>,  <41.762192, 31.774492, 28.412361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761536, 31.982386, 28.292444>,  <41.760441, 32.328873, 28.092583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761536, 31.982386, 28.292444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539703, -0.419356, -0.729973,
		0.841851, 0.271662, 0.466354,
		0.002738, -0.866222, 0.499653,
		41.762356, 31.722519, 28.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321758, 32.037491, 28.107386>,  <41.760441, 32.328873, 28.092583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321758, 32.037491, 28.107386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.162788, 31.682627, 28.201195>,  <42.067406, 31.469709, 28.257481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.162788, 31.682627, 28.201195>,  <42.321758, 32.037491, 28.107386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162788, 31.682627, 28.201195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706935, -0.458951, -0.538151,
		0.585059, -0.048084, 0.809564,
		-0.397426, -0.887159, 0.234522,
		42.043560, 31.416479, 28.271551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900162, 31.585951, 28.225843>,  <42.321758, 32.037491, 28.107386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900162, 31.585951, 28.225843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.584866, 31.356907, 28.135695>,  <42.395687, 31.219481, 28.081606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.584866, 31.356907, 28.135695>,  <42.900162, 31.585951, 28.225843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584866, 31.356907, 28.135695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576863, -0.560063, -0.594607,
		0.214257, -0.598703, 0.771783,
		-0.788240, -0.572612, -0.225372,
		42.348392, 31.185123, 28.068083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104366, 30.950045, 28.318371>,  <42.900162, 31.585951, 28.225843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104366, 30.950045, 28.318371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783146, 30.889221, 28.087896>,  <42.590412, 30.852726, 27.949612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783146, 30.889221, 28.087896>,  <43.104366, 30.950045, 28.318371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783146, 30.889221, 28.087896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543381, -0.583789, -0.603264,
		-0.244638, -0.797538, 0.551438,
		-0.803050, -0.152060, -0.576184,
		42.542233, 30.843603, 27.915041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267471, 30.213371, 28.129572>,  <43.104366, 30.950045, 28.318371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267471, 30.213371, 28.129572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999779, 30.360563, 27.871355>,  <42.839165, 30.448879, 27.716425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999779, 30.360563, 27.871355>,  <43.267471, 30.213371, 28.129572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999779, 30.360563, 27.871355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439752, -0.504150, -0.743271,
		-0.598958, -0.781296, 0.175572,
		-0.669229, 0.367980, -0.645541,
		42.799011, 30.470957, 27.677692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085709, 29.685949, 27.777740>,  <43.267471, 30.213371, 28.129572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085709, 29.685949, 27.777740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935017, 29.951773, 27.519613>,  <42.844601, 30.111267, 27.364737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935017, 29.951773, 27.519613>,  <43.085709, 29.685949, 27.777740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935017, 29.951773, 27.519613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557513, -0.393680, -0.730887,
		-0.739766, -0.635121, -0.222189,
		-0.376730, 0.664558, -0.645319,
		42.821999, 30.151140, 27.326017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668434, 29.297022, 27.205492>,  <43.085709, 29.685949, 27.777740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668434, 29.297022, 27.205492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.808151, 29.651638, 27.084139>,  <42.891979, 29.864408, 27.011328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.808151, 29.651638, 27.084139>,  <42.668434, 29.297022, 27.205492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808151, 29.651638, 27.084139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399107, -0.433699, -0.807848,
		-0.847767, 0.161091, -0.505312,
		0.349291, 0.886541, -0.303383,
		42.912937, 29.917601, 26.993124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508953, 29.299707, 26.474054>,  <42.668434, 29.297022, 27.205492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508953, 29.299707, 26.474054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.793869, 29.572512, 26.540403>,  <42.964817, 29.736195, 26.580214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.793869, 29.572512, 26.540403>,  <42.508953, 29.299707, 26.474054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793869, 29.572512, 26.540403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479475, -0.300205, -0.824609,
		-0.512595, 0.666889, -0.540838,
		0.712285, 0.682009, 0.165873,
		43.007553, 29.777115, 26.590166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529781, 29.691015, 25.913954>,  <42.508953, 29.299707, 26.474054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529781, 29.691015, 25.913954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.892323, 29.731241, 26.078108>,  <43.109848, 29.755377, 26.176600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.892323, 29.731241, 26.078108>,  <42.529781, 29.691015, 25.913954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892323, 29.731241, 26.078108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422106, -0.258897, -0.868792,
		0.018876, 0.960655, -0.277101,
		0.906350, 0.100567, 0.410385,
		43.164227, 29.761412, 26.201223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979717, 30.079723, 25.475430>,  <42.529781, 29.691015, 25.913954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979717, 30.079723, 25.475430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.296345, 29.968466, 25.693075>,  <43.486320, 29.901711, 25.823662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.296345, 29.968466, 25.693075>,  <42.979717, 30.079723, 25.475430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296345, 29.968466, 25.693075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530796, -0.128227, -0.837743,
		0.302785, 0.951942, 0.046138,
		0.791566, -0.278146, 0.544112,
		43.533813, 29.885021, 25.856308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554981, 30.505072, 25.258774>,  <42.979717, 30.079723, 25.475430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554981, 30.505072, 25.258774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.721336, 30.184151, 25.430050>,  <43.821148, 29.991598, 25.532816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.721336, 30.184151, 25.430050>,  <43.554981, 30.505072, 25.258774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721336, 30.184151, 25.430050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510515, -0.183687, -0.840020,
		0.752605, 0.567950, 0.333196,
		0.415885, -0.802304, 0.428191,
		43.846104, 29.943459, 25.558508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208992, 30.521177, 25.061386>,  <43.554981, 30.505072, 25.258774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208992, 30.521177, 25.061386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178875, 30.136675, 25.167459>,  <44.160805, 29.905973, 25.231104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178875, 30.136675, 25.167459>,  <44.208992, 30.521177, 25.061386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178875, 30.136675, 25.167459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294209, -0.275512, -0.915169,
		0.952771, 0.009114, 0.303554,
		-0.075292, -0.961254, 0.265181,
		44.156288, 29.848299, 25.247013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783150, 30.232653, 24.779119>,  <44.208992, 30.521177, 25.061386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783150, 30.232653, 24.779119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503723, 29.952883, 24.839527>,  <44.336067, 29.785021, 24.875772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503723, 29.952883, 24.839527>,  <44.783150, 30.232653, 24.779119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503723, 29.952883, 24.839527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256820, -0.442074, -0.859426,
		0.667867, -0.561583, 0.488445,
		-0.698568, -0.699425, 0.151021,
		44.294151, 29.743055, 24.884834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010242, 29.698952, 24.447594>,  <44.783150, 30.232653, 24.779119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010242, 29.698952, 24.447594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626049, 29.600046, 24.498722>,  <44.395535, 29.540703, 24.529398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626049, 29.600046, 24.498722>,  <45.010242, 29.698952, 24.447594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626049, 29.600046, 24.498722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044924, -0.315481, -0.947868,
		0.274701, -0.916150, 0.291905,
		-0.960480, -0.247266, 0.127820,
		44.337906, 29.525866, 24.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972141, 28.933506, 24.321163>,  <45.010242, 29.698952, 24.447594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972141, 28.933506, 24.321163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.633137, 29.132689, 24.247662>,  <44.429733, 29.252197, 24.203560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.633137, 29.132689, 24.247662>,  <44.972141, 28.933506, 24.321163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633137, 29.132689, 24.247662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006289, -0.336753, -0.941572,
		-0.530741, -0.799148, 0.282271,
		-0.847511, 0.497955, -0.183754,
		44.378883, 29.282076, 24.192535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678440, 28.512213, 23.985258>,  <44.972141, 28.933506, 24.321163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678440, 28.512213, 23.985258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.445042, 28.822788, 23.890032>,  <44.305000, 29.009132, 23.832897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.445042, 28.822788, 23.890032>,  <44.678440, 28.512213, 23.985258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445042, 28.822788, 23.890032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093347, -0.227076, -0.969393,
		-0.806731, -0.587863, 0.060020,
		-0.583499, 0.776437, -0.238064,
		44.269993, 29.055719, 23.818613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268471, 28.293720, 23.431534>,  <44.678440, 28.512213, 23.985258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268471, 28.293720, 23.431534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.222591, 28.689962, 23.401751>,  <44.195065, 28.927708, 23.383881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.222591, 28.689962, 23.401751>,  <44.268471, 28.293720, 23.431534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222591, 28.689962, 23.401751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026009, -0.071935, -0.997070,
		-0.993060, -0.116295, -0.017514,
		-0.114695, 0.990606, -0.074460,
		44.188183, 28.987144, 23.379412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928619, 28.492420, 22.815660>,  <44.268471, 28.293720, 23.431534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928619, 28.492420, 22.815660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.106110, 28.838209, 22.910145>,  <44.212605, 29.045683, 22.966835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.106110, 28.838209, 22.910145>,  <43.928619, 28.492420, 22.815660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106110, 28.838209, 22.910145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305628, 0.101803, -0.946693,
		-0.842439, 0.492260, -0.219035,
		0.443721, 0.864474, 0.236212,
		44.239227, 29.097551, 22.981009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660480, 28.520248, 22.171741>,  <43.928619, 28.492420, 22.815660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660480, 28.520248, 22.171741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.405540, 28.651131, 21.892679>,  <43.252579, 28.729660, 21.725243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.405540, 28.651131, 21.892679>,  <43.660480, 28.520248, 22.171741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405540, 28.651131, 21.892679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752660, -0.070241, 0.654652,
		0.165203, 0.942338, 0.291044,
		-0.637347, 0.327207, -0.697657,
		43.214336, 28.749292, 21.683382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264431, 29.230158, 22.287088>,  <43.660480, 28.520248, 22.171741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264431, 29.230158, 22.287088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055798, 28.968475, 22.068012>,  <42.930618, 28.811466, 21.936567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055798, 28.968475, 22.068012>,  <43.264431, 29.230158, 22.287088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055798, 28.968475, 22.068012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785596, 0.117819, 0.607419,
		-0.332848, 0.747084, -0.575394,
		-0.521585, -0.654205, -0.547690,
		42.899323, 28.772213, 21.903706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697582, 29.478567, 21.945824>,  <43.264431, 29.230158, 22.287088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697582, 29.478567, 21.945824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590878, 29.095060, 21.985025>,  <42.526855, 28.864956, 22.008547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590878, 29.095060, 21.985025>,  <42.697582, 29.478567, 21.945824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590878, 29.095060, 21.985025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785572, 0.275221, 0.554194,
		-0.558315, 0.070848, -0.826598,
		-0.266761, -0.958767, 0.098004,
		42.510849, 28.807430, 22.014427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990318, 29.452698, 21.692385>,  <42.697582, 29.478567, 21.945824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990318, 29.452698, 21.692385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038311, 29.136971, 21.933245>,  <42.067108, 28.947535, 22.077761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038311, 29.136971, 21.933245>,  <41.990318, 29.452698, 21.692385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038311, 29.136971, 21.933245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744188, 0.329946, 0.580792,
		-0.657105, -0.517798, -0.547812,
		0.119984, -0.789317, 0.602149,
		42.074306, 28.900175, 22.113890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403557, 29.446798, 21.963745>,  <41.990318, 29.452698, 21.692385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403557, 29.446798, 21.963745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.622421, 29.190969, 22.179731>,  <41.753742, 29.037472, 22.309322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.622421, 29.190969, 22.179731>,  <41.403557, 29.446798, 21.963745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622421, 29.190969, 22.179731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612663, 0.133524, 0.778984,
		-0.570313, -0.757047, -0.318782,
		0.547163, -0.639570, 0.539965,
		41.786572, 28.999098, 22.341721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922958, 29.051485, 22.228979>,  <41.403557, 29.446798, 21.963745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922958, 29.051485, 22.228979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229553, 29.016912, 22.483545>,  <41.413509, 28.996168, 22.636286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229553, 29.016912, 22.483545>,  <40.922958, 29.051485, 22.228979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229553, 29.016912, 22.483545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634753, 0.049105, 0.771153,
		-0.097904, -0.995047, -0.017225,
		0.766488, -0.086432, 0.636417,
		41.459499, 28.990984, 22.674471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785416, 28.407497, 22.734503>,  <40.922958, 29.051485, 22.228979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785416, 28.407497, 22.734503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038578, 28.675840, 22.889101>,  <41.190475, 28.836847, 22.981859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038578, 28.675840, 22.889101>,  <40.785416, 28.407497, 22.734503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038578, 28.675840, 22.889101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473273, -0.059841, 0.878881,
		0.612734, -0.739167, 0.279625,
		0.632906, 0.670859, 0.386494,
		41.228451, 28.877098, 23.005049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642532, 28.359612, 23.500847>,  <40.785416, 28.407497, 22.734503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642532, 28.359612, 23.500847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.845047, 28.703104, 23.469204>,  <40.966557, 28.909199, 23.450218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.845047, 28.703104, 23.469204>,  <40.642532, 28.359612, 23.500847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845047, 28.703104, 23.469204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141166, 0.173023, 0.974749,
		0.850733, -0.482334, 0.208822,
		0.506286, 0.858730, -0.079107,
		40.996933, 28.960724, 23.445471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973171, 28.354092, 24.121998>,  <40.642532, 28.359612, 23.500847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973171, 28.354092, 24.121998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.985977, 28.742546, 24.027452>,  <40.993660, 28.975618, 23.970726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.985977, 28.742546, 24.027452>,  <40.973171, 28.354092, 24.121998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985977, 28.742546, 24.027452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258302, 0.236489, 0.936671,
		0.965533, 0.031067, 0.258418,
		0.032013, 0.971137, -0.236363,
		40.995583, 29.033888, 23.956543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180416, 28.748293, 24.697048>,  <40.973171, 28.354092, 24.121998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180416, 28.748293, 24.697048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038757, 29.046116, 24.470697>,  <40.953762, 29.224810, 24.334887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.038757, 29.046116, 24.470697>,  <41.180416, 28.748293, 24.697048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038757, 29.046116, 24.470697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258829, 0.503420, 0.824364,
		0.898660, 0.438408, 0.014431,
		-0.354143, 0.744558, -0.565876,
		40.932514, 29.269484, 24.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527824, 29.421324, 24.892447>,  <41.180416, 28.748293, 24.697048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527824, 29.421324, 24.892447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163628, 29.451313, 24.729776>,  <40.945110, 29.469307, 24.632174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163628, 29.451313, 24.729776>,  <41.527824, 29.421324, 24.892447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163628, 29.451313, 24.729776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327682, 0.469085, 0.820112,
		0.252253, 0.879965, -0.402530,
		-0.910490, 0.074974, -0.406677,
		40.890480, 29.473804, 24.607773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414017, 30.180002, 24.934055>,  <41.527824, 29.421324, 24.892447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414017, 30.180002, 24.934055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053242, 30.007914, 24.919027>,  <40.836777, 29.904661, 24.910011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053242, 30.007914, 24.919027>,  <41.414017, 30.180002, 24.934055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053242, 30.007914, 24.919027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299092, 0.559537, 0.772957,
		-0.311521, 0.708399, -0.633345,
		-0.901942, -0.430221, -0.037569,
		40.782658, 29.878847, 24.907757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128021, 30.672314, 25.225981>,  <41.414017, 30.180002, 24.934055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128021, 30.672314, 25.225981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866535, 30.370031, 25.241814>,  <40.709644, 30.188662, 25.251314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866535, 30.370031, 25.241814>,  <41.128021, 30.672314, 25.225981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866535, 30.370031, 25.241814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282628, 0.292340, 0.913597,
		-0.701980, 0.586045, -0.404690,
		-0.653716, -0.755704, 0.039585,
		40.670422, 30.143320, 25.253689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537010, 30.981693, 25.491661>,  <41.128021, 30.672314, 25.225981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537010, 30.981693, 25.491661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469398, 30.596067, 25.573643>,  <40.428833, 30.364691, 25.622831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469398, 30.596067, 25.573643>,  <40.537010, 30.981693, 25.491661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469398, 30.596067, 25.573643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245882, 0.242616, 0.938445,
		-0.954449, 0.108227, -0.278055,
		-0.169026, -0.964067, 0.204954,
		40.418690, 30.306847, 25.635128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933697, 30.959185, 25.916204>,  <40.537010, 30.981693, 25.491661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933697, 30.959185, 25.916204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.132126, 30.618872, 25.985580>,  <40.251183, 30.414684, 26.027206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.132126, 30.618872, 25.985580>,  <39.933697, 30.959185, 25.916204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132126, 30.618872, 25.985580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281243, 0.031539, 0.959118,
		-0.821472, -0.524568, -0.223631,
		0.496070, -0.850784, 0.173440,
		40.280949, 30.363636, 26.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369263, 30.594908, 26.201260>,  <39.933697, 30.959185, 25.916204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369263, 30.594908, 26.201260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672127, 30.383396, 26.354671>,  <39.853848, 30.256489, 26.446718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672127, 30.383396, 26.354671>,  <39.369263, 30.594908, 26.201260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672127, 30.383396, 26.354671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398434, 0.091416, 0.912630,
		-0.517642, -0.843821, -0.141467,
		0.757164, -0.528781, 0.383528,
		39.899277, 30.224762, 26.469730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021675, 30.129292, 26.613089>,  <39.369263, 30.594908, 26.201260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021675, 30.129292, 26.613089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397854, 30.156620, 26.746292>,  <39.623562, 30.173018, 26.826214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397854, 30.156620, 26.746292>,  <39.021675, 30.129292, 26.613089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397854, 30.156620, 26.746292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334727, 0.015099, 0.942194,
		0.059340, -0.997549, 0.037068,
		0.940445, 0.068317, 0.333011,
		39.679989, 30.177116, 26.846195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968346, 29.723263, 27.206827>,  <39.021675, 30.129292, 26.613089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968346, 29.723263, 27.206827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281433, 29.969629, 27.242598>,  <39.469284, 30.117449, 27.264059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281433, 29.969629, 27.242598>,  <38.968346, 29.723263, 27.206827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281433, 29.969629, 27.242598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203258, 0.117169, 0.972089,
		0.588248, -0.779050, 0.216900,
		0.782720, 0.615917, 0.089424,
		39.516251, 30.154404, 27.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357483, 29.328178, 27.652151>,  <38.968346, 29.723263, 27.206827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357483, 29.328178, 27.652151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462784, 29.713388, 27.675049>,  <39.525967, 29.944515, 27.688787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462784, 29.713388, 27.675049>,  <39.357483, 29.328178, 27.652151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462784, 29.713388, 27.675049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142007, -0.020010, 0.989663,
		0.954218, -0.268662, 0.131489,
		0.263254, 0.963027, 0.057246,
		39.541759, 30.002296, 27.692223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774807, 29.282417, 28.204544>,  <39.357483, 29.328178, 27.652151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774807, 29.282417, 28.204544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669559, 29.667711, 28.182838>,  <39.606411, 29.898888, 28.169815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669559, 29.667711, 28.182838>,  <39.774807, 29.282417, 28.204544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669559, 29.667711, 28.182838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024056, 0.049678, 0.998476,
		0.964464, 0.264021, 0.010100,
		-0.263117, 0.963237, -0.054264,
		39.590626, 29.956682, 28.166559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166267, 29.751160, 28.619196>,  <39.774807, 29.282417, 28.204544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166267, 29.751160, 28.619196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807987, 29.923689, 28.575964>,  <39.593018, 30.027206, 28.550024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807987, 29.923689, 28.575964>,  <40.166267, 29.751160, 28.619196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807987, 29.923689, 28.575964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120288, -0.001038, 0.992738,
		0.428081, 0.902196, 0.052814,
		-0.895700, 0.431325, -0.108079,
		39.539276, 30.053087, 28.543541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.662964, 32.786247, 33.322865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351467, 32.887386, 33.093212>,  <40.164570, 32.948071, 32.955421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351467, 32.887386, 33.093212>,  <40.662964, 32.786247, 33.322865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351467, 32.887386, 33.093212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294055, 0.661302, 0.690081,
		0.554158, 0.706223, -0.440635,
		-0.778743, 0.252843, -0.574134,
		40.117844, 32.963238, 32.920971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750465, 33.542339, 33.229599>,  <40.662964, 32.786247, 33.322865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750465, 33.542339, 33.229599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371632, 33.429199, 33.168915>,  <40.144329, 33.361313, 33.132504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371632, 33.429199, 33.168915>,  <40.750465, 33.542339, 33.229599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371632, 33.429199, 33.168915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320473, 0.806995, 0.496041,
		-0.017875, 0.518415, -0.854942,
		-0.947089, -0.282853, -0.151713,
		40.087505, 33.344345, 33.123402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451729, 34.136738, 33.103828>,  <40.750465, 33.542339, 33.229599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451729, 34.136738, 33.103828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101490, 33.950737, 33.156124>,  <39.891346, 33.839134, 33.187500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101490, 33.950737, 33.156124>,  <40.451729, 34.136738, 33.103828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101490, 33.950737, 33.156124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378146, 0.828288, 0.413454,
		-0.300547, 0.312584, -0.901090,
		-0.875601, -0.465006, 0.130737,
		39.838810, 33.811234, 33.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915615, 34.557953, 32.798512>,  <40.451729, 34.136738, 33.103828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915615, 34.557953, 32.798512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.728619, 34.316750, 33.057072>,  <39.616421, 34.172028, 33.212208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.728619, 34.316750, 33.057072>,  <39.915615, 34.557953, 32.798512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728619, 34.316750, 33.057072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393034, 0.796760, 0.459019,
		-0.791818, -0.039469, -0.609481,
		-0.467492, -0.603006, 0.646401,
		39.588371, 34.135849, 33.250992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263294, 34.645405, 32.681446>,  <39.915615, 34.557953, 32.798512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263294, 34.645405, 32.681446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303436, 34.518501, 33.058651>,  <39.327522, 34.442360, 33.284973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303436, 34.518501, 33.058651>,  <39.263294, 34.645405, 32.681446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303436, 34.518501, 33.058651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449838, 0.830929, 0.327419,
		-0.887455, -0.457060, -0.059331,
		0.100350, -0.317259, 0.943015,
		39.333542, 34.423325, 33.341557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622211, 34.789547, 32.922043>,  <39.263294, 34.645405, 32.681446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622211, 34.789547, 32.922043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826878, 34.734337, 33.261253>,  <38.949677, 34.701210, 33.464779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826878, 34.734337, 33.261253>,  <38.622211, 34.789547, 32.922043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826878, 34.734337, 33.261253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506976, 0.748364, 0.427699,
		-0.693666, -0.648767, 0.312935,
		0.511667, -0.138030, 0.848024,
		38.980377, 34.692928, 33.515659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121731, 34.582298, 33.510056>,  <38.622211, 34.789547, 32.922043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121731, 34.582298, 33.510056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451084, 34.745247, 33.668091>,  <38.648697, 34.843018, 33.762913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451084, 34.745247, 33.668091>,  <38.121731, 34.582298, 33.510056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451084, 34.745247, 33.668091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564815, 0.655802, 0.500907,
		-0.055047, -0.635589, 0.770063,
		0.823379, 0.407370, 0.395090,
		38.698097, 34.867458, 33.786617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041973, 34.615719, 34.172180>,  <38.121731, 34.582298, 33.510056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041973, 34.615719, 34.172180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338772, 34.882717, 34.147232>,  <38.516850, 35.042915, 34.132263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338772, 34.882717, 34.147232>,  <38.041973, 34.615719, 34.172180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338772, 34.882717, 34.147232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501141, 0.614045, 0.609759,
		0.445311, -0.421182, 0.790129,
		0.741994, 0.667499, -0.062369,
		38.561371, 35.082966, 34.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022072, 34.872654, 34.815006>,  <38.041973, 34.615719, 34.172180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022072, 34.872654, 34.815006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213852, 35.128468, 34.574631>,  <38.328922, 35.281956, 34.430405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213852, 35.128468, 34.574631>,  <38.022072, 34.872654, 34.815006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213852, 35.128468, 34.574631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565154, 0.748886, 0.346078,
		0.671361, 0.173694, 0.720489,
		0.479453, 0.639531, -0.600938,
		38.357689, 35.320328, 34.394348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194542, 35.481781, 35.264458>,  <38.022072, 34.872654, 34.815006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194542, 35.481781, 35.264458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216835, 35.628178, 34.892879>,  <38.230209, 35.716015, 34.669933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216835, 35.628178, 34.892879>,  <38.194542, 35.481781, 35.264458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216835, 35.628178, 34.892879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525432, 0.801893, 0.284411,
		0.849009, 0.472248, 0.236994,
		0.055731, 0.365992, -0.928948,
		38.233555, 35.737976, 34.614197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361088, 36.149349, 35.367569>,  <38.194542, 35.481781, 35.264458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361088, 36.149349, 35.367569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200684, 36.151852, 35.001148>,  <38.104439, 36.153355, 34.781296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200684, 36.151852, 35.001148>,  <38.361088, 36.149349, 35.367569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200684, 36.151852, 35.001148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479059, 0.850912, 0.215528,
		0.780826, 0.525271, -0.338231,
		-0.401015, 0.006257, -0.916050,
		38.080379, 36.153728, 34.726334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320133, 36.844315, 35.253067>,  <38.361088, 36.149349, 35.367569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320133, 36.844315, 35.253067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082054, 36.689663, 34.971287>,  <37.939205, 36.596874, 34.802219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082054, 36.689663, 34.971287>,  <38.320133, 36.844315, 35.253067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082054, 36.689663, 34.971287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679862, 0.709633, 0.184954,
		0.428396, 0.589018, -0.685226,
		-0.595200, -0.386626, -0.704455,
		37.903496, 36.573677, 34.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221710, 37.353836, 34.814163>,  <38.320133, 36.844315, 35.253067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221710, 37.353836, 34.814163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896687, 37.124424, 34.772568>,  <37.701672, 36.986778, 34.747608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896687, 37.124424, 34.772568>,  <38.221710, 37.353836, 34.814163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896687, 37.124424, 34.772568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579173, 0.774352, 0.254830,
		-0.065626, 0.267293, -0.961378,
		-0.812559, -0.573527, -0.103991,
		37.652920, 36.952366, 34.741371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859715, 37.889324, 34.683605>,  <38.221710, 37.353836, 34.814163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859715, 37.889324, 34.683605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973289, 38.114105, 34.994370>,  <39.041435, 38.248974, 35.180828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973289, 38.114105, 34.994370>,  <38.859715, 37.889324, 34.683605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973289, 38.114105, 34.994370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866136, 0.497903, -0.043597,
		-0.411326, -0.660533, 0.628099,
		0.283935, 0.561952, 0.776911,
		39.058472, 38.282692, 35.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349503, 38.238499, 34.115631>,  <38.859715, 37.889324, 34.683605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349503, 38.238499, 34.115631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659973, 38.320564, 33.877151>,  <39.846256, 38.369804, 33.734062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.659973, 38.320564, 33.877151>,  <39.349503, 38.238499, 34.115631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659973, 38.320564, 33.877151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507219, -0.358521, -0.783704,
		-0.374536, 0.910699, -0.174214,
		0.776177, 0.205160, -0.596203,
		39.892826, 38.382111, 33.698292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065544, 38.372261, 33.502686>,  <39.349503, 38.238499, 34.115631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065544, 38.372261, 33.502686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447079, 38.326313, 33.391689>,  <39.675999, 38.298744, 33.325092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447079, 38.326313, 33.391689>,  <39.065544, 38.372261, 33.502686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447079, 38.326313, 33.391689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299238, -0.284841, -0.910671,
		0.025570, 0.951667, -0.306066,
		0.953836, -0.114872, -0.277492,
		39.733231, 38.291851, 33.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084156, 38.657997, 32.925995>,  <39.065544, 38.372261, 33.502686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084156, 38.657997, 32.925995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391502, 38.402809, 32.905556>,  <39.575909, 38.249695, 32.893291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391502, 38.402809, 32.905556>,  <39.084156, 38.657997, 32.925995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391502, 38.402809, 32.905556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268251, -0.248534, -0.930737,
		0.581082, 0.728853, -0.362101,
		0.768365, -0.637969, -0.051097,
		39.622013, 38.211418, 32.890228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522507, 38.807587, 32.311775>,  <39.084156, 38.657997, 32.925995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522507, 38.807587, 32.311775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575005, 38.423542, 32.410534>,  <39.606503, 38.193115, 32.469788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575005, 38.423542, 32.410534>,  <39.522507, 38.807587, 32.311775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575005, 38.423542, 32.410534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007553, -0.248072, -0.968712,
		0.991321, 0.129007, -0.025307,
		0.131249, -0.960113, 0.246894,
		39.614380, 38.135509, 32.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887314, 38.583870, 31.829180>,  <39.522507, 38.807587, 32.311775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887314, 38.583870, 31.829180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719685, 38.252010, 31.976727>,  <39.619106, 38.052895, 32.065254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.719685, 38.252010, 31.976727>,  <39.887314, 38.583870, 31.829180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719685, 38.252010, 31.976727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232824, -0.294483, -0.926862,
		0.877594, -0.474303, -0.069752,
		-0.419072, -0.829648, 0.368865,
		39.593964, 38.003117, 32.087387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142612, 38.034939, 31.394720>,  <39.887314, 38.583870, 31.829180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142612, 38.034939, 31.394720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837212, 37.838078, 31.561981>,  <39.653973, 37.719959, 31.662338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837212, 37.838078, 31.561981>,  <40.142612, 38.034939, 31.394720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837212, 37.838078, 31.561981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152562, -0.491711, -0.857290,
		0.627530, -0.718334, 0.300337,
		-0.763499, -0.492155, 0.418153,
		39.608162, 37.690430, 31.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143612, 37.405533, 31.118448>,  <40.142612, 38.034939, 31.394720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143612, 37.405533, 31.118448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768139, 37.383713, 31.254627>,  <39.542854, 37.370621, 31.336334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768139, 37.383713, 31.254627>,  <40.143612, 37.405533, 31.118448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768139, 37.383713, 31.254627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239006, -0.608720, -0.756529,
		0.248510, -0.791507, 0.558354,
		-0.938679, -0.054554, 0.340448,
		39.486534, 37.367348, 31.356762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964733, 36.740982, 31.012604>,  <40.143612, 37.405533, 31.118448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964733, 36.740982, 31.012604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608463, 36.920273, 31.043022>,  <39.394699, 37.027847, 31.061274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608463, 36.920273, 31.043022>,  <39.964733, 36.740982, 31.012604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608463, 36.920273, 31.043022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392529, -0.673781, -0.626051,
		-0.229377, -0.587460, 0.776065,
		-0.890678, 0.448230, 0.076045,
		39.341259, 37.054741, 31.065836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579739, 36.188469, 31.225214>,  <39.964733, 36.740982, 31.012604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579739, 36.188469, 31.225214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343407, 36.467548, 31.063158>,  <39.201607, 36.634998, 30.965925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343407, 36.467548, 31.063158>,  <39.579739, 36.188469, 31.225214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343407, 36.467548, 31.063158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372351, -0.681283, -0.630244,
		-0.715737, -0.221510, 0.662310,
		-0.590826, 0.697701, -0.405140,
		39.166157, 36.676857, 30.941616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034679, 35.825562, 31.066740>,  <39.579739, 36.188469, 31.225214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034679, 35.825562, 31.066740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009525, 36.163071, 30.853540>,  <38.994431, 36.365578, 30.725620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009525, 36.163071, 30.853540>,  <39.034679, 35.825562, 31.066740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009525, 36.163071, 30.853540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567007, -0.469703, -0.676670,
		-0.821309, 0.259661, 0.507964,
		-0.062888, 0.843775, -0.533000,
		38.990658, 36.416203, 30.693640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316021, 35.827671, 30.883867>,  <39.034679, 35.825562, 31.066740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316021, 35.827671, 30.883867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529434, 36.051922, 30.630554>,  <38.657482, 36.186470, 30.478567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529434, 36.051922, 30.630554>,  <38.316021, 35.827671, 30.883867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529434, 36.051922, 30.630554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513381, -0.380380, -0.769253,
		-0.672150, 0.735535, 0.084870,
		0.533530, 0.560624, -0.633283,
		38.689491, 36.220108, 30.440569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735229, 36.017864, 30.450108>,  <38.316021, 35.827671, 30.883867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735229, 36.017864, 30.450108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089615, 36.092419, 30.280249>,  <38.302246, 36.137150, 30.178333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089615, 36.092419, 30.280249>,  <37.735229, 36.017864, 30.450108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089615, 36.092419, 30.280249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336122, -0.372794, -0.864897,
		-0.319510, 0.909002, -0.267634,
		0.885966, 0.186386, -0.424647,
		38.355404, 36.148335, 30.152855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585709, 36.480282, 29.840858>,  <37.735229, 36.017864, 30.450108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585709, 36.480282, 29.840858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.931908, 36.281944, 29.812437>,  <38.139629, 36.162941, 29.795383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.931908, 36.281944, 29.812437>,  <37.585709, 36.480282, 29.840858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931908, 36.281944, 29.812437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223768, -0.255820, -0.940470,
		0.448148, 0.829877, -0.332366,
		0.865501, -0.495842, -0.071055,
		38.191559, 36.133190, 29.791121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828430, 36.708660, 29.240744>,  <37.585709, 36.480282, 29.840858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828430, 36.708660, 29.240744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023197, 36.364326, 29.299894>,  <38.140057, 36.157726, 29.335384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023197, 36.364326, 29.299894>,  <37.828430, 36.708660, 29.240744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023197, 36.364326, 29.299894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226574, -0.287993, -0.930443,
		0.843549, 0.419543, -0.335273,
		0.486917, -0.860839, 0.147879,
		38.169273, 36.106075, 29.344257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928375, 37.354385, 28.912922>,  <37.828430, 36.708660, 29.240744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928375, 37.354385, 28.912922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623264, 37.488220, 28.691572>,  <37.440197, 37.568523, 28.558762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623264, 37.488220, 28.691572>,  <37.928375, 37.354385, 28.912922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623264, 37.488220, 28.691572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410077, 0.411397, 0.813996,
		0.500012, 0.847822, -0.176595,
		-0.762774, 0.334590, -0.553376,
		37.394432, 37.588596, 28.525560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945557, 38.057472, 29.022680>,  <37.928375, 37.354385, 28.912922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945557, 38.057472, 29.022680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575531, 37.980442, 28.891733>,  <37.353516, 37.934223, 28.813164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575531, 37.980442, 28.891733>,  <37.945557, 38.057472, 29.022680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575531, 37.980442, 28.891733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377181, 0.364576, 0.851363,
		-0.044597, 0.911044, -0.409890,
		-0.925065, -0.192571, -0.327369,
		37.298012, 37.922672, 28.793522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466057, 38.639362, 29.384506>,  <37.945557, 38.057472, 29.022680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466057, 38.639362, 29.384506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.235065, 38.334122, 29.268435>,  <37.096470, 38.150978, 29.198792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.235065, 38.334122, 29.268435>,  <37.466057, 38.639362, 29.384506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235065, 38.334122, 29.268435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486405, 0.036124, 0.872986,
		-0.655692, 0.645272, -0.392036,
		-0.577475, -0.763098, -0.290178,
		37.061821, 38.105194, 29.181381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682549, 38.910389, 29.432358>,  <37.466057, 38.639362, 29.384506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682549, 38.910389, 29.432358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699844, 38.510937, 29.420620>,  <36.710220, 38.271263, 29.413576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699844, 38.510937, 29.420620>,  <36.682549, 38.910389, 29.432358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699844, 38.510937, 29.420620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552045, -0.048363, 0.832411,
		-0.832693, -0.019791, -0.553382,
		0.043237, -0.998634, -0.029346,
		36.712814, 38.211346, 29.411816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908875, 38.736847, 29.411575>,  <36.682549, 38.910389, 29.432358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908875, 38.736847, 29.411575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.161022, 38.451385, 29.533775>,  <36.312309, 38.280109, 29.607096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.161022, 38.451385, 29.533775>,  <35.908875, 38.736847, 29.411575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161022, 38.451385, 29.533775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582603, -0.174831, 0.793730,
		-0.513038, -0.678330, -0.525985,
		0.630370, -0.713655, 0.305502,
		36.350132, 38.237289, 29.625425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508312, 38.268414, 29.584223>,  <35.908875, 38.736847, 29.411575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508312, 38.268414, 29.584223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.835003, 38.128056, 29.767454>,  <36.031017, 38.043842, 29.877392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.835003, 38.128056, 29.767454>,  <35.508312, 38.268414, 29.584223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835003, 38.128056, 29.767454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552675, -0.247503, 0.795797,
		-0.165861, -0.903116, -0.396071,
		0.816725, -0.350890, 0.458079,
		36.080021, 38.022789, 29.904877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389904, 37.530586, 29.786987>,  <35.508312, 38.268414, 29.584223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389904, 37.530586, 29.786987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.674061, 37.694996, 30.015514>,  <35.844555, 37.793644, 30.152630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.674061, 37.694996, 30.015514>,  <35.389904, 37.530586, 29.786987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674061, 37.694996, 30.015514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594113, -0.084993, 0.799879,
		0.377330, -0.907652, 0.183819,
		0.710389, 0.411027, 0.571318,
		35.887177, 37.818302, 30.186911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438805, 37.120312, 30.425703>,  <35.389904, 37.530586, 29.786987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438805, 37.120312, 30.425703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616142, 37.468189, 30.512489>,  <35.722546, 37.676918, 30.564562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616142, 37.468189, 30.512489>,  <35.438805, 37.120312, 30.425703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616142, 37.468189, 30.512489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429941, -0.006065, 0.902837,
		0.786511, -0.493547, 0.371230,
		0.443341, 0.869698, 0.216966,
		35.749146, 37.729099, 30.577579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650627, 37.027702, 31.150486>,  <35.438805, 37.120312, 30.425703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650627, 37.027702, 31.150486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635918, 37.422798, 31.089809>,  <35.627094, 37.659855, 31.053404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635918, 37.422798, 31.089809>,  <35.650627, 37.027702, 31.150486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635918, 37.422798, 31.089809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458508, 0.118199, 0.880795,
		0.887929, 0.101938, 0.448542,
		-0.036769, 0.987744, -0.151691,
		35.624886, 37.719120, 31.044302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863926, 37.379597, 31.845240>,  <35.650627, 37.027702, 31.150486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863926, 37.379597, 31.845240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669685, 37.662193, 31.639305>,  <35.553139, 37.831753, 31.515745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669685, 37.662193, 31.639305>,  <35.863926, 37.379597, 31.845240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669685, 37.662193, 31.639305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564219, 0.196540, 0.801891,
		0.667716, 0.679882, 0.303176,
		-0.485605, 0.706493, -0.514835,
		35.524002, 37.874142, 31.484856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944050, 38.018139, 32.224205>,  <35.863926, 37.379597, 31.845240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944050, 38.018139, 32.224205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629547, 38.036453, 31.977724>,  <35.440845, 38.047443, 31.829836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629547, 38.036453, 31.977724>,  <35.944050, 38.018139, 32.224205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629547, 38.036453, 31.977724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597984, 0.194757, 0.777487,
		0.155610, 0.979782, -0.125748,
		-0.786258, 0.045789, -0.616200,
		35.393669, 38.050190, 31.792864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664825, 38.555340, 32.530010>,  <35.944050, 38.018139, 32.224205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664825, 38.555340, 32.530010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379402, 38.403564, 32.294430>,  <35.208149, 38.312500, 32.153080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379402, 38.403564, 32.294430>,  <35.664825, 38.555340, 32.530010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379402, 38.403564, 32.294430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699441, 0.337504, 0.629979,
		-0.040268, 0.861461, -0.506225,
		-0.713555, -0.379442, -0.588950,
		35.165337, 38.289730, 32.117744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.051270, 36.797195, 26.459545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751106, 36.654652, 26.236872>,  <39.571007, 36.569126, 26.103268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751106, 36.654652, 26.236872>,  <40.051270, 36.797195, 26.459545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751106, 36.654652, 26.236872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651024, 0.544062, 0.529306,
		0.114249, 0.759610, -0.640266,
		-0.750410, -0.356356, -0.556683,
		39.525982, 36.547745, 26.069866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742203, 37.383698, 26.232618>,  <40.051270, 36.797195, 26.459545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742203, 37.383698, 26.232618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463379, 37.097424, 26.215193>,  <39.296085, 36.925659, 26.204737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463379, 37.097424, 26.215193>,  <39.742203, 37.383698, 26.232618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463379, 37.097424, 26.215193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668772, 0.627051, 0.399437,
		-0.258556, 0.307565, -0.915725,
		-0.697060, -0.715689, -0.043563,
		39.254261, 36.882717, 26.202124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159569, 37.822586, 26.049894>,  <39.742203, 37.383698, 26.232618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159569, 37.822586, 26.049894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008938, 37.474876, 26.177990>,  <38.918560, 37.266251, 26.254847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008938, 37.474876, 26.177990>,  <39.159569, 37.822586, 26.049894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008938, 37.474876, 26.177990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711381, 0.492783, 0.501100,
		-0.593401, -0.039108, -0.803956,
		-0.376579, -0.869273, 0.320239,
		38.895966, 37.214096, 26.274061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413582, 37.867710, 26.109766>,  <39.159569, 37.822586, 26.049894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413582, 37.867710, 26.109766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457306, 37.531136, 26.321442>,  <38.483540, 37.329193, 26.448446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457306, 37.531136, 26.321442>,  <38.413582, 37.867710, 26.109766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457306, 37.531136, 26.321442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662045, 0.335485, 0.670184,
		-0.741450, -0.423602, -0.520396,
		0.109307, -0.841434, 0.529189,
		38.490097, 37.278706, 26.480198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662880, 37.564064, 26.181746>,  <38.413582, 37.867710, 26.109766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662880, 37.564064, 26.181746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897144, 37.431210, 26.477499>,  <38.037704, 37.351498, 26.654951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897144, 37.431210, 26.477499>,  <37.662880, 37.564064, 26.181746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897144, 37.431210, 26.477499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750259, 0.123119, 0.649579,
		-0.306780, -0.935162, -0.177080,
		0.585660, -0.332134, 0.739384,
		38.072842, 37.331570, 26.699314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250278, 37.160812, 26.552191>,  <37.662880, 37.564064, 26.181746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250278, 37.160812, 26.552191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545219, 37.246872, 26.808321>,  <37.722183, 37.298508, 26.962000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545219, 37.246872, 26.808321>,  <37.250278, 37.160812, 26.552191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545219, 37.246872, 26.808321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667582, 0.087326, 0.739398,
		0.103157, -0.972671, 0.208014,
		0.737356, 0.215140, 0.640329,
		37.766426, 37.311417, 27.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170788, 36.664104, 27.246450>,  <37.250278, 37.160812, 26.552191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170788, 36.664104, 27.246450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401226, 36.978291, 27.336931>,  <37.539490, 37.166801, 27.391220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401226, 36.978291, 27.336931>,  <37.170788, 36.664104, 27.246450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401226, 36.978291, 27.336931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546153, 0.164001, 0.821474,
		0.608139, -0.596787, 0.523462,
		0.576093, 0.785461, 0.226202,
		37.574055, 37.213928, 27.404791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243793, 36.570946, 27.922668>,  <37.170788, 36.664104, 27.246450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243793, 36.570946, 27.922668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355133, 36.951450, 27.869555>,  <37.421936, 37.179752, 27.837687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355133, 36.951450, 27.869555>,  <37.243793, 36.570946, 27.922668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355133, 36.951450, 27.869555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438799, 0.248921, 0.863420,
		0.854389, -0.182062, 0.486697,
		0.278345, 0.951258, -0.132786,
		37.438637, 37.236828, 27.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648907, 36.730873, 28.488823>,  <37.243793, 36.570946, 27.922668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648907, 36.730873, 28.488823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493797, 37.065681, 28.334410>,  <37.400730, 37.266567, 28.241762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493797, 37.065681, 28.334410>,  <37.648907, 36.730873, 28.488823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493797, 37.065681, 28.334410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214628, 0.325299, 0.920931,
		0.896419, 0.439966, 0.053507,
		-0.387773, 0.837025, -0.386034,
		37.377464, 37.316788, 28.218599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296989, 36.469734, 28.612814>,  <37.648907, 36.730873, 28.488823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296989, 36.469734, 28.612814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288155, 36.117416, 28.802004>,  <38.282856, 35.906025, 28.915518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288155, 36.117416, 28.802004>,  <38.296989, 36.469734, 28.612814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288155, 36.117416, 28.802004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168595, -0.469596, -0.866634,
		0.985438, 0.060602, 0.158869,
		-0.022085, -0.880799, 0.472975,
		38.281528, 35.853176, 28.943895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813705, 36.026604, 28.297585>,  <38.296989, 36.469734, 28.612814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813705, 36.026604, 28.297585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580772, 35.769672, 28.496906>,  <38.441013, 35.615513, 28.616499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580772, 35.769672, 28.496906>,  <38.813705, 36.026604, 28.297585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580772, 35.769672, 28.496906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097838, -0.663871, -0.741419,
		0.807045, -0.382996, 0.449435,
		-0.582328, -0.642331, 0.498302,
		38.406075, 35.576973, 28.646397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206120, 35.524471, 28.537317>,  <38.813705, 36.026604, 28.297585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206120, 35.524471, 28.537317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842911, 35.357147, 28.528204>,  <38.624985, 35.256752, 28.522736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842911, 35.357147, 28.528204>,  <39.206120, 35.524471, 28.537317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842911, 35.357147, 28.528204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380631, -0.801070, -0.461960,
		0.174992, -0.428140, 0.886608,
		-0.908019, -0.418310, -0.022783,
		38.570507, 35.231655, 28.521370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363976, 34.778725, 28.798086>,  <39.206120, 35.524471, 28.537317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363976, 34.778725, 28.798086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005882, 34.791786, 28.620327>,  <38.791027, 34.799622, 28.513672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005882, 34.791786, 28.620327>,  <39.363976, 34.778725, 28.798086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005882, 34.791786, 28.620327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259245, -0.772982, -0.579043,
		-0.362420, -0.633587, 0.683534,
		-0.895234, 0.032654, -0.444398,
		38.737312, 34.801582, 28.487007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053837, 34.146870, 28.952669>,  <39.363976, 34.778725, 28.798086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053837, 34.146870, 28.952669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894356, 34.308090, 28.623165>,  <38.798668, 34.404823, 28.425463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894356, 34.308090, 28.623165>,  <39.053837, 34.146870, 28.952669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894356, 34.308090, 28.623165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280099, -0.801804, -0.527878,
		-0.873260, -0.441200, 0.206785,
		-0.398701, 0.403055, -0.823763,
		38.774746, 34.429005, 28.376036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818710, 33.623039, 28.570835>,  <39.053837, 34.146870, 28.952669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818710, 33.623039, 28.570835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819721, 33.901741, 28.283913>,  <38.820328, 34.068962, 28.111759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819721, 33.901741, 28.283913>,  <38.818710, 33.623039, 28.570835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819721, 33.901741, 28.283913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470016, -0.633968, -0.614142,
		-0.882655, -0.335591, -0.329089,
		0.002531, 0.696752, -0.717307,
		38.820480, 34.110767, 28.068720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605164, 33.226692, 27.985802>,  <38.818710, 33.623039, 28.570835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605164, 33.226692, 27.985802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788010, 33.551273, 27.840153>,  <38.897717, 33.746021, 27.752764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788010, 33.551273, 27.840153>,  <38.605164, 33.226692, 27.985802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788010, 33.551273, 27.840153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568312, -0.581405, -0.582227,
		-0.684155, 0.059209, -0.726930,
		0.457114, 0.811457, -0.364122,
		38.925144, 33.794712, 27.730917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608162, 33.054291, 27.368002>,  <38.605164, 33.226692, 27.985802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608162, 33.054291, 27.368002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888058, 33.335911, 27.416449>,  <39.055996, 33.504883, 27.445517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888058, 33.335911, 27.416449>,  <38.608162, 33.054291, 27.368002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888058, 33.335911, 27.416449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633619, -0.533331, -0.560433,
		-0.329978, 0.468902, -0.819296,
		0.699744, 0.704052, 0.121118,
		39.097980, 33.547127, 27.452784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740051, 33.236790, 26.712889>,  <38.608162, 33.054291, 27.368002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740051, 33.236790, 26.712889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046841, 33.311901, 26.958326>,  <39.230915, 33.356968, 27.105589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046841, 33.311901, 26.958326>,  <38.740051, 33.236790, 26.712889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046841, 33.311901, 26.958326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604735, -0.531312, -0.593299,
		0.214603, 0.826104, -0.521054,
		0.766969, 0.187776, 0.613595,
		39.276932, 33.368233, 27.142405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212337, 33.392376, 26.335085>,  <38.740051, 33.236790, 26.712889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212337, 33.392376, 26.335085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433506, 33.320301, 26.660492>,  <39.566208, 33.277058, 26.855736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433506, 33.320301, 26.660492>,  <39.212337, 33.392376, 26.335085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433506, 33.320301, 26.660492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724618, -0.378012, -0.576225,
		0.411346, 0.908097, -0.078446,
		0.552922, -0.180185, 0.813518,
		39.599384, 33.266247, 26.904547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827465, 33.780941, 26.206665>,  <39.212337, 33.392376, 26.335085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827465, 33.780941, 26.206665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907166, 33.484322, 26.462917>,  <39.954987, 33.306351, 26.616669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907166, 33.484322, 26.462917>,  <39.827465, 33.780941, 26.206665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907166, 33.484322, 26.462917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748423, -0.306850, -0.587967,
		0.632583, 0.596615, 0.493852,
		0.199252, -0.741548, 0.640629,
		39.966942, 33.261856, 26.655106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526104, 33.844276, 26.234245>,  <39.827465, 33.780941, 26.206665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526104, 33.844276, 26.234245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425407, 33.475433, 26.351786>,  <40.364990, 33.254128, 26.422310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425407, 33.475433, 26.351786>,  <40.526104, 33.844276, 26.234245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425407, 33.475433, 26.351786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775641, -0.373826, -0.508562,
		0.578797, 0.099896, 0.809330,
		-0.251745, -0.922103, 0.293853,
		40.349884, 33.198803, 26.439941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185089, 33.546413, 26.419956>,  <40.526104, 33.844276, 26.234245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185089, 33.546413, 26.419956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936329, 33.234669, 26.389408>,  <40.787071, 33.047623, 26.371080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936329, 33.234669, 26.389408>,  <41.185089, 33.546413, 26.419956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936329, 33.234669, 26.389408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759932, -0.577083, -0.299130,
		0.189059, -0.244064, 0.951151,
		-0.621901, -0.779364, -0.076369,
		40.749760, 33.000858, 26.366497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594036, 33.002808, 26.722958>,  <41.185089, 33.546413, 26.419956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594036, 33.002808, 26.722958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304821, 32.831253, 26.506338>,  <41.131294, 32.728321, 26.376366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304821, 32.831253, 26.506338>,  <41.594036, 33.002808, 26.722958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304821, 32.831253, 26.506338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690641, -0.466203, -0.552875,
		-0.015350, -0.773764, 0.633288,
		-0.723035, -0.428888, -0.541549,
		41.087910, 32.702587, 26.343874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.018257, 30.603125, 25.448071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234688, 30.914110, 25.576309>,  <37.364548, 31.100702, 25.653252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234688, 30.914110, 25.576309>,  <37.018257, 30.603125, 25.448071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234688, 30.914110, 25.576309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213944, -0.241424, 0.946543,
		0.813302, -0.580745, 0.035704,
		0.541080, 0.777464, 0.320597,
		37.397011, 31.147348, 25.672489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407516, 30.376778, 25.925295>,  <37.018257, 30.603125, 25.448071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407516, 30.376778, 25.925295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410889, 30.768869, 26.004364>,  <37.412910, 31.004126, 26.051805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410889, 30.768869, 26.004364>,  <37.407516, 30.376778, 25.925295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410889, 30.768869, 26.004364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235981, -0.190148, 0.952973,
		0.971721, -0.054682, 0.229713,
		0.008431, 0.980232, 0.197675,
		37.413418, 31.062939, 26.063667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819668, 30.486135, 26.525845>,  <37.407516, 30.376778, 25.925295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819668, 30.486135, 26.525845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585392, 30.808105, 26.487772>,  <37.444828, 31.001287, 26.464928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585392, 30.808105, 26.487772>,  <37.819668, 30.486135, 26.525845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585392, 30.808105, 26.487772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174580, -0.010603, 0.984586,
		0.791510, 0.593280, 0.146734,
		-0.585690, 0.804926, -0.095183,
		37.409683, 31.049583, 26.459217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947514, 30.967117, 27.185366>,  <37.819668, 30.486135, 26.525845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947514, 30.967117, 27.185366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604458, 31.093826, 27.023325>,  <37.398624, 31.169851, 26.926102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604458, 31.093826, 27.023325>,  <37.947514, 30.967117, 27.185366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604458, 31.093826, 27.023325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378230, 0.145156, 0.914260,
		0.348416, 0.937328, -0.004678,
		-0.857641, 0.316774, -0.405100,
		37.347164, 31.188858, 26.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695797, 31.506691, 27.626677>,  <37.947514, 30.967117, 27.185366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695797, 31.506691, 27.626677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366741, 31.438509, 27.409714>,  <37.169308, 31.397600, 27.279535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366741, 31.438509, 27.409714>,  <37.695797, 31.506691, 27.626677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366741, 31.438509, 27.409714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563981, 0.123791, 0.816457,
		-0.072023, 0.977559, -0.197968,
		-0.822641, -0.170454, -0.542409,
		37.119949, 31.387373, 27.246990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230255, 32.040367, 27.732531>,  <37.695797, 31.506691, 27.626677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230255, 32.040367, 27.732531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.027519, 31.705189, 27.651587>,  <36.905876, 31.504080, 27.603020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.027519, 31.705189, 27.651587>,  <37.230255, 32.040367, 27.732531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027519, 31.705189, 27.651587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602910, 0.176799, 0.777973,
		-0.616125, 0.516316, -0.594818,
		-0.506843, -0.837950, -0.202362,
		36.875465, 31.453804, 27.590878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559147, 32.292515, 27.676979>,  <37.230255, 32.040367, 27.732531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559147, 32.292515, 27.676979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478310, 31.903778, 27.725456>,  <36.429806, 31.670536, 27.754541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478310, 31.903778, 27.725456>,  <36.559147, 32.292515, 27.676979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478310, 31.903778, 27.725456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699548, 0.229845, 0.676612,
		-0.685413, 0.051959, -0.726298,
		-0.202092, -0.971839, 0.121191,
		36.417683, 31.612226, 27.761814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857162, 32.290821, 27.805565>,  <36.559147, 32.292515, 27.676979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857162, 32.290821, 27.805565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009457, 31.959015, 27.968998>,  <36.100834, 31.759930, 28.067059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009457, 31.959015, 27.968998>,  <35.857162, 32.290821, 27.805565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009457, 31.959015, 27.968998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661946, 0.064022, 0.746813,
		-0.645653, -0.554798, -0.524720,
		0.380736, -0.829518, 0.408582,
		36.123676, 31.710159, 28.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279778, 31.848469, 27.987495>,  <35.857162, 32.290821, 27.805565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279778, 31.848469, 27.987495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591446, 31.713488, 28.198786>,  <35.778446, 31.632500, 28.325560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591446, 31.713488, 28.198786>,  <35.279778, 31.848469, 27.987495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591446, 31.713488, 28.198786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566936, -0.019957, 0.823520,
		-0.267359, -0.941130, -0.206865,
		0.779168, -0.337454, 0.528225,
		35.825195, 31.612251, 28.357254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979626, 31.406078, 28.356535>,  <35.279778, 31.848469, 27.987495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979626, 31.406078, 28.356535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302425, 31.474552, 28.582615>,  <35.496105, 31.515636, 28.718262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302425, 31.474552, 28.582615>,  <34.979626, 31.406078, 28.356535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302425, 31.474552, 28.582615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568466, -0.034122, 0.821999,
		0.160002, -0.984647, 0.069778,
		0.806998, 0.171187, 0.565198,
		35.544525, 31.525908, 28.752174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978001, 31.039167, 29.149117>,  <34.979626, 31.406078, 28.356535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978001, 31.039167, 29.149117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274170, 31.306765, 29.175135>,  <35.451870, 31.467323, 29.190746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274170, 31.306765, 29.175135>,  <34.978001, 31.039167, 29.149117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274170, 31.306765, 29.175135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357045, 0.309476, 0.881330,
		0.569473, -0.675777, 0.468002,
		0.740418, 0.668992, 0.065045,
		35.496296, 31.507462, 29.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244190, 30.994923, 29.854578>,  <34.978001, 31.039167, 29.149117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244190, 30.994923, 29.854578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360329, 31.360737, 29.741922>,  <35.430012, 31.580225, 29.674328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360329, 31.360737, 29.741922>,  <35.244190, 30.994923, 29.854578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360329, 31.360737, 29.741922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339397, 0.373605, 0.863266,
		0.894711, -0.155061, 0.418867,
		0.290349, 0.914535, -0.281641,
		35.447433, 31.635098, 29.657431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734081, 31.324238, 30.398781>,  <35.244190, 30.994923, 29.854578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734081, 31.324238, 30.398781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616276, 31.628582, 30.167488>,  <35.545593, 31.811188, 30.028713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616276, 31.628582, 30.167488>,  <35.734081, 31.324238, 30.398781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616276, 31.628582, 30.167488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319385, 0.491909, 0.809950,
		0.900696, 0.423222, 0.098132,
		-0.294517, 0.760860, -0.578231,
		35.527920, 31.856840, 29.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015324, 31.873384, 30.730665>,  <35.734081, 31.324238, 30.398781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015324, 31.873384, 30.730665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695927, 32.004761, 30.528860>,  <35.504288, 32.083588, 30.407778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695927, 32.004761, 30.528860>,  <36.015324, 31.873384, 30.730665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695927, 32.004761, 30.528860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355311, 0.419396, 0.835381,
		0.485962, 0.846307, -0.218188,
		-0.798496, 0.328439, -0.504512,
		35.456379, 32.103291, 30.377506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615112, 32.288883, 30.695866>,  <36.015324, 31.873384, 30.730665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615112, 32.288883, 30.695866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914307, 32.213394, 30.950394>,  <37.093822, 32.168102, 31.103111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914307, 32.213394, 30.950394>,  <36.615112, 32.288883, 30.695866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914307, 32.213394, 30.950394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437601, -0.580602, -0.686591,
		0.499024, 0.792013, -0.351695,
		0.747984, -0.188723, 0.636320,
		37.138702, 32.156776, 31.141291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173141, 32.396446, 30.338030>,  <36.615112, 32.288883, 30.695866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173141, 32.396446, 30.338030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277554, 32.147213, 30.632954>,  <37.340202, 31.997673, 30.809908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277554, 32.147213, 30.632954>,  <37.173141, 32.396446, 30.338030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277554, 32.147213, 30.632954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295868, -0.675391, -0.675506,
		0.918871, 0.394475, 0.008053,
		0.261032, -0.623086, 0.737310,
		37.355862, 31.960287, 30.854147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904510, 32.270775, 30.256544>,  <37.173141, 32.396446, 30.338030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904510, 32.270775, 30.256544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759178, 31.978027, 30.487144>,  <37.671978, 31.802378, 30.625505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759178, 31.978027, 30.487144>,  <37.904510, 32.270775, 30.256544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759178, 31.978027, 30.487144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522108, -0.672442, -0.524619,
		0.771617, 0.110384, 0.626436,
		-0.363332, -0.731872, 0.576500,
		37.650177, 31.758465, 30.660095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479675, 31.982355, 30.631710>,  <37.904510, 32.270775, 30.256544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479675, 31.982355, 30.631710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197731, 31.699844, 30.605328>,  <38.028564, 31.530338, 30.589499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197731, 31.699844, 30.605328>,  <38.479675, 31.982355, 30.631710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197731, 31.699844, 30.605328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647308, -0.602394, -0.467026,
		0.290119, -0.371879, 0.881781,
		-0.704857, -0.706277, -0.065954,
		37.986275, 31.487961, 30.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856731, 31.448692, 30.709917>,  <38.479675, 31.982355, 30.631710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856731, 31.448692, 30.709917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510204, 31.311510, 30.564653>,  <38.302288, 31.229200, 30.477495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510204, 31.311510, 30.564653>,  <38.856731, 31.448692, 30.709917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510204, 31.311510, 30.564653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494228, -0.693889, -0.523695,
		-0.072387, -0.633166, 0.770624,
		-0.866313, -0.342955, -0.363157,
		38.250309, 31.208624, 30.455706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914371, 30.720644, 30.706923>,  <38.856731, 31.448692, 30.709917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914371, 30.720644, 30.706923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652485, 30.845196, 30.431419>,  <38.495354, 30.919926, 30.266117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652485, 30.845196, 30.431419>,  <38.914371, 30.720644, 30.706923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652485, 30.845196, 30.431419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430184, -0.595745, -0.678255,
		-0.621522, -0.740356, 0.256091,
		-0.654715, 0.311384, -0.688758,
		38.456070, 30.938608, 30.224792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815327, 30.046467, 30.411211>,  <38.914371, 30.720644, 30.706923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815327, 30.046467, 30.411211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685471, 30.328819, 30.159388>,  <38.607559, 30.498230, 30.008293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685471, 30.328819, 30.159388>,  <38.815327, 30.046467, 30.411211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685471, 30.328819, 30.159388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454369, -0.467389, -0.758351,
		-0.829554, -0.532239, -0.169000,
		-0.324636, 0.705881, -0.629558,
		38.588081, 30.540585, 29.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732700, 29.625387, 29.738287>,  <38.815327, 30.046467, 30.411211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732700, 29.625387, 29.738287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717693, 30.009302, 29.627005>,  <38.708691, 30.239651, 29.560236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.717693, 30.009302, 29.627005>,  <38.732700, 29.625387, 29.738287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717693, 30.009302, 29.627005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387144, -0.242699, -0.889504,
		-0.921256, -0.141076, -0.362471,
		-0.037517, 0.959789, -0.278204,
		38.706440, 30.297239, 29.543543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481941, 29.724091, 29.040537>,  <38.732700, 29.625387, 29.738287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481941, 29.724091, 29.040537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705833, 30.045967, 29.119707>,  <38.840168, 30.239094, 29.167210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705833, 30.045967, 29.119707>,  <38.481941, 29.724091, 29.040537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705833, 30.045967, 29.119707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513988, -0.149771, -0.844621,
		-0.650017, 0.574489, -0.497433,
		0.559726, 0.804693, 0.197927,
		38.873753, 30.287374, 29.179085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415092, 30.100637, 28.426504>,  <38.481941, 29.724091, 29.040537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415092, 30.100637, 28.426504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736893, 30.257296, 28.605116>,  <38.929974, 30.351290, 28.712284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736893, 30.257296, 28.605116>,  <38.415092, 30.100637, 28.426504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736893, 30.257296, 28.605116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518207, -0.095463, -0.849911,
		-0.290237, 0.915151, -0.279753,
		0.804502, 0.391646, 0.446530,
		38.978245, 30.374790, 28.739075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635502, 30.802032, 28.161667>,  <38.415092, 30.100637, 28.426504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635502, 30.802032, 28.161667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951797, 30.621645, 28.327248>,  <39.141575, 30.513412, 28.426596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951797, 30.621645, 28.327248>,  <38.635502, 30.802032, 28.161667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951797, 30.621645, 28.327248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484030, 0.046624, -0.873809,
		0.374760, 0.891322, 0.255149,
		0.790740, -0.450968, 0.413953,
		39.189018, 30.486355, 28.451433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263859, 31.196644, 27.948305>,  <38.635502, 30.802032, 28.161667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263859, 31.196644, 27.948305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392632, 30.830059, 28.043348>,  <39.469894, 30.610107, 28.100374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392632, 30.830059, 28.043348>,  <39.263859, 31.196644, 27.948305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392632, 30.830059, 28.043348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521310, -0.037909, -0.852525,
		0.790314, 0.398321, 0.465557,
		0.321930, -0.916462, 0.237609,
		39.489212, 30.555120, 28.114632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007618, 31.227837, 27.796785>,  <39.263859, 31.196644, 27.948305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007618, 31.227837, 27.796785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898998, 30.843397, 27.776608>,  <39.833824, 30.612734, 27.764500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898998, 30.843397, 27.776608>,  <40.007618, 31.227837, 27.796785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898998, 30.843397, 27.776608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428891, -0.073924, -0.900326,
		0.861575, -0.266122, 0.432282,
		-0.271553, -0.961100, -0.050446,
		39.817532, 30.555067, 27.761473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622681, 30.822363, 27.496141>,  <40.007618, 31.227837, 27.796785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622681, 30.822363, 27.496141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290043, 30.609291, 27.433277>,  <40.090458, 30.481447, 27.395559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290043, 30.609291, 27.433277>,  <40.622681, 30.822363, 27.496141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290043, 30.609291, 27.433277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320193, -0.228629, -0.919350,
		0.453787, -0.814850, 0.360688,
		-0.831597, -0.532679, -0.157161,
		40.040565, 30.449488, 27.386129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253578, 30.482100, 27.832209>,  <40.622681, 30.822363, 27.496141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253578, 30.482100, 27.832209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596439, 30.672092, 27.911886>,  <41.802158, 30.786087, 27.959692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596439, 30.672092, 27.911886>,  <41.253578, 30.482100, 27.832209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596439, 30.672092, 27.911886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439571, 0.473048, 0.763546,
		0.268442, -0.742037, 0.614264,
		0.857155, 0.474981, 0.199192,
		41.853584, 30.814587, 27.971643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421597, 30.375692, 28.586206>,  <41.253578, 30.482100, 27.832209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421597, 30.375692, 28.586206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618805, 30.702160, 28.465673>,  <41.737129, 30.898041, 28.393354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618805, 30.702160, 28.465673>,  <41.421597, 30.375692, 28.586206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618805, 30.702160, 28.465673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356600, 0.505488, 0.785696,
		0.793581, -0.279907, 0.540260,
		0.493017, 0.816170, -0.301331,
		41.766708, 30.947010, 28.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873493, 30.634451, 29.123077>,  <41.421597, 30.375692, 28.586206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873493, 30.634451, 29.123077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.843571, 30.966208, 28.901621>,  <41.825619, 31.165260, 28.768747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.843571, 30.966208, 28.901621>,  <41.873493, 30.634451, 29.123077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843571, 30.966208, 28.901621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115845, 0.544208, 0.830914,
		0.990447, 0.126292, 0.055372,
		-0.074804, 0.829390, -0.553639,
		41.821129, 31.215025, 28.735529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256184, 31.080191, 29.456985>,  <41.873493, 30.634451, 29.123077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256184, 31.080191, 29.456985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015202, 31.312433, 29.237915>,  <41.870613, 31.451778, 29.106472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015202, 31.312433, 29.237915>,  <42.256184, 31.080191, 29.456985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015202, 31.312433, 29.237915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254903, 0.510283, 0.821362,
		0.756358, 0.634434, -0.159422,
		-0.602451, 0.580607, -0.547675,
		41.834465, 31.486616, 29.073612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305779, 31.677092, 29.760250>,  <42.256184, 31.080191, 29.456985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305779, 31.677092, 29.760250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.976414, 31.756052, 29.547447>,  <41.778797, 31.803429, 29.419765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.976414, 31.756052, 29.547447>,  <42.305779, 31.677092, 29.760250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976414, 31.756052, 29.547447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374828, 0.514683, 0.771106,
		0.426033, 0.834346, -0.349802,
		-0.823407, 0.197401, -0.532009,
		41.729393, 31.815273, 29.387844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231049, 32.367378, 29.700739>,  <42.305779, 31.677092, 29.760250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231049, 32.367378, 29.700739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863541, 32.224617, 29.633228>,  <41.643036, 32.138962, 29.592722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863541, 32.224617, 29.633228>,  <42.231049, 32.367378, 29.700739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863541, 32.224617, 29.633228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359155, 0.578077, 0.732690,
		-0.163933, 0.733789, -0.659303,
		-0.918768, -0.356904, -0.168778,
		41.587910, 32.117546, 29.582596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739838, 32.959061, 29.823559>,  <42.231049, 32.367378, 29.700739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739838, 32.959061, 29.823559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.478321, 32.656452, 29.817360>,  <41.321411, 32.474888, 29.813641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.478321, 32.656452, 29.817360>,  <41.739838, 32.959061, 29.823559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478321, 32.656452, 29.817360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527084, 0.440626, 0.726657,
		-0.542902, 0.483248, -0.686825,
		-0.653789, -0.756518, -0.015496,
		41.282185, 32.429497, 29.812712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014484, 33.247345, 29.927528>,  <41.739838, 32.959061, 29.823559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014484, 33.247345, 29.927528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032471, 32.867729, 30.052296>,  <41.043262, 32.639957, 30.127157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032471, 32.867729, 30.052296>,  <41.014484, 33.247345, 29.927528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032471, 32.867729, 30.052296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542354, 0.239025, 0.805431,
		-0.838946, -0.205385, -0.503971,
		0.044961, -0.949044, 0.311920,
		41.045959, 32.583015, 30.145872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363945, 33.182705, 30.273569>,  <41.014484, 33.247345, 29.927528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363945, 33.182705, 30.273569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596249, 32.883244, 30.401466>,  <40.735630, 32.703568, 30.478205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596249, 32.883244, 30.401466>,  <40.363945, 33.182705, 30.273569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596249, 32.883244, 30.401466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307574, 0.161869, 0.937655,
		-0.753736, -0.642895, -0.136260,
		0.580758, -0.748655, 0.319745,
		40.770477, 32.658646, 30.497389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935745, 32.800686, 30.573042>,  <40.363945, 33.182705, 30.273569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935745, 32.800686, 30.573042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273457, 32.687290, 30.754957>,  <40.476082, 32.619255, 30.864105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.273457, 32.687290, 30.754957>,  <39.935745, 32.800686, 30.573042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273457, 32.687290, 30.754957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462847, 0.042032, 0.885441,
		-0.270126, -0.958055, -0.095724,
		0.844277, -0.283486, 0.454787,
		40.526741, 32.602245, 30.891394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722420, 32.249500, 31.024229>,  <39.935745, 32.800686, 30.573042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722420, 32.249500, 31.024229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075710, 32.357487, 31.177605>,  <40.287685, 32.422279, 31.269630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075710, 32.357487, 31.177605>,  <39.722420, 32.249500, 31.024229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075710, 32.357487, 31.177605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408828, 0.042762, 0.911609,
		0.229713, -0.961918, 0.148141,
		0.883228, 0.269973, 0.383436,
		40.340679, 32.438477, 31.292635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872456, 31.833105, 31.665672>,  <39.722420, 32.249500, 31.024229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872456, 31.833105, 31.665672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090794, 32.168171, 31.673384>,  <40.221794, 32.369209, 31.678011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090794, 32.168171, 31.673384>,  <39.872456, 31.833105, 31.665672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090794, 32.168171, 31.673384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368953, 0.219632, 0.903125,
		0.752283, -0.500078, 0.428944,
		0.545843, 0.837666, 0.019280,
		40.254547, 32.419472, 31.679169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082710, 31.795063, 32.333076>,  <39.872456, 31.833105, 31.665672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082710, 31.795063, 32.333076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156803, 32.173275, 32.225994>,  <40.201260, 32.400200, 32.161743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156803, 32.173275, 32.225994>,  <40.082710, 31.795063, 32.333076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156803, 32.173275, 32.225994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257205, 0.309572, 0.915429,
		0.948439, -0.100707, 0.300536,
		0.185228, 0.945528, -0.267707,
		40.212372, 32.456932, 32.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367474, 32.076290, 32.879898>,  <40.082710, 31.795063, 32.333076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367474, 32.076290, 32.879898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213097, 32.390499, 32.686405>,  <40.120468, 32.579025, 32.570309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213097, 32.390499, 32.686405>,  <40.367474, 32.076290, 32.879898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213097, 32.390499, 32.686405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274479, 0.402833, 0.873148,
		0.880742, 0.469763, 0.060138,
		-0.385946, 0.785525, -0.483732,
		40.097313, 32.626156, 32.541286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.737053, 32.175358, 26.762314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.464748, 32.243656, 26.477383>,  <41.301365, 32.284634, 26.306423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.464748, 32.243656, 26.477383>,  <41.737053, 32.175358, 26.762314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464748, 32.243656, 26.477383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626130, -0.369060, -0.686845,
		-0.380174, -0.913585, 0.144326,
		-0.680756, 0.170754, -0.712330,
		41.260521, 32.294880, 26.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678570, 31.590685, 26.242867>,  <41.737053, 32.175358, 26.762314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678570, 31.590685, 26.242867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550396, 31.904585, 26.030645>,  <41.473492, 32.092926, 25.903313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550396, 31.904585, 26.030645>,  <41.678570, 31.590685, 26.242867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550396, 31.904585, 26.030645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457657, -0.362129, -0.812043,
		-0.829380, -0.503018, -0.243108,
		-0.320435, 0.784752, -0.530552,
		41.454266, 32.140011, 25.871479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398949, 31.291988, 25.658625>,  <41.678570, 31.590685, 26.242867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398949, 31.291988, 25.658625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.496311, 31.669910, 25.570902>,  <41.554729, 31.896664, 25.518269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.496311, 31.669910, 25.570902>,  <41.398949, 31.291988, 25.658625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496311, 31.669910, 25.570902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469921, -0.312672, -0.825476,
		-0.848485, 0.097870, -0.520091,
		0.243407, 0.944806, -0.219306,
		41.569332, 31.953352, 25.505110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233055, 31.423948, 24.937267>,  <41.398949, 31.291988, 25.658625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233055, 31.423948, 24.937267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.512703, 31.696047, 25.025356>,  <41.680492, 31.859306, 25.078209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.512703, 31.696047, 25.025356>,  <41.233055, 31.423948, 24.937267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512703, 31.696047, 25.025356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497868, -0.242078, -0.832782,
		-0.513188, 0.691854, -0.507915,
		0.699118, 0.680248, 0.220221,
		41.722439, 31.900122, 25.091423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526154, 31.648865, 24.285030>,  <41.233055, 31.423948, 24.937267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526154, 31.648865, 24.285030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.803551, 31.795206, 24.533291>,  <41.969990, 31.883011, 24.682247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.803551, 31.795206, 24.533291>,  <41.526154, 31.648865, 24.285030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803551, 31.795206, 24.533291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701942, -0.149060, -0.696461,
		-0.162290, 0.918657, -0.360182,
		0.693498, 0.365855, 0.620654,
		42.011600, 31.904963, 24.719486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891560, 31.830235, 23.767399>,  <41.526154, 31.648865, 24.285030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891560, 31.830235, 23.767399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118965, 31.880720, 24.092573>,  <42.255409, 31.911011, 24.287678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.118965, 31.880720, 24.092573>,  <41.891560, 31.830235, 23.767399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118965, 31.880720, 24.092573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822674, -0.088484, -0.561586,
		0.001052, 0.988049, -0.154137,
		0.568513, 0.126213, 0.812935,
		42.289520, 31.918585, 24.336454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285641, 32.435448, 23.683931>,  <41.891560, 31.830235, 23.767399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285641, 32.435448, 23.683931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474785, 32.212654, 23.957039>,  <42.588272, 32.078979, 24.120903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474785, 32.212654, 23.957039>,  <42.285641, 32.435448, 23.683931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474785, 32.212654, 23.957039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771133, -0.113320, -0.626508,
		0.426325, 0.822757, 0.375922,
		0.472864, -0.556982, 0.682767,
		42.616646, 32.045559, 24.161869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889656, 32.779888, 23.830526>,  <42.285641, 32.435448, 23.683931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889656, 32.779888, 23.830526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.953667, 32.395123, 23.919167>,  <42.992073, 32.164261, 23.972351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.953667, 32.395123, 23.919167>,  <42.889656, 32.779888, 23.830526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953667, 32.395123, 23.919167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773503, -0.017273, -0.633557,
		0.613258, 0.272792, 0.741282,
		0.160026, -0.961918, 0.221598,
		43.001675, 32.106548, 23.985645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673595, 32.697605, 23.945984>,  <42.889656, 32.779888, 23.830526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673595, 32.697605, 23.945984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511013, 32.340240, 23.869442>,  <43.413464, 32.125824, 23.823517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511013, 32.340240, 23.869442>,  <43.673595, 32.697605, 23.945984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511013, 32.340240, 23.869442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760593, -0.214808, -0.612663,
		0.506252, -0.394564, 0.766830,
		-0.406456, -0.893407, -0.191356,
		43.389076, 32.072220, 23.812035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218861, 32.299324, 23.858593>,  <43.673595, 32.697605, 23.945984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218861, 32.299324, 23.858593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941227, 32.078300, 23.674017>,  <43.774647, 31.945686, 23.563271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941227, 32.078300, 23.674017>,  <44.218861, 32.299324, 23.858593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941227, 32.078300, 23.674017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698922, -0.363638, -0.615854,
		0.172498, -0.749965, 0.638590,
		-0.694084, -0.552558, -0.461440,
		43.733002, 31.912533, 23.535585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582844, 31.572681, 23.735699>,  <44.218861, 32.299324, 23.858593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582844, 31.572681, 23.735699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.258808, 31.542223, 23.503160>,  <44.064388, 31.523949, 23.363638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.258808, 31.542223, 23.503160>,  <44.582844, 31.572681, 23.735699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258808, 31.542223, 23.503160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536544, -0.496043, -0.682688,
		-0.236388, -0.864953, 0.442693,
		-0.810087, -0.076145, -0.581343,
		44.015781, 31.519379, 23.328758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566570, 30.924397, 23.496264>,  <44.582844, 31.572681, 23.735699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566570, 30.924397, 23.496264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343182, 31.134562, 23.239498>,  <44.209148, 31.260660, 23.085440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.343182, 31.134562, 23.239498>,  <44.566570, 30.924397, 23.496264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343182, 31.134562, 23.239498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591861, -0.289813, -0.752137,
		-0.581218, -0.799968, -0.149120,
		-0.558468, 0.525414, -0.641914,
		44.175640, 31.292185, 23.046925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498920, 30.484632, 23.016771>,  <44.566570, 30.924397, 23.496264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498920, 30.484632, 23.016771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.448406, 30.858456, 22.883717>,  <44.418098, 31.082750, 22.803883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.448406, 30.858456, 22.883717>,  <44.498920, 30.484632, 23.016771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448406, 30.858456, 22.883717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598337, -0.195696, -0.776979,
		-0.791230, -0.297154, -0.534467,
		-0.126289, 0.934560, -0.332639,
		44.410519, 31.138824, 22.783924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434456, 29.701052, 22.966322>,  <44.498920, 30.484632, 23.016771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434456, 29.701052, 22.966322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.120293, 29.454655, 22.942007>,  <43.931797, 29.306816, 22.927418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.120293, 29.454655, 22.942007>,  <44.434456, 29.701052, 22.966322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120293, 29.454655, 22.942007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283129, 0.270187, 0.920237,
		-0.550435, 0.739968, -0.386611,
		-0.785404, -0.615992, -0.060786,
		43.884670, 29.269857, 22.923771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841507, 30.164299, 23.085281>,  <44.434456, 29.701052, 22.966322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841507, 30.164299, 23.085281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892059, 29.785706, 23.204073>,  <43.922390, 29.558550, 23.275347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892059, 29.785706, 23.204073>,  <43.841507, 30.164299, 23.085281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892059, 29.785706, 23.204073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003135, 0.299757, 0.954010,
		-0.991977, -0.119639, 0.040852,
		0.126383, -0.946484, 0.296977,
		43.929974, 29.501760, 23.293165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482738, 30.092772, 23.743044>,  <43.841507, 30.164299, 23.085281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482738, 30.092772, 23.743044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.719242, 29.770395, 23.754829>,  <43.861145, 29.576969, 23.761902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.719242, 29.770395, 23.754829>,  <43.482738, 30.092772, 23.743044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719242, 29.770395, 23.754829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072464, 0.089479, 0.993349,
		-0.803218, -0.585193, 0.111307,
		0.591261, -0.805942, 0.029465,
		43.896622, 29.528612, 23.763668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151508, 29.666882, 24.128872>,  <43.482738, 30.092772, 23.743044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151508, 29.666882, 24.128872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.529465, 29.536081, 24.135149>,  <43.756241, 29.457602, 24.138916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.529465, 29.536081, 24.135149>,  <43.151508, 29.666882, 24.128872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529465, 29.536081, 24.135149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011636, 0.081455, 0.996609,
		-0.327172, -0.941507, 0.080771,
		0.944893, -0.327002, 0.015695,
		43.812931, 29.437981, 24.139858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138683, 29.102631, 24.561256>,  <43.151508, 29.666882, 24.128872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138683, 29.102631, 24.561256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.522533, 29.215000, 24.555677>,  <43.752846, 29.282421, 24.552330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.522533, 29.215000, 24.555677>,  <43.138683, 29.102631, 24.561256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522533, 29.215000, 24.555677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031859, 0.157826, 0.986953,
		0.279459, -0.946664, 0.160404,
		0.959629, 0.280924, -0.013946,
		43.810421, 29.299276, 24.551493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478863, 28.714594, 25.007761>,  <43.138683, 29.102631, 24.561256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478863, 28.714594, 25.007761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.712345, 29.037102, 24.969364>,  <43.852436, 29.230606, 24.946325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.712345, 29.037102, 24.969364>,  <43.478863, 28.714594, 25.007761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712345, 29.037102, 24.969364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164778, -0.001862, 0.986329,
		0.795070, -0.591543, -0.133943,
		0.583706, 0.806271, -0.095993,
		43.887455, 29.278982, 24.940567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832832, 28.647293, 25.592823>,  <43.478863, 28.714594, 25.007761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832832, 28.647293, 25.592823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947132, 29.016531, 25.489870>,  <44.015713, 29.238073, 25.428099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947132, 29.016531, 25.489870>,  <43.832832, 28.647293, 25.592823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947132, 29.016531, 25.489870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073711, 0.288957, 0.954500,
		0.955466, -0.253773, 0.150610,
		0.285746, 0.923094, -0.257383,
		44.032856, 29.293459, 25.412655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189865, 28.835144, 26.137695>,  <43.832832, 28.647293, 25.592823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189865, 28.835144, 26.137695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.098885, 29.171329, 25.940966>,  <44.044296, 29.373041, 25.822927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.098885, 29.171329, 25.940966>,  <44.189865, 28.835144, 26.137695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098885, 29.171329, 25.940966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327116, 0.409767, 0.851520,
		0.917203, 0.354562, 0.181726,
		-0.227451, 0.840462, -0.491822,
		44.030647, 29.423468, 25.793419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508766, 29.320692, 26.505203>,  <44.189865, 28.835144, 26.137695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508766, 29.320692, 26.505203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.194794, 29.482090, 26.317127>,  <44.006413, 29.578928, 26.204281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.194794, 29.482090, 26.317127>,  <44.508766, 29.320692, 26.505203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194794, 29.482090, 26.317127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374668, 0.295299, 0.878875,
		0.493467, 0.866021, -0.080613,
		-0.784929, 0.403493, -0.470191,
		43.959316, 29.603138, 26.176069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351696, 29.876118, 26.867323>,  <44.508766, 29.320692, 26.505203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351696, 29.876118, 26.867323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012093, 29.842209, 26.658709>,  <43.808331, 29.821863, 26.533539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012093, 29.842209, 26.658709>,  <44.351696, 29.876118, 26.867323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012093, 29.842209, 26.658709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467342, 0.581013, 0.666344,
		0.246532, 0.809467, -0.532902,
		-0.849007, -0.084772, -0.521537,
		43.757389, 29.816778, 26.502247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998154, 30.595526, 26.605583>,  <44.351696, 29.876118, 26.867323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998154, 30.595526, 26.605583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718472, 30.316843, 26.669712>,  <43.550663, 30.149633, 26.708189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718472, 30.316843, 26.669712>,  <43.998154, 30.595526, 26.605583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718472, 30.316843, 26.669712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538588, 0.660810, 0.522736,
		-0.470138, 0.279154, -0.837283,
		-0.699209, -0.696708, 0.160323,
		43.508709, 30.107830, 26.717810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385651, 30.945055, 26.432816>,  <43.998154, 30.595526, 26.605583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385651, 30.945055, 26.432816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.224457, 30.634768, 26.627079>,  <43.127739, 30.448595, 26.743637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.224457, 30.634768, 26.627079>,  <43.385651, 30.945055, 26.432816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224457, 30.634768, 26.627079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622046, 0.621395, 0.476369,
		-0.671313, -0.110131, -0.732946,
		-0.402986, -0.775719, 0.485657,
		43.103561, 30.402052, 26.772776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690186, 31.176857, 26.580746>,  <43.385651, 30.945055, 26.432816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690186, 31.176857, 26.580746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.732582, 30.846481, 26.802229>,  <42.758018, 30.648256, 26.935120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.732582, 30.846481, 26.802229>,  <42.690186, 31.176857, 26.580746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732582, 30.846481, 26.802229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710656, 0.326569, 0.623155,
		-0.695511, -0.459545, -0.552344,
		0.105989, -0.825937, 0.553710,
		42.764378, 30.598700, 26.968342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044647, 30.883945, 26.699980>,  <42.690186, 31.176857, 26.580746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044647, 30.883945, 26.699980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260349, 30.748184, 27.008268>,  <42.389771, 30.666727, 27.193241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260349, 30.748184, 27.008268>,  <42.044647, 30.883945, 26.699980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260349, 30.748184, 27.008268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763609, 0.188850, 0.617444,
		-0.355112, -0.921489, -0.157332,
		0.539255, -0.339401, 0.770720,
		42.422127, 30.646364, 27.239485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517265, 30.565216, 27.128357>,  <42.044647, 30.883945, 26.699980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517265, 30.565216, 27.128357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841637, 30.650644, 27.346268>,  <42.036259, 30.701902, 27.477015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841637, 30.650644, 27.346268>,  <41.517265, 30.565216, 27.128357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841637, 30.650644, 27.346268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584557, 0.253988, 0.770574,
		0.026206, -0.943333, 0.330811,
		0.810929, 0.213571, 0.544776,
		42.084915, 30.714716, 27.509701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850677, 30.183161, 27.282780>,  <41.517265, 30.565216, 27.128357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850677, 30.183161, 27.282780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479378, 30.191614, 27.134235>,  <40.256599, 30.196686, 27.045109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479378, 30.191614, 27.134235>,  <40.850677, 30.183161, 27.282780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479378, 30.191614, 27.134235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348697, -0.298095, -0.888566,
		-0.129476, -0.954302, 0.269338,
		-0.928249, 0.021131, -0.371359,
		40.200905, 30.197954, 27.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936317, 29.633898, 26.927664>,  <40.850677, 30.183161, 27.282780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936317, 29.633898, 26.927664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634388, 29.848829, 26.777187>,  <40.453232, 29.977789, 26.686901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634388, 29.848829, 26.777187>,  <40.936317, 29.633898, 26.927664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634388, 29.848829, 26.777187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301091, -0.225691, -0.926503,
		-0.582739, -0.812614, 0.008572,
		-0.754824, 0.537328, -0.376190,
		40.407940, 30.010027, 26.664330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798187, 29.198025, 26.342628>,  <40.936317, 29.633898, 26.927664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798187, 29.198025, 26.342628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634338, 29.553391, 26.259756>,  <40.536030, 29.766611, 26.210032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634338, 29.553391, 26.259756>,  <40.798187, 29.198025, 26.342628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634338, 29.553391, 26.259756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272898, -0.097375, -0.957102,
		-0.870480, -0.448591, -0.202561,
		-0.409623, 0.888416, -0.207183,
		40.511452, 29.819916, 26.197601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227524, 29.063549, 25.923674>,  <40.798187, 29.198025, 26.342628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227524, 29.063549, 25.923674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291290, 29.445963, 25.825222>,  <40.329552, 29.675411, 25.766151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291290, 29.445963, 25.825222>,  <40.227524, 29.063549, 25.923674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291290, 29.445963, 25.825222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023428, -0.245583, -0.969092,
		-0.986933, 0.160259, -0.016753,
		0.159420, 0.956037, -0.246128,
		40.339115, 29.732775, 25.751383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831581, 29.099012, 25.432217>,  <40.227524, 29.063549, 25.923674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831581, 29.099012, 25.432217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082104, 29.406509, 25.380411>,  <40.232418, 29.591007, 25.349329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082104, 29.406509, 25.380411>,  <39.831581, 29.099012, 25.432217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082104, 29.406509, 25.380411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012988, -0.155819, -0.987700,
		-0.779469, 0.620285, -0.087606,
		0.626306, 0.768744, -0.129512,
		40.269997, 29.637133, 25.341557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650940, 29.283722, 24.859468>,  <39.831581, 29.099012, 25.432217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650940, 29.283722, 24.859468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009201, 29.460875, 24.875774>,  <40.224159, 29.567165, 24.885557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009201, 29.460875, 24.875774>,  <39.650940, 29.283722, 24.859468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009201, 29.460875, 24.875774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089160, -0.089004, -0.992033,
		-0.435724, 0.892152, -0.119204,
		0.895654, 0.442880, 0.040763,
		40.277897, 29.593739, 24.888002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670807, 29.787067, 24.296146>,  <39.650940, 29.283722, 24.859468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670807, 29.787067, 24.296146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052826, 29.691528, 24.366381>,  <40.282040, 29.634205, 24.408522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052826, 29.691528, 24.366381>,  <39.670807, 29.787067, 24.296146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052826, 29.691528, 24.366381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157295, -0.093754, -0.983091,
		0.251272, 0.966520, -0.051971,
		0.955050, -0.238849, 0.175586,
		40.339340, 29.619873, 24.419056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443214, 30.348858, 24.040754>,  <39.670807, 29.787067, 24.296146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443214, 30.348858, 24.040754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243420, 30.571516, 23.775227>,  <39.123543, 30.705111, 23.615910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243420, 30.571516, 23.775227>,  <39.443214, 30.348858, 24.040754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243420, 30.571516, 23.775227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465414, 0.473865, 0.747557,
		0.730687, 0.682346, 0.022382,
		-0.499486, 0.556647, -0.663821,
		39.093575, 30.738510, 23.576080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477695, 31.148293, 24.180628>,  <39.443214, 30.348858, 24.040754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477695, 31.148293, 24.180628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142860, 31.105228, 23.966082>,  <38.941959, 31.079390, 23.837355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142860, 31.105228, 23.966082>,  <39.477695, 31.148293, 24.180628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142860, 31.105228, 23.966082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521271, 0.454474, 0.722309,
		0.165999, 0.884230, -0.436557,
		-0.837091, -0.107662, -0.536365,
		38.891731, 31.072929, 23.805172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196171, 31.855385, 24.220173>,  <39.477695, 31.148293, 24.180628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196171, 31.855385, 24.220173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903561, 31.598606, 24.128283>,  <38.727993, 31.444540, 24.073149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903561, 31.598606, 24.128283>,  <39.196171, 31.855385, 24.220173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903561, 31.598606, 24.128283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560300, 0.374017, 0.739037,
		-0.388499, 0.669341, -0.633285,
		-0.731527, -0.641945, -0.229727,
		38.684101, 31.406023, 24.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547749, 32.231079, 24.310696>,  <39.196171, 31.855385, 24.220173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547749, 32.231079, 24.310696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480461, 31.837889, 24.340265>,  <38.440086, 31.601974, 24.358007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480461, 31.837889, 24.340265>,  <38.547749, 32.231079, 24.310696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480461, 31.837889, 24.340265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675379, 0.169559, 0.717714,
		-0.718028, 0.070808, -0.692403,
		-0.168223, -0.982973, 0.073926,
		38.429993, 31.542997, 24.362444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725197, 32.177624, 24.396738>,  <38.547749, 32.231079, 24.310696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725197, 32.177624, 24.396738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892132, 31.847950, 24.549868>,  <37.992294, 31.650146, 24.641745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892132, 31.847950, 24.549868>,  <37.725197, 32.177624, 24.396738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892132, 31.847950, 24.549868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566847, 0.093169, 0.818538,
		-0.710292, -0.558607, -0.428303,
		0.417336, -0.824183, 0.382822,
		38.017334, 31.600695, 24.664715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143620, 31.820890, 24.689289>,  <37.725197, 32.177624, 24.396738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143620, 31.820890, 24.689289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481365, 31.693939, 24.861948>,  <37.684013, 31.617769, 24.965544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481365, 31.693939, 24.861948>,  <37.143620, 31.820890, 24.689289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481365, 31.693939, 24.861948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502006, -0.187184, 0.844365,
		-0.187184, -0.929642, -0.317376,
		-0.844365, 0.317376, -0.431648,
		37.734676, 31.598726, 24.991442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870060, 31.223751, 25.073748>,  <37.143620, 31.820890, 24.689289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870060, 31.223751, 25.073748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231525, 31.309217, 25.222198>,  <37.448406, 31.360497, 25.311268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231525, 31.309217, 25.222198>,  <36.870060, 31.223751, 25.073748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231525, 31.309217, 25.222198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333617, -0.192098, 0.922929,
		0.268492, -0.957833, -0.102310,
		0.903666, 0.213667, 0.371126,
		37.502625, 31.373318, 25.333536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.107281, 33.502811, 20.752802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197926, 33.314705, 21.093975>,  <43.252312, 33.201839, 21.298679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197926, 33.314705, 21.093975>,  <43.107281, 33.502811, 20.752802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197926, 33.314705, 21.093975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625176, 0.601275, 0.497618,
		-0.746860, -0.646001, -0.157741,
		0.226616, -0.470267, 0.852933,
		43.265911, 33.173626, 21.349855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500225, 33.336411, 21.019701>,  <43.107281, 33.502811, 20.752802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500225, 33.336411, 21.019701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746094, 33.355389, 21.334642>,  <42.893616, 33.366776, 21.523607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746094, 33.355389, 21.334642>,  <42.500225, 33.336411, 21.019701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746094, 33.355389, 21.334642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709726, 0.468833, 0.525819,
		-0.344192, -0.882012, 0.321849,
		0.614672, 0.047442, 0.787355,
		42.930496, 33.369621, 21.570848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074238, 33.282345, 21.586691>,  <42.500225, 33.336411, 21.019701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074238, 33.282345, 21.586691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408833, 33.393932, 21.775358>,  <42.609589, 33.460884, 21.888559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408833, 33.393932, 21.775358>,  <42.074238, 33.282345, 21.586691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408833, 33.393932, 21.775358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546404, 0.359127, 0.756618,
		0.041683, -0.890620, 0.452834,
		0.836483, 0.278969, 0.471669,
		42.659779, 33.477623, 21.916859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157795, 33.012272, 22.216240>,  <42.074238, 33.282345, 21.586691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157795, 33.012272, 22.216240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359715, 33.357075, 22.234686>,  <42.480865, 33.563957, 22.245752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.359715, 33.357075, 22.234686>,  <42.157795, 33.012272, 22.216240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359715, 33.357075, 22.234686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536283, 0.271298, 0.799248,
		0.676444, -0.428191, 0.599230,
		0.504801, 0.862003, 0.046114,
		42.511154, 33.615677, 22.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204651, 33.227127, 22.971981>,  <42.157795, 33.012272, 22.216240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204651, 33.227127, 22.971981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.330204, 33.575890, 22.821650>,  <42.405537, 33.785149, 22.731451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.330204, 33.575890, 22.821650>,  <42.204651, 33.227127, 22.971981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330204, 33.575890, 22.821650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449385, 0.485119, 0.750141,
		0.836379, -0.066565, 0.544095,
		0.313884, 0.871911, -0.375830,
		42.424370, 33.837463, 22.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609673, 33.698322, 23.516609>,  <42.204651, 33.227127, 22.971981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609673, 33.698322, 23.516609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.479198, 33.960724, 23.244354>,  <42.400913, 34.118164, 23.081001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.479198, 33.960724, 23.244354>,  <42.609673, 33.698322, 23.516609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479198, 33.960724, 23.244354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378824, 0.568961, 0.729915,
		0.866079, 0.495931, 0.062920,
		-0.326189, 0.656000, -0.680636,
		42.381340, 34.157524, 23.040163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733559, 34.424934, 23.801346>,  <42.609673, 33.698322, 23.516609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733559, 34.424934, 23.801346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.440079, 34.432659, 23.529665>,  <42.263992, 34.437294, 23.366657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.440079, 34.432659, 23.529665>,  <42.733559, 34.424934, 23.801346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440079, 34.432659, 23.529665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529078, 0.610959, 0.588902,
		0.426336, 0.791427, -0.438043,
		-0.733699, 0.019311, -0.679201,
		42.219971, 34.438454, 23.325905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607430, 35.074848, 23.771458>,  <42.733559, 34.424934, 23.801346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607430, 35.074848, 23.771458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286621, 34.893711, 23.615669>,  <42.094135, 34.785027, 23.522196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286621, 34.893711, 23.615669>,  <42.607430, 35.074848, 23.771458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286621, 34.893711, 23.615669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579755, 0.433371, 0.689981,
		-0.143670, 0.779178, -0.610115,
		-0.802024, -0.452847, -0.389470,
		42.046013, 34.757858, 23.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114216, 35.525372, 23.892653>,  <42.607430, 35.074848, 23.771458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114216, 35.525372, 23.892653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.904415, 35.202271, 23.784998>,  <41.778534, 35.008411, 23.720406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.904415, 35.202271, 23.784998>,  <42.114216, 35.525372, 23.892653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904415, 35.202271, 23.784998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814211, 0.383450, 0.435920,
		-0.248915, 0.447776, -0.858801,
		-0.524502, -0.807752, -0.269137,
		41.747063, 34.959946, 23.704256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498924, 35.848457, 23.643747>,  <42.114216, 35.525372, 23.892653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498924, 35.848457, 23.643747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.417850, 35.479904, 23.776400>,  <41.369205, 35.258774, 23.855991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.417850, 35.479904, 23.776400>,  <41.498924, 35.848457, 23.643747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417850, 35.479904, 23.776400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750376, 0.363723, 0.551944,
		-0.629171, -0.136979, -0.765101,
		-0.202680, -0.921381, 0.331630,
		41.357048, 35.203491, 23.875889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776127, 35.780869, 23.458714>,  <41.498924, 35.848457, 23.643747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776127, 35.780869, 23.458714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858841, 35.522442, 23.752609>,  <40.908470, 35.367386, 23.928947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858841, 35.522442, 23.752609>,  <40.776127, 35.780869, 23.458714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858841, 35.522442, 23.752609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883482, 0.199348, 0.423934,
		-0.420357, -0.736793, -0.529563,
		0.206785, -0.646062, 0.734740,
		40.920876, 35.328625, 23.973032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151707, 35.516087, 23.655457>,  <40.776127, 35.780869, 23.458714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151707, 35.516087, 23.655457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356739, 35.410053, 23.982136>,  <40.479759, 35.346436, 24.178143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356739, 35.410053, 23.982136>,  <40.151707, 35.516087, 23.655457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356739, 35.410053, 23.982136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778943, 0.256633, 0.572178,
		-0.361266, -0.929446, -0.074940,
		0.512576, -0.265082, 0.816698,
		40.510513, 35.330528, 24.227146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748714, 34.934368, 23.512587>,  <40.151707, 35.516087, 23.655457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748714, 34.934368, 23.512587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412579, 34.793961, 23.347368>,  <39.210896, 34.709717, 23.248238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412579, 34.793961, 23.347368>,  <39.748714, 34.934368, 23.512587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412579, 34.793961, 23.347368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542048, -0.547541, -0.637482,
		-0.002388, -0.759594, 0.650394,
		-0.840344, -0.351022, -0.413044,
		39.160477, 34.688656, 23.223455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926590, 34.200954, 23.378897>,  <39.748714, 34.934368, 23.512587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926590, 34.200954, 23.378897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.606651, 34.289280, 23.155653>,  <39.414688, 34.342274, 23.021708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.606651, 34.289280, 23.155653>,  <39.926590, 34.200954, 23.378897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606651, 34.289280, 23.155653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467628, -0.353648, -0.810097,
		-0.376255, -0.908941, 0.179605,
		-0.799847, 0.220815, -0.558109,
		39.366695, 34.355522, 22.988220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714790, 33.573849, 23.056412>,  <39.926590, 34.200954, 23.378897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714790, 33.573849, 23.056412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611469, 33.899712, 22.848711>,  <39.549477, 34.095230, 22.724091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611469, 33.899712, 22.848711>,  <39.714790, 33.573849, 23.056412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611469, 33.899712, 22.848711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362551, -0.416459, -0.833737,
		-0.895453, -0.403612, -0.187780,
		-0.258303, 0.814653, -0.519249,
		39.533978, 34.144108, 22.692936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355198, 33.282017, 22.469902>,  <39.714790, 33.573849, 23.056412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355198, 33.282017, 22.469902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419674, 33.654613, 22.339462>,  <39.458359, 33.878170, 22.261198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419674, 33.654613, 22.339462>,  <39.355198, 33.282017, 22.469902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419674, 33.654613, 22.339462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184095, -0.352999, -0.917334,
		-0.969602, 0.087828, -0.228381,
		0.161186, 0.931492, -0.326099,
		39.468029, 33.934063, 22.241632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974304, 33.416958, 21.917311>,  <39.355198, 33.282017, 22.469902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974304, 33.416958, 21.917311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272995, 33.681793, 21.891895>,  <39.452209, 33.840694, 21.876646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272995, 33.681793, 21.891895>,  <38.974304, 33.416958, 21.917311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272995, 33.681793, 21.891895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118520, -0.226447, -0.966786,
		-0.654486, 0.714395, -0.247565,
		0.746727, 0.662089, -0.063537,
		39.497013, 33.880421, 21.872835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910072, 33.677776, 21.260241>,  <38.974304, 33.416958, 21.917311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910072, 33.677776, 21.260241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279091, 33.788990, 21.367283>,  <39.500500, 33.855717, 21.431507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279091, 33.788990, 21.367283>,  <38.910072, 33.677776, 21.260241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279091, 33.788990, 21.367283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353408, -0.330241, -0.875239,
		-0.154969, 0.902020, -0.402920,
		0.922544, 0.278030, 0.267604,
		39.555855, 33.872398, 21.447563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233578, 33.903088, 20.665251>,  <38.910072, 33.677776, 21.260241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233578, 33.903088, 20.665251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555531, 33.841015, 20.894365>,  <39.748703, 33.803772, 21.031834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555531, 33.841015, 20.894365>,  <39.233578, 33.903088, 20.665251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555531, 33.841015, 20.894365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548193, -0.175219, -0.817792,
		0.227273, 0.972222, -0.055959,
		0.804880, -0.155185, 0.572787,
		39.796993, 33.794460, 21.066202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763348, 34.050579, 20.193167>,  <39.233578, 33.903088, 20.665251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763348, 34.050579, 20.193167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946762, 33.861458, 20.494154>,  <40.056808, 33.747986, 20.674746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946762, 33.861458, 20.494154>,  <39.763348, 34.050579, 20.193167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946762, 33.861458, 20.494154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550641, -0.513443, -0.658157,
		0.697526, 0.716127, 0.024912,
		0.458533, -0.472799, 0.752468,
		40.084324, 33.719620, 20.719894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582001, 34.186367, 20.065733>,  <39.763348, 34.050579, 20.193167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582001, 34.186367, 20.065733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500378, 33.867790, 20.293432>,  <40.451405, 33.676643, 20.430052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500378, 33.867790, 20.293432>,  <40.582001, 34.186367, 20.065733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500378, 33.867790, 20.293432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643018, -0.547497, -0.535513,
		0.738166, 0.256761, 0.623846,
		-0.204055, -0.796442, 0.569246,
		40.439159, 33.628857, 20.464207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281948, 33.928154, 20.248587>,  <40.582001, 34.186367, 20.065733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281948, 33.928154, 20.248587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.003010, 33.644218, 20.288244>,  <40.835648, 33.473858, 20.312038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.003010, 33.644218, 20.288244>,  <41.281948, 33.928154, 20.248587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003010, 33.644218, 20.288244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540374, -0.611577, -0.577901,
		0.470851, -0.349425, 0.810063,
		-0.697349, -0.709842, 0.099142,
		40.793804, 33.431267, 20.317987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641781, 33.428352, 20.158674>,  <41.281948, 33.928154, 20.248587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641781, 33.428352, 20.158674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.292385, 33.239990, 20.109238>,  <41.082748, 33.126972, 20.079575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.292385, 33.239990, 20.109238>,  <41.641781, 33.428352, 20.158674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292385, 33.239990, 20.109238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433195, -0.635903, -0.638725,
		0.222183, -0.611457, 0.759444,
		-0.873485, -0.470902, -0.123593,
		41.030338, 33.098721, 20.072159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737270, 32.632965, 20.106037>,  <41.641781, 33.428352, 20.158674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737270, 32.632965, 20.106037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.371193, 32.664597, 19.947966>,  <41.151546, 32.683575, 19.853123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.371193, 32.664597, 19.947966>,  <41.737270, 32.632965, 20.106037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371193, 32.664597, 19.947966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226916, -0.709247, -0.667441,
		-0.333060, -0.700511, 0.631154,
		-0.915194, 0.079079, -0.395179,
		41.096634, 32.688320, 19.829412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430679, 31.870722, 20.125179>,  <41.737270, 32.632965, 20.106037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430679, 31.870722, 20.125179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253826, 32.088501, 19.840057>,  <41.147713, 32.219170, 19.668983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.253826, 32.088501, 19.840057>,  <41.430679, 31.870722, 20.125179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253826, 32.088501, 19.840057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155634, -0.736079, -0.658760,
		-0.883343, -0.402199, 0.240712,
		-0.442136, 0.544448, -0.712806,
		41.121185, 32.251835, 19.626215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353428, 31.437710, 20.889843>,  <41.430679, 31.870722, 20.125179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353428, 31.437710, 20.889843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107895, 31.127213, 20.832352>,  <40.960575, 30.940914, 20.797857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107895, 31.127213, 20.832352>,  <41.353428, 31.437710, 20.889843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107895, 31.127213, 20.832352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503349, 0.244584, 0.828745,
		-0.608153, 0.581056, -0.540855,
		-0.613832, -0.776242, -0.143730,
		40.923744, 30.894341, 20.789232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597069, 31.603764, 20.882925>,  <41.353428, 31.437710, 20.889843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597069, 31.603764, 20.882925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587620, 31.207119, 20.933762>,  <40.581951, 30.969133, 20.964264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587620, 31.207119, 20.933762>,  <40.597069, 31.603764, 20.882925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587620, 31.207119, 20.933762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637403, 0.112877, 0.762218,
		-0.770168, -0.063002, -0.634722,
		-0.023625, -0.991610, 0.127092,
		40.580532, 30.909636, 20.971889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927826, 31.486536, 20.973545>,  <40.597069, 31.603764, 20.882925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927826, 31.486536, 20.973545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120476, 31.172626, 21.129578>,  <40.236065, 30.984280, 21.223198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120476, 31.172626, 21.129578>,  <39.927826, 31.486536, 20.973545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120476, 31.172626, 21.129578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600075, 0.029085, 0.799415,
		-0.638707, -0.619097, -0.456916,
		0.481627, -0.784776, 0.390081,
		40.264965, 30.937195, 21.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429474, 31.034302, 21.165287>,  <39.927826, 31.486536, 20.973545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429474, 31.034302, 21.165287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735561, 30.904482, 21.387676>,  <39.919216, 30.826590, 21.521111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735561, 30.904482, 21.387676>,  <39.429474, 31.034302, 21.165287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735561, 30.904482, 21.387676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613380, -0.105366, 0.782728,
		-0.195451, -0.939983, -0.279698,
		0.765222, -0.324546, 0.555973,
		39.965126, 30.807117, 21.554468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229218, 30.384630, 21.466969>,  <39.429474, 31.034302, 21.165287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229218, 30.384630, 21.466969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500797, 30.559355, 21.703012>,  <39.663746, 30.664188, 21.844639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500797, 30.559355, 21.703012>,  <39.229218, 30.384630, 21.466969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500797, 30.559355, 21.703012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616824, -0.096558, 0.781156,
		0.398197, -0.894356, 0.203877,
		0.678946, 0.436810, 0.590110,
		39.704483, 30.690397, 21.880045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195602, 29.969988, 22.036816>,  <39.229218, 30.384630, 21.466969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195602, 29.969988, 22.036816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387043, 30.298347, 22.161438>,  <39.501907, 30.495363, 22.236212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387043, 30.298347, 22.161438>,  <39.195602, 29.969988, 22.036816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387043, 30.298347, 22.161438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555078, 0.007940, 0.831761,
		0.680318, -0.571018, 0.459463,
		0.478598, 0.820899, 0.311557,
		39.530624, 30.544617, 22.254906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303734, 29.834249, 22.724037>,  <39.195602, 29.969988, 22.036816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303734, 29.834249, 22.724037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380936, 30.226664, 22.731146>,  <39.427258, 30.462112, 22.735411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380936, 30.226664, 22.731146>,  <39.303734, 29.834249, 22.724037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380936, 30.226664, 22.731146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541540, 0.091399, 0.835692,
		0.818220, -0.170917, 0.548911,
		0.193004, 0.981037, 0.017773,
		39.438835, 30.520975, 22.736479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474731, 29.944370, 23.432585>,  <39.303734, 29.834249, 22.724037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474731, 29.944370, 23.432585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341995, 30.284124, 23.268425>,  <39.262352, 30.487976, 23.169930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341995, 30.284124, 23.268425>,  <39.474731, 29.944370, 23.432585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341995, 30.284124, 23.268425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446733, 0.241679, 0.861406,
		0.830850, 0.469189, 0.299249,
		-0.331841, 0.849384, -0.410401,
		39.242443, 30.538940, 23.145304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190533, 30.054993, 23.602692>,  <39.474731, 29.944370, 23.432585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190533, 30.054993, 23.602692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431362, 29.832800, 23.832108>,  <40.575859, 29.699484, 23.969757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431362, 29.832800, 23.832108>,  <40.190533, 30.054993, 23.602692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431362, 29.832800, 23.832108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490656, -0.309286, -0.814616,
		0.629891, 0.771870, 0.086337,
		0.602075, -0.555481, 0.573539,
		40.611984, 29.666155, 24.004169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866711, 30.212839, 23.437357>,  <40.190533, 30.054993, 23.602692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866711, 30.212839, 23.437357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891811, 29.845552, 23.593786>,  <40.906872, 29.625179, 23.687643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.891811, 29.845552, 23.593786>,  <40.866711, 30.212839, 23.437357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891811, 29.845552, 23.593786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490543, -0.312871, -0.813314,
		0.869155, 0.242870, 0.430794,
		0.062747, -0.918219, 0.391071,
		40.910637, 29.570087, 23.711107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587215, 30.076487, 23.528723>,  <40.866711, 30.212839, 23.437357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587215, 30.076487, 23.528723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388962, 29.731060, 23.491629>,  <41.270008, 29.523804, 23.469372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388962, 29.731060, 23.491629>,  <41.587215, 30.076487, 23.528723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388962, 29.731060, 23.491629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610247, -0.270274, -0.744681,
		0.618018, -0.425681, 0.660946,
		-0.495633, -0.863567, -0.092737,
		41.240273, 29.471991, 23.463808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204632, 29.634806, 23.544321>,  <41.587215, 30.076487, 23.528723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204632, 29.634806, 23.544321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.914783, 29.393856, 23.410418>,  <41.740875, 29.249287, 23.330074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.914783, 29.393856, 23.410418>,  <42.204632, 29.634806, 23.544321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914783, 29.393856, 23.410418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612660, -0.340670, -0.713156,
		0.315545, -0.721863, 0.615910,
		-0.724623, -0.602376, -0.334760,
		41.697395, 29.213142, 23.309990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406548, 28.891737, 23.515751>,  <42.204632, 29.634806, 23.544321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406548, 28.891737, 23.515751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105930, 28.893871, 23.251886>,  <41.925560, 28.895151, 23.093569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105930, 28.893871, 23.251886>,  <42.406548, 28.891737, 23.515751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105930, 28.893871, 23.251886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591944, -0.435919, -0.677921,
		-0.291174, -0.899970, 0.324456,
		-0.751545, 0.005334, -0.659660,
		41.880466, 28.895472, 23.053988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503510, 28.225437, 23.261312>,  <42.406548, 28.891737, 23.515751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503510, 28.225437, 23.261312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.281773, 28.443916, 23.010118>,  <42.148727, 28.575005, 22.859402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.281773, 28.443916, 23.010118>,  <42.503510, 28.225437, 23.261312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281773, 28.443916, 23.010118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470527, -0.416708, -0.777791,
		-0.686516, -0.726650, -0.026001,
		-0.554347, 0.546200, -0.627985,
		42.115467, 28.607777, 22.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101288, 27.817949, 22.781435>,  <42.503510, 28.225437, 23.261312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101288, 27.817949, 22.781435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.124195, 28.156637, 22.569855>,  <42.137939, 28.359850, 22.442907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.124195, 28.156637, 22.569855>,  <42.101288, 27.817949, 22.781435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124195, 28.156637, 22.569855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488344, -0.485866, -0.724882,
		-0.870770, -0.216799, -0.441313,
		0.057265, 0.846718, -0.528950,
		42.141376, 28.410652, 22.411169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314182, 27.533207, 22.080219>,  <42.101288, 27.817949, 22.781435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314182, 27.533207, 22.080219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352428, 27.929419, 22.040796>,  <42.375378, 28.167145, 22.017143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352428, 27.929419, 22.040796>,  <42.314182, 27.533207, 22.080219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352428, 27.929419, 22.040796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551520, -0.135143, -0.823141,
		-0.828663, 0.024352, -0.559218,
		0.095620, 0.990527, -0.098557,
		42.381115, 28.226576, 22.011229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087116, 27.851992, 21.399244>,  <42.314182, 27.533207, 22.080219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087116, 27.851992, 21.399244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363861, 28.077955, 21.579111>,  <42.529907, 28.213533, 21.687031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363861, 28.077955, 21.579111>,  <42.087116, 27.851992, 21.399244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363861, 28.077955, 21.579111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552735, -0.013690, -0.833245,
		-0.464550, 0.825041, -0.321715,
		0.691866, 0.564907, 0.449669,
		42.571423, 28.247427, 21.714012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.243351, 35.834633, 34.027744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634285, 35.885204, 33.959824>,  <35.868847, 35.915546, 33.919071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634285, 35.885204, 33.959824>,  <35.243351, 35.834633, 34.027744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634285, 35.885204, 33.959824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084270, -0.968134, -0.235828,
		-0.194206, 0.216174, -0.956845,
		0.977334, 0.126432, -0.169800,
		35.927486, 35.923134, 33.908882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368931, 35.531395, 33.449753>,  <35.243351, 35.834633, 34.027744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368931, 35.531395, 33.449753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742031, 35.548939, 33.592892>,  <35.965889, 35.559467, 33.678776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742031, 35.548939, 33.592892>,  <35.368931, 35.531395, 33.449753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742031, 35.548939, 33.592892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281982, -0.707236, -0.648308,
		0.224647, 0.705615, -0.672042,
		0.932748, 0.043863, 0.357849,
		36.021854, 35.562099, 33.700245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875313, 35.585194, 32.867546>,  <35.368931, 35.531395, 33.449753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875313, 35.585194, 32.867546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079128, 35.433037, 33.176266>,  <36.201416, 35.341743, 33.361496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079128, 35.433037, 33.176266>,  <35.875313, 35.585194, 32.867546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079128, 35.433037, 33.176266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293815, -0.766140, -0.571578,
		0.808730, 0.518007, -0.278612,
		0.509538, -0.380392, 0.771799,
		36.231991, 35.318920, 33.407806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466972, 35.342182, 32.550343>,  <35.875313, 35.585194, 32.867546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466972, 35.342182, 32.550343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469700, 35.170792, 32.911755>,  <36.471336, 35.067955, 33.128601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469700, 35.170792, 32.911755>,  <36.466972, 35.342182, 32.550343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469700, 35.170792, 32.911755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311446, -0.857697, -0.409094,
		0.950239, 0.284188, 0.127602,
		0.006816, -0.428478, 0.903526,
		36.471745, 35.042248, 33.182812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176491, 35.132645, 32.718483>,  <36.466972, 35.342182, 32.550343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176491, 35.132645, 32.718483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912800, 34.897297, 32.905773>,  <36.754585, 34.756088, 33.018147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912800, 34.897297, 32.905773>,  <37.176491, 35.132645, 32.718483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912800, 34.897297, 32.905773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360923, -0.793862, -0.489406,
		0.659659, -0.153637, 0.735694,
		-0.659230, -0.588369, 0.468227,
		36.715031, 34.720787, 33.046242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543480, 34.467598, 32.966827>,  <37.176491, 35.132645, 32.718483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543480, 34.467598, 32.966827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162724, 34.345242, 32.974220>,  <36.934269, 34.271828, 32.978657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.162724, 34.345242, 32.974220>,  <37.543480, 34.467598, 32.966827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162724, 34.345242, 32.974220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281229, -0.895908, -0.343887,
		0.121749, -0.322144, 0.938829,
		-0.951886, -0.305894, 0.018479,
		36.877159, 34.253475, 32.979763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579262, 33.820274, 33.238075>,  <37.543480, 34.467598, 32.966827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579262, 33.820274, 33.238075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213760, 33.799564, 33.076897>,  <36.994457, 33.787140, 32.980190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213760, 33.799564, 33.076897>,  <37.579262, 33.820274, 33.238075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213760, 33.799564, 33.076897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280133, -0.798642, -0.532632,
		-0.294236, -0.599575, 0.744268,
		-0.913756, -0.051775, -0.402950,
		36.939632, 33.784031, 32.956013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461285, 33.232544, 33.295517>,  <37.579262, 33.820274, 33.238075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461285, 33.232544, 33.295517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185974, 33.329247, 33.021927>,  <37.020786, 33.387268, 32.857773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185974, 33.329247, 33.021927>,  <37.461285, 33.232544, 33.295517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185974, 33.329247, 33.021927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303852, -0.760076, -0.574420,
		-0.658747, -0.603188, 0.449684,
		-0.688278, 0.241760, -0.683978,
		36.979492, 33.401775, 32.816734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148418, 32.660168, 33.138180>,  <37.461285, 33.232544, 33.295517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148418, 32.660168, 33.138180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067612, 32.898369, 32.827164>,  <37.019127, 33.041290, 32.640553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067612, 32.898369, 32.827164>,  <37.148418, 32.660168, 33.138180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067612, 32.898369, 32.827164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160856, -0.762953, -0.626121,
		-0.966083, -0.251557, 0.058336,
		-0.202012, 0.595502, -0.777540,
		37.007008, 33.077019, 32.593903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666595, 32.262138, 32.750706>,  <37.148418, 32.660168, 33.138180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666595, 32.262138, 32.750706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844551, 32.529316, 32.512066>,  <36.951324, 32.689621, 32.368881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844551, 32.529316, 32.512066>,  <36.666595, 32.262138, 32.750706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844551, 32.529316, 32.512066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145274, -0.711154, -0.687863,
		-0.883725, 0.219353, -0.413419,
		0.444889, 0.667940, -0.596598,
		36.978020, 32.729698, 32.333088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377979, 32.149883, 32.090725>,  <36.666595, 32.262138, 32.750706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377979, 32.149883, 32.090725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710365, 32.354000, 32.002102>,  <36.909798, 32.476471, 31.948927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.710365, 32.354000, 32.002102>,  <36.377979, 32.149883, 32.090725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710365, 32.354000, 32.002102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081579, -0.505731, -0.858825,
		-0.550304, 0.695583, -0.461876,
		0.830969, 0.510294, -0.221561,
		36.959656, 32.507088, 31.935633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339691, 32.256119, 31.380188>,  <36.377979, 32.149883, 32.090725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339691, 32.256119, 31.380188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723888, 32.323895, 31.468494>,  <36.954407, 32.364559, 31.521479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723888, 32.323895, 31.468494>,  <36.339691, 32.256119, 31.380188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723888, 32.323895, 31.468494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275975, -0.477750, -0.834022,
		-0.035843, 0.862001, -0.505637,
		0.960496, 0.169437, 0.220767,
		37.012039, 32.374725, 31.534725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996307, 32.610901, 30.862524>,  <36.339691, 32.256119, 31.380188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996307, 32.610901, 30.862524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622936, 32.528629, 30.744938>,  <35.398914, 32.479267, 30.674387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622936, 32.528629, 30.744938>,  <35.996307, 32.610901, 30.862524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622936, 32.528629, 30.744938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335030, 0.792818, 0.509112,
		0.128349, 0.573705, -0.808943,
		-0.933425, -0.205676, -0.293966,
		35.342911, 32.466927, 30.656748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754745, 33.289707, 31.054516>,  <35.996307, 32.610901, 30.862524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754745, 33.289707, 31.054516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428074, 33.080414, 30.957136>,  <35.232071, 32.954838, 30.898708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428074, 33.080414, 30.957136>,  <35.754745, 33.289707, 31.054516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428074, 33.080414, 30.957136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576691, 0.724082, 0.378329,
		-0.021679, 0.449366, -0.893085,
		-0.816675, -0.523235, -0.243448,
		35.183071, 32.923443, 30.884102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248520, 33.776386, 30.624973>,  <35.754745, 33.289707, 31.054516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248520, 33.776386, 30.624973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070251, 33.476547, 30.820719>,  <34.963291, 33.296642, 30.938166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070251, 33.476547, 30.820719>,  <35.248520, 33.776386, 30.624973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070251, 33.476547, 30.820719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579029, 0.658289, 0.481022,
		-0.682715, -0.068976, -0.727422,
		-0.445675, -0.749599, 0.489362,
		34.936550, 33.251667, 30.967527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601574, 34.006481, 30.570395>,  <35.248520, 33.776386, 30.624973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601574, 34.006481, 30.570395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605480, 33.764774, 30.889084>,  <34.607822, 33.619751, 31.080297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605480, 33.764774, 30.889084>,  <34.601574, 34.006481, 30.570395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605480, 33.764774, 30.889084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675526, 0.583473, 0.450805,
		-0.737272, -0.542608, -0.402501,
		0.009762, -0.604265, 0.796723,
		34.608410, 33.583496, 31.128101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844582, 33.963272, 30.704580>,  <34.601574, 34.006481, 30.570395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844582, 33.963272, 30.704580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038059, 33.871323, 31.042383>,  <34.154148, 33.816154, 31.245066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038059, 33.871323, 31.042383>,  <33.844582, 33.963272, 30.704580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038059, 33.871323, 31.042383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613385, 0.599260, 0.514437,
		-0.624335, -0.766842, 0.148862,
		0.483698, -0.229871, 0.844509,
		34.183170, 33.802361, 31.295736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291325, 33.847561, 31.247818>,  <33.844582, 33.963272, 30.704580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291325, 33.847561, 31.247818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624569, 33.909622, 31.460180>,  <33.824516, 33.946857, 31.587597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624569, 33.909622, 31.460180>,  <33.291325, 33.847561, 31.247818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624569, 33.909622, 31.460180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550130, 0.331973, 0.766258,
		-0.057362, -0.930442, 0.361922,
		0.833107, 0.155150, 0.530907,
		33.874500, 33.956165, 31.619452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053467, 33.720108, 31.862814>,  <33.291325, 33.847561, 31.247818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053467, 33.720108, 31.862814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392170, 33.918839, 31.938887>,  <33.595390, 34.038078, 31.984529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392170, 33.918839, 31.938887>,  <33.053467, 33.720108, 31.862814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392170, 33.918839, 31.938887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460039, 0.504325, 0.730767,
		0.267152, -0.706271, 0.655600,
		0.846755, 0.496828, 0.190181,
		33.646194, 34.067886, 31.995941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133316, 33.754448, 32.629265>,  <33.053467, 33.720108, 31.862814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133316, 33.754448, 32.629265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330425, 34.047962, 32.442188>,  <33.448689, 34.224072, 32.329941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330425, 34.047962, 32.442188>,  <33.133316, 33.754448, 32.629265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330425, 34.047962, 32.442188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617445, 0.673581, 0.406264,
		0.613138, 0.088578, 0.784994,
		0.492771, 0.733787, -0.467690,
		33.478256, 34.268097, 32.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311897, 34.101639, 33.199875>,  <33.133316, 33.754448, 32.629265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311897, 34.101639, 33.199875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348141, 34.350780, 32.889046>,  <33.369888, 34.500267, 32.702549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348141, 34.350780, 32.889046>,  <33.311897, 34.101639, 33.199875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348141, 34.350780, 32.889046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404483, 0.736043, 0.542802,
		0.910046, 0.265131, 0.318625,
		0.090608, 0.622853, -0.777074,
		33.375324, 34.537636, 32.655922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497105, 34.709976, 33.463318>,  <33.311897, 34.101639, 33.199875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497105, 34.709976, 33.463318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371346, 34.828938, 33.102718>,  <33.295891, 34.900314, 32.886356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371346, 34.828938, 33.102718>,  <33.497105, 34.709976, 33.463318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371346, 34.828938, 33.102718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408466, 0.814869, 0.411271,
		0.856919, 0.497535, -0.134714,
		-0.314396, 0.297400, -0.901503,
		33.277027, 34.918159, 32.832268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591999, 35.452713, 33.432331>,  <33.497105, 34.709976, 33.463318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591999, 35.452713, 33.432331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369923, 35.400402, 33.103779>,  <33.236679, 35.369015, 32.906647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369923, 35.400402, 33.103779>,  <33.591999, 35.452713, 33.432331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369923, 35.400402, 33.103779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484241, 0.853747, 0.191380,
		0.676222, 0.503998, -0.537318,
		-0.555189, -0.130776, -0.821379,
		33.203365, 35.361168, 32.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610020, 36.011017, 32.934158>,  <33.591999, 35.452713, 33.432331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610020, 36.011017, 32.934158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258297, 35.845413, 32.839993>,  <33.047264, 35.746052, 32.783493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258297, 35.845413, 32.839993>,  <33.610020, 36.011017, 32.934158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258297, 35.845413, 32.839993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461230, 0.863454, 0.204237,
		0.118714, 0.288167, -0.950193,
		-0.879303, -0.414012, -0.235416,
		32.994507, 35.721210, 32.769367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138279, 36.444099, 32.496502>,  <33.610020, 36.011017, 32.934158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138279, 36.444099, 32.496502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904839, 36.172436, 32.674557>,  <32.764774, 36.009438, 32.781387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904839, 36.172436, 32.674557>,  <33.138279, 36.444099, 32.496502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904839, 36.172436, 32.674557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474190, 0.730028, 0.492141,
		-0.659204, 0.076137, -0.748099,
		-0.583604, -0.679163, 0.445134,
		32.729759, 35.968685, 32.808098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528122, 36.616470, 32.227024>,  <33.138279, 36.444099, 32.496502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528122, 36.616470, 32.227024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504410, 36.425961, 32.577942>,  <32.490181, 36.311653, 32.788494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.504410, 36.425961, 32.577942>,  <32.528122, 36.616470, 32.227024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504410, 36.425961, 32.577942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560389, 0.743171, 0.365596,
		-0.826105, -0.469952, -0.310959,
		-0.059283, -0.476279, 0.877294,
		32.486626, 36.283077, 32.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892826, 36.190063, 31.804222>,  <32.528122, 36.616470, 32.227024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892826, 36.190063, 31.804222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691765, 36.533916, 31.767605>,  <32.571129, 36.740227, 31.745634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691765, 36.533916, 31.767605>,  <32.892826, 36.190063, 31.804222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691765, 36.533916, 31.767605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215049, 0.021772, -0.976361,
		-0.837315, -0.510454, -0.195806,
		-0.502650, 0.859629, -0.091543,
		32.540970, 36.791805, 31.740143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266380, 36.196236, 31.296371>,  <32.892826, 36.190063, 31.804222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266380, 36.196236, 31.296371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441830, 36.553627, 31.334969>,  <32.547100, 36.768063, 31.358126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441830, 36.553627, 31.334969>,  <32.266380, 36.196236, 31.296371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441830, 36.553627, 31.334969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150065, 0.033042, -0.988124,
		-0.886051, 0.447898, -0.119586,
		0.438627, 0.893474, 0.096491,
		32.573418, 36.821671, 31.363916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992195, 36.563805, 30.672407>,  <32.266380, 36.196236, 31.296371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992195, 36.563805, 30.672407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330894, 36.737881, 30.794802>,  <32.534115, 36.842327, 30.868238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330894, 36.737881, 30.794802>,  <31.992195, 36.563805, 30.672407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330894, 36.737881, 30.794802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264336, 0.154974, -0.951898,
		-0.461677, 0.886900, 0.016188,
		0.846747, 0.435191, 0.305987,
		32.584919, 36.868439, 30.886599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028912, 37.048260, 30.223856>,  <31.992195, 36.563805, 30.672407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028912, 37.048260, 30.223856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400757, 37.031921, 30.370367>,  <32.623863, 37.022118, 30.458273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400757, 37.031921, 30.370367>,  <32.028912, 37.048260, 30.223856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400757, 37.031921, 30.370367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366613, 0.204179, -0.907692,
		-0.037712, 0.978081, 0.204781,
		0.929609, -0.040845, 0.366278,
		32.679638, 37.019669, 30.480249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360104, 37.641373, 29.953859>,  <32.028912, 37.048260, 30.223856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360104, 37.641373, 29.953859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664772, 37.397804, 30.042467>,  <32.847572, 37.251663, 30.095633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664772, 37.397804, 30.042467>,  <32.360104, 37.641373, 29.953859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664772, 37.397804, 30.042467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415550, 0.196736, -0.888039,
		0.497162, 0.768449, 0.402884,
		0.761675, -0.608918, 0.221519,
		32.893276, 37.215130, 30.108923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763805, 37.744884, 29.409590>,  <32.360104, 37.641373, 29.953859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763805, 37.744884, 29.409590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947369, 37.438824, 29.590229>,  <33.057507, 37.255188, 29.698612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947369, 37.438824, 29.590229>,  <32.763805, 37.744884, 29.409590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947369, 37.438824, 29.590229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600081, -0.107907, -0.792628,
		0.655211, 0.634743, 0.409633,
		0.458912, -0.765152, 0.451599,
		33.085041, 37.209278, 29.725708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492466, 37.838947, 29.345184>,  <32.763805, 37.744884, 29.409590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492466, 37.838947, 29.345184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448231, 37.443729, 29.388145>,  <33.421688, 37.206600, 29.413921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448231, 37.443729, 29.388145>,  <33.492466, 37.838947, 29.345184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448231, 37.443729, 29.388145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626671, -0.153197, -0.764078,
		0.771398, -0.017192, 0.636121,
		-0.110588, -0.988046, 0.107402,
		33.415054, 37.147316, 29.420366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119171, 37.572021, 29.232470>,  <33.492466, 37.838947, 29.345184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119171, 37.572021, 29.232470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873810, 37.260860, 29.177912>,  <33.726593, 37.074165, 29.145176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873810, 37.260860, 29.177912>,  <34.119171, 37.572021, 29.232470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873810, 37.260860, 29.177912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563761, -0.310343, -0.765415,
		0.553087, -0.546406, 0.628916,
		-0.613407, -0.777900, -0.136396,
		33.689789, 37.027489, 29.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553905, 36.907570, 29.028898>,  <34.119171, 37.572021, 29.232470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553905, 36.907570, 29.028898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188648, 36.807484, 28.900167>,  <33.969494, 36.747433, 28.822929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188648, 36.807484, 28.900167>,  <34.553905, 36.907570, 29.028898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188648, 36.807484, 28.900167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407559, -0.543844, -0.733573,
		0.008526, -0.801016, 0.598581,
		-0.913139, -0.250212, -0.321825,
		33.914707, 36.732422, 28.803619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490673, 36.167961, 28.886652>,  <34.553905, 36.907570, 29.028898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490673, 36.167961, 28.886652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222076, 36.361713, 28.662340>,  <34.060921, 36.477966, 28.527754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222076, 36.361713, 28.662340>,  <34.490673, 36.167961, 28.886652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222076, 36.361713, 28.662340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393004, -0.408778, -0.823680,
		-0.628212, -0.773481, 0.084125,
		-0.671489, 0.484384, -0.560780,
		34.020630, 36.507027, 28.494106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253872, 35.734962, 28.463493>,  <34.490673, 36.167961, 28.886652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253872, 35.734962, 28.463493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175819, 36.084599, 28.285553>,  <34.128990, 36.294380, 28.178789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175819, 36.084599, 28.285553>,  <34.253872, 35.734962, 28.463493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175819, 36.084599, 28.285553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406198, -0.340817, -0.847848,
		-0.892709, -0.346135, -0.288551,
		-0.195127, 0.874090, -0.444850,
		34.117283, 36.346825, 28.152098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943027, 35.547810, 27.831779>,  <34.253872, 35.734962, 28.463493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943027, 35.547810, 27.831779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081799, 35.921223, 27.795666>,  <34.165062, 36.145271, 27.773998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.081799, 35.921223, 27.795666>,  <33.943027, 35.547810, 27.831779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081799, 35.921223, 27.795666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345040, -0.216551, -0.913265,
		-0.872116, 0.285687, -0.397235,
		0.346930, 0.933535, -0.090284,
		34.185879, 36.201283, 27.768581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959522, 35.649773, 27.065214>,  <33.943027, 35.547810, 27.831779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959522, 35.649773, 27.065214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175461, 35.949860, 27.217915>,  <34.305023, 36.129913, 27.309536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175461, 35.949860, 27.217915>,  <33.959522, 35.649773, 27.065214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175461, 35.949860, 27.217915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648219, -0.081193, -0.757113,
		-0.537004, 0.656187, -0.530138,
		0.539851, 0.750218, 0.381752,
		34.337418, 36.174927, 27.332439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057678, 36.172661, 26.524876>,  <33.959522, 35.649773, 27.065214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057678, 36.172661, 26.524876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348621, 36.202301, 26.797773>,  <34.523190, 36.220085, 26.961512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348621, 36.202301, 26.797773>,  <34.057678, 36.172661, 26.524876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348621, 36.202301, 26.797773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684441, -0.006093, -0.729043,
		-0.049864, 0.997232, -0.055147,
		0.727361, 0.074098, 0.682243,
		34.566830, 36.224529, 27.002445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487309, 36.751678, 26.242542>,  <34.057678, 36.172661, 26.524876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487309, 36.751678, 26.242542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705410, 36.534733, 26.498213>,  <34.836269, 36.404568, 26.651615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705410, 36.534733, 26.498213>,  <34.487309, 36.751678, 26.242542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705410, 36.534733, 26.498213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693094, -0.137202, -0.707670,
		0.471509, 0.828867, 0.301097,
		0.545253, -0.542361, 0.639174,
		34.868984, 36.372025, 26.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070438, 36.954021, 26.083210>,  <34.487309, 36.751678, 26.242542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070438, 36.954021, 26.083210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154186, 36.612446, 26.273769>,  <35.204433, 36.407501, 26.388105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154186, 36.612446, 26.273769>,  <35.070438, 36.954021, 26.083210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154186, 36.612446, 26.273769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811054, -0.120492, -0.572428,
		0.546220, 0.506233, 0.667362,
		0.209370, -0.853938, 0.476398,
		35.216999, 36.356266, 26.416689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770550, 36.896866, 26.241261>,  <35.070438, 36.954021, 26.083210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770550, 36.896866, 26.241261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671970, 36.509224, 26.245197>,  <35.612823, 36.276638, 26.247559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671970, 36.509224, 26.245197>,  <35.770550, 36.896866, 26.241261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671970, 36.509224, 26.245197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871261, -0.225988, -0.435699,
		0.424462, -0.098803, 0.900039,
		-0.246446, -0.969107, 0.009840,
		35.598038, 36.218491, 26.248150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378700, 36.625359, 26.245680>,  <35.770550, 36.896866, 26.241261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378700, 36.625359, 26.245680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148682, 36.302197, 26.194134>,  <36.010670, 36.108299, 26.163206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148682, 36.302197, 26.194134>,  <36.378700, 36.625359, 26.245680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148682, 36.302197, 26.194134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773905, -0.486098, -0.405930,
		0.265314, -0.333158, 0.904773,
		-0.575047, -0.807908, -0.128864,
		35.976166, 36.059826, 26.155474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788441, 35.987625, 26.294151>,  <36.378700, 36.625359, 26.245680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788441, 35.987625, 26.294151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464813, 35.823036, 26.126297>,  <36.270638, 35.724281, 26.025583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464813, 35.823036, 26.126297>,  <36.788441, 35.987625, 26.294151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464813, 35.823036, 26.126297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575475, -0.699601, -0.423542,
		-0.119304, -0.584166, 0.802818,
		-0.809071, -0.411471, -0.419638,
		36.222092, 35.699596, 26.000406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986645, 35.208652, 26.221533>,  <36.788441, 35.987625, 26.294151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986645, 35.208652, 26.221533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693657, 35.286461, 25.960566>,  <36.517864, 35.333145, 25.803986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693657, 35.286461, 25.960566>,  <36.986645, 35.208652, 26.221533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693657, 35.286461, 25.960566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437156, -0.600259, -0.669764,
		-0.521899, -0.775791, 0.354640,
		-0.732472, 0.194516, -0.652417,
		36.473915, 35.344814, 25.764841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817543, 34.526966, 25.870171>,  <36.986645, 35.208652, 26.221533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817543, 34.526966, 25.870171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699532, 34.820992, 25.625994>,  <36.628727, 34.997406, 25.479488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699532, 34.820992, 25.625994>,  <36.817543, 34.526966, 25.870171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699532, 34.820992, 25.625994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543133, -0.396609, -0.740073,
		-0.786109, -0.549891, -0.282228,
		-0.295026, 0.735065, -0.610442,
		36.611023, 35.041512, 25.442862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692314, 34.170765, 25.262997>,  <36.817543, 34.526966, 25.870171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692314, 34.170765, 25.262997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758747, 34.554321, 25.170954>,  <36.798607, 34.784454, 25.115728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758747, 34.554321, 25.170954>,  <36.692314, 34.170765, 25.262997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758747, 34.554321, 25.170954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622489, -0.282924, -0.729700,
		-0.764803, -0.022047, -0.643887,
		0.166083, 0.958889, -0.230105,
		36.808571, 34.841988, 25.101923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731380, 34.211769, 24.545719>,  <36.692314, 34.170765, 25.262997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731380, 34.211769, 24.545719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881767, 34.574066, 24.623985>,  <36.972000, 34.791443, 24.670944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881767, 34.574066, 24.623985>,  <36.731380, 34.211769, 24.545719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881767, 34.574066, 24.623985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575936, -0.062995, -0.815064,
		-0.725909, 0.419130, -0.545332,
		0.375971, 0.905738, 0.195663,
		36.994560, 34.845787, 24.682684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725731, 34.691082, 23.904919>,  <36.731380, 34.211769, 24.545719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725731, 34.691082, 23.904919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027073, 34.816196, 24.136307>,  <37.207878, 34.891266, 24.275139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027073, 34.816196, 24.136307>,  <36.725731, 34.691082, 23.904919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027073, 34.816196, 24.136307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609772, -0.002857, -0.792572,
		-0.246254, 0.949819, -0.192881,
		0.753351, 0.312787, 0.578469,
		37.253078, 34.910034, 24.309847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117069, 35.038670, 23.472364>,  <36.725731, 34.691082, 23.904919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117069, 35.038670, 23.472364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378460, 35.005768, 23.773350>,  <37.535294, 34.986027, 23.953941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378460, 35.005768, 23.773350>,  <37.117069, 35.038670, 23.472364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378460, 35.005768, 23.773350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743481, -0.116905, -0.658459,
		0.142128, 0.989731, -0.015240,
		0.653479, -0.082255, 0.752462,
		37.574505, 34.981091, 23.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705925, 35.566631, 23.367693>,  <37.117069, 35.038670, 23.472364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705925, 35.566631, 23.367693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840225, 35.258209, 23.584116>,  <37.920803, 35.073154, 23.713970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840225, 35.258209, 23.584116>,  <37.705925, 35.566631, 23.367693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840225, 35.258209, 23.584116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804385, -0.064192, -0.590631,
		0.490142, 0.633520, 0.598676,
		0.335746, -0.771059, 0.541057,
		37.940948, 35.026890, 23.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469906, 35.597622, 23.347015>,  <37.705925, 35.566631, 23.367693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469906, 35.597622, 23.347015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452454, 35.239388, 23.524117>,  <38.441982, 35.024448, 23.630377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452454, 35.239388, 23.524117>,  <38.469906, 35.597622, 23.347015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452454, 35.239388, 23.524117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841909, -0.271549, -0.466316,
		0.537853, 0.352411, 0.765846,
		-0.043630, -0.895582, 0.442751,
		38.439365, 34.970715, 23.656942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229446, 35.431927, 23.597050>,  <38.469906, 35.597622, 23.347015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229446, 35.431927, 23.597050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.998402, 35.113033, 23.526867>,  <38.859776, 34.921700, 23.484758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.998402, 35.113033, 23.526867>,  <39.229446, 35.431927, 23.597050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998402, 35.113033, 23.526867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693449, -0.365812, -0.620733,
		0.430683, -0.480215, 0.764137,
		-0.577617, -0.797229, -0.175456,
		38.825115, 34.873863, 23.474230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620415, 35.279366, 24.133343>,  <39.229446, 35.431927, 23.597050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620415, 35.279366, 24.133343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932034, 35.322899, 24.380320>,  <40.119007, 35.349018, 24.528505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932034, 35.322899, 24.380320>,  <39.620415, 35.279366, 24.133343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932034, 35.322899, 24.380320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625305, 0.206439, 0.752580,
		-0.045560, -0.972388, 0.228879,
		0.779049, 0.108832, 0.617445,
		40.165749, 35.355549, 24.565554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482510, 34.862698, 24.686594>,  <39.620415, 35.279366, 24.133343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482510, 34.862698, 24.686594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735004, 35.141682, 24.822294>,  <39.886501, 35.309071, 24.903715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735004, 35.141682, 24.822294>,  <39.482510, 34.862698, 24.686594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735004, 35.141682, 24.822294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656122, 0.246965, 0.713101,
		0.413575, -0.672726, 0.613511,
		0.631237, 0.697459, 0.339251,
		39.924377, 35.350918, 24.924070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464272, 34.870235, 25.470068>,  <39.482510, 34.862698, 24.686594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464272, 34.870235, 25.470068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663879, 35.205196, 25.380854>,  <39.783642, 35.406174, 25.327326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663879, 35.205196, 25.380854>,  <39.464272, 34.870235, 25.470068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663879, 35.205196, 25.380854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524280, 0.496657, 0.691710,
		0.690009, -0.228242, 0.686872,
		0.499017, 0.837399, -0.223035,
		39.813583, 35.456417, 25.313944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641956, 35.196476, 26.075407>,  <39.464272, 34.870235, 25.470068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641956, 35.196476, 26.075407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.699623, 35.501926, 25.823662>,  <39.734222, 35.685196, 25.672615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.699623, 35.501926, 25.823662>,  <39.641956, 35.196476, 26.075407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699623, 35.501926, 25.823662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483836, 0.609194, 0.628320,
		0.863202, 0.213923, 0.457295,
		0.144169, 0.763623, -0.629361,
		39.742874, 35.731014, 25.634853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062405, 35.802540, 26.386799>,  <39.641956, 35.196476, 26.075407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062405, 35.802540, 26.386799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.836208, 35.938667, 26.086292>,  <39.700489, 36.020344, 25.905989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.836208, 35.938667, 26.086292>,  <40.062405, 35.802540, 26.386799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836208, 35.938667, 26.086292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451366, 0.634681, 0.627255,
		0.690279, 0.693805, -0.205301,
		-0.565494, 0.340316, -0.751267,
		39.666561, 36.040764, 25.860912>
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
