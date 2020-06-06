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
	<24.750147, 34.711483, 34.714684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536259, 35.038704, 34.799412>,  <24.407927, 35.235035, 34.850250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.536259, 35.038704, 34.799412>,  <24.750147, 34.711483, 34.714684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536259, 35.038704, 34.799412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077357, -0.297004, 0.951738,
		0.841481, 0.492527, 0.222096,
		-0.534720, 0.818050, 0.211823,
		24.375843, 35.284119, 34.862957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289095, 34.196095, 34.675930>,  <24.750147, 34.711483, 34.714684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289095, 34.196095, 34.675930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681881, 34.125343, 34.649216>,  <25.917553, 34.082893, 34.633186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681881, 34.125343, 34.649216>,  <25.289095, 34.196095, 34.675930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681881, 34.125343, 34.649216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057958, -0.617851, 0.784156,
		-0.179969, -0.766141, -0.616959,
		0.981963, -0.176881, -0.066789,
		25.976471, 34.072277, 34.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421732, 33.488907, 34.667408>,  <25.289095, 34.196095, 34.675930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421732, 33.488907, 34.667408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728584, 33.697632, 34.816658>,  <25.912695, 33.822868, 34.906208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728584, 33.697632, 34.816658>,  <25.421732, 33.488907, 34.667408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728584, 33.697632, 34.816658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122898, -0.690425, 0.712888,
		0.629609, -0.501022, -0.593776,
		0.767130, 0.521815, 0.373124,
		25.958723, 33.854176, 34.928596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077431, 32.996853, 34.706680>,  <25.421732, 33.488907, 34.667408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077431, 32.996853, 34.706680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168032, 33.302326, 34.948502>,  <26.222391, 33.485611, 35.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168032, 33.302326, 34.948502>,  <26.077431, 32.996853, 34.706680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168032, 33.302326, 34.948502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179439, -0.642778, 0.744740,
		0.957339, -0.060204, -0.282625,
		0.226501, 0.763683, 0.604554,
		26.235983, 33.531429, 35.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756283, 32.948215, 35.056847>,  <26.077431, 32.996853, 34.706680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756283, 32.948215, 35.056847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513340, 33.160889, 35.292957>,  <26.367575, 33.288494, 35.434624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513340, 33.160889, 35.292957>,  <26.756283, 32.948215, 35.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513340, 33.160889, 35.292957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281903, -0.550430, 0.785849,
		0.742729, 0.643693, 0.184425,
		-0.607359, 0.531682, 0.590279,
		26.331133, 33.320393, 35.470039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158821, 33.326027, 35.682251>,  <26.756283, 32.948215, 35.056847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158821, 33.326027, 35.682251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779915, 33.221378, 35.756268>,  <26.552570, 33.158588, 35.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779915, 33.221378, 35.756268>,  <27.158821, 33.326027, 35.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779915, 33.221378, 35.756268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286702, -0.433995, 0.854079,
		-0.143142, 0.862091, 0.486117,
		-0.947266, -0.261625, 0.185040,
		26.495735, 33.142891, 35.811779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121748, 33.418438, 36.405537>,  <27.158821, 33.326027, 35.682251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121748, 33.418438, 36.405537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857521, 33.142769, 36.286407>,  <26.698984, 32.977367, 36.214931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857521, 33.142769, 36.286407>,  <27.121748, 33.418438, 36.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857521, 33.142769, 36.286407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210880, -0.551038, 0.807395,
		-0.720542, 0.470534, 0.509329,
		-0.660567, -0.689170, -0.297820,
		26.659351, 32.936016, 36.197060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716290, 33.109051, 37.035976>,  <27.121748, 33.418438, 36.405537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716290, 33.109051, 37.035976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671392, 32.814175, 36.769455>,  <26.644453, 32.637249, 36.609543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671392, 32.814175, 36.769455>,  <26.716290, 33.109051, 37.035976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671392, 32.814175, 36.769455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238046, -0.670963, 0.702242,
		-0.964746, -0.079789, 0.250796,
		-0.112244, -0.737186, -0.666302,
		26.637720, 32.593018, 36.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208019, 32.672550, 37.264793>,  <26.716290, 33.109051, 37.035976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208019, 32.672550, 37.264793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463469, 32.461884, 37.040371>,  <26.616739, 32.335484, 36.905716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463469, 32.461884, 37.040371>,  <26.208019, 32.672550, 37.264793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463469, 32.461884, 37.040371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131091, -0.643984, 0.753724,
		-0.758270, -0.554896, -0.342224,
		0.638625, -0.526664, -0.561056,
		26.655056, 32.303883, 36.872055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907055, 31.902426, 37.278774>,  <26.208019, 32.672550, 37.264793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907055, 31.902426, 37.278774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292009, 31.886068, 37.171333>,  <26.522982, 31.876255, 37.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292009, 31.886068, 37.171333>,  <25.907055, 31.902426, 37.278774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292009, 31.886068, 37.171333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165777, -0.694870, 0.699766,
		-0.215255, -0.717971, -0.661953,
		0.962384, -0.040892, -0.268598,
		26.580725, 31.873800, 37.090755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984306, 31.275713, 37.086559>,  <25.907055, 31.902426, 37.278774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984306, 31.275713, 37.086559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357689, 31.392176, 37.170357>,  <26.581718, 31.462053, 37.220634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357689, 31.392176, 37.170357>,  <25.984306, 31.275713, 37.086559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357689, 31.392176, 37.170357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036315, -0.657760, 0.752351,
		0.356849, -0.694679, -0.624564,
		0.933456, 0.291157, 0.209494,
		26.637726, 31.479523, 37.233204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344866, 30.774893, 37.440453>,  <25.984306, 31.275713, 37.086559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344866, 30.774893, 37.440453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549913, 31.099388, 37.552963>,  <26.672941, 31.294086, 37.620468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549913, 31.099388, 37.552963>,  <26.344866, 30.774893, 37.440453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549913, 31.099388, 37.552963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418322, -0.522047, 0.743286,
		0.749821, -0.263358, -0.606969,
		0.512617, 0.811239, 0.281273,
		26.703699, 31.342760, 37.637344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067385, 30.583475, 37.727390>,  <26.344866, 30.774893, 37.440453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067385, 30.583475, 37.727390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998964, 30.944756, 37.884853>,  <26.957912, 31.161524, 37.979332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998964, 30.944756, 37.884853>,  <27.067385, 30.583475, 37.727390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998964, 30.944756, 37.884853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420229, -0.294502, 0.858299,
		0.891151, 0.312238, -0.329178,
		-0.171050, 0.903203, 0.393657,
		26.947649, 31.215717, 38.002949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667803, 30.967716, 37.969936>,  <27.067385, 30.583475, 37.727390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667803, 30.967716, 37.969936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345133, 31.064831, 38.185467>,  <27.151531, 31.123100, 38.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345133, 31.064831, 38.185467>,  <27.667803, 30.967716, 37.969936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345133, 31.064831, 38.185467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386900, -0.472249, 0.792016,
		0.446751, 0.847370, 0.287016,
		-0.806673, 0.242787, 0.538825,
		27.103130, 31.137667, 38.347115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689941, 31.547737, 38.378624>,  <27.667803, 30.967716, 37.969936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689941, 31.547737, 38.378624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489433, 31.220652, 38.491814>,  <27.369129, 31.024401, 38.559727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489433, 31.220652, 38.491814>,  <27.689941, 31.547737, 38.378624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489433, 31.220652, 38.491814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654884, -0.144768, 0.741734,
		-0.565558, 0.557126, 0.608074,
		-0.501269, -0.817712, 0.282979,
		27.339052, 30.975338, 38.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410795, 32.086201, 38.052280>,  <27.689941, 31.547737, 38.378624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410795, 32.086201, 38.052280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286783, 31.763454, 37.851143>,  <27.212376, 31.569807, 37.730461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286783, 31.763454, 37.851143>,  <27.410795, 32.086201, 38.052280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286783, 31.763454, 37.851143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120074, 0.557898, -0.821177,
		0.943113, -0.194213, -0.269850,
		-0.310032, -0.806865, -0.502841,
		27.193773, 31.521395, 37.700291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850800, 31.825935, 37.509754>,  <27.410795, 32.086201, 38.052280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850800, 31.825935, 37.509754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470676, 31.732512, 37.427425>,  <27.242603, 31.676456, 37.378029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470676, 31.732512, 37.427425>,  <27.850800, 31.825935, 37.509754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470676, 31.732512, 37.427425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032735, 0.582523, -0.812155,
		0.309585, -0.778535, -0.545931,
		-0.950308, -0.233560, -0.205825,
		27.185583, 31.662443, 37.365677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851913, 31.733931, 36.780960>,  <27.850800, 31.825935, 37.509754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851913, 31.733931, 36.780960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466364, 31.789192, 36.872051>,  <27.235035, 31.822350, 36.926704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466364, 31.789192, 36.872051>,  <27.851913, 31.733931, 36.780960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466364, 31.789192, 36.872051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146895, 0.437486, -0.887146,
		-0.222192, -0.888549, -0.401387,
		-0.963874, 0.138155, 0.227729,
		27.177202, 31.830639, 36.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399368, 31.554983, 36.168793>,  <27.851913, 31.733931, 36.780960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399368, 31.554983, 36.168793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178947, 31.794500, 36.401268>,  <27.046694, 31.938211, 36.540752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178947, 31.794500, 36.401268>,  <27.399368, 31.554983, 36.168793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178947, 31.794500, 36.401268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323239, 0.488936, -0.810221,
		-0.769322, -0.634340, -0.075876,
		-0.551054, 0.598795, 0.581193,
		27.013632, 31.974138, 36.575626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751131, 31.493601, 35.835373>,  <27.399368, 31.554983, 36.168793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751131, 31.493601, 35.835373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731344, 31.820047, 36.065681>,  <26.719473, 32.015915, 36.203865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731344, 31.820047, 36.065681>,  <26.751131, 31.493601, 35.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731344, 31.820047, 36.065681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506469, 0.476361, -0.718727,
		-0.860838, -0.327162, 0.389773,
		-0.049467, 0.816116, 0.575767,
		26.716503, 32.064880, 36.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109118, 31.786589, 35.833725>,  <26.751131, 31.493601, 35.835373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109118, 31.786589, 35.833725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265423, 32.093155, 36.037651>,  <26.359205, 32.277096, 36.160007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265423, 32.093155, 36.037651>,  <26.109118, 31.786589, 35.833725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265423, 32.093155, 36.037651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564198, 0.637037, -0.525228,
		-0.727315, -0.082399, 0.681340,
		0.390761, 0.766416, 0.509816,
		26.382650, 32.323078, 36.190598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506155, 32.300945, 35.871605>,  <26.109118, 31.786589, 35.833725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506155, 32.300945, 35.871605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823631, 32.514992, 35.987335>,  <26.014116, 32.643417, 36.056774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823631, 32.514992, 35.987335>,  <25.506155, 32.300945, 35.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823631, 32.514992, 35.987335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289680, 0.750689, -0.593761,
		-0.534921, 0.387452, 0.750827,
		0.793691, 0.535114, 0.289322,
		26.061739, 32.675526, 36.074131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272923, 32.931278, 36.094357>,  <25.506155, 32.300945, 35.871605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272923, 32.931278, 36.094357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652391, 33.015484, 35.999947>,  <25.880072, 33.066010, 35.943302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652391, 33.015484, 35.999947>,  <25.272923, 32.931278, 36.094357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652391, 33.015484, 35.999947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314626, 0.704087, -0.636609,
		0.032162, 0.678191, 0.734181,
		0.948671, 0.210518, -0.236021,
		25.936993, 33.078640, 35.929142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438185, 33.641163, 36.087173>,  <25.272923, 32.931278, 36.094357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438185, 33.641163, 36.087173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689375, 33.480667, 35.820446>,  <25.840090, 33.384369, 35.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689375, 33.480667, 35.820446>,  <25.438185, 33.641163, 36.087173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689375, 33.480667, 35.820446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167668, 0.766961, -0.619401,
		0.759955, 0.500774, 0.414359,
		0.627978, -0.401242, -0.666820,
		25.877768, 33.360294, 35.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799980, 34.154873, 36.296463>,  <25.438185, 33.641163, 36.087173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799980, 34.154873, 36.296463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988731, 33.921265, 36.032265>,  <26.101982, 33.781101, 35.873745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988731, 33.921265, 36.032265>,  <25.799980, 34.154873, 36.296463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988731, 33.921265, 36.032265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207942, 0.654292, -0.727091,
		0.856792, 0.480443, 0.187303,
		0.471877, -0.584017, -0.660496,
		26.130295, 33.746059, 35.834114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307327, 34.509125, 36.018456>,  <25.799980, 34.154873, 36.296463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307327, 34.509125, 36.018456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270126, 34.225319, 35.739044>,  <26.247805, 34.055035, 35.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270126, 34.225319, 35.739044>,  <26.307327, 34.509125, 36.018456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270126, 34.225319, 35.739044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054215, 0.704134, -0.707995,
		0.994189, -0.027976, -0.103954,
		-0.093004, -0.709516, -0.698525,
		26.242226, 34.012463, 35.529488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806490, 34.521843, 35.539299>,  <26.307327, 34.509125, 36.018456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806490, 34.521843, 35.539299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511290, 34.336182, 35.343372>,  <26.334169, 34.224785, 35.225819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511290, 34.336182, 35.343372>,  <26.806490, 34.521843, 35.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511290, 34.336182, 35.343372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112943, 0.630665, -0.767793,
		0.665281, -0.621953, -0.413008,
		-0.738001, -0.464152, -0.489815,
		26.289890, 34.196938, 35.196426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962915, 34.486118, 34.777313>,  <26.806490, 34.521843, 35.539299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962915, 34.486118, 34.777313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564672, 34.462940, 34.806740>,  <26.325727, 34.449032, 34.824394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564672, 34.462940, 34.806740>,  <26.962915, 34.486118, 34.777313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564672, 34.462940, 34.806740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093605, 0.639340, -0.763205,
		-0.002805, -0.766737, -0.641955,
		-0.995605, -0.057950, 0.073563,
		26.265991, 34.445557, 34.828808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566303, 34.171558, 34.343891>,  <26.962915, 34.486118, 34.777313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566303, 34.171558, 34.343891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304470, 34.441071, 34.481030>,  <26.147369, 34.602776, 34.563313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304470, 34.441071, 34.481030>,  <26.566303, 34.171558, 34.343891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304470, 34.441071, 34.481030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310936, 0.653323, -0.690280,
		-0.689086, -0.345242, -0.637156,
		-0.654583, 0.673778, 0.342848,
		26.108095, 34.643204, 34.583885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086836, 34.393677, 33.812363>,  <26.566303, 34.171558, 34.343891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086836, 34.393677, 33.812363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123295, 34.715073, 34.047684>,  <26.145170, 34.907909, 34.188877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123295, 34.715073, 34.047684>,  <26.086836, 34.393677, 33.812363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123295, 34.715073, 34.047684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121715, 0.577341, -0.807380,
		-0.988371, 0.145196, -0.045173,
		0.091148, 0.803489, 0.588300,
		26.150639, 34.956120, 34.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687124, 34.819420, 33.443062>,  <26.086836, 34.393677, 33.812363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687124, 34.819420, 33.443062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931763, 35.018444, 33.689114>,  <26.078547, 35.137859, 33.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931763, 35.018444, 33.689114>,  <25.687124, 34.819420, 33.443062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931763, 35.018444, 33.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164967, 0.680209, -0.714214,
		-0.773779, 0.538288, 0.333934,
		0.611598, 0.497556, 0.615131,
		26.115242, 35.167709, 33.873653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479706, 35.540581, 33.806717>,  <25.687124, 34.819420, 33.443062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479706, 35.540581, 33.806717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848600, 35.458199, 33.675838>,  <26.069937, 35.408768, 33.597309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848600, 35.458199, 33.675838>,  <25.479706, 35.540581, 33.806717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848600, 35.458199, 33.675838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164717, 0.556344, -0.814463,
		0.349778, 0.805024, 0.479158,
		0.922238, -0.205956, -0.327198,
		26.125273, 35.396412, 33.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063595, 36.030640, 33.774784>,  <25.479706, 35.540581, 33.806717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063595, 36.030640, 33.774784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077536, 35.765675, 33.475452>,  <26.085901, 35.606697, 33.295853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077536, 35.765675, 33.475452>,  <26.063595, 36.030640, 33.774784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077536, 35.765675, 33.475452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103547, 0.742359, -0.661952,
		0.994014, 0.100559, -0.042717,
		0.034853, -0.662413, -0.748328,
		26.087992, 35.566952, 33.250954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074768, 36.178646, 33.011963>,  <26.063595, 36.030640, 33.774784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074768, 36.178646, 33.011963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422321, 36.000050, 32.926464>,  <26.630854, 35.892891, 32.875164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422321, 36.000050, 32.926464>,  <26.074768, 36.178646, 33.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422321, 36.000050, 32.926464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485870, -0.686615, -0.540823,
		0.094709, 0.573766, -0.813525,
		0.868885, -0.446488, -0.213747,
		26.682987, 35.866104, 32.862339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024693, 35.676861, 32.395462>,  <26.074768, 36.178646, 33.011963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024693, 35.676861, 32.395462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405910, 35.624287, 32.504593>,  <26.634642, 35.592743, 32.570072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405910, 35.624287, 32.504593>,  <26.024693, 35.676861, 32.395462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405910, 35.624287, 32.504593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060191, -0.800714, -0.596015,
		0.296794, 0.584449, -0.755203,
		0.953042, -0.131437, 0.272826,
		26.691824, 35.584854, 32.586441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426991, 35.159630, 32.524734>,  <26.024693, 35.676861, 32.395462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426991, 35.159630, 32.524734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815058, 35.100853, 32.447605>,  <26.047897, 35.065586, 32.401325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815058, 35.100853, 32.447605>,  <25.426991, 35.159630, 32.524734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815058, 35.100853, 32.447605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242399, -0.601476, -0.761229,
		-0.004122, 0.785261, -0.619151,
		0.970168, -0.146943, -0.192825,
		26.106108, 35.056770, 32.389759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499826, 35.144909, 31.860439>,  <25.426991, 35.159630, 32.524734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499826, 35.144909, 31.860439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851839, 34.976551, 31.948435>,  <26.063046, 34.875538, 32.001232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851839, 34.976551, 31.948435>,  <25.499826, 35.144909, 31.860439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851839, 34.976551, 31.948435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055921, -0.551824, -0.832084,
		0.471615, 0.719957, -0.509158,
		0.880030, -0.420896, 0.219987,
		26.115849, 34.850281, 32.014431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026087, 35.229370, 31.274471>,  <25.499826, 35.144909, 31.860439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026087, 35.229370, 31.274471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151283, 34.905407, 31.472900>,  <26.226402, 34.711029, 31.591957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151283, 34.905407, 31.472900>,  <26.026087, 35.229370, 31.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151283, 34.905407, 31.472900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211644, -0.568657, -0.794881,
		0.925874, 0.143801, -0.349397,
		0.312992, -0.809907, 0.496071,
		26.245180, 34.662434, 31.621721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368948, 34.859318, 30.822636>,  <26.026087, 35.229370, 31.274471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368948, 34.859318, 30.822636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312752, 34.576504, 31.099871>,  <26.279034, 34.406815, 31.266211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312752, 34.576504, 31.099871>,  <26.368948, 34.859318, 30.822636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312752, 34.576504, 31.099871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258089, -0.649673, -0.715063,
		0.955852, -0.279337, -0.091204,
		-0.140491, -0.707033, 0.693085,
		26.270605, 34.364395, 31.307796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613810, 34.297615, 30.509884>,  <26.368948, 34.859318, 30.822636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613810, 34.297615, 30.509884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350958, 34.170238, 30.783167>,  <26.193247, 34.093815, 30.947138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350958, 34.170238, 30.783167>,  <26.613810, 34.297615, 30.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350958, 34.170238, 30.783167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280109, -0.738315, -0.613539,
		0.699798, -0.594549, 0.395973,
		-0.657131, -0.318438, 0.683210,
		26.153818, 34.074707, 30.988131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120672, 33.900604, 30.402317>,  <26.613810, 34.297615, 30.509884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120672, 33.900604, 30.402317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213221, 33.566231, 30.601391>,  <26.268749, 33.365608, 30.720835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213221, 33.566231, 30.601391>,  <26.120672, 33.900604, 30.402317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213221, 33.566231, 30.601391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008537, 0.509799, 0.860251,
		-0.972828, -0.203286, 0.110817,
		0.231371, -0.835931, 0.497683,
		26.282633, 33.315453, 30.750696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530645, 33.836250, 30.908478>,  <26.120672, 33.900604, 30.402317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530645, 33.836250, 30.908478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871256, 33.650658, 31.006151>,  <26.075623, 33.539303, 31.064754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871256, 33.650658, 31.006151>,  <25.530645, 33.836250, 30.908478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871256, 33.650658, 31.006151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116843, 0.621939, 0.774299,
		-0.511126, -0.630805, 0.583811,
		0.851527, -0.463979, 0.244184,
		26.126715, 33.511463, 31.079407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451752, 33.502850, 31.631636>,  <25.530645, 33.836250, 30.908478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451752, 33.502850, 31.631636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817902, 33.614819, 31.515888>,  <26.037592, 33.681999, 31.446440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817902, 33.614819, 31.515888>,  <25.451752, 33.502850, 31.631636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817902, 33.614819, 31.515888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043970, 0.644931, 0.762975,
		0.400199, -0.711130, 0.578044,
		0.915373, 0.279925, -0.289369,
		26.092514, 33.698795, 31.429077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943863, 33.452938, 32.205055>,  <25.451752, 33.502850, 31.631636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943863, 33.452938, 32.205055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084431, 33.710674, 31.933371>,  <26.168772, 33.865314, 31.770361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084431, 33.710674, 31.933371>,  <25.943863, 33.452938, 32.205055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084431, 33.710674, 31.933371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171155, 0.669041, 0.723249,
		0.920440, -0.370415, 0.124833,
		0.351421, 0.644342, -0.679211,
		26.189857, 33.903976, 31.729607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597765, 33.751930, 32.446915>,  <25.943863, 33.452938, 32.205055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597765, 33.751930, 32.446915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471205, 34.026535, 32.185047>,  <26.395269, 34.191299, 32.027927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471205, 34.026535, 32.185047>,  <26.597765, 33.751930, 32.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471205, 34.026535, 32.185047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088209, 0.708424, 0.700253,
		0.944515, 0.163814, -0.284703,
		-0.316401, 0.686514, -0.654667,
		26.376284, 34.232491, 31.988647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116619, 34.291431, 32.539040>,  <26.597765, 33.751930, 32.446915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116619, 34.291431, 32.539040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804785, 34.450310, 32.345345>,  <26.617683, 34.545635, 32.229130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804785, 34.450310, 32.345345>,  <27.116619, 34.291431, 32.539040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804785, 34.450310, 32.345345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011773, 0.782329, 0.622754,
		0.626185, 0.479789, -0.614569,
		-0.779586, 0.397195, -0.484234,
		26.570910, 34.569469, 32.200073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686705, 34.573792, 32.034771>,  <27.116619, 34.291431, 32.539040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686705, 34.573792, 32.034771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552425, 34.197258, 32.048573>,  <27.471857, 33.971336, 32.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552425, 34.197258, 32.048573>,  <27.686705, 34.573792, 32.034771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552425, 34.197258, 32.048573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439117, -0.123979, 0.889834,
		-0.833356, 0.313869, 0.454977,
		-0.335699, -0.941337, 0.034507,
		27.451715, 33.914856, 32.058926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317551, 35.060520, 31.891628>,  <27.686705, 34.573792, 32.034771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317551, 35.060520, 31.891628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627356, 34.876270, 31.718212>,  <28.813238, 34.765720, 31.614162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627356, 34.876270, 31.718212>,  <28.317551, 35.060520, 31.891628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627356, 34.876270, 31.718212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354406, -0.883690, 0.305759,
		-0.523956, -0.083164, -0.847676,
		0.774510, -0.460626, -0.433541,
		28.859709, 34.738083, 31.588150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089020, 34.568302, 31.317886>,  <28.317551, 35.060520, 31.891628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089020, 34.568302, 31.317886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408518, 34.466755, 31.536081>,  <28.600218, 34.405827, 31.666998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408518, 34.466755, 31.536081>,  <28.089020, 34.568302, 31.317886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408518, 34.466755, 31.536081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491087, -0.798887, 0.347295,
		0.347616, -0.545282, -0.762778,
		0.798747, -0.253865, 0.545487,
		28.648142, 34.390594, 31.699728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251280, 33.759476, 31.212639>,  <28.089020, 34.568302, 31.317886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251280, 33.759476, 31.212639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314459, 33.909794, 31.577896>,  <28.352365, 33.999985, 31.797050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314459, 33.909794, 31.577896>,  <28.251280, 33.759476, 31.212639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314459, 33.909794, 31.577896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528106, -0.749238, 0.399683,
		0.834360, -0.545366, 0.080118,
		0.157946, 0.375791, 0.913145,
		28.361843, 34.022530, 31.851839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362799, 33.023975, 31.196312>,  <28.251280, 33.759476, 31.212639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362799, 33.023975, 31.196312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430389, 33.301598, 30.916388>,  <28.470943, 33.468170, 30.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430389, 33.301598, 30.916388>,  <28.362799, 33.023975, 31.196312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430389, 33.301598, 30.916388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921576, -0.363026, -0.137516,
		-0.349494, -0.621694, -0.700965,
		0.168976, 0.694053, -0.699813,
		28.481083, 33.509815, 30.706444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714239, 32.714851, 30.560757>,  <28.362799, 33.023975, 31.196312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714239, 32.714851, 30.560757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821089, 33.095268, 30.622927>,  <28.885199, 33.323521, 30.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821089, 33.095268, 30.622927>,  <28.714239, 32.714851, 30.560757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821089, 33.095268, 30.622927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950899, -0.286297, 0.117583,
		0.156324, 0.116384, -0.980825,
		0.267122, 0.951046, 0.155425,
		28.901226, 33.380581, 30.669554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439079, 32.771572, 30.161257>,  <28.714239, 32.714851, 30.560757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439079, 32.771572, 30.161257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393005, 33.024250, 30.467901>,  <29.365360, 33.175858, 30.651888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393005, 33.024250, 30.467901>,  <29.439079, 32.771572, 30.161257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393005, 33.024250, 30.467901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916913, -0.229250, 0.326673,
		0.382104, 0.740544, -0.552803,
		-0.115186, 0.631695, 0.766612,
		29.358450, 33.213757, 30.697886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897387, 33.360344, 30.188816>,  <29.439079, 32.771572, 30.161257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897387, 33.360344, 30.188816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806658, 33.249348, 30.562243>,  <29.752220, 33.182751, 30.786299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806658, 33.249348, 30.562243>,  <29.897387, 33.360344, 30.188816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806658, 33.249348, 30.562243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947407, -0.285068, 0.145449,
		0.225770, 0.917460, 0.327559,
		-0.226820, -0.277494, 0.933568,
		29.738611, 33.166100, 30.842314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475105, 33.582024, 30.396099>,  <29.897387, 33.360344, 30.188816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475105, 33.582024, 30.396099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342918, 33.325359, 30.672958>,  <30.263607, 33.171360, 30.839073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342918, 33.325359, 30.672958>,  <30.475105, 33.582024, 30.396099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342918, 33.325359, 30.672958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943790, -0.230232, 0.237178,
		0.007168, 0.731622, 0.681673,
		-0.330467, -0.641656, 0.692148,
		30.243778, 33.132862, 30.880602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562416, 33.419647, 31.130501>,  <30.475105, 33.582024, 30.396099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562416, 33.419647, 31.130501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532902, 33.022457, 31.093517>,  <30.515194, 32.784142, 31.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532902, 33.022457, 31.093517>,  <30.562416, 33.419647, 31.130501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532902, 33.022457, 31.093517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296880, -0.066636, 0.952587,
		-0.952060, 0.097735, -0.289879,
		-0.073785, -0.992979, -0.092457,
		30.510767, 32.724564, 31.065781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914059, 34.075439, 31.108562>,  <30.562416, 33.419647, 31.130501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914059, 34.075439, 31.108562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957672, 34.451008, 31.239120>,  <30.983841, 34.676350, 31.317455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957672, 34.451008, 31.239120>,  <30.914059, 34.075439, 31.108562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957672, 34.451008, 31.239120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987755, 0.065476, 0.141610,
		0.111589, -0.337839, 0.934565,
		0.109033, 0.938924, 0.326396,
		30.990381, 34.732685, 31.337040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364452, 34.222214, 31.621899>,  <30.914059, 34.075439, 31.108562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364452, 34.222214, 31.621899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470751, 34.593449, 31.517563>,  <30.534531, 34.816189, 31.454962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470751, 34.593449, 31.517563>,  <30.364452, 34.222214, 31.621899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470751, 34.593449, 31.517563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964040, 0.256482, -0.069601,
		0.002304, 0.269955, 0.962870,
		0.265748, 0.928085, -0.260838,
		30.550476, 34.871876, 31.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686226, 34.435570, 32.404587>,  <30.364452, 34.222214, 31.621899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686226, 34.435570, 32.404587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533779, 34.801666, 32.456882>,  <30.442312, 35.021324, 32.488258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533779, 34.801666, 32.456882>,  <30.686226, 34.435570, 32.404587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533779, 34.801666, 32.456882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753053, 0.225276, 0.618193,
		0.536341, 0.334053, -0.775078,
		-0.381116, 0.915237, 0.130735,
		30.419445, 35.076237, 32.496101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196760, 34.890869, 32.362385>,  <30.686226, 34.435570, 32.404587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196760, 34.890869, 32.362385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917694, 35.091908, 32.566605>,  <30.750254, 35.212532, 32.689137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917694, 35.091908, 32.566605>,  <31.196760, 34.890869, 32.362385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917694, 35.091908, 32.566605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716394, 0.483040, 0.503440,
		0.006411, 0.716987, -0.697057,
		-0.697667, 0.502595, 0.510548,
		30.708393, 35.242687, 32.719769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376429, 35.527161, 32.322002>,  <31.196760, 34.890869, 32.362385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376429, 35.527161, 32.322002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186760, 35.426216, 32.659401>,  <31.072960, 35.365650, 32.861839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186760, 35.426216, 32.659401>,  <31.376429, 35.527161, 32.322002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186760, 35.426216, 32.659401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813453, 0.240953, 0.529373,
		-0.336833, 0.937154, 0.091027,
		-0.474171, -0.252357, 0.843492,
		31.044508, 35.350510, 32.912449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690096, 35.984482, 32.891087>,  <31.376429, 35.527161, 32.322002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690096, 35.984482, 32.891087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481607, 35.703598, 33.085087>,  <31.356514, 35.535069, 33.201488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481607, 35.703598, 33.085087>,  <31.690096, 35.984482, 32.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481607, 35.703598, 33.085087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672747, 0.011601, 0.739782,
		-0.525108, 0.711877, 0.466361,
		-0.521223, -0.702208, 0.485005,
		31.325241, 35.492935, 33.230587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330269, 36.433498, 33.103809>,  <31.690096, 35.984482, 32.891087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330269, 36.433498, 33.103809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662514, 36.442669, 33.326359>,  <32.861862, 36.448174, 33.459888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662514, 36.442669, 33.326359>,  <32.330269, 36.433498, 33.103809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662514, 36.442669, 33.326359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223241, -0.929057, -0.294987,
		0.510140, 0.369226, -0.776807,
		0.830615, 0.022930, 0.556375,
		32.911697, 36.449547, 33.493271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715313, 36.044666, 32.708843>,  <32.330269, 36.433498, 33.103809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715313, 36.044666, 32.708843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907471, 36.051720, 33.059593>,  <33.022766, 36.055950, 33.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907471, 36.051720, 33.059593>,  <32.715313, 36.044666, 32.708843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907471, 36.051720, 33.059593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294763, -0.944887, -0.142488,
		0.826036, 0.326921, -0.459116,
		0.480395, 0.017630, 0.876875,
		33.051590, 36.057007, 33.322655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567890, 35.995075, 32.703014>,  <32.715313, 36.044666, 32.708843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567890, 35.995075, 32.703014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373013, 35.820545, 33.005608>,  <33.256084, 35.715828, 33.187164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373013, 35.820545, 33.005608>,  <33.567890, 35.995075, 32.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373013, 35.820545, 33.005608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427428, -0.874529, -0.229140,
		0.761543, 0.211705, 0.612564,
		-0.487194, -0.436327, 0.756479,
		33.226852, 35.689648, 33.232552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209553, 36.224110, 32.900360>,  <33.567890, 35.995075, 32.703014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209553, 36.224110, 32.900360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536205, 36.426311, 33.011776>,  <34.732197, 36.547634, 33.078625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536205, 36.426311, 33.011776>,  <34.209553, 36.224110, 32.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536205, 36.426311, 33.011776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576953, -0.701954, -0.417595,
		-0.015575, 0.501724, -0.864888,
		0.816629, 0.505504, 0.278538,
		34.781193, 36.577961, 33.095337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673756, 35.813072, 32.454582>,  <34.209553, 36.224110, 32.900360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673756, 35.813072, 32.454582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305416, 35.941921, 32.366703>,  <34.084412, 36.019230, 32.313976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305416, 35.941921, 32.366703>,  <34.673756, 35.813072, 32.454582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305416, 35.941921, 32.366703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198737, -0.097010, -0.975240,
		-0.335464, -0.941713, 0.025313,
		-0.920851, 0.322127, -0.219696,
		34.029160, 36.038559, 32.300793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536903, 35.455898, 31.852285>,  <34.673756, 35.813072, 32.454582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536903, 35.455898, 31.852285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298103, 35.776722, 31.845531>,  <34.154823, 35.969215, 31.841480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298103, 35.776722, 31.845531>,  <34.536903, 35.455898, 31.852285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298103, 35.776722, 31.845531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076006, 0.035599, -0.996472,
		-0.798630, -0.596180, -0.082214,
		-0.597004, 0.802061, -0.016883,
		34.119003, 36.017342, 31.840467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929874, 35.292538, 31.420551>,  <34.536903, 35.455898, 31.852285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929874, 35.292538, 31.420551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994930, 35.687073, 31.431030>,  <34.033966, 35.923794, 31.437317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994930, 35.687073, 31.431030>,  <33.929874, 35.292538, 31.420551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994930, 35.687073, 31.431030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066664, 0.015505, -0.997655,
		-0.984430, 0.164007, -0.063232,
		0.162642, 0.986337, 0.026197,
		34.043724, 35.982975, 31.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609703, 35.549458, 30.909334>,  <33.929874, 35.292538, 31.420551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609703, 35.549458, 30.909334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830265, 35.880939, 30.947701>,  <33.962601, 36.079830, 30.970720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830265, 35.880939, 30.947701>,  <33.609703, 35.549458, 30.909334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830265, 35.880939, 30.947701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093835, 0.052633, -0.994196,
		-0.828945, 0.557203, -0.048739,
		0.551403, 0.828707, 0.095915,
		33.995686, 36.129551, 30.976475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405521, 35.974762, 30.407450>,  <33.609703, 35.549458, 30.909334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405521, 35.974762, 30.407450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758831, 36.143635, 30.489031>,  <33.970818, 36.244957, 30.537979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758831, 36.143635, 30.489031>,  <33.405521, 35.974762, 30.407450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758831, 36.143635, 30.489031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203521, 0.046650, -0.977958,
		-0.422390, 0.905310, -0.044718,
		0.883270, 0.422181, 0.203955,
		34.023811, 36.270290, 30.550217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447002, 36.524761, 29.929090>,  <33.405521, 35.974762, 30.407450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447002, 36.524761, 29.929090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830284, 36.476898, 30.033031>,  <34.060253, 36.448181, 30.095396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830284, 36.476898, 30.033031>,  <33.447002, 36.524761, 29.929090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830284, 36.476898, 30.033031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281879, 0.239780, -0.929005,
		0.048857, 0.963425, 0.263488,
		0.958205, -0.119661, 0.259855,
		34.117744, 36.441002, 30.110989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775185, 37.122978, 29.805752>,  <33.447002, 36.524761, 29.929090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775185, 37.122978, 29.805752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077942, 36.861588, 29.802164>,  <34.259598, 36.704754, 29.800011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077942, 36.861588, 29.802164>,  <33.775185, 37.122978, 29.805752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077942, 36.861588, 29.802164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202905, 0.248020, -0.947267,
		0.621238, 0.715164, 0.320318,
		0.756897, -0.653473, -0.008969,
		34.305012, 36.665546, 29.799473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383507, 37.534622, 29.552443>,  <33.775185, 37.122978, 29.805752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383507, 37.534622, 29.552443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460907, 37.146297, 29.495762>,  <34.507347, 36.913303, 29.461754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460907, 37.146297, 29.495762>,  <34.383507, 37.534622, 29.552443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460907, 37.146297, 29.495762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315655, 0.198355, -0.927910,
		0.928935, 0.134822, 0.344824,
		0.193500, -0.970813, -0.141701,
		34.518955, 36.855053, 29.453251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961372, 37.555603, 29.168255>,  <34.383507, 37.534622, 29.552443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961372, 37.555603, 29.168255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833366, 37.179016, 29.125849>,  <34.756565, 36.953064, 29.100405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833366, 37.179016, 29.125849>,  <34.961372, 37.555603, 29.168255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833366, 37.179016, 29.125849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393672, -0.030356, -0.918750,
		0.861751, -0.335747, 0.380342,
		-0.320013, -0.941463, -0.106015,
		34.737362, 36.896576, 29.094044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457535, 37.234180, 28.710409>,  <34.961372, 37.555603, 29.168255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457535, 37.234180, 28.710409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144295, 36.985474, 28.715357>,  <34.956352, 36.836250, 28.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144295, 36.985474, 28.715357>,  <35.457535, 37.234180, 28.710409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144295, 36.985474, 28.715357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178931, -0.244319, -0.953043,
		0.595597, -0.744116, 0.302581,
		-0.783101, -0.621771, 0.012370,
		34.909363, 36.798943, 28.719069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678844, 36.547764, 28.386757>,  <35.457535, 37.234180, 28.710409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678844, 36.547764, 28.386757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284184, 36.590519, 28.337631>,  <35.047386, 36.616173, 28.308155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284184, 36.590519, 28.337631>,  <35.678844, 36.547764, 28.386757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284184, 36.590519, 28.337631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100368, -0.194636, -0.975727,
		-0.128201, -0.975034, 0.181311,
		-0.986656, 0.106892, -0.122815,
		34.988186, 36.622585, 28.300787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409225, 35.982334, 27.948940>,  <35.678844, 36.547764, 28.386757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409225, 35.982334, 27.948940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116005, 36.252422, 27.916189>,  <34.940071, 36.414474, 27.896538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116005, 36.252422, 27.916189>,  <35.409225, 35.982334, 27.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116005, 36.252422, 27.916189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026385, -0.092060, -0.995404,
		-0.679659, -0.731845, 0.049669,
		-0.733053, 0.675225, -0.081879,
		34.896088, 36.454990, 27.891626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090942, 35.866608, 27.283998>,  <35.409225, 35.982334, 27.948940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090942, 35.866608, 27.283998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973289, 36.234978, 27.386286>,  <34.902699, 36.455997, 27.447659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973289, 36.234978, 27.386286>,  <35.090942, 35.866608, 27.283998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973289, 36.234978, 27.386286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117910, 0.230546, -0.965891,
		-0.948465, -0.314247, 0.040776,
		-0.294127, 0.920922, 0.255718,
		34.885052, 36.511253, 27.463001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616283, 35.977543, 26.827284>,  <35.090942, 35.866608, 27.283998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616283, 35.977543, 26.827284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696648, 36.349407, 26.950811>,  <34.744865, 36.572525, 27.024929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696648, 36.349407, 26.950811>,  <34.616283, 35.977543, 26.827284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696648, 36.349407, 26.950811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099100, 0.332920, -0.937733,
		-0.974584, 0.157797, 0.159016,
		0.200911, 0.929659, 0.308821,
		34.756920, 36.628304, 27.043457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130039, 36.369648, 26.498569>,  <34.616283, 35.977543, 26.827284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130039, 36.369648, 26.498569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388489, 36.654545, 26.608290>,  <34.543560, 36.825481, 26.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388489, 36.654545, 26.608290>,  <34.130039, 36.369648, 26.498569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388489, 36.654545, 26.608290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217446, 0.516279, -0.828356,
		-0.731601, 0.475576, 0.488454,
		0.646124, 0.712239, 0.274298,
		34.582325, 36.868217, 26.690578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751476, 37.109859, 26.465580>,  <34.130039, 36.369648, 26.498569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751476, 37.109859, 26.465580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143528, 37.180447, 26.429352>,  <34.378761, 37.222797, 26.407616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143528, 37.180447, 26.429352>,  <33.751476, 37.109859, 26.465580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143528, 37.180447, 26.429352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162046, 0.449071, -0.878679,
		-0.114383, 0.875897, 0.468743,
		0.980131, 0.176464, -0.090569,
		34.437569, 37.233387, 26.402182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857559, 37.797379, 26.172390>,  <33.751476, 37.109859, 26.465580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857559, 37.797379, 26.172390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201595, 37.609905, 26.091820>,  <34.408020, 37.497421, 26.043478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201595, 37.609905, 26.091820>,  <33.857559, 37.797379, 26.172390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201595, 37.609905, 26.091820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109436, 0.216140, -0.970210,
		0.498257, 0.856516, 0.134610,
		0.860095, -0.468683, -0.201427,
		34.459625, 37.469299, 26.031391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074917, 38.290760, 25.570164>,  <33.857559, 37.797379, 26.172390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074917, 38.290760, 25.570164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319016, 37.973877, 25.569206>,  <34.465473, 37.783749, 25.568632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319016, 37.973877, 25.569206>,  <34.074917, 38.290760, 25.570164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319016, 37.973877, 25.569206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042943, 0.036094, -0.998425,
		0.791046, 0.609184, 0.056046,
		0.610248, -0.792207, -0.002392,
		34.502090, 37.736214, 25.568489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708527, 38.491856, 25.204376>,  <34.074917, 38.290760, 25.570164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708527, 38.491856, 25.204376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690357, 38.092274, 25.202587>,  <34.679455, 37.852524, 25.201513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690357, 38.092274, 25.202587>,  <34.708527, 38.491856, 25.204376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690357, 38.092274, 25.202587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085015, 0.000595, -0.996380,
		0.995344, -0.045636, 0.084899,
		-0.045421, -0.998958, -0.004472,
		34.676731, 37.792587, 25.201246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322609, 38.235580, 25.005705>,  <34.708527, 38.491856, 25.204376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322609, 38.235580, 25.005705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041222, 37.962467, 24.926779>,  <34.872387, 37.798599, 24.879423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041222, 37.962467, 24.926779>,  <35.322609, 38.235580, 25.005705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041222, 37.962467, 24.926779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358351, -0.100999, -0.928108,
		0.613769, -0.723606, 0.315726,
		-0.703472, -0.682784, -0.197315,
		34.830181, 37.757633, 24.867584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691059, 37.584541, 24.689610>,  <35.322609, 38.235580, 25.005705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691059, 37.584541, 24.689610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306381, 37.599781, 24.581026>,  <35.075573, 37.608925, 24.515877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306381, 37.599781, 24.581026>,  <35.691059, 37.584541, 24.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306381, 37.599781, 24.581026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268521, -0.068181, -0.960858,
		-0.055115, -0.996945, 0.055339,
		-0.961696, 0.038097, -0.271458,
		35.017872, 37.611214, 24.499588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745163, 37.193153, 24.052073>,  <35.691059, 37.584541, 24.689610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745163, 37.193153, 24.052073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387848, 37.372944, 24.053379>,  <35.173458, 37.480820, 24.054163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387848, 37.372944, 24.053379>,  <35.745163, 37.193153, 24.052073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387848, 37.372944, 24.053379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111000, 0.227632, -0.967400,
		-0.435569, -0.863801, -0.253232,
		-0.893285, 0.449479, 0.003267,
		35.119862, 37.507786, 24.054359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414440, 36.945286, 23.458605>,  <35.745163, 37.193153, 24.052073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414440, 36.945286, 23.458605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232826, 37.287579, 23.557861>,  <35.123859, 37.492954, 23.617414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232826, 37.287579, 23.557861>,  <35.414440, 36.945286, 23.458605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232826, 37.287579, 23.557861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001984, 0.279472, -0.960152,
		-0.890983, -0.435449, -0.128587,
		-0.454034, 0.855734, 0.248141,
		35.096615, 37.544300, 23.632303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913239, 37.005527, 22.905041>,  <35.414440, 36.945286, 23.458605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913239, 37.005527, 22.905041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989002, 37.365726, 23.061623>,  <35.034462, 37.581844, 23.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989002, 37.365726, 23.061623>,  <34.913239, 37.005527, 22.905041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989002, 37.365726, 23.061623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057700, 0.387772, -0.919947,
		-0.980202, 0.196833, 0.021489,
		0.189409, 0.900494, 0.391452,
		35.045826, 37.635876, 23.179058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457905, 37.356350, 22.553576>,  <34.913239, 37.005527, 22.905041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457905, 37.356350, 22.553576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716484, 37.631882, 22.684801>,  <34.871632, 37.797199, 22.763536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716484, 37.631882, 22.684801>,  <34.457905, 37.356350, 22.553576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716484, 37.631882, 22.684801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121624, 0.517529, -0.846978,
		-0.753204, 0.507624, 0.418332,
		0.646445, 0.688827, 0.328066,
		34.910416, 37.838531, 22.783220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170189, 37.887985, 22.207438>,  <34.457905, 37.356350, 22.553576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170189, 37.887985, 22.207438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528912, 38.005939, 22.339371>,  <34.744144, 38.076714, 22.418530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528912, 38.005939, 22.339371>,  <34.170189, 37.887985, 22.207438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528912, 38.005939, 22.339371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169892, 0.458818, -0.872137,
		-0.408512, 0.838170, 0.361370,
		0.896802, 0.294885, 0.329831,
		34.797951, 38.094406, 22.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195896, 38.625042, 22.087259>,  <34.170189, 37.887985, 22.207438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195896, 38.625042, 22.087259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566669, 38.475243, 22.096609>,  <34.789135, 38.385365, 22.102219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566669, 38.475243, 22.096609>,  <34.195896, 38.625042, 22.087259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566669, 38.475243, 22.096609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238293, 0.539400, -0.807628,
		0.289843, 0.754189, 0.589228,
		0.926934, -0.374495, 0.023377,
		34.844749, 38.362896, 22.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602200, 39.163498, 21.810379>,  <34.195896, 38.625042, 22.087259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602200, 39.163498, 21.810379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839256, 38.841522, 21.798714>,  <34.981491, 38.648338, 21.791716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839256, 38.841522, 21.798714>,  <34.602200, 39.163498, 21.810379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839256, 38.841522, 21.798714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422682, 0.341612, -0.839429,
		0.685652, 0.485152, 0.542686,
		0.592639, -0.804940, -0.029162,
		35.017048, 38.600040, 21.789965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284534, 39.304695, 21.721127>,  <34.602200, 39.163498, 21.810379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284534, 39.304695, 21.721127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296413, 38.925236, 21.595152>,  <35.303539, 38.697559, 21.519567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296413, 38.925236, 21.595152>,  <35.284534, 39.304695, 21.721127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296413, 38.925236, 21.595152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560395, 0.276703, -0.780636,
		0.827693, -0.153305, 0.539835,
		0.029699, -0.948648, -0.314937,
		35.305325, 38.640640, 21.500671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924614, 39.202240, 21.446959>,  <35.284534, 39.304695, 21.721127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924614, 39.202240, 21.446959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765873, 38.868771, 21.293333>,  <35.670628, 38.668690, 21.201159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765873, 38.868771, 21.293333>,  <35.924614, 39.202240, 21.446959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765873, 38.868771, 21.293333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537309, 0.128246, -0.833578,
		0.744183, -0.537166, 0.397044,
		-0.396850, -0.833670, -0.384063,
		35.646816, 38.618671, 21.178114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483341, 38.645432, 21.170189>,  <35.924614, 39.202240, 21.446959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483341, 38.645432, 21.170189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136280, 38.624531, 20.972420>,  <35.928043, 38.611992, 20.853758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136280, 38.624531, 20.972420>,  <36.483341, 38.645432, 21.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136280, 38.624531, 20.972420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468252, 0.248377, -0.847968,
		0.167111, -0.967253, -0.191036,
		-0.867649, -0.052252, -0.494424,
		35.875984, 38.608856, 20.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687908, 38.378670, 20.423594>,  <36.483341, 38.645432, 21.170189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687908, 38.378670, 20.423594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312057, 38.504528, 20.369781>,  <36.086548, 38.580044, 20.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312057, 38.504528, 20.369781>,  <36.687908, 38.378670, 20.423594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312057, 38.504528, 20.369781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318709, 0.661511, -0.678843,
		-0.124603, -0.680735, -0.721854,
		-0.939627, 0.314647, -0.134531,
		36.030170, 38.598923, 20.329422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627937, 38.595451, 19.703022>,  <36.687908, 38.378670, 20.423594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627937, 38.595451, 19.703022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284454, 38.758347, 19.827459>,  <36.078365, 38.856083, 19.902121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284454, 38.758347, 19.827459>,  <36.627937, 38.595451, 19.703022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284454, 38.758347, 19.827459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034813, 0.652000, -0.757419,
		-0.511283, -0.639571, -0.574054,
		-0.858707, 0.407240, 0.311091,
		36.026844, 38.880520, 19.920786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201553, 38.652458, 19.096022>,  <36.627937, 38.595451, 19.703022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201553, 38.652458, 19.096022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105740, 38.928257, 19.369434>,  <36.048252, 39.093735, 19.533482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105740, 38.928257, 19.369434>,  <36.201553, 38.652458, 19.096022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105740, 38.928257, 19.369434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238800, 0.724242, -0.646875,
		-0.941062, 0.008277, -0.338134,
		-0.239537, 0.689496, 0.683533,
		36.033878, 39.135105, 19.574493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785347, 39.171700, 18.689297>,  <36.201553, 38.652458, 19.096022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785347, 39.171700, 18.689297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877560, 39.380898, 19.017525>,  <35.932888, 39.506416, 19.214462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877560, 39.380898, 19.017525>,  <35.785347, 39.171700, 18.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877560, 39.380898, 19.017525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065529, 0.833026, -0.549340,
		-0.970856, 0.180412, 0.157769,
		0.230533, 0.522992, 0.820570,
		35.946720, 39.537796, 19.263695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316769, 39.769611, 18.794550>,  <35.785347, 39.171700, 18.689297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316769, 39.769611, 18.794550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664650, 39.858719, 18.970728>,  <35.873379, 39.912182, 19.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664650, 39.858719, 18.970728>,  <35.316769, 39.769611, 18.794550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664650, 39.858719, 18.970728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014533, 0.880409, -0.473992,
		-0.493363, 0.418633, 0.762456,
		0.869702, 0.222769, 0.440446,
		35.925560, 39.925549, 19.102861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329037, 40.480270, 18.984589>,  <35.316769, 39.769611, 18.794550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329037, 40.480270, 18.984589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721954, 40.410461, 19.011818>,  <35.957706, 40.368576, 19.028156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721954, 40.410461, 19.011818>,  <35.329037, 40.480270, 18.984589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721954, 40.410461, 19.011818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187325, 0.913408, -0.361379,
		0.000889, 0.367734, 0.929931,
		0.982298, -0.174521, 0.068074,
		36.016644, 40.358105, 19.032240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571991, 41.094711, 19.211754>,  <35.329037, 40.480270, 18.984589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571991, 41.094711, 19.211754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884205, 40.910793, 19.042353>,  <36.071533, 40.800442, 18.940712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884205, 40.910793, 19.042353>,  <35.571991, 41.094711, 19.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884205, 40.910793, 19.042353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209059, 0.830472, -0.516343,
		0.589120, 0.314485, 0.744336,
		0.780533, -0.459798, -0.423502,
		36.118366, 40.772854, 18.915302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082752, 41.654064, 19.170595>,  <35.571991, 41.094711, 19.211754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082752, 41.654064, 19.170595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193947, 41.356152, 18.927937>,  <36.260662, 41.177402, 18.782341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193947, 41.356152, 18.927937>,  <36.082752, 41.654064, 19.170595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193947, 41.356152, 18.927937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213233, 0.663627, -0.717030,
		0.936619, 0.069968, 0.343292,
		0.277987, -0.744785, -0.606646,
		36.277344, 41.132717, 18.745943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623653, 41.959152, 18.779064>,  <36.082752, 41.654064, 19.170595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623653, 41.959152, 18.779064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482887, 41.675091, 18.535149>,  <36.398426, 41.504654, 18.388800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482887, 41.675091, 18.535149>,  <36.623653, 41.959152, 18.779064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482887, 41.675091, 18.535149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107027, 0.616661, -0.779919,
		0.929892, -0.339731, -0.141008,
		-0.351917, -0.710149, -0.609789,
		36.377312, 41.462048, 18.352211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016075, 41.997101, 18.168894>,  <36.623653, 41.959152, 18.779064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016075, 41.997101, 18.168894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676334, 41.816368, 18.059759>,  <36.472488, 41.707928, 17.994278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676334, 41.816368, 18.059759>,  <37.016075, 41.997101, 18.168894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676334, 41.816368, 18.059759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011731, 0.532944, -0.846069,
		0.527677, -0.715420, -0.457964,
		-0.849364, -0.451824, -0.272830,
		36.421528, 41.680817, 17.977909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110569, 41.986698, 17.446724>,  <37.016075, 41.997101, 18.168894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110569, 41.986698, 17.446724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722515, 41.898159, 17.486404>,  <36.489681, 41.845036, 17.510214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722515, 41.898159, 17.486404>,  <37.110569, 41.986698, 17.446724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722515, 41.898159, 17.486404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199263, 0.494045, -0.846294,
		0.138318, -0.840787, -0.523397,
		-0.970135, -0.221351, 0.099203,
		36.431473, 41.831753, 17.516165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953297, 41.889091, 16.757238>,  <37.110569, 41.986698, 17.446724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953297, 41.889091, 16.757238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594471, 41.935772, 16.927727>,  <36.379177, 41.963779, 17.030020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594471, 41.935772, 16.927727>,  <36.953297, 41.889091, 16.757238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594471, 41.935772, 16.927727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332644, 0.456621, -0.825134,
		-0.290912, -0.881975, -0.370798,
		-0.897061, 0.116698, 0.426220,
		36.325352, 41.970779, 17.055593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483833, 41.889168, 16.243101>,  <36.953297, 41.889091, 16.757238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483833, 41.889168, 16.243101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286999, 42.076710, 16.536499>,  <36.168896, 42.189236, 16.712538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286999, 42.076710, 16.536499>,  <36.483833, 41.889168, 16.243101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286999, 42.076710, 16.536499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552093, 0.483374, -0.679369,
		-0.673082, -0.739270, 0.020990,
		-0.492091, 0.468860, 0.733497,
		36.139370, 42.217369, 16.756548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659565, 41.888386, 16.082699>,  <36.483833, 41.889168, 16.243101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659565, 41.888386, 16.082699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736195, 42.197029, 16.325321>,  <35.782173, 42.382217, 16.470896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736195, 42.197029, 16.325321>,  <35.659565, 41.888386, 16.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736195, 42.197029, 16.325321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701998, 0.539630, -0.464755,
		-0.685928, -0.336768, 0.645050,
		0.191574, 0.771613, 0.606558,
		35.793667, 42.428513, 16.507288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510883, 42.689297, 16.016916>,  <35.659565, 41.888386, 16.082699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510883, 42.689297, 16.016916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899189, 42.781586, 15.990461>,  <36.132172, 42.836960, 15.974588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899189, 42.781586, 15.990461>,  <35.510883, 42.689297, 16.016916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899189, 42.781586, 15.990461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021459, -0.357884, -0.933520,
		-0.239056, 0.904812, -0.352373,
		0.970769, 0.230725, -0.066138,
		36.190418, 42.850803, 15.970620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985764, 43.235218, 16.201548>,  <35.510883, 42.689297, 16.016916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985764, 43.235218, 16.201548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381214, 43.177864, 16.219728>,  <35.618484, 43.143452, 16.230637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381214, 43.177864, 16.219728>,  <34.985764, 43.235218, 16.201548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381214, 43.177864, 16.219728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146228, 0.986980, -0.066989,
		-0.035256, 0.072873, 0.996718,
		0.988622, -0.143386, 0.045453,
		35.677799, 43.134850, 16.233364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284481, 43.333714, 16.173359>,  <34.985764, 43.235218, 16.201548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284481, 43.333714, 16.173359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334286, 43.655685, 16.405422>,  <34.364170, 43.848869, 16.544661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334286, 43.655685, 16.405422>,  <34.284481, 43.333714, 16.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334286, 43.655685, 16.405422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954161, 0.063246, -0.292535,
		-0.272163, 0.589988, -0.760159,
		0.124515, 0.804931, 0.580156,
		34.371639, 43.897163, 16.579470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452518, 44.029278, 15.854949>,  <34.284481, 43.333714, 16.173359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452518, 44.029278, 15.854949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611717, 44.005669, 16.221144>,  <34.707237, 43.991505, 16.440861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611717, 44.005669, 16.221144>,  <34.452518, 44.029278, 15.854949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611717, 44.005669, 16.221144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907513, 0.171357, -0.383480,
		-0.134241, 0.983439, 0.121765,
		0.397995, -0.059024, 0.915487,
		34.731117, 43.987961, 16.495790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763947, 44.650185, 15.967712>,  <34.452518, 44.029278, 15.854949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763947, 44.650185, 15.967712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942768, 44.350006, 16.162436>,  <35.050060, 44.169899, 16.279270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942768, 44.350006, 16.162436>,  <34.763947, 44.650185, 15.967712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942768, 44.350006, 16.162436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828755, 0.142684, -0.541117,
		0.336618, 0.645350, 0.685720,
		0.447051, -0.750443, 0.486807,
		35.076881, 44.124874, 16.308477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167976, 44.667145, 16.619511>,  <34.763947, 44.650185, 15.967712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167976, 44.667145, 16.619511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820587, 44.861877, 16.656929>,  <34.612156, 44.978718, 16.679380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820587, 44.861877, 16.656929>,  <35.167976, 44.667145, 16.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820587, 44.861877, 16.656929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217682, -0.544037, 0.810332,
		0.445390, 0.683387, 0.578455,
		-0.868471, 0.486833, 0.093547,
		34.560047, 45.007927, 16.684994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112659, 45.066521, 17.228619>,  <35.167976, 44.667145, 16.619511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112659, 45.066521, 17.228619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747055, 44.932957, 17.136457>,  <34.527691, 44.852818, 17.081161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747055, 44.932957, 17.136457>,  <35.112659, 45.066521, 17.228619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747055, 44.932957, 17.136457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087611, -0.392066, 0.915756,
		-0.396113, 0.857198, 0.329099,
		-0.914013, -0.333910, -0.230402,
		34.472851, 44.832783, 17.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831280, 45.106121, 17.836432>,  <35.112659, 45.066521, 17.228619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831280, 45.106121, 17.836432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590260, 44.865997, 17.626078>,  <34.445648, 44.721924, 17.499865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590260, 44.865997, 17.626078>,  <34.831280, 45.106121, 17.836432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590260, 44.865997, 17.626078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150288, -0.561800, 0.813508,
		-0.783802, 0.569215, 0.248294,
		-0.602552, -0.600313, -0.525886,
		34.409492, 44.685902, 17.468311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128819, 45.049835, 18.167048>,  <34.831280, 45.106121, 17.836432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128819, 45.049835, 18.167048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224731, 44.728397, 17.949154>,  <34.282280, 44.535534, 17.818419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224731, 44.728397, 17.949154>,  <34.128819, 45.049835, 18.167048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224731, 44.728397, 17.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351505, -0.594894, 0.722873,
		-0.904959, 0.018146, -0.425112,
		0.239780, -0.803599, -0.544733,
		34.296665, 44.487316, 17.785734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589546, 44.619549, 18.331186>,  <34.128819, 45.049835, 18.167048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589546, 44.619549, 18.331186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872368, 44.374996, 18.189043>,  <34.042061, 44.228264, 18.103758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872368, 44.374996, 18.189043>,  <33.589546, 44.619549, 18.331186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872368, 44.374996, 18.189043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291194, -0.709656, 0.641556,
		-0.644417, -0.350140, -0.679800,
		0.707059, -0.611384, -0.355356,
		34.084484, 44.191582, 18.082436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254585, 44.033325, 18.341673>,  <33.589546, 44.619549, 18.331186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254585, 44.033325, 18.341673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639183, 43.923725, 18.333218>,  <33.869942, 43.857964, 18.328144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639183, 43.923725, 18.333218>,  <33.254585, 44.033325, 18.341673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639183, 43.923725, 18.333218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161615, -0.625988, 0.762902,
		-0.222269, -0.730112, -0.646168,
		0.961497, -0.274000, -0.021140,
		33.927631, 43.841526, 18.326876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230785, 43.421867, 18.645458>,  <33.254585, 44.033325, 18.341673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230785, 43.421867, 18.645458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629120, 43.457108, 18.636093>,  <33.868122, 43.478252, 18.630474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629120, 43.457108, 18.636093>,  <33.230785, 43.421867, 18.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629120, 43.457108, 18.636093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077472, -0.682643, 0.726633,
		0.048031, -0.725422, -0.686626,
		0.995837, 0.088096, -0.023412,
		33.927872, 43.483536, 18.629070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471603, 42.714996, 18.668249>,  <33.230785, 43.421867, 18.645458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471603, 42.714996, 18.668249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733482, 42.979431, 18.814857>,  <33.890610, 43.138092, 18.902822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733482, 42.979431, 18.814857>,  <33.471603, 42.714996, 18.668249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733482, 42.979431, 18.814857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079805, -0.542624, 0.836177,
		0.751670, -0.518189, -0.408010,
		0.654693, 0.661090, 0.366520,
		33.929890, 43.177757, 18.924814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918892, 42.271496, 19.071033>,  <33.471603, 42.714996, 18.668249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918892, 42.271496, 19.071033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001217, 42.644447, 19.189896>,  <34.050613, 42.868217, 19.261213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001217, 42.644447, 19.189896>,  <33.918892, 42.271496, 19.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001217, 42.644447, 19.189896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129950, -0.327010, 0.936044,
		0.969925, -0.154036, -0.188467,
		0.205815, 0.932383, 0.297158,
		34.062962, 42.924164, 19.279043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391747, 42.280449, 19.658195>,  <33.918892, 42.271496, 19.071033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391747, 42.280449, 19.658195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219582, 42.639149, 19.699339>,  <34.116283, 42.854370, 19.724026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219582, 42.639149, 19.699339>,  <34.391747, 42.280449, 19.658195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219582, 42.639149, 19.699339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163106, -0.189346, 0.968269,
		0.887774, 0.399976, 0.227763,
		-0.430411, 0.896754, 0.102858,
		34.090458, 42.908176, 19.730196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711548, 42.508430, 20.317238>,  <34.391747, 42.280449, 19.658195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711548, 42.508430, 20.317238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386055, 42.729713, 20.245905>,  <34.190758, 42.862484, 20.203104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386055, 42.729713, 20.245905>,  <34.711548, 42.508430, 20.317238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386055, 42.729713, 20.245905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221626, -0.011674, 0.975062,
		0.537325, 0.832965, 0.132104,
		-0.813735, 0.553203, -0.178334,
		34.141933, 42.895676, 20.192404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767292, 42.897598, 20.812422>,  <34.711548, 42.508430, 20.317238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767292, 42.897598, 20.812422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386299, 42.967697, 20.712763>,  <34.157703, 43.009754, 20.652967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386299, 42.967697, 20.712763>,  <34.767292, 42.897598, 20.812422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386299, 42.967697, 20.712763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233343, 0.105968, 0.966603,
		0.195793, 0.978806, -0.060040,
		-0.952479, 0.175244, -0.249145,
		34.100555, 43.020271, 20.638020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538807, 43.378674, 21.339336>,  <34.767292, 42.897598, 20.812422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538807, 43.378674, 21.339336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204239, 43.229740, 21.178452>,  <34.003498, 43.140381, 21.081921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204239, 43.229740, 21.178452>,  <34.538807, 43.378674, 21.339336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204239, 43.229740, 21.178452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490270, 0.180175, 0.852744,
		-0.245038, 0.910441, -0.333246,
		-0.836416, -0.372335, -0.402212,
		33.953316, 43.118038, 21.057789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076096, 43.779522, 21.614079>,  <34.538807, 43.378674, 21.339336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076096, 43.779522, 21.614079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846004, 43.470978, 21.505177>,  <33.707951, 43.285851, 21.439837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846004, 43.470978, 21.505177>,  <34.076096, 43.779522, 21.614079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846004, 43.470978, 21.505177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508505, 0.076497, 0.857654,
		-0.640732, 0.631787, -0.436243,
		-0.575226, -0.771358, -0.272253,
		33.673435, 43.239571, 21.423500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319752, 43.926624, 21.736649>,  <34.076096, 43.779522, 21.614079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319752, 43.926624, 21.736649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368080, 43.529625, 21.729250>,  <33.397076, 43.291424, 21.724812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368080, 43.529625, 21.729250>,  <33.319752, 43.926624, 21.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368080, 43.529625, 21.729250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467028, -0.073273, 0.881202,
		-0.875950, -0.097829, -0.472379,
		0.120820, -0.992502, -0.018495,
		33.404327, 43.231873, 21.723701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731152, 43.656982, 22.054924>,  <33.319752, 43.926624, 21.736649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731152, 43.656982, 22.054924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991291, 43.353130, 22.054193>,  <33.147373, 43.170818, 22.053755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991291, 43.353130, 22.054193>,  <32.731152, 43.656982, 22.054924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991291, 43.353130, 22.054193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273877, -0.236714, 0.932179,
		-0.708547, -0.605741, -0.361992,
		0.650348, -0.759634, -0.001824,
		33.186394, 43.125240, 22.053646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548859, 43.180542, 22.589182>,  <32.731152, 43.656982, 22.054924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548859, 43.180542, 22.589182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904419, 43.003658, 22.541348>,  <33.117756, 42.897530, 22.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904419, 43.003658, 22.541348>,  <32.548859, 43.180542, 22.589182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904419, 43.003658, 22.541348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120419, -0.477437, 0.870375,
		-0.441976, -0.759283, -0.477647,
		0.888908, -0.442202, -0.119584,
		33.171089, 42.870995, 22.505472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461288, 42.389507, 22.599277>,  <32.548859, 43.180542, 22.589182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461288, 42.389507, 22.599277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840233, 42.456837, 22.708220>,  <33.067600, 42.497234, 22.773584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840233, 42.456837, 22.708220>,  <32.461288, 42.389507, 22.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840233, 42.456837, 22.708220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142121, -0.541166, 0.828819,
		0.286900, -0.823897, -0.488756,
		0.947360, 0.168325, 0.272354,
		33.124439, 42.507336, 22.789927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782825, 41.716389, 22.723066>,  <32.461288, 42.389507, 22.599277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782825, 41.716389, 22.723066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983025, 42.004498, 22.915199>,  <33.103142, 42.177361, 23.030479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983025, 42.004498, 22.915199>,  <32.782825, 41.716389, 22.723066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983025, 42.004498, 22.915199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000071, -0.554790, 0.831990,
		0.865740, -0.416441, -0.277618,
		0.500494, 0.720268, 0.480333,
		33.133171, 42.220577, 23.059299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442604, 41.446743, 22.868092>,  <32.782825, 41.716389, 22.723066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442604, 41.446743, 22.868092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381218, 41.758987, 23.110447>,  <33.344387, 41.946335, 23.255861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381218, 41.758987, 23.110447>,  <33.442604, 41.446743, 22.868092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381218, 41.758987, 23.110447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066399, -0.619913, 0.781856,
		0.985920, 0.079758, 0.146968,
		-0.153466, 0.780606, 0.605889,
		33.335178, 41.993168, 23.292213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788502, 41.236851, 23.572515>,  <33.442604, 41.446743, 22.868092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788502, 41.236851, 23.572515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545437, 41.546551, 23.643265>,  <33.399597, 41.732372, 23.685715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545437, 41.546551, 23.643265>,  <33.788502, 41.236851, 23.572515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545437, 41.546551, 23.643265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271336, -0.411698, 0.869990,
		0.746410, 0.480665, 0.460254,
		-0.607659, 0.774252, 0.176874,
		33.363140, 41.778828, 23.696327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877174, 41.431664, 24.350000>,  <33.788502, 41.236851, 23.572515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877174, 41.431664, 24.350000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537621, 41.617989, 24.250078>,  <33.333889, 41.729786, 24.190125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537621, 41.617989, 24.250078>,  <33.877174, 41.431664, 24.350000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537621, 41.617989, 24.250078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438784, -0.357510, 0.824412,
		0.294717, 0.809445, 0.507879,
		-0.848888, 0.465817, -0.249807,
		33.282955, 41.757732, 24.175137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686871, 41.885532, 24.901966>,  <33.877174, 41.431664, 24.350000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686871, 41.885532, 24.901966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370327, 41.784664, 24.679199>,  <33.180401, 41.724144, 24.545538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370327, 41.784664, 24.679199>,  <33.686871, 41.885532, 24.901966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370327, 41.784664, 24.679199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373763, -0.521322, 0.767154,
		-0.483784, 0.815252, 0.318304,
		-0.791362, -0.252166, -0.556918,
		33.132919, 41.709015, 24.512123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155170, 42.071201, 25.319258>,  <33.686871, 41.885532, 24.901966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155170, 42.071201, 25.319258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994259, 41.812096, 25.060469>,  <32.897713, 41.656631, 24.905195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994259, 41.812096, 25.060469>,  <33.155170, 42.071201, 25.319258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994259, 41.812096, 25.060469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380878, -0.524205, 0.761670,
		-0.832530, 0.552818, -0.035845,
		-0.402275, -0.647766, -0.646973,
		32.873577, 41.617767, 24.866377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418613, 42.020660, 25.416674>,  <33.155170, 42.071201, 25.319258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418613, 42.020660, 25.416674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545479, 41.679352, 25.251099>,  <32.621597, 41.474567, 25.151754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545479, 41.679352, 25.251099>,  <32.418613, 42.020660, 25.416674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545479, 41.679352, 25.251099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289469, -0.502742, 0.814530,
		-0.903116, -0.138514, -0.406443,
		0.317160, -0.853267, -0.413939,
		32.640625, 41.423370, 25.126917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879757, 41.521362, 25.503965>,  <32.418613, 42.020660, 25.416674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879757, 41.521362, 25.503965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209202, 41.302879, 25.442883>,  <32.406868, 41.171791, 25.406233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209202, 41.302879, 25.442883>,  <31.879757, 41.521362, 25.503965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209202, 41.302879, 25.442883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215718, -0.550709, 0.806341,
		-0.524520, -0.631176, -0.571399,
		0.823617, -0.546202, -0.152702,
		32.456287, 41.139019, 25.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637953, 40.862232, 25.697554>,  <31.879757, 41.521362, 25.503965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637953, 40.862232, 25.697554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033138, 40.800434, 25.700544>,  <32.270248, 40.763355, 25.702339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033138, 40.800434, 25.700544>,  <31.637953, 40.862232, 25.697554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033138, 40.800434, 25.700544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096771, -0.579690, 0.809070,
		-0.120659, -0.800058, -0.587664,
		0.987966, -0.154491, 0.007478,
		32.329529, 40.754086, 25.702787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706953, 40.141014, 25.757767>,  <31.637953, 40.862232, 25.697554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706953, 40.141014, 25.757767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051765, 40.307697, 25.873184>,  <32.258652, 40.407707, 25.942434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051765, 40.307697, 25.873184>,  <31.706953, 40.141014, 25.757767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051765, 40.307697, 25.873184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027382, -0.530162, 0.847454,
		0.506117, -0.738432, -0.445605,
		0.862030, 0.416709, 0.288543,
		32.310375, 40.432709, 25.959747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069191, 39.587002, 25.995171>,  <31.706953, 40.141014, 25.757767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069191, 39.587002, 25.995171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275604, 39.874870, 26.180979>,  <32.399452, 40.047592, 26.292463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275604, 39.874870, 26.180979>,  <32.069191, 39.587002, 25.995171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275604, 39.874870, 26.180979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019343, -0.532376, 0.846287,
		0.856348, -0.445700, -0.260805,
		0.516036, 0.719672, 0.464520,
		32.430416, 40.090771, 26.320335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469505, 39.148502, 26.501263>,  <32.069191, 39.587002, 25.995171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469505, 39.148502, 26.501263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505367, 39.529850, 26.616537>,  <32.526886, 39.758659, 26.685701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505367, 39.529850, 26.616537>,  <32.469505, 39.148502, 26.501263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505367, 39.529850, 26.616537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164275, -0.299544, 0.939833,
		0.982332, -0.036918, -0.183470,
		0.089654, 0.953368, 0.288187,
		32.532265, 39.815861, 26.702993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093143, 39.190758, 26.888603>,  <32.469505, 39.148502, 26.501263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093143, 39.190758, 26.888603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847813, 39.488239, 26.994991>,  <32.700615, 39.666729, 27.058825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847813, 39.488239, 26.994991>,  <33.093143, 39.190758, 26.888603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847813, 39.488239, 26.994991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090912, -0.268035, 0.959110,
		0.784582, 0.612425, 0.096781,
		-0.613324, 0.743702, 0.265972,
		32.663815, 39.711349, 27.074783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468052, 39.663891, 27.302362>,  <33.093143, 39.190758, 26.888603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468052, 39.663891, 27.302362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081085, 39.711857, 27.391563>,  <32.848907, 39.740635, 27.445084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081085, 39.711857, 27.391563>,  <33.468052, 39.663891, 27.302362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081085, 39.711857, 27.391563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238172, 0.132102, 0.962197,
		0.085922, 0.983956, -0.156358,
		-0.967415, 0.119914, 0.223000,
		32.790859, 39.747829, 27.458464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437252, 40.125359, 27.834816>,  <33.468052, 39.663891, 27.302362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437252, 40.125359, 27.834816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053394, 40.016922, 27.864725>,  <32.823078, 39.951859, 27.882671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053394, 40.016922, 27.864725>,  <33.437252, 40.125359, 27.834816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053394, 40.016922, 27.864725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066871, 0.038287, 0.997027,
		-0.273151, 0.961791, -0.018614,
		-0.959644, -0.271094, 0.074774,
		32.765503, 39.935593, 27.887157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241451, 40.483101, 28.435389>,  <33.437252, 40.125359, 27.834816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241451, 40.483101, 28.435389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975368, 40.189137, 28.382620>,  <32.815720, 40.012756, 28.350958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975368, 40.189137, 28.382620>,  <33.241451, 40.483101, 28.435389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975368, 40.189137, 28.382620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006447, -0.182329, 0.983216,
		-0.746629, 0.653194, 0.126025,
		-0.665209, -0.734910, -0.131921,
		32.775806, 39.968662, 28.343044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724869, 40.590881, 28.925301>,  <33.241451, 40.483101, 28.435389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724869, 40.590881, 28.925301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719925, 40.204357, 28.822468>,  <32.716957, 39.972443, 28.760767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719925, 40.204357, 28.822468>,  <32.724869, 40.590881, 28.925301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719925, 40.204357, 28.822468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043150, -0.257380, 0.965347,
		-0.998992, 0.000840, 0.044878,
		-0.012362, -0.966310, -0.257084,
		32.716217, 39.914463, 28.745342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245895, 40.380280, 29.384912>,  <32.724869, 40.590881, 28.925301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245895, 40.380280, 29.384912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424595, 40.045727, 29.257866>,  <32.531815, 39.844997, 29.181639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424595, 40.045727, 29.257866>,  <32.245895, 40.380280, 29.384912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424595, 40.045727, 29.257866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158950, -0.423568, 0.891810,
		-0.880424, -0.347934, -0.322173,
		0.446753, -0.836380, -0.317615,
		32.558620, 39.794811, 29.162580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813631, 39.769741, 29.588818>,  <32.245895, 40.380280, 29.384912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813631, 39.769741, 29.588818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181286, 39.619678, 29.540749>,  <32.401878, 39.529640, 29.511908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181286, 39.619678, 29.540749>,  <31.813631, 39.769741, 29.588818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181286, 39.619678, 29.540749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104049, -0.525422, 0.844456,
		-0.379947, -0.763667, -0.521970,
		0.919138, -0.375159, -0.120174,
		32.457027, 39.507130, 29.504696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728718, 39.071342, 29.914267>,  <31.813631, 39.769741, 29.588818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728718, 39.071342, 29.914267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120090, 39.140457, 29.868988>,  <32.354916, 39.181927, 29.841820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120090, 39.140457, 29.868988>,  <31.728718, 39.071342, 29.914267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120090, 39.140457, 29.868988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191312, -0.551320, 0.812063,
		0.077906, -0.816205, -0.572486,
		0.978433, 0.172788, -0.113198,
		32.413620, 39.192295, 29.835028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141373, 38.464840, 30.008230>,  <31.728718, 39.071342, 29.914267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141373, 38.464840, 30.008230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370510, 38.778255, 30.104486>,  <32.507992, 38.966305, 30.162241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370510, 38.778255, 30.104486>,  <32.141373, 38.464840, 30.008230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370510, 38.778255, 30.104486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210211, -0.424208, 0.880829,
		0.792248, -0.453995, -0.407716,
		0.572848, 0.783541, 0.240643,
		32.542366, 39.013317, 30.176680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772373, 38.166412, 30.148949>,  <32.141373, 38.464840, 30.008230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772373, 38.166412, 30.148949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789967, 38.526707, 30.321802>,  <32.800522, 38.742882, 30.425514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789967, 38.526707, 30.321802>,  <32.772373, 38.166412, 30.148949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789967, 38.526707, 30.321802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213108, -0.431057, 0.876798,
		0.976038, 0.053523, -0.210915,
		0.043987, 0.900736, 0.432134,
		32.803162, 38.796928, 30.451443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370525, 38.178349, 30.510973>,  <32.772373, 38.166412, 30.148949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370525, 38.178349, 30.510973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170399, 38.473976, 30.691401>,  <33.050323, 38.651352, 30.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170399, 38.473976, 30.691401>,  <33.370525, 38.178349, 30.510973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170399, 38.473976, 30.691401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177924, -0.422082, 0.888926,
		0.847362, 0.525004, 0.079678,
		-0.500321, 0.739066, 0.451067,
		33.020302, 38.695694, 30.826721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726349, 38.210430, 31.075237>,  <33.370525, 38.178349, 30.510973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726349, 38.210430, 31.075237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416576, 38.428036, 31.204422>,  <33.230713, 38.558598, 31.281933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416576, 38.428036, 31.204422>,  <33.726349, 38.210430, 31.075237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416576, 38.428036, 31.204422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110743, -0.386041, 0.915810,
		0.622890, 0.744998, 0.238716,
		-0.774432, 0.544013, 0.322964,
		33.184246, 38.591240, 31.301311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903812, 38.451099, 31.643072>,  <33.726349, 38.210430, 31.075237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903812, 38.451099, 31.643072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504185, 38.465122, 31.653151>,  <33.264408, 38.473534, 31.659197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504185, 38.465122, 31.653151>,  <33.903812, 38.451099, 31.643072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504185, 38.465122, 31.653151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013584, -0.298741, 0.954238,
		0.040975, 0.953690, 0.297986,
		-0.999068, 0.035052, 0.025196,
		33.204464, 38.475639, 31.660709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542141, 38.590511, 31.592752>,  <33.903812, 38.451099, 31.643072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542141, 38.590511, 31.592752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703697, 38.884575, 31.810528>,  <34.800632, 39.061012, 31.941193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703697, 38.884575, 31.810528>,  <34.542141, 38.590511, 31.592752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703697, 38.884575, 31.810528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091143, 0.559843, -0.823571,
		-0.910255, 0.382255, 0.159111,
		0.403891, 0.735158, 0.544440,
		34.824863, 39.105122, 31.973860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153446, 39.176723, 31.454939>,  <34.542141, 38.590511, 31.592752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153446, 39.176723, 31.454939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524765, 39.277210, 31.564590>,  <34.747559, 39.337502, 31.630383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524765, 39.277210, 31.564590>,  <34.153446, 39.176723, 31.454939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524765, 39.277210, 31.564590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061111, 0.624137, -0.778921,
		-0.366776, 0.739825, 0.564035,
		0.928300, 0.251221, 0.274130,
		34.803253, 39.352577, 31.646830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204567, 39.844257, 31.261501>,  <34.153446, 39.176723, 31.454939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204567, 39.844257, 31.261501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583946, 39.729160, 31.314650>,  <34.811573, 39.660103, 31.346539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583946, 39.729160, 31.314650>,  <34.204567, 39.844257, 31.261501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583946, 39.729160, 31.314650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281034, 0.569696, -0.772313,
		0.146535, 0.769837, 0.621191,
		0.948445, -0.287746, 0.132870,
		34.868481, 39.642838, 31.354511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596313, 40.499794, 31.423899>,  <34.204567, 39.844257, 31.261501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596313, 40.499794, 31.423899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825035, 40.206051, 31.277607>,  <34.962269, 40.029804, 31.189833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825035, 40.206051, 31.277607>,  <34.596313, 40.499794, 31.423899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825035, 40.206051, 31.277607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321255, 0.610629, -0.723828,
		0.754874, 0.296396, 0.585077,
		0.571805, -0.734358, -0.365729,
		34.996578, 39.985744, 31.167889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262974, 40.855572, 31.279259>,  <34.596313, 40.499794, 31.423899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262974, 40.855572, 31.279259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234829, 40.516781, 31.068476>,  <35.217941, 40.313507, 30.942007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234829, 40.516781, 31.068476>,  <35.262974, 40.855572, 31.279259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234829, 40.516781, 31.068476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324132, 0.480188, -0.815082,
		0.943392, -0.228151, 0.240747,
		-0.070358, -0.846975, -0.526956,
		35.213722, 40.262688, 30.910389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928726, 40.674919, 30.989540>,  <35.262974, 40.855572, 31.279259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928726, 40.674919, 30.989540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652088, 40.502068, 30.758036>,  <35.486107, 40.398357, 30.619133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652088, 40.502068, 30.758036>,  <35.928726, 40.674919, 30.989540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652088, 40.502068, 30.758036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452823, 0.364863, -0.813527,
		0.562716, -0.824706, -0.056660,
		-0.691594, -0.432127, -0.578760,
		35.444611, 40.372429, 30.584408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302673, 40.624962, 30.308540>,  <35.928726, 40.674919, 30.989540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302673, 40.624962, 30.308540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915108, 40.552097, 30.241590>,  <35.682568, 40.508377, 30.201420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915108, 40.552097, 30.241590>,  <36.302673, 40.624962, 30.308540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915108, 40.552097, 30.241590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060919, 0.480054, -0.875121,
		0.239763, -0.858117, -0.454036,
		-0.968918, -0.182163, -0.167375,
		35.624432, 40.497448, 30.191378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228333, 40.442234, 29.586311>,  <36.302673, 40.624962, 30.308540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228333, 40.442234, 29.586311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858166, 40.538536, 29.703371>,  <35.636066, 40.596317, 29.773607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858166, 40.538536, 29.703371>,  <36.228333, 40.442234, 29.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858166, 40.538536, 29.703371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131385, 0.520516, -0.843683,
		-0.355450, -0.819207, -0.450061,
		-0.925415, 0.240756, 0.292649,
		35.580540, 40.610764, 29.791166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915783, 40.494823, 28.943180>,  <36.228333, 40.442234, 29.586311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915783, 40.494823, 28.943180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669888, 40.658119, 29.213125>,  <35.522350, 40.756096, 29.375092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669888, 40.658119, 29.213125>,  <35.915783, 40.494823, 28.943180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669888, 40.658119, 29.213125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452890, 0.517816, -0.725781,
		-0.645750, -0.751800, -0.133430,
		-0.614734, 0.408243, 0.674862,
		35.485466, 40.780594, 29.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247799, 40.316025, 28.652466>,  <35.915783, 40.494823, 28.943180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247799, 40.316025, 28.652466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287067, 40.642342, 28.880447>,  <35.310627, 40.838131, 29.017237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287067, 40.642342, 28.880447>,  <35.247799, 40.316025, 28.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287067, 40.642342, 28.880447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415670, 0.553981, -0.721335,
		-0.904202, -0.166100, 0.393483,
		0.098169, 0.815792, 0.569953,
		35.316517, 40.887077, 29.051434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646469, 40.736092, 28.589773>,  <35.247799, 40.316025, 28.652466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646469, 40.736092, 28.589773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933510, 40.992165, 28.699472>,  <35.105732, 41.145809, 28.765293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933510, 40.992165, 28.699472>,  <34.646469, 40.736092, 28.589773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933510, 40.992165, 28.699472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394124, 0.697938, -0.597953,
		-0.574211, 0.321002, 0.753153,
		0.717599, 0.640187, 0.274250,
		35.148788, 41.184219, 28.781748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297661, 41.365398, 28.520737>,  <34.646469, 40.736092, 28.589773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297661, 41.365398, 28.520737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687687, 41.451775, 28.541231>,  <34.921703, 41.503601, 28.553528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687687, 41.451775, 28.541231>,  <34.297661, 41.365398, 28.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687687, 41.451775, 28.541231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072252, 0.527153, -0.846693,
		-0.209841, 0.821877, 0.529609,
		0.975062, 0.215936, 0.051236,
		34.980206, 41.516556, 28.556602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251995, 42.036469, 28.493580>,  <34.297661, 41.365398, 28.520737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251995, 42.036469, 28.493580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625858, 41.938835, 28.390173>,  <34.850178, 41.880257, 28.328129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625858, 41.938835, 28.390173>,  <34.251995, 42.036469, 28.493580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625858, 41.938835, 28.390173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120439, 0.466759, -0.876145,
		0.334518, 0.850034, 0.406865,
		0.934661, -0.244084, -0.258517,
		34.906258, 41.865608, 28.312618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509369, 42.655430, 28.193436>,  <34.251995, 42.036469, 28.493580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509369, 42.655430, 28.193436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735512, 42.354572, 28.057993>,  <34.871197, 42.174057, 27.976727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735512, 42.354572, 28.057993>,  <34.509369, 42.655430, 28.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735512, 42.354572, 28.057993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044138, 0.382333, -0.922970,
		0.823667, 0.536750, 0.182955,
		0.565354, -0.752144, -0.338606,
		34.905117, 42.128929, 27.956411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908474, 42.984287, 27.778444>,  <34.509369, 42.655430, 28.193436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908474, 42.984287, 27.778444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964684, 42.611618, 27.644438>,  <34.998409, 42.388016, 27.564034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964684, 42.611618, 27.644438>,  <34.908474, 42.984287, 27.778444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964684, 42.611618, 27.644438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103641, 0.350358, -0.930864,
		0.984639, 0.096084, 0.145791,
		0.140520, -0.931675, -0.335017,
		35.006840, 42.332115, 27.543932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603172, 42.895241, 27.443489>,  <34.908474, 42.984287, 27.778444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603172, 42.895241, 27.443489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381111, 42.616089, 27.262482>,  <35.247875, 42.448597, 27.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381111, 42.616089, 27.262482>,  <35.603172, 42.895241, 27.443489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381111, 42.616089, 27.262482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341534, 0.304805, -0.889072,
		0.758394, -0.648120, 0.069136,
		-0.555152, -0.697879, -0.452517,
		35.214565, 42.406727, 27.126726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883823, 42.904346, 26.888521>,  <35.603172, 42.895241, 27.443489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883823, 42.904346, 26.888521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592976, 42.636665, 26.827244>,  <35.418468, 42.476059, 26.790478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592976, 42.636665, 26.827244>,  <35.883823, 42.904346, 26.888521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592976, 42.636665, 26.827244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109743, 0.106971, -0.988187,
		0.677683, -0.735342, -0.004341,
		-0.727119, -0.669201, -0.153191,
		35.374840, 42.435905, 26.781286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166973, 42.446228, 26.429916>,  <35.883823, 42.904346, 26.888521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166973, 42.446228, 26.429916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770298, 42.398067, 26.411760>,  <35.532291, 42.369171, 26.400867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770298, 42.398067, 26.411760>,  <36.166973, 42.446228, 26.429916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770298, 42.398067, 26.411760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028833, 0.135856, -0.990309,
		0.125382, -0.983388, -0.131256,
		-0.991690, -0.120382, -0.045388,
		35.472794, 42.361946, 26.398144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016830, 41.986973, 25.897573>,  <36.166973, 42.446228, 26.429916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016830, 41.986973, 25.897573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667439, 42.179070, 25.929590>,  <35.457802, 42.294327, 25.948799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667439, 42.179070, 25.929590>,  <36.016830, 41.986973, 25.897573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667439, 42.179070, 25.929590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015130, 0.191094, -0.981455,
		-0.486628, -0.856069, -0.174182,
		-0.873479, 0.480239, 0.080040,
		35.405396, 42.323143, 25.953602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602581, 41.642326, 25.365839>,  <36.016830, 41.986973, 25.897573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602581, 41.642326, 25.365839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392803, 41.972912, 25.447731>,  <35.266937, 42.171261, 25.496866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392803, 41.972912, 25.447731>,  <35.602581, 41.642326, 25.365839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392803, 41.972912, 25.447731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002483, 0.238966, -0.971025,
		-0.851438, -0.509761, -0.123273,
		-0.524449, 0.826462, 0.204730,
		35.235470, 42.220852, 25.509150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944065, 41.690567, 24.885645>,  <35.602581, 41.642326, 25.365839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944065, 41.690567, 24.885645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041222, 42.056107, 25.015799>,  <35.099518, 42.275433, 25.093891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041222, 42.056107, 25.015799>,  <34.944065, 41.690567, 24.885645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041222, 42.056107, 25.015799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090823, 0.355379, -0.930299,
		-0.965792, 0.196412, 0.169318,
		0.242894, 0.913854, 0.325383,
		35.114090, 42.330261, 25.113413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398968, 42.257763, 24.665623>,  <34.944065, 41.690567, 24.885645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398968, 42.257763, 24.665623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742054, 42.453369, 24.729107>,  <34.947906, 42.570732, 24.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742054, 42.453369, 24.729107>,  <34.398968, 42.257763, 24.665623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742054, 42.453369, 24.729107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021294, 0.342221, -0.939378,
		-0.513682, 0.802340, 0.303942,
		0.857716, 0.489014, 0.158708,
		34.999371, 42.600075, 24.776720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304203, 42.873257, 24.277020>,  <34.398968, 42.257763, 24.665623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304203, 42.873257, 24.277020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696526, 42.875656, 24.354980>,  <34.931919, 42.877094, 24.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696526, 42.875656, 24.354980>,  <34.304203, 42.873257, 24.277020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696526, 42.875656, 24.354980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173695, 0.427375, -0.887232,
		-0.088619, 0.904054, 0.418130,
		0.980804, 0.005998, 0.194903,
		34.990768, 42.877457, 24.413452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589218, 43.618465, 24.263489>,  <34.304203, 42.873257, 24.277020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589218, 43.618465, 24.263489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893291, 43.368347, 24.192924>,  <35.075737, 43.218277, 24.150585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893291, 43.368347, 24.192924>,  <34.589218, 43.618465, 24.263489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893291, 43.368347, 24.192924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190583, 0.474197, -0.859544,
		0.621122, 0.619794, 0.479649,
		0.760188, -0.625295, -0.176412,
		35.121349, 43.180759, 24.140001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268726, 44.070442, 24.059702>,  <34.589218, 43.618465, 24.263489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268726, 44.070442, 24.059702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393391, 43.708412, 23.943974>,  <35.468189, 43.491196, 23.874537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393391, 43.708412, 23.943974>,  <35.268726, 44.070442, 24.059702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393391, 43.708412, 23.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407843, 0.402434, -0.819580,
		0.858214, 0.137433, 0.494551,
		0.311661, -0.905074, -0.289323,
		35.486889, 43.436890, 23.857176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031067, 44.107521, 23.774290>,  <35.268726, 44.070442, 24.059702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031067, 44.107521, 23.774290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809856, 43.804897, 23.634699>,  <35.677132, 43.623325, 23.550943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809856, 43.804897, 23.634699>,  <36.031067, 44.107521, 23.774290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809856, 43.804897, 23.634699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227042, 0.266162, -0.936808,
		0.801633, -0.597311, 0.024575,
		-0.553025, -0.756556, -0.348979,
		35.643948, 43.577930, 23.530005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385914, 43.722057, 23.315575>,  <36.031067, 44.107521, 23.774290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385914, 43.722057, 23.315575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008713, 43.651108, 23.202946>,  <35.782391, 43.608540, 23.135368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008713, 43.651108, 23.202946>,  <36.385914, 43.722057, 23.315575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008713, 43.651108, 23.202946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263543, 0.118598, -0.957329,
		0.203200, -0.976971, -0.065093,
		-0.943003, -0.177375, -0.281573,
		35.725811, 43.597897, 23.118473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425732, 43.209671, 22.732843>,  <36.385914, 43.722057, 23.315575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425732, 43.209671, 22.732843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080009, 43.409290, 22.707769>,  <35.872578, 43.529060, 22.692726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080009, 43.409290, 22.707769>,  <36.425732, 43.209671, 22.732843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080009, 43.409290, 22.707769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154836, 0.145424, -0.977178,
		-0.478540, -0.854287, -0.202961,
		-0.864306, 0.499045, -0.062683,
		35.820717, 43.559002, 22.688965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131233, 43.046120, 22.019012>,  <36.425732, 43.209671, 22.732843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131233, 43.046120, 22.019012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943085, 43.380543, 22.131983>,  <35.830196, 43.581196, 22.199766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943085, 43.380543, 22.131983>,  <36.131233, 43.046120, 22.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943085, 43.380543, 22.131983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132860, 0.383486, -0.913940,
		-0.872410, -0.392368, -0.291459,
		-0.470371, 0.836054, 0.282427,
		35.801971, 43.631359, 22.216711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857346, 43.390450, 21.298094>,  <36.131233, 43.046120, 22.019012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857346, 43.390450, 21.298094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776089, 43.678288, 21.563702>,  <35.727337, 43.850990, 21.723066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776089, 43.678288, 21.563702>,  <35.857346, 43.390450, 21.298094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776089, 43.678288, 21.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129700, 0.691960, -0.710190,
		-0.970522, -0.058144, -0.233896,
		-0.203140, 0.719590, 0.664021,
		35.715145, 43.894165, 21.762907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330650, 43.826096, 21.006008>,  <35.857346, 43.390450, 21.298094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330650, 43.826096, 21.006008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559532, 44.019310, 21.271112>,  <35.696861, 44.135239, 21.430176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559532, 44.019310, 21.271112>,  <35.330650, 43.826096, 21.006008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559532, 44.019310, 21.271112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161383, 0.726018, -0.668471,
		-0.804072, 0.489463, 0.337480,
		0.572209, 0.483036, 0.662762,
		35.731194, 44.164219, 21.469940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005745, 44.522194, 21.054886>,  <35.330650, 43.826096, 21.006008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005745, 44.522194, 21.054886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395786, 44.510754, 21.142839>,  <35.629810, 44.503891, 21.195612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395786, 44.510754, 21.142839>,  <35.005745, 44.522194, 21.054886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395786, 44.510754, 21.142839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166174, 0.750806, -0.639278,
		-0.146807, 0.659904, 0.736868,
		0.975107, -0.028598, 0.219882,
		35.688320, 44.502174, 21.208805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202221, 45.196186, 20.909826>,  <35.005745, 44.522194, 21.054886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202221, 45.196186, 20.909826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560352, 45.019478, 20.932573>,  <35.775230, 44.913452, 20.946220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560352, 45.019478, 20.932573>,  <35.202221, 45.196186, 20.909826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560352, 45.019478, 20.932573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355948, 0.632889, -0.687570,
		0.267757, 0.635839, 0.723888,
		0.895325, -0.441768, 0.056866,
		35.828949, 44.886948, 20.949633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671471, 45.726921, 21.194601>,  <35.202221, 45.196186, 20.909826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671471, 45.726921, 21.194601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883091, 45.443817, 21.007334>,  <36.010063, 45.273956, 20.894974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883091, 45.443817, 21.007334>,  <35.671471, 45.726921, 21.194601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883091, 45.443817, 21.007334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444119, 0.701045, -0.557938,
		0.723091, 0.087258, 0.685219,
		0.529054, -0.707759, -0.468166,
		36.041805, 45.231491, 20.866884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360149, 46.085808, 20.967051>,  <35.671471, 45.726921, 21.194601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360149, 46.085808, 20.967051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314945, 45.755047, 20.746700>,  <36.287823, 45.556591, 20.614491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314945, 45.755047, 20.746700>,  <36.360149, 46.085808, 20.967051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314945, 45.755047, 20.746700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419044, 0.463041, -0.781022,
		0.900906, -0.319104, 0.294180,
		-0.113010, -0.826901, -0.550875,
		36.281044, 45.506977, 20.581438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949535, 46.052509, 20.562639>,  <36.360149, 46.085808, 20.967051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949535, 46.052509, 20.562639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711761, 45.796841, 20.367456>,  <36.569096, 45.643440, 20.250347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711761, 45.796841, 20.367456>,  <36.949535, 46.052509, 20.562639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711761, 45.796841, 20.367456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229362, 0.446832, -0.864716,
		0.770740, -0.625936, -0.119010,
		-0.594435, -0.639175, -0.487957,
		36.533432, 45.605087, 20.221069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417850, 45.808876, 19.953104>,  <36.949535, 46.052509, 20.562639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417850, 45.808876, 19.953104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023319, 45.780323, 19.893702>,  <36.786598, 45.763191, 19.858059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023319, 45.780323, 19.893702>,  <37.417850, 45.808876, 19.953104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023319, 45.780323, 19.893702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117530, 0.326903, -0.937721,
		0.115483, -0.942358, -0.314046,
		-0.986332, -0.071381, -0.148507,
		36.727421, 45.758907, 19.849150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279530, 45.006565, 19.737741>,  <37.417850, 45.808876, 19.953104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279530, 45.006565, 19.737741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203266, 44.873791, 19.368208>,  <37.157509, 44.794125, 19.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203266, 44.873791, 19.368208>,  <37.279530, 45.006565, 19.737741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203266, 44.873791, 19.368208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888063, -0.342719, 0.306411,
		-0.418324, 0.878842, -0.229438,
		-0.190654, -0.331935, -0.923835,
		37.146069, 44.774212, 19.091057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838364, 44.998295, 19.200115>,  <37.279530, 45.006565, 19.737741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838364, 44.998295, 19.200115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209873, 44.944901, 19.061800>,  <38.432777, 44.912865, 18.978811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209873, 44.944901, 19.061800>,  <37.838364, 44.998295, 19.200115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209873, 44.944901, 19.061800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196976, -0.612516, 0.765523,
		-0.313987, -0.779106, -0.542592,
		0.928770, -0.133487, -0.345787,
		38.488503, 44.904854, 18.958063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920280, 44.447281, 19.485937>,  <37.838364, 44.998295, 19.200115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920280, 44.447281, 19.485937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295826, 44.558575, 19.404823>,  <38.521152, 44.625351, 19.356155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295826, 44.558575, 19.404823>,  <37.920280, 44.447281, 19.485937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295826, 44.558575, 19.404823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293379, -0.338303, 0.894137,
		0.180174, -0.898965, -0.399248,
		0.938864, 0.278231, -0.202784,
		38.577484, 44.642044, 19.343988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410282, 43.874966, 19.671038>,  <37.920280, 44.447281, 19.485937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410282, 43.874966, 19.671038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659401, 44.187279, 19.691048>,  <38.808872, 44.374664, 19.703054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659401, 44.187279, 19.691048>,  <38.410282, 43.874966, 19.671038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659401, 44.187279, 19.691048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459068, -0.416463, 0.784739,
		0.633543, -0.465769, -0.617804,
		0.622800, 0.780780, 0.050028,
		38.846241, 44.421513, 19.706057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151276, 43.586712, 19.698370>,  <38.410282, 43.874966, 19.671038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151276, 43.586712, 19.698370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140614, 43.959515, 19.842957>,  <39.134216, 44.183197, 19.929708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140614, 43.959515, 19.842957>,  <39.151276, 43.586712, 19.698370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140614, 43.959515, 19.842957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318479, -0.334835, 0.886824,
		0.947555, 0.138754, -0.287901,
		-0.026651, 0.932005, 0.361465,
		39.132618, 44.239117, 19.951395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653008, 43.500656, 20.236130>,  <39.151276, 43.586712, 19.698370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653008, 43.500656, 20.236130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500290, 43.865795, 20.294022>,  <39.408657, 44.084877, 20.328756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500290, 43.865795, 20.294022>,  <39.653008, 43.500656, 20.236130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500290, 43.865795, 20.294022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138649, -0.098251, 0.985456,
		0.913787, 0.396310, -0.089053,
		-0.381797, 0.912844, 0.144728,
		39.385750, 44.139648, 20.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118187, 43.837685, 20.830908>,  <39.653008, 43.500656, 20.236130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118187, 43.837685, 20.830908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750816, 43.995884, 20.827673>,  <39.530392, 44.090805, 20.825733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750816, 43.995884, 20.827673>,  <40.118187, 43.837685, 20.830908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750816, 43.995884, 20.827673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063454, -0.127115, 0.989856,
		0.390462, 0.909627, 0.141843,
		-0.918430, 0.395501, -0.008086,
		39.475288, 44.114532, 20.825247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036030, 44.356808, 21.393230>,  <40.118187, 43.837685, 20.830908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036030, 44.356808, 21.393230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669651, 44.229126, 21.295942>,  <39.449825, 44.152515, 21.237570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669651, 44.229126, 21.295942>,  <40.036030, 44.356808, 21.393230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669651, 44.229126, 21.295942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218582, -0.111449, 0.969433,
		-0.336553, 0.941110, 0.032309,
		-0.915944, -0.319204, -0.243218,
		39.394867, 44.133366, 21.222977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634773, 44.604088, 21.933670>,  <40.036030, 44.356808, 21.393230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634773, 44.604088, 21.933670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403545, 44.316006, 21.780235>,  <39.264809, 44.143158, 21.688173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403545, 44.316006, 21.780235>,  <39.634773, 44.604088, 21.933670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403545, 44.316006, 21.780235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354514, -0.201739, 0.913029,
		-0.734950, 0.663785, -0.138702,
		-0.578073, -0.720202, -0.383589,
		39.230122, 44.099945, 21.665159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106644, 44.679619, 22.417933>,  <39.634773, 44.604088, 21.933670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106644, 44.679619, 22.417933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022408, 44.337337, 22.228857>,  <38.971867, 44.131969, 22.115412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022408, 44.337337, 22.228857>,  <39.106644, 44.679619, 22.417933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022408, 44.337337, 22.228857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336853, -0.390399, 0.856807,
		-0.917705, 0.339659, -0.206032,
		-0.210587, -0.855699, -0.472687,
		38.959232, 44.080627, 22.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402969, 44.494717, 22.574522>,  <39.106644, 44.679619, 22.417933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402969, 44.494717, 22.574522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563587, 44.145378, 22.464228>,  <38.659958, 43.935776, 22.398050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563587, 44.145378, 22.464228>,  <38.402969, 44.494717, 22.574522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563587, 44.145378, 22.464228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215291, -0.382650, 0.898459,
		-0.890175, -0.301408, -0.341674,
		0.401544, -0.873345, -0.275736,
		38.684052, 43.883373, 22.381508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932690, 44.008091, 22.764101>,  <38.402969, 44.494717, 22.574522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932690, 44.008091, 22.764101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279968, 43.809765, 22.756063>,  <38.488335, 43.690769, 22.751240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279968, 43.809765, 22.756063>,  <37.932690, 44.008091, 22.764101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279968, 43.809765, 22.756063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319190, -0.589002, 0.742425,
		-0.379944, -0.638155, -0.669628,
		0.868194, -0.495818, -0.020096,
		38.540428, 43.661018, 22.750034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801155, 43.309696, 22.785814>,  <37.932690, 44.008091, 22.764101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801155, 43.309696, 22.785814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183498, 43.329327, 22.901699>,  <38.412903, 43.341103, 22.971230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183498, 43.329327, 22.901699>,  <37.801155, 43.309696, 22.785814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183498, 43.329327, 22.901699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222261, -0.524166, 0.822101,
		0.192201, -0.850201, -0.490119,
		0.955855, 0.049075, 0.289711,
		38.470257, 43.344048, 22.988613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972839, 42.650845, 23.192261>,  <37.801155, 43.309696, 22.785814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972839, 42.650845, 23.192261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239201, 42.921265, 23.318459>,  <38.399017, 43.083515, 23.394176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239201, 42.921265, 23.318459>,  <37.972839, 42.650845, 23.192261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239201, 42.921265, 23.318459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087063, -0.349580, 0.932852,
		0.740943, -0.648655, -0.173927,
		0.665901, 0.676048, 0.315493,
		38.438972, 43.124081, 23.413107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399330, 42.268417, 23.544582>,  <37.972839, 42.650845, 23.192261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399330, 42.268417, 23.544582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456238, 42.642761, 23.673531>,  <38.490383, 42.867367, 23.750900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456238, 42.642761, 23.673531>,  <38.399330, 42.268417, 23.544582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456238, 42.642761, 23.673531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175040, -0.296765, 0.938771,
		0.974228, -0.189985, 0.121593,
		0.142268, 0.935861, 0.322372,
		38.498917, 42.923519, 23.770243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686714, 42.142506, 24.246082>,  <38.399330, 42.268417, 23.544582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686714, 42.142506, 24.246082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566631, 42.523979, 24.253756>,  <38.494579, 42.752861, 24.258360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566631, 42.523979, 24.253756>,  <38.686714, 42.142506, 24.246082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566631, 42.523979, 24.253756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350541, -0.129007, 0.927620,
		0.887127, 0.271757, 0.373033,
		-0.300211, 0.953680, 0.019184,
		38.476566, 42.810081, 24.259510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999592, 42.369019, 24.790581>,  <38.686714, 42.142506, 24.246082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999592, 42.369019, 24.790581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697395, 42.618050, 24.708967>,  <38.516079, 42.767467, 24.660000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697395, 42.618050, 24.708967>,  <38.999592, 42.369019, 24.790581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697395, 42.618050, 24.708967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437867, -0.248157, 0.864113,
		0.487347, 0.742168, 0.460087,
		-0.755491, 0.622579, -0.204032,
		38.470749, 42.804825, 24.647758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911381, 42.767067, 25.385487>,  <38.999592, 42.369019, 24.790581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911381, 42.767067, 25.385487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562450, 42.812710, 25.195318>,  <38.353092, 42.840096, 25.081217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562450, 42.812710, 25.195318>,  <38.911381, 42.767067, 25.385487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562450, 42.812710, 25.195318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465367, 0.104406, 0.878938,
		0.149930, 0.987967, -0.037975,
		-0.872327, 0.114107, -0.475421,
		38.300751, 42.846943, 25.052692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587982, 43.376930, 25.682110>,  <38.911381, 42.767067, 25.385487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587982, 43.376930, 25.682110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337360, 43.105133, 25.529421>,  <38.186989, 42.942055, 25.437807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337360, 43.105133, 25.529421>,  <38.587982, 43.376930, 25.682110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337360, 43.105133, 25.529421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354469, -0.187747, 0.916026,
		-0.694104, 0.709250, -0.123226,
		-0.626556, -0.679497, -0.381723,
		38.149395, 42.901283, 25.414904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929520, 43.408878, 26.099777>,  <38.587982, 43.376930, 25.682110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929520, 43.408878, 26.099777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899483, 43.046547, 25.933002>,  <37.881462, 42.829147, 25.832937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899483, 43.046547, 25.933002>,  <37.929520, 43.408878, 26.099777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899483, 43.046547, 25.933002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398522, -0.356013, 0.845242,
		-0.914080, 0.229626, -0.334260,
		-0.075089, -0.905829, -0.416936,
		37.876957, 42.774799, 25.807922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405205, 43.149658, 26.434454>,  <37.929520, 43.408878, 26.099777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405205, 43.149658, 26.434454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527897, 42.808296, 26.265877>,  <37.601513, 42.603477, 26.164730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527897, 42.808296, 26.265877>,  <37.405205, 43.149658, 26.434454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527897, 42.808296, 26.265877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154860, -0.481636, 0.862581,
		-0.939114, -0.199315, -0.279891,
		0.306731, -0.853405, -0.421445,
		37.619915, 42.552273, 26.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904793, 42.614235, 26.440929>,  <37.405205, 43.149658, 26.434454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904793, 42.614235, 26.440929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221733, 42.378727, 26.377018>,  <37.411896, 42.237423, 26.338671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221733, 42.378727, 26.377018>,  <36.904793, 42.614235, 26.440929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221733, 42.378727, 26.377018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226946, -0.527574, 0.818634,
		-0.566286, -0.612382, -0.551642,
		0.792349, -0.588773, -0.159780,
		37.459438, 42.202095, 26.329084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725292, 41.896851, 26.715733>,  <36.904793, 42.614235, 26.440929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725292, 41.896851, 26.715733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125126, 41.885460, 26.714199>,  <37.365028, 41.878628, 26.713280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125126, 41.885460, 26.714199>,  <36.725292, 41.896851, 26.715733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125126, 41.885460, 26.714199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015038, -0.632175, 0.774679,
		-0.024482, -0.774302, -0.632343,
		0.999587, -0.028474, -0.003833,
		37.425003, 41.876919, 26.713049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000889, 41.235138, 26.612511>,  <36.725292, 41.896851, 26.715733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000889, 41.235138, 26.612511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266933, 41.440701, 26.829224>,  <37.426559, 41.564037, 26.959251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266933, 41.440701, 26.829224>,  <37.000889, 41.235138, 26.612511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266933, 41.440701, 26.829224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058985, -0.687100, 0.724164,
		0.744414, -0.513605, -0.426683,
		0.665108, 0.513910, 0.541782,
		37.466465, 41.594875, 26.991758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184681, 40.762566, 27.079149>,  <37.000889, 41.235138, 26.612511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184681, 40.762566, 27.079149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388443, 41.077496, 27.218073>,  <37.510700, 41.266453, 27.301428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388443, 41.077496, 27.218073>,  <37.184681, 40.762566, 27.079149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388443, 41.077496, 27.218073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173321, -0.489206, 0.854773,
		0.842889, -0.375233, -0.385665,
		0.509409, 0.787323, 0.347310,
		37.541267, 41.313694, 27.322266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758350, 40.430664, 27.340965>,  <37.184681, 40.762566, 27.079149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758350, 40.430664, 27.340965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694942, 40.786633, 27.512035>,  <37.656898, 41.000214, 27.614677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694942, 40.786633, 27.512035>,  <37.758350, 40.430664, 27.340965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694942, 40.786633, 27.512035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254779, -0.381616, 0.888514,
		0.953918, 0.249810, -0.166241,
		-0.158519, 0.889924, 0.427677,
		37.647388, 41.053608, 27.640339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349476, 40.591431, 27.813795>,  <37.758350, 40.430664, 27.340965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349476, 40.591431, 27.813795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029629, 40.793400, 27.943815>,  <37.837719, 40.914581, 28.021828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029629, 40.793400, 27.943815>,  <38.349476, 40.591431, 27.813795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029629, 40.793400, 27.943815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280859, -0.163985, 0.945636,
		0.530776, 0.847444, -0.010686,
		-0.799621, 0.504922, 0.325052,
		37.789742, 40.944878, 28.041330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563194, 40.839806, 28.391138>,  <38.349476, 40.591431, 27.813795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563194, 40.839806, 28.391138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181473, 40.948830, 28.440149>,  <37.952438, 41.014244, 28.469557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181473, 40.948830, 28.440149>,  <38.563194, 40.839806, 28.391138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181473, 40.948830, 28.440149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114188, -0.046313, 0.992379,
		0.276160, 0.961023, 0.013074,
		-0.954304, 0.272562, 0.122528,
		37.895180, 41.030598, 28.476908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545425, 41.481762, 28.793430>,  <38.563194, 40.839806, 28.391138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545425, 41.481762, 28.793430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192425, 41.298576, 28.836252>,  <37.980625, 41.188667, 28.861946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192425, 41.298576, 28.836252>,  <38.545425, 41.481762, 28.793430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192425, 41.298576, 28.836252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052296, 0.130662, 0.990047,
		-0.467389, 0.879318, -0.091360,
		-0.882504, -0.457959, 0.107055,
		37.927673, 41.161190, 28.868368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058937, 41.985878, 29.142624>,  <38.545425, 41.481762, 28.793430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058937, 41.985878, 29.142624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932415, 41.613022, 29.213120>,  <37.856503, 41.389309, 29.255417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932415, 41.613022, 29.213120>,  <38.058937, 41.985878, 29.142624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932415, 41.613022, 29.213120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038654, 0.172961, 0.984170,
		-0.947871, 0.318108, -0.018677,
		-0.316302, -0.932144, 0.176241,
		37.837524, 41.333378, 29.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550491, 41.967102, 29.748781>,  <38.058937, 41.985878, 29.142624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550491, 41.967102, 29.748781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638798, 41.577477, 29.728970>,  <37.691784, 41.343700, 29.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638798, 41.577477, 29.728970>,  <37.550491, 41.967102, 29.748781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638798, 41.577477, 29.728970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034675, -0.042912, 0.998477,
		-0.974709, -0.222152, 0.024302,
		0.220771, -0.974067, -0.049530,
		37.705029, 41.285255, 29.714111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214363, 41.710838, 30.291996>,  <37.550491, 41.967102, 29.748781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214363, 41.710838, 30.291996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484779, 41.426960, 30.212704>,  <37.647030, 41.256634, 30.165129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484779, 41.426960, 30.212704>,  <37.214363, 41.710838, 30.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484779, 41.426960, 30.212704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076550, -0.335206, 0.939030,
		-0.732876, -0.619649, -0.280941,
		0.676042, -0.709699, -0.198230,
		37.687592, 41.214050, 30.153234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023338, 41.194534, 30.686060>,  <37.214363, 41.710838, 30.291996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023338, 41.194534, 30.686060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407669, 41.118622, 30.605276>,  <37.638268, 41.073074, 30.556805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407669, 41.118622, 30.605276>,  <37.023338, 41.194534, 30.686060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407669, 41.118622, 30.605276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159359, -0.217868, 0.962880,
		-0.226750, -0.957346, -0.179088,
		0.960827, -0.189793, -0.201963,
		37.695919, 41.061687, 30.544687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236660, 40.672642, 31.152199>,  <37.023338, 41.194534, 30.686060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236660, 40.672642, 31.152199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588055, 40.792240, 31.003143>,  <37.798893, 40.863998, 30.913710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588055, 40.792240, 31.003143>,  <37.236660, 40.672642, 31.152199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588055, 40.792240, 31.003143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437206, -0.188613, 0.879361,
		0.192639, -0.935429, -0.296416,
		0.878488, 0.298994, -0.372641,
		37.851601, 40.881939, 30.891352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692772, 40.069916, 31.273935>,  <37.236660, 40.672642, 31.152199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692772, 40.069916, 31.273935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879959, 40.422787, 31.252865>,  <37.992271, 40.634510, 31.240223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879959, 40.422787, 31.252865>,  <37.692772, 40.069916, 31.273935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879959, 40.422787, 31.252865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552109, -0.245298, 0.796872,
		0.690059, -0.401993, -0.601848,
		0.467969, 0.882174, -0.052674,
		38.020351, 40.687439, 31.237062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224735, 39.933472, 31.643044>,  <37.692772, 40.069916, 31.273935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224735, 39.933472, 31.643044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246582, 40.332558, 31.627125>,  <38.259689, 40.572010, 31.617575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246582, 40.332558, 31.627125>,  <38.224735, 39.933472, 31.643044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246582, 40.332558, 31.627125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411128, 0.013849, 0.911472,
		0.909940, -0.066144, -0.409432,
		0.054618, 0.997714, -0.039796,
		38.262966, 40.631870, 31.615187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880383, 40.084736, 31.968168>,  <38.224735, 39.933472, 31.643044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880383, 40.084736, 31.968168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715797, 40.449043, 31.982010>,  <38.617046, 40.667629, 31.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715797, 40.449043, 31.982010>,  <38.880383, 40.084736, 31.968168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715797, 40.449043, 31.982010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261553, 0.081620, 0.961732,
		0.873092, 0.404767, -0.271797,
		-0.411462, 0.910770, 0.034606,
		38.592358, 40.722275, 31.992392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396709, 40.658287, 32.101376>,  <38.880383, 40.084736, 31.968168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396709, 40.658287, 32.101376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026325, 40.728168, 32.235291>,  <38.804096, 40.770096, 32.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026325, 40.728168, 32.235291>,  <39.396709, 40.658287, 32.101376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026325, 40.728168, 32.235291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359401, 0.135561, 0.923284,
		0.115917, 0.975245, -0.188312,
		-0.925956, 0.174704, 0.334790,
		38.748539, 40.780579, 32.335728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515335, 41.075394, 32.653641>,  <39.396709, 40.658287, 32.101376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515335, 41.075394, 32.653641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135586, 40.964508, 32.712757>,  <38.907738, 40.897976, 32.748226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135586, 40.964508, 32.712757>,  <39.515335, 41.075394, 32.653641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135586, 40.964508, 32.712757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164282, -0.037089, 0.985716,
		-0.267775, 0.960091, 0.080753,
		-0.949372, -0.277216, 0.147794,
		38.850773, 40.881344, 32.757095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338459, 41.510742, 33.166740>,  <39.515335, 41.075394, 32.653641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338459, 41.510742, 33.166740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053715, 41.229889, 33.173233>,  <38.882866, 41.061378, 33.177128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053715, 41.229889, 33.173233>,  <39.338459, 41.510742, 33.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053715, 41.229889, 33.173233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124507, -0.103419, 0.986814,
		-0.691194, 0.704498, 0.161040,
		-0.711863, -0.702130, 0.016233,
		38.840157, 41.019249, 33.178104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942558, 41.688393, 33.686802>,  <39.338459, 41.510742, 33.166740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942558, 41.688393, 33.686802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884468, 41.296196, 33.633823>,  <38.849613, 41.060879, 33.602036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884468, 41.296196, 33.633823>,  <38.942558, 41.688393, 33.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884468, 41.296196, 33.633823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310295, -0.172244, 0.934906,
		-0.939483, 0.094672, 0.329256,
		-0.145222, -0.980494, -0.132444,
		38.840900, 41.002048, 33.594090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585777, 41.412338, 34.276695>,  <38.942558, 41.688393, 33.686802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585777, 41.412338, 34.276695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756355, 41.091991, 34.108528>,  <38.858704, 40.899784, 34.007629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756355, 41.091991, 34.108528>,  <38.585777, 41.412338, 34.276695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756355, 41.091991, 34.108528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266115, -0.333142, 0.904544,
		-0.864482, -0.497617, 0.071057,
		0.426444, -0.800871, -0.420418,
		38.884289, 40.851730, 33.982403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386120, 40.917110, 34.628433>,  <38.585777, 41.412338, 34.276695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386120, 40.917110, 34.628433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699512, 40.747852, 34.446400>,  <38.887550, 40.646297, 34.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699512, 40.747852, 34.446400>,  <38.386120, 40.917110, 34.628433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699512, 40.747852, 34.446400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264843, -0.435120, 0.860540,
		-0.562147, -0.794746, -0.228844,
		0.783485, -0.423143, -0.455085,
		38.934559, 40.620911, 34.309875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290768, 40.273300, 34.757217>,  <38.386120, 40.917110, 34.628433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290768, 40.273300, 34.757217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684032, 40.331032, 34.712372>,  <38.919991, 40.365669, 34.685463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684032, 40.331032, 34.712372>,  <38.290768, 40.273300, 34.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684032, 40.331032, 34.712372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168682, -0.480554, 0.860589,
		0.070331, -0.865007, -0.496806,
		0.983158, 0.144329, -0.112113,
		38.978981, 40.374329, 34.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705429, 39.597668, 34.876472>,  <38.290768, 40.273300, 34.757217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705429, 39.597668, 34.876472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972683, 39.889641, 34.934143>,  <39.133038, 40.064827, 34.968746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972683, 39.889641, 34.934143>,  <38.705429, 39.597668, 34.876472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972683, 39.889641, 34.934143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374392, -0.497283, 0.782650,
		0.642979, -0.468940, -0.605536,
		0.668139, 0.729935, 0.144175,
		39.173126, 40.108620, 34.977394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386204, 39.268135, 35.071728>,  <38.705429, 39.597668, 34.876472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386204, 39.268135, 35.071728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393604, 39.646194, 35.202175>,  <39.398045, 39.873032, 35.280441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393604, 39.646194, 35.202175>,  <39.386204, 39.268135, 35.071728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393604, 39.646194, 35.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465388, -0.296824, 0.833852,
		0.884913, 0.136342, -0.445353,
		0.018503, 0.945149, 0.326115,
		39.399155, 39.929741, 35.300011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126560, 39.402012, 35.341145>,  <39.386204, 39.268135, 35.071728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126560, 39.402012, 35.341145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855286, 39.630512, 35.526070>,  <39.692520, 39.767612, 35.637024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855286, 39.630512, 35.526070>,  <40.126560, 39.402012, 35.341145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855286, 39.630512, 35.526070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411688, -0.225792, 0.882911,
		0.608749, 0.789109, -0.082046,
		-0.678187, 0.571249, 0.462317,
		39.651829, 39.801888, 35.664764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221443, 39.223919, 35.964340>,  <40.126560, 39.402012, 35.341145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221443, 39.223919, 35.964340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974728, 39.529552, 36.039978>,  <39.826698, 39.712933, 36.085361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974728, 39.529552, 36.039978>,  <40.221443, 39.223919, 35.964340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974728, 39.529552, 36.039978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191777, -0.087115, 0.977564,
		0.763411, 0.639212, -0.092802,
		-0.616786, 0.764080, 0.189091,
		39.789692, 39.758778, 36.096706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652061, 39.563881, 36.500214>,  <40.221443, 39.223919, 35.964340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652061, 39.563881, 36.500214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279999, 39.710598, 36.506763>,  <40.056759, 39.798630, 36.510693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279999, 39.710598, 36.506763>,  <40.652061, 39.563881, 36.500214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279999, 39.710598, 36.506763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076597, -0.237469, 0.968371,
		0.359078, 0.899485, 0.248979,
		-0.930159, 0.366791, 0.016372,
		40.000950, 39.820637, 36.511677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548904, 40.128708, 37.012196>,  <40.652061, 39.563881, 36.500214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548904, 40.128708, 37.012196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210007, 39.935722, 36.923275>,  <40.006668, 39.819931, 36.869923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210007, 39.935722, 36.923275>,  <40.548904, 40.128708, 37.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210007, 39.935722, 36.923275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052947, -0.339697, 0.939043,
		-0.528565, 0.807365, 0.262260,
		-0.847240, -0.482459, -0.222300,
		39.955833, 39.790985, 36.856586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110771, 40.414375, 37.518768>,  <40.548904, 40.128708, 37.012196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110771, 40.414375, 37.518768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007526, 40.050930, 37.387436>,  <39.945580, 39.832863, 37.308636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007526, 40.050930, 37.387436>,  <40.110771, 40.414375, 37.518768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007526, 40.050930, 37.387436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087531, -0.316458, 0.944560,
		-0.962141, 0.272543, 0.002151,
		-0.258113, -0.908612, -0.328333,
		39.930092, 39.778347, 37.288937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895161, 40.132465, 38.064594>,  <40.110771, 40.414375, 37.518768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895161, 40.132465, 38.064594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851704, 39.797672, 37.850063>,  <39.825630, 39.596794, 37.721344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851704, 39.797672, 37.850063>,  <39.895161, 40.132465, 38.064594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851704, 39.797672, 37.850063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278990, -0.492166, 0.824583,
		-0.954128, 0.239219, -0.180038,
		-0.108647, -0.836986, -0.536329,
		39.819111, 39.546577, 37.689163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240417, 39.812595, 38.243343>,  <39.895161, 40.132465, 38.064594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240417, 39.812595, 38.243343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456791, 39.508812, 38.098782>,  <39.586617, 39.326542, 38.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456791, 39.508812, 38.098782>,  <39.240417, 39.812595, 38.243343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456791, 39.508812, 38.098782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468976, -0.629055, 0.619960,
		-0.698176, -0.165869, -0.696446,
		0.540935, -0.759458, -0.361403,
		39.619072, 39.280975, 37.990360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724464, 39.382896, 38.362061>,  <39.240417, 39.812595, 38.243343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724464, 39.382896, 38.362061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054535, 39.182125, 38.258400>,  <39.252575, 39.061665, 38.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054535, 39.182125, 38.258400>,  <38.724464, 39.382896, 38.362061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054535, 39.182125, 38.258400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238221, -0.725190, 0.646026,
		-0.512190, -0.471349, -0.717978,
		0.825174, -0.501925, -0.259149,
		39.302086, 39.031548, 38.180656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553894, 38.757236, 38.451782>,  <38.724464, 39.382896, 38.362061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553894, 38.757236, 38.451782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951336, 38.712139, 38.454407>,  <39.189800, 38.685081, 38.455982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951336, 38.712139, 38.454407>,  <38.553894, 38.757236, 38.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951336, 38.712139, 38.454407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073416, -0.600680, 0.796112,
		-0.085810, -0.791501, -0.605114,
		0.993603, -0.112739, 0.006564,
		39.249416, 38.678318, 38.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785297, 38.077724, 38.549286>,  <38.553894, 38.757236, 38.451782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785297, 38.077724, 38.549286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089149, 38.300243, 38.684036>,  <39.271461, 38.433754, 38.764889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089149, 38.300243, 38.684036>,  <38.785297, 38.077724, 38.549286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089149, 38.300243, 38.684036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005452, -0.523423, 0.852056,
		0.650329, -0.645413, -0.400642,
		0.759633, 0.556300, 0.336878,
		39.317039, 38.467133, 38.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111221, 37.641979, 38.972992>,  <38.785297, 38.077724, 38.549286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111221, 37.641979, 38.972992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306343, 37.975517, 39.076336>,  <39.423416, 38.175640, 39.138340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306343, 37.975517, 39.076336>,  <39.111221, 37.641979, 38.972992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306343, 37.975517, 39.076336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241777, -0.413429, 0.877850,
		0.838804, -0.365753, -0.403277,
		0.487802, 0.833847, 0.258356,
		39.452682, 38.225670, 39.153843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785744, 37.464630, 39.050652>,  <39.111221, 37.641979, 38.972992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785744, 37.464630, 39.050652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661011, 37.745159, 39.307060>,  <39.586170, 37.913475, 39.460907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661011, 37.745159, 39.307060>,  <39.785744, 37.464630, 39.050652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661011, 37.745159, 39.307060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351742, -0.541519, 0.763567,
		0.882631, 0.463581, -0.077820,
		-0.311834, 0.701320, 0.641022,
		39.567459, 37.955555, 39.499367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359470, 37.727970, 39.547291>,  <39.785744, 37.464630, 39.050652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359470, 37.727970, 39.547291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014450, 37.781921, 39.742355>,  <39.807438, 37.814293, 39.859394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014450, 37.781921, 39.742355>,  <40.359470, 37.727970, 39.547291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014450, 37.781921, 39.742355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334218, -0.571738, 0.749276,
		0.379875, 0.809274, 0.448075,
		-0.862550, 0.134876, 0.487663,
		39.755684, 37.822384, 39.888653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528206, 37.864395, 40.235073>,  <40.359470, 37.727970, 39.547291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528206, 37.864395, 40.235073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136890, 37.788063, 40.267384>,  <39.902100, 37.742264, 40.286770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136890, 37.788063, 40.267384>,  <40.528206, 37.864395, 40.235073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136890, 37.788063, 40.267384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188626, -0.658639, 0.728433,
		-0.085804, 0.727859, 0.680338,
		-0.978293, -0.190832, 0.080780,
		39.843403, 37.730812, 40.291618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268517, 38.158360, 40.866264>,  <40.528206, 37.864395, 40.235073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268517, 38.158360, 40.866264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063347, 37.845490, 40.724777>,  <39.940243, 37.657768, 40.639885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063347, 37.845490, 40.724777>,  <40.268517, 38.158360, 40.866264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063347, 37.845490, 40.724777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289370, -0.545472, 0.786591,
		-0.808190, 0.301109, 0.506124,
		-0.512926, -0.782172, -0.353713,
		39.909470, 37.610836, 40.618664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942646, 37.820400, 41.442585>,  <40.268517, 38.158360, 40.866264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942646, 37.820400, 41.442585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908939, 37.536858, 41.162464>,  <39.888714, 37.366734, 40.994392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908939, 37.536858, 41.162464>,  <39.942646, 37.820400, 41.442585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908939, 37.536858, 41.162464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249387, -0.695436, 0.673925,
		-0.964731, -0.117855, 0.235383,
		-0.084269, -0.708858, -0.700300,
		39.883659, 37.324200, 40.952374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429317, 37.203598, 41.629799>,  <39.942646, 37.820400, 41.442585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429317, 37.203598, 41.629799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720837, 37.081619, 41.384567>,  <39.895748, 37.008430, 41.237431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720837, 37.081619, 41.384567>,  <39.429317, 37.203598, 41.629799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720837, 37.081619, 41.384567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069229, -0.857951, 0.509046,
		-0.681219, -0.413435, -0.604163,
		0.728799, -0.304946, -0.613074,
		39.939476, 36.990135, 41.200645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277786, 36.484669, 41.460121>,  <39.429317, 37.203598, 41.629799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277786, 36.484669, 41.460121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665024, 36.528976, 41.370205>,  <39.897366, 36.555561, 41.316254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665024, 36.528976, 41.370205>,  <39.277786, 36.484669, 41.460121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665024, 36.528976, 41.370205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195728, -0.894381, 0.402210,
		-0.156496, -0.433374, -0.887522,
		0.968091, 0.110769, -0.224791,
		39.955452, 36.562206, 41.302769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505928, 35.930653, 41.086456>,  <39.277786, 36.484669, 41.460121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505928, 35.930653, 41.086456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809052, 36.072880, 41.305286>,  <39.990925, 36.158215, 41.436584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809052, 36.072880, 41.305286>,  <39.505928, 35.930653, 41.086456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809052, 36.072880, 41.305286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021963, -0.824093, 0.566029,
		0.652106, -0.440958, -0.616696,
		0.757810, 0.355566, 0.547080,
		40.036396, 36.179550, 41.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677086, 36.571232, 40.647980>,  <39.505928, 35.930653, 41.086456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677086, 36.571232, 40.647980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598545, 36.896515, 40.867119>,  <39.551418, 37.091686, 40.998600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598545, 36.896515, 40.867119>,  <39.677086, 36.571232, 40.647980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598545, 36.896515, 40.867119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315091, 0.476757, -0.820622,
		-0.928527, -0.333753, 0.162622,
		-0.196354, 0.813211, 0.547845,
		39.539639, 37.140476, 41.031471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071091, 36.768822, 40.437695>,  <39.677086, 36.571232, 40.647980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071091, 36.768822, 40.437695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254837, 37.094261, 40.580269>,  <39.365086, 37.289524, 40.665813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254837, 37.094261, 40.580269>,  <39.071091, 36.768822, 40.437695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254837, 37.094261, 40.580269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323307, 0.526899, -0.786035,
		-0.827320, 0.245837, 0.505079,
		0.459362, 0.813598, 0.356433,
		39.392647, 37.338341, 40.687199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573345, 37.494831, 40.474743>,  <39.071091, 36.768822, 40.437695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573345, 37.494831, 40.474743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963318, 37.581570, 40.454792>,  <39.197300, 37.633614, 40.442822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963318, 37.581570, 40.454792>,  <38.573345, 37.494831, 40.474743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963318, 37.581570, 40.454792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199316, 0.751419, -0.629001,
		-0.098920, 0.623173, 0.775803,
		0.974930, 0.216851, -0.049878,
		39.255798, 37.646626, 40.439827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594360, 38.125469, 40.437634>,  <38.573345, 37.494831, 40.474743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594360, 38.125469, 40.437634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945881, 38.028706, 40.273098>,  <39.156792, 37.970650, 40.174377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945881, 38.028706, 40.273098>,  <38.594360, 38.125469, 40.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945881, 38.028706, 40.273098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146885, 0.683006, -0.715491,
		0.454026, 0.689191, 0.564692,
		0.878798, -0.241906, -0.411334,
		39.209518, 37.956135, 40.149696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855267, 38.754002, 40.202278>,  <38.594360, 38.125469, 40.437634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855267, 38.754002, 40.202278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087601, 38.507256, 39.989822>,  <39.227001, 38.359207, 39.862347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087601, 38.507256, 39.989822>,  <38.855267, 38.754002, 40.202278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087601, 38.507256, 39.989822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115419, 0.583489, -0.803877,
		0.805797, 0.528224, 0.267714,
		0.580836, -0.616862, -0.531141,
		39.261852, 38.322197, 39.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147919, 39.242886, 39.733051>,  <38.855267, 38.754002, 40.202278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147919, 39.242886, 39.733051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291840, 38.882347, 39.636620>,  <39.378193, 38.666023, 39.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291840, 38.882347, 39.636620>,  <39.147919, 39.242886, 39.733051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291840, 38.882347, 39.636620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315887, 0.360797, -0.877520,
		0.877930, 0.239578, 0.414538,
		0.359799, -0.901348, -0.241075,
		39.399780, 38.611942, 39.564297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859177, 39.364250, 39.549084>,  <39.147919, 39.242886, 39.733051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859177, 39.364250, 39.549084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756626, 38.998444, 39.423908>,  <39.695095, 38.778961, 39.348804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756626, 38.998444, 39.423908>,  <39.859177, 39.364250, 39.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756626, 38.998444, 39.423908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223606, 0.258862, -0.939676,
		0.940356, -0.310889, 0.138124,
		-0.256380, -0.914515, -0.312939,
		39.679710, 38.724091, 39.330025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276485, 39.204197, 39.044365>,  <39.859177, 39.364250, 39.549084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276485, 39.204197, 39.044365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006504, 38.921188, 38.960606>,  <39.844513, 38.751385, 38.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006504, 38.921188, 38.960606>,  <40.276485, 39.204197, 39.044365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006504, 38.921188, 38.960606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253769, 0.043893, -0.966269,
		0.692846, -0.705328, 0.149921,
		-0.674956, -0.707521, -0.209401,
		39.804016, 38.708931, 38.897785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540981, 38.761570, 38.635704>,  <40.276485, 39.204197, 39.044365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540981, 38.761570, 38.635704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148434, 38.728291, 38.566429>,  <39.912907, 38.708321, 38.524864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148434, 38.728291, 38.566429>,  <40.540981, 38.761570, 38.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148434, 38.728291, 38.566429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136604, 0.331748, -0.933425,
		0.135118, -0.939692, -0.314201,
		-0.981368, -0.083201, -0.173191,
		39.854023, 38.703331, 38.514473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416512, 38.481564, 37.939213>,  <40.540981, 38.761570, 38.635704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416512, 38.481564, 37.939213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074966, 38.664295, 38.038994>,  <39.870037, 38.773933, 38.098862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074966, 38.664295, 38.038994>,  <40.416512, 38.481564, 37.939213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074966, 38.664295, 38.038994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058671, 0.391726, -0.918209,
		-0.517177, -0.798662, -0.307679,
		-0.853865, 0.456825, 0.249450,
		39.818806, 38.801342, 38.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922554, 38.137024, 37.483723>,  <40.416512, 38.481564, 37.939213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922554, 38.137024, 37.483723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 38.508999, 37.605572>,  <39.790730, 38.732185, 37.678680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 38.508999, 37.605572>,  <39.922554, 38.137024, 37.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840164, 38.508999, 37.605572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049957, 0.300894, -0.952348,
		-0.977282, -0.211376, -0.015520,
		-0.205974, 0.929937, 0.304618,
		39.778374, 38.787979, 37.696957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615738, 38.453808, 36.944626>,  <39.922554, 38.137024, 37.483723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615738, 38.453808, 36.944626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675995, 38.773785, 37.176971>,  <39.712151, 38.965771, 37.316380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675995, 38.773785, 37.176971>,  <39.615738, 38.453808, 36.944626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675995, 38.773785, 37.176971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029782, 0.590971, -0.806143,
		-0.988139, 0.104142, 0.112850,
		0.150644, 0.799942, 0.580860,
		39.721188, 39.013767, 37.351231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290310, 38.847950, 36.560253>,  <39.615738, 38.453808, 36.944626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290310, 38.847950, 36.560253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467613, 39.093849, 36.821209>,  <39.573994, 39.241386, 36.977783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467613, 39.093849, 36.821209>,  <39.290310, 38.847950, 36.560253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467613, 39.093849, 36.821209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100423, 0.757266, -0.645339,
		-0.890751, 0.220537, 0.397398,
		0.443257, 0.614745, 0.652389,
		39.600590, 39.278275, 37.016926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802448, 39.354889, 36.914585>,  <39.290310, 38.847950, 36.560253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802448, 39.354889, 36.914585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179176, 39.487492, 36.892372>,  <39.405212, 39.567055, 36.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179176, 39.487492, 36.892372>,  <38.802448, 39.354889, 36.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179176, 39.487492, 36.892372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298234, 0.747960, -0.592969,
		-0.155038, 0.575029, 0.803308,
		0.941817, 0.331506, -0.055531,
		39.461723, 39.586945, 36.875713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731892, 39.985203, 36.533569>,  <38.802448, 39.354889, 36.914585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731892, 39.985203, 36.533569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131466, 39.966843, 36.534927>,  <39.371212, 39.955826, 36.535744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131466, 39.966843, 36.534927>,  <38.731892, 39.985203, 36.533569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131466, 39.966843, 36.534927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031223, 0.621597, -0.782715,
		0.033818, 0.781991, 0.622372,
		0.998940, -0.045902, 0.003395,
		39.431149, 39.953072, 36.535946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982544, 40.635670, 36.527367>,  <38.731892, 39.985203, 36.533569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982544, 40.635670, 36.527367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256210, 40.381294, 36.384537>,  <39.420410, 40.228668, 36.298840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256210, 40.381294, 36.384537>,  <38.982544, 40.635670, 36.527367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256210, 40.381294, 36.384537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026105, 0.467921, -0.883385,
		0.728862, 0.613700, 0.303533,
		0.684162, -0.635942, -0.357070,
		39.461460, 40.190510, 36.277416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291630, 40.970531, 36.013752>,  <38.982544, 40.635670, 36.527367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291630, 40.970531, 36.013752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388588, 40.598949, 35.901833>,  <39.446762, 40.375999, 35.834679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388588, 40.598949, 35.901833>,  <39.291630, 40.970531, 36.013752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388588, 40.598949, 35.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180292, 0.326511, -0.927839,
		0.953278, 0.174457, 0.246628,
		0.242395, -0.928954, -0.279803,
		39.461308, 40.320263, 35.817890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903481, 40.987164, 35.710934>,  <39.291630, 40.970531, 36.013752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903481, 40.987164, 35.710934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718178, 40.665356, 35.562263>,  <39.606998, 40.472271, 35.473061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718178, 40.665356, 35.562263>,  <39.903481, 40.987164, 35.710934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718178, 40.665356, 35.562263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303417, 0.250063, -0.919460,
		0.832668, -0.538714, 0.128263,
		-0.463252, -0.804522, -0.371674,
		39.579201, 40.424000, 35.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180214, 40.922993, 35.088345>,  <39.903481, 40.987164, 35.710934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180214, 40.922993, 35.088345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871788, 40.670464, 35.055145>,  <39.686729, 40.518948, 35.035225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871788, 40.670464, 35.055145>,  <40.180214, 40.922993, 35.088345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871788, 40.670464, 35.055145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114283, -0.008981, -0.993408,
		0.626412, -0.775471, 0.079074,
		-0.771069, -0.631319, -0.082998,
		39.640469, 40.481068, 35.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295258, 40.493690, 34.472485>,  <40.180214, 40.922993, 35.088345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295258, 40.493690, 34.472485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901482, 40.453457, 34.530125>,  <39.665218, 40.429317, 34.564709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901482, 40.453457, 34.530125>,  <40.295258, 40.493690, 34.472485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901482, 40.453457, 34.530125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147314, 0.025281, -0.988767,
		0.095812, -0.994607, -0.039705,
		-0.984438, -0.100585, 0.144098,
		39.606152, 40.423283, 34.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001865, 40.073746, 33.887447>,  <40.295258, 40.493690, 34.472485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001865, 40.073746, 33.887447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664143, 40.239250, 34.023655>,  <39.461510, 40.338554, 34.105381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664143, 40.239250, 34.023655>,  <40.001865, 40.073746, 33.887447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664143, 40.239250, 34.023655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359813, 0.033159, -0.932435,
		-0.397098, -0.909781, 0.120881,
		-0.844303, 0.413763, 0.340518,
		39.410851, 40.363380, 34.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492710, 39.786678, 33.473816>,  <40.001865, 40.073746, 33.887447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492710, 39.786678, 33.473816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300381, 40.111916, 33.605083>,  <39.184982, 40.307056, 33.683846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300381, 40.111916, 33.605083>,  <39.492710, 39.786678, 33.473816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300381, 40.111916, 33.605083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348243, 0.166399, -0.922517,
		-0.804696, -0.557850, 0.203144,
		-0.480823, 0.813089, 0.328168,
		39.156132, 40.355843, 33.703533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133358, 39.426128, 33.226601>,  <39.492710, 39.786678, 33.473816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133358, 39.426128, 33.226601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005337, 39.059349, 33.321911>,  <39.928524, 38.839283, 33.379097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005337, 39.059349, 33.321911>,  <40.133358, 39.426128, 33.226601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005337, 39.059349, 33.321911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940567, -0.277378, 0.195945,
		-0.113578, 0.286829, 0.951225,
		-0.320052, -0.916946, 0.238278,
		39.909321, 38.784264, 33.393394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519196, 39.196899, 33.796825>,  <40.133358, 39.426128, 33.226601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519196, 39.196899, 33.796825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380344, 38.857006, 33.638107>,  <40.297031, 38.653069, 33.542877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380344, 38.857006, 33.638107>,  <40.519196, 39.196899, 33.796825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380344, 38.857006, 33.638107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793332, -0.491707, 0.358955,
		-0.500126, -0.190188, 0.844809,
		-0.347130, -0.849737, -0.396798,
		40.276207, 38.602085, 33.519070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594345, 38.570553, 34.325085>,  <40.519196, 39.196899, 33.796825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594345, 38.570553, 34.325085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629459, 38.459057, 33.942547>,  <40.650528, 38.392159, 33.713024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629459, 38.459057, 33.942547>,  <40.594345, 38.570553, 34.325085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629459, 38.459057, 33.942547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886862, -0.415316, 0.202454,
		-0.453618, -0.865919, 0.210747,
		0.087782, -0.278741, -0.956346,
		40.655792, 38.375435, 33.655643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884071, 37.881111, 34.233631>,  <40.594345, 38.570553, 34.325085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884071, 37.881111, 34.233631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994240, 38.077942, 33.903297>,  <41.060341, 38.196041, 33.705097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994240, 38.077942, 33.903297>,  <40.884071, 37.881111, 34.233631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994240, 38.077942, 33.903297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827276, -0.558886, -0.057112,
		-0.489650, -0.667460, -0.561017,
		0.275424, 0.492081, -0.825832,
		41.076866, 38.225567, 33.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276138, 37.475334, 33.811367>,  <40.884071, 37.881111, 34.233631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276138, 37.475334, 33.811367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407658, 37.811390, 33.638828>,  <41.486568, 38.013023, 33.535305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407658, 37.811390, 33.638828>,  <41.276138, 37.475334, 33.811367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407658, 37.811390, 33.638828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871967, -0.445489, -0.203012,
		-0.362717, -0.309367, -0.879050,
		0.328802, 0.840138, -0.431344,
		41.506298, 38.063431, 33.509426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606144, 37.169006, 33.324612>,  <41.276138, 37.475334, 33.811367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606144, 37.169006, 33.324612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743374, 37.543926, 33.349159>,  <41.825714, 37.768879, 33.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743374, 37.543926, 33.349159>,  <41.606144, 37.169006, 33.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743374, 37.543926, 33.349159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901430, -0.310175, -0.302020,
		-0.264048, 0.158937, -0.951324,
		0.343079, 0.937300, 0.061369,
		41.846298, 37.825115, 33.367569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832539, 37.400906, 32.611469>,  <41.606144, 37.169006, 33.324612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832539, 37.400906, 32.611469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010685, 37.530678, 32.945271>,  <42.117573, 37.608540, 33.145550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010685, 37.530678, 32.945271>,  <41.832539, 37.400906, 32.611469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010685, 37.530678, 32.945271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883548, -0.310088, -0.350982,
		0.144901, 0.893639, -0.424752,
		0.445362, 0.324431, 0.834504,
		42.144295, 37.628006, 33.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485504, 37.800636, 32.419460>,  <41.832539, 37.400906, 32.611469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485504, 37.800636, 32.419460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568142, 37.622028, 32.767700>,  <42.617725, 37.514862, 32.976643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568142, 37.622028, 32.767700>,  <42.485504, 37.800636, 32.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568142, 37.622028, 32.767700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856281, -0.347994, -0.381684,
		0.473392, 0.824330, 0.310452,
		0.206598, -0.446520, 0.870596,
		42.630119, 37.488071, 33.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152393, 38.019203, 32.808781>,  <42.485504, 37.800636, 32.419460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152393, 38.019203, 32.808781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062637, 37.635986, 32.880123>,  <43.008785, 37.406055, 32.922928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062637, 37.635986, 32.880123>,  <43.152393, 38.019203, 32.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062637, 37.635986, 32.880123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950493, -0.255537, -0.176816,
		0.214972, 0.129847, 0.967950,
		-0.224388, -0.958040, 0.178352,
		42.995319, 37.348576, 32.933628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579033, 37.619347, 33.385471>,  <43.152393, 38.019203, 32.808781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579033, 37.619347, 33.385471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475082, 37.433464, 33.046883>,  <43.412712, 37.321934, 32.843731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475082, 37.433464, 33.046883>,  <43.579033, 37.619347, 33.385471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475082, 37.433464, 33.046883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964436, -0.168701, -0.203477,
		-0.048244, -0.869248, 0.492017,
		-0.259876, -0.464702, -0.846473,
		43.397121, 37.294052, 32.792942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047558, 37.166004, 33.313225>,  <43.579033, 37.619347, 33.385471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047558, 37.166004, 33.313225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878777, 37.174572, 32.950680>,  <43.777508, 37.179710, 32.733154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878777, 37.174572, 32.950680>,  <44.047558, 37.166004, 33.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878777, 37.174572, 32.950680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906077, -0.024519, -0.422403,
		-0.031269, -0.999470, -0.009056,
		-0.421957, 0.021414, -0.906363,
		43.752190, 37.180996, 32.678772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019375, 37.500320, 34.051617>,  <44.047558, 37.166004, 33.313225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019375, 37.500320, 34.051617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052647, 37.108070, 34.122566>,  <44.072609, 36.872723, 34.165134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052647, 37.108070, 34.122566>,  <44.019375, 37.500320, 34.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052647, 37.108070, 34.122566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620959, -0.088203, -0.778865,
		0.779417, 0.174928, 0.601589,
		0.083183, -0.980622, 0.177370,
		44.077602, 36.813885, 34.175777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609280, 37.381821, 34.427212>,  <44.019375, 37.500320, 34.051617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609280, 37.381821, 34.427212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473541, 37.107376, 34.169811>,  <44.392097, 36.942711, 34.015369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473541, 37.107376, 34.169811>,  <44.609280, 37.381821, 34.427212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473541, 37.107376, 34.169811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716526, 0.254686, -0.649404,
		0.609453, -0.681461, 0.405188,
		-0.339347, -0.686109, -0.643504,
		44.371738, 36.901543, 33.976761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317883, 36.914841, 34.974720>,  <44.609280, 37.381821, 34.427212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317883, 36.914841, 34.974720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450966, 37.012157, 35.339161>,  <44.530815, 37.070545, 35.557827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450966, 37.012157, 35.339161>,  <44.317883, 36.914841, 34.974720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450966, 37.012157, 35.339161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941228, 0.145362, 0.304894,
		-0.058262, -0.958999, 0.277355,
		0.332710, 0.243291, 0.911106,
		44.550777, 37.085144, 35.612492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797855, 36.398758, 35.162216>,  <44.317883, 36.914841, 34.974720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797855, 36.398758, 35.162216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082001, 36.234783, 35.391068>,  <45.252487, 36.136398, 35.528378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082001, 36.234783, 35.391068>,  <44.797855, 36.398758, 35.162216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082001, 36.234783, 35.391068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566621, -0.815287, 0.119365,
		0.417517, -0.408973, -0.811431,
		0.710366, -0.409937, 0.572129,
		45.295109, 36.111801, 35.562706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164677, 35.680092, 34.927631>,  <44.797855, 36.398758, 35.162216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164677, 35.680092, 34.927631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120373, 35.781975, 35.311893>,  <45.093788, 35.843105, 35.542450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120373, 35.781975, 35.311893>,  <45.164677, 35.680092, 34.927631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120373, 35.781975, 35.311893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725545, -0.681306, 0.096990,
		0.679203, -0.686254, 0.260268,
		-0.110763, 0.254712, 0.960653,
		45.087143, 35.858387, 35.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513874, 35.173073, 35.395206>,  <45.164677, 35.680092, 34.927631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513874, 35.173073, 35.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779461, 34.905052, 35.262436>,  <45.938812, 34.744240, 35.182774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779461, 34.905052, 35.262436>,  <45.513874, 35.173073, 35.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779461, 34.905052, 35.262436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745021, 0.554817, 0.370299,
		-0.063964, -0.493157, 0.867586,
		0.663967, -0.670055, -0.331924,
		45.978649, 34.704037, 35.162857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051304, 35.225895, 35.790894>,  <45.513874, 35.173073, 35.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051304, 35.225895, 35.790894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196503, 35.019714, 35.480400>,  <46.283623, 34.896004, 35.294106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196503, 35.019714, 35.480400>,  <46.051304, 35.225895, 35.790894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196503, 35.019714, 35.480400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835661, 0.548607, 0.026490,
		0.412192, -0.658283, 0.629889,
		0.362999, -0.515455, -0.776233,
		46.305401, 34.865078, 35.247532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650692, 34.807644, 35.940750>,  <46.051304, 35.225895, 35.790894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650692, 34.807644, 35.940750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651775, 34.962566, 35.571972>,  <46.652424, 35.055519, 35.350704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651775, 34.962566, 35.571972>,  <46.650692, 34.807644, 35.940750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651775, 34.962566, 35.571972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872987, 0.448755, 0.191083,
		0.487736, -0.805367, -0.336894,
		0.002709, 0.387302, -0.921949,
		46.652588, 35.078758, 35.295387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328041, 34.574036, 35.535526>,  <46.650692, 34.807644, 35.940750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328041, 34.574036, 35.535526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225468, 34.932537, 35.390762>,  <47.163925, 35.147636, 35.303905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225468, 34.932537, 35.390762>,  <47.328041, 34.574036, 35.535526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225468, 34.932537, 35.390762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960386, 0.278521, 0.009265,
		0.109103, -0.345198, -0.932167,
		-0.256429, 0.896250, -0.361911,
		47.148540, 35.201412, 35.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840797, 34.694126, 34.940834>,  <47.328041, 34.574036, 35.535526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840797, 34.694126, 34.940834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685837, 34.982262, 35.170979>,  <47.592861, 35.155144, 35.309063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685837, 34.982262, 35.170979>,  <47.840797, 34.694126, 34.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685837, 34.982262, 35.170979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921799, 0.292882, 0.253983,
		0.014441, 0.628756, -0.777468,
		-0.387400, 0.720337, 0.575357,
		47.569618, 35.198364, 35.343586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.842216, 37.284523, 24.148178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517334, 37.427650, 23.963882>,  <38.322403, 37.513527, 23.853306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517334, 37.427650, 23.963882>,  <38.842216, 37.284523, 24.148178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517334, 37.427650, 23.963882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542700, -0.173747, 0.821760,
		0.213993, 0.917483, 0.335310,
		-0.812209, 0.357823, -0.460737,
		38.273670, 37.534996, 23.825661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582302, 37.975910, 24.514843>,  <38.842216, 37.284523, 24.148178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582302, 37.975910, 24.514843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288597, 37.762871, 24.346464>,  <38.112373, 37.635048, 24.245438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288597, 37.762871, 24.346464>,  <38.582302, 37.975910, 24.514843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288597, 37.762871, 24.346464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310495, -0.287940, 0.905916,
		-0.603694, 0.795884, 0.046057,
		-0.734266, -0.532596, -0.420946,
		38.068317, 37.603092, 24.220181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053650, 38.142494, 24.987314>,  <38.582302, 37.975910, 24.514843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053650, 38.142494, 24.987314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950016, 37.830936, 24.758862>,  <37.887836, 37.644001, 24.621790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950016, 37.830936, 24.758862>,  <38.053650, 38.142494, 24.987314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950016, 37.830936, 24.758862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589333, -0.341001, 0.732396,
		-0.765218, 0.526343, -0.370680,
		-0.259090, -0.778897, -0.571132,
		37.872288, 37.597267, 24.587523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324505, 38.148708, 25.093254>,  <38.053650, 38.142494, 24.987314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324505, 38.148708, 25.093254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447678, 37.792999, 24.957977>,  <37.521580, 37.579575, 24.876812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447678, 37.792999, 24.957977>,  <37.324505, 38.148708, 25.093254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447678, 37.792999, 24.957977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548554, -0.456377, 0.700577,
		-0.777347, -0.030211, -0.628346,
		0.307928, -0.889273, -0.338192,
		37.540054, 37.526218, 24.856520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727951, 37.733818, 24.947441>,  <37.324505, 38.148708, 25.093254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727951, 37.733818, 24.947441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030548, 37.483753, 25.024275>,  <37.212105, 37.333714, 25.070375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030548, 37.483753, 25.024275>,  <36.727951, 37.733818, 24.947441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030548, 37.483753, 25.024275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564992, -0.476771, 0.673404,
		-0.329405, -0.617951, -0.713883,
		0.756490, -0.625161, 0.192087,
		37.257496, 37.296204, 25.081900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417332, 37.109753, 25.303715>,  <36.727951, 37.733818, 24.947441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417332, 37.109753, 25.303715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805141, 37.057259, 25.386475>,  <37.037827, 37.025764, 25.436131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805141, 37.057259, 25.386475>,  <36.417332, 37.109753, 25.303715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805141, 37.057259, 25.386475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243673, -0.428327, 0.870149,
		-0.025570, -0.894044, -0.447250,
		0.969521, -0.131232, 0.206902,
		37.095997, 37.017891, 25.448545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515625, 36.440266, 25.623646>,  <36.417332, 37.109753, 25.303715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515625, 36.440266, 25.623646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811256, 36.685379, 25.735542>,  <36.988636, 36.832447, 25.802679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811256, 36.685379, 25.735542>,  <36.515625, 36.440266, 25.623646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811256, 36.685379, 25.735542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126824, -0.281270, 0.951211,
		0.661569, -0.738500, -0.130166,
		0.739082, 0.612784, 0.279739,
		37.032982, 36.869213, 25.819464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808792, 36.082333, 26.205948>,  <36.515625, 36.440266, 25.623646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808792, 36.082333, 26.205948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969028, 36.448193, 26.227623>,  <37.065170, 36.667709, 26.240629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969028, 36.448193, 26.227623>,  <36.808792, 36.082333, 26.205948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969028, 36.448193, 26.227623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121211, -0.005722, 0.992610,
		0.908205, -0.404198, 0.108574,
		0.400590, 0.914653, 0.054190,
		37.089207, 36.722588, 26.243879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407612, 36.060566, 26.697323>,  <36.808792, 36.082333, 26.205948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407612, 36.060566, 26.697323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314327, 36.449520, 26.700867>,  <37.258358, 36.682892, 26.702993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314327, 36.449520, 26.700867>,  <37.407612, 36.060566, 26.697323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314327, 36.449520, 26.700867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087493, -0.030054, 0.995712,
		0.968482, 0.231436, 0.092086,
		-0.233211, 0.972386, 0.008858,
		37.244366, 36.741238, 26.703524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774891, 36.363415, 27.208616>,  <37.407612, 36.060566, 26.697323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774891, 36.363415, 27.208616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481285, 36.629738, 27.155052>,  <37.305122, 36.789532, 27.122913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481285, 36.629738, 27.155052>,  <37.774891, 36.363415, 27.208616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481285, 36.629738, 27.155052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141764, 0.042627, 0.988982,
		0.664177, 0.744908, 0.063098,
		-0.734011, 0.665805, -0.133913,
		37.261082, 36.829479, 27.114878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948185, 36.848888, 27.683388>,  <37.774891, 36.363415, 27.208616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948185, 36.848888, 27.683388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560249, 36.884144, 27.592482>,  <37.327488, 36.905296, 27.537939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560249, 36.884144, 27.592482>,  <37.948185, 36.848888, 27.683388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560249, 36.884144, 27.592482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237122, -0.125080, 0.963394,
		0.056490, 0.988223, 0.142208,
		-0.969836, 0.088143, -0.227264,
		37.269299, 36.910587, 27.524303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779411, 37.357952, 28.082760>,  <37.948185, 36.848888, 27.683388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779411, 37.357952, 28.082760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441147, 37.167931, 27.985458>,  <37.238186, 37.053917, 27.927076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441147, 37.167931, 27.985458>,  <37.779411, 37.357952, 28.082760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441147, 37.167931, 27.985458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264365, -0.023093, 0.964146,
		-0.463640, 0.879653, -0.106059,
		-0.845665, -0.475055, -0.243256,
		37.187447, 37.025414, 27.912481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312168, 37.658184, 28.487753>,  <37.779411, 37.357952, 28.082760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312168, 37.658184, 28.487753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143471, 37.310448, 28.384691>,  <37.042252, 37.101807, 28.322855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143471, 37.310448, 28.384691>,  <37.312168, 37.658184, 28.487753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143471, 37.310448, 28.384691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281976, -0.144320, 0.948505,
		-0.861754, 0.472679, -0.184266,
		-0.421745, -0.869336, -0.257653,
		37.016949, 37.049648, 28.307396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573502, 37.615250, 28.740177>,  <37.312168, 37.658184, 28.487753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573502, 37.615250, 28.740177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756107, 37.259872, 28.721153>,  <36.865669, 37.046646, 28.709740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756107, 37.259872, 28.721153>,  <36.573502, 37.615250, 28.740177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756107, 37.259872, 28.721153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242595, -0.175726, 0.954080,
		-0.856004, -0.424013, -0.295753,
		0.456514, -0.888444, -0.047559,
		36.893063, 36.993340, 28.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121319, 37.184357, 29.077312>,  <36.573502, 37.615250, 28.740177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121319, 37.184357, 29.077312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468506, 36.986088, 29.065042>,  <36.676819, 36.867126, 29.057680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468506, 36.986088, 29.065042>,  <36.121319, 37.184357, 29.077312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468506, 36.986088, 29.065042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077892, -0.196877, 0.977329,
		-0.490472, -0.845902, -0.209492,
		0.867969, -0.495670, -0.030673,
		36.728897, 36.837387, 29.055841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086586, 36.639042, 29.663042>,  <36.121319, 37.184357, 29.077312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086586, 36.639042, 29.663042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475822, 36.591251, 29.584230>,  <36.709366, 36.562576, 29.536943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475822, 36.591251, 29.584230>,  <36.086586, 36.639042, 29.663042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475822, 36.591251, 29.584230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116446, -0.482857, 0.867922,
		-0.198835, -0.867510, -0.455951,
		0.973090, -0.119480, -0.197027,
		36.767750, 36.555408, 29.525122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301563, 35.872196, 29.989294>,  <36.086586, 36.639042, 29.663042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301563, 35.872196, 29.989294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650204, 36.061775, 29.939198>,  <36.859386, 36.175522, 29.909140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650204, 36.061775, 29.939198>,  <36.301563, 35.872196, 29.989294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650204, 36.061775, 29.939198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317612, -0.351364, 0.880719,
		0.373408, -0.807415, -0.456780,
		0.871602, 0.473946, -0.125243,
		36.911686, 36.203960, 29.901625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932835, 35.428734, 30.211067>,  <36.301563, 35.872196, 29.989294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932835, 35.428734, 30.211067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083721, 35.798019, 30.240421>,  <37.174255, 36.019588, 30.258034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083721, 35.798019, 30.240421>,  <36.932835, 35.428734, 30.211067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083721, 35.798019, 30.240421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471096, -0.259500, 0.843047,
		0.797354, -0.283443, -0.532810,
		0.377220, 0.923212, 0.073384,
		37.196888, 36.074982, 30.262436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695946, 35.335758, 30.351357>,  <36.932835, 35.428734, 30.211067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695946, 35.335758, 30.351357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582966, 35.696888, 30.481049>,  <37.515179, 35.913567, 30.558865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582966, 35.696888, 30.481049>,  <37.695946, 35.335758, 30.351357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582966, 35.696888, 30.481049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395171, -0.198479, 0.896909,
		0.874108, 0.381455, -0.300712,
		-0.282446, 0.902828, 0.324232,
		37.498234, 35.967735, 30.578318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272621, 35.488102, 30.720623>,  <37.695946, 35.335758, 30.351357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272621, 35.488102, 30.720623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985538, 35.738480, 30.842669>,  <37.813290, 35.888706, 30.915895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985538, 35.738480, 30.842669>,  <38.272621, 35.488102, 30.720623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985538, 35.738480, 30.842669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361115, -0.040078, 0.931660,
		0.595396, 0.778837, -0.197274,
		-0.717704, 0.625945, 0.305112,
		37.770226, 35.926262, 30.934202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612034, 35.897987, 31.211594>,  <38.272621, 35.488102, 30.720623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612034, 35.897987, 31.211594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230099, 35.970490, 31.305765>,  <38.000938, 36.013992, 31.362268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230099, 35.970490, 31.305765>,  <38.612034, 35.897987, 31.211594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230099, 35.970490, 31.305765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248059, 0.050157, 0.967446,
		0.163546, 0.982156, -0.092854,
		-0.954840, 0.181255, 0.235430,
		37.943645, 36.024868, 31.376394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557793, 36.509628, 31.612425>,  <38.612034, 35.897987, 31.211594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557793, 36.509628, 31.612425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258057, 36.256706, 31.691095>,  <38.078217, 36.104954, 31.738298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258057, 36.256706, 31.691095>,  <38.557793, 36.509628, 31.612425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258057, 36.256706, 31.691095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324055, -0.091142, 0.941638,
		-0.577476, 0.769340, 0.273198,
		-0.749340, -0.632304, 0.196676,
		38.033257, 36.067017, 31.750097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508564, 37.008347, 32.073875>,  <38.557793, 36.509628, 31.612425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508564, 37.008347, 32.073875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707249, 37.351421, 32.127018>,  <38.826458, 37.557266, 32.158905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707249, 37.351421, 32.127018>,  <38.508564, 37.008347, 32.073875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707249, 37.351421, 32.127018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007585, 0.148779, -0.988842,
		-0.867883, 0.492175, 0.067394,
		0.496710, 0.857688, 0.132856,
		38.856262, 37.608727, 32.166874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149879, 37.543507, 31.722654>,  <38.508564, 37.008347, 32.073875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149879, 37.543507, 31.722654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526482, 37.666931, 31.776859>,  <38.752441, 37.740986, 31.809381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526482, 37.666931, 31.776859>,  <38.149879, 37.543507, 31.722654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526482, 37.666931, 31.776859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040421, 0.295807, -0.954392,
		-0.334571, 0.904041, 0.266031,
		0.941503, 0.308559, 0.135510,
		38.808933, 37.759499, 31.817513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148643, 38.203823, 31.374081>,  <38.149879, 37.543507, 31.722654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148643, 38.203823, 31.374081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535931, 38.115974, 31.421961>,  <38.768303, 38.063263, 31.450689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535931, 38.115974, 31.421961>,  <38.148643, 38.203823, 31.374081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535931, 38.115974, 31.421961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201922, 0.403875, -0.892251,
		0.147617, 0.888060, 0.435384,
		0.968213, -0.219625, 0.119700,
		38.826393, 38.050087, 31.457870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606300, 38.686172, 31.231586>,  <38.148643, 38.203823, 31.374081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606300, 38.686172, 31.231586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859062, 38.383656, 31.163797>,  <39.010719, 38.202145, 31.123125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.859062, 38.383656, 31.163797>,  <38.606300, 38.686172, 31.231586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859062, 38.383656, 31.163797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163218, 0.343607, -0.924821,
		0.757667, 0.556735, 0.340567,
		0.631902, -0.756293, -0.169471,
		39.048634, 38.156769, 31.112957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202164, 39.069740, 30.898634>,  <38.606300, 38.686172, 31.231586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202164, 39.069740, 30.898634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213341, 38.678162, 30.817760>,  <39.220047, 38.443214, 30.769236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213341, 38.678162, 30.817760>,  <39.202164, 39.069740, 30.898634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213341, 38.678162, 30.817760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221704, 0.203297, -0.953687,
		0.974714, -0.018176, 0.222718,
		0.027944, -0.978948, -0.202186,
		39.221725, 38.384476, 30.757105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867359, 38.964497, 30.658791>,  <39.202164, 39.069740, 30.898634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867359, 38.964497, 30.658791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660118, 38.658562, 30.505644>,  <39.535774, 38.474998, 30.413755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660118, 38.658562, 30.505644>,  <39.867359, 38.964497, 30.658791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660118, 38.658562, 30.505644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452642, 0.134630, -0.881471,
		0.725729, -0.629996, 0.276446,
		-0.518105, -0.764840, -0.382868,
		39.504688, 38.429111, 30.390783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313152, 38.764572, 30.138617>,  <39.867359, 38.964497, 30.658791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313152, 38.764572, 30.138617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.978806, 38.557739, 30.064920>,  <39.778198, 38.433640, 30.020702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.978806, 38.557739, 30.064920>,  <40.313152, 38.764572, 30.138617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978806, 38.557739, 30.064920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231564, -0.027839, -0.972421,
		0.497697, -0.855480, 0.143008,
		-0.835868, -0.517086, -0.184243,
		39.728046, 38.402615, 30.009647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587471, 38.192184, 29.741035>,  <40.313152, 38.764572, 30.138617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587471, 38.192184, 29.741035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195847, 38.187584, 29.659740>,  <39.960873, 38.184822, 29.610964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195847, 38.187584, 29.659740>,  <40.587471, 38.192184, 29.741035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195847, 38.187584, 29.659740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198803, -0.268716, -0.942480,
		-0.043768, -0.963151, 0.265377,
		-0.979062, -0.011507, -0.203239,
		39.902126, 38.184132, 29.598768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412663, 37.515469, 29.385859>,  <40.587471, 38.192184, 29.741035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412663, 37.515469, 29.385859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 37.795837, 29.292656>,  <39.981236, 37.964058, 29.236734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 37.795837, 29.292656>,  <40.412663, 37.515469, 29.385859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143021, 37.795837, 29.292656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026549, -0.292263, -0.955969,
		-0.738156, -0.650612, 0.178408,
		-0.674107, 0.700918, -0.233009,
		39.940788, 38.006111, 29.222754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967827, 37.155556, 28.904938>,  <40.412663, 37.515469, 29.385859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967827, 37.155556, 28.904938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959194, 37.549183, 28.834345>,  <39.954014, 37.785358, 28.791988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959194, 37.549183, 28.834345>,  <39.967827, 37.155556, 28.904938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959194, 37.549183, 28.834345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112282, -0.173022, -0.978497,
		-0.993442, -0.040935, -0.106759,
		-0.021583, 0.984067, -0.176484,
		39.952721, 37.844402, 28.781401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560028, 37.258644, 28.275785>,  <39.967827, 37.155556, 28.904938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560028, 37.258644, 28.275785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741276, 37.614307, 28.301359>,  <39.850025, 37.827705, 28.316704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741276, 37.614307, 28.301359>,  <39.560028, 37.258644, 28.275785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741276, 37.614307, 28.301359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030934, 0.055996, -0.997952,
		-0.890913, 0.454169, -0.002133,
		0.453119, 0.889154, 0.063937,
		39.877213, 37.881054, 28.320539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160229, 37.671417, 27.778349>,  <39.560028, 37.258644, 28.275785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160229, 37.671417, 27.778349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485363, 37.903351, 27.800585>,  <39.680443, 38.042511, 27.813927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485363, 37.903351, 27.800585>,  <39.160229, 37.671417, 27.778349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485363, 37.903351, 27.800585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072563, -0.006102, -0.997345,
		-0.577960, 0.814709, -0.047034,
		0.812833, 0.579838, 0.055591,
		39.729214, 38.077301, 27.817263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048779, 38.282227, 27.305984>,  <39.160229, 37.671417, 27.778349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048779, 38.282227, 27.305984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436462, 38.246212, 27.397657>,  <39.669071, 38.224606, 27.452662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436462, 38.246212, 27.397657>,  <39.048779, 38.282227, 27.305984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436462, 38.246212, 27.397657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231479, 0.015805, -0.972711,
		0.083953, 0.995813, 0.036159,
		0.969211, -0.090032, 0.229183,
		39.727226, 38.219204, 27.466412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396809, 38.882168, 27.006937>,  <39.048779, 38.282227, 27.305984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396809, 38.882168, 27.006937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684223, 38.607910, 27.053577>,  <39.856670, 38.443356, 27.081562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684223, 38.607910, 27.053577>,  <39.396809, 38.882168, 27.006937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684223, 38.607910, 27.053577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308710, 0.164193, -0.936877,
		0.623222, 0.709174, 0.329645,
		0.718535, -0.685647, 0.116601,
		39.899784, 38.402218, 27.088558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994175, 39.129814, 26.683681>,  <39.396809, 38.882168, 27.006937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994175, 39.129814, 26.683681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128143, 38.754948, 26.722769>,  <40.208527, 38.530029, 26.746222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128143, 38.754948, 26.722769>,  <39.994175, 39.129814, 26.683681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128143, 38.754948, 26.722769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412816, 0.052722, -0.909287,
		0.847000, 0.344880, 0.404535,
		0.334923, -0.937165, 0.097717,
		40.228619, 38.473797, 26.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642002, 39.145931, 26.410761>,  <39.994175, 39.129814, 26.683681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642002, 39.145931, 26.410761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542435, 38.758606, 26.418871>,  <40.482697, 38.526211, 26.423737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542435, 38.758606, 26.418871>,  <40.642002, 39.145931, 26.410761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542435, 38.758606, 26.418871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299865, -0.096954, -0.949042,
		0.920935, -0.230153, 0.314496,
		-0.248916, -0.968313, 0.020273,
		40.467758, 38.468113, 26.424953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260460, 38.728447, 26.159924>,  <40.642002, 39.145931, 26.410761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260460, 38.728447, 26.159924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921814, 38.526173, 26.093548>,  <40.718628, 38.404808, 26.053722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921814, 38.526173, 26.093548>,  <41.260460, 38.728447, 26.159924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921814, 38.526173, 26.093548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180922, 0.019766, -0.983299,
		0.500518, -0.862492, 0.074755,
		-0.846610, -0.505684, -0.165938,
		40.667831, 38.374466, 26.043766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478359, 38.354977, 25.561039>,  <41.260460, 38.728447, 26.159924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478359, 38.354977, 25.561039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079861, 38.320934, 25.554766>,  <40.840759, 38.300510, 25.551003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079861, 38.320934, 25.554766>,  <41.478359, 38.354977, 25.561039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079861, 38.320934, 25.554766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027976, -0.145252, -0.988999,
		0.081894, -0.985727, 0.147088,
		-0.996248, -0.085108, -0.015682,
		40.780987, 38.295403, 25.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.936436, 37.772385, 24.629057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635635, 37.954117, 24.820087>,  <40.455154, 38.063156, 24.934706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.635635, 37.954117, 24.820087>,  <40.936436, 37.772385, 24.629057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635635, 37.954117, 24.820087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325246, 0.374426, -0.868343,
		-0.573334, -0.808323, -0.133798,
		-0.752000, 0.454333, 0.477575,
		40.410034, 38.090416, 24.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298679, 37.600609, 24.263927>,  <40.936436, 37.772385, 24.629057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298679, 37.600609, 24.263927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276775, 37.952263, 24.453291>,  <40.263634, 38.163258, 24.566910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.276775, 37.952263, 24.453291>,  <40.298679, 37.600609, 24.263927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276775, 37.952263, 24.453291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346639, 0.427895, -0.834713,
		-0.936399, -0.209809, 0.281314,
		-0.054758, 0.879139, 0.473409,
		40.260349, 38.216003, 24.595314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744308, 37.963078, 23.949524>,  <40.298679, 37.600609, 24.263927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744308, 37.963078, 23.949524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960751, 38.246727, 24.130342>,  <40.090618, 38.416916, 24.238832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960751, 38.246727, 24.130342>,  <39.744308, 37.963078, 23.949524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960751, 38.246727, 24.130342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322878, 0.671527, -0.666934,
		-0.776500, 0.214928, 0.592329,
		0.541108, 0.709124, 0.452045,
		40.123081, 38.459465, 24.265957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352306, 38.518093, 23.827564>,  <39.744308, 37.963078, 23.949524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352306, 38.518093, 23.827564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699387, 38.681412, 23.940975>,  <39.907635, 38.779404, 24.009022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699387, 38.681412, 23.940975>,  <39.352306, 38.518093, 23.827564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699387, 38.681412, 23.940975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105869, 0.709084, -0.697131,
		-0.485684, 0.574884, 0.658498,
		0.867700, 0.408300, 0.283529,
		39.959698, 38.803902, 24.026033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225632, 39.267693, 23.864607>,  <39.352306, 38.518093, 23.827564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225632, 39.267693, 23.864607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 39.197075, 23.813148>,  <39.850174, 39.154705, 23.782272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 39.197075, 23.813148>,  <39.225632, 39.267693, 23.864607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615971, 39.197075, 23.813148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008196, 0.618108, -0.786051,
		0.218288, 0.766013, 0.604627,
		0.975850, -0.176541, -0.128647,
		39.908726, 39.144112, 23.774555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445992, 39.839085, 23.660341>,  <39.225632, 39.267693, 23.864607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445992, 39.839085, 23.660341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747448, 39.600407, 23.550083>,  <39.928322, 39.457199, 23.483929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747448, 39.600407, 23.550083>,  <39.445992, 39.839085, 23.660341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747448, 39.600407, 23.550083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075617, 0.495292, -0.865429,
		0.652926, 0.631376, 0.418391,
		0.753637, -0.596699, -0.275646,
		39.973537, 39.421398, 23.467390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970833, 40.260681, 23.409037>,  <39.445992, 39.839085, 23.660341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970833, 40.260681, 23.409037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060413, 39.904846, 23.249794>,  <40.114162, 39.691345, 23.154249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060413, 39.904846, 23.249794>,  <39.970833, 40.260681, 23.409037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060413, 39.904846, 23.249794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173534, 0.438349, -0.881893,
		0.959027, 0.128414, 0.252541,
		0.223949, -0.889584, -0.398104,
		40.127598, 39.637970, 23.130363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610855, 40.393963, 22.968901>,  <39.970833, 40.260681, 23.409037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610855, 40.393963, 22.968901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.481567, 40.044498, 22.823442>,  <40.403996, 39.834820, 22.736168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.481567, 40.044498, 22.823442>,  <40.610855, 40.393963, 22.968901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481567, 40.044498, 22.823442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139897, 0.335934, -0.931438,
		0.935925, -0.351935, 0.013642,
		-0.323223, -0.873665, -0.363644,
		40.384602, 39.782398, 22.714350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188423, 40.144493, 22.440905>,  <40.610855, 40.393963, 22.968901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188423, 40.144493, 22.440905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.840630, 39.959084, 22.372629>,  <40.631954, 39.847836, 22.331663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.840630, 39.959084, 22.372629>,  <41.188423, 40.144493, 22.440905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840630, 39.959084, 22.372629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034199, 0.288237, -0.956948,
		0.492772, -0.837891, -0.234766,
		-0.869486, -0.463528, -0.170690,
		40.579784, 39.820026, 22.321423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327904, 39.769238, 21.884970>,  <41.188423, 40.144493, 22.440905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327904, 39.769238, 21.884970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929852, 39.807274, 21.895308>,  <40.691021, 39.830097, 21.901510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.929852, 39.807274, 21.895308>,  <41.327904, 39.769238, 21.884970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929852, 39.807274, 21.895308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012117, 0.378354, -0.925582,
		-0.097794, -0.920764, -0.377665,
		-0.995133, 0.095093, 0.025844,
		40.631313, 39.835800, 21.903061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210926, 39.508686, 21.208488>,  <41.327904, 39.769238, 21.884970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210926, 39.508686, 21.208488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846336, 39.648018, 21.296013>,  <40.627583, 39.731617, 21.348528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846336, 39.648018, 21.296013>,  <41.210926, 39.508686, 21.208488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846336, 39.648018, 21.296013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027945, 0.478273, -0.877766,
		-0.410404, -0.806177, -0.426201,
		-0.911476, 0.348328, 0.218814,
		40.572895, 39.752518, 21.361656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709885, 39.229702, 20.741846>,  <41.210926, 39.508686, 21.208488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709885, 39.229702, 20.741846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576511, 39.585751, 20.866102>,  <40.496487, 39.799381, 20.940657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576511, 39.585751, 20.866102>,  <40.709885, 39.229702, 20.741846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576511, 39.585751, 20.866102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064816, 0.307073, -0.949476,
		-0.940543, -0.336721, -0.044694,
		-0.333433, 0.890127, 0.310641,
		40.476482, 39.852787, 20.959295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326881, 39.287937, 20.189327>,  <40.709885, 39.229702, 20.741846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326881, 39.287937, 20.189327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345547, 39.648552, 20.361403>,  <40.356747, 39.864922, 20.464647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345547, 39.648552, 20.361403>,  <40.326881, 39.287937, 20.189327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345547, 39.648552, 20.361403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265854, 0.426332, -0.864617,
		-0.962883, -0.074019, 0.259571,
		0.046665, 0.901533, 0.430186,
		40.359547, 39.919010, 20.490458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682251, 39.635925, 20.076195>,  <40.326881, 39.287937, 20.189327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682251, 39.635925, 20.076195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955139, 39.921230, 20.140484>,  <40.118874, 40.092415, 20.179056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955139, 39.921230, 20.140484>,  <39.682251, 39.635925, 20.076195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955139, 39.921230, 20.140484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276495, 0.455180, -0.846381,
		-0.676849, 0.532981, 0.507747,
		0.682222, 0.713262, 0.160721,
		40.159805, 40.135208, 20.188700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428802, 40.408348, 19.824299>,  <39.682251, 39.635925, 20.076195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428802, 40.408348, 19.824299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820351, 40.485344, 19.851913>,  <40.055279, 40.531544, 19.868483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820351, 40.485344, 19.851913>,  <39.428802, 40.408348, 19.824299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820351, 40.485344, 19.851913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041909, 0.519252, -0.853593,
		-0.200158, 0.832661, 0.516346,
		0.978867, 0.192493, 0.069037,
		40.114010, 40.543091, 19.872625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571827, 41.141514, 19.789883>,  <39.428802, 40.408348, 19.824299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571827, 41.141514, 19.789883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941452, 41.006840, 19.717491>,  <40.163227, 40.926033, 19.674057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941452, 41.006840, 19.717491>,  <39.571827, 41.141514, 19.789883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941452, 41.006840, 19.717491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126268, 0.715751, -0.686845,
		0.360788, 0.611835, 0.703911,
		0.924061, -0.336687, -0.180979,
		40.218670, 40.905834, 19.663197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076027, 41.722736, 19.757872>,  <39.571827, 41.141514, 19.789883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076027, 41.722736, 19.757872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254780, 41.423992, 19.560896>,  <40.362030, 41.244747, 19.442711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254780, 41.423992, 19.560896>,  <40.076027, 41.722736, 19.757872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254780, 41.423992, 19.560896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231199, 0.628180, -0.742925,
		0.864202, 0.218147, 0.453395,
		0.446880, -0.746862, -0.492439,
		40.388844, 41.199932, 19.413164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702694, 41.985703, 19.489351>,  <40.076027, 41.722736, 19.757872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702694, 41.985703, 19.489351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624290, 41.677605, 19.246599>,  <40.577248, 41.492744, 19.100948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624290, 41.677605, 19.246599>,  <40.702694, 41.985703, 19.489351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624290, 41.677605, 19.246599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217157, 0.569424, -0.792842,
		0.956256, -0.287190, 0.055653,
		-0.196006, -0.770245, -0.606880,
		40.565487, 41.446529, 19.064535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242764, 41.957745, 18.999638>,  <40.702694, 41.985703, 19.489351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242764, 41.957745, 18.999638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934391, 41.768364, 18.829224>,  <40.749367, 41.654736, 18.726974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.934391, 41.768364, 18.829224>,  <41.242764, 41.957745, 18.999638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934391, 41.768364, 18.829224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049428, 0.622410, -0.781129,
		0.635010, -0.623247, -0.456426,
		-0.770921, -0.473465, -0.426042,
		40.703114, 41.626328, 18.701412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451916, 41.808720, 18.318754>,  <41.242764, 41.957745, 18.999638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451916, 41.808720, 18.318754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054516, 41.765598, 18.304134>,  <40.816074, 41.739727, 18.295362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054516, 41.765598, 18.304134>,  <41.451916, 41.808720, 18.318754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054516, 41.765598, 18.304134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039369, 0.626689, -0.778274,
		0.106805, -0.771776, -0.626860,
		-0.993500, -0.107803, -0.036549,
		40.756466, 41.733257, 18.293169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291180, 41.806725, 17.504978>,  <41.451916, 41.808720, 18.318754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291180, 41.806725, 17.504978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944160, 41.876171, 17.691404>,  <40.735950, 41.917839, 17.803261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944160, 41.876171, 17.691404>,  <41.291180, 41.806725, 17.504978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944160, 41.876171, 17.691404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287149, 0.590281, -0.754396,
		-0.406089, -0.788305, -0.462242,
		-0.867547, 0.173620, 0.466068,
		40.683895, 41.928257, 17.831224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825760, 41.733799, 17.022602>,  <41.291180, 41.806725, 17.504978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825760, 41.733799, 17.022602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639885, 41.965492, 17.290497>,  <40.528358, 42.104507, 17.451235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.639885, 41.965492, 17.290497>,  <40.825760, 41.733799, 17.022602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639885, 41.965492, 17.290497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280967, 0.620820, -0.731874,
		-0.839715, -0.528269, -0.125741,
		-0.464689, 0.579237, 0.669738,
		40.500477, 42.139263, 17.491419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209438, 41.886662, 16.749224>,  <40.825760, 41.733799, 17.022602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209438, 41.886662, 16.749224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298138, 42.177166, 17.009491>,  <40.351357, 42.351471, 17.165651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298138, 42.177166, 17.009491>,  <40.209438, 41.886662, 16.749224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298138, 42.177166, 17.009491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147912, 0.684611, -0.713744,
		-0.963820, 0.062031, 0.259235,
		0.221749, 0.726265, 0.650667,
		40.364662, 42.395046, 17.204691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422787, 41.178062, 16.517490>,  <40.209438, 41.886662, 16.749224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422787, 41.178062, 16.517490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.038464, 41.282658, 16.480669>,  <39.807869, 41.345413, 16.458576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.038464, 41.282658, 16.480669>,  <40.422787, 41.178062, 16.517490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038464, 41.282658, 16.480669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250697, -0.677841, 0.691146,
		0.118328, 0.687135, 0.716829,
		-0.960807, 0.261488, -0.092055,
		39.750221, 41.361103, 16.453053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165268, 41.207584, 17.194845>,  <40.422787, 41.178062, 16.517490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165268, 41.207584, 17.194845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840313, 41.161911, 16.966114>,  <39.645340, 41.134506, 16.828875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840313, 41.161911, 16.966114>,  <40.165268, 41.207584, 17.194845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840313, 41.161911, 16.966114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425941, -0.553543, 0.715657,
		-0.398248, 0.824957, 0.401056,
		-0.812387, -0.114182, -0.571830,
		39.596596, 41.127655, 16.794565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575340, 41.362396, 17.637875>,  <40.165268, 41.207584, 17.194845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575340, 41.362396, 17.637875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419575, 41.143803, 17.341303>,  <39.326115, 41.012646, 17.163361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419575, 41.143803, 17.341303>,  <39.575340, 41.362396, 17.637875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419575, 41.143803, 17.341303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414359, -0.614975, 0.670905,
		-0.822598, 0.568475, 0.013037,
		-0.389410, -0.546482, -0.741429,
		39.302753, 40.979858, 17.118874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860676, 41.385975, 17.746237>,  <39.575340, 41.362396, 17.637875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860676, 41.385975, 17.746237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959381, 41.054817, 17.544764>,  <39.018604, 40.856121, 17.423880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959381, 41.054817, 17.544764>,  <38.860676, 41.385975, 17.746237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959381, 41.054817, 17.544764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450245, -0.558197, 0.696919,
		-0.858131, 0.054808, -0.510497,
		0.246761, -0.827896, -0.503683,
		39.033409, 40.806450, 17.393660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376072, 41.029781, 17.972937>,  <38.860676, 41.385975, 17.746237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376072, 41.029781, 17.972937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616402, 40.762711, 17.797108>,  <38.760597, 40.602470, 17.691610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616402, 40.762711, 17.797108>,  <38.376072, 41.029781, 17.972937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616402, 40.762711, 17.797108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446974, -0.736492, 0.507734,
		-0.662743, -0.108581, -0.740933,
		0.600821, -0.667675, -0.439572,
		38.796650, 40.562408, 17.665236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976784, 40.482307, 17.819798>,  <38.376072, 41.029781, 17.972937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976784, 40.482307, 17.819798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345390, 40.331871, 17.858507>,  <38.566555, 40.241608, 17.881733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345390, 40.331871, 17.858507>,  <37.976784, 40.482307, 17.819798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345390, 40.331871, 17.858507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347959, -0.688984, 0.635787,
		-0.172436, -0.619561, -0.765774,
		0.921515, -0.376090, 0.096777,
		38.621845, 40.219044, 17.887541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854084, 39.822681, 17.952311>,  <37.976784, 40.482307, 17.819798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854084, 39.822681, 17.952311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240173, 39.824169, 18.056866>,  <38.471828, 39.825062, 18.119598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240173, 39.824169, 18.056866>,  <37.854084, 39.822681, 17.952311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240173, 39.824169, 18.056866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191406, -0.670967, 0.716357,
		0.178049, -0.741478, -0.646923,
		0.965227, 0.003722, 0.261388,
		38.529743, 39.825287, 18.135283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144020, 39.124043, 17.858446>,  <37.854084, 39.822681, 17.952311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144020, 39.124043, 17.858446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358589, 39.324524, 18.130047>,  <38.487331, 39.444813, 18.293007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358589, 39.324524, 18.130047>,  <38.144020, 39.124043, 17.858446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358589, 39.324524, 18.130047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196824, -0.708073, 0.678154,
		0.820675, -0.497424, -0.281181,
		0.536426, 0.501201, 0.679003,
		38.519516, 39.474884, 18.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444267, 38.643078, 18.318146>,  <38.144020, 39.124043, 17.858446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444267, 38.643078, 18.318146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.460472, 38.968445, 18.550253>,  <38.470196, 39.163666, 18.689518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.460472, 38.968445, 18.550253>,  <38.444267, 38.643078, 18.318146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460472, 38.968445, 18.550253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157717, -0.568258, 0.807594,
		0.986653, -0.124235, 0.105268,
		0.040512, 0.813418, 0.580267,
		38.472626, 39.212471, 18.724333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871204, 38.412453, 18.888113>,  <38.444267, 38.643078, 18.318146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871204, 38.412453, 18.888113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679764, 38.749855, 18.985636>,  <38.564899, 38.952297, 19.044149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679764, 38.749855, 18.985636>,  <38.871204, 38.412453, 18.888113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679764, 38.749855, 18.985636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008951, -0.282346, 0.959271,
		0.877986, 0.456928, 0.142682,
		-0.478603, 0.843503, 0.243806,
		38.536182, 39.002907, 19.058777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301659, 38.608276, 19.443285>,  <38.871204, 38.412453, 18.888113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301659, 38.608276, 19.443285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950031, 38.790386, 19.499809>,  <38.739056, 38.899651, 19.533724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950031, 38.790386, 19.499809>,  <39.301659, 38.608276, 19.443285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950031, 38.790386, 19.499809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020994, -0.333127, 0.942648,
		0.476236, 0.825684, 0.302399,
		-0.879067, 0.455271, 0.141313,
		38.686310, 38.926968, 19.542204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335663, 38.968620, 20.106600>,  <39.301659, 38.608276, 19.443285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335663, 38.968620, 20.106600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941059, 38.959305, 20.041786>,  <38.704296, 38.953716, 20.002899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941059, 38.959305, 20.041786>,  <39.335663, 38.968620, 20.106600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941059, 38.959305, 20.041786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158919, -0.101146, 0.982097,
		-0.039260, 0.994599, 0.096081,
		-0.986511, -0.023288, -0.162032,
		38.645107, 38.952320, 19.993177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102901, 39.462288, 20.523077>,  <39.335663, 38.968620, 20.106600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102901, 39.462288, 20.523077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791225, 39.222385, 20.450247>,  <38.604218, 39.078445, 20.406549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791225, 39.222385, 20.450247>,  <39.102901, 39.462288, 20.523077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791225, 39.222385, 20.450247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199694, -0.037805, 0.979129,
		-0.594119, 0.799291, -0.090310,
		-0.779195, -0.599754, -0.182074,
		38.557468, 39.042458, 20.395624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618294, 39.731022, 20.854254>,  <39.102901, 39.462288, 20.523077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618294, 39.731022, 20.854254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536831, 39.343006, 20.801268>,  <38.487953, 39.110195, 20.769476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536831, 39.343006, 20.801268>,  <38.618294, 39.731022, 20.854254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536831, 39.343006, 20.801268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078174, -0.118756, 0.989841,
		-0.975916, 0.211947, -0.051646,
		-0.203661, -0.970039, -0.132465,
		38.475731, 39.051994, 20.761528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127743, 39.642647, 21.372396>,  <38.618294, 39.731022, 20.854254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127743, 39.642647, 21.372396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225540, 39.267799, 21.272774>,  <38.284218, 39.042889, 21.212999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225540, 39.267799, 21.272774>,  <38.127743, 39.642647, 21.372396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225540, 39.267799, 21.272774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137437, -0.287751, 0.947793,
		-0.959863, -0.197495, -0.199147,
		0.244489, -0.937121, -0.249058,
		38.298885, 38.986664, 21.198057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672947, 39.249954, 21.737198>,  <38.127743, 39.642647, 21.372396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672947, 39.249954, 21.737198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944801, 38.973213, 21.639675>,  <38.107914, 38.807171, 21.581161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944801, 38.973213, 21.639675>,  <37.672947, 39.249954, 21.737198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944801, 38.973213, 21.639675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135138, -0.444764, 0.885394,
		-0.720997, -0.568795, -0.395771,
		0.679632, -0.691850, -0.243808,
		38.148693, 38.765659, 21.566532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405155, 38.546711, 21.888004>,  <37.672947, 39.249954, 21.737198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405155, 38.546711, 21.888004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804039, 38.521603, 21.871838>,  <38.043369, 38.506538, 21.862137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804039, 38.521603, 21.871838>,  <37.405155, 38.546711, 21.888004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804039, 38.521603, 21.871838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005818, -0.474394, 0.880293,
		-0.074431, -0.878072, -0.472705,
		0.997209, -0.062771, -0.040418,
		38.103203, 38.502769, 21.859713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590488, 37.839603, 21.921005>,  <37.405155, 38.546711, 21.888004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590488, 37.839603, 21.921005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933258, 37.987476, 22.064684>,  <38.138920, 38.076199, 22.150890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933258, 37.987476, 22.064684>,  <37.590488, 37.839603, 21.921005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933258, 37.987476, 22.064684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132788, -0.515014, 0.846834,
		0.498047, -0.773368, -0.392238,
		0.856923, 0.369679, 0.359195,
		38.190334, 38.098381, 22.172441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037357, 37.296604, 22.168037>,  <37.590488, 37.839603, 21.921005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037357, 37.296604, 22.168037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160789, 37.629765, 22.351801>,  <38.234848, 37.829662, 22.462059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160789, 37.629765, 22.351801>,  <38.037357, 37.296604, 22.168037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160789, 37.629765, 22.351801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053322, -0.467071, 0.882611,
		0.949703, -0.296853, -0.099717,
		0.308581, 0.832901, 0.459407,
		38.253365, 37.879635, 22.489622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472492, 37.038349, 22.673595>,  <38.037357, 37.296604, 22.168037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472492, 37.038349, 22.673595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373371, 37.407387, 22.791857>,  <38.313900, 37.628811, 22.862814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373371, 37.407387, 22.791857>,  <38.472492, 37.038349, 22.673595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373371, 37.407387, 22.791857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028190, -0.298174, 0.954095,
		0.968401, 0.244758, 0.047879,
		-0.247798, 0.922597, 0.295652,
		38.299030, 37.684166, 22.880552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852543, 37.120991, 23.377417>,  <38.472492, 37.038349, 22.673595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852543, 37.120991, 23.377417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582249, 37.415848, 23.376852>,  <38.420071, 37.592762, 23.376513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582249, 37.415848, 23.376852>,  <38.852543, 37.120991, 23.377417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582249, 37.415848, 23.376852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400249, -0.365301, 0.840450,
		0.619015, 0.568489, 0.541887,
		-0.675738, 0.737141, -0.001411,
		38.379528, 37.636990, 23.376429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.908035, 38.693333, 28.035221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548702, 38.529907, 27.970638>,  <40.333103, 38.431850, 27.931889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548702, 38.529907, 27.970638>,  <40.908035, 38.693333, 28.035221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548702, 38.529907, 27.970638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318777, 0.353354, 0.879501,
		-0.302283, 0.841555, -0.447672,
		-0.898335, -0.408566, -0.161455,
		40.279202, 38.407337, 27.922201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438519, 39.103901, 28.353765>,  <40.908035, 38.693333, 28.035221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438519, 39.103901, 28.353765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267506, 38.742748, 28.335791>,  <40.164898, 38.526058, 28.325005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267506, 38.742748, 28.335791>,  <40.438519, 39.103901, 28.353765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267506, 38.742748, 28.335791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329123, 0.109163, 0.937956,
		-0.841956, 0.415801, -0.343830,
		-0.427537, -0.902880, -0.044939,
		40.139244, 38.471886, 28.322309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683029, 39.160530, 28.671179>,  <40.438519, 39.103901, 28.353765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683029, 39.160530, 28.671179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786961, 38.774834, 28.692049>,  <39.849319, 38.543415, 28.704571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786961, 38.774834, 28.692049>,  <39.683029, 39.160530, 28.671179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786961, 38.774834, 28.692049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238012, -0.011583, 0.971193,
		-0.935862, -0.264766, -0.232511,
		0.259832, -0.964243, 0.052178,
		39.864910, 38.485561, 28.707703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047401, 38.900463, 28.980524>,  <39.683029, 39.160530, 28.671179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047401, 38.900463, 28.980524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.316956, 38.612530, 29.047132>,  <39.478687, 38.439770, 29.087097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.316956, 38.612530, 29.047132>,  <39.047401, 38.900463, 28.980524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316956, 38.612530, 29.047132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369951, -0.133648, 0.919388,
		-0.639548, -0.681163, -0.356364,
		0.673880, -0.719830, 0.166522,
		39.519119, 38.396580, 29.097090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686752, 38.364597, 29.204741>,  <39.047401, 38.900463, 28.980524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686752, 38.364597, 29.204741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060352, 38.304531, 29.334417>,  <39.284512, 38.268490, 29.412224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060352, 38.304531, 29.334417>,  <38.686752, 38.364597, 29.204741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060352, 38.304531, 29.334417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342980, -0.122710, 0.931293,
		-0.100052, -0.981018, -0.166110,
		0.934000, -0.150150, 0.324192,
		39.340553, 38.259480, 29.431675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636971, 37.787830, 29.631754>,  <38.686752, 38.364597, 29.204741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636971, 37.787830, 29.631754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977028, 37.965103, 29.745489>,  <39.181061, 38.071468, 29.813730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977028, 37.965103, 29.745489>,  <38.636971, 37.787830, 29.631754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977028, 37.965103, 29.745489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211838, -0.206505, 0.955238,
		0.482066, -0.872320, -0.081674,
		0.850139, 0.443186, 0.284340,
		39.232071, 38.098061, 29.830791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919304, 37.333576, 30.093493>,  <38.636971, 37.787830, 29.631754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919304, 37.333576, 30.093493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108177, 37.677547, 30.171021>,  <39.221500, 37.883930, 30.217537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108177, 37.677547, 30.171021>,  <38.919304, 37.333576, 30.093493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108177, 37.677547, 30.171021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067699, -0.183849, 0.980620,
		0.878899, -0.476150, -0.028593,
		0.472179, 0.859931, 0.193820,
		39.249832, 37.935528, 30.229166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378174, 37.148781, 30.555239>,  <38.919304, 37.333576, 30.093493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378174, 37.148781, 30.555239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354519, 37.544140, 30.611206>,  <39.340324, 37.781353, 30.644787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354519, 37.544140, 30.611206>,  <39.378174, 37.148781, 30.555239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354519, 37.544140, 30.611206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079728, -0.135037, 0.987628,
		0.995061, 0.069562, -0.070817,
		-0.059138, 0.988396, 0.139917,
		39.336777, 37.840660, 30.653181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942852, 37.270077, 30.923168>,  <39.378174, 37.148781, 30.555239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942852, 37.270077, 30.923168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650536, 37.538128, 30.975115>,  <39.475143, 37.698959, 31.006283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650536, 37.538128, 30.975115>,  <39.942852, 37.270077, 30.923168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650536, 37.538128, 30.975115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055575, -0.131211, 0.989795,
		0.680332, 0.730554, 0.058646,
		-0.730794, 0.670130, 0.129868,
		39.431297, 37.739166, 31.014074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062618, 37.486267, 31.542248>,  <39.942852, 37.270077, 30.923168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062618, 37.486267, 31.542248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702400, 37.659077, 31.522718>,  <39.486271, 37.762760, 31.511000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702400, 37.659077, 31.522718>,  <40.062618, 37.486267, 31.542248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702400, 37.659077, 31.522718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136923, -0.175229, 0.974960,
		0.412646, 0.884677, 0.216954,
		-0.900542, 0.432019, -0.048825,
		39.432240, 37.788681, 31.508070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021881, 38.174953, 31.955681>,  <40.062618, 37.486267, 31.542248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021881, 38.174953, 31.955681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653336, 38.025139, 31.914095>,  <39.432209, 37.935249, 31.889143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653336, 38.025139, 31.914095>,  <40.021881, 38.174953, 31.955681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653336, 38.025139, 31.914095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084157, -0.068912, 0.994067,
		-0.379477, 0.924649, 0.031974,
		-0.921366, -0.374534, -0.103967,
		39.376926, 37.912777, 31.882904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615662, 38.689465, 32.273987>,  <40.021881, 38.174953, 31.955681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615662, 38.689465, 32.273987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394062, 38.357994, 32.242039>,  <39.261101, 38.159111, 32.222870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394062, 38.357994, 32.242039>,  <39.615662, 38.689465, 32.273987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394062, 38.357994, 32.242039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048672, -0.128011, 0.990578,
		-0.831091, 0.544896, 0.111252,
		-0.554003, -0.828675, -0.079868,
		39.227859, 38.109390, 32.218079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953735, 38.763878, 32.714539>,  <39.615662, 38.689465, 32.273987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953735, 38.763878, 32.714539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077492, 38.385654, 32.674145>,  <39.151745, 38.158722, 32.649906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077492, 38.385654, 32.674145>,  <38.953735, 38.763878, 32.714539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077492, 38.385654, 32.674145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031744, -0.095868, 0.994888,
		-0.950404, -0.311016, 0.000355,
		0.309392, -0.945557, -0.100986,
		39.170311, 38.101986, 32.643848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470268, 39.333523, 32.694813>,  <38.953735, 38.763878, 32.714539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470268, 39.333523, 32.694813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221371, 39.255924, 32.998173>,  <38.072033, 39.209366, 33.180191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221371, 39.255924, 32.998173>,  <38.470268, 39.333523, 32.694813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221371, 39.255924, 32.998173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782303, -0.118874, 0.611450,
		-0.028466, 0.973773, 0.225734,
		-0.622247, -0.193998, 0.758402,
		38.034695, 39.197723, 33.225693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683842, 39.749435, 33.316574>,  <38.470268, 39.333523, 32.694813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683842, 39.749435, 33.316574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750359, 40.135811, 33.395889>,  <38.790268, 40.367634, 33.443478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750359, 40.135811, 33.395889>,  <38.683842, 39.749435, 33.316574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750359, 40.135811, 33.395889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478271, 0.254858, -0.840419,
		-0.862324, 0.044924, 0.504360,
		0.166295, 0.965935, 0.198284,
		38.800247, 40.425591, 33.455376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045883, 40.067654, 33.240875>,  <38.683842, 39.749435, 33.316574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045883, 40.067654, 33.240875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320175, 40.355373, 33.196358>,  <38.484749, 40.528004, 33.169647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.320175, 40.355373, 33.196358>,  <38.045883, 40.067654, 33.240875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320175, 40.355373, 33.196358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519323, 0.376371, -0.767234,
		-0.509983, 0.583911, 0.631637,
		0.685727, 0.719300, -0.111296,
		38.525894, 40.571163, 33.162968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639816, 40.587517, 33.077599>,  <38.045883, 40.067654, 33.240875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639816, 40.587517, 33.077599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000191, 40.719231, 32.964546>,  <38.216415, 40.798260, 32.896713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000191, 40.719231, 32.964546>,  <37.639816, 40.587517, 33.077599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000191, 40.719231, 32.964546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360745, 0.206313, -0.909559,
		-0.241194, 0.921415, 0.304664,
		0.900937, 0.329286, -0.282635,
		38.270473, 40.818016, 32.879757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562935, 41.232471, 32.673141>,  <37.639816, 40.587517, 33.077599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562935, 41.232471, 32.673141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.916069, 41.069183, 32.580227>,  <38.127949, 40.971210, 32.524479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.916069, 41.069183, 32.580227>,  <37.562935, 41.232471, 32.673141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916069, 41.069183, 32.580227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197931, 0.125140, -0.972195,
		0.425938, 0.904266, 0.029679,
		0.882837, -0.408220, -0.232284,
		38.180920, 40.946716, 32.510540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779881, 41.735676, 32.063484>,  <37.562935, 41.232471, 32.673141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779881, 41.735676, 32.063484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055244, 41.446041, 32.046539>,  <38.220463, 41.272263, 32.036373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055244, 41.446041, 32.046539>,  <37.779881, 41.735676, 32.063484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055244, 41.446041, 32.046539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017395, 0.041910, -0.998970,
		0.725114, 0.688437, 0.016256,
		0.688409, -0.724084, -0.042365,
		38.261768, 41.228817, 32.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305664, 41.946274, 31.552143>,  <37.779881, 41.735676, 32.063484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305664, 41.946274, 31.552143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296967, 41.546879, 31.572329>,  <38.291748, 41.307240, 31.584440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296967, 41.546879, 31.572329>,  <38.305664, 41.946274, 31.552143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296967, 41.546879, 31.572329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101473, -0.048009, -0.993679,
		0.994601, -0.026731, -0.100275,
		-0.021748, -0.998489, 0.050462,
		38.290443, 41.247334, 31.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800720, 41.695839, 31.145435>,  <38.305664, 41.946274, 31.552143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800720, 41.695839, 31.145435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544983, 41.390312, 31.180809>,  <38.391541, 41.206997, 31.202032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.544983, 41.390312, 31.180809>,  <38.800720, 41.695839, 31.145435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544983, 41.390312, 31.180809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097452, -0.033590, -0.994673,
		0.762719, -0.644558, -0.052960,
		-0.639345, -0.763818, 0.088433,
		38.353180, 41.161167, 31.207338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027813, 41.252144, 30.684177>,  <38.800720, 41.695839, 31.145435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027813, 41.252144, 30.684177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.641628, 41.164288, 30.740227>,  <38.409916, 41.111576, 30.773857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.641628, 41.164288, 30.740227>,  <39.027813, 41.252144, 30.684177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641628, 41.164288, 30.740227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129685, -0.061316, -0.989658,
		0.225958, -0.973653, 0.030715,
		-0.965466, -0.219638, 0.140123,
		38.351990, 41.098396, 30.782263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964264, 40.971588, 30.110559>,  <39.027813, 41.252144, 30.684177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964264, 40.971588, 30.110559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588699, 40.965805, 30.248106>,  <38.363361, 40.962337, 30.330633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588699, 40.965805, 30.248106>,  <38.964264, 40.971588, 30.110559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588699, 40.965805, 30.248106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343069, -0.040495, -0.938437,
		0.027491, -0.999075, 0.033062,
		-0.938908, -0.014456, 0.343865,
		38.307026, 40.961468, 30.351265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606331, 40.414532, 29.766590>,  <38.964264, 40.971588, 30.110559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606331, 40.414532, 29.766590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296738, 40.636234, 29.889067>,  <38.110981, 40.769257, 29.962553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296738, 40.636234, 29.889067>,  <38.606331, 40.414532, 29.766590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296738, 40.636234, 29.889067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440385, -0.123718, -0.889244,
		-0.454986, -0.823101, 0.339841,
		-0.773983, 0.554255, 0.306191,
		38.064545, 40.802509, 29.980925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965393, 40.043827, 29.711483>,  <38.606331, 40.414532, 29.766590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965393, 40.043827, 29.711483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896893, 40.437847, 29.704075>,  <37.855793, 40.674259, 29.699631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896893, 40.437847, 29.704075>,  <37.965393, 40.043827, 29.711483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896893, 40.437847, 29.704075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424729, -0.090774, -0.900758,
		-0.888977, -0.146387, 0.433925,
		-0.171249, 0.985054, -0.018521,
		37.845516, 40.733364, 29.698519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386055, 40.093857, 29.368959>,  <37.965393, 40.043827, 29.711483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386055, 40.093857, 29.368959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.512703, 40.472507, 29.344782>,  <37.588692, 40.699696, 29.330275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.512703, 40.472507, 29.344782>,  <37.386055, 40.093857, 29.368959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512703, 40.472507, 29.344782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462194, 0.098318, -0.881312,
		-0.828328, 0.306979, 0.468653,
		0.316621, 0.946624, -0.060444,
		37.607689, 40.756496, 29.326649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781601, 40.565151, 29.030224>,  <37.386055, 40.093857, 29.368959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781601, 40.565151, 29.030224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120323, 40.771965, 28.980272>,  <37.323559, 40.896053, 28.950302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120323, 40.771965, 28.980272>,  <36.781601, 40.565151, 29.030224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120323, 40.771965, 28.980272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268158, 0.212229, -0.939708,
		-0.459356, 0.829239, 0.318363,
		0.846808, 0.517032, -0.124878,
		37.374367, 40.927074, 28.942808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565250, 41.207172, 28.757879>,  <36.781601, 40.565151, 29.030224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565250, 41.207172, 28.757879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951302, 41.152523, 28.668554>,  <37.182930, 41.119736, 28.614960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.951302, 41.152523, 28.668554>,  <36.565250, 41.207172, 28.757879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951302, 41.152523, 28.668554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179770, 0.274233, -0.944711,
		0.190307, 0.951909, 0.240109,
		0.965125, -0.136621, -0.223313,
		37.240841, 41.111538, 28.601561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190533, 41.929752, 28.661661>,  <36.565250, 41.207172, 28.757879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190533, 41.929752, 28.661661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813694, 41.799404, 28.630001>,  <35.587593, 41.721195, 28.611006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.813694, 41.799404, 28.630001>,  <36.190533, 41.929752, 28.661661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813694, 41.799404, 28.630001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091878, -0.477813, 0.873644,
		-0.322516, 0.815783, 0.480085,
		-0.942094, -0.325874, -0.079150,
		35.531067, 41.701641, 28.606256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924896, 42.066647, 29.308372>,  <36.190533, 41.929752, 28.661661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924896, 42.066647, 29.308372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694508, 41.793766, 29.128214>,  <35.556274, 41.630039, 29.020119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.694508, 41.793766, 29.128214>,  <35.924896, 42.066647, 29.308372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694508, 41.793766, 29.128214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002702, -0.549373, 0.835573,
		-0.817465, 0.482483, 0.314580,
		-0.575972, -0.682202, -0.450397,
		35.521717, 41.589104, 28.993095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396351, 41.883526, 29.854517>,  <35.924896, 42.066647, 29.308372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396351, 41.883526, 29.854517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368946, 41.590317, 29.583818>,  <35.352505, 41.414391, 29.421400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368946, 41.590317, 29.583818>,  <35.396351, 41.883526, 29.854517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368946, 41.590317, 29.583818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251324, -0.643780, 0.722761,
		-0.965475, 0.219599, -0.140121,
		-0.068511, -0.733024, -0.676744,
		35.348392, 41.370411, 29.380795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735165, 41.571415, 30.024967>,  <35.396351, 41.883526, 29.854517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735165, 41.571415, 30.024967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987595, 41.312004, 29.854713>,  <35.139053, 41.156357, 29.752562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987595, 41.312004, 29.854713>,  <34.735165, 41.571415, 30.024967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987595, 41.312004, 29.854713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237218, -0.683746, 0.690086,
		-0.738561, -0.334528, -0.585336,
		0.631075, -0.648523, -0.425632,
		35.176918, 41.117447, 29.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391655, 41.038181, 30.106497>,  <34.735165, 41.571415, 30.024967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391655, 41.038181, 30.106497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757915, 40.908150, 30.011923>,  <34.977673, 40.830132, 29.955179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757915, 40.908150, 30.011923>,  <34.391655, 41.038181, 30.106497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757915, 40.908150, 30.011923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079842, -0.723554, 0.685635,
		-0.393959, -0.608927, -0.688480,
		0.915654, -0.325082, -0.236433,
		35.032612, 40.810623, 29.940992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368633, 40.310047, 30.061201>,  <34.391655, 41.038181, 30.106497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368633, 40.310047, 30.061201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759449, 40.381775, 30.107231>,  <34.993938, 40.424812, 30.134850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759449, 40.381775, 30.107231>,  <34.368633, 40.310047, 30.061201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759449, 40.381775, 30.107231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066312, -0.769176, 0.635587,
		0.202488, -0.613361, -0.763405,
		0.977037, 0.179322, 0.115076,
		35.052559, 40.435570, 30.141754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593735, 39.676968, 29.992554>,  <34.368633, 40.310047, 30.061201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593735, 39.676968, 29.992554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885174, 39.897377, 30.155293>,  <35.060036, 40.029621, 30.252935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885174, 39.897377, 30.155293>,  <34.593735, 39.676968, 29.992554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885174, 39.897377, 30.155293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182810, -0.728878, 0.659786,
		0.660096, -0.406343, -0.631790,
		0.728597, 0.551020, 0.406846,
		35.103752, 40.062683, 30.277346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195850, 39.197571, 30.130438>,  <34.593735, 39.676968, 29.992554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195850, 39.197571, 30.130438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192024, 39.504017, 30.387491>,  <35.189728, 39.687885, 30.541723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192024, 39.504017, 30.387491>,  <35.195850, 39.197571, 30.130438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192024, 39.504017, 30.387491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038161, -0.642477, 0.765354,
		0.999226, -0.017202, 0.035382,
		-0.009567, 0.766112, 0.642636,
		35.189156, 39.733852, 30.580282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707710, 39.094528, 30.637657>,  <35.195850, 39.197571, 30.130438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707710, 39.094528, 30.637657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474152, 39.365097, 30.817217>,  <35.334015, 39.527439, 30.924953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474152, 39.365097, 30.817217>,  <35.707710, 39.094528, 30.637657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474152, 39.365097, 30.817217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033451, -0.532434, 0.845810,
		0.811139, 0.508881, 0.288260,
		-0.583896, 0.676427, 0.448900,
		35.298985, 39.568024, 30.951887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037693, 39.180397, 31.266058>,  <35.707710, 39.094528, 30.637657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037693, 39.180397, 31.266058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.662567, 39.316978, 31.291056>,  <35.437492, 39.398926, 31.306053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.662567, 39.316978, 31.291056>,  <36.037693, 39.180397, 31.266058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662567, 39.316978, 31.291056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052939, -0.318609, 0.946407,
		0.343065, 0.884250, 0.316874,
		-0.937819, 0.341454, 0.062492,
		35.381222, 39.419415, 31.309803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062786, 39.613525, 31.917204>,  <36.037693, 39.180397, 31.266058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062786, 39.613525, 31.917204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.675739, 39.546425, 31.841753>,  <35.443512, 39.506165, 31.796482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.675739, 39.546425, 31.841753>,  <36.062786, 39.613525, 31.917204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675739, 39.546425, 31.841753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150009, -0.218869, 0.964155,
		-0.203025, 0.961226, 0.186616,
		-0.967615, -0.167753, -0.188628,
		35.385456, 39.496098, 31.785164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664619, 39.971893, 32.482243>,  <36.062786, 39.613525, 31.917204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664619, 39.971893, 32.482243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390919, 39.718601, 32.337563>,  <35.226700, 39.566628, 32.250755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390919, 39.718601, 32.337563>,  <35.664619, 39.971893, 32.482243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390919, 39.718601, 32.337563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124611, -0.387165, 0.913551,
		-0.718521, 0.670169, 0.186011,
		-0.684251, -0.633227, -0.361697,
		35.185642, 39.528633, 32.229053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.494854, 43.534401, 25.495817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382381, 43.163185, 25.398104>,  <35.314896, 42.940456, 25.339476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382381, 43.163185, 25.398104>,  <35.494854, 43.534401, 25.495817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382381, 43.163185, 25.398104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252177, -0.174154, 0.951881,
		-0.925928, 0.329256, -0.185061,
		-0.281183, -0.928041, -0.244285,
		35.298027, 42.884773, 25.324818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849155, 43.475880, 25.845222>,  <35.494854, 43.534401, 25.495817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849155, 43.475880, 25.845222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948246, 43.101570, 25.744850>,  <35.007702, 42.876984, 25.684628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948246, 43.101570, 25.744850>,  <34.849155, 43.475880, 25.845222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948246, 43.101570, 25.744850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357654, -0.329037, 0.873967,
		-0.900397, -0.126759, -0.416193,
		0.247726, -0.935771, -0.250928,
		35.022564, 42.820839, 25.669571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357555, 43.085609, 26.115482>,  <34.849155, 43.475880, 25.845222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357555, 43.085609, 26.115482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664890, 42.836376, 26.056921>,  <34.849289, 42.686836, 26.021784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664890, 42.836376, 26.056921>,  <34.357555, 43.085609, 26.115482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664890, 42.836376, 26.056921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174606, -0.424105, 0.888621,
		-0.615774, -0.657194, -0.434648,
		0.768333, -0.623082, -0.146403,
		34.895390, 42.649452, 26.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135860, 42.447842, 26.291971>,  <34.357555, 43.085609, 26.115482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135860, 42.447842, 26.291971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533260, 42.408554, 26.314983>,  <34.771702, 42.384983, 26.328791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533260, 42.408554, 26.314983>,  <34.135860, 42.447842, 26.291971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533260, 42.408554, 26.314983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096514, -0.458908, 0.883226,
		-0.060347, -0.883038, -0.465405,
		0.993501, -0.098218, 0.057532,
		34.831310, 42.379089, 26.332243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297153, 41.767025, 26.445723>,  <34.135860, 42.447842, 26.291971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297153, 41.767025, 26.445723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638103, 41.951107, 26.545059>,  <34.842674, 42.061558, 26.604662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638103, 41.951107, 26.545059>,  <34.297153, 41.767025, 26.445723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638103, 41.951107, 26.545059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003309, -0.479636, 0.877461,
		0.522925, -0.747102, -0.410352,
		0.852372, 0.460204, 0.248341,
		34.893814, 42.089169, 26.619562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729774, 41.292450, 26.695940>,  <34.297153, 41.767025, 26.445723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729774, 41.292450, 26.695940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858742, 41.639172, 26.848099>,  <34.936123, 41.847202, 26.939394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858742, 41.639172, 26.848099>,  <34.729774, 41.292450, 26.695940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858742, 41.639172, 26.848099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049779, -0.416829, 0.907621,
		0.945287, -0.273699, -0.177542,
		0.322420, 0.866800, 0.380398,
		34.955467, 41.899212, 26.962217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232658, 41.085083, 27.171391>,  <34.729774, 41.292450, 26.695940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232658, 41.085083, 27.171391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147877, 41.461391, 27.277233>,  <35.097008, 41.687176, 27.340738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147877, 41.461391, 27.277233>,  <35.232658, 41.085083, 27.171391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147877, 41.461391, 27.277233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, -0.192793, 0.931796,
		0.927626, 0.278876, -0.248472,
		-0.211952, 0.940776, 0.264608,
		35.084290, 41.743626, 27.356615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775082, 41.266434, 27.430872>,  <35.232658, 41.085083, 27.171391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775082, 41.266434, 27.430872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514709, 41.523666, 27.592232>,  <35.358486, 41.678005, 27.689049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514709, 41.523666, 27.592232>,  <35.775082, 41.266434, 27.430872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514709, 41.523666, 27.592232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353923, -0.213027, 0.910691,
		0.671586, 0.735570, -0.088936,
		-0.650931, 0.643084, 0.403401,
		35.319431, 41.716591, 27.713253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108208, 41.630550, 27.941891>,  <35.775082, 41.266434, 27.430872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108208, 41.630550, 27.941891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729237, 41.695560, 28.052139>,  <35.501854, 41.734566, 28.118288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729237, 41.695560, 28.052139>,  <36.108208, 41.630550, 27.941891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729237, 41.695560, 28.052139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236562, -0.224233, 0.945388,
		0.215454, 0.960887, 0.173996,
		-0.947427, 0.162527, 0.275621,
		35.445007, 41.744320, 28.134825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777527, 41.712082, 28.238434>,  <36.108208, 41.630550, 27.941891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777527, 41.712082, 28.238434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101841, 41.479900, 28.208227>,  <37.296429, 41.340591, 28.190104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101841, 41.479900, 28.208227>,  <36.777527, 41.712082, 28.238434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101841, 41.479900, 28.208227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245887, 0.454823, -0.855965,
		0.531194, 0.675435, 0.511489,
		0.810785, -0.580451, -0.075519,
		37.345078, 41.305763, 28.185572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315197, 42.205200, 28.227915>,  <36.777527, 41.712082, 28.238434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315197, 42.205200, 28.227915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405094, 41.855022, 28.056759>,  <37.459034, 41.644917, 27.954065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405094, 41.855022, 28.056759>,  <37.315197, 42.205200, 28.227915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405094, 41.855022, 28.056759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141941, 0.463851, -0.874468,
		0.964025, 0.135794, 0.228508,
		0.224742, -0.875444, -0.427889,
		37.472515, 41.592388, 27.928392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038368, 42.326538, 27.896879>,  <37.315197, 42.205200, 28.227915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038368, 42.326538, 27.896879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899662, 42.003098, 27.706755>,  <37.816441, 41.809032, 27.592680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899662, 42.003098, 27.706755>,  <38.038368, 42.326538, 27.896879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899662, 42.003098, 27.706755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464408, 0.292262, -0.836007,
		0.814912, -0.510633, 0.274176,
		-0.346762, -0.808602, -0.475310,
		37.795635, 41.760517, 27.564161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518764, 42.170338, 27.524986>,  <38.038368, 42.326538, 27.896879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518764, 42.170338, 27.524986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210445, 41.984482, 27.350636>,  <38.025455, 41.872967, 27.246025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210445, 41.984482, 27.350636>,  <38.518764, 42.170338, 27.524986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210445, 41.984482, 27.350636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239880, 0.422154, -0.874211,
		0.590198, -0.778394, -0.213936,
		-0.770794, -0.464639, -0.435875,
		37.979206, 41.845089, 27.219873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698063, 42.058296, 26.780550>,  <38.518764, 42.170338, 27.524986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698063, 42.058296, 26.780550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308746, 41.974575, 26.742836>,  <38.075157, 41.924343, 26.720207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308746, 41.974575, 26.742836>,  <38.698063, 42.058296, 26.780550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308746, 41.974575, 26.742836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011122, 0.453237, -0.891320,
		0.229287, -0.866469, -0.443462,
		-0.973295, -0.209300, -0.094284,
		38.016758, 41.911785, 26.714550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607239, 41.587837, 26.296432>,  <38.698063, 42.058296, 26.780550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607239, 41.587837, 26.296432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251865, 41.771431, 26.294550>,  <38.038643, 41.881588, 26.293421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251865, 41.771431, 26.294550>,  <38.607239, 41.587837, 26.296432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251865, 41.771431, 26.294550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113786, 0.210289, -0.970995,
		-0.444684, -0.863197, -0.239054,
		-0.888431, 0.458986, -0.004708,
		37.985336, 41.909126, 26.293139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182945, 41.489796, 25.691420>,  <38.607239, 41.587837, 26.296432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182945, 41.489796, 25.691420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973652, 41.802578, 25.826933>,  <37.848076, 41.990246, 25.908241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973652, 41.802578, 25.826933>,  <38.182945, 41.489796, 25.691420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973652, 41.802578, 25.826933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134718, 0.468443, -0.873162,
		-0.841474, -0.411228, -0.350448,
		-0.523233, 0.781955, 0.338782,
		37.816681, 42.037163, 25.928568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827015, 41.710091, 25.078930>,  <38.182945, 41.489796, 25.691420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827015, 41.710091, 25.078930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834633, 42.039200, 25.306150>,  <37.839203, 42.236664, 25.442482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834633, 42.039200, 25.306150>,  <37.827015, 41.710091, 25.078930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834633, 42.039200, 25.306150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042072, 0.566992, -0.822649,
		-0.998933, 0.039564, -0.023819,
		0.019042, 0.822773, 0.568051,
		37.840347, 42.286034, 25.476566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280109, 42.131538, 24.815256>,  <37.827015, 41.710091, 25.078930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280109, 42.131538, 24.815256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555569, 42.346752, 25.009691>,  <37.720844, 42.475880, 25.126352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555569, 42.346752, 25.009691>,  <37.280109, 42.131538, 24.815256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555569, 42.346752, 25.009691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135532, 0.563054, -0.815231,
		-0.712316, 0.627289, 0.314826,
		0.688649, 0.538033, 0.486090,
		37.762165, 42.508163, 25.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192333, 42.760597, 24.501921>,  <37.280109, 42.131538, 24.815256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192333, 42.760597, 24.501921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551891, 42.821529, 24.666254>,  <37.767628, 42.858089, 24.764854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551891, 42.821529, 24.666254>,  <37.192333, 42.760597, 24.501921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551891, 42.821529, 24.666254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334334, 0.367588, -0.867813,
		-0.283214, 0.917428, 0.279492,
		0.898894, 0.152333, 0.410833,
		37.821560, 42.867229, 24.789505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406078, 43.509090, 24.357300>,  <37.192333, 42.760597, 24.501921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406078, 43.509090, 24.357300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736553, 43.299519, 24.440157>,  <37.934837, 43.173775, 24.489872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736553, 43.299519, 24.440157>,  <37.406078, 43.509090, 24.357300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736553, 43.299519, 24.440157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492811, 0.493881, -0.716393,
		0.273036, 0.693959, 0.666238,
		0.826189, -0.523930, 0.207143,
		37.984409, 43.142338, 24.502300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959545, 43.990639, 24.269560>,  <37.406078, 43.509090, 24.357300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959545, 43.990639, 24.269560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137508, 43.632427, 24.273094>,  <38.244286, 43.417500, 24.275215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137508, 43.632427, 24.273094>,  <37.959545, 43.990639, 24.269560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137508, 43.632427, 24.273094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348833, 0.164201, -0.922688,
		0.824845, 0.413596, 0.385445,
		0.444911, -0.895531, 0.008836,
		38.270981, 43.363770, 24.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758152, 44.116570, 24.190233>,  <37.959545, 43.990639, 24.269560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758152, 44.116570, 24.190233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665031, 43.750263, 24.059278>,  <38.609158, 43.530479, 23.980705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665031, 43.750263, 24.059278>,  <38.758152, 44.116570, 24.190233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665031, 43.750263, 24.059278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399358, 0.216926, -0.890762,
		0.886744, -0.338118, 0.315216,
		-0.232804, -0.915762, -0.327388,
		38.595188, 43.475536, 23.961061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328316, 43.916943, 23.886528>,  <38.758152, 44.116570, 24.190233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328316, 43.916943, 23.886528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045830, 43.682400, 23.727812>,  <38.876339, 43.541672, 23.632582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045830, 43.682400, 23.727812>,  <39.328316, 43.916943, 23.886528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045830, 43.682400, 23.727812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439421, 0.076422, -0.895024,
		0.555131, -0.806437, 0.203689,
		-0.706214, -0.586361, -0.396790,
		38.833965, 43.506493, 23.608774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.402088, 37.493206, 20.990717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356712, 37.860611, 21.142223>,  <35.329487, 38.081055, 21.233128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356712, 37.860611, 21.142223>,  <35.402088, 37.493206, 20.990717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356712, 37.860611, 21.142223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061334, -0.386972, 0.920049,
		0.991650, 0.081142, 0.100235,
		-0.113443, 0.918514, 0.378764,
		35.322681, 38.136166, 21.255852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768768, 37.587608, 21.537746>,  <35.402088, 37.493206, 20.990717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768768, 37.587608, 21.537746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519413, 37.886829, 21.628792>,  <35.369801, 38.066360, 21.683418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519413, 37.886829, 21.628792>,  <35.768768, 37.587608, 21.537746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519413, 37.886829, 21.628792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057225, -0.246669, 0.967409,
		0.779816, 0.616096, 0.110963,
		-0.623388, 0.748051, 0.227612,
		35.332397, 38.111244, 21.697075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078781, 37.910526, 22.123339>,  <35.768768, 37.587608, 21.537746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078781, 37.910526, 22.123339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700279, 38.039688, 22.116020>,  <35.473179, 38.117184, 22.111629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700279, 38.039688, 22.116020>,  <36.078781, 37.910526, 22.123339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700279, 38.039688, 22.116020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085147, -0.194152, 0.977269,
		0.312013, 0.926303, 0.211212,
		-0.946255, 0.322904, -0.018294,
		35.416405, 38.136559, 22.110533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049805, 38.310162, 22.658489>,  <36.078781, 37.910526, 22.123339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049805, 38.310162, 22.658489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657104, 38.271286, 22.593105>,  <35.421486, 38.247959, 22.553875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657104, 38.271286, 22.593105>,  <36.049805, 38.310162, 22.658489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657104, 38.271286, 22.593105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123181, -0.329845, 0.935964,
		-0.144885, 0.939019, 0.311853,
		-0.981751, -0.097193, -0.163459,
		35.362579, 38.242126, 22.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698177, 38.756554, 23.103943>,  <36.049805, 38.310162, 22.658489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698177, 38.756554, 23.103943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445747, 38.462448, 23.005041>,  <35.294289, 38.285984, 22.945700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445747, 38.462448, 23.005041>,  <35.698177, 38.756554, 23.103943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445747, 38.462448, 23.005041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190490, -0.162097, 0.968214,
		-0.751972, 0.658112, -0.037765,
		-0.631072, -0.735264, -0.247256,
		35.256424, 38.241871, 22.930864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384357, 38.724335, 23.733232>,  <35.698177, 38.756554, 23.103943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384357, 38.724335, 23.733232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.251305, 38.396618, 23.546419>,  <35.171474, 38.199989, 23.434332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.251305, 38.396618, 23.546419>,  <35.384357, 38.724335, 23.733232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251305, 38.396618, 23.546419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322406, -0.366601, 0.872731,
		-0.886233, 0.440874, -0.142200,
		-0.332633, -0.819289, -0.467034,
		35.151516, 38.150829, 23.406309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648838, 38.691578, 24.011192>,  <35.384357, 38.724335, 23.733232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648838, 38.691578, 24.011192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762554, 38.324383, 23.900574>,  <34.830784, 38.104065, 23.834204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762554, 38.324383, 23.900574>,  <34.648838, 38.691578, 24.011192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762554, 38.324383, 23.900574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362284, -0.369918, 0.855518,
		-0.887655, -0.143025, -0.437736,
		0.284287, -0.917989, -0.276544,
		34.847839, 38.048985, 23.817610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004196, 38.256691, 23.959959>,  <34.648838, 38.691578, 24.011192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004196, 38.256691, 23.959959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332081, 38.033161, 24.010223>,  <34.528812, 37.899044, 24.040382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332081, 38.033161, 24.010223>,  <34.004196, 38.256691, 23.959959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332081, 38.033161, 24.010223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470665, -0.532145, 0.703773,
		-0.326413, -0.636035, -0.699223,
		0.819713, -0.558821, 0.125661,
		34.577995, 37.865513, 24.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816223, 37.484722, 24.192438>,  <34.004196, 38.256691, 23.959959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816223, 37.484722, 24.192438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193207, 37.555740, 24.305750>,  <34.419395, 37.598351, 24.373737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.193207, 37.555740, 24.305750>,  <33.816223, 37.484722, 24.192438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193207, 37.555740, 24.305750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156591, -0.514204, 0.843252,
		0.295381, -0.839089, -0.456814,
		0.942460, 0.177547, 0.283280,
		34.475945, 37.609005, 24.390734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041061, 36.800549, 24.482821>,  <33.816223, 37.484722, 24.192438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041061, 36.800549, 24.482821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291477, 37.092125, 24.593613>,  <34.441727, 37.267071, 24.660088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291477, 37.092125, 24.593613>,  <34.041061, 36.800549, 24.482821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291477, 37.092125, 24.593613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111954, -0.435535, 0.893183,
		0.771715, -0.528157, -0.354269,
		0.626037, 0.728944, 0.276980,
		34.479290, 37.310810, 24.676706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543484, 36.527431, 24.898689>,  <34.041061, 36.800549, 24.482821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543484, 36.527431, 24.898689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601727, 36.906040, 25.013851>,  <34.636673, 37.133205, 25.082949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601727, 36.906040, 25.013851>,  <34.543484, 36.527431, 24.898689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601727, 36.906040, 25.013851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128324, -0.306617, 0.943143,
		0.980984, -0.100388, -0.166108,
		0.145611, 0.946524, 0.287904,
		34.645409, 37.189999, 25.100222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089043, 36.497395, 25.430223>,  <34.543484, 36.527431, 24.898689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089043, 36.497395, 25.430223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902203, 36.845070, 25.495140>,  <34.790100, 37.053673, 25.534090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.902203, 36.845070, 25.495140>,  <35.089043, 36.497395, 25.430223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902203, 36.845070, 25.495140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154168, -0.100676, 0.982902,
		0.870662, 0.484131, -0.086976,
		-0.467097, 0.869184, 0.162292,
		34.762074, 37.105824, 25.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580212, 36.867950, 25.774324>,  <35.089043, 36.497395, 25.430223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580212, 36.867950, 25.774324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226685, 37.040066, 25.847773>,  <35.014568, 37.143333, 25.891842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226685, 37.040066, 25.847773>,  <35.580212, 36.867950, 25.774324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226685, 37.040066, 25.847773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126679, -0.157718, 0.979325,
		0.450352, 0.888806, 0.084886,
		-0.883819, 0.430288, 0.183622,
		34.961540, 37.169151, 25.902859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696922, 37.397793, 26.378956>,  <35.580212, 36.867950, 25.774324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696922, 37.397793, 26.378956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300232, 37.347969, 26.391434>,  <35.062218, 37.318073, 26.398920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300232, 37.347969, 26.391434>,  <35.696922, 37.397793, 26.378956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300232, 37.347969, 26.391434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048028, -0.134528, 0.989745,
		-0.119087, 0.983050, 0.139397,
		-0.991722, -0.124561, 0.031193,
		35.002716, 37.310600, 26.400791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306614, 37.636726, 26.902061>,  <35.696922, 37.397793, 26.378956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306614, 37.636726, 26.902061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620472, 37.403599, 26.986584>,  <36.808788, 37.263721, 27.037296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620472, 37.403599, 26.986584>,  <36.306614, 37.636726, 26.902061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620472, 37.403599, 26.986584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397572, 0.211539, -0.892854,
		0.475673, 0.784585, 0.397696,
		0.784648, -0.582819, 0.211305,
		36.855865, 37.228752, 27.049974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900383, 37.975506, 26.685795>,  <36.306614, 37.636726, 26.902061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900383, 37.975506, 26.685795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001381, 37.588467, 26.686073>,  <37.061977, 37.356243, 26.686241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001381, 37.588467, 26.686073>,  <36.900383, 37.975506, 26.685795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001381, 37.588467, 26.686073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356500, 0.092359, -0.929719,
		0.899531, 0.234994, 0.368269,
		0.252491, -0.967599, 0.000696,
		37.077129, 37.298187, 26.686281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460983, 37.962276, 26.389761>,  <36.900383, 37.975506, 26.685795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460983, 37.962276, 26.389761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345268, 37.580021, 26.367573>,  <37.275841, 37.350670, 26.354259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345268, 37.580021, 26.367573>,  <37.460983, 37.962276, 26.389761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345268, 37.580021, 26.367573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367737, -0.057445, -0.928154,
		0.883790, -0.288898, 0.368040,
		-0.289284, -0.955635, -0.055469,
		37.258484, 37.293331, 26.350931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028587, 37.599262, 26.100552>,  <37.460983, 37.962276, 26.389761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028587, 37.599262, 26.100552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709499, 37.369087, 26.028423>,  <37.518047, 37.230984, 25.985147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709499, 37.369087, 26.028423>,  <38.028587, 37.599262, 26.100552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709499, 37.369087, 26.028423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331489, -0.168656, -0.928262,
		0.503745, -0.800267, 0.325291,
		-0.797720, -0.575437, -0.180320,
		37.470184, 37.196457, 25.974327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306873, 37.046059, 25.694258>,  <38.028587, 37.599262, 26.100552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306873, 37.046059, 25.694258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911354, 37.069378, 25.639286>,  <37.674042, 37.083370, 25.606302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911354, 37.069378, 25.639286>,  <38.306873, 37.046059, 25.694258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911354, 37.069378, 25.639286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135839, -0.030442, -0.990263,
		-0.061920, -0.997834, 0.022181,
		-0.988794, 0.058304, -0.137430,
		37.614716, 37.086868, 25.598057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317387, 36.487198, 25.234255>,  <38.306873, 37.046059, 25.694258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317387, 36.487198, 25.234255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005066, 36.735016, 25.201973>,  <37.817673, 36.883709, 25.182604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005066, 36.735016, 25.201973>,  <38.317387, 36.487198, 25.234255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005066, 36.735016, 25.201973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175592, 0.093636, -0.980000,
		-0.599601, -0.779353, -0.181899,
		-0.780799, 0.619549, -0.080704,
		37.770824, 36.920879, 25.177761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925678, 36.328682, 24.542480>,  <38.317387, 36.487198, 25.234255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925678, 36.328682, 24.542480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807144, 36.694767, 24.651712>,  <37.736023, 36.914417, 24.717251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807144, 36.694767, 24.651712>,  <37.925678, 36.328682, 24.542480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807144, 36.694767, 24.651712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059706, 0.303114, -0.951082,
		-0.953215, -0.265537, -0.144467,
		-0.296337, 0.915212, 0.273079,
		37.718243, 36.969330, 24.733637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466400, 36.545979, 23.975870>,  <37.925678, 36.328682, 24.542480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466400, 36.545979, 23.975870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591072, 36.871861, 24.171465>,  <37.665874, 37.067390, 24.288822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591072, 36.871861, 24.171465>,  <37.466400, 36.545979, 23.975870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591072, 36.871861, 24.171465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, 0.438495, -0.871224,
		-0.924209, 0.379446, -0.043101,
		0.311683, 0.814704, 0.488989,
		37.684578, 37.116272, 24.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090260, 37.075783, 23.595242>,  <37.466400, 36.545979, 23.975870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090260, 37.075783, 23.595242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387161, 37.252033, 23.797194>,  <37.565304, 37.357784, 23.918364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387161, 37.252033, 23.797194>,  <37.090260, 37.075783, 23.595242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387161, 37.252033, 23.797194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323897, 0.423663, -0.845932,
		-0.586638, 0.791428, 0.171750,
		0.742258, 0.440626, 0.504878,
		37.609840, 37.384220, 23.948656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087475, 37.823082, 23.436386>,  <37.090260, 37.075783, 23.595242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087475, 37.823082, 23.436386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455597, 37.728764, 23.561243>,  <37.676472, 37.672173, 23.636156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455597, 37.728764, 23.561243>,  <37.087475, 37.823082, 23.436386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455597, 37.728764, 23.561243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388077, 0.449805, -0.804407,
		0.049275, 0.861438, 0.505467,
		0.920309, -0.235798, 0.312140,
		37.731689, 37.658024, 23.654884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397243, 38.452915, 23.357224>,  <37.087475, 37.823082, 23.436386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397243, 38.452915, 23.357224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707027, 38.200066, 23.367332>,  <37.892899, 38.048355, 23.373398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707027, 38.200066, 23.367332>,  <37.397243, 38.452915, 23.357224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707027, 38.200066, 23.367332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461405, 0.537065, -0.706163,
		0.432808, 0.558554, 0.707598,
		0.774456, -0.632122, 0.025274,
		37.939365, 38.010429, 23.374914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005932, 38.824051, 23.298973>,  <37.397243, 38.452915, 23.357224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005932, 38.824051, 23.298973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142300, 38.474136, 23.161270>,  <38.224121, 38.264187, 23.078648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142300, 38.474136, 23.161270>,  <38.005932, 38.824051, 23.298973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142300, 38.474136, 23.161270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308071, 0.449938, -0.838241,
		0.888180, 0.179719, 0.422892,
		0.340923, -0.874790, -0.344259,
		38.244576, 38.211700, 23.057993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698963, 38.957920, 23.051376>,  <38.005932, 38.824051, 23.298973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698963, 38.957920, 23.051376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549622, 38.632942, 22.872250>,  <38.460018, 38.437954, 22.764774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549622, 38.632942, 22.872250>,  <38.698963, 38.957920, 23.051376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549622, 38.632942, 22.872250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266265, 0.368563, -0.890654,
		0.888657, -0.451766, 0.078721,
		-0.373353, -0.812446, -0.447816,
		38.437614, 38.389210, 22.737906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256596, 38.678711, 22.656929>,  <38.698963, 38.957920, 23.051376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256596, 38.678711, 22.656929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910400, 38.544075, 22.508528>,  <38.702682, 38.463291, 22.419487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910400, 38.544075, 22.508528>,  <39.256596, 38.678711, 22.656929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910400, 38.544075, 22.508528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235096, 0.381066, -0.894158,
		0.442345, -0.861100, -0.250674,
		-0.865483, -0.336594, -0.371004,
		38.650757, 38.443096, 22.397226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955811, 38.617393, 22.385170>,  <39.256596, 38.678711, 22.656929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955811, 38.617393, 22.385170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081009, 38.985233, 22.480137>,  <40.156128, 39.205936, 22.537117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.081009, 38.985233, 22.480137>,  <39.955811, 38.617393, 22.385170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081009, 38.985233, 22.480137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022058, -0.256948, 0.966173,
		0.949499, -0.297169, -0.100708,
		0.312993, 0.919602, 0.237417,
		40.174908, 39.261112, 22.551363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499729, 38.448322, 22.644819>,  <39.955811, 38.617393, 22.385170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499729, 38.448322, 22.644819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384834, 38.806129, 22.781837>,  <40.315899, 39.020813, 22.864048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.384834, 38.806129, 22.781837>,  <40.499729, 38.448322, 22.644819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384834, 38.806129, 22.781837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120867, -0.320907, 0.939367,
		0.950203, 0.311222, -0.015941,
		-0.287236, 0.894516, 0.342543,
		40.298664, 39.074486, 22.884600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970737, 38.559448, 23.120897>,  <40.499729, 38.448322, 22.644819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970737, 38.559448, 23.120897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670898, 38.803333, 23.223934>,  <40.490993, 38.949665, 23.285757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.670898, 38.803333, 23.223934>,  <40.970737, 38.559448, 23.120897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670898, 38.803333, 23.223934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036931, -0.350043, 0.936005,
		0.660859, 0.711144, 0.239876,
		-0.749601, 0.609709, 0.257592,
		40.446018, 38.986244, 23.301212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212650, 38.937759, 23.691849>,  <40.970737, 38.559448, 23.120897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212650, 38.937759, 23.691849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.821560, 39.015003, 23.724745>,  <40.586906, 39.061348, 23.744482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.821560, 39.015003, 23.724745>,  <41.212650, 38.937759, 23.691849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821560, 39.015003, 23.724745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006409, -0.364163, 0.931313,
		0.209794, 0.911095, 0.354813,
		-0.977725, 0.193110, 0.082239,
		40.528244, 39.072937, 23.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106583, 39.417942, 24.261707>,  <41.212650, 38.937759, 23.691849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106583, 39.417942, 24.261707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768013, 39.217812, 24.188774>,  <40.564873, 39.097733, 24.145014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768013, 39.217812, 24.188774>,  <41.106583, 39.417942, 24.261707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768013, 39.217812, 24.188774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003389, -0.337333, 0.941379,
		-0.532503, 0.797422, 0.283830,
		-0.846421, -0.500325, -0.182333,
		40.514088, 39.067715, 24.134073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771507, 39.387970, 24.840124>,  <41.106583, 39.417942, 24.261707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771507, 39.387970, 24.840124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558880, 39.104527, 24.654522>,  <40.431301, 38.934460, 24.543159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558880, 39.104527, 24.654522>,  <40.771507, 39.387970, 24.840124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558880, 39.104527, 24.654522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163144, -0.451901, 0.877023,
		-0.831153, 0.541901, 0.124612,
		-0.531572, -0.708610, -0.464007,
		40.399406, 38.891945, 24.515320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102638, 39.315552, 25.245945>,  <40.771507, 39.387970, 24.840124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102638, 39.315552, 25.245945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143059, 38.968678, 25.050892>,  <40.167313, 38.760555, 24.933861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143059, 38.968678, 25.050892>,  <40.102638, 39.315552, 25.245945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143059, 38.968678, 25.050892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046632, -0.493729, 0.868364,
		-0.993788, -0.065009, -0.090329,
		0.101050, -0.867182, -0.487631,
		40.173374, 38.708523, 24.904602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625603, 38.963432, 25.521353>,  <40.102638, 39.315552, 25.245945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625603, 38.963432, 25.521353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.896053, 38.712189, 25.367298>,  <40.058323, 38.561443, 25.274866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.896053, 38.712189, 25.367298>,  <39.625603, 38.963432, 25.521353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896053, 38.712189, 25.367298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202153, -0.344516, 0.916757,
		-0.708509, -0.697701, -0.105963,
		0.676128, -0.628109, -0.385135,
		40.098892, 38.523754, 25.251757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501663, 38.274544, 25.575823>,  <39.625603, 38.963432, 25.521353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501663, 38.274544, 25.575823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900921, 38.294933, 25.562454>,  <40.140476, 38.307167, 25.554434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900921, 38.294933, 25.562454>,  <39.501663, 38.274544, 25.575823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900921, 38.294933, 25.562454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049196, -0.349964, 0.935470,
		0.035993, -0.935375, -0.351822,
		0.998140, 0.050979, -0.033420,
		40.200363, 38.310226, 25.552427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622204, 37.615589, 25.816517>,  <39.501663, 38.274544, 25.575823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622204, 37.615589, 25.816517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932312, 37.859367, 25.882889>,  <40.118378, 38.005634, 25.922712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932312, 37.859367, 25.882889>,  <39.622204, 37.615589, 25.816517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932312, 37.859367, 25.882889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012721, -0.247583, 0.968783,
		0.631501, -0.753180, -0.184191,
		0.775271, 0.609444, 0.165931,
		40.164894, 38.042202, 25.932669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951874, 37.272030, 26.428438>,  <39.622204, 37.615589, 25.816517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951874, 37.272030, 26.428438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121456, 37.634090, 26.416050>,  <40.223206, 37.851326, 26.408617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121456, 37.634090, 26.416050>,  <39.951874, 37.272030, 26.428438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121456, 37.634090, 26.416050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108158, -0.016651, 0.993994,
		0.899201, -0.424759, -0.104959,
		0.423955, 0.905153, -0.030969,
		40.248642, 37.905636, 26.406759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517338, 37.218372, 26.826550>,  <39.951874, 37.272030, 26.428438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517338, 37.218372, 26.826550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440891, 37.610184, 26.801266>,  <40.395023, 37.845272, 26.786095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.440891, 37.610184, 26.801266>,  <40.517338, 37.218372, 26.826550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440891, 37.610184, 26.801266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065751, 0.077028, 0.994859,
		0.979364, 0.185974, -0.079126,
		-0.191113, 0.979531, -0.063211,
		40.383556, 37.904041, 26.782303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849251, 37.471169, 27.384418>,  <40.517338, 37.218372, 26.826550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849251, 37.471169, 27.384418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579586, 37.752224, 27.293373>,  <40.417789, 37.920856, 27.238747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579586, 37.752224, 27.293373>,  <40.849251, 37.471169, 27.384418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579586, 37.752224, 27.293373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136784, 0.184067, 0.973350,
		0.725810, 0.687326, -0.027980,
		-0.674159, 0.702640, -0.227612,
		40.377338, 37.963017, 27.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978508, 38.015408, 27.807728>,  <40.849251, 37.471169, 27.384418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978508, 38.015408, 27.807728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601768, 38.093056, 27.698006>,  <40.375725, 38.139645, 27.632174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601768, 38.093056, 27.698006>,  <40.978508, 38.015408, 27.807728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601768, 38.093056, 27.698006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198870, 0.336007, 0.920625,
		0.270879, 0.921638, -0.277863,
		-0.941847, 0.194120, -0.274303,
		40.319214, 38.151291, 27.615715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.733078, 43.474125, 23.269455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343838, 43.432716, 23.187136>,  <39.110294, 43.407871, 23.137745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343838, 43.432716, 23.187136>,  <39.733078, 43.474125, 23.269455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343838, 43.432716, 23.187136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179923, 0.216370, -0.959589,
		0.143859, -0.970809, -0.191926,
		-0.973104, -0.103513, -0.205798,
		39.051907, 43.401661, 23.125397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655766, 42.991215, 22.711361>,  <39.733078, 43.474125, 23.269455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655766, 42.991215, 22.711361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329838, 43.223087, 22.713621>,  <39.134281, 43.362209, 22.714977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329838, 43.223087, 22.713621>,  <39.655766, 42.991215, 22.711361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329838, 43.223087, 22.713621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122254, 0.181359, -0.975788,
		-0.566672, -0.794404, -0.218643,
		-0.814823, 0.579682, 0.005652,
		39.085392, 43.396992, 22.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345245, 42.811806, 22.084663>,  <39.655766, 42.991215, 22.711361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345245, 42.811806, 22.084663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147476, 43.143250, 22.189701>,  <39.028816, 43.342113, 22.252724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147476, 43.143250, 22.189701>,  <39.345245, 42.811806, 22.084663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147476, 43.143250, 22.189701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065428, 0.336722, -0.939328,
		-0.866755, -0.447245, -0.220697,
		-0.494423, 0.828608, 0.262593,
		38.999149, 43.391830, 22.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753738, 42.832764, 21.649181>,  <39.345245, 42.811806, 22.084663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753738, 42.832764, 21.649181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833591, 43.207451, 21.764212>,  <38.881504, 43.432262, 21.833229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833591, 43.207451, 21.764212>,  <38.753738, 42.832764, 21.649181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833591, 43.207451, 21.764212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047012, 0.283989, -0.957674,
		-0.978742, 0.204704, 0.012657,
		0.199635, 0.936721, 0.287575,
		38.893482, 43.488468, 21.850485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409454, 43.262161, 21.170595>,  <38.753738, 42.832764, 21.649181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409454, 43.262161, 21.170595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673744, 43.517311, 21.328863>,  <38.832317, 43.670403, 21.423824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673744, 43.517311, 21.328863>,  <38.409454, 43.262161, 21.170595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673744, 43.517311, 21.328863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030015, 0.504244, -0.863040,
		-0.750028, 0.582107, 0.314020,
		0.660724, 0.637879, 0.395669,
		38.871960, 43.708675, 21.447563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158325, 43.880276, 21.023436>,  <38.409454, 43.262161, 21.170595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158325, 43.880276, 21.023436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541672, 43.980556, 21.078098>,  <38.771683, 44.040726, 21.110897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541672, 43.980556, 21.078098>,  <38.158325, 43.880276, 21.023436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541672, 43.980556, 21.078098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003304, 0.468848, -0.883273,
		-0.285506, 0.846954, 0.448502,
		0.958371, 0.250698, 0.136658,
		38.829182, 44.055767, 21.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251282, 44.520252, 20.738379>,  <38.158325, 43.880276, 21.023436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251282, 44.520252, 20.738379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633797, 44.408539, 20.773043>,  <38.863308, 44.341511, 20.793840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633797, 44.408539, 20.773043>,  <38.251282, 44.520252, 20.738379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633797, 44.408539, 20.773043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199357, 0.405849, -0.891932,
		0.213934, 0.870221, 0.443787,
		0.956289, -0.279287, 0.086660,
		38.920685, 44.324753, 20.799040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778751, 45.170792, 20.698980>,  <38.251282, 44.520252, 20.738379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778751, 45.170792, 20.698980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974041, 44.850315, 20.560577>,  <39.091213, 44.658028, 20.477535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974041, 44.850315, 20.560577>,  <38.778751, 45.170792, 20.698980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974041, 44.850315, 20.560577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085540, 0.438496, -0.894653,
		0.868515, 0.407195, 0.282619,
		0.488225, -0.801195, -0.346009,
		39.120510, 44.609955, 20.456774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392643, 45.450996, 20.288715>,  <38.778751, 45.170792, 20.698980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392643, 45.450996, 20.288715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291187, 45.078827, 20.182896>,  <39.230316, 44.855526, 20.119404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291187, 45.078827, 20.182896>,  <39.392643, 45.450996, 20.288715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291187, 45.078827, 20.182896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063395, 0.288895, -0.955260,
		0.965220, -0.225518, -0.132258,
		-0.253637, -0.930420, -0.264550,
		39.215096, 44.799702, 20.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720741, 45.332298, 19.687111>,  <39.392643, 45.450996, 20.288715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720741, 45.332298, 19.687111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416710, 45.072559, 19.697168>,  <39.234291, 44.916714, 19.703203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416710, 45.072559, 19.697168>,  <39.720741, 45.332298, 19.687111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416710, 45.072559, 19.697168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106355, 0.086136, -0.990590,
		0.641074, -0.755596, -0.134532,
		-0.760074, -0.649350, 0.025142,
		39.188686, 44.877754, 19.704710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662281, 45.231544, 19.010889>,  <39.720741, 45.332298, 19.687111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662281, 45.231544, 19.010889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338299, 45.025440, 19.122940>,  <39.143909, 44.901779, 19.190170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338299, 45.025440, 19.122940>,  <39.662281, 45.231544, 19.010889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338299, 45.025440, 19.122940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353195, 0.047229, -0.934357,
		0.468208, -0.855730, -0.220242,
		-0.809959, -0.515262, 0.280127,
		39.095310, 44.870861, 19.206978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683170, 44.708084, 18.514851>,  <39.662281, 45.231544, 19.010889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683170, 44.708084, 18.514851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318539, 44.800301, 18.651012>,  <39.099758, 44.855629, 18.732710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318539, 44.800301, 18.651012>,  <39.683170, 44.708084, 18.514851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318539, 44.800301, 18.651012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316797, 0.133848, -0.939002,
		-0.262039, -0.963813, -0.048979,
		-0.911578, 0.230539, 0.340407,
		39.045067, 44.869461, 18.753134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876614, 43.969719, 18.274632>,  <39.683170, 44.708084, 18.514851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876614, 43.969719, 18.274632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.206177, 43.758072, 18.355843>,  <40.403915, 43.631084, 18.404570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.206177, 43.758072, 18.355843>,  <39.876614, 43.969719, 18.274632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206177, 43.758072, 18.355843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464066, 0.835512, 0.294216,
		-0.325307, -0.148187, 0.933925,
		0.823904, -0.529114, 0.203029,
		40.453346, 43.599339, 18.416752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361900, 43.330143, 17.976440>,  <39.876614, 43.969719, 18.274632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361900, 43.330143, 17.976440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304634, 43.029606, 17.718761>,  <40.270275, 42.849285, 17.564154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304634, 43.029606, 17.718761>,  <40.361900, 43.330143, 17.976440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304634, 43.029606, 17.718761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183923, -0.659762, 0.728620,
		-0.972459, -0.014171, 0.232642,
		-0.143163, -0.751341, -0.644198,
		40.261684, 42.804203, 17.525501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944542, 42.917427, 18.368500>,  <40.361900, 43.330143, 17.976440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944542, 42.917427, 18.368500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134163, 42.674381, 18.113602>,  <40.247936, 42.528553, 17.960663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134163, 42.674381, 18.113602>,  <39.944542, 42.917427, 18.368500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134163, 42.674381, 18.113602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028953, -0.734097, 0.678427,
		-0.880022, -0.303157, -0.365590,
		0.474049, -0.607616, -0.637244,
		40.276379, 42.492096, 17.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611736, 42.342197, 18.450975>,  <39.944542, 42.917427, 18.368500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611736, 42.342197, 18.450975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960995, 42.233486, 18.289110>,  <40.170551, 42.168259, 18.191992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960995, 42.233486, 18.289110>,  <39.611736, 42.342197, 18.450975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960995, 42.233486, 18.289110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036288, -0.864085, 0.502036,
		-0.486106, -0.423666, -0.764335,
		0.873146, -0.271779, -0.404663,
		40.222939, 42.151951, 18.167711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406513, 41.693195, 18.311434>,  <39.611736, 42.342197, 18.450975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406513, 41.693195, 18.311434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805420, 41.711823, 18.288515>,  <40.044765, 41.723000, 18.274763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805420, 41.711823, 18.288515>,  <39.406513, 41.693195, 18.311434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805420, 41.711823, 18.288515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073369, -0.711839, 0.698500,
		-0.008261, -0.700797, -0.713313,
		0.997270, 0.046565, -0.057298,
		40.104603, 41.725792, 18.271326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718498, 40.878387, 18.170683>,  <39.406513, 41.693195, 18.311434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718498, 40.878387, 18.170683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.018044, 41.085548, 18.336088>,  <40.197769, 41.209843, 18.435331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.018044, 41.085548, 18.336088>,  <39.718498, 40.878387, 18.170683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018044, 41.085548, 18.336088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151271, -0.741057, 0.654181,
		0.645235, -0.427336, -0.633290,
		0.748859, 0.517898, 0.413512,
		40.242702, 41.240917, 18.460142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354645, 40.431374, 18.291058>,  <39.718498, 40.878387, 18.170683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354645, 40.431374, 18.291058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404602, 40.738552, 18.542347>,  <40.434578, 40.922859, 18.693121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404602, 40.738552, 18.542347>,  <40.354645, 40.431374, 18.291058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404602, 40.738552, 18.542347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158293, -0.640493, 0.751473,
		0.979461, 0.005587, -0.201555,
		0.124896, 0.767944, 0.628223,
		40.442070, 40.968937, 18.730814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895920, 40.211681, 18.777369>,  <40.354645, 40.431374, 18.291058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895920, 40.211681, 18.777369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746510, 40.532093, 18.964489>,  <40.656864, 40.724339, 19.076761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746510, 40.532093, 18.964489>,  <40.895920, 40.211681, 18.777369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746510, 40.532093, 18.964489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118545, -0.458946, 0.880520,
		0.920016, 0.384348, 0.076468,
		-0.373521, 0.801028, 0.467800,
		40.634453, 40.772400, 19.104830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382309, 40.359402, 19.336512>,  <40.895920, 40.211681, 18.777369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382309, 40.359402, 19.336512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035210, 40.526432, 19.444317>,  <40.826950, 40.626652, 19.508999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.035210, 40.526432, 19.444317>,  <41.382309, 40.359402, 19.336512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035210, 40.526432, 19.444317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097425, -0.388836, 0.916142,
		0.487358, 0.821239, 0.296729,
		-0.867750, 0.417580, 0.269511,
		40.774883, 40.651707, 19.525169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381855, 40.756958, 19.957678>,  <41.382309, 40.359402, 19.336512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381855, 40.756958, 19.957678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.994911, 40.666691, 19.911556>,  <40.762745, 40.612530, 19.883884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.994911, 40.666691, 19.911556>,  <41.381855, 40.756958, 19.957678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994911, 40.666691, 19.911556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053358, -0.263415, 0.963206,
		-0.247736, 0.937916, 0.242776,
		-0.967357, -0.225667, -0.115303,
		40.704704, 40.598991, 19.876965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063042, 41.043018, 20.578541>,  <41.381855, 40.756958, 19.957678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063042, 41.043018, 20.578541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795158, 40.774925, 20.450617>,  <40.634430, 40.614067, 20.373863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.795158, 40.774925, 20.450617>,  <41.063042, 41.043018, 20.578541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795158, 40.774925, 20.450617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203257, -0.248771, 0.946995,
		-0.714269, 0.699211, 0.030373,
		-0.669706, -0.670236, -0.319809,
		40.594246, 40.573853, 20.354673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616478, 41.037075, 21.068258>,  <41.063042, 41.043018, 20.578541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616478, 41.037075, 21.068258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526157, 40.694515, 20.882528>,  <40.471966, 40.488979, 20.771091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526157, 40.694515, 20.882528>,  <40.616478, 41.037075, 21.068258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526157, 40.694515, 20.882528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313926, -0.387239, 0.866889,
		-0.922205, 0.341512, -0.181405,
		-0.225806, -0.856397, -0.464323,
		40.458416, 40.437595, 20.743231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941509, 40.966850, 21.392601>,  <40.616478, 41.037075, 21.068258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941509, 40.966850, 21.392601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091045, 40.619061, 21.263445>,  <40.180767, 40.410385, 21.185951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091045, 40.619061, 21.263445>,  <39.941509, 40.966850, 21.392601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091045, 40.619061, 21.263445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168549, -0.406020, 0.898186,
		-0.912049, -0.281356, -0.298336,
		0.373841, -0.869474, -0.322888,
		40.203197, 40.358219, 21.166578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553421, 40.477570, 21.793764>,  <39.941509, 40.966850, 21.392601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553421, 40.477570, 21.793764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854839, 40.253666, 21.655874>,  <40.035690, 40.119324, 21.573141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854839, 40.253666, 21.655874>,  <39.553421, 40.477570, 21.793764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854839, 40.253666, 21.655874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022261, -0.545805, 0.837616,
		-0.657018, -0.623509, -0.423751,
		0.753546, -0.559762, -0.344724,
		40.080902, 40.085739, 21.552458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347797, 39.777298, 21.909267>,  <39.553421, 40.477570, 21.793764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347797, 39.777298, 21.909267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747040, 39.797520, 21.895212>,  <39.986584, 39.809654, 21.886778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.747040, 39.797520, 21.895212>,  <39.347797, 39.777298, 21.909267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747040, 39.797520, 21.895212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057924, -0.577562, 0.814289,
		0.020873, -0.814780, -0.579394,
		0.998103, 0.050558, -0.035140,
		40.046471, 39.812687, 21.884670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507591, 39.111103, 21.968107>,  <39.347797, 39.777298, 21.909267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507591, 39.111103, 21.968107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807514, 39.346687, 22.088718>,  <39.987465, 39.488037, 22.161085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807514, 39.346687, 22.088718>,  <39.507591, 39.111103, 21.968107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807514, 39.346687, 22.088718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075832, -0.529204, 0.845099,
		0.657302, -0.610792, -0.441461,
		0.749802, 0.588962, 0.301529,
		40.032455, 39.523376, 22.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417622, 38.374264, 21.847193>,  <39.507591, 39.111103, 21.968107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417622, 38.374264, 21.847193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018211, 38.394009, 21.856243>,  <38.778564, 38.405857, 21.861673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018211, 38.394009, 21.856243>,  <39.417622, 38.374264, 21.847193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018211, 38.394009, 21.856243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010616, 0.231160, -0.972858,
		-0.053253, -0.971663, -0.230295,
		-0.998525, 0.049362, 0.022625,
		38.718655, 38.408817, 21.863031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225376, 38.103680, 21.251404>,  <39.417622, 38.374264, 21.847193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225376, 38.103680, 21.251404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873158, 38.266567, 21.348410>,  <38.661827, 38.364300, 21.406612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873158, 38.266567, 21.348410>,  <39.225376, 38.103680, 21.251404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873158, 38.266567, 21.348410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173487, 0.199242, -0.964471,
		-0.441074, -0.891332, -0.104793,
		-0.880543, 0.407223, 0.242515,
		38.608994, 38.388733, 21.421164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708698, 37.762630, 20.951580>,  <39.225376, 38.103680, 21.251404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708698, 37.762630, 20.951580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571297, 38.132988, 21.014481>,  <38.488857, 38.355202, 21.052221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571297, 38.132988, 21.014481>,  <38.708698, 37.762630, 20.951580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571297, 38.132988, 21.014481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119898, 0.122833, -0.985158,
		-0.931468, -0.357255, 0.068819,
		-0.343499, 0.925895, 0.157249,
		38.468246, 38.410755, 21.061655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146236, 37.801365, 20.547314>,  <38.708698, 37.762630, 20.951580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146236, 37.801365, 20.547314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230686, 38.186428, 20.615086>,  <38.281357, 38.417465, 20.655748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230686, 38.186428, 20.615086>,  <38.146236, 37.801365, 20.547314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230686, 38.186428, 20.615086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159760, 0.204991, -0.965637,
		-0.964314, 0.176804, 0.197074,
		0.211127, 0.962663, 0.169429,
		38.294025, 38.475227, 20.665915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571861, 38.220119, 20.257236>,  <38.146236, 37.801365, 20.547314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571861, 38.220119, 20.257236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874672, 38.478416, 20.297106>,  <38.056358, 38.633392, 20.321028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.874672, 38.478416, 20.297106>,  <37.571861, 38.220119, 20.257236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874672, 38.478416, 20.297106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070490, 0.232377, -0.970068,
		-0.649574, 0.727338, 0.221433,
		0.757024, 0.645740, 0.099675,
		38.101780, 38.672138, 20.327009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390930, 38.689510, 19.806097>,  <37.571861, 38.220119, 20.257236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390930, 38.689510, 19.806097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769863, 38.801617, 19.868082>,  <37.997223, 38.868881, 19.905273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769863, 38.801617, 19.868082>,  <37.390930, 38.689510, 19.806097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769863, 38.801617, 19.868082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086555, 0.241801, -0.966458,
		-0.308338, 0.928968, 0.204807,
		0.947331, 0.280269, 0.154963,
		38.054062, 38.885696, 19.914572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513622, 39.459545, 19.773769>,  <37.390930, 38.689510, 19.806097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513622, 39.459545, 19.773769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.871597, 39.305325, 19.683939>,  <38.086384, 39.212791, 19.630041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.871597, 39.305325, 19.683939>,  <37.513622, 39.459545, 19.773769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871597, 39.305325, 19.683939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036335, 0.564625, -0.824547,
		0.444706, 0.729760, 0.519314,
		0.894939, -0.385550, -0.224576,
		38.140079, 39.189659, 19.616566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983215, 39.946545, 19.834898>,  <37.513622, 39.459545, 19.773769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983215, 39.946545, 19.834898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642872, 39.981026, 19.627586>,  <36.438667, 40.001713, 19.503199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642872, 39.981026, 19.627586>,  <36.983215, 39.946545, 19.834898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642872, 39.981026, 19.627586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465744, -0.580281, 0.668099,
		-0.243159, 0.809841, 0.533883,
		-0.850856, 0.086199, -0.518279,
		36.387615, 40.006886, 19.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459061, 40.080673, 20.323915>,  <36.983215, 39.946545, 19.834898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459061, 40.080673, 20.323915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290897, 39.924782, 19.996168>,  <36.189999, 39.831245, 19.799520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290897, 39.924782, 19.996168>,  <36.459061, 40.080673, 20.323915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290897, 39.924782, 19.996168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371935, -0.749667, 0.547416,
		-0.827599, 0.534891, 0.170213,
		-0.420411, -0.389732, -0.819368,
		36.164776, 39.807861, 19.750359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792114, 39.969036, 20.534498>,  <36.459061, 40.080673, 20.323915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792114, 39.969036, 20.534498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876892, 39.723217, 20.230547>,  <35.927761, 39.575726, 20.048176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876892, 39.723217, 20.230547>,  <35.792114, 39.969036, 20.534498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876892, 39.723217, 20.230547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415891, -0.760339, 0.498918,
		-0.884371, 0.210282, -0.416736,
		0.211948, -0.614545, -0.759876,
		35.940475, 39.538853, 20.002584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187637, 39.661900, 20.514378>,  <35.792114, 39.969036, 20.534498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187637, 39.661900, 20.514378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454426, 39.418125, 20.342922>,  <35.614498, 39.271858, 20.240049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454426, 39.418125, 20.342922>,  <35.187637, 39.661900, 20.514378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454426, 39.418125, 20.342922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417196, -0.782121, 0.462853,
		-0.617327, -0.129885, -0.775910,
		0.666974, -0.609439, -0.428637,
		35.654518, 39.235294, 20.214331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771797, 39.111500, 20.281372>,  <35.187637, 39.661900, 20.514378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771797, 39.111500, 20.281372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146641, 38.973721, 20.303934>,  <35.371548, 38.891052, 20.317471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.146641, 38.973721, 20.303934>,  <34.771797, 39.111500, 20.281372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146641, 38.973721, 20.303934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305407, -0.730964, 0.610261,
		-0.168974, -0.589107, -0.790190,
		0.937109, -0.344448, 0.056404,
		35.427773, 38.870384, 20.320856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724262, 38.402447, 20.275852>,  <34.771797, 39.111500, 20.281372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724262, 38.402447, 20.275852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082504, 38.466198, 20.441980>,  <35.297451, 38.504448, 20.541656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082504, 38.466198, 20.441980>,  <34.724262, 38.402447, 20.275852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082504, 38.466198, 20.441980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273621, -0.538753, 0.796792,
		0.350746, -0.827250, -0.438901,
		0.895605, 0.159379, 0.415318,
		35.351185, 38.514011, 20.566576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906887, 37.802513, 20.505831>,  <34.724262, 38.402447, 20.275852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906887, 37.802513, 20.505831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117207, 38.064503, 20.722916>,  <35.243401, 38.221699, 20.853167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117207, 38.064503, 20.722916>,  <34.906887, 37.802513, 20.505831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117207, 38.064503, 20.722916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149091, -0.557187, 0.816893,
		0.837439, -0.510437, -0.195318,
		0.525802, 0.654979, 0.542712,
		35.274948, 38.260998, 20.885729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.838093, 46.257568, 19.316422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161736, 46.022812, 19.304379>,  <36.355923, 45.881958, 19.297153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.161736, 46.022812, 19.304379>,  <35.838093, 46.257568, 19.316422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161736, 46.022812, 19.304379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355074, -0.529053, 0.770730,
		-0.468262, -0.612913, -0.636450,
		0.809107, -0.586890, -0.030106,
		36.404469, 45.846745, 19.295347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614784, 45.529545, 19.305777>,  <35.838093, 46.257568, 19.316422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614784, 45.529545, 19.305777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977829, 45.551933, 19.472206>,  <36.195656, 45.565365, 19.572063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977829, 45.551933, 19.472206>,  <35.614784, 45.529545, 19.305777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977829, 45.551933, 19.472206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299745, -0.607521, 0.735576,
		0.293943, -0.792329, -0.534613,
		0.907607, 0.055970, 0.416073,
		36.250111, 45.568726, 19.597029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685116, 44.864368, 19.545391>,  <35.614784, 45.529545, 19.305777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685116, 44.864368, 19.545391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.956902, 45.065498, 19.759119>,  <36.119972, 45.186176, 19.887356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.956902, 45.065498, 19.759119>,  <35.685116, 44.864368, 19.545391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956902, 45.065498, 19.759119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135465, -0.629752, 0.764893,
		0.721098, -0.592097, -0.359777,
		0.679461, 0.502826, 0.534321,
		36.160740, 45.216347, 19.919415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184456, 44.439053, 19.817007>,  <35.685116, 44.864368, 19.545391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184456, 44.439053, 19.817007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203587, 44.764774, 20.048393>,  <36.215065, 44.960205, 20.187225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.203587, 44.764774, 20.048393>,  <36.184456, 44.439053, 19.817007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203587, 44.764774, 20.048393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006620, -0.578859, 0.815401,
		0.998834, -0.042825, -0.022293,
		0.047824, 0.814302, 0.578468,
		36.217934, 45.009064, 20.221933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712337, 44.268330, 20.322069>,  <36.184456, 44.439053, 19.817007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712337, 44.268330, 20.322069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511051, 44.571323, 20.488440>,  <36.390282, 44.753120, 20.588261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511051, 44.571323, 20.488440>,  <36.712337, 44.268330, 20.322069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511051, 44.571323, 20.488440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011049, -0.475624, 0.879579,
		0.864093, 0.447209, 0.230970,
		-0.503211, 0.757486, 0.415925,
		36.360088, 44.798569, 20.613216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080830, 44.468212, 21.095617>,  <36.712337, 44.268330, 20.322069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080830, 44.468212, 21.095617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696873, 44.569260, 21.046957>,  <36.466499, 44.629887, 21.017761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696873, 44.569260, 21.046957>,  <37.080830, 44.468212, 21.095617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696873, 44.569260, 21.046957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228376, -0.452715, 0.861913,
		0.162660, 0.855123, 0.492247,
		-0.959889, 0.252616, -0.121651,
		36.408905, 44.645042, 21.010462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808098, 44.889938, 21.655432>,  <37.080830, 44.468212, 21.095617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808098, 44.889938, 21.655432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488586, 44.708118, 21.497784>,  <36.296879, 44.599026, 21.403194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488586, 44.708118, 21.497784>,  <36.808098, 44.889938, 21.655432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488586, 44.708118, 21.497784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239667, -0.360449, 0.901463,
		-0.551821, 0.814530, 0.178980,
		-0.798782, -0.454551, -0.394119,
		36.248951, 44.571754, 21.379547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541187, 44.769241, 22.259506>,  <36.808098, 44.889938, 21.655432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541187, 44.769241, 22.259506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.299335, 44.580437, 22.002872>,  <36.154224, 44.467155, 21.848892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.299335, 44.580437, 22.002872>,  <36.541187, 44.769241, 22.259506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299335, 44.580437, 22.002872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477640, -0.429736, 0.766281,
		-0.637403, 0.769763, 0.034381,
		-0.604630, -0.472008, -0.641585,
		36.117947, 44.438835, 21.810396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967220, 44.765049, 22.607616>,  <36.541187, 44.769241, 22.259506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967220, 44.765049, 22.607616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.856964, 44.496464, 22.332470>,  <35.790810, 44.335312, 22.167381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.856964, 44.496464, 22.332470>,  <35.967220, 44.765049, 22.607616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856964, 44.496464, 22.332470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537856, -0.485352, 0.689307,
		-0.796701, 0.559976, -0.227365,
		-0.275644, -0.671461, -0.687867,
		35.774273, 44.295025, 22.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201225, 44.701099, 22.504337>,  <35.967220, 44.765049, 22.607616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201225, 44.701099, 22.504337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.391056, 44.358330, 22.423889>,  <35.504955, 44.152668, 22.375620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.391056, 44.358330, 22.423889>,  <35.201225, 44.701099, 22.504337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391056, 44.358330, 22.423889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513412, -0.455087, 0.727533,
		-0.714969, -0.242016, -0.655932,
		0.474581, -0.856927, -0.201119,
		35.533432, 44.101254, 22.363554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634441, 44.073971, 22.535742>,  <35.201225, 44.701099, 22.504337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634441, 44.073971, 22.535742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.996861, 43.909927, 22.577477>,  <35.214314, 43.811501, 22.602516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.996861, 43.909927, 22.577477>,  <34.634441, 44.073971, 22.535742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996861, 43.909927, 22.577477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333029, -0.538911, 0.773736,
		-0.261088, -0.735789, -0.624857,
		0.906049, -0.410109, 0.104336,
		35.268677, 43.786896, 22.608778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598198, 43.257904, 22.608158>,  <34.634441, 44.073971, 22.535742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598198, 43.257904, 22.608158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946499, 43.363312, 22.774218>,  <35.155479, 43.426556, 22.873854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946499, 43.363312, 22.774218>,  <34.598198, 43.257904, 22.608158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946499, 43.363312, 22.774218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221794, -0.543031, 0.809892,
		0.438858, -0.797293, -0.414400,
		0.870753, 0.263516, 0.415149,
		35.207726, 43.442368, 22.898762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414158, 42.479866, 22.553139>,  <34.598198, 43.257904, 22.608158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414158, 42.479866, 22.553139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028133, 42.584633, 22.556190>,  <33.796520, 42.647495, 22.558022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028133, 42.584633, 22.556190>,  <34.414158, 42.479866, 22.553139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028133, 42.584633, 22.556190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028102, -0.074500, -0.996825,
		-0.260521, -0.962210, 0.079258,
		-0.965059, 0.261921, 0.007631,
		33.738617, 42.663208, 22.558479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130322, 42.085369, 22.052773>,  <34.414158, 42.479866, 22.553139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130322, 42.085369, 22.052773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.842369, 42.362450, 22.070387>,  <33.669598, 42.528698, 22.080956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.842369, 42.362450, 22.070387>,  <34.130322, 42.085369, 22.052773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842369, 42.362450, 22.070387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110383, -0.051619, -0.992548,
		-0.685266, -0.719375, 0.113622,
		-0.719879, 0.692701, 0.044034,
		33.626404, 42.570259, 22.083597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486298, 41.927895, 21.646566>,  <34.130322, 42.085369, 22.052773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486298, 41.927895, 21.646566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458549, 42.326576, 21.663424>,  <33.441902, 42.565784, 21.673538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.458549, 42.326576, 21.663424>,  <33.486298, 41.927895, 21.646566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458549, 42.326576, 21.663424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016704, 0.041080, -0.999016,
		-0.997452, -0.070002, 0.013800,
		-0.069366, 0.996701, 0.042145,
		33.437740, 42.625587, 21.676067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981064, 42.099636, 21.176924>,  <33.486298, 41.927895, 21.646566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981064, 42.099636, 21.176924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.191357, 42.435211, 21.233177>,  <33.317532, 42.636559, 21.266930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.191357, 42.435211, 21.233177>,  <32.981064, 42.099636, 21.176924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191357, 42.435211, 21.233177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173497, 0.056099, -0.983235,
		-0.832767, 0.541322, -0.116061,
		0.525736, 0.838942, 0.140635,
		33.349079, 42.686893, 21.275368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858131, 42.435013, 20.627483>,  <32.981064, 42.099636, 21.176924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858131, 42.435013, 20.627483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.173882, 42.646706, 20.751934>,  <33.363331, 42.773720, 20.826605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.173882, 42.646706, 20.751934>,  <32.858131, 42.435013, 20.627483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173882, 42.646706, 20.751934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110755, 0.375714, -0.920094,
		-0.603838, 0.760758, 0.237964,
		0.789375, 0.529232, 0.311128,
		33.410694, 42.805477, 20.845272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847279, 43.011116, 20.241613>,  <32.858131, 42.435013, 20.627483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847279, 43.011116, 20.241613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.224861, 43.024662, 20.372944>,  <33.451412, 43.032791, 20.451742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.224861, 43.024662, 20.372944>,  <32.847279, 43.011116, 20.241613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224861, 43.024662, 20.372944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301445, 0.316726, -0.899341,
		-0.134444, 0.947912, 0.288768,
		0.943957, 0.033863, 0.328326,
		33.508049, 43.034821, 20.471441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130352, 43.686768, 20.056709>,  <32.847279, 43.011116, 20.241613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130352, 43.686768, 20.056709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440475, 43.438263, 20.102196>,  <33.626549, 43.289158, 20.129488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440475, 43.438263, 20.102196>,  <33.130352, 43.686768, 20.056709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440475, 43.438263, 20.102196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289085, 0.188989, -0.938463,
		0.561542, 0.760470, 0.326122,
		0.775307, -0.621264, 0.113715,
		33.673069, 43.251884, 20.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595001, 44.080280, 19.786598>,  <33.130352, 43.686768, 20.056709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595001, 44.080280, 19.786598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749477, 43.711346, 19.791355>,  <33.842163, 43.489983, 19.794209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.749477, 43.711346, 19.791355>,  <33.595001, 44.080280, 19.786598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749477, 43.711346, 19.791355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339381, 0.130090, -0.931610,
		0.857715, 0.363818, 0.363265,
		0.386194, -0.922341, 0.011893,
		33.865334, 43.434643, 19.794924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270462, 44.174728, 19.689953>,  <33.595001, 44.080280, 19.786598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270462, 44.174728, 19.689953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213745, 43.801132, 19.558767>,  <34.179714, 43.576977, 19.480057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.213745, 43.801132, 19.558767>,  <34.270462, 44.174728, 19.689953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213745, 43.801132, 19.558767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443918, 0.236132, -0.864395,
		0.884777, -0.268156, 0.381132,
		-0.141795, -0.933988, -0.327963,
		34.171207, 43.520935, 19.460379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898571, 43.870533, 19.456976>,  <34.270462, 44.174728, 19.689953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898571, 43.870533, 19.456976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600132, 43.668388, 19.283562>,  <34.421070, 43.547100, 19.179514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600132, 43.668388, 19.283562>,  <34.898571, 43.870533, 19.456976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600132, 43.668388, 19.283562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396788, 0.185414, -0.898988,
		0.534697, -0.842753, 0.062184,
		-0.746095, -0.505360, -0.433535,
		34.376305, 43.516781, 19.153502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161411, 43.746395, 18.794340>,  <34.898571, 43.870533, 19.456976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161411, 43.746395, 18.794340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772964, 43.661453, 18.750837>,  <34.539894, 43.610489, 18.724735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772964, 43.661453, 18.750837>,  <35.161411, 43.746395, 18.794340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772964, 43.661453, 18.750837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065176, 0.202371, -0.977138,
		0.229522, -0.956005, -0.182685,
		-0.971119, -0.212368, -0.108757,
		34.481628, 43.597748, 18.718210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136921, 43.393856, 18.137447>,  <35.161411, 43.746395, 18.794340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136921, 43.393856, 18.137447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761059, 43.517357, 18.196390>,  <34.535542, 43.591457, 18.231756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.761059, 43.517357, 18.196390>,  <35.136921, 43.393856, 18.137447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761059, 43.517357, 18.196390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024030, 0.489227, -0.871825,
		-0.341266, -0.815678, -0.467126,
		-0.939659, 0.308749, 0.147356,
		34.479160, 43.609982, 18.240597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809074, 43.324844, 17.458488>,  <35.136921, 43.393856, 18.137447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809074, 43.324844, 17.458488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.576740, 43.581360, 17.659042>,  <34.437340, 43.735268, 17.779375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.576740, 43.581360, 17.659042>,  <34.809074, 43.324844, 17.458488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576740, 43.581360, 17.659042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159442, 0.514381, -0.842610,
		-0.798256, -0.569356, -0.196521,
		-0.580831, 0.641285, 0.501387,
		34.402493, 43.773746, 17.809458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344090, 42.794273, 17.632549>,  <34.809074, 43.324844, 17.458488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344090, 42.794273, 17.632549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566082, 42.599186, 17.362995>,  <35.699276, 42.482132, 17.201263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566082, 42.599186, 17.362995>,  <35.344090, 42.794273, 17.632549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566082, 42.599186, 17.362995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241691, -0.680608, 0.691634,
		-0.795978, -0.546716, -0.259846,
		0.554981, -0.487724, -0.673886,
		35.732574, 42.452869, 17.160830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173763, 42.188389, 17.718401>,  <35.344090, 42.794273, 17.632549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173763, 42.188389, 17.718401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514767, 42.126083, 17.518812>,  <35.719368, 42.088699, 17.399059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514767, 42.126083, 17.518812>,  <35.173763, 42.188389, 17.718401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514767, 42.126083, 17.518812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261170, -0.699956, 0.664719,
		-0.452796, -0.696993, -0.556036,
		0.852506, -0.155762, -0.498971,
		35.770519, 42.079353, 17.369120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210312, 41.519821, 17.705153>,  <35.173763, 42.188389, 17.718401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210312, 41.519821, 17.705153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.588253, 41.623360, 17.624901>,  <35.815018, 41.685482, 17.576750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.588253, 41.623360, 17.624901>,  <35.210312, 41.519821, 17.705153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588253, 41.623360, 17.624901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318340, -0.582051, 0.748249,
		0.076910, -0.770852, -0.632354,
		0.944852, 0.258851, -0.200628,
		35.871708, 41.701015, 17.564713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516087, 40.924919, 17.417578>,  <35.210312, 41.519821, 17.705153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516087, 40.924919, 17.417578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796806, 41.153660, 17.587505>,  <35.965237, 41.290905, 17.689463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796806, 41.153660, 17.587505>,  <35.516087, 40.924919, 17.417578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796806, 41.153660, 17.587505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263288, -0.762326, 0.591218,
		0.661939, -0.303064, -0.685558,
		0.701796, 0.571849, 0.424820,
		36.007343, 41.325214, 17.714951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012135, 40.409969, 17.654474>,  <35.516087, 40.924919, 17.417578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012135, 40.409969, 17.654474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.126461, 40.728859, 17.867167>,  <36.195057, 40.920193, 17.994781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.126461, 40.728859, 17.867167>,  <36.012135, 40.409969, 17.654474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126461, 40.728859, 17.867167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358153, -0.603535, 0.712370,
		0.888839, -0.013166, -0.458030,
		0.285816, 0.797228, 0.531730,
		36.212204, 40.968029, 18.026686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696156, 40.187519, 17.908554>,  <36.012135, 40.409969, 17.654474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696156, 40.187519, 17.908554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539402, 40.477585, 18.135027>,  <36.445351, 40.651623, 18.270910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539402, 40.477585, 18.135027>,  <36.696156, 40.187519, 17.908554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539402, 40.477585, 18.135027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221852, -0.522759, 0.823107,
		0.892865, 0.448172, 0.043982,
		-0.391886, 0.725166, 0.566180,
		36.421837, 40.695133, 18.304880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163406, 40.276260, 18.376091>,  <36.696156, 40.187519, 17.908554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163406, 40.276260, 18.376091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836781, 40.420254, 18.556591>,  <36.640804, 40.506649, 18.664892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836781, 40.420254, 18.556591>,  <37.163406, 40.276260, 18.376091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836781, 40.420254, 18.556591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109479, -0.670958, 0.733368,
		0.566774, 0.648247, 0.508472,
		-0.816567, 0.359987, 0.451251,
		36.591812, 40.528252, 18.691967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266037, 40.337036, 19.185120>,  <37.163406, 40.276260, 18.376091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266037, 40.337036, 19.185120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868256, 40.315716, 19.148851>,  <36.629585, 40.302925, 19.127090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868256, 40.315716, 19.148851>,  <37.266037, 40.337036, 19.185120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868256, 40.315716, 19.148851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029714, -0.684579, 0.728333,
		-0.100890, 0.726987, 0.679199,
		-0.994454, -0.053300, -0.090669,
		36.569920, 40.299725, 19.121651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960033, 40.073376, 19.502829>,  <37.266037, 40.337036, 19.185120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960033, 40.073376, 19.502829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184540, 39.756592, 19.406679>,  <38.319244, 39.566521, 19.348989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184540, 39.756592, 19.406679>,  <37.960033, 40.073376, 19.502829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184540, 39.756592, 19.406679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543775, 0.571821, -0.614271,
		0.623927, 0.214064, 0.751593,
		0.561270, -0.791958, -0.240372,
		38.352921, 39.519005, 19.334568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527828, 40.400017, 19.284048>,  <37.960033, 40.073376, 19.502829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527828, 40.400017, 19.284048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549393, 40.028378, 19.137699>,  <38.562332, 39.805393, 19.049891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549393, 40.028378, 19.137699>,  <38.527828, 40.400017, 19.284048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549393, 40.028378, 19.137699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542335, 0.334897, -0.770530,
		0.838431, -0.156881, 0.521941,
		0.053915, -0.929103, -0.365870,
		38.565567, 39.749645, 19.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169586, 40.162872, 19.202021>,  <38.527828, 40.400017, 19.284048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169586, 40.162872, 19.202021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988800, 39.944515, 18.919821>,  <38.880329, 39.813503, 18.750500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988800, 39.944515, 18.919821>,  <39.169586, 40.162872, 19.202021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988800, 39.944515, 18.919821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545111, 0.457021, -0.702841,
		0.706102, -0.702237, 0.091011,
		-0.451968, -0.545889, -0.705500,
		38.853210, 39.780750, 18.708170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658676, 40.092255, 18.638855>,  <39.169586, 40.162872, 19.202021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658676, 40.092255, 18.638855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317589, 39.971516, 18.468323>,  <39.112938, 39.899071, 18.366003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317589, 39.971516, 18.468323>,  <39.658676, 40.092255, 18.638855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317589, 39.971516, 18.468323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292047, 0.401192, -0.868190,
		0.433104, -0.864830, -0.253949,
		-0.852718, -0.301852, -0.426329,
		39.061771, 39.880962, 18.340424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865501, 39.773411, 18.013426>,  <39.658676, 40.092255, 18.638855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865501, 39.773411, 18.013426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.485752, 39.893177, 17.975388>,  <39.257904, 39.965034, 17.952564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.485752, 39.893177, 17.975388>,  <39.865501, 39.773411, 18.013426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485752, 39.893177, 17.975388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225999, 0.440668, -0.868755,
		-0.218210, -0.846265, -0.486025,
		-0.949373, 0.299412, -0.095097,
		39.200939, 39.983002, 17.946859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799923, 39.875790, 17.296524>,  <39.865501, 39.773411, 18.013426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799923, 39.875790, 17.296524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468445, 40.066998, 17.412977>,  <39.269558, 40.181721, 17.482849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468445, 40.066998, 17.412977>,  <39.799923, 39.875790, 17.296524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468445, 40.066998, 17.412977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093783, 0.631398, -0.769767,
		-0.551784, -0.610601, -0.568068,
		-0.828698, 0.478020, 0.291131,
		39.219837, 40.210403, 17.500317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380249, 39.793041, 16.704136>,  <39.799923, 39.875790, 17.296524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380249, 39.793041, 16.704136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.295479, 40.116768, 16.923258>,  <39.244617, 40.311005, 17.054731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.295479, 40.116768, 16.923258>,  <39.380249, 39.793041, 16.704136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295479, 40.116768, 16.923258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175702, 0.582954, -0.793280,
		-0.961362, -0.071865, -0.265741,
		-0.211923, 0.809321, 0.547803,
		39.231903, 40.359566, 17.087599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919071, 40.204151, 16.202810>,  <39.380249, 39.793041, 16.704136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919071, 40.204151, 16.202810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041618, 40.465538, 16.479683>,  <39.115147, 40.622372, 16.645807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041618, 40.465538, 16.479683>,  <38.919071, 40.204151, 16.202810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041618, 40.465538, 16.479683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000904, 0.726950, -0.686689,
		-0.951913, 0.211006, 0.222124,
		0.306368, 0.653468, 0.692184,
		39.133530, 40.661579, 16.687338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525597, 40.865780, 16.064278>,  <38.919071, 40.204151, 16.202810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525597, 40.865780, 16.064278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.859825, 40.938179, 16.271761>,  <39.060364, 40.981621, 16.396252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.859825, 40.938179, 16.271761>,  <38.525597, 40.865780, 16.064278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859825, 40.938179, 16.271761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279434, 0.672892, -0.684933,
		-0.473007, 0.717256, 0.511672,
		0.835573, 0.181000, 0.518708,
		39.110497, 40.992477, 16.427374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.922028, 35.497139, 32.017673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230003, 35.750004, 31.982889>,  <37.414791, 35.901722, 31.962019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230003, 35.750004, 31.982889>,  <36.922028, 35.497139, 32.017673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230003, 35.750004, 31.982889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265965, 0.194040, -0.944252,
		-0.580044, 0.750148, 0.317532,
		0.769943, 0.632160, -0.086961,
		37.460987, 35.939651, 31.956800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690617, 36.110767, 31.699823>,  <36.922028, 35.497139, 32.017673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690617, 36.110767, 31.699823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078453, 36.120564, 31.602421>,  <37.311153, 36.126442, 31.543980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078453, 36.120564, 31.602421>,  <36.690617, 36.110767, 31.699823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078453, 36.120564, 31.602421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239587, 0.297956, -0.924024,
		0.049927, 0.954266, 0.294762,
		0.969590, 0.024488, -0.243505,
		37.369331, 36.127911, 31.529369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849930, 36.714455, 31.338255>,  <36.690617, 36.110767, 31.699823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849930, 36.714455, 31.338255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142307, 36.473423, 31.210114>,  <37.317734, 36.328804, 31.133228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142307, 36.473423, 31.210114>,  <36.849930, 36.714455, 31.338255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142307, 36.473423, 31.210114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261550, 0.186221, -0.947055,
		0.630332, 0.776029, -0.021488,
		0.730940, -0.602579, -0.320351,
		37.361588, 36.292648, 31.114008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185680, 37.180168, 30.919514>,  <36.849930, 36.714455, 31.338255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185680, 37.180168, 30.919514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268688, 36.797943, 30.835768>,  <37.318493, 36.568607, 30.785521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268688, 36.797943, 30.835768>,  <37.185680, 37.180168, 30.919514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268688, 36.797943, 30.835768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167340, 0.176195, -0.970027,
		0.963812, 0.236334, -0.123341,
		0.207519, -0.955564, -0.209367,
		37.330944, 36.511272, 30.772957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629440, 37.268795, 30.337744>,  <37.185680, 37.180168, 30.919514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629440, 37.268795, 30.337744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526844, 36.884220, 30.298025>,  <37.465286, 36.653477, 30.274195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526844, 36.884220, 30.298025>,  <37.629440, 37.268795, 30.337744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526844, 36.884220, 30.298025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256996, 0.166872, -0.951896,
		0.931754, -0.218635, -0.289885,
		-0.256491, -0.961433, -0.099296,
		37.449898, 36.595791, 30.268236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916889, 37.038376, 29.700491>,  <37.629440, 37.268795, 30.337744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916889, 37.038376, 29.700491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615578, 36.785404, 29.772715>,  <37.434792, 36.633621, 29.816048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615578, 36.785404, 29.772715>,  <37.916889, 37.038376, 29.700491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615578, 36.785404, 29.772715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328928, 0.124524, -0.936109,
		0.569542, -0.764541, -0.301826,
		-0.753278, -0.632432, 0.180558,
		37.389595, 36.595676, 29.826881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988476, 36.595375, 29.148195>,  <37.916889, 37.038376, 29.700491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988476, 36.595375, 29.148195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613762, 36.572937, 29.286350>,  <37.388935, 36.559475, 29.369244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613762, 36.572937, 29.286350>,  <37.988476, 36.595375, 29.148195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613762, 36.572937, 29.286350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340481, -0.081529, -0.936710,
		0.080710, -0.995091, 0.057273,
		-0.936781, -0.056101, 0.345389,
		37.332729, 36.556107, 29.389967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680386, 35.954391, 28.866417>,  <37.988476, 36.595375, 29.148195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680386, 35.954391, 28.866417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417465, 36.249039, 28.930105>,  <37.259712, 36.425827, 28.968317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417465, 36.249039, 28.930105>,  <37.680386, 35.954391, 28.866417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417465, 36.249039, 28.930105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300517, -0.062446, -0.951730,
		-0.691115, -0.673424, 0.262411,
		-0.657304, 0.736614, 0.159218,
		37.220276, 36.470024, 28.977871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087868, 35.722225, 28.477165>,  <37.680386, 35.954391, 28.866417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087868, 35.722225, 28.477165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049274, 36.116249, 28.534231>,  <37.026119, 36.352661, 28.568470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049274, 36.116249, 28.534231>,  <37.087868, 35.722225, 28.477165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049274, 36.116249, 28.534231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262208, 0.113114, -0.958359,
		-0.960176, -0.129872, 0.247377,
		-0.096483, 0.985058, 0.142663,
		37.020329, 36.411766, 28.577030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384010, 35.932320, 28.071987>,  <37.087868, 35.722225, 28.477165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384010, 35.932320, 28.071987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619331, 36.248489, 28.140251>,  <36.760525, 36.438190, 28.181210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619331, 36.248489, 28.140251>,  <36.384010, 35.932320, 28.071987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619331, 36.248489, 28.140251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011095, 0.203134, -0.979088,
		-0.808563, 0.577896, 0.110735,
		0.588305, 0.790426, 0.170659,
		36.795822, 36.485619, 28.191448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994530, 36.528938, 27.667881>,  <36.384010, 35.932320, 28.071987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994530, 36.528938, 27.667881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348843, 36.702873, 27.732750>,  <36.561432, 36.807236, 27.771671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348843, 36.702873, 27.732750>,  <35.994530, 36.528938, 27.667881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348843, 36.702873, 27.732750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002408, 0.345124, -0.938554,
		-0.464091, 0.831747, 0.304658,
		0.885785, 0.434840, 0.162172,
		36.614578, 36.833324, 27.781401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984623, 37.119175, 27.321245>,  <35.994530, 36.528938, 27.667881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984623, 37.119175, 27.321245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379768, 37.076065, 27.365988>,  <36.616856, 37.050198, 27.392834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379768, 37.076065, 27.365988>,  <35.984623, 37.119175, 27.321245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379768, 37.076065, 27.365988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142979, 0.349548, -0.925945,
		0.060694, 0.930699, 0.360715,
		0.987863, -0.107774, 0.111855,
		36.676128, 37.043732, 27.399544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525146, 37.718788, 27.048758>,  <35.984623, 37.119175, 27.321245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525146, 37.718788, 27.048758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205311, 37.503468, 26.942259>,  <35.013409, 37.374275, 26.878361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205311, 37.503468, 26.942259>,  <35.525146, 37.718788, 27.048758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205311, 37.503468, 26.942259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043799, -0.389886, 0.919821,
		-0.598946, 0.747142, 0.288172,
		-0.799591, -0.538301, -0.266245,
		34.965435, 37.341976, 26.862385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988663, 37.800797, 27.529287>,  <35.525146, 37.718788, 27.048758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988663, 37.800797, 27.529287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914482, 37.444466, 27.363377>,  <34.869972, 37.230667, 27.263830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914482, 37.444466, 27.363377>,  <34.988663, 37.800797, 27.529287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914482, 37.444466, 27.363377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158092, -0.389554, 0.907334,
		-0.969852, 0.233843, -0.068587,
		-0.185456, -0.890823, -0.414778,
		34.858845, 37.177219, 27.238943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445259, 37.677902, 27.807310>,  <34.988663, 37.800797, 27.529287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445259, 37.677902, 27.807310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577145, 37.315945, 27.699635>,  <34.656277, 37.098770, 27.635029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577145, 37.315945, 27.699635>,  <34.445259, 37.677902, 27.807310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577145, 37.315945, 27.699635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237456, -0.355454, 0.904028,
		-0.913731, -0.234148, -0.332069,
		0.329712, -0.904891, -0.269190,
		34.676060, 37.044479, 27.618877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883739, 37.246296, 27.936136>,  <34.445259, 37.677902, 27.807310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883739, 37.246296, 27.936136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209564, 37.014965, 27.918137>,  <34.405060, 36.876167, 27.907337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209564, 37.014965, 27.918137>,  <33.883739, 37.246296, 27.936136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209564, 37.014965, 27.918137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240221, -0.406917, 0.881313,
		-0.528000, -0.707073, -0.470386,
		0.814561, -0.578330, -0.044998,
		34.453934, 36.841465, 27.904636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681313, 36.724430, 28.270664>,  <33.883739, 37.246296, 27.936136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681313, 36.724430, 28.270664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076283, 36.661354, 28.275173>,  <34.313263, 36.623508, 28.277878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076283, 36.661354, 28.275173>,  <33.681313, 36.724430, 28.270664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076283, 36.661354, 28.275173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072727, -0.389776, 0.918033,
		-0.140372, -0.907308, -0.396343,
		0.987424, -0.157691, 0.011272,
		34.372509, 36.614048, 28.278555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804970, 36.051350, 28.654816>,  <33.681313, 36.724430, 28.270664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804970, 36.051350, 28.654816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141224, 36.267288, 28.672220>,  <34.342976, 36.396851, 28.682663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141224, 36.267288, 28.672220>,  <33.804970, 36.051350, 28.654816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141224, 36.267288, 28.672220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183920, -0.360113, 0.914600,
		0.509413, -0.760844, -0.402013,
		0.840638, 0.539848, 0.043512,
		34.393414, 36.429241, 28.685274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312023, 35.678894, 28.954750>,  <33.804970, 36.051350, 28.654816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312023, 35.678894, 28.954750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455479, 36.050705, 28.989069>,  <34.541553, 36.273792, 29.009661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455479, 36.050705, 28.989069>,  <34.312023, 35.678894, 28.954750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455479, 36.050705, 28.989069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126852, -0.139588, 0.982051,
		0.924817, -0.341319, -0.167974,
		0.358640, 0.929525, 0.085797,
		34.563072, 36.329563, 29.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943878, 35.595821, 29.285595>,  <34.312023, 35.678894, 28.954750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943878, 35.595821, 29.285595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805752, 35.967823, 29.335968>,  <34.722878, 36.191025, 29.366192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805752, 35.967823, 29.335968>,  <34.943878, 35.595821, 29.285595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805752, 35.967823, 29.335968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070441, -0.108125, 0.991638,
		0.935840, 0.351298, -0.028174,
		-0.345314, 0.929999, 0.125933,
		34.702156, 36.246822, 29.373749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397427, 35.941006, 29.832136>,  <34.943878, 35.595821, 29.285595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397427, 35.941006, 29.832136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061810, 36.158627, 29.830061>,  <34.860439, 36.289200, 29.828815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061810, 36.158627, 29.830061>,  <35.397427, 35.941006, 29.832136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061810, 36.158627, 29.830061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045692, -0.060962, 0.997094,
		0.542151, 0.836837, 0.076008,
		-0.839038, 0.544048, -0.005187,
		34.810097, 36.321842, 29.828505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320747, 36.139996, 30.514519>,  <35.397427, 35.941006, 29.832136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320747, 36.139996, 30.514519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962547, 36.274277, 30.397635>,  <34.747627, 36.354847, 30.327503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962547, 36.274277, 30.397635>,  <35.320747, 36.139996, 30.514519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962547, 36.274277, 30.397635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261506, 0.134395, 0.955799,
		0.360136, 0.932331, -0.032562,
		-0.895498, 0.335702, -0.292211,
		34.693897, 36.374989, 30.309971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169083, 36.818142, 30.792912>,  <35.320747, 36.139996, 30.514519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169083, 36.818142, 30.792912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811234, 36.655560, 30.718670>,  <34.596523, 36.558010, 30.674126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811234, 36.655560, 30.718670>,  <35.169083, 36.818142, 30.792912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811234, 36.655560, 30.718670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259621, 0.134767, 0.956261,
		-0.363668, 0.903675, -0.226091,
		-0.894618, -0.406460, -0.185603,
		34.542847, 36.533623, 30.662989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613400, 37.224960, 31.154613>,  <35.169083, 36.818142, 30.792912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613400, 37.224960, 31.154613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422588, 36.876369, 31.109051>,  <34.308102, 36.667217, 31.081713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422588, 36.876369, 31.109051>,  <34.613400, 37.224960, 31.154613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422588, 36.876369, 31.109051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296741, 0.037710, 0.954213,
		-0.827277, 0.488988, -0.276591,
		-0.477029, -0.871475, -0.113906,
		34.279480, 36.614925, 31.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978806, 37.281021, 31.451662>,  <34.613400, 37.224960, 31.154613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978806, 37.281021, 31.451662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013042, 36.882660, 31.463291>,  <34.033585, 36.643642, 31.470268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013042, 36.882660, 31.463291>,  <33.978806, 37.281021, 31.451662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013042, 36.882660, 31.463291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512086, -0.018941, 0.858725,
		-0.854659, -0.088389, -0.511611,
		0.085592, -0.995906, 0.029075,
		34.038719, 36.583889, 31.472013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275356, 37.005550, 31.712473>,  <33.978806, 37.281021, 31.451662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275356, 37.005550, 31.712473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530216, 36.700912, 31.759830>,  <33.683132, 36.518131, 31.788244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530216, 36.700912, 31.759830>,  <33.275356, 37.005550, 31.712473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530216, 36.700912, 31.759830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376369, -0.173387, 0.910101,
		-0.672601, -0.624426, -0.397114,
		0.637145, -0.761596, 0.118394,
		33.721359, 36.472435, 31.795349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942822, 37.664539, 32.086716>,  <33.275356, 37.005550, 31.712473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942822, 37.664539, 32.086716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766895, 37.933456, 32.324902>,  <32.661339, 38.094807, 32.467815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766895, 37.933456, 32.324902>,  <32.942822, 37.664539, 32.086716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766895, 37.933456, 32.324902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121431, 0.612434, -0.781140,
		-0.889839, -0.415869, -0.187724,
		-0.439820, 0.672293, 0.595467,
		32.634949, 38.135143, 32.503540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316063, 37.746380, 31.859644>,  <32.942822, 37.664539, 32.086716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316063, 37.746380, 31.859644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490730, 38.089657, 31.967592>,  <32.595531, 38.295624, 32.032360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490730, 38.089657, 31.967592>,  <32.316063, 37.746380, 31.859644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490730, 38.089657, 31.967592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146045, 0.363626, -0.920026,
		-0.887690, 0.362330, 0.284117,
		0.436665, 0.858192, 0.269871,
		32.621731, 38.347115, 32.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914497, 38.368511, 31.567640>,  <32.316063, 37.746380, 31.859644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914497, 38.368511, 31.567640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292187, 38.479649, 31.638351>,  <32.518799, 38.546329, 31.680779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292187, 38.479649, 31.638351>,  <31.914497, 38.368511, 31.567640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292187, 38.479649, 31.638351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035588, 0.619759, -0.783985,
		-0.327382, 0.733965, 0.595077,
		0.944222, 0.277840, 0.176778,
		32.575455, 38.563000, 31.691385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051487, 39.145294, 31.611105>,  <31.914497, 38.368511, 31.567640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051487, 39.145294, 31.611105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410122, 38.992512, 31.521450>,  <32.625305, 38.900841, 31.467657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410122, 38.992512, 31.521450>,  <32.051487, 39.145294, 31.611105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410122, 38.992512, 31.521450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021883, 0.543705, -0.838991,
		0.442323, 0.747326, 0.495838,
		0.896589, -0.381955, -0.224139,
		32.679100, 38.877926, 31.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520798, 39.701992, 31.473692>,  <32.051487, 39.145294, 31.611105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520798, 39.701992, 31.473692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637711, 39.381214, 31.265287>,  <32.707859, 39.188747, 31.140244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637711, 39.381214, 31.265287>,  <32.520798, 39.701992, 31.473692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637711, 39.381214, 31.265287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046418, 0.532265, -0.845304,
		0.955205, 0.271251, 0.118347,
		0.292282, -0.801945, -0.521013,
		32.725395, 39.140629, 31.108984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823738, 40.025589, 30.940842>,  <32.520798, 39.701992, 31.473692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823738, 40.025589, 30.940842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835415, 39.648876, 30.806858>,  <32.842422, 39.422848, 30.726467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835415, 39.648876, 30.806858>,  <32.823738, 40.025589, 30.940842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835415, 39.648876, 30.806858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058488, 0.336138, -0.939995,
		0.997861, 0.007851, 0.064896,
		0.029194, -0.941780, -0.334960,
		32.844173, 39.366341, 30.706369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398521, 39.973141, 30.362982>,  <32.823738, 40.025589, 30.940842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398521, 39.973141, 30.362982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139606, 39.671608, 30.317802>,  <32.984257, 39.490688, 30.290695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139606, 39.671608, 30.317802>,  <33.398521, 39.973141, 30.362982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139606, 39.671608, 30.317802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014623, 0.135872, -0.990619,
		0.762110, -0.642862, -0.076924,
		-0.647283, -0.753836, -0.112950,
		32.945423, 39.445457, 30.283918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672970, 39.560165, 29.740129>,  <33.398521, 39.973141, 30.362982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672970, 39.560165, 29.740129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288177, 39.460331, 29.784473>,  <33.057301, 39.400429, 29.811079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288177, 39.460331, 29.784473>,  <33.672970, 39.560165, 29.740129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288177, 39.460331, 29.784473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147735, 0.134181, -0.979882,
		0.229696, -0.959009, -0.165954,
		-0.961984, -0.249593, 0.110858,
		32.999580, 39.385452, 29.817732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629200, 39.060642, 29.247427>,  <33.672970, 39.560165, 29.740129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629200, 39.060642, 29.247427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261848, 39.198936, 29.324411>,  <33.041435, 39.281914, 29.370602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261848, 39.198936, 29.324411>,  <33.629200, 39.060642, 29.247427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261848, 39.198936, 29.324411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095647, 0.278001, -0.955807,
		-0.383962, -0.896204, -0.222242,
		-0.918382, 0.345737, 0.192461,
		32.986336, 39.302658, 29.382149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194698, 38.764538, 28.684254>,  <33.629200, 39.060642, 29.247427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194698, 38.764538, 28.684254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003616, 39.083294, 28.832176>,  <32.888966, 39.274548, 28.920931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003616, 39.083294, 28.832176>,  <33.194698, 38.764538, 28.684254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003616, 39.083294, 28.832176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290454, 0.254010, -0.922559,
		-0.829117, -0.548123, 0.110119,
		-0.477705, 0.796894, 0.369808,
		32.860306, 39.322361, 28.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606857, 38.702560, 28.392616>,  <33.194698, 38.764538, 28.684254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606857, 38.702560, 28.392616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644882, 39.082211, 28.512695>,  <32.667698, 39.310001, 28.584743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644882, 39.082211, 28.512695>,  <32.606857, 38.702560, 28.392616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644882, 39.082211, 28.512695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415065, 0.311891, -0.854661,
		-0.904811, -0.043355, 0.423599,
		0.095063, 0.949128, 0.300198,
		32.673401, 39.366947, 28.602755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961718, 38.989296, 28.246510>,  <32.606857, 38.702560, 28.392616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961718, 38.989296, 28.246510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230656, 39.284481, 28.269695>,  <32.392017, 39.461594, 28.283607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230656, 39.284481, 28.269695>,  <31.961718, 38.989296, 28.246510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230656, 39.284481, 28.269695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257774, 0.306819, -0.916196,
		-0.693904, 0.601058, 0.396517,
		0.672346, 0.737964, 0.057966,
		32.432358, 39.505871, 28.287085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553013, 39.421741, 27.923410>,  <31.961718, 38.989296, 28.246510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553013, 39.421741, 27.923410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927528, 39.562233, 27.923885>,  <32.152237, 39.646530, 27.924170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927528, 39.562233, 27.923885>,  <31.553013, 39.421741, 27.923410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927528, 39.562233, 27.923885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119152, 0.320801, -0.939622,
		-0.330405, 0.879615, 0.342212,
		0.936288, 0.351231, 0.001186,
		32.208416, 39.667603, 27.924242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497017, 40.044453, 27.679050>,  <31.553013, 39.421741, 27.923410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497017, 40.044453, 27.679050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883928, 39.954811, 27.631477>,  <32.116074, 39.901024, 27.602934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883928, 39.954811, 27.631477>,  <31.497017, 40.044453, 27.679050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883928, 39.954811, 27.631477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057430, 0.263205, -0.963029,
		0.247126, 0.938349, 0.241722,
		0.967280, -0.224107, -0.118934,
		32.174110, 39.887577, 27.595797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919018, 40.655231, 27.522478>,  <31.497017, 40.044453, 27.679050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919018, 40.655231, 27.522478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147694, 40.361877, 27.375334>,  <32.284901, 40.185863, 27.287048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147694, 40.361877, 27.375334>,  <31.919018, 40.655231, 27.522478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147694, 40.361877, 27.375334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061733, 0.485529, -0.872038,
		0.818145, 0.475825, 0.322845,
		0.571688, -0.733384, -0.367859,
		32.319199, 40.141861, 27.264977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409393, 41.034088, 27.130287>,  <31.919018, 40.655231, 27.522478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409393, 41.034088, 27.130287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475513, 40.661697, 27.000084>,  <32.515186, 40.438263, 26.921963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475513, 40.661697, 27.000084>,  <32.409393, 41.034088, 27.130287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475513, 40.661697, 27.000084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315177, 0.362607, -0.877029,
		0.934526, 0.042383, 0.353362,
		0.165303, -0.930978, -0.325507,
		32.525105, 40.382404, 26.902431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013390, 41.126034, 26.760098>,  <32.409393, 41.034088, 27.130287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013390, 41.126034, 26.760098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835304, 40.795090, 26.623127>,  <32.728455, 40.596523, 26.540945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835304, 40.795090, 26.623127>,  <33.013390, 41.126034, 26.760098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835304, 40.795090, 26.623127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356839, 0.186801, -0.915299,
		0.821250, -0.529693, 0.212070,
		-0.445212, -0.827364, -0.342425,
		32.701740, 40.546879, 26.520399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489090, 40.893124, 26.278414>,  <33.013390, 41.126034, 26.760098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489090, 40.893124, 26.278414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136047, 40.737186, 26.173315>,  <32.924221, 40.643623, 26.110256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136047, 40.737186, 26.173315>,  <33.489090, 40.893124, 26.278414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136047, 40.737186, 26.173315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186440, 0.222810, -0.956868,
		0.431568, -0.893521, -0.123972,
		-0.882604, -0.389841, -0.262746,
		32.871265, 40.620235, 26.094492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607460, 40.696903, 25.669292>,  <33.489090, 40.893124, 26.278414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607460, 40.696903, 25.669292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207481, 40.693596, 25.666838>,  <32.967495, 40.691612, 25.665365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207481, 40.693596, 25.666838>,  <33.607460, 40.696903, 25.669292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207481, 40.693596, 25.666838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002157, 0.414584, -0.910009,
		0.010065, -0.909974, -0.414544,
		-0.999947, -0.008265, -0.006136,
		32.907497, 40.691116, 25.664997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350498, 40.450706, 24.912319>,  <33.607460, 40.696903, 25.669292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350498, 40.450706, 24.912319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064056, 40.660126, 25.096970>,  <32.892193, 40.785778, 25.207760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064056, 40.660126, 25.096970>,  <33.350498, 40.450706, 24.912319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064056, 40.660126, 25.096970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184747, 0.495605, -0.848672,
		-0.673103, -0.693019, -0.258180,
		-0.716101, 0.523546, 0.461626,
		32.849228, 40.817188, 25.235456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742470, 40.340450, 24.416206>,  <33.350498, 40.450706, 24.912319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742470, 40.340450, 24.416206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713936, 40.672081, 24.638033>,  <32.696815, 40.871059, 24.771130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.713936, 40.672081, 24.638033>,  <32.742470, 40.340450, 24.416206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713936, 40.672081, 24.638033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021113, 0.557113, -0.830168,
		-0.997229, -0.047514, -0.057247,
		-0.071338, 0.829076, 0.554566,
		32.692535, 40.920803, 24.804403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273125, 40.822105, 23.993248>,  <32.742470, 40.340450, 24.416206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273125, 40.822105, 23.993248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453163, 41.062469, 24.257465>,  <32.561188, 41.206688, 24.415997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453163, 41.062469, 24.257465>,  <32.273125, 40.822105, 23.993248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453163, 41.062469, 24.257465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004302, 0.741159, -0.671316,
		-0.892968, 0.299317, 0.336180,
		0.450099, 0.600910, 0.660543,
		32.588192, 41.242744, 24.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005856, 41.395733, 23.893135>,  <32.273125, 40.822105, 23.993248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005856, 41.395733, 23.893135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352898, 41.476055, 24.075098>,  <32.561123, 41.524246, 24.184277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352898, 41.476055, 24.075098>,  <32.005856, 41.395733, 23.893135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352898, 41.476055, 24.075098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143276, 0.775091, -0.615390,
		-0.476167, 0.599093, 0.643703,
		0.867604, 0.200801, 0.454908,
		32.613178, 41.536297, 24.211571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069187, 42.139175, 23.894232>,  <32.005856, 41.395733, 23.893135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069187, 42.139175, 23.894232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447151, 42.029472, 23.965712>,  <32.673927, 41.963650, 24.008600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447151, 42.029472, 23.965712>,  <32.069187, 42.139175, 23.894232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447151, 42.029472, 23.965712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325978, 0.738657, -0.590020,
		0.029819, 0.615767, 0.787364,
		0.944907, -0.274258, 0.178700,
		32.730621, 41.947197, 24.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517670, 42.695099, 23.999754>,  <32.069187, 42.139175, 23.894232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517670, 42.695099, 23.999754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790356, 42.417408, 23.907394>,  <32.953968, 42.250793, 23.851978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790356, 42.417408, 23.907394>,  <32.517670, 42.695099, 23.999754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790356, 42.417408, 23.907394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395736, 0.615348, -0.681718,
		0.615348, 0.373365, 0.694223,
		0.681718, -0.694223, -0.230899,
		32.994873, 42.209141, 23.838125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252052, 42.975666, 24.128893>,  <32.517670, 42.695099, 23.999754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252052, 42.975666, 24.128893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256798, 42.679417, 23.860167>,  <33.259647, 42.501667, 23.698931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.256798, 42.679417, 23.860167>,  <33.252052, 42.975666, 24.128893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256798, 42.679417, 23.860167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302723, 0.642997, -0.703501,
		0.953005, -0.195026, 0.231834,
		0.011867, -0.740621, -0.671818,
		33.260357, 42.457230, 23.658621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753788, 43.178646, 23.638605>,  <33.252052, 42.975666, 24.128893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753788, 43.178646, 23.638605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563038, 42.874046, 23.463009>,  <33.448589, 42.691288, 23.357651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563038, 42.874046, 23.463009>,  <33.753788, 43.178646, 23.638605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563038, 42.874046, 23.463009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354223, 0.290588, -0.888867,
		0.804436, -0.579377, 0.131167,
		-0.476874, -0.761499, -0.438988,
		33.419975, 42.645596, 23.331312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315689, 42.864311, 23.204350>,  <33.753788, 43.178646, 23.638605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315689, 42.864311, 23.204350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948753, 42.765316, 23.079620>,  <33.728592, 42.705921, 23.004784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948753, 42.765316, 23.079620>,  <34.315689, 42.864311, 23.204350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948753, 42.765316, 23.079620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262446, 0.213007, -0.941143,
		0.299339, -0.945187, -0.130449,
		-0.917343, -0.247486, -0.311822,
		33.673550, 42.691071, 22.986074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030605, 42.521912, 23.048639>,  <34.315689, 42.864311, 23.204350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030605, 42.521912, 23.048639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215641, 42.847591, 23.188976>,  <35.326664, 43.042999, 23.273178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215641, 42.847591, 23.188976>,  <35.030605, 42.521912, 23.048639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215641, 42.847591, 23.188976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002486, -0.396922, 0.917849,
		0.886567, -0.423719, -0.185637,
		0.462594, 0.814196, 0.350845,
		35.354420, 43.091850, 23.294230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576881, 42.205421, 23.429432>,  <35.030605, 42.521912, 23.048639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576881, 42.205421, 23.429432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557392, 42.582664, 23.560989>,  <35.545700, 42.809010, 23.639923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557392, 42.582664, 23.560989>,  <35.576881, 42.205421, 23.429432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557392, 42.582664, 23.560989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, -0.331741, 0.940625,
		0.996219, 0.022177, 0.083994,
		-0.048725, 0.943110, 0.328892,
		35.542774, 42.865597, 23.659657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086018, 42.368103, 24.009192>,  <35.576881, 42.205421, 23.429432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086018, 42.368103, 24.009192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782482, 42.626114, 24.045185>,  <35.600361, 42.780922, 24.066782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782482, 42.626114, 24.045185>,  <36.086018, 42.368103, 24.009192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782482, 42.626114, 24.045185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042288, -0.186674, 0.981511,
		0.649902, 0.741006, 0.168933,
		-0.758841, 0.645030, 0.089984,
		35.554829, 42.819622, 24.072180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250011, 42.844006, 24.539883>,  <36.086018, 42.368103, 24.009192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250011, 42.844006, 24.539883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852898, 42.885731, 24.516197>,  <35.614632, 42.910767, 24.501986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852898, 42.885731, 24.516197>,  <36.250011, 42.844006, 24.539883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852898, 42.885731, 24.516197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065183, -0.054768, 0.996369,
		0.100694, 0.993035, 0.061173,
		-0.992780, 0.104316, -0.059214,
		35.555065, 42.917027, 24.498432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101643, 43.265491, 25.045609>,  <36.250011, 42.844006, 24.539883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101643, 43.265491, 25.045609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774727, 43.049385, 24.965454>,  <35.578579, 42.919724, 24.917362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774727, 43.049385, 24.965454>,  <36.101643, 43.265491, 25.045609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774727, 43.049385, 24.965454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076467, -0.242994, 0.967009,
		-0.571131, 0.805650, 0.157284,
		-0.817290, -0.540262, -0.200386,
		35.529541, 42.887306, 24.905338>
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
