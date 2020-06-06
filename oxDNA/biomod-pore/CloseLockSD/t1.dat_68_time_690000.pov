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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.707865, 14.885974, 15.459583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467137, 15.023438, 15.171220>,  <4.322701, 15.105917, 14.998201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467137, 15.023438, 15.171220>,  <4.707865, 14.885974, 15.459583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467137, 15.023438, 15.171220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156063, 0.935883, 0.315858,
		0.783235, 0.077582, -0.616866,
		-0.601819, 0.343661, -0.720909,
		4.286592, 15.126537, 14.954947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.072995, 15.399503, 15.169236>,  <4.707865, 14.885974, 15.459583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.072995, 15.399503, 15.169236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686391, 15.456246, 15.083694>,  <4.454428, 15.490293, 15.032370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686391, 15.456246, 15.083694>,  <5.072995, 15.399503, 15.169236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.686391, 15.456246, 15.083694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004683, 0.842937, 0.537991,
		0.256584, 0.518973, -0.815372,
		-0.966511, 0.141858, -0.213854,
		4.396438, 15.498804, 15.019538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.857353, 16.128792, 15.138197>,  <5.072995, 15.399503, 15.169236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.857353, 16.128792, 15.138197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495863, 15.962184, 15.177777>,  <4.278969, 15.862219, 15.201526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495863, 15.962184, 15.177777>,  <4.857353, 16.128792, 15.138197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.495863, 15.962184, 15.177777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214854, 0.641183, 0.736697,
		-0.370296, 0.644511, -0.668944,
		-0.903725, -0.416521, 0.098952,
		4.224745, 15.837228, 15.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.147025, 16.461369, 14.752066>,  <4.857353, 16.128792, 15.138197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.147025, 16.461369, 14.752066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186670, 16.292986, 15.112725>,  <4.210457, 16.191956, 15.329122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186670, 16.292986, 15.112725>,  <4.147025, 16.461369, 14.752066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.186670, 16.292986, 15.112725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345602, 0.835143, 0.427896,
		-0.933132, -0.354021, -0.062711,
		0.099112, -0.420957, 0.901649,
		4.216403, 16.166698, 15.383220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.512292, 16.565151, 15.260151>,  <4.147025, 16.461369, 14.752066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.512292, 16.565151, 15.260151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844618, 16.499311, 15.472812>,  <4.044014, 16.459808, 15.600409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844618, 16.499311, 15.472812>,  <3.512292, 16.565151, 15.260151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.844618, 16.499311, 15.472812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324203, 0.633320, 0.702707,
		-0.452371, -0.756183, 0.472809,
		0.830815, -0.164598, 0.531652,
		4.093863, 16.449932, 15.632307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293087, 16.366045, 15.930936>,  <3.512292, 16.565151, 15.260151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293087, 16.366045, 15.930936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656560, 16.531885, 15.950531>,  <3.874644, 16.631390, 15.962288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656560, 16.531885, 15.950531>,  <3.293087, 16.366045, 15.930936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656560, 16.531885, 15.950531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364212, 0.729895, 0.578448,
		0.204069, -0.543469, 0.814247,
		0.908683, 0.414602, 0.048989,
		3.929165, 16.656265, 15.965227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263670, 16.619825, 16.630795>,  <3.293087, 16.366045, 15.930936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263670, 16.619825, 16.630795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.582535, 16.795637, 16.465219>,  <3.773853, 16.901125, 16.365873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.582535, 16.795637, 16.465219>,  <3.263670, 16.619825, 16.630795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.582535, 16.795637, 16.465219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074974, 0.752352, 0.654481,
		0.599093, -0.490693, 0.632699,
		0.797162, 0.439531, -0.413939,
		3.821683, 16.927496, 16.341038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560674, 16.948996, 17.235102>,  <3.263670, 16.619825, 16.630795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560674, 16.948996, 17.235102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711932, 17.111395, 16.902315>,  <3.802687, 17.208836, 16.702642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711932, 17.111395, 16.902315>,  <3.560674, 16.948996, 17.235102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.711932, 17.111395, 16.902315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124009, 0.912815, 0.389089,
		0.917405, -0.043958, 0.395521,
		0.378141, 0.406000, -0.831970,
		3.825376, 17.233194, 16.652725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.077602, 17.501556, 17.536673>,  <3.560674, 16.948996, 17.235102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.077602, 17.501556, 17.536673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018780, 17.580044, 17.148884>,  <3.983487, 17.627136, 16.916210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018780, 17.580044, 17.148884>,  <4.077602, 17.501556, 17.536673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.018780, 17.580044, 17.148884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003379, 0.980220, 0.197881,
		0.989123, 0.025823, -0.144808,
		-0.147054, 0.196218, -0.969471,
		3.974664, 17.638908, 16.858042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651447, 17.970274, 17.221098>,  <4.077602, 17.501556, 17.536673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651447, 17.970274, 17.221098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332757, 18.038929, 16.989315>,  <4.141544, 18.080122, 16.850245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332757, 18.038929, 16.989315>,  <4.651447, 17.970274, 17.221098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.332757, 18.038929, 16.989315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118970, 0.984604, 0.128069,
		0.592518, 0.033097, -0.804877,
		-0.796724, 0.171639, -0.579457,
		4.093740, 18.090422, 16.815477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.869660, 18.549059, 16.939671>,  <4.651447, 17.970274, 17.221098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.869660, 18.549059, 16.939671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476026, 18.525764, 16.872517>,  <4.239846, 18.511787, 16.832224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476026, 18.525764, 16.872517>,  <4.869660, 18.549059, 16.939671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.476026, 18.525764, 16.872517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071527, 0.994672, 0.074242,
		0.162668, 0.085069, -0.983006,
		-0.984085, -0.058235, -0.167886,
		4.180800, 18.508293, 16.822151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752229, 18.937052, 16.398561>,  <4.869660, 18.549059, 16.939671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752229, 18.937052, 16.398561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.395035, 18.898268, 16.574369>,  <4.180719, 18.874998, 16.679853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.395035, 18.898268, 16.574369>,  <4.752229, 18.937052, 16.398561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.395035, 18.898268, 16.574369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068281, 0.994402, 0.080641,
		-0.444878, 0.042000, -0.894606,
		-0.892984, -0.096960, 0.439520,
		4.127140, 18.869179, 16.706224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.293979, 19.357302, 16.097588>,  <4.752229, 18.937052, 16.398561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.293979, 19.357302, 16.097588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144425, 19.306061, 16.465021>,  <4.054693, 19.275316, 16.685482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144425, 19.306061, 16.465021>,  <4.293979, 19.357302, 16.097588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144425, 19.306061, 16.465021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140254, 0.986835, 0.080533,
		-0.916809, -0.098726, -0.386929,
		-0.373884, -0.128102, 0.918586,
		4.032260, 19.267630, 16.740597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.768269, 19.759434, 16.104120>,  <4.293979, 19.357302, 16.097588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.768269, 19.759434, 16.104120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824884, 19.686312, 16.493284>,  <3.858853, 19.642439, 16.726782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.824884, 19.686312, 16.493284>,  <3.768269, 19.759434, 16.104120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.824884, 19.686312, 16.493284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112665, 0.973442, 0.199294,
		-0.983501, -0.137821, 0.117182,
		0.141537, -0.182804, 0.972908,
		3.867345, 19.631470, 16.785156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.249836, 20.177032, 16.309387>,  <3.768269, 19.759434, 16.104120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.249836, 20.177032, 16.309387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.504013, 20.095104, 16.607183>,  <3.656519, 20.045948, 16.785860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.504013, 20.095104, 16.607183>,  <3.249836, 20.177032, 16.309387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.504013, 20.095104, 16.607183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039773, 0.954215, 0.296466,
		-0.771124, -0.217997, 0.598201,
		0.635441, -0.204820, 0.744489,
		3.694645, 20.033659, 16.830530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.019366, 20.616718, 16.859838>,  <3.249836, 20.177032, 16.309387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.019366, 20.616718, 16.859838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.394195, 20.508835, 16.948517>,  <3.619093, 20.444105, 17.001724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.394195, 20.508835, 16.948517>,  <3.019366, 20.616718, 16.859838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.394195, 20.508835, 16.948517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249643, 0.961537, 0.114567,
		-0.244069, -0.052013, 0.968362,
		0.937074, -0.269707, 0.221696,
		3.675318, 20.427923, 17.015026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173577, 20.826855, 17.507259>,  <3.019366, 20.616718, 16.859838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173577, 20.826855, 17.507259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.531140, 20.765329, 17.338846>,  <3.745678, 20.728415, 17.237799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.531140, 20.765329, 17.338846>,  <3.173577, 20.826855, 17.507259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.531140, 20.765329, 17.338846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194654, 0.979300, 0.055515,
		0.403778, -0.131581, 0.905345,
		0.893909, -0.153814, -0.421033,
		3.799313, 20.719185, 17.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.708570, 21.180157, 17.998032>,  <3.173577, 20.826855, 17.507259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.708570, 21.180157, 17.998032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911986, 21.152569, 17.654724>,  <4.034036, 21.136015, 17.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.911986, 21.152569, 17.654724>,  <3.708570, 21.180157, 17.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911986, 21.152569, 17.654724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306248, 0.946096, 0.105429,
		0.804735, -0.316459, 0.502251,
		0.508541, -0.068971, -0.858271,
		4.064548, 21.131878, 17.397243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.350674, 21.470778, 18.119547>,  <3.708570, 21.180157, 17.998032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.350674, 21.470778, 18.119547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.285765, 21.484062, 17.725073>,  <4.246819, 21.492033, 17.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.285765, 21.484062, 17.725073>,  <4.350674, 21.470778, 18.119547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.285765, 21.484062, 17.725073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364903, 0.930603, -0.028705,
		0.916795, -0.364520, -0.163130,
		-0.162273, 0.033210, -0.986187,
		4.237083, 21.494024, 17.429216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950872, 21.842106, 17.862976>,  <4.350674, 21.470778, 18.119547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950872, 21.842106, 17.862976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.661887, 21.856632, 17.586794>,  <4.488496, 21.865347, 17.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.661887, 21.856632, 17.586794>,  <4.950872, 21.842106, 17.862976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.661887, 21.856632, 17.586794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259302, 0.939963, -0.221885,
		0.640945, -0.339340, -0.688504,
		-0.722462, 0.036314, -0.690456,
		4.445148, 21.867527, 17.379658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.210826, 22.278927, 17.344807>,  <4.950872, 21.842106, 17.862976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.210826, 22.278927, 17.344807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.832690, 22.245401, 17.218754>,  <4.605808, 22.225286, 17.143122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.832690, 22.245401, 17.218754>,  <5.210826, 22.278927, 17.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.832690, 22.245401, 17.218754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027860, 0.983629, -0.178041,
		0.324894, -0.159529, -0.932199,
		-0.945340, -0.083816, -0.315131,
		4.549088, 22.220257, 17.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.227377, 22.637054, 16.770430>,  <5.210826, 22.278927, 17.344807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.227377, 22.637054, 16.770430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.846664, 22.650047, 16.892450>,  <4.618237, 22.657843, 16.965662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.846664, 22.650047, 16.892450>,  <5.227377, 22.637054, 16.770430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.846664, 22.650047, 16.892450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041956, 0.998818, 0.024542,
		-0.303893, 0.036157, -0.952020,
		-0.951782, 0.032484, 0.305051,
		4.561130, 22.659792, 16.983965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.926669, 23.085104, 16.280205>,  <5.227377, 22.637054, 16.770430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.926669, 23.085104, 16.280205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.692659, 23.070276, 16.604271>,  <4.552253, 23.061380, 16.798712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.692659, 23.070276, 16.604271>,  <4.926669, 23.085104, 16.280205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692659, 23.070276, 16.604271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048372, 0.998771, 0.010770,
		-0.809572, -0.032889, -0.586099,
		-0.585025, -0.037070, 0.810168,
		4.517152, 23.059155, 16.847321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.379191, 23.548870, 16.157085>,  <4.926669, 23.085104, 16.280205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.379191, 23.548870, 16.157085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.405703, 23.499065, 16.553087>,  <4.421609, 23.469183, 16.790688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.405703, 23.499065, 16.553087>,  <4.379191, 23.548870, 16.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.405703, 23.499065, 16.553087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105863, 0.985706, 0.131057,
		-0.992169, -0.113491, 0.052149,
		0.066278, -0.124510, 0.990002,
		4.425586, 23.461712, 16.850088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.168054, 24.165012, 16.386457>,  <4.379191, 23.548870, 16.157085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.168054, 24.165012, 16.386457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311584, 24.037958, 16.737535>,  <4.397703, 23.961725, 16.948183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311584, 24.037958, 16.737535>,  <4.168054, 24.165012, 16.386457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.311584, 24.037958, 16.737535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009666, 0.941532, 0.336784,
		-0.933354, -0.112363, 0.340917,
		0.358827, -0.317634, 0.877697,
		4.419232, 23.942667, 17.000845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891498, 24.629749, 16.973322>,  <4.168054, 24.165012, 16.386457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891498, 24.629749, 16.973322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.236873, 24.462852, 17.086729>,  <4.444098, 24.362715, 17.154774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.236873, 24.462852, 17.086729>,  <3.891498, 24.629749, 16.973322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.236873, 24.462852, 17.086729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331215, 0.892820, 0.305237,
		-0.380490, -0.169647, 0.909091,
		0.863437, -0.417244, 0.283520,
		4.495904, 24.337679, 17.171785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.132982, 24.765711, 17.767706>,  <3.891498, 24.629749, 16.973322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.132982, 24.765711, 17.767706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.401161, 24.729286, 17.473167>,  <4.562069, 24.707432, 17.296444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.401161, 24.729286, 17.473167>,  <4.132982, 24.765711, 17.767706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.401161, 24.729286, 17.473167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327467, 0.926865, 0.183539,
		0.665781, -0.364182, 0.651236,
		0.670449, -0.091061, -0.736346,
		4.602296, 24.701967, 17.252264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.715719, 25.033236, 18.012661>,  <4.132982, 24.765711, 17.767706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.715719, 25.033236, 18.012661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791485, 25.046410, 17.620123>,  <4.836945, 25.054314, 17.384600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.791485, 25.046410, 17.620123>,  <4.715719, 25.033236, 18.012661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.791485, 25.046410, 17.620123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248332, 0.965338, 0.080331,
		0.949975, -0.258916, 0.174670,
		0.189414, 0.032937, -0.981345,
		4.848310, 25.056290, 17.325720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.303322, 25.529865, 18.105591>,  <4.715719, 25.033236, 18.012661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.303322, 25.529865, 18.105591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.701846, 25.509659, 18.133345>,  <5.940960, 25.497536, 18.149998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.701846, 25.509659, 18.133345>,  <5.303322, 25.529865, 18.105591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.701846, 25.509659, 18.133345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044000, 0.393488, 0.918276,
		-0.073690, -0.917941, 0.389813,
		0.996311, -0.050516, 0.069385,
		6.000739, 25.494505, 18.154160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.443868, 25.163572, 18.747423>,  <5.303322, 25.529865, 18.105591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.443868, 25.163572, 18.747423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.737869, 25.408234, 18.630360>,  <5.914270, 25.555031, 18.560122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.737869, 25.408234, 18.630360>,  <5.443868, 25.163572, 18.747423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.737869, 25.408234, 18.630360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094449, 0.335052, 0.937454,
		0.671453, -0.716673, 0.188494,
		0.735003, 0.611653, -0.292661,
		5.958370, 25.591730, 18.542561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.009936, 25.059629, 19.049492>,  <5.443868, 25.163572, 18.747423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.009936, 25.059629, 19.049492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991284, 25.451019, 18.969076>,  <5.980093, 25.685852, 18.920828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991284, 25.451019, 18.969076>,  <6.009936, 25.059629, 19.049492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991284, 25.451019, 18.969076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033626, 0.202680, 0.978668,
		0.998346, 0.038875, -0.042353,
		-0.046630, 0.978473, -0.201038,
		5.977295, 25.744562, 18.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.533192, 25.483614, 19.382147>,  <6.009936, 25.059629, 19.049492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.533192, 25.483614, 19.382147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233625, 25.734503, 19.296623>,  <6.053885, 25.885036, 19.245310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233625, 25.734503, 19.296623>,  <6.533192, 25.483614, 19.382147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.233625, 25.734503, 19.296623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005058, 0.328054, 0.944646,
		0.662643, 0.706381, -0.248858,
		-0.748918, 0.627222, -0.213810,
		6.008950, 25.922668, 19.232481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.794679, 24.665009, 19.177515>,  <6.533192, 25.483614, 19.382147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.794679, 24.665009, 19.177515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000049, 24.674278, 19.520643>,  <7.123271, 24.679840, 19.726521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000049, 24.674278, 19.520643>,  <6.794679, 24.665009, 19.177515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.000049, 24.674278, 19.520643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344707, -0.921010, -0.181434,
		0.785857, 0.388849, -0.480858,
		0.513425, 0.023174, 0.857821,
		7.154077, 24.681231, 19.777990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505336, 24.352718, 19.145065>,  <6.794679, 24.665009, 19.177515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505336, 24.352718, 19.145065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346094, 24.289007, 19.506428>,  <7.250549, 24.250782, 19.723246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346094, 24.289007, 19.506428>,  <7.505336, 24.352718, 19.145065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.346094, 24.289007, 19.506428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210049, -0.974474, -0.079242,
		0.892968, 0.158213, 0.421399,
		-0.398105, -0.159275, 0.903407,
		7.226663, 24.241224, 19.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.041387, 24.077385, 19.537245>,  <7.505336, 24.352718, 19.145065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.041387, 24.077385, 19.537245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.671222, 23.958284, 19.631014>,  <7.449122, 23.886824, 19.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.671222, 23.958284, 19.631014>,  <8.041387, 24.077385, 19.537245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.671222, 23.958284, 19.631014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270486, -0.952236, -0.141715,
		0.265421, -0.067737, 0.961750,
		-0.925413, -0.297754, 0.234422,
		7.393598, 23.868958, 19.701340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.127441, 23.424179, 19.924053>,  <8.041387, 24.077385, 19.537245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.127441, 23.424179, 19.924053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.749260, 23.426039, 19.793764>,  <7.522351, 23.427155, 19.715590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.749260, 23.426039, 19.793764>,  <8.127441, 23.424179, 19.924053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.749260, 23.426039, 19.793764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062664, -0.978627, -0.195863,
		-0.319674, -0.205591, 0.924954,
		-0.945453, 0.004651, -0.325725,
		7.465624, 23.427435, 19.696047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.814213, 22.852587, 20.205971>,  <8.127441, 23.424179, 19.924053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.814213, 22.852587, 20.205971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586289, 22.933142, 19.887283>,  <7.449535, 22.981474, 19.696072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.586289, 22.933142, 19.887283>,  <7.814213, 22.852587, 20.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.586289, 22.933142, 19.887283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166976, -0.977656, -0.127701,
		-0.804635, 0.060268, 0.590704,
		-0.569809, 0.201386, -0.796719,
		7.415347, 22.993557, 19.648268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.430290, 22.284632, 20.218019>,  <7.814213, 22.852587, 20.205971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.430290, 22.284632, 20.218019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.342857, 22.453009, 19.865877>,  <7.290398, 22.554035, 19.654591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.342857, 22.453009, 19.865877>,  <7.430290, 22.284632, 20.218019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.342857, 22.453009, 19.865877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310228, -0.885345, -0.346300,
		-0.925192, 0.197417, 0.324109,
		-0.218583, 0.420941, -0.880358,
		7.277283, 22.579290, 19.601770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705924, 22.187704, 19.952932>,  <7.430290, 22.284632, 20.218019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705924, 22.187704, 19.952932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918732, 22.239704, 19.618256>,  <7.046416, 22.270905, 19.417450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918732, 22.239704, 19.618256>,  <6.705924, 22.187704, 19.952932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.918732, 22.239704, 19.618256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326588, -0.880179, -0.344420,
		-0.781214, 0.456492, -0.425816,
		0.532020, 0.129999, -0.836693,
		7.078338, 22.278704, 19.367249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.258221, 21.994305, 19.384396>,  <6.705924, 22.187704, 19.952932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.258221, 21.994305, 19.384396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.622098, 22.000177, 19.218388>,  <6.840424, 22.003700, 19.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.622098, 22.000177, 19.218388>,  <6.258221, 21.994305, 19.384396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622098, 22.000177, 19.218388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262341, -0.754395, -0.601718,
		-0.321925, 0.656256, -0.682416,
		0.909693, 0.014683, -0.415022,
		6.895006, 22.004581, 19.093882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.229056, 21.874405, 18.663149>,  <6.258221, 21.994305, 19.384396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.229056, 21.874405, 18.663149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.606021, 21.768633, 18.745062>,  <6.832200, 21.705170, 18.794209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.606021, 21.768633, 18.745062>,  <6.229056, 21.874405, 18.663149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.606021, 21.768633, 18.745062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140587, -0.868768, -0.474845,
		0.303472, 0.418710, -0.855913,
		0.942412, -0.264432, 0.204781,
		6.888744, 21.689302, 18.806496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.467692, 21.638273, 18.018589>,  <6.229056, 21.874405, 18.663149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.467692, 21.638273, 18.018589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.717364, 21.485325, 18.291115>,  <6.867168, 21.393555, 18.454630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.717364, 21.485325, 18.291115>,  <6.467692, 21.638273, 18.018589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.717364, 21.485325, 18.291115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052722, -0.849447, -0.525034,
		0.779499, 0.363637, -0.510049,
		0.624181, -0.382373, 0.681314,
		6.904619, 21.370613, 18.495508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.951559, 21.141737, 17.644741>,  <6.467692, 21.638273, 18.018589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.951559, 21.141737, 17.644741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.994698, 21.046396, 18.030809>,  <7.020582, 20.989191, 18.262451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.994698, 21.046396, 18.030809>,  <6.951559, 21.141737, 17.644741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.994698, 21.046396, 18.030809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160511, -0.953923, -0.253511,
		0.981124, 0.182262, -0.064621,
		0.107849, -0.238353, 0.965172,
		7.027053, 20.974890, 18.320360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556679, 20.799984, 17.718569>,  <6.951559, 21.141737, 17.644741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556679, 20.799984, 17.718569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323207, 20.694553, 18.025774>,  <7.183124, 20.631296, 18.210098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323207, 20.694553, 18.025774>,  <7.556679, 20.799984, 17.718569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.323207, 20.694553, 18.025774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154941, -0.964623, -0.213297,
		0.797064, -0.005500, 0.603869,
		-0.583680, -0.263575, 0.768014,
		7.148103, 20.615480, 18.256178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.887703, 20.161684, 18.154678>,  <7.556679, 20.799984, 17.718569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.887703, 20.161684, 18.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.498987, 20.161776, 18.249016>,  <7.265757, 20.161831, 18.305618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.498987, 20.161776, 18.249016>,  <7.887703, 20.161684, 18.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.498987, 20.161776, 18.249016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059812, -0.967545, -0.245519,
		0.228135, -0.252699, 0.940265,
		-0.971791, 0.000228, 0.235845,
		7.207449, 20.161844, 18.319769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.822113, 19.549437, 18.444765>,  <7.887703, 20.161684, 18.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.822113, 19.549437, 18.444765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.440161, 19.645678, 18.375120>,  <7.210990, 19.703423, 18.333332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.440161, 19.645678, 18.375120>,  <7.822113, 19.549437, 18.444765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.440161, 19.645678, 18.375120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182133, -0.937469, -0.296615,
		-0.234593, -0.251520, 0.938991,
		-0.954879, 0.240605, -0.174113,
		7.153697, 19.717859, 18.322886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.493150, 19.078428, 18.814732>,  <7.822113, 19.549437, 18.444765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.493150, 19.078428, 18.814732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.233307, 19.241648, 18.558136>,  <7.077402, 19.339579, 18.404179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.233307, 19.241648, 18.558136>,  <7.493150, 19.078428, 18.814732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.233307, 19.241648, 18.558136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032795, -0.827939, -0.559858,
		-0.759564, -0.384725, 0.524452,
		-0.649606, 0.408048, -0.641490,
		7.038425, 19.364061, 18.365688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.891370, 18.649885, 18.736540>,  <7.493150, 19.078428, 18.814732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.891370, 18.649885, 18.736540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.853051, 18.857141, 18.396574>,  <6.830059, 18.981495, 18.192595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.853051, 18.857141, 18.396574>,  <6.891370, 18.649885, 18.736540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.853051, 18.857141, 18.396574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196668, -0.846861, -0.494113,
		-0.975779, 0.119816, 0.183029,
		-0.095798, 0.518142, -0.849913,
		6.824311, 19.012585, 18.141600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.210015, 18.559629, 18.421009>,  <6.891370, 18.649885, 18.736540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.210015, 18.559629, 18.421009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446994, 18.662170, 18.115515>,  <6.589181, 18.723696, 17.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446994, 18.662170, 18.115515>,  <6.210015, 18.559629, 18.421009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.446994, 18.662170, 18.115515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109070, -0.913767, -0.391323,
		-0.798192, 0.315139, -0.513398,
		0.592447, 0.256354, -0.763734,
		6.624728, 18.739077, 17.886395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.801974, 18.492529, 17.756618>,  <6.210015, 18.559629, 18.421009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.801974, 18.492529, 17.756618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.181283, 18.512487, 17.631216>,  <6.408869, 18.524462, 17.555975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.181283, 18.512487, 17.631216>,  <5.801974, 18.492529, 17.756618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.181283, 18.512487, 17.631216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120651, -0.856821, -0.501298,
		-0.293632, 0.513193, -0.806481,
		0.948274, 0.049895, -0.313508,
		6.465765, 18.527456, 17.537163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.793661, 18.289183, 16.999735>,  <5.801974, 18.492529, 17.756618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.793661, 18.289183, 16.999735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.167856, 18.234325, 17.129997>,  <6.392374, 18.201412, 17.208155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.167856, 18.234325, 17.129997>,  <5.793661, 18.289183, 16.999735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.167856, 18.234325, 17.129997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003480, -0.925143, -0.379602,
		0.353339, 0.353980, -0.865939,
		0.935489, -0.137141, 0.325657,
		6.448503, 18.193184, 17.227694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.153829, 17.964291, 16.434647>,  <5.793661, 18.289183, 16.999735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.153829, 17.964291, 16.434647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.392171, 17.886332, 16.746281>,  <6.535176, 17.839556, 16.933260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.392171, 17.886332, 16.746281>,  <6.153829, 17.964291, 16.434647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.392171, 17.886332, 16.746281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171466, -0.916862, -0.360504,
		0.784574, 0.348395, -0.512899,
		0.595855, -0.194897, 0.779084,
		6.570928, 17.827862, 16.980005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.752571, 17.644663, 16.144951>,  <6.153829, 17.964291, 16.434647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.752571, 17.644663, 16.144951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.769886, 17.549295, 16.533030>,  <6.780275, 17.492075, 16.765877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.769886, 17.549295, 16.533030>,  <6.752571, 17.644663, 16.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.769886, 17.549295, 16.533030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219697, -0.945065, -0.242044,
		0.974607, 0.223627, 0.011468,
		0.043289, -0.238417, 0.970198,
		6.782873, 17.477770, 16.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.414390, 17.444029, 16.333359>,  <6.752571, 17.644663, 16.144951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.414390, 17.444029, 16.333359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.150455, 17.272179, 16.579947>,  <6.992093, 17.169069, 16.727900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.150455, 17.272179, 16.579947>,  <7.414390, 17.444029, 16.333359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.150455, 17.272179, 16.579947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213697, -0.893837, -0.394194,
		0.720379, -0.128366, 0.681598,
		-0.659839, -0.429624, 0.616470,
		6.952503, 17.143291, 16.764887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.693085, 16.727530, 16.502653>,  <7.414390, 17.444029, 16.333359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.693085, 16.727530, 16.502653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.315130, 16.702881, 16.631271>,  <7.088357, 16.688091, 16.708443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.315130, 16.702881, 16.631271>,  <7.693085, 16.727530, 16.502653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.315130, 16.702881, 16.631271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067039, -0.924905, -0.374242,
		0.320461, -0.375172, 0.869799,
		-0.944886, -0.061620, 0.321547,
		7.031664, 16.684395, 16.727736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.700009, 16.024187, 16.893862>,  <7.693085, 16.727530, 16.502653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.700009, 16.024187, 16.893862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.330859, 16.116299, 16.770395>,  <7.109369, 16.171566, 16.696316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.330859, 16.116299, 16.770395>,  <7.700009, 16.024187, 16.893862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.330859, 16.116299, 16.770395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103303, -0.920178, -0.377626,
		-0.370986, -0.316616, 0.872997,
		-0.922875, 0.230277, -0.308666,
		7.053996, 16.185381, 16.677795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.147201, 15.804371, 17.429787>,  <7.700009, 16.024187, 16.893862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.147201, 15.804371, 17.429787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.103882, 15.617190, 17.078949>,  <8.077890, 15.504882, 16.868446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.103882, 15.617190, 17.078949>,  <8.147201, 15.804371, 17.429787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.103882, 15.617190, 17.078949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891443, 0.436214, -0.122662,
		0.440001, 0.768597, -0.464389,
		-0.108295, -0.467948, -0.877096,
		8.071393, 15.476805, 16.815821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.863190, 15.632022, 17.740017>,  <8.147201, 15.804371, 17.429787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.863190, 15.632022, 17.740017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.751363, 15.819243, 17.404692>,  <8.684267, 15.931577, 17.203497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.751363, 15.819243, 17.404692>,  <8.863190, 15.632022, 17.740017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.751363, 15.819243, 17.404692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947127, 0.277633, -0.160844,
		0.157460, -0.838955, -0.520923,
		-0.279567, 0.468054, -0.838313,
		8.667493, 15.959660, 17.153198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.139386, 15.101469, 18.032930>,  <8.863190, 15.632022, 17.740017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.139386, 15.101469, 18.032930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.348567, 15.420528, 17.912746>,  <9.474075, 15.611964, 17.840635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.348567, 15.420528, 17.912746>,  <9.139386, 15.101469, 18.032930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.348567, 15.420528, 17.912746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771750, -0.592741, -0.230347,
		-0.361831, -0.111419, -0.925561,
		0.522953, 0.797649, -0.300460,
		9.505453, 15.659823, 17.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367082, 15.005991, 17.302923>,  <9.139386, 15.101469, 18.032930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367082, 15.005991, 17.302923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.619813, 15.236206, 17.510595>,  <9.771452, 15.374335, 17.635199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.619813, 15.236206, 17.510595>,  <9.367082, 15.005991, 17.302923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.619813, 15.236206, 17.510595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764401, -0.573617, -0.294372,
		0.128389, 0.582855, -0.802369,
		0.631829, 0.575537, 0.519181,
		9.809361, 15.408867, 17.666349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.803791, 15.163107, 16.840509>,  <9.367082, 15.005991, 17.302923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.803791, 15.163107, 16.840509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972714, 15.173892, 17.202930>,  <10.074069, 15.180363, 17.420383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972714, 15.173892, 17.202930>,  <9.803791, 15.163107, 16.840509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972714, 15.173892, 17.202930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764215, -0.548134, -0.339889,
		0.487473, 0.835956, -0.252087,
		0.422310, 0.026962, 0.906051,
		10.099407, 15.181981, 17.474745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.511003, 15.176618, 16.826694>,  <9.803791, 15.163107, 16.840509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.511003, 15.176618, 16.826694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.500854, 15.072751, 17.212841>,  <10.494765, 15.010431, 17.444529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.500854, 15.072751, 17.212841>,  <10.511003, 15.176618, 16.826694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.500854, 15.072751, 17.212841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851022, -0.512286, -0.115431,
		0.524516, 0.818619, 0.233978,
		-0.025370, -0.259666, 0.965365,
		10.493243, 14.994851, 17.502451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.234000, 15.250257, 17.166950>,  <10.511003, 15.176618, 16.826694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.234000, 15.250257, 17.166950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056067, 14.967379, 17.386768>,  <10.949308, 14.797652, 17.518660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056067, 14.967379, 17.386768>,  <11.234000, 15.250257, 17.166950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.056067, 14.967379, 17.386768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800035, -0.589574, -0.111115,
		0.402578, 0.390229, 0.828041,
		-0.444831, -0.707195, 0.549546,
		10.922618, 14.755220, 17.551632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.766193, 14.975322, 17.759266>,  <11.234000, 15.250257, 17.166950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.766193, 14.975322, 17.759266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512184, 14.704355, 17.610752>,  <11.359778, 14.541776, 17.521645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.512184, 14.704355, 17.610752>,  <11.766193, 14.975322, 17.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.512184, 14.704355, 17.610752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703196, -0.705876, 0.085177,
		-0.319781, -0.206996, 0.924604,
		-0.635024, -0.677416, -0.371284,
		11.321677, 14.501130, 17.499367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.778378, 14.779327, 17.088154>,  <11.766193, 14.975322, 17.759266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.778378, 14.779327, 17.088154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177763, 14.786870, 17.108992>,  <12.417395, 14.791395, 17.121494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177763, 14.786870, 17.108992>,  <11.778378, 14.779327, 17.088154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177763, 14.786870, 17.108992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053957, 0.117431, 0.991614,
		0.012581, -0.992902, 0.118268,
		0.998464, 0.018857, 0.052097,
		12.477303, 14.792527, 17.124620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974173, 14.287575, 17.586784>,  <11.778378, 14.779327, 17.088154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974173, 14.287575, 17.586784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260413, 14.566904, 17.580341>,  <12.432158, 14.734502, 17.576475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260413, 14.566904, 17.580341>,  <11.974173, 14.287575, 17.586784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260413, 14.566904, 17.580341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052286, 0.076547, 0.995694,
		0.696549, -0.711678, 0.091290,
		0.715602, 0.698323, -0.016108,
		12.475094, 14.776401, 17.575508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453967, 14.112597, 18.157467>,  <11.974173, 14.287575, 17.586784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453967, 14.112597, 18.157467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492511, 14.500639, 18.068371>,  <12.515637, 14.733464, 18.014914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492511, 14.500639, 18.068371>,  <12.453967, 14.112597, 18.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492511, 14.500639, 18.068371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021924, 0.221659, 0.974878,
		0.995105, -0.098823, 0.000091,
		0.096360, 0.970103, -0.222741,
		12.521419, 14.791670, 18.001549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535578, 14.489703, 18.840397>,  <12.453967, 14.112597, 18.157467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535578, 14.489703, 18.840397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566250, 14.808720, 18.601049>,  <12.584653, 15.000130, 18.457441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.566250, 14.808720, 18.601049>,  <12.535578, 14.489703, 18.840397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.566250, 14.808720, 18.601049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062521, 0.602802, 0.795437,
		0.995094, -0.023584, 0.096087,
		0.076681, 0.797542, -0.598370,
		12.589254, 15.047982, 18.421539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.146584, 14.955987, 19.004025>,  <12.535578, 14.489703, 18.840397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.146584, 14.955987, 19.004025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826896, 15.147321, 18.858454>,  <12.635083, 15.262121, 18.771111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826896, 15.147321, 18.858454>,  <13.146584, 14.955987, 19.004025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826896, 15.147321, 18.858454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038489, 0.563522, 0.825204,
		0.599805, 0.673527, -0.431967,
		-0.799220, 0.478335, -0.363927,
		12.587130, 15.290821, 18.749275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239106, 15.670321, 19.117813>,  <13.146584, 14.955987, 19.004025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239106, 15.670321, 19.117813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.849950, 15.679439, 19.025759>,  <12.616456, 15.684909, 18.970526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.849950, 15.679439, 19.025759>,  <13.239106, 15.670321, 19.117813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849950, 15.679439, 19.025759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181471, 0.541606, 0.820812,
		0.143352, 0.840324, -0.522787,
		-0.972892, 0.022795, -0.230135,
		12.558083, 15.686277, 18.956718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021940, 16.315151, 19.338963>,  <13.239106, 15.670321, 19.117813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021940, 16.315151, 19.338963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669781, 16.130423, 19.295849>,  <12.458485, 16.019585, 19.269979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669781, 16.130423, 19.295849>,  <13.021940, 16.315151, 19.338963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669781, 16.130423, 19.295849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276194, 0.314566, 0.908166,
		-0.385504, 0.829319, -0.404496,
		-0.880400, -0.461821, -0.107786,
		12.405661, 15.991877, 19.263514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525297, 16.829729, 19.477026>,  <13.021940, 16.315151, 19.338963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525297, 16.829729, 19.477026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374215, 16.462843, 19.527710>,  <12.283566, 16.242712, 19.558121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374215, 16.462843, 19.527710>,  <12.525297, 16.829729, 19.477026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374215, 16.462843, 19.527710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288651, 0.246667, 0.925114,
		-0.879783, 0.312846, -0.357922,
		-0.377706, -0.917214, 0.126711,
		12.260903, 16.187679, 19.565723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838538, 16.975454, 19.604572>,  <12.525297, 16.829729, 19.477026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838538, 16.975454, 19.604572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925372, 16.626509, 19.779779>,  <11.977472, 16.417141, 19.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925372, 16.626509, 19.779779>,  <11.838538, 16.975454, 19.604572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925372, 16.626509, 19.779779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136045, 0.417300, 0.898528,
		-0.966626, -0.254647, -0.028091,
		0.217085, -0.872362, 0.438017,
		11.990498, 16.364799, 19.911184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.329235, 16.968079, 20.087507>,  <11.838538, 16.975454, 19.604572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.329235, 16.968079, 20.087507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579665, 16.679193, 20.205107>,  <11.729923, 16.505861, 20.275667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579665, 16.679193, 20.205107>,  <11.329235, 16.968079, 20.087507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579665, 16.679193, 20.205107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239703, 0.180526, 0.953914,
		-0.742005, -0.667695, -0.060095,
		0.626076, -0.722214, 0.294000,
		11.767488, 16.462530, 20.293306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983063, 16.629427, 20.613092>,  <11.329235, 16.968079, 20.087507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983063, 16.629427, 20.613092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373924, 16.556593, 20.656937>,  <11.608441, 16.512892, 20.683243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373924, 16.556593, 20.656937>,  <10.983063, 16.629427, 20.613092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.373924, 16.556593, 20.656937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072559, 0.198928, 0.977324,
		-0.199763, -0.962950, 0.181172,
		0.977154, -0.182088, 0.109609,
		11.667070, 16.501966, 20.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955902, 16.229650, 21.175741>,  <10.983063, 16.629427, 20.613092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955902, 16.229650, 21.175741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332883, 16.361849, 21.155521>,  <11.559072, 16.441168, 21.143391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.332883, 16.361849, 21.155521>,  <10.955902, 16.229650, 21.175741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.332883, 16.361849, 21.155521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040516, 0.262969, 0.963953,
		0.331878, -0.906431, 0.261226,
		0.942452, 0.330499, -0.050549,
		11.615619, 16.460997, 21.140358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320782, 15.884492, 21.769032>,  <10.955902, 16.229650, 21.175741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320782, 15.884492, 21.769032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.545193, 16.190834, 21.643356>,  <11.679839, 16.374640, 21.567951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.545193, 16.190834, 21.643356>,  <11.320782, 15.884492, 21.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.545193, 16.190834, 21.643356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233500, 0.217722, 0.947668,
		0.794183, -0.605030, -0.056680,
		0.561027, 0.765857, -0.314186,
		11.713501, 16.420591, 21.549101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.068564, 15.917388, 22.102709>,  <11.320782, 15.884492, 21.769032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.068564, 15.917388, 22.102709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988815, 16.280237, 21.954451>,  <11.940966, 16.497948, 21.865496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.988815, 16.280237, 21.954451>,  <12.068564, 15.917388, 22.102709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.988815, 16.280237, 21.954451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366905, 0.419829, 0.830135,
		0.908642, 0.029515, -0.416531,
		-0.199373, 0.907123, -0.370645,
		11.929004, 16.552374, 21.843258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611319, 16.225792, 22.013685>,  <12.068564, 15.917388, 22.102709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611319, 16.225792, 22.013685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.340006, 16.511166, 22.084057>,  <12.177218, 16.682388, 22.126280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.340006, 16.511166, 22.084057>,  <12.611319, 16.225792, 22.013685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.340006, 16.511166, 22.084057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481530, 0.250716, 0.839804,
		0.555035, 0.654337, -0.513595,
		-0.678281, 0.713432, 0.175927,
		12.136521, 16.725195, 22.136835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.998585, 16.697296, 22.420918>,  <12.611319, 16.225792, 22.013685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.998585, 16.697296, 22.420918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611052, 16.780508, 22.474712>,  <12.378531, 16.830435, 22.506989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611052, 16.780508, 22.474712>,  <12.998585, 16.697296, 22.420918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611052, 16.780508, 22.474712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191418, 0.284120, 0.939487,
		0.157230, 0.935949, -0.315085,
		-0.968833, 0.208028, 0.134486,
		12.320401, 16.842916, 22.515059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.032261, 17.237354, 22.877499>,  <12.998585, 16.697296, 22.420918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.032261, 17.237354, 22.877499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651344, 17.119215, 22.908249>,  <12.422794, 17.048332, 22.926699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651344, 17.119215, 22.908249>,  <13.032261, 17.237354, 22.877499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651344, 17.119215, 22.908249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011729, 0.287130, 0.957820,
		-0.304962, 0.911223, -0.276896,
		-0.952292, -0.295347, 0.076876,
		12.365657, 17.030611, 22.931313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599334, 17.786346, 23.138300>,  <13.032261, 17.237354, 22.877499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599334, 17.786346, 23.138300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437846, 17.437052, 23.247459>,  <12.340954, 17.227476, 23.312954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437846, 17.437052, 23.247459>,  <12.599334, 17.786346, 23.138300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.437846, 17.437052, 23.247459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012849, 0.303668, 0.952691,
		-0.914793, 0.381113, -0.133817,
		-0.403719, -0.873234, 0.272896,
		12.316730, 17.175081, 23.329329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.124228, 17.922537, 23.631531>,  <12.599334, 17.786346, 23.138300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.124228, 17.922537, 23.631531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156886, 17.527382, 23.684311>,  <12.176481, 17.290289, 23.715979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156886, 17.527382, 23.684311>,  <12.124228, 17.922537, 23.631531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.156886, 17.527382, 23.684311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104043, 0.123223, 0.986910,
		-0.991216, -0.094308, -0.092722,
		0.081648, -0.987888, 0.131952,
		12.181380, 17.231016, 23.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576729, 17.706339, 24.094009>,  <12.124228, 17.922537, 23.631531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576729, 17.706339, 24.094009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855927, 17.419977, 24.100771>,  <12.023445, 17.248159, 24.104828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855927, 17.419977, 24.100771>,  <11.576729, 17.706339, 24.094009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855927, 17.419977, 24.100771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042137, 0.064625, 0.997020,
		-0.714863, -0.695201, 0.075274,
		0.697994, -0.715904, 0.016904,
		12.065325, 17.205206, 24.105843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.339081, 17.117765, 24.644875>,  <11.576729, 17.706339, 24.094009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.339081, 17.117765, 24.644875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735648, 17.101440, 24.595198>,  <11.973589, 17.091644, 24.565392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735648, 17.101440, 24.595198>,  <11.339081, 17.117765, 24.644875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735648, 17.101440, 24.595198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123459, -0.019997, 0.992148,
		-0.042975, -0.998967, -0.014787,
		0.991419, -0.040812, -0.124190,
		12.033073, 17.089197, 24.557941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517742, 16.634943, 25.120075>,  <11.339081, 17.117765, 24.644875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517742, 16.634943, 25.120075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849619, 16.844234, 25.042261>,  <12.048745, 16.969809, 24.995573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849619, 16.844234, 25.042261>,  <11.517742, 16.634943, 25.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849619, 16.844234, 25.042261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266494, -0.065048, 0.961639,
		0.490502, -0.849707, -0.193407,
		0.829692, 0.523228, -0.194536,
		12.098527, 17.001204, 24.983900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.972472, 16.288914, 25.610758>,  <11.517742, 16.634943, 25.120075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.972472, 16.288914, 25.610758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143051, 16.631460, 25.494289>,  <12.245399, 16.836988, 25.424408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.143051, 16.631460, 25.494289>,  <11.972472, 16.288914, 25.610758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.143051, 16.631460, 25.494289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422978, 0.095737, 0.901068,
		0.799520, -0.507417, -0.321397,
		0.426448, 0.856366, -0.291170,
		12.270986, 16.888371, 25.406939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686488, 16.308208, 25.910950>,  <11.972472, 16.288914, 25.610758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686488, 16.308208, 25.910950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571956, 16.684721, 25.839394>,  <12.503236, 16.910629, 25.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571956, 16.684721, 25.839394>,  <12.686488, 16.308208, 25.910950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571956, 16.684721, 25.839394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407625, 0.288643, 0.866329,
		0.867096, 0.175138, -0.466338,
		-0.286332, 0.941282, -0.178890,
		12.486056, 16.967106, 25.785727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214176, 16.703924, 26.157022>,  <12.686488, 16.308208, 25.910950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214176, 16.703924, 26.157022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907132, 16.957752, 26.121031>,  <12.722905, 17.110048, 26.099436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907132, 16.957752, 26.121031>,  <13.214176, 16.703924, 26.157022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907132, 16.957752, 26.121031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272613, 0.450329, 0.850227,
		0.580048, 0.628114, -0.518669,
		-0.767611, 0.634568, -0.089981,
		12.676849, 17.148123, 26.094036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467624, 17.309271, 26.464586>,  <13.214176, 16.703924, 26.157022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467624, 17.309271, 26.464586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072031, 17.367481, 26.453733>,  <12.834675, 17.402407, 26.447222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072031, 17.367481, 26.453733>,  <13.467624, 17.309271, 26.464586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072031, 17.367481, 26.453733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032677, 0.393378, 0.918796,
		0.144380, 0.907787, -0.393799,
		-0.988983, 0.145524, -0.027132,
		12.775336, 17.411139, 26.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285399, 17.877520, 26.954529>,  <13.467624, 17.309271, 26.464586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285399, 17.877520, 26.954529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901162, 17.775978, 26.909243>,  <12.670620, 17.715054, 26.882071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901162, 17.775978, 26.909243>,  <13.285399, 17.877520, 26.954529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901162, 17.775978, 26.909243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225676, 0.474500, 0.850835,
		-0.162266, 0.842857, -0.513090,
		-0.960594, -0.253854, -0.113218,
		12.612984, 17.699821, 26.875277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911961, 18.576963, 27.102951>,  <13.285399, 17.877520, 26.954529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911961, 18.576963, 27.102951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686058, 18.251913, 27.160488>,  <12.550517, 18.056883, 27.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686058, 18.251913, 27.160488>,  <12.911961, 18.576963, 27.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686058, 18.251913, 27.160488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436102, 0.441848, 0.783955,
		-0.700619, 0.380013, -0.603924,
		-0.564756, -0.812626, 0.143843,
		12.516631, 18.008125, 27.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212419, 18.758518, 27.202362>,  <12.911961, 18.576963, 27.102951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212419, 18.758518, 27.202362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217527, 18.392242, 27.363037>,  <12.220592, 18.172478, 27.459442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217527, 18.392242, 27.363037>,  <12.212419, 18.758518, 27.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.217527, 18.392242, 27.363037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643625, 0.299907, 0.704133,
		-0.765235, -0.267529, -0.585529,
		0.012771, -0.915688, 0.401688,
		12.221359, 18.117537, 27.483543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.568707, 18.757017, 27.372652>,  <12.212419, 18.758518, 27.202362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.568707, 18.757017, 27.372652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719634, 18.455418, 27.587730>,  <11.810190, 18.274458, 27.716778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719634, 18.455418, 27.587730>,  <11.568707, 18.757017, 27.372652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719634, 18.455418, 27.587730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654144, 0.193994, 0.731069,
		-0.655536, -0.627574, -0.420028,
		0.377317, -0.754001, 0.537694,
		11.832829, 18.229218, 27.749039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.059174, 18.482918, 27.692223>,  <11.568707, 18.757017, 27.372652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.059174, 18.482918, 27.692223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348535, 18.331577, 27.923233>,  <11.522151, 18.240772, 28.061840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.348535, 18.331577, 27.923233>,  <11.059174, 18.482918, 27.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.348535, 18.331577, 27.923233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610967, 0.038795, 0.790705,
		-0.321570, -0.924849, -0.203096,
		0.723403, -0.378352, 0.577527,
		11.565556, 18.218073, 28.096491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792557, 17.898413, 28.052414>,  <11.059174, 18.482918, 27.692223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792557, 17.898413, 28.052414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.096210, 18.035383, 28.273849>,  <11.278402, 18.117565, 28.406712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.096210, 18.035383, 28.273849>,  <10.792557, 17.898413, 28.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.096210, 18.035383, 28.273849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611521, 0.083728, 0.786785,
		0.223067, -0.935805, 0.272963,
		0.759133, 0.342429, 0.553588,
		11.323951, 18.138111, 28.439926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.758743, 17.467264, 28.559616>,  <10.792557, 17.898413, 28.052414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.758743, 17.467264, 28.559616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982687, 17.771290, 28.691591>,  <11.117053, 17.953705, 28.770777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982687, 17.771290, 28.691591>,  <10.758743, 17.467264, 28.559616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982687, 17.771290, 28.691591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527701, 0.020075, 0.849193,
		0.638820, -0.649536, 0.412327,
		0.559858, 0.760066, 0.329936,
		11.150644, 17.999310, 28.790573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290727, 17.627008, 29.046356>,  <10.758743, 17.467264, 28.559616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290727, 17.627008, 29.046356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645241, 17.799746, 29.113304>,  <10.857949, 17.903387, 29.153473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645241, 17.799746, 29.113304>,  <10.290727, 17.627008, 29.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645241, 17.799746, 29.113304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314868, 0.296807, 0.901534,
		0.339652, -0.851711, 0.399030,
		0.886282, 0.431850, 0.167366,
		10.911126, 17.929298, 29.163515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.737889, 17.251894, 29.594694>,  <10.290727, 17.627008, 29.046356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.737889, 17.251894, 29.594694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762197, 17.650948, 29.607569>,  <10.776782, 17.890379, 29.615294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762197, 17.650948, 29.607569>,  <10.737889, 17.251894, 29.594694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762197, 17.650948, 29.607569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070311, -0.027889, 0.997135,
		0.995672, -0.062858, 0.068450,
		0.060769, 0.997633, 0.032188,
		10.780428, 17.950237, 29.617226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.042030, 17.330994, 30.157967>,  <10.737889, 17.251894, 29.594694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.042030, 17.330994, 30.157967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900971, 17.698420, 30.086546>,  <10.816337, 17.918875, 30.043694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900971, 17.698420, 30.086546>,  <11.042030, 17.330994, 30.157967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.900971, 17.698420, 30.086546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206495, 0.109719, 0.972277,
		0.912688, 0.379741, 0.150987,
		-0.352647, 0.918563, -0.178553,
		10.795177, 17.973989, 30.032980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426393, 17.818943, 30.655245>,  <11.042030, 17.330994, 30.157967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.426393, 17.818943, 30.655245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076821, 17.986248, 30.556204>,  <10.867079, 18.086630, 30.496778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076821, 17.986248, 30.556204>,  <11.426393, 17.818943, 30.655245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076821, 17.986248, 30.556204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143747, 0.264220, 0.953690,
		0.464314, 0.869048, -0.170786,
		-0.873928, 0.418261, -0.247604,
		10.814643, 18.111727, 30.481922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405869, 18.478058, 31.045700>,  <11.426393, 17.818943, 30.655245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405869, 18.478058, 31.045700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.024293, 18.406754, 30.949186>,  <10.795347, 18.363972, 30.891279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.024293, 18.406754, 30.949186>,  <11.405869, 18.478058, 31.045700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.024293, 18.406754, 30.949186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295928, 0.427268, 0.854324,
		-0.049198, 0.886378, -0.460341,
		-0.953943, -0.178259, -0.241283,
		10.738111, 18.353275, 30.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.008621, 19.153959, 31.205240>,  <11.405869, 18.478058, 31.045700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.008621, 19.153959, 31.205240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759861, 18.840952, 31.193237>,  <10.610604, 18.653147, 31.186035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759861, 18.840952, 31.193237>,  <11.008621, 19.153959, 31.205240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759861, 18.840952, 31.193237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305409, 0.207080, 0.929432,
		-0.721085, 0.587179, -0.367772,
		-0.621901, -0.782520, -0.030007,
		10.573291, 18.606195, 31.184235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503374, 19.415627, 31.546776>,  <11.008621, 19.153959, 31.205240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503374, 19.415627, 31.546776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437623, 19.021488, 31.528545>,  <10.398172, 18.785006, 31.517607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.437623, 19.021488, 31.528545>,  <10.503374, 19.415627, 31.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437623, 19.021488, 31.528545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434523, 0.030852, 0.900133,
		-0.885534, 0.167765, -0.433225,
		-0.164377, -0.985344, -0.045577,
		10.388310, 18.725885, 31.514872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.830665, 19.272978, 31.814764>,  <10.503374, 19.415627, 31.546776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.830665, 19.272978, 31.814764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.012794, 18.920813, 31.867765>,  <10.122070, 18.709515, 31.899567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.012794, 18.920813, 31.867765>,  <9.830665, 19.272978, 31.814764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.012794, 18.920813, 31.867765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440958, -0.093707, 0.892623,
		-0.773459, -0.464859, -0.430892,
		0.455321, -0.880412, 0.132505,
		10.149390, 18.656689, 31.907516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324024, 18.763737, 32.148247>,  <9.830665, 19.272978, 31.814764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324024, 18.763737, 32.148247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702264, 18.669794, 32.238300>,  <9.929208, 18.613428, 32.292332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702264, 18.669794, 32.238300>,  <9.324024, 18.763737, 32.148247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.702264, 18.669794, 32.238300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213220, 0.075287, 0.974099,
		-0.245722, -0.969110, 0.021115,
		0.945599, -0.234856, 0.225134,
		9.985944, 18.599337, 32.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.655568, 18.116543, 32.698048>,  <9.324024, 18.763737, 32.148247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.655568, 18.116543, 32.698048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.863475, 18.458204, 32.691578>,  <9.988218, 18.663202, 32.687698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.863475, 18.458204, 32.691578>,  <9.655568, 18.116543, 32.698048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.863475, 18.458204, 32.691578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267730, 0.180834, 0.946372,
		0.811273, -0.487562, 0.322674,
		0.519766, 0.854156, -0.016171,
		10.019404, 18.714451, 32.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071149, 18.282108, 33.363457>,  <9.655568, 18.116543, 32.698048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071149, 18.282108, 33.363457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.039758, 18.644436, 33.196922>,  <10.020923, 18.861832, 33.097000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.039758, 18.644436, 33.196922>,  <10.071149, 18.282108, 33.363457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.039758, 18.644436, 33.196922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070374, 0.411550, 0.908666,
		0.994429, 0.100610, 0.031448,
		-0.078479, 0.905817, -0.416337,
		10.016214, 18.916182, 33.072021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.491568, 18.803204, 33.613430>,  <10.071149, 18.282108, 33.363457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.491568, 18.803204, 33.613430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.167424, 19.004749, 33.493805>,  <9.972939, 19.125677, 33.422028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.167424, 19.004749, 33.493805>,  <10.491568, 18.803204, 33.613430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.167424, 19.004749, 33.493805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160022, 0.300690, 0.940201,
		0.563660, 0.809757, -0.163037,
		-0.810358, 0.503865, -0.299066,
		9.924316, 19.155909, 33.404083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832216, 18.133987, 33.601173>,  <10.491568, 18.803204, 33.613430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832216, 18.133987, 33.601173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086211, 17.827744, 33.559925>,  <11.238608, 17.643997, 33.535175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.086211, 17.827744, 33.559925>,  <10.832216, 18.133987, 33.601173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.086211, 17.827744, 33.559925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296875, -0.365076, 0.882375,
		-0.713201, -0.529683, -0.459109,
		0.634988, -0.765608, -0.103123,
		11.276708, 17.598061, 33.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434628, 17.470377, 33.531517>,  <10.832216, 18.133987, 33.601173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434628, 17.470377, 33.531517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.799732, 17.430222, 33.689907>,  <11.018794, 17.406128, 33.784939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.799732, 17.430222, 33.689907>,  <10.434628, 17.470377, 33.531517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.799732, 17.430222, 33.689907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392095, -0.487222, 0.780305,
		0.114593, -0.867489, -0.484078,
		0.912759, -0.100387, 0.395971,
		11.073560, 17.400105, 33.808697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.602511, 16.682688, 33.649158>,  <10.434628, 17.470377, 33.531517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.602511, 16.682688, 33.649158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741614, 16.956638, 33.905289>,  <10.825076, 17.121008, 34.058968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741614, 16.956638, 33.905289>,  <10.602511, 16.682688, 33.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741614, 16.956638, 33.905289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463476, -0.468097, 0.752380,
		0.815019, -0.558418, 0.154640,
		0.347756, 0.684876, 0.640321,
		10.845942, 17.162102, 34.097385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.976395, 16.319517, 34.260052>,  <10.602511, 16.682688, 33.649158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.976395, 16.319517, 34.260052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.774592, 16.657619, 34.330494>,  <10.653511, 16.860481, 34.372761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.774592, 16.657619, 34.330494>,  <10.976395, 16.319517, 34.260052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.774592, 16.657619, 34.330494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483571, -0.445596, 0.753395,
		0.715286, 0.294930, 0.633547,
		-0.504505, 0.845258, 0.176109,
		10.623240, 16.911198, 34.383327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.564775, 15.868177, 33.997471>,  <10.976395, 16.319517, 34.260052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.564775, 15.868177, 33.997471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740519, 15.589227, 34.223969>,  <11.845965, 15.421856, 34.359867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740519, 15.589227, 34.223969>,  <11.564775, 15.868177, 33.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.740519, 15.589227, 34.223969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532337, 0.305610, 0.789443,
		-0.723588, -0.648280, -0.236966,
		0.439361, -0.697377, 0.566239,
		11.872327, 15.380013, 34.393841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434620, 15.906689, 33.218719>,  <11.564775, 15.868177, 33.997471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434620, 15.906689, 33.218719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.060270, 15.802518, 33.123795>,  <10.835661, 15.740015, 33.066837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.060270, 15.802518, 33.123795>,  <11.434620, 15.906689, 33.218719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.060270, 15.802518, 33.123795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286008, -0.168166, -0.943355,
		0.205767, -0.950735, 0.231866,
		-0.935874, -0.260428, -0.237315,
		10.779509, 15.724390, 33.052601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.375264, 15.256891, 32.811340>,  <11.434620, 15.906689, 33.218719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.375264, 15.256891, 32.811340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.069603, 15.487768, 32.696159>,  <10.886206, 15.626294, 32.627048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.069603, 15.487768, 32.696159>,  <11.375264, 15.256891, 32.811340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.069603, 15.487768, 32.696159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270889, -0.117983, -0.955353,
		-0.585396, -0.808041, -0.066198,
		-0.764154, 0.577192, -0.287957,
		10.840357, 15.660926, 32.609772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.956466, 14.859848, 32.388653>,  <11.375264, 15.256891, 32.811340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.956466, 14.859848, 32.388653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904100, 15.246159, 32.299088>,  <10.872682, 15.477945, 32.245350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904100, 15.246159, 32.299088>,  <10.956466, 14.859848, 32.388653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904100, 15.246159, 32.299088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388565, -0.157803, -0.907808,
		-0.912074, -0.205848, -0.354608,
		-0.130913, 0.965777, -0.223913,
		10.864826, 15.535892, 32.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.477840, 14.935754, 31.761330>,  <10.956466, 14.859848, 32.388653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.477840, 14.935754, 31.761330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696112, 15.265924, 31.819174>,  <10.827074, 15.464025, 31.853880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696112, 15.265924, 31.819174>,  <10.477840, 14.935754, 31.761330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.696112, 15.265924, 31.819174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332466, -0.054841, -0.941519,
		-0.769221, 0.561844, -0.304351,
		0.545678, 0.825423, 0.144609,
		10.859816, 15.513551, 31.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289529, 15.461264, 31.293463>,  <10.477840, 14.935754, 31.761330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289529, 15.461264, 31.293463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672697, 15.517254, 31.393700>,  <10.902597, 15.550848, 31.453842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672697, 15.517254, 31.393700>,  <10.289529, 15.461264, 31.293463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.672697, 15.517254, 31.393700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254291, -0.008893, -0.967087,
		-0.133140, 0.990115, -0.044113,
		0.957919, 0.139976, 0.250594,
		10.960073, 15.559247, 31.468878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.519628, 15.781693, 30.727863>,  <10.289529, 15.461264, 31.293463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.519628, 15.781693, 30.727863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862572, 15.706884, 30.919678>,  <11.068338, 15.661999, 31.034767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862572, 15.706884, 30.919678>,  <10.519628, 15.781693, 30.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.862572, 15.706884, 30.919678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461244, -0.134339, -0.877045,
		0.228448, 0.973127, -0.028914,
		0.857360, -0.187023, 0.479538,
		11.119780, 15.650778, 31.063540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085603, 16.120361, 30.401356>,  <10.519628, 15.781693, 30.727863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085603, 16.120361, 30.401356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.235189, 15.803762, 30.594717>,  <11.324942, 15.613803, 30.710733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.235189, 15.803762, 30.594717>,  <11.085603, 16.120361, 30.401356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.235189, 15.803762, 30.594717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536136, -0.240810, -0.809054,
		0.756774, 0.561729, 0.334296,
		0.373967, -0.791500, 0.483402,
		11.347380, 15.566313, 30.739737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.840134, 16.197529, 30.392920>,  <11.085603, 16.120361, 30.401356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.840134, 16.197529, 30.392920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.789967, 15.806269, 30.459244>,  <11.759867, 15.571513, 30.499039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.789967, 15.806269, 30.459244>,  <11.840134, 16.197529, 30.392920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.789967, 15.806269, 30.459244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574381, -0.207863, -0.791757,
		0.808923, -0.004060, 0.587900,
		-0.125417, -0.978150, 0.165813,
		11.752341, 15.512824, 30.508987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423727, 15.934173, 29.990780>,  <11.840134, 16.197529, 30.392920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423727, 15.934173, 29.990780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190517, 15.613644, 30.044395>,  <12.050591, 15.421327, 30.076565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190517, 15.613644, 30.044395>,  <12.423727, 15.934173, 29.990780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.190517, 15.613644, 30.044395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345821, -0.394052, -0.851546,
		0.735181, -0.450119, 0.506855,
		-0.583024, -0.801322, 0.134039,
		12.015610, 15.373247, 30.084606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806551, 15.358725, 29.907709>,  <12.423727, 15.934173, 29.990780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806551, 15.358725, 29.907709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434773, 15.234628, 29.827827>,  <12.211707, 15.160170, 29.779898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434773, 15.234628, 29.827827>,  <12.806551, 15.358725, 29.907709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.434773, 15.234628, 29.827827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336192, -0.489114, -0.804825,
		0.152014, -0.815179, 0.558905,
		-0.929445, -0.310244, -0.199704,
		12.155940, 15.141555, 29.767916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.949317, 14.728376, 29.687202>,  <12.806551, 15.358725, 29.907709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.949317, 14.728376, 29.687202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.576427, 14.811414, 29.568636>,  <12.352694, 14.861236, 29.497496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.576427, 14.811414, 29.568636>,  <12.949317, 14.728376, 29.687202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.576427, 14.811414, 29.568636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186884, -0.425258, -0.885568,
		-0.309890, -0.880944, 0.357640,
		-0.932225, 0.207591, -0.296417,
		12.296761, 14.873692, 29.479712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625639, 14.105680, 29.371868>,  <12.949317, 14.728376, 29.687202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625639, 14.105680, 29.371868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423708, 14.418206, 29.225063>,  <12.302549, 14.605721, 29.136980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423708, 14.418206, 29.225063>,  <12.625639, 14.105680, 29.371868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.423708, 14.418206, 29.225063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142912, -0.343651, -0.928159,
		-0.851309, -0.521010, 0.061825,
		-0.504826, 0.781315, -0.367012,
		12.272260, 14.652600, 29.114960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167821, 13.837614, 28.950499>,  <12.625639, 14.105680, 29.371868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167821, 13.837614, 28.950499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216513, 14.219821, 28.843042>,  <12.245728, 14.449145, 28.778568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.216513, 14.219821, 28.843042>,  <12.167821, 13.837614, 28.950499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.216513, 14.219821, 28.843042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194703, -0.288383, -0.937510,
		-0.973279, 0.061816, -0.221147,
		0.121729, 0.955518, -0.268642,
		12.253031, 14.506476, 28.762449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801824, 13.929485, 28.365009>,  <12.167821, 13.837614, 28.950499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801824, 13.929485, 28.365009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031189, 14.255121, 28.328230>,  <12.168808, 14.450503, 28.306162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031189, 14.255121, 28.328230>,  <11.801824, 13.929485, 28.365009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.031189, 14.255121, 28.328230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131914, -0.202512, -0.970354,
		-0.808577, 0.544284, -0.223513,
		0.573413, 0.814091, -0.091948,
		12.203213, 14.499349, 28.300646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699082, 14.164134, 27.717978>,  <11.801824, 13.929485, 28.365009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699082, 14.164134, 27.717978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034114, 14.348186, 27.835785>,  <12.235133, 14.458618, 27.906469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034114, 14.348186, 27.835785>,  <11.699082, 14.164134, 27.717978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034114, 14.348186, 27.835785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357838, -0.054713, -0.932180,
		-0.412811, 0.886164, -0.210479,
		0.837579, 0.460131, 0.294517,
		12.285388, 14.486226, 27.924139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.676478, 14.805750, 27.368904>,  <11.699082, 14.164134, 27.717978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.676478, 14.805750, 27.368904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036462, 14.664258, 27.470844>,  <12.252452, 14.579363, 27.532009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.036462, 14.664258, 27.470844>,  <11.676478, 14.805750, 27.368904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.036462, 14.664258, 27.470844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297225, 0.070146, -0.952227,
		0.318954, 0.932714, 0.168266,
		0.899959, -0.353729, 0.254852,
		12.306450, 14.558139, 27.547300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.174495, 15.166870, 27.061306>,  <11.676478, 14.805750, 27.368904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.174495, 15.166870, 27.061306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339480, 14.808664, 27.128153>,  <12.438472, 14.593740, 27.168261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339480, 14.808664, 27.128153>,  <12.174495, 15.166870, 27.061306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339480, 14.808664, 27.128153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356544, -0.010119, -0.934224,
		0.838302, 0.444918, 0.315116,
		0.412464, -0.895514, 0.167116,
		12.463220, 14.540010, 27.178288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825895, 15.140720, 26.699806>,  <12.174495, 15.166870, 27.061306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825895, 15.140720, 26.699806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794675, 14.751161, 26.785063>,  <12.775943, 14.517425, 26.836216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794675, 14.751161, 26.785063>,  <12.825895, 15.140720, 26.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794675, 14.751161, 26.785063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580469, -0.218210, -0.784500,
		0.810533, 0.062491, 0.582349,
		-0.078050, -0.973899, 0.213140,
		12.771260, 14.458991, 26.849005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526652, 14.808626, 26.597473>,  <12.825895, 15.140720, 26.699806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526652, 14.808626, 26.597473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258399, 14.512533, 26.578272>,  <13.097446, 14.334877, 26.566751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258399, 14.512533, 26.578272>,  <13.526652, 14.808626, 26.597473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258399, 14.512533, 26.578272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427207, -0.332518, -0.840789,
		0.606419, -0.584368, 0.539231,
		-0.670634, -0.740234, -0.048001,
		13.057209, 14.290463, 26.563871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985641, 14.287715, 26.410746>,  <13.526652, 14.808626, 26.597473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985641, 14.287715, 26.410746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615204, 14.153951, 26.340864>,  <13.392941, 14.073692, 26.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615204, 14.153951, 26.340864>,  <13.985641, 14.287715, 26.410746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615204, 14.153951, 26.340864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315252, -0.431446, -0.845264,
		0.207291, -0.837868, 0.504982,
		-0.926092, -0.334412, -0.174705,
		13.337377, 14.053627, 26.288452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025451, 13.675347, 26.066547>,  <13.985641, 14.287715, 26.410746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025451, 13.675347, 26.066547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641719, 13.738259, 25.972780>,  <13.411480, 13.776007, 25.916521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641719, 13.738259, 25.972780>,  <14.025451, 13.675347, 26.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641719, 13.738259, 25.972780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126096, -0.504201, -0.854331,
		-0.252562, -0.849143, 0.463862,
		-0.959329, 0.157280, -0.234416,
		13.353920, 13.785443, 25.902456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.860934, 13.068652, 25.746960>,  <14.025451, 13.675347, 26.066547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.860934, 13.068652, 25.746960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608700, 13.344629, 25.604782>,  <13.457359, 13.510216, 25.519476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608700, 13.344629, 25.604782>,  <13.860934, 13.068652, 25.746960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608700, 13.344629, 25.604782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123140, -0.363232, -0.923525,
		-0.766288, -0.626132, 0.144090,
		-0.630587, 0.689943, -0.355442,
		13.419523, 13.551612, 25.498150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440025, 12.736348, 25.346897>,  <13.860934, 13.068652, 25.746960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440025, 12.736348, 25.346897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367579, 13.110861, 25.226515>,  <13.324112, 13.335568, 25.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367579, 13.110861, 25.226515>,  <13.440025, 12.736348, 25.346897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367579, 13.110861, 25.226515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041513, -0.298465, -0.953517,
		-0.982586, -0.185189, 0.015188,
		-0.181114, 0.936282, -0.300955,
		13.313245, 13.391746, 25.136229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938046, 12.632501, 24.827053>,  <13.440025, 12.736348, 25.346897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938046, 12.632501, 24.827053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077585, 13.002826, 24.768843>,  <13.161309, 13.225020, 24.733917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077585, 13.002826, 24.768843>,  <12.938046, 12.632501, 24.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077585, 13.002826, 24.768843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034062, -0.167701, -0.985249,
		-0.936560, 0.338746, -0.090037,
		0.348849, 0.925812, -0.145524,
		13.182240, 13.280569, 24.725185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853451, 12.685368, 24.182512>,  <12.938046, 12.632501, 24.827053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853451, 12.685368, 24.182512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105534, 12.993200, 24.223660>,  <13.256783, 13.177900, 24.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105534, 12.993200, 24.223660>,  <12.853451, 12.685368, 24.182512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105534, 12.993200, 24.223660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192039, -0.026127, -0.981040,
		-0.752303, 0.638013, -0.164255,
		0.630207, 0.769582, 0.102868,
		13.294596, 13.224075, 24.254520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623565, 13.160518, 23.674561>,  <12.853451, 12.685368, 24.182512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623565, 13.160518, 23.674561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008589, 13.234437, 23.753885>,  <13.239603, 13.278789, 23.801481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008589, 13.234437, 23.753885>,  <12.623565, 13.160518, 23.674561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008589, 13.234437, 23.753885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214689, -0.073073, -0.973945,
		-0.165491, 0.980056, -0.110011,
		0.962560, 0.184797, 0.198314,
		13.297357, 13.289876, 23.813379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854616, 13.755742, 23.210909>,  <12.623565, 13.160518, 23.674561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854616, 13.755742, 23.210909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185007, 13.570077, 23.338856>,  <13.383242, 13.458678, 23.415625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185007, 13.570077, 23.338856>,  <12.854616, 13.755742, 23.210909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185007, 13.570077, 23.338856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365006, 0.007966, -0.930971,
		0.429574, 0.885714, 0.176002,
		0.825976, -0.464163, 0.319869,
		13.432800, 13.430828, 23.434816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320363, 14.130940, 22.763966>,  <12.854616, 13.755742, 23.210909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320363, 14.130940, 22.763966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503080, 13.799610, 22.893713>,  <13.612711, 13.600812, 22.971561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503080, 13.799610, 22.893713>,  <13.320363, 14.130940, 22.763966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503080, 13.799610, 22.893713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383793, -0.145443, -0.911893,
		0.802522, 0.541038, 0.251468,
		0.456794, -0.828326, 0.324368,
		13.640119, 13.551112, 22.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.119956, 14.143394, 22.610601>,  <13.320363, 14.130940, 22.763966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.119956, 14.143394, 22.610601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017004, 13.759664, 22.656992>,  <13.955233, 13.529426, 22.684826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017004, 13.759664, 22.656992>,  <14.119956, 14.143394, 22.610601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.017004, 13.759664, 22.656992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350382, -0.204502, -0.914009,
		0.900549, -0.194612, 0.388765,
		-0.257381, -0.959325, 0.115976,
		13.939790, 13.471866, 22.691784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711030, 13.635966, 22.355087>,  <14.119956, 14.143394, 22.610601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711030, 13.635966, 22.355087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380821, 13.410218, 22.354942>,  <14.182696, 13.274770, 22.354855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380821, 13.410218, 22.354942>,  <14.711030, 13.635966, 22.355087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380821, 13.410218, 22.354942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286279, -0.418193, -0.862067,
		0.486373, -0.711759, 0.506795,
		-0.825522, -0.564370, -0.000364,
		14.133164, 13.240908, 22.354834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992258, 12.905580, 22.070503>,  <14.711030, 13.635966, 22.355087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992258, 12.905580, 22.070503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.593845, 12.937582, 22.054916>,  <14.354797, 12.956783, 22.045565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.593845, 12.937582, 22.054916>,  <14.992258, 12.905580, 22.070503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593845, 12.937582, 22.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005670, -0.379950, -0.924990,
		-0.088810, -0.921541, 0.377989,
		-0.996033, 0.080005, -0.038969,
		14.295035, 12.961584, 22.043226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887239, 12.381350, 21.705751>,  <14.992258, 12.905580, 22.070503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887239, 12.381350, 21.705751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547178, 12.590049, 21.677402>,  <14.343142, 12.715268, 21.660393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547178, 12.590049, 21.677402>,  <14.887239, 12.381350, 21.705751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547178, 12.590049, 21.677402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069916, -0.245264, -0.966932,
		-0.521877, -0.817083, 0.244990,
		-0.850150, 0.521748, -0.070871,
		14.292133, 12.746573, 21.656141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492782, 12.000417, 21.180914>,  <14.887239, 12.381350, 21.705751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492782, 12.000417, 21.180914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323781, 12.362955, 21.178719>,  <14.222381, 12.580478, 21.177401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323781, 12.362955, 21.178719>,  <14.492782, 12.000417, 21.180914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323781, 12.362955, 21.178719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038293, 0.011800, -0.999197,
		-0.905553, -0.422372, -0.039693,
		-0.422501, 0.906346, -0.005488,
		14.197031, 12.634859, 21.177073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065242, 11.942425, 20.691223>,  <14.492782, 12.000417, 21.180914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065242, 11.942425, 20.691223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.107162, 12.339652, 20.712507>,  <14.132315, 12.577989, 20.725277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.107162, 12.339652, 20.712507>,  <14.065242, 11.942425, 20.691223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107162, 12.339652, 20.712507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114802, 0.065228, -0.991245,
		-0.987845, 0.097775, 0.120842,
		0.104801, 0.993069, 0.053210,
		14.138603, 12.637572, 20.728470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618942, 12.213291, 20.170200>,  <14.065242, 11.942425, 20.691223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618942, 12.213291, 20.170200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861369, 12.525664, 20.230635>,  <14.006825, 12.713088, 20.266895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861369, 12.525664, 20.230635>,  <13.618942, 12.213291, 20.170200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861369, 12.525664, 20.230635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159550, 0.066727, -0.984932,
		-0.779247, 0.621041, -0.084157,
		0.606067, 0.780933, 0.151084,
		14.043189, 12.759944, 20.275959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295732, 12.726190, 19.710136>,  <13.618942, 12.213291, 20.170200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295732, 12.726190, 19.710136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680200, 12.818172, 19.771164>,  <13.910880, 12.873363, 19.807781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680200, 12.818172, 19.771164>,  <13.295732, 12.726190, 19.710136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680200, 12.818172, 19.771164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084243, 0.281971, -0.955717,
		-0.262794, 0.931457, 0.251649,
		0.961167, 0.229957, 0.152569,
		13.968550, 12.887159, 19.816935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.381480, 13.389400, 19.664488>,  <13.295732, 12.726190, 19.710136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.381480, 13.389400, 19.664488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746757, 13.242547, 19.593725>,  <13.965922, 13.154435, 19.551268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746757, 13.242547, 19.593725>,  <13.381480, 13.389400, 19.664488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.746757, 13.242547, 19.593725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002646, 0.428741, -0.903424,
		0.407525, 0.825466, 0.390550,
		0.913190, -0.367134, -0.176907,
		14.020714, 13.132406, 19.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.609817, 13.902070, 19.372517>,  <13.381480, 13.389400, 19.664488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.609817, 13.902070, 19.372517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878691, 13.618671, 19.286543>,  <14.040015, 13.448632, 19.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878691, 13.618671, 19.286543>,  <13.609817, 13.902070, 19.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878691, 13.618671, 19.286543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268604, 0.503885, -0.820946,
		0.689940, 0.494096, 0.529010,
		0.672186, -0.708497, -0.214935,
		14.080347, 13.406122, 19.222063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166746, 14.236138, 19.013094>,  <13.609817, 13.902070, 19.372517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166746, 14.236138, 19.013094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.272447, 13.862827, 18.915800>,  <14.335867, 13.638841, 18.857424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.272447, 13.862827, 18.915800>,  <14.166746, 14.236138, 19.013094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.272447, 13.862827, 18.915800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198057, 0.299337, -0.933365,
		0.943898, 0.198469, 0.263943,
		0.264252, -0.933278, -0.243235,
		14.351722, 13.582844, 18.842829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876449, 14.217095, 18.715195>,  <14.166746, 14.236138, 19.013094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876449, 14.217095, 18.715195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672090, 13.905092, 18.570658>,  <14.549474, 13.717890, 18.483936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672090, 13.905092, 18.570658>,  <14.876449, 14.217095, 18.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672090, 13.905092, 18.570658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173841, 0.317911, -0.932047,
		0.841880, -0.538998, -0.026822,
		-0.510899, -0.780009, -0.361343,
		14.518820, 13.671089, 18.462255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303385, 13.913442, 18.174339>,  <14.876449, 14.217095, 18.715195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303385, 13.913442, 18.174339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911819, 13.857786, 18.114515>,  <14.676880, 13.824392, 18.078621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911819, 13.857786, 18.114515>,  <15.303385, 13.913442, 18.174339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911819, 13.857786, 18.114515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047304, 0.557837, -0.828602,
		0.198720, -0.818204, -0.539493,
		-0.978914, -0.139139, -0.149557,
		14.618145, 13.816044, 18.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676041, 14.523333, 18.351120>,  <15.303385, 13.913442, 18.174339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676041, 14.523333, 18.351120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987229, 14.768694, 18.296717>,  <16.173943, 14.915911, 18.264074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987229, 14.768694, 18.296717>,  <15.676041, 14.523333, 18.351120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987229, 14.768694, 18.296717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510450, -0.490848, 0.706052,
		0.366336, -0.618712, -0.694977,
		0.777971, 0.613403, -0.136006,
		16.220621, 14.952715, 18.255915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239040, 14.140301, 18.454126>,  <15.676041, 14.523333, 18.351120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239040, 14.140301, 18.454126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.429071, 14.492149, 18.463675>,  <16.543089, 14.703259, 18.469402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.429071, 14.492149, 18.463675>,  <16.239040, 14.140301, 18.454126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429071, 14.492149, 18.463675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624623, -0.356212, 0.694953,
		0.619798, -0.315246, -0.718659,
		0.475076, 0.879621, 0.023870,
		16.571594, 14.756036, 18.470835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077194, 14.037630, 18.426203>,  <16.239040, 14.140301, 18.454126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077194, 14.037630, 18.426203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000195, 14.394382, 18.589909>,  <16.953995, 14.608432, 18.688131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000195, 14.394382, 18.589909>,  <17.077194, 14.037630, 18.426203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000195, 14.394382, 18.589909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694616, -0.170752, 0.698822,
		0.693147, 0.418805, -0.586642,
		-0.192500, 0.891878, 0.409265,
		16.942444, 14.661945, 18.712688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760464, 14.243568, 18.660612>,  <17.077194, 14.037630, 18.426203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760464, 14.243568, 18.660612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480082, 14.428891, 18.877501>,  <17.311852, 14.540085, 19.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480082, 14.428891, 18.877501>,  <17.760464, 14.243568, 18.660612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480082, 14.428891, 18.877501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606478, -0.012841, 0.794997,
		0.375291, 0.886104, -0.271985,
		-0.700958, 0.463308, 0.542222,
		17.269794, 14.567883, 19.040167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129194, 14.658917, 19.041189>,  <17.760464, 14.243568, 18.660612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129194, 14.658917, 19.041189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770725, 14.633625, 19.216862>,  <17.555645, 14.618449, 19.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770725, 14.633625, 19.216862>,  <18.129194, 14.658917, 19.041189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770725, 14.633625, 19.216862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441074, -0.234679, 0.866245,
		0.048292, 0.970014, 0.238202,
		-0.896171, -0.063232, 0.439181,
		17.501875, 14.614655, 19.348616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294844, 14.871919, 19.760698>,  <18.129194, 14.658917, 19.041189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294844, 14.871919, 19.760698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942629, 14.682579, 19.770447>,  <17.731300, 14.568975, 19.776297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942629, 14.682579, 19.770447>,  <18.294844, 14.871919, 19.760698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942629, 14.682579, 19.770447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200009, -0.324460, 0.924512,
		-0.429709, 0.818942, 0.380374,
		-0.880538, -0.473349, 0.024373,
		17.678467, 14.540574, 19.777760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081491, 15.156450, 20.375622>,  <18.294844, 14.871919, 19.760698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081491, 15.156450, 20.375622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.844074, 14.840516, 20.313826>,  <17.701624, 14.650955, 20.276749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.844074, 14.840516, 20.313826>,  <18.081491, 15.156450, 20.375622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.844074, 14.840516, 20.313826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044978, -0.224214, 0.973501,
		-0.803544, 0.570867, 0.168606,
		-0.593543, -0.789835, -0.154489,
		17.666012, 14.603565, 20.267479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457968, 15.319120, 20.572529>,  <18.081491, 15.156450, 20.375622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457968, 15.319120, 20.572529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466331, 14.919229, 20.576614>,  <17.471350, 14.679294, 20.579065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466331, 14.919229, 20.576614>,  <17.457968, 15.319120, 20.572529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466331, 14.919229, 20.576614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307116, 0.003301, 0.951666,
		-0.951442, -0.023035, -0.306964,
		0.020908, -0.999729, 0.010215,
		17.472605, 14.619309, 20.579679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877134, 15.100781, 20.891134>,  <17.457968, 15.319120, 20.572529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877134, 15.100781, 20.891134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111044, 14.777827, 20.922554>,  <17.251390, 14.584055, 20.941406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111044, 14.777827, 20.922554>,  <16.877134, 15.100781, 20.891134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111044, 14.777827, 20.922554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339775, -0.155860, 0.927502,
		-0.736609, -0.569067, -0.365472,
		0.584773, -0.807385, 0.078547,
		17.286476, 14.535612, 20.946117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501631, 14.619661, 21.204861>,  <16.877134, 15.100781, 20.891134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501631, 14.619661, 21.204861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879307, 14.512338, 21.281300>,  <17.105911, 14.447944, 21.327164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.879307, 14.512338, 21.281300>,  <16.501631, 14.619661, 21.204861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879307, 14.512338, 21.281300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208700, -0.038408, 0.977225,
		-0.254860, -0.962566, -0.092261,
		0.944188, -0.268311, 0.191098,
		17.162563, 14.431845, 21.338629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492310, 14.122222, 21.697962>,  <16.501631, 14.619661, 21.204861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492310, 14.122222, 21.697962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.858902, 14.274391, 21.747509>,  <17.078857, 14.365693, 21.777237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.858902, 14.274391, 21.747509>,  <16.492310, 14.122222, 21.697962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858902, 14.274391, 21.747509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163985, 0.074787, 0.983624,
		0.364931, -0.921783, 0.130924,
		0.916479, 0.380424, 0.123866,
		17.133846, 14.388518, 21.784668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635876, 13.791817, 22.333466>,  <16.492310, 14.122222, 21.697962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635876, 13.791817, 22.333466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929411, 14.061621, 22.301178>,  <17.105532, 14.223503, 22.281805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929411, 14.061621, 22.301178>,  <16.635876, 13.791817, 22.333466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929411, 14.061621, 22.301178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052112, 0.174369, 0.983300,
		0.677322, -0.717378, 0.163109,
		0.733839, 0.674511, -0.080720,
		17.149563, 14.263974, 22.276962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142759, 13.572099, 22.696012>,  <16.635876, 13.791817, 22.333466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142759, 13.572099, 22.696012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151041, 13.972008, 22.693949>,  <17.156010, 14.211953, 22.692711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151041, 13.972008, 22.693949>,  <17.142759, 13.572099, 22.696012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151041, 13.972008, 22.693949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064913, 0.006494, 0.997870,
		0.997676, -0.020327, 0.065033,
		0.020706, 0.999772, -0.005159,
		17.157253, 14.271939, 22.692400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402205, 13.766740, 23.254639>,  <17.142759, 13.572099, 22.696012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402205, 13.766740, 23.254639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.281401, 14.140590, 23.179520>,  <17.208920, 14.364900, 23.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.281401, 14.140590, 23.179520>,  <17.402205, 13.766740, 23.254639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281401, 14.140590, 23.179520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186927, 0.135112, 0.973038,
		0.934799, 0.328970, 0.133902,
		-0.302008, 0.934625, -0.187795,
		17.190798, 14.420978, 23.123180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795752, 14.244723, 23.692406>,  <17.402205, 13.766740, 23.254639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795752, 14.244723, 23.692406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440504, 14.397596, 23.590284>,  <17.227356, 14.489321, 23.529013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440504, 14.397596, 23.590284>,  <17.795752, 14.244723, 23.692406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.440504, 14.397596, 23.590284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138399, 0.307313, 0.941490,
		0.438280, 0.871490, -0.220038,
		-0.888120, 0.382183, -0.255302,
		17.174068, 14.512251, 23.513693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753429, 14.748018, 24.185295>,  <17.795752, 14.244723, 23.692406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753429, 14.748018, 24.185295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380911, 14.766052, 24.040710>,  <17.157400, 14.776873, 23.953959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380911, 14.766052, 24.040710>,  <17.753429, 14.748018, 24.185295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380911, 14.766052, 24.040710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333238, 0.295293, 0.895408,
		0.147106, 0.954342, -0.259981,
		-0.931296, 0.045085, -0.361463,
		17.101522, 14.779577, 23.932272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462969, 15.347595, 24.337841>,  <17.753429, 14.748018, 24.185295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462969, 15.347595, 24.337841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139887, 15.117308, 24.286987>,  <16.946037, 14.979136, 24.256475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139887, 15.117308, 24.286987>,  <17.462969, 15.347595, 24.337841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139887, 15.117308, 24.286987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430251, 0.428118, 0.794732,
		-0.403113, 0.696608, -0.593496,
		-0.807703, -0.575719, -0.127136,
		16.897575, 14.944592, 24.248846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901804, 15.779771, 24.350210>,  <17.462969, 15.347595, 24.337841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901804, 15.779771, 24.350210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734777, 15.422812, 24.418642>,  <16.634562, 15.208637, 24.459702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734777, 15.422812, 24.418642>,  <16.901804, 15.779771, 24.350210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734777, 15.422812, 24.418642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526655, 0.391122, 0.754757,
		-0.740455, 0.225061, -0.633304,
		-0.417566, -0.892396, 0.171079,
		16.609509, 15.155093, 24.469965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226637, 15.956697, 24.538057>,  <16.901804, 15.779771, 24.350210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226637, 15.956697, 24.538057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233047, 15.570416, 24.641718>,  <16.236895, 15.338648, 24.703915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233047, 15.570416, 24.641718>,  <16.226637, 15.956697, 24.538057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233047, 15.570416, 24.641718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579262, 0.202291, 0.789641,
		-0.814984, -0.162773, -0.556154,
		0.016027, -0.965704, 0.259152,
		16.237856, 15.280705, 24.719463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547632, 15.766823, 24.615131>,  <16.226637, 15.956697, 24.538057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547632, 15.766823, 24.615131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773425, 15.514273, 24.827818>,  <15.908901, 15.362742, 24.955431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773425, 15.514273, 24.827818>,  <15.547632, 15.766823, 24.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773425, 15.514273, 24.827818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570181, 0.167538, 0.804254,
		-0.596869, -0.757164, -0.265426,
		0.564483, -0.631375, 0.531718,
		15.942770, 15.324861, 24.987333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073335, 15.278656, 24.848349>,  <15.547632, 15.766823, 24.615131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073335, 15.278656, 24.848349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392259, 15.238649, 25.086439>,  <15.583612, 15.214645, 25.229294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392259, 15.238649, 25.086439>,  <15.073335, 15.278656, 24.848349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392259, 15.238649, 25.086439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593703, 0.047643, 0.803273,
		-0.108700, -0.993844, -0.021395,
		0.797309, -0.100018, 0.595227,
		15.631452, 15.208645, 25.265007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823049, 14.933312, 25.429005>,  <15.073335, 15.278656, 24.848349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823049, 14.933312, 25.429005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167109, 15.095737, 25.552458>,  <15.373545, 15.193192, 25.626530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167109, 15.095737, 25.552458>,  <14.823049, 14.933312, 25.429005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167109, 15.095737, 25.552458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425407, 0.237344, 0.873325,
		0.281379, -0.882482, 0.376896,
		0.860148, 0.406070, 0.308630,
		15.425154, 15.217556, 25.645048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857386, 14.767850, 26.172039>,  <14.823049, 14.933312, 25.429005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857386, 14.767850, 26.172039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.097667, 15.084699, 26.128775>,  <15.241836, 15.274808, 26.102816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.097667, 15.084699, 26.128775>,  <14.857386, 14.767850, 26.172039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.097667, 15.084699, 26.128775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379039, 0.401302, 0.833838,
		0.703908, -0.459891, 0.541308,
		0.600703, 0.792122, -0.108163,
		15.277878, 15.322335, 26.096325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198278, 14.778001, 26.766621>,  <14.857386, 14.767850, 26.172039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198278, 14.778001, 26.766621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231042, 15.152623, 26.630295>,  <15.250700, 15.377397, 26.548498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231042, 15.152623, 26.630295>,  <15.198278, 14.778001, 26.766621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231042, 15.152623, 26.630295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433683, 0.341385, 0.833892,
		0.897335, 0.079503, 0.434131,
		0.081909, 0.936555, -0.340816,
		15.255614, 15.433590, 26.528049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614523, 15.037884, 27.224215>,  <15.198278, 14.778001, 26.766621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614523, 15.037884, 27.224215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410118, 15.328192, 27.039986>,  <15.287476, 15.502377, 26.929449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410118, 15.328192, 27.039986>,  <15.614523, 15.037884, 27.224215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410118, 15.328192, 27.039986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187704, 0.428665, 0.883750,
		0.838830, 0.538057, -0.082822,
		-0.511011, 0.725769, -0.460572,
		15.256815, 15.545922, 26.901814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724195, 15.564289, 27.619938>,  <15.614523, 15.037884, 27.224215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724195, 15.564289, 27.619938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382230, 15.671518, 27.442282>,  <15.177051, 15.735856, 27.335688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382230, 15.671518, 27.442282>,  <15.724195, 15.564289, 27.619938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382230, 15.671518, 27.442282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293400, 0.456210, 0.840112,
		0.427834, 0.848533, -0.311367,
		-0.854912, 0.268073, -0.444142,
		15.125756, 15.751941, 27.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667977, 16.235334, 27.728159>,  <15.724195, 15.564289, 27.619938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667977, 16.235334, 27.728159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303432, 16.090181, 27.650457>,  <15.084705, 16.003090, 27.603836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303432, 16.090181, 27.650457>,  <15.667977, 16.235334, 27.728159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303432, 16.090181, 27.650457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323505, 0.339716, 0.883141,
		-0.254485, 0.867703, -0.426999,
		-0.911363, -0.362882, -0.194254,
		15.030024, 15.981317, 27.592182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142500, 16.905945, 27.776102>,  <15.667977, 16.235334, 27.728159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142500, 16.905945, 27.776102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940834, 16.566116, 27.838125>,  <14.819835, 16.362219, 27.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940834, 16.566116, 27.838125>,  <15.142500, 16.905945, 27.776102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940834, 16.566116, 27.838125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389867, 0.384112, 0.836936,
		-0.770599, 0.361500, -0.524876,
		-0.504164, -0.849573, 0.155059,
		14.789585, 16.311245, 27.884644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437222, 17.090343, 27.975370>,  <15.142500, 16.905945, 27.776102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437222, 17.090343, 27.975370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491755, 16.718100, 28.111242>,  <14.524473, 16.494753, 28.192766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491755, 16.718100, 28.111242>,  <14.437222, 17.090343, 27.975370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491755, 16.718100, 28.111242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382278, 0.266907, 0.884661,
		-0.913935, -0.250457, -0.319364,
		0.136330, -0.930608, 0.339680,
		14.532654, 16.438917, 28.213146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784920, 16.946917, 28.422384>,  <14.437222, 17.090343, 27.975370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784920, 16.946917, 28.422384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.064875, 16.676901, 28.515749>,  <14.232847, 16.514893, 28.571768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.064875, 16.676901, 28.515749>,  <13.784920, 16.946917, 28.422384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.064875, 16.676901, 28.515749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217206, 0.110162, 0.969890,
		-0.680426, -0.729511, -0.069521,
		0.699887, -0.675039, 0.233411,
		14.274841, 16.474390, 28.585772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471627, 16.612680, 28.894419>,  <13.784920, 16.946917, 28.422384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471627, 16.612680, 28.894419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858151, 16.530741, 28.956751>,  <14.090066, 16.481577, 28.994150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858151, 16.530741, 28.956751>,  <13.471627, 16.612680, 28.894419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858151, 16.530741, 28.956751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122211, 0.167657, 0.978241,
		-0.226518, -0.964328, 0.136974,
		0.966310, -0.204849, 0.155829,
		14.148045, 16.469286, 29.003500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480149, 16.130659, 29.397371>,  <13.471627, 16.612680, 28.894419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480149, 16.130659, 29.397371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830459, 16.321402, 29.427383>,  <14.040645, 16.435846, 29.445391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830459, 16.321402, 29.427383>,  <13.480149, 16.130659, 29.397371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830459, 16.321402, 29.427383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121125, 0.066623, 0.990399,
		0.467278, -0.876453, 0.116106,
		0.875774, 0.476855, 0.075029,
		14.093191, 16.464458, 29.449892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734197, 15.914715, 30.056471>,  <13.480149, 16.130659, 29.397371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734197, 15.914715, 30.056471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.956633, 16.237877, 29.978439>,  <14.090094, 16.431774, 29.931622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.956633, 16.237877, 29.978439>,  <13.734197, 15.914715, 30.056471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.956633, 16.237877, 29.978439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014676, 0.225134, 0.974217,
		0.830993, -0.544614, 0.113338,
		0.556089, 0.807904, -0.195078,
		14.123459, 16.480247, 29.919916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138456, 15.913277, 30.616413>,  <13.734197, 15.914715, 30.056471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138456, 15.913277, 30.616413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177850, 16.285555, 30.475498>,  <14.201486, 16.508923, 30.390949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177850, 16.285555, 30.475498>,  <14.138456, 15.913277, 30.616413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177850, 16.285555, 30.475498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168633, 0.333282, 0.927624,
		0.980747, -0.150763, -0.124123,
		0.098483, 0.930695, -0.352289,
		14.207395, 16.564764, 30.369812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635446, 16.315266, 30.984074>,  <14.138456, 15.913277, 30.616413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635446, 16.315266, 30.984074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437490, 16.617874, 30.813070>,  <14.318717, 16.799438, 30.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.437490, 16.617874, 30.813070>,  <14.635446, 16.315266, 30.984074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437490, 16.617874, 30.813070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102508, 0.539369, 0.835807,
		0.862889, 0.369808, -0.344476,
		-0.494888, 0.756521, -0.427507,
		14.289024, 16.844830, 30.684818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023339, 16.883863, 31.135834>,  <14.635446, 16.315266, 30.984074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023339, 16.883863, 31.135834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659493, 17.027731, 31.052658>,  <14.441186, 17.114052, 31.002752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659493, 17.027731, 31.052658>,  <15.023339, 16.883863, 31.135834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659493, 17.027731, 31.052658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009166, 0.517769, 0.855471,
		0.415350, 0.776244, -0.474267,
		-0.909616, 0.359667, -0.207940,
		14.386609, 17.135632, 30.990276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915066, 17.660635, 31.029844>,  <15.023339, 16.883863, 31.135834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915066, 17.660635, 31.029844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634491, 17.466253, 31.238396>,  <14.466146, 17.349625, 31.363527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634491, 17.466253, 31.238396>,  <14.915066, 17.660635, 31.029844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634491, 17.466253, 31.238396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145575, 0.618418, 0.772248,
		-0.697707, 0.617583, -0.363038,
		-0.701436, -0.485953, 0.521380,
		14.424060, 17.320467, 31.394810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479150, 17.946507, 31.518368>,  <14.915066, 17.660635, 31.029844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479150, 17.946507, 31.518368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528979, 18.327139, 31.630777>,  <14.558877, 18.555519, 31.698223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528979, 18.327139, 31.630777>,  <14.479150, 17.946507, 31.518368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528979, 18.327139, 31.630777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439110, 0.201110, -0.875636,
		-0.889755, 0.232480, -0.392796,
		0.124573, 0.951582, 0.281023,
		14.566351, 18.612614, 31.715084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213163, 18.364904, 31.087542>,  <14.479150, 17.946507, 31.518368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213163, 18.364904, 31.087542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512971, 18.587315, 31.231241>,  <14.692855, 18.720760, 31.317461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512971, 18.587315, 31.231241>,  <14.213163, 18.364904, 31.087542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512971, 18.587315, 31.231241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386490, 0.073040, -0.919397,
		-0.537446, 0.827951, -0.160153,
		0.749518, 0.556024, 0.359250,
		14.737826, 18.754122, 31.339016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206552, 18.953413, 30.714010>,  <14.213163, 18.364904, 31.087542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206552, 18.953413, 30.714010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576195, 18.963415, 30.866537>,  <14.797980, 18.969416, 30.958054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.576195, 18.963415, 30.866537>,  <14.206552, 18.953413, 30.714010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.576195, 18.963415, 30.866537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366047, 0.228559, -0.902092,
		-0.109710, 0.973209, 0.202060,
		0.924107, 0.025005, 0.381315,
		14.853427, 18.970917, 30.980932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561313, 19.696003, 30.599825>,  <14.206552, 18.953413, 30.714010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561313, 19.696003, 30.599825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845851, 19.422588, 30.665266>,  <15.016574, 19.258539, 30.704531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.845851, 19.422588, 30.665266>,  <14.561313, 19.696003, 30.599825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845851, 19.422588, 30.665266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487654, 0.312371, -0.815241,
		0.506142, 0.659700, 0.555532,
		0.711347, -0.683536, 0.163601,
		15.059255, 19.217527, 30.714346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183238, 20.013992, 30.573984>,  <14.561313, 19.696003, 30.599825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183238, 20.013992, 30.573984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308333, 19.649321, 30.467373>,  <15.383390, 19.430517, 30.403406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.308333, 19.649321, 30.467373>,  <15.183238, 20.013992, 30.573984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.308333, 19.649321, 30.467373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512990, 0.398279, -0.760405,
		0.799397, 0.101082, 0.592239,
		0.312740, -0.911678, -0.266529,
		15.402155, 19.375816, 30.387415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818165, 20.115984, 30.338364>,  <15.183238, 20.013992, 30.573984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818165, 20.115984, 30.338364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763684, 19.754156, 30.176769>,  <15.730996, 19.537060, 30.079813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763684, 19.754156, 30.176769>,  <15.818165, 20.115984, 30.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763684, 19.754156, 30.176769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520424, 0.281657, -0.806119,
		0.842976, -0.320039, 0.432397,
		-0.136202, -0.904569, -0.403986,
		15.722824, 19.482786, 30.055574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412249, 19.851616, 30.050135>,  <15.818165, 20.115984, 30.338364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412249, 19.851616, 30.050135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130369, 19.651495, 29.848900>,  <15.961242, 19.531422, 29.728159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130369, 19.651495, 29.848900>,  <16.412249, 19.851616, 30.050135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130369, 19.651495, 29.848900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466776, 0.207099, -0.859785,
		0.534342, -0.840719, 0.087587,
		-0.704698, -0.500302, -0.503089,
		15.918960, 19.501404, 29.697973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758224, 19.358530, 29.618196>,  <16.412249, 19.851616, 30.050135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758224, 19.358530, 29.618196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400999, 19.338615, 29.439327>,  <16.186665, 19.326666, 29.332006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.400999, 19.338615, 29.439327>,  <16.758224, 19.358530, 29.618196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400999, 19.338615, 29.439327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449479, -0.054024, -0.891656,
		0.020233, -0.997298, 0.070624,
		-0.893062, -0.049785, -0.447171,
		16.133080, 19.323679, 29.305176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862089, 18.877941, 29.126875>,  <16.758224, 19.358530, 29.618196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862089, 18.877941, 29.126875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535563, 19.074131, 29.004852>,  <16.339645, 19.191845, 28.931639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535563, 19.074131, 29.004852>,  <16.862089, 18.877941, 29.126875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535563, 19.074131, 29.004852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312309, -0.069483, -0.947436,
		-0.485889, -0.868682, -0.096459,
		-0.816318, 0.490474, -0.305058,
		16.290667, 19.221273, 28.913336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491447, 18.454477, 28.549519>,  <16.862089, 18.877941, 29.126875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491447, 18.454477, 28.549519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361120, 18.831474, 28.519709>,  <16.282925, 19.057673, 28.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361120, 18.831474, 28.519709>,  <16.491447, 18.454477, 28.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361120, 18.831474, 28.519709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291899, 0.025309, -0.956114,
		-0.899243, -0.333272, -0.283358,
		-0.325818, 0.942491, -0.074523,
		16.263374, 19.114222, 28.497353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099915, 18.477600, 27.941864>,  <16.491447, 18.454477, 28.549519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099915, 18.477600, 27.941864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187210, 18.863693, 27.999414>,  <16.239588, 19.095348, 28.033945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187210, 18.863693, 27.999414>,  <16.099915, 18.477600, 27.941864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187210, 18.863693, 27.999414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258666, 0.084945, -0.962225,
		-0.940990, 0.247213, -0.231134,
		0.218241, 0.965231, 0.143878,
		16.252682, 19.153263, 28.042578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873136, 18.718966, 27.437445>,  <16.099915, 18.477600, 27.941864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873136, 18.718966, 27.437445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122887, 19.019577, 27.522633>,  <16.272738, 19.199944, 27.573746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122887, 19.019577, 27.522633>,  <15.873136, 18.718966, 27.437445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122887, 19.019577, 27.522633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278405, 0.040636, -0.959604,
		-0.729824, 0.658447, -0.183857,
		0.624377, 0.751529, 0.212972,
		16.310200, 19.245035, 27.586525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611133, 19.307611, 26.955694>,  <15.873136, 18.718966, 27.437445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611133, 19.307611, 26.955694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994188, 19.281265, 27.067829>,  <16.224022, 19.265457, 27.135111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994188, 19.281265, 27.067829>,  <15.611133, 19.307611, 26.955694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994188, 19.281265, 27.067829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276580, -0.060722, -0.959071,
		0.080192, 0.995979, -0.039932,
		0.957639, -0.065866, 0.280337,
		16.281481, 19.261505, 27.151930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961433, 19.269657, 26.361345>,  <15.611133, 19.307611, 26.955694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961433, 19.269657, 26.361345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282803, 19.173948, 26.579432>,  <16.475624, 19.116522, 26.710283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282803, 19.173948, 26.579432>,  <15.961433, 19.269657, 26.361345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282803, 19.173948, 26.579432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474956, -0.294669, -0.829208,
		0.359066, 0.925158, -0.123100,
		0.803423, -0.239273, 0.545215,
		16.523830, 19.102167, 26.742996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488396, 19.442352, 25.946707>,  <15.961433, 19.269657, 26.361345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488396, 19.442352, 25.946707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643332, 19.199955, 26.224625>,  <16.736292, 19.054518, 26.391376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643332, 19.199955, 26.224625>,  <16.488396, 19.442352, 25.946707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643332, 19.199955, 26.224625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608354, -0.398263, -0.686507,
		0.692730, 0.688593, 0.214395,
		0.387339, -0.605992, 0.694797,
		16.759533, 19.018158, 26.433064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185095, 19.421680, 25.848583>,  <16.488396, 19.442352, 25.946707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185095, 19.421680, 25.848583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130308, 19.068945, 26.029070>,  <17.097435, 18.857304, 26.137362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130308, 19.068945, 26.029070>,  <17.185095, 19.421680, 25.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130308, 19.068945, 26.029070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737710, -0.394799, -0.547647,
		0.661077, 0.257857, 0.704618,
		-0.136968, -0.881841, 0.451217,
		17.089218, 18.804392, 26.164434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705393, 19.064150, 25.495056>,  <17.185095, 19.421680, 25.848583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705393, 19.064150, 25.495056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505835, 18.770790, 25.679764>,  <17.386101, 18.594774, 25.790588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505835, 18.770790, 25.679764>,  <17.705393, 19.064150, 25.495056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505835, 18.770790, 25.679764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392514, -0.666243, -0.634077,
		0.772682, -0.135086, 0.620254,
		-0.498895, -0.733398, 0.461770,
		17.356167, 18.550770, 25.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130053, 18.557837, 25.635386>,  <17.705393, 19.064150, 25.495056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130053, 18.557837, 25.635386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768187, 18.387707, 25.624977>,  <17.551067, 18.285629, 25.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.768187, 18.387707, 25.624977>,  <18.130053, 18.557837, 25.635386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768187, 18.387707, 25.624977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288289, -0.565936, -0.772402,
		0.313796, -0.706268, 0.634600,
		-0.904666, -0.425325, -0.026021,
		17.496786, 18.260109, 25.617170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327507, 17.817438, 25.521431>,  <18.130053, 18.557837, 25.635386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.327507, 17.817438, 25.521431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931902, 17.843590, 25.468391>,  <17.694540, 17.859280, 25.436567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931902, 17.843590, 25.468391>,  <18.327507, 17.817438, 25.521431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.931902, 17.843590, 25.468391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062500, -0.627911, -0.775772,
		-0.133978, -0.775534, 0.616925,
		-0.989012, 0.065378, -0.132597,
		17.635199, 17.863203, 25.428612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103771, 17.153160, 25.530886>,  <18.327507, 17.817438, 25.521431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103771, 17.153160, 25.530886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858131, 17.399134, 25.333000>,  <17.710749, 17.546719, 25.214270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858131, 17.399134, 25.333000>,  <18.103771, 17.153160, 25.530886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858131, 17.399134, 25.333000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062171, -0.587189, -0.807059,
		-0.786778, -0.526370, 0.322360,
		-0.614097, 0.614934, -0.494712,
		17.673903, 17.583614, 25.184587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668736, 16.696213, 25.256157>,  <18.103771, 17.153160, 25.530886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668736, 16.696213, 25.256157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628687, 17.022272, 25.027943>,  <17.604658, 17.217907, 24.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628687, 17.022272, 25.027943>,  <17.668736, 16.696213, 25.256157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628687, 17.022272, 25.027943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003301, -0.573686, -0.819068,
		-0.994969, -0.080125, 0.060130,
		-0.100124, 0.815147, -0.570536,
		17.598650, 17.266815, 24.856781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137924, 16.561840, 24.732323>,  <17.668736, 16.696213, 25.256157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137924, 16.561840, 24.732323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386580, 16.842251, 24.592537>,  <17.535772, 17.010498, 24.508665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386580, 16.842251, 24.592537>,  <17.137924, 16.561840, 24.732323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386580, 16.842251, 24.592537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020114, -0.431709, -0.901789,
		-0.783044, 0.567618, -0.254267,
		0.621641, 0.701026, -0.349464,
		17.573072, 17.052559, 24.487698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182095, 16.502218, 23.988661>,  <17.137924, 16.561840, 24.732323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182095, 16.502218, 23.988661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442368, 16.805912, 23.983362>,  <17.598532, 16.988129, 23.980183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442368, 16.805912, 23.983362>,  <17.182095, 16.502218, 23.988661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442368, 16.805912, 23.983362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322379, -0.292000, -0.900449,
		-0.687519, 0.581637, -0.434760,
		0.650684, 0.759233, -0.013248,
		17.637573, 17.033682, 23.979387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060877, 16.850014, 23.377180>,  <17.182095, 16.502218, 23.988661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060877, 16.850014, 23.377180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444725, 16.914713, 23.469238>,  <17.675034, 16.953531, 23.524473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444725, 16.914713, 23.469238>,  <17.060877, 16.850014, 23.377180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444725, 16.914713, 23.469238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253118, -0.139561, -0.957316,
		-0.122722, 0.976914, -0.174867,
		0.959620, 0.161746, 0.230147,
		17.732611, 16.963236, 23.538282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351217, 17.314838, 22.863499>,  <17.060877, 16.850014, 23.377180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351217, 17.314838, 22.863499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670460, 17.134813, 23.023733>,  <17.862005, 17.026798, 23.119875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670460, 17.134813, 23.023733>,  <17.351217, 17.314838, 22.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670460, 17.134813, 23.023733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382579, -0.135083, -0.913995,
		0.465466, 0.882722, 0.064373,
		0.798107, -0.450061, 0.400587,
		17.909891, 16.999796, 23.143909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985836, 17.567854, 22.527046>,  <17.351217, 17.314838, 22.863499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985836, 17.567854, 22.527046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098116, 17.222092, 22.693903>,  <18.165483, 17.014633, 22.794018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098116, 17.222092, 22.693903>,  <17.985836, 17.567854, 22.527046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098116, 17.222092, 22.693903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500498, -0.239021, -0.832088,
		0.818969, 0.442346, 0.365541,
		0.280699, -0.864407, 0.417144,
		18.182325, 16.962770, 22.819046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.664171, 17.480286, 22.250324>,  <17.985836, 17.567854, 22.527046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.664171, 17.480286, 22.250324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535070, 17.123060, 22.375715>,  <18.457611, 16.908724, 22.450949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535070, 17.123060, 22.375715>,  <18.664171, 17.480286, 22.250324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535070, 17.123060, 22.375715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327392, -0.416095, -0.848339,
		0.888058, -0.171172, 0.426677,
		-0.322750, -0.893065, 0.313476,
		18.438246, 16.855141, 22.469759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256020, 17.078875, 22.354675>,  <18.664171, 17.480286, 22.250324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256020, 17.078875, 22.354675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948168, 16.830879, 22.293638>,  <18.763456, 16.682081, 22.257015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948168, 16.830879, 22.293638>,  <19.256020, 17.078875, 22.354675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948168, 16.830879, 22.293638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500567, -0.437531, -0.746993,
		0.396365, -0.651290, 0.647083,
		-0.769628, -0.619991, -0.152592,
		18.717279, 16.644882, 22.247860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503904, 16.346846, 22.411722>,  <19.256020, 17.078875, 22.354675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503904, 16.346846, 22.411722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174095, 16.353922, 22.185501>,  <18.976210, 16.358168, 22.049768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174095, 16.353922, 22.185501>,  <19.503904, 16.346846, 22.411722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174095, 16.353922, 22.185501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513086, -0.398016, -0.760478,
		-0.238552, -0.917208, 0.319096,
		-0.824522, 0.017689, -0.565554,
		18.926739, 16.359228, 22.015835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478678, 15.731101, 22.094839>,  <19.503904, 16.346846, 22.411722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478678, 15.731101, 22.094839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212887, 15.921534, 21.864424>,  <19.053413, 16.035793, 21.726175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212887, 15.921534, 21.864424>,  <19.478678, 15.731101, 22.094839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212887, 15.921534, 21.864424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480783, -0.317775, -0.817231,
		-0.572119, -0.819978, -0.017738,
		-0.664475, 0.476082, -0.576037,
		19.013544, 16.064358, 21.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422192, 15.320580, 21.449301>,  <19.478678, 15.731101, 22.094839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422192, 15.320580, 21.449301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249130, 15.668001, 21.352619>,  <19.145292, 15.876454, 21.294611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249130, 15.668001, 21.352619>,  <19.422192, 15.320580, 21.449301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249130, 15.668001, 21.352619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451805, -0.023119, -0.891817,
		-0.780180, -0.495052, -0.382415,
		-0.432655, 0.868555, -0.241704,
		19.119333, 15.928568, 21.280107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063648, 15.288161, 20.751207>,  <19.422192, 15.320580, 21.449301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063648, 15.288161, 20.751207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150942, 15.670212, 20.831314>,  <19.203318, 15.899443, 20.879377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150942, 15.670212, 20.831314>,  <19.063648, 15.288161, 20.751207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150942, 15.670212, 20.831314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197915, 0.157632, -0.967461,
		-0.955617, 0.250768, -0.154634,
		0.218233, 0.955127, 0.200266,
		19.216412, 15.956750, 20.891394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755079, 15.473770, 20.215017>,  <19.063648, 15.288161, 20.751207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755079, 15.473770, 20.215017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976902, 15.780984, 20.343138>,  <19.109995, 15.965312, 20.420010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976902, 15.780984, 20.343138>,  <18.755079, 15.473770, 20.215017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976902, 15.780984, 20.343138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052740, 0.351697, -0.934627,
		-0.830474, 0.535195, 0.154529,
		0.554555, 0.768034, 0.320301,
		19.143269, 16.011395, 20.439228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381929, 16.069521, 19.960402>,  <18.755079, 15.473770, 20.215017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381929, 16.069521, 19.960402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.762424, 16.181330, 20.012581>,  <18.990721, 16.248415, 20.043888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.762424, 16.181330, 20.012581>,  <18.381929, 16.069521, 19.960402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762424, 16.181330, 20.012581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076974, 0.194417, -0.977894,
		-0.298702, 0.940250, 0.163421,
		0.951237, 0.279520, 0.130447,
		19.047796, 16.265186, 20.051716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467497, 16.580650, 19.544579>,  <18.381929, 16.069521, 19.960402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467497, 16.580650, 19.544579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850182, 16.507767, 19.635357>,  <19.079792, 16.464037, 19.689825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850182, 16.507767, 19.635357>,  <18.467497, 16.580650, 19.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850182, 16.507767, 19.635357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284395, 0.419565, -0.862024,
		0.061851, 0.889249, 0.453222,
		0.956710, -0.182211, 0.226947,
		19.137194, 16.453104, 19.703442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853029, 17.167810, 19.277035>,  <18.467497, 16.580650, 19.544579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853029, 17.167810, 19.277035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109978, 16.861265, 19.274353>,  <19.264147, 16.677338, 19.272743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.109978, 16.861265, 19.274353>,  <18.853029, 17.167810, 19.277035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109978, 16.861265, 19.274353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380769, 0.326734, -0.865021,
		0.665111, 0.553112, 0.501692,
		0.642373, -0.766363, -0.006706,
		19.302691, 16.631357, 19.272341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339628, 17.418074, 18.885469>,  <18.853029, 17.167810, 19.277035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339628, 17.418074, 18.885469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478497, 17.043194, 18.898914>,  <19.561817, 16.818266, 18.906981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.478497, 17.043194, 18.898914>,  <19.339628, 17.418074, 18.885469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.478497, 17.043194, 18.898914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415741, 0.121681, -0.901307,
		0.840614, 0.326880, 0.431876,
		0.347170, -0.937200, 0.033610,
		19.582647, 16.762033, 18.908997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098034, 17.387100, 18.734821>,  <19.339628, 17.418074, 18.885469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098034, 17.387100, 18.734821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958145, 17.028557, 18.625839>,  <19.874212, 16.813431, 18.560450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958145, 17.028557, 18.625839>,  <20.098034, 17.387100, 18.734821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958145, 17.028557, 18.625839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477361, 0.079740, -0.875082,
		0.806114, -0.436097, 0.400000,
		-0.349724, -0.896360, -0.272455,
		19.853228, 16.759649, 18.544102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713203, 16.924261, 18.488951>,  <20.098034, 17.387100, 18.734821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713203, 16.924261, 18.488951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375246, 16.781565, 18.329506>,  <20.172472, 16.695948, 18.233839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375246, 16.781565, 18.329506>,  <20.713203, 16.924261, 18.488951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375246, 16.781565, 18.329506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442629, -0.047781, -0.895431,
		0.300390, -0.932981, 0.198273,
		-0.844894, -0.356740, -0.398612,
		20.121778, 16.674543, 18.209923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964439, 16.417044, 18.026791>,  <20.713203, 16.924261, 18.488951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964439, 16.417044, 18.026791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595289, 16.502558, 17.898666>,  <20.373798, 16.553865, 17.821793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595289, 16.502558, 17.898666>,  <20.964439, 16.417044, 18.026791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595289, 16.502558, 17.898666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334674, 0.033757, -0.941729,
		-0.190515, -0.976297, -0.102702,
		-0.922874, 0.213785, -0.320310,
		20.318426, 16.566692, 17.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966162, 16.091627, 17.384977>,  <20.964439, 16.417044, 18.026791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966162, 16.091627, 17.384977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681290, 16.372063, 17.399242>,  <20.510366, 16.540323, 17.407801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681290, 16.372063, 17.399242>,  <20.966162, 16.091627, 17.384977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681290, 16.372063, 17.399242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268571, 0.319050, -0.908888,
		-0.648589, -0.637715, -0.415514,
		-0.712181, 0.701089, 0.035661,
		20.467636, 16.582390, 17.409941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.383551, 16.072035, 16.853451>,  <20.966162, 16.091627, 17.384977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.383551, 16.072035, 16.853451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459021, 16.449814, 16.961096>,  <20.504303, 16.676481, 17.025682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459021, 16.449814, 16.961096>,  <20.383551, 16.072035, 16.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.459021, 16.449814, 16.961096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203435, 0.230499, -0.951569,
		-0.960737, 0.234286, -0.148644,
		0.188677, 0.944447, 0.269111,
		20.515623, 16.733149, 17.041828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062170, 16.511553, 16.642393>,  <20.383551, 16.072035, 16.853451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062170, 16.511553, 16.642393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288530, 16.216141, 16.789000>,  <21.424347, 16.038893, 16.876963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288530, 16.216141, 16.789000>,  <21.062170, 16.511553, 16.642393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288530, 16.216141, 16.789000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637392, -0.673858, -0.373695,
		0.522963, -0.022139, -0.852068,
		0.565899, -0.738530, 0.366514,
		21.458300, 15.994582, 16.898954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109278, 17.294794, 16.545757>,  <21.062170, 16.511553, 16.642393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109278, 17.294794, 16.545757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237490, 17.523159, 16.848099>,  <21.314417, 17.660179, 17.029505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237490, 17.523159, 16.848099>,  <21.109278, 17.294794, 16.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237490, 17.523159, 16.848099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172839, 0.819811, -0.545927,
		-0.931337, 0.044343, 0.361449,
		0.320528, 0.570915, 0.755856,
		21.333649, 17.694433, 17.074856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692520, 17.830389, 16.585989>,  <21.109278, 17.294794, 16.545757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692520, 17.830389, 16.585989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049669, 17.921066, 16.741625>,  <21.263958, 17.975471, 16.835007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049669, 17.921066, 16.741625>,  <20.692520, 17.830389, 16.585989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049669, 17.921066, 16.741625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000909, 0.864951, -0.501855,
		-0.450308, 0.447739, 0.772497,
		0.892873, 0.226692, 0.389087,
		21.317532, 17.989075, 16.858351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808651, 18.514364, 16.688309>,  <20.692520, 17.830389, 16.585989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808651, 18.514364, 16.688309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.196608, 18.421097, 16.716427>,  <21.429382, 18.365137, 16.733297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.196608, 18.421097, 16.716427>,  <20.808651, 18.514364, 16.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.196608, 18.421097, 16.716427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241477, 0.883332, -0.401762,
		0.031582, 0.406641, 0.913042,
		0.969893, -0.233167, 0.070297,
		21.487576, 18.351147, 16.737516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.086914, 19.121603, 17.117907>,  <20.808651, 18.514364, 16.688309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.086914, 19.121603, 17.117907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314283, 18.967800, 16.826963>,  <21.450705, 18.875519, 16.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314283, 18.967800, 16.826963>,  <21.086914, 19.121603, 17.117907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314283, 18.967800, 16.826963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048858, 0.898287, -0.436684,
		0.821284, 0.212684, 0.529394,
		0.568423, -0.384506, -0.727358,
		21.484810, 18.852448, 16.608755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684366, 19.600618, 17.012102>,  <21.086914, 19.121603, 17.117907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684366, 19.600618, 17.012102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634342, 19.402882, 16.668013>,  <21.604328, 19.284239, 16.461559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.634342, 19.402882, 16.668013>,  <21.684366, 19.600618, 17.012102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634342, 19.402882, 16.668013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032770, 0.868615, -0.494402,
		0.991607, -0.033642, -0.124830,
		-0.125062, -0.494344, -0.860223,
		21.596823, 19.254578, 16.409946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152075, 19.796030, 16.510620>,  <21.684366, 19.600618, 17.012102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152075, 19.796030, 16.510620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836102, 19.667301, 16.301840>,  <21.646517, 19.590065, 16.176571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836102, 19.667301, 16.301840>,  <22.152075, 19.796030, 16.510620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836102, 19.667301, 16.301840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018747, 0.838134, -0.545142,
		0.612903, -0.440412, -0.656039,
		-0.789935, -0.321820, -0.521952,
		21.599121, 19.570755, 16.145254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291887, 20.110155, 15.855134>,  <22.152075, 19.796030, 16.510620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291887, 20.110155, 15.855134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908417, 20.000130, 15.826075>,  <21.678333, 19.934114, 15.808639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908417, 20.000130, 15.826075>,  <22.291887, 20.110155, 15.855134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908417, 20.000130, 15.826075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151032, 0.708472, -0.689388,
		0.241095, -0.649929, -0.720740,
		-0.958678, -0.275063, -0.072649,
		21.620813, 19.917610, 15.804280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134222, 20.149803, 15.079343>,  <22.291887, 20.110155, 15.855134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134222, 20.149803, 15.079343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759600, 20.145153, 15.219472>,  <21.534826, 20.142363, 15.303549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759600, 20.145153, 15.219472>,  <22.134222, 20.149803, 15.079343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.759600, 20.145153, 15.219472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224538, 0.787351, -0.574161,
		-0.269153, -0.616395, -0.740009,
		-0.936557, -0.011623, 0.350322,
		21.478632, 20.141666, 15.324569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760593, 20.262623, 14.516352>,  <22.134222, 20.149803, 15.079343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760593, 20.262623, 14.516352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511564, 20.360153, 14.813794>,  <21.362146, 20.418671, 14.992260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511564, 20.360153, 14.813794>,  <21.760593, 20.262623, 14.516352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511564, 20.360153, 14.813794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234367, 0.848514, -0.474444,
		-0.746642, -0.469653, -0.471117,
		-0.622573, 0.243826, 0.743607,
		21.324793, 20.433300, 15.036877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025253, 20.363764, 14.222679>,  <21.760593, 20.262623, 14.516352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025253, 20.363764, 14.222679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059570, 20.563175, 14.567726>,  <21.080160, 20.682823, 14.774755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059570, 20.563175, 14.567726>,  <21.025253, 20.363764, 14.222679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059570, 20.563175, 14.567726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478693, 0.779952, -0.403148,
		-0.873781, -0.378341, 0.305556,
		0.085792, 0.498530, 0.862617,
		21.085308, 20.712734, 14.826511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496918, 20.696363, 14.172087>,  <21.025253, 20.363764, 14.222679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496918, 20.696363, 14.172087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676260, 20.917912, 14.452715>,  <20.783865, 21.050840, 14.621092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676260, 20.917912, 14.452715>,  <20.496918, 20.696363, 14.172087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676260, 20.917912, 14.452715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295170, 0.832597, -0.468675,
		-0.843712, 0.003051, 0.536787,
		0.448358, 0.553871, 0.701572,
		20.810768, 21.084072, 14.663186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.008980, 21.278708, 14.280434>,  <20.496918, 20.696363, 14.172087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.008980, 21.278708, 14.280434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374266, 21.358232, 14.422708>,  <20.593437, 21.405947, 14.508072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374266, 21.358232, 14.422708>,  <20.008980, 21.278708, 14.280434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374266, 21.358232, 14.422708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109026, 0.960286, -0.256833,
		-0.392619, 0.195765, 0.898624,
		0.913216, 0.198811, 0.355684,
		20.648230, 21.417875, 14.529412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923779, 21.902370, 14.476346>,  <20.008980, 21.278708, 14.280434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923779, 21.902370, 14.476346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320290, 21.869558, 14.435083>,  <20.558195, 21.849871, 14.410326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.320290, 21.869558, 14.435083>,  <19.923779, 21.902370, 14.476346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320290, 21.869558, 14.435083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002763, 0.769586, -0.638537,
		0.131769, 0.633252, 0.762646,
		0.991277, -0.082033, -0.103157,
		20.617672, 21.844948, 14.404136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.142448, 22.523882, 14.570373>,  <19.923779, 21.902370, 14.476346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.142448, 22.523882, 14.570373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.469503, 22.372478, 14.396844>,  <20.665737, 22.281637, 14.292727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.469503, 22.372478, 14.396844>,  <20.142448, 22.523882, 14.570373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469503, 22.372478, 14.396844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047056, 0.794925, -0.604880,
		0.573808, 0.474159, 0.667771,
		0.817637, -0.378508, -0.433823,
		20.714794, 22.258926, 14.266697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650429, 23.030500, 14.493828>,  <20.142448, 22.523882, 14.570373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650429, 23.030500, 14.493828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704464, 22.775978, 14.190022>,  <20.736885, 22.623264, 14.007737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.704464, 22.775978, 14.190022>,  <20.650429, 23.030500, 14.493828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704464, 22.775978, 14.190022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007826, 0.765833, -0.642991,
		0.990803, 0.092803, 0.098474,
		0.135087, -0.636307, -0.759516,
		20.744989, 22.585087, 13.962167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.068512, 23.428366, 14.064408>,  <20.650429, 23.030500, 14.493828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.068512, 23.428366, 14.064408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933233, 23.123857, 13.843106>,  <20.852066, 22.941153, 13.710325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933233, 23.123857, 13.843106>,  <21.068512, 23.428366, 14.064408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933233, 23.123857, 13.843106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099766, 0.555582, -0.825455,
		0.935772, -0.334363, -0.111948,
		-0.338198, -0.761269, -0.553256,
		20.831774, 22.895477, 13.677130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568213, 23.230835, 13.630797>,  <21.068512, 23.428366, 14.064408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568213, 23.230835, 13.630797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263632, 23.073080, 13.425021>,  <21.080883, 22.978426, 13.301556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263632, 23.073080, 13.425021>,  <21.568213, 23.230835, 13.630797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.263632, 23.073080, 13.425021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254964, 0.547429, -0.797067,
		0.595972, -0.738092, -0.316287,
		-0.761453, -0.394388, -0.514439,
		21.035196, 22.954763, 13.270689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802019, 22.849730, 13.023808>,  <21.568213, 23.230835, 13.630797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802019, 22.849730, 13.023808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432243, 22.970694, 12.930894>,  <21.210377, 23.043272, 12.875145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.432243, 22.970694, 12.930894>,  <21.802019, 22.849730, 13.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432243, 22.970694, 12.930894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303043, 0.212872, -0.928897,
		-0.231463, -0.929103, -0.288431,
		-0.924440, 0.302412, -0.232286,
		21.154911, 23.061417, 12.861208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842854, 22.786688, 12.365345>,  <21.802019, 22.849730, 13.023808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842854, 22.786688, 12.365345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479218, 22.952316, 12.383654>,  <21.261036, 23.051693, 12.394639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479218, 22.952316, 12.383654>,  <21.842854, 22.786688, 12.365345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479218, 22.952316, 12.383654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121452, 0.368523, -0.921651,
		-0.398498, -0.832307, -0.385311,
		-0.909092, 0.414073, 0.045771,
		21.206490, 23.076538, 12.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422638, 22.776834, 11.671533>,  <21.842854, 22.786688, 12.365345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422638, 22.776834, 11.671533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.250216, 23.084818, 11.859725>,  <21.146763, 23.269608, 11.972641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.250216, 23.084818, 11.859725>,  <21.422638, 22.776834, 11.671533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.250216, 23.084818, 11.859725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059326, 0.496098, -0.866237,
		-0.900373, -0.401308, -0.168167,
		-0.431055, 0.769960, 0.470482,
		21.120899, 23.315805, 12.000870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984011, 22.873100, 11.205523>,  <21.422638, 22.776834, 11.671533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984011, 22.873100, 11.205523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022352, 23.182688, 11.455894>,  <21.045357, 23.368441, 11.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022352, 23.182688, 11.455894>,  <20.984011, 22.873100, 11.205523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022352, 23.182688, 11.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008516, 0.629438, -0.777004,
		-0.995359, 0.069150, 0.066927,
		0.095856, 0.773968, 0.625928,
		21.051109, 23.414879, 11.643673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362793, 23.302038, 11.197369>,  <20.984011, 22.873100, 11.205523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362793, 23.302038, 11.197369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671949, 23.533449, 11.301631>,  <20.857443, 23.672297, 11.364188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.671949, 23.533449, 11.301631>,  <20.362793, 23.302038, 11.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671949, 23.533449, 11.301631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175125, 0.589308, -0.788700,
		-0.609892, 0.563934, 0.556786,
		0.772893, 0.578529, 0.260655,
		20.903818, 23.707008, 11.379827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034966, 23.866228, 11.111157>,  <20.362793, 23.302038, 11.197369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034966, 23.866228, 11.111157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426037, 23.940302, 11.071446>,  <20.660679, 23.984747, 11.047620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426037, 23.940302, 11.071446>,  <20.034966, 23.866228, 11.111157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426037, 23.940302, 11.071446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184521, 0.530687, -0.827238,
		-0.100506, 0.827090, 0.553011,
		0.977676, 0.185184, -0.099278,
		20.719339, 23.995857, 11.041663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181768, 24.528051, 11.265393>,  <20.034966, 23.866228, 11.111157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181768, 24.528051, 11.265393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474178, 24.406927, 11.020802>,  <20.649624, 24.334253, 10.874046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474178, 24.406927, 11.020802>,  <20.181768, 24.528051, 11.265393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474178, 24.406927, 11.020802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335228, 0.621156, -0.708370,
		0.594326, 0.722821, 0.352571,
		0.731026, -0.302811, -0.611479,
		20.693485, 24.316084, 10.837358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501488, 25.197927, 11.090928>,  <20.181768, 24.528051, 11.265393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501488, 25.197927, 11.090928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626669, 24.933632, 10.818023>,  <20.701777, 24.775055, 10.654280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.626669, 24.933632, 10.818023>,  <20.501488, 25.197927, 11.090928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626669, 24.933632, 10.818023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061812, 0.702655, -0.708841,
		0.947756, 0.264004, 0.179054,
		0.312951, -0.660740, -0.682264,
		20.720554, 24.735409, 10.613343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884872, 25.560516, 10.543571>,  <20.501488, 25.197927, 11.090928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884872, 25.560516, 10.543571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816757, 25.210035, 10.363228>,  <20.775888, 24.999746, 10.255022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816757, 25.210035, 10.363228>,  <20.884872, 25.560516, 10.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816757, 25.210035, 10.363228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, 0.453253, -0.890979,
		0.985030, -0.163802, -0.053710,
		-0.170289, -0.876202, -0.450856,
		20.765671, 24.947174, 10.227971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165545, 25.597000, 9.949811>,  <20.884872, 25.560516, 10.543571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165545, 25.597000, 9.949811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889566, 25.314098, 9.888148>,  <20.723980, 25.144358, 9.851151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889566, 25.314098, 9.888148>,  <21.165545, 25.597000, 9.949811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889566, 25.314098, 9.888148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241086, 0.425324, -0.872340,
		0.682533, -0.564703, -0.463960,
		-0.689946, -0.707255, -0.154156,
		20.682583, 25.101921, 9.841902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175409, 25.522339, 9.344016>,  <21.165545, 25.597000, 9.949811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175409, 25.522339, 9.344016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812532, 25.365005, 9.403733>,  <20.594807, 25.270605, 9.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812532, 25.365005, 9.403733>,  <21.175409, 25.522339, 9.344016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812532, 25.365005, 9.403733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315503, 0.401308, -0.859889,
		0.278311, -0.827188, -0.488162,
		-0.907194, -0.393333, 0.149292,
		20.540375, 25.247005, 9.448521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795376, 25.740866, 8.862493>,  <21.175409, 25.522339, 9.344016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795376, 25.740866, 8.862493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047680, 25.434927, 8.914884>,  <22.199062, 25.251364, 8.946319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047680, 25.434927, 8.914884>,  <21.795376, 25.740866, 8.862493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047680, 25.434927, 8.914884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623642, 0.600098, 0.500952,
		-0.461751, -0.234296, 0.855507,
		0.630759, -0.764845, 0.130979,
		22.236908, 25.205473, 8.954177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139175, 26.004543, 8.240545>,  <21.795376, 25.740866, 8.862493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139175, 26.004543, 8.240545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263706, 25.740133, 8.513638>,  <22.338425, 25.581488, 8.677493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263706, 25.740133, 8.513638>,  <22.139175, 26.004543, 8.240545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263706, 25.740133, 8.513638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160412, -0.744681, -0.647857,
		0.936666, 0.092178, -0.337876,
		0.311328, -0.661025, 0.682730,
		22.357105, 25.541826, 8.718456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610369, 25.513395, 7.949356>,  <22.139175, 26.004543, 8.240545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610369, 25.513395, 7.949356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534641, 25.319984, 8.291200>,  <22.489204, 25.203938, 8.496306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534641, 25.319984, 8.291200>,  <22.610369, 25.513395, 7.949356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534641, 25.319984, 8.291200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061587, -0.862789, -0.501800,
		0.979982, -0.147634, 0.133565,
		-0.189321, -0.483529, 0.854610,
		22.477844, 25.174927, 8.547583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863791, 24.889009, 7.862792>,  <22.610369, 25.513395, 7.949356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863791, 24.889009, 7.862792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580112, 24.848913, 8.141931>,  <22.409904, 24.824856, 8.309414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580112, 24.848913, 8.141931>,  <22.863791, 24.889009, 7.862792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580112, 24.848913, 8.141931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314911, -0.840566, -0.440773,
		0.630770, -0.532354, 0.564560,
		-0.709197, -0.100240, 0.697848,
		22.367353, 24.818842, 8.351285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.976080, 24.194263, 8.038239>,  <22.863791, 24.889009, 7.862792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.976080, 24.194263, 8.038239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605818, 24.329556, 8.106076>,  <22.383661, 24.410730, 8.146779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605818, 24.329556, 8.106076>,  <22.976080, 24.194263, 8.038239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605818, 24.329556, 8.106076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364322, -0.675744, -0.640811,
		-0.102140, -0.654957, 0.748731,
		-0.925655, 0.338232, 0.169595,
		22.328121, 24.431025, 8.156955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.538544, 24.200674, 8.612432>,  <22.976080, 24.194263, 8.038239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.538544, 24.200674, 8.612432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893194, 24.119852, 8.778835>,  <23.105986, 24.071360, 8.878677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893194, 24.119852, 8.778835>,  <22.538544, 24.200674, 8.612432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893194, 24.119852, 8.778835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116487, -0.772951, -0.623681,
		0.447572, 0.601433, -0.661784,
		0.886629, -0.202053, 0.416010,
		23.159184, 24.059237, 8.903639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.530867, 23.455053, 8.845706>,  <22.538544, 24.200674, 8.612432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.530867, 23.455053, 8.845706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168671, 23.473162, 9.014486>,  <21.951353, 23.484026, 9.115754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168671, 23.473162, 9.014486>,  <22.530867, 23.455053, 8.845706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168671, 23.473162, 9.014486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171965, -0.869860, 0.462354,
		0.387969, 0.491216, 0.779863,
		-0.905488, 0.045270, 0.421951,
		21.897024, 23.486742, 9.141071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497793, 23.627674, 9.609398>,  <22.530867, 23.455053, 8.845706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497793, 23.627674, 9.609398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236835, 23.370968, 9.448145>,  <22.080261, 23.216944, 9.351393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236835, 23.370968, 9.448145>,  <22.497793, 23.627674, 9.609398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236835, 23.370968, 9.448145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337553, -0.722303, 0.603603,
		-0.678556, 0.257709, 0.687857,
		-0.652395, -0.641767, -0.403133,
		22.041117, 23.178438, 9.327205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016243, 23.455072, 10.128912>,  <22.497793, 23.627674, 9.609398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016243, 23.455072, 10.128912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.056606, 23.167967, 9.853337>,  <22.080824, 22.995703, 9.687992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.056606, 23.167967, 9.853337>,  <22.016243, 23.455072, 10.128912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056606, 23.167967, 9.853337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122637, -0.678216, 0.724557,
		-0.987308, -0.157604, 0.019585,
		0.100910, -0.717763, -0.688936,
		22.086880, 22.952639, 9.646656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.593538, 22.959047, 10.360003>,  <22.016243, 23.455072, 10.128912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.593538, 22.959047, 10.360003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.821802, 22.755056, 10.102548>,  <21.958761, 22.632662, 9.948074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.821802, 22.755056, 10.102548>,  <21.593538, 22.959047, 10.360003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.821802, 22.755056, 10.102548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066367, -0.752586, 0.655141,
		-0.818502, -0.416578, -0.395623,
		0.570658, -0.509978, -0.643640,
		21.993000, 22.602064, 9.909456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335733, 22.300138, 10.337862>,  <21.593538, 22.959047, 10.360003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335733, 22.300138, 10.337862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716816, 22.258732, 10.223574>,  <21.945465, 22.233887, 10.155001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716816, 22.258732, 10.223574>,  <21.335733, 22.300138, 10.337862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716816, 22.258732, 10.223574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121651, -0.731666, 0.670720,
		-0.278483, -0.673757, -0.684470,
		0.952706, -0.103518, -0.285720,
		22.002628, 22.227676, 10.137857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.501747, 21.546982, 10.411854>,  <21.335733, 22.300138, 10.337862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.501747, 21.546982, 10.411854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.864550, 21.712238, 10.379220>,  <22.082232, 21.811392, 10.359640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.864550, 21.712238, 10.379220>,  <21.501747, 21.546982, 10.411854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864550, 21.712238, 10.379220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365347, -0.675632, 0.640346,
		0.209431, -0.610604, -0.763742,
		0.907006, 0.413139, -0.081584,
		22.136652, 21.836180, 10.354745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959919, 21.008013, 10.242926>,  <21.501747, 21.546982, 10.411854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959919, 21.008013, 10.242926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173872, 21.290134, 10.429021>,  <22.302244, 21.459408, 10.540678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173872, 21.290134, 10.429021>,  <21.959919, 21.008013, 10.242926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173872, 21.290134, 10.429021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345501, -0.685063, 0.641341,
		0.771058, -0.182302, -0.610111,
		0.534882, 0.705305, 0.465238,
		22.334337, 21.501726, 10.568592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635548, 20.757755, 10.275953>,  <21.959919, 21.008013, 10.242926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635548, 20.757755, 10.275953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.578400, 21.021746, 10.570984>,  <22.544111, 21.180140, 10.748002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.578400, 21.021746, 10.570984>,  <22.635548, 20.757755, 10.275953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.578400, 21.021746, 10.570984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213348, -0.707166, 0.674091,
		0.966474, 0.253666, -0.039774,
		-0.142868, 0.659977, 0.737577,
		22.535540, 21.219738, 10.792257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.135872, 20.705313, 10.733925>,  <22.635548, 20.757755, 10.275953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.135872, 20.705313, 10.733925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.873375, 20.887043, 10.974901>,  <22.715878, 20.996080, 11.119487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.873375, 20.887043, 10.974901>,  <23.135872, 20.705313, 10.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.873375, 20.887043, 10.974901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326584, -0.548730, 0.769570,
		0.680213, 0.701771, 0.211724,
		-0.656241, 0.454326, 0.602441,
		22.676502, 21.023340, 11.155634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557096, 20.876970, 11.420768>,  <23.135872, 20.705313, 10.733925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557096, 20.876970, 11.420768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163120, 20.875092, 11.489902>,  <22.926735, 20.873964, 11.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163120, 20.875092, 11.489902>,  <23.557096, 20.876970, 11.420768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163120, 20.875092, 11.489902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168473, -0.250882, 0.953245,
		0.038884, 0.968006, 0.247895,
		-0.984939, -0.004698, 0.172838,
		22.867638, 20.873682, 11.541754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614223, 21.135838, 12.032808>,  <23.557096, 20.876970, 11.420768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614223, 21.135838, 12.032808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251183, 20.968973, 12.013876>,  <23.033358, 20.868855, 12.002517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251183, 20.968973, 12.013876>,  <23.614223, 21.135838, 12.032808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251183, 20.968973, 12.013876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086932, -0.297026, 0.950904,
		-0.410737, 0.858926, 0.305845,
		-0.907600, -0.417159, -0.047332,
		22.978903, 20.843826, 11.999677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.317776, 21.343830, 12.614864>,  <23.614223, 21.135838, 12.032808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.317776, 21.343830, 12.614864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129675, 21.008099, 12.505765>,  <23.016815, 20.806660, 12.440305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129675, 21.008099, 12.505765>,  <23.317776, 21.343830, 12.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129675, 21.008099, 12.505765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297383, -0.441679, 0.846453,
		-0.830920, 0.316935, 0.457302,
		-0.470251, -0.839328, -0.272749,
		22.988600, 20.756300, 12.423941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.912727, 21.116468, 13.240132>,  <23.317776, 21.343830, 12.614864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.912727, 21.116468, 13.240132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938379, 20.784540, 13.018400>,  <22.953770, 20.585382, 12.885361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938379, 20.784540, 13.018400>,  <22.912727, 21.116468, 13.240132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.938379, 20.784540, 13.018400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206151, -0.532476, 0.820957,
		-0.976416, -0.166924, 0.136921,
		0.064130, -0.829822, -0.554330,
		22.957619, 20.535593, 12.852101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638371, 20.743988, 13.636047>,  <22.912727, 21.116468, 13.240132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638371, 20.743988, 13.636047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800697, 20.468084, 13.396199>,  <22.898092, 20.302542, 13.252290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800697, 20.468084, 13.396199>,  <22.638371, 20.743988, 13.636047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.800697, 20.468084, 13.396199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108740, -0.614973, 0.781014,
		-0.907463, -0.382150, -0.174561,
		0.405815, -0.689760, -0.599621,
		22.922441, 20.261156, 13.216313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369522, 20.097803, 13.812030>,  <22.638371, 20.743988, 13.636047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369522, 20.097803, 13.812030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722601, 20.024754, 13.638828>,  <22.934448, 19.980925, 13.534907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722601, 20.024754, 13.638828>,  <22.369522, 20.097803, 13.812030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722601, 20.024754, 13.638828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259754, -0.578251, 0.773404,
		-0.391625, -0.795157, -0.462984,
		0.882699, -0.182623, -0.433003,
		22.987411, 19.969967, 13.508927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369736, 19.421764, 13.681569>,  <22.369522, 20.097803, 13.812030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369736, 19.421764, 13.681569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753979, 19.532736, 13.688118>,  <22.984524, 19.599319, 13.692047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753979, 19.532736, 13.688118>,  <22.369736, 19.421764, 13.681569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753979, 19.532736, 13.688118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196183, -0.718663, 0.667110,
		0.196842, -0.637618, -0.744779,
		0.960607, 0.277429, 0.016373,
		23.042160, 19.615965, 13.693029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773026, 18.910084, 13.663376>,  <22.369736, 19.421764, 13.681569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773026, 18.910084, 13.663376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080000, 19.126181, 13.801466>,  <23.264185, 19.255838, 13.884320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.080000, 19.126181, 13.801466>,  <22.773026, 18.910084, 13.663376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080000, 19.126181, 13.801466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355318, -0.806601, 0.472382,
		0.533660, -0.239857, -0.810972,
		0.767434, 0.540244, 0.345225,
		23.310230, 19.288254, 13.905033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.346952, 18.507622, 13.602499>,  <22.773026, 18.910084, 13.663376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.346952, 18.507622, 13.602499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473766, 18.777020, 13.869600>,  <23.549854, 18.938658, 14.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473766, 18.777020, 13.869600>,  <23.346952, 18.507622, 13.602499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473766, 18.777020, 13.869600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397344, -0.733626, 0.551281,
		0.861166, 0.090552, -0.500194,
		0.317036, 0.673493, 0.667754,
		23.568876, 18.979067, 14.069926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023739, 18.426115, 13.731092>,  <23.346952, 18.507622, 13.602499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.023739, 18.426115, 13.731092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904902, 18.618132, 14.061255>,  <23.833599, 18.733341, 14.259353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904902, 18.618132, 14.061255>,  <24.023739, 18.426115, 13.731092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.904902, 18.618132, 14.061255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379138, -0.734065, 0.563385,
		0.876350, 0.480322, 0.036085,
		-0.297094, 0.480041, 0.825406,
		23.815773, 18.762144, 14.308877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575907, 18.457441, 14.208049>,  <24.023739, 18.426115, 13.731092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575907, 18.457441, 14.208049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233955, 18.487322, 14.413417>,  <24.028784, 18.505249, 14.536637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233955, 18.487322, 14.413417>,  <24.575907, 18.457441, 14.208049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233955, 18.487322, 14.413417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365708, -0.615181, 0.698434,
		0.368019, 0.784839, 0.498588,
		-0.854880, 0.074700, 0.513420,
		23.977491, 18.509731, 14.567443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821541, 18.091261, 13.595562>,  <24.575907, 18.457441, 14.208049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821541, 18.091261, 13.595562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730001, 17.781157, 13.831054>,  <24.675077, 17.595095, 13.972348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730001, 17.781157, 13.831054>,  <24.821541, 18.091261, 13.595562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730001, 17.781157, 13.831054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232989, -0.630821, -0.740122,
		0.945170, -0.032208, 0.324988,
		-0.228847, -0.775260, 0.588729,
		24.661346, 17.548578, 14.007672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397182, 17.719063, 13.378338>,  <24.821541, 18.091261, 13.595562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397182, 17.719063, 13.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081886, 17.498508, 13.487627>,  <24.892708, 17.366177, 13.553201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081886, 17.498508, 13.487627>,  <25.397182, 17.719063, 13.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081886, 17.498508, 13.487627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284649, -0.720348, -0.632514,
		0.545574, -0.420801, 0.724759,
		-0.788241, -0.551385, 0.273223,
		24.845413, 17.333094, 13.569593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499527, 17.121418, 13.724218>,  <25.397182, 17.719063, 13.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499527, 17.121418, 13.724218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144812, 17.046249, 13.555319>,  <24.931982, 17.001148, 13.453979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144812, 17.046249, 13.555319>,  <25.499527, 17.121418, 13.724218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144812, 17.046249, 13.555319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408825, -0.745067, -0.527008,
		-0.215567, -0.639970, 0.737543,
		-0.886788, -0.187920, -0.422248,
		24.878775, 16.989874, 13.428644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260984, 17.168411, 13.712567>,  <25.499527, 17.121418, 13.724218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260984, 17.168411, 13.712567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138512, 17.013695, 14.060510>,  <26.065029, 16.920866, 14.269275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138512, 17.013695, 14.060510>,  <26.260984, 17.168411, 13.712567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138512, 17.013695, 14.060510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209866, -0.918683, -0.334631,
		0.928553, 0.080096, 0.362456,
		-0.306180, -0.386790, 0.869855,
		26.046658, 16.897657, 14.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765869, 16.721481, 14.129438>,  <26.260984, 17.168411, 13.712567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765869, 16.721481, 14.129438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380688, 16.619045, 14.163227>,  <26.149578, 16.557583, 14.183500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380688, 16.619045, 14.163227>,  <26.765869, 16.721481, 14.129438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380688, 16.619045, 14.163227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193200, -0.873716, -0.446423,
		0.188129, -0.413566, 0.890826,
		-0.962954, -0.256093, 0.084471,
		26.091801, 16.542217, 14.188568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677063, 16.119707, 14.482385>,  <26.765869, 16.721481, 14.129438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677063, 16.119707, 14.482385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371992, 16.135702, 14.224169>,  <26.188950, 16.145298, 14.069239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371992, 16.135702, 14.224169>,  <26.677063, 16.119707, 14.482385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371992, 16.135702, 14.224169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293529, -0.867983, -0.400557,
		-0.576335, -0.494981, 0.650256,
		-0.762679, 0.039986, -0.645540,
		26.143188, 16.147697, 14.030507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908424, 15.526184, 14.822684>,  <26.677063, 16.119707, 14.482385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908424, 15.526184, 14.822684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858557, 15.163490, 14.983827>,  <26.828636, 14.945874, 15.080512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858557, 15.163490, 14.983827>,  <26.908424, 15.526184, 14.822684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858557, 15.163490, 14.983827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654906, 0.380211, 0.653098,
		-0.745356, -0.182412, -0.641226,
		-0.124668, -0.906733, 0.402855,
		26.821156, 14.891470, 15.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.566803, 20.715382, 24.313805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.197430, 20.562208, 24.323870>,  <11.975805, 20.470304, 24.329908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.197430, 20.562208, 24.323870>,  <12.566803, 20.715382, 24.313805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.197430, 20.562208, 24.323870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100268, -0.304049, -0.947365,
		0.370427, -0.872306, 0.319165,
		-0.923434, -0.382932, 0.025164,
		11.920400, 20.447329, 24.331419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727304, 20.056555, 24.150410>,  <12.566803, 20.715382, 24.313805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727304, 20.056555, 24.150410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.334678, 20.110048, 24.095797>,  <12.099102, 20.142145, 24.063028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.334678, 20.110048, 24.095797>,  <12.727304, 20.056555, 24.150410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334678, 20.110048, 24.095797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037047, -0.567702, -0.822400,
		-0.187493, -0.812299, 0.552283,
		-0.981567, 0.133734, -0.136534,
		12.040208, 20.150169, 24.054836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591488, 19.465544, 23.810795>,  <12.727304, 20.056555, 24.150410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591488, 19.465544, 23.810795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.285253, 19.704769, 23.715971>,  <12.101512, 19.848305, 23.659077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.285253, 19.704769, 23.715971>,  <12.591488, 19.465544, 23.810795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285253, 19.704769, 23.715971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106725, -0.481452, -0.869950,
		-0.634418, -0.640722, 0.432421,
		-0.765587, 0.598063, -0.237061,
		12.055576, 19.884188, 23.644854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.152830, 19.031857, 23.521709>,  <12.591488, 19.465544, 23.810795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.152830, 19.031857, 23.521709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.042630, 19.397713, 23.403362>,  <11.976510, 19.617226, 23.332354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.042630, 19.397713, 23.403362>,  <12.152830, 19.031857, 23.521709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042630, 19.397713, 23.403362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024843, -0.314448, -0.948949,
		-0.960980, -0.254085, 0.109353,
		-0.275499, 0.914639, -0.295866,
		11.959980, 19.672104, 23.314602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548856, 18.886143, 23.001097>,  <12.152830, 19.031857, 23.521709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548856, 18.886143, 23.001097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673257, 19.257648, 22.920427>,  <11.747898, 19.480553, 22.872026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673257, 19.257648, 22.920427>,  <11.548856, 18.886143, 23.001097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673257, 19.257648, 22.920427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123073, -0.249765, -0.960453,
		-0.942407, 0.273884, -0.191983,
		0.311003, 0.928765, -0.201672,
		11.766558, 19.536278, 22.859926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225329, 19.164293, 22.416933>,  <11.548856, 18.886143, 23.001097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225329, 19.164293, 22.416933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.563970, 19.373226, 22.457792>,  <11.767154, 19.498587, 22.482307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.563970, 19.373226, 22.457792>,  <11.225329, 19.164293, 22.416933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.563970, 19.373226, 22.457792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159817, -0.066418, -0.984910,
		-0.507667, 0.850151, -0.139707,
		0.846601, 0.522334, 0.102150,
		11.817950, 19.529926, 22.488438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268067, 19.385857, 21.733793>,  <11.225329, 19.164293, 22.416933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268067, 19.385857, 21.733793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.625750, 19.413616, 21.910692>,  <11.840359, 19.430271, 22.016830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.625750, 19.413616, 21.910692>,  <11.268067, 19.385857, 21.733793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625750, 19.413616, 21.910692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442391, -0.288090, -0.849290,
		0.068468, 0.955085, -0.288313,
		0.894205, 0.069398, 0.442246,
		11.894011, 19.434435, 22.043365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687216, 19.924875, 21.351816>,  <11.268067, 19.385857, 21.733793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687216, 19.924875, 21.351816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.911224, 19.661907, 21.553480>,  <12.045630, 19.504128, 21.674479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.911224, 19.661907, 21.553480>,  <11.687216, 19.924875, 21.351816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.911224, 19.661907, 21.553480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372622, -0.343643, -0.862011,
		0.739953, 0.670605, 0.052521,
		0.560020, -0.657418, 0.504162,
		12.079230, 19.464682, 21.704729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.253099, 19.859764, 20.927410>,  <11.687216, 19.924875, 21.351816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.253099, 19.859764, 20.927410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.304573, 19.550413, 21.175711>,  <12.335457, 19.364803, 21.324690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.304573, 19.550413, 21.175711>,  <12.253099, 19.859764, 20.927410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304573, 19.550413, 21.175711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401896, -0.531576, -0.745591,
		0.906598, 0.345422, 0.242412,
		0.128684, -0.773376, 0.620749,
		12.343178, 19.318399, 21.361935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993012, 19.693661, 20.951923>,  <12.253099, 19.859764, 20.927410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993012, 19.693661, 20.951923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.781001, 19.365284, 21.036894>,  <12.653794, 19.168259, 21.087877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.781001, 19.365284, 21.036894>,  <12.993012, 19.693661, 20.951923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781001, 19.365284, 21.036894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527100, -0.515192, -0.675828,
		0.664256, -0.246237, 0.705785,
		-0.530028, -0.820941, 0.212427,
		12.621993, 19.119001, 21.100622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.533670, 19.236845, 20.901518>,  <12.993012, 19.693661, 20.951923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.533670, 19.236845, 20.901518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.194212, 19.026590, 20.877834>,  <12.990537, 18.900438, 20.863625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.194212, 19.026590, 20.877834>,  <13.533670, 19.236845, 20.901518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194212, 19.026590, 20.877834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445705, -0.650299, -0.615189,
		0.284862, -0.548468, 0.786153,
		-0.848646, -0.525636, -0.059210,
		12.939618, 18.868900, 20.860071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729649, 18.516251, 21.002134>,  <13.533670, 19.236845, 20.901518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729649, 18.516251, 21.002134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.367246, 18.536003, 20.833984>,  <13.149804, 18.547853, 20.733095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.367246, 18.536003, 20.833984>,  <13.729649, 18.516251, 21.002134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367246, 18.536003, 20.833984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304013, -0.615105, -0.727477,
		-0.294496, -0.786897, 0.542277,
		-0.906007, 0.049380, -0.420373,
		13.095444, 18.550817, 20.707872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581684, 17.832281, 20.863905>,  <13.729649, 18.516251, 21.002134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581684, 17.832281, 20.863905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.349321, 18.071320, 20.642843>,  <13.209904, 18.214743, 20.510206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.349321, 18.071320, 20.642843>,  <13.581684, 17.832281, 20.863905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349321, 18.071320, 20.642843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428145, -0.353114, -0.831867,
		-0.692272, -0.719851, -0.050733,
		-0.580906, 0.597598, -0.552652,
		13.175050, 18.250599, 20.477047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347538, 17.362144, 20.379860>,  <13.581684, 17.832281, 20.863905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347538, 17.362144, 20.379860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.328529, 17.726894, 20.216778>,  <13.317124, 17.945744, 20.118929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.328529, 17.726894, 20.216778>,  <13.347538, 17.362144, 20.379860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328529, 17.726894, 20.216778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500538, -0.331483, -0.799738,
		-0.864409, -0.242078, -0.440676,
		-0.047522, 0.911876, -0.407707,
		13.314273, 18.000458, 20.094465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307200, 17.174606, 19.713343>,  <13.347538, 17.362144, 20.379860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.307200, 17.174606, 19.713343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.387741, 17.564131, 19.671099>,  <13.436066, 17.797846, 19.645752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.387741, 17.564131, 19.671099>,  <13.307200, 17.174606, 19.713343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387741, 17.564131, 19.671099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419949, -0.183229, -0.888859,
		-0.884930, 0.134622, -0.445844,
		0.201351, 0.973809, -0.105611,
		13.448147, 17.856274, 19.639416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.342956, 17.333979, 19.015123>,  <13.307200, 17.174606, 19.713343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.342956, 17.333979, 19.015123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.482413, 17.682199, 19.154024>,  <13.566088, 17.891132, 19.237366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.482413, 17.682199, 19.154024>,  <13.342956, 17.333979, 19.015123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482413, 17.682199, 19.154024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495490, 0.143297, -0.856712,
		-0.795574, 0.470748, -0.381390,
		0.348644, 0.870553, 0.347254,
		13.587007, 17.943365, 19.258200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155327, 17.837955, 18.522079>,  <13.342956, 17.333979, 19.015123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155327, 17.837955, 18.522079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.479254, 17.935585, 18.735479>,  <13.673610, 17.994164, 18.863520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.479254, 17.935585, 18.735479>,  <13.155327, 17.837955, 18.522079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479254, 17.935585, 18.735479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518791, 0.126713, -0.845458,
		-0.273958, 0.961442, -0.024010,
		0.809817, 0.244076, 0.533501,
		13.722198, 18.008808, 18.895529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.431092, 18.527170, 18.229652>,  <13.155327, 17.837955, 18.522079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.431092, 18.527170, 18.229652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.726101, 18.330118, 18.414425>,  <13.903106, 18.211887, 18.525288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.726101, 18.330118, 18.414425>,  <13.431092, 18.527170, 18.229652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726101, 18.330118, 18.414425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574015, 0.096948, -0.813086,
		0.355765, 0.864823, 0.354277,
		0.737522, -0.492628, 0.461931,
		13.947357, 18.182329, 18.553003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990746, 18.731956, 17.881296>,  <13.431092, 18.527170, 18.229652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990746, 18.731956, 17.881296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145353, 18.421926, 18.081240>,  <14.238117, 18.235909, 18.201206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145353, 18.421926, 18.081240>,  <13.990746, 18.731956, 17.881296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145353, 18.421926, 18.081240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729072, -0.075159, -0.680298,
		0.564852, 0.627381, 0.536036,
		0.386518, -0.775077, 0.499859,
		14.261309, 18.189404, 18.231197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682905, 18.801573, 17.639067>,  <13.990746, 18.731956, 17.881296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682905, 18.801573, 17.639067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.665826, 18.441734, 17.812918>,  <14.655578, 18.225830, 17.917229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.665826, 18.441734, 17.812918>,  <14.682905, 18.801573, 17.639067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665826, 18.441734, 17.812918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675794, -0.346411, -0.650617,
		0.735853, 0.265937, 0.622734,
		-0.042699, -0.899598, 0.434627,
		14.653016, 18.171854, 17.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.327506, 18.633089, 17.957489>,  <14.682905, 18.801573, 17.639067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.327506, 18.633089, 17.957489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.165004, 18.277071, 17.874760>,  <15.067502, 18.063459, 17.825123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.165004, 18.277071, 17.874760>,  <15.327506, 18.633089, 17.957489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165004, 18.277071, 17.874760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617726, -0.100727, -0.779916,
		0.673328, -0.444604, 0.590725,
		-0.406255, -0.890046, -0.206821,
		15.043127, 18.010057, 17.812714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891925, 18.113094, 17.809835>,  <15.327506, 18.633089, 17.957489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891925, 18.113094, 17.809835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.572425, 17.926044, 17.658401>,  <15.380725, 17.813814, 17.567541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.572425, 17.926044, 17.658401>,  <15.891925, 18.113094, 17.809835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572425, 17.926044, 17.658401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535059, -0.264322, -0.802400,
		0.275154, -0.843482, 0.461334,
		-0.798751, -0.467624, -0.378583,
		15.332800, 17.785757, 17.544827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401426, 17.606018, 17.691116>,  <15.891925, 18.113094, 17.809835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401426, 17.606018, 17.691116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.801176, 17.595711, 17.700790>,  <17.041027, 17.589527, 17.706594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.801176, 17.595711, 17.700790>,  <16.401426, 17.606018, 17.691116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801176, 17.595711, 17.700790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003535, 0.608035, 0.793902,
		-0.035162, -0.793492, 0.607564,
		0.999376, -0.025768, 0.024185,
		17.100988, 17.587980, 17.708046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584442, 17.307306, 18.343605>,  <16.401426, 17.606018, 17.691116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584442, 17.307306, 18.343605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.884447, 17.524023, 18.191847>,  <17.064451, 17.654053, 18.100792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.884447, 17.524023, 18.191847>,  <16.584442, 17.307306, 18.343605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884447, 17.524023, 18.191847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040556, 0.534854, 0.843971,
		0.660179, -0.648375, 0.379174,
		0.750013, 0.541794, -0.379395,
		17.109451, 17.686562, 18.078028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028522, 17.387371, 18.873096>,  <16.584442, 17.307306, 18.343605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028522, 17.387371, 18.873096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.129051, 17.661972, 18.600170>,  <17.189369, 17.826733, 18.436415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.129051, 17.661972, 18.600170>,  <17.028522, 17.387371, 18.873096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129051, 17.661972, 18.600170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059353, 0.692683, 0.718796,
		0.966082, -0.221148, 0.133341,
		0.251323, 0.686502, -0.682314,
		17.204449, 17.867922, 18.395475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668768, 17.578680, 19.137419>,  <17.028522, 17.387371, 18.873096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668768, 17.578680, 19.137419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478489, 17.837723, 18.899319>,  <17.364323, 17.993149, 18.756458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478489, 17.837723, 18.899319>,  <17.668768, 17.578680, 19.137419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478489, 17.837723, 18.899319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042167, 0.692730, 0.719963,
		0.878599, 0.317383, -0.356836,
		-0.475696, 0.647606, -0.595248,
		17.335781, 18.032005, 18.720745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898893, 18.275110, 19.333881>,  <17.668768, 17.578680, 19.137419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898893, 18.275110, 19.333881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.567064, 18.368896, 19.131166>,  <17.367968, 18.425169, 19.009537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.567064, 18.368896, 19.131166>,  <17.898893, 18.275110, 19.333881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567064, 18.368896, 19.131166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286701, 0.599972, 0.746884,
		0.479180, 0.764891, -0.430498,
		-0.829572, 0.234467, -0.506790,
		17.318193, 18.439238, 18.979130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757877, 18.930597, 19.559694>,  <17.898893, 18.275110, 19.333881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757877, 18.930597, 19.559694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.405678, 18.799301, 19.422884>,  <17.194359, 18.720524, 19.340797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.405678, 18.799301, 19.422884>,  <17.757877, 18.930597, 19.559694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405678, 18.799301, 19.422884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458825, 0.408694, 0.788955,
		-0.119183, 0.851603, -0.510459,
		-0.880497, -0.328241, -0.342027,
		17.141529, 18.700829, 19.320276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325312, 19.450642, 19.755123>,  <17.757877, 18.930597, 19.559694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325312, 19.450642, 19.755123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057564, 19.165096, 19.672815>,  <16.896915, 18.993769, 19.623430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057564, 19.165096, 19.672815>,  <17.325312, 19.450642, 19.755123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057564, 19.165096, 19.672815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615165, 0.377282, 0.692265,
		-0.416549, 0.589965, -0.691685,
		-0.669372, -0.713863, -0.205769,
		16.856752, 18.950937, 19.611084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563730, 19.809704, 19.625742>,  <17.325312, 19.450642, 19.755123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563730, 19.809704, 19.625742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.545710, 19.425690, 19.736231>,  <16.534897, 19.195280, 19.802525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.545710, 19.425690, 19.736231>,  <16.563730, 19.809704, 19.625742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545710, 19.425690, 19.736231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552175, 0.254356, 0.793981,
		-0.832510, -0.116754, -0.541567,
		-0.045051, -0.960037, 0.276222,
		16.532194, 19.137678, 19.819098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833711, 19.786676, 19.838135>,  <16.563730, 19.809704, 19.625742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833711, 19.786676, 19.838135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.004347, 19.452019, 19.975567>,  <16.106728, 19.251225, 20.058025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.004347, 19.452019, 19.975567>,  <15.833711, 19.786676, 19.838135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004347, 19.452019, 19.975567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552091, 0.060015, 0.831621,
		-0.716392, -0.544447, -0.436303,
		0.426589, -0.836645, 0.343579,
		16.132324, 19.201025, 20.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235095, 19.216228, 19.950283>,  <15.833711, 19.786676, 19.838135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235095, 19.216228, 19.950283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.533494, 19.140131, 20.205563>,  <15.712533, 19.094473, 20.358730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.533494, 19.140131, 20.205563>,  <15.235095, 19.216228, 19.950283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.533494, 19.140131, 20.205563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587966, 0.261838, 0.765335,
		-0.312705, -0.946175, 0.083472,
		0.745997, -0.190246, 0.638197,
		15.757293, 19.083057, 20.397022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040421, 18.649090, 20.539753>,  <15.235095, 19.216228, 19.950283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040421, 18.649090, 20.539753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.334316, 18.857414, 20.713614>,  <15.510653, 18.982409, 20.817930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.334316, 18.857414, 20.713614>,  <15.040421, 18.649090, 20.539753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334316, 18.857414, 20.713614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558137, 0.099961, 0.823706,
		0.385547, -0.847800, 0.364128,
		0.734736, 0.520810, 0.434649,
		15.554737, 19.013657, 20.844007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927637, 18.531195, 21.179699>,  <15.040421, 18.649090, 20.539753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927637, 18.531195, 21.179699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187328, 18.830572, 21.233860>,  <15.343143, 19.010199, 21.266357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187328, 18.830572, 21.233860>,  <14.927637, 18.531195, 21.179699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187328, 18.830572, 21.233860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440470, 0.224835, 0.869158,
		0.620073, -0.623922, 0.475637,
		0.649227, 0.748445, 0.135405,
		15.382096, 19.055105, 21.274481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272164, 18.448112, 21.818428>,  <14.927637, 18.531195, 21.179699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272164, 18.448112, 21.818428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299736, 18.837410, 21.730753>,  <15.316279, 19.070990, 21.678148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299736, 18.837410, 21.730753>,  <15.272164, 18.448112, 21.818428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299736, 18.837410, 21.730753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362039, 0.229135, 0.903562,
		0.929611, 0.017073, 0.368147,
		0.068929, 0.973245, -0.219187,
		15.320415, 19.129383, 21.664997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699372, 18.692513, 22.254372>,  <15.272164, 18.448112, 21.818428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699372, 18.692513, 22.254372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.487471, 19.013718, 22.145170>,  <15.360330, 19.206440, 22.079649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.487471, 19.013718, 22.145170>,  <15.699372, 18.692513, 22.254372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.487471, 19.013718, 22.145170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246970, 0.161885, 0.955405,
		0.811397, 0.573554, 0.112560,
		-0.529755, 0.803012, -0.273004,
		15.328545, 19.254622, 22.063269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898728, 19.236811, 22.600168>,  <15.699372, 18.692513, 22.254372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898728, 19.236811, 22.600168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.569677, 19.431076, 22.481905>,  <15.372247, 19.547636, 22.410948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.569677, 19.431076, 22.481905>,  <15.898728, 19.236811, 22.600168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569677, 19.431076, 22.481905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027936, 0.484839, 0.874157,
		0.567893, 0.727366, -0.385274,
		-0.822628, 0.485665, -0.295657,
		15.322889, 19.576775, 22.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924061, 19.920477, 22.868097>,  <15.898728, 19.236811, 22.600168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924061, 19.920477, 22.868097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.532457, 19.870438, 22.803730>,  <15.297496, 19.840414, 22.765110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.532457, 19.870438, 22.803730>,  <15.924061, 19.920477, 22.868097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532457, 19.870438, 22.803730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202934, 0.524552, 0.826839,
		-0.019028, 0.842138, -0.538927,
		-0.979007, -0.125100, -0.160917,
		15.238755, 19.832909, 22.755455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598982, 20.596714, 22.868212>,  <15.924061, 19.920477, 22.868097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598982, 20.596714, 22.868212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.303054, 20.342224, 22.955740>,  <15.125497, 20.189529, 23.008257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.303054, 20.342224, 22.955740>,  <15.598982, 20.596714, 22.868212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303054, 20.342224, 22.955740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278215, 0.585422, 0.761497,
		-0.612587, 0.502491, -0.610115,
		-0.739820, -0.636226, 0.218822,
		15.081108, 20.151356, 23.021387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991485, 20.978172, 22.934988>,  <15.598982, 20.596714, 22.868212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991485, 20.978172, 22.934988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.929129, 20.642626, 23.143604>,  <14.891715, 20.441298, 23.268774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.929129, 20.642626, 23.143604>,  <14.991485, 20.978172, 22.934988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929129, 20.642626, 23.143604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402835, 0.536082, 0.741849,
		-0.901899, -0.094447, -0.421495,
		-0.155890, -0.838865, 0.521539,
		14.882361, 20.390966, 23.300066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.297080, 21.050564, 23.241453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.450952, 20.736712, 23.435928>,  <14.543275, 20.548401, 23.552612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.450952, 20.736712, 23.435928>,  <14.297080, 21.050564, 23.241453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450952, 20.736712, 23.435928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464532, 0.290595, 0.836520,
		-0.797642, -0.547640, -0.252700,
		0.384679, -0.784630, 0.486187,
		14.566355, 20.501322, 23.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760515, 20.755152, 23.625540>,  <14.297080, 21.050564, 23.241453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760515, 20.755152, 23.625540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.090895, 20.624168, 23.809095>,  <14.289123, 20.545578, 23.919230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.090895, 20.624168, 23.809095>,  <13.760515, 20.755152, 23.625540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090895, 20.624168, 23.809095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376383, 0.285697, 0.881314,
		-0.419699, -0.900637, 0.112720,
		0.825947, -0.327460, 0.458891,
		14.338679, 20.525930, 23.946762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523627, 20.416185, 24.278658>,  <13.760515, 20.755152, 23.625540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523627, 20.416185, 24.278658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.904524, 20.527891, 24.328049>,  <14.133062, 20.594913, 24.357683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.904524, 20.527891, 24.328049>,  <13.523627, 20.416185, 24.278658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904524, 20.527891, 24.328049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273436, 0.599925, 0.751880,
		0.135895, -0.749735, 0.647634,
		0.952242, 0.279263, 0.123477,
		14.190197, 20.611670, 24.365091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629467, 20.314573, 24.963579>,  <13.523627, 20.416185, 24.278658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629467, 20.314573, 24.963579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.965917, 20.527239, 24.923891>,  <14.167787, 20.654839, 24.900078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.965917, 20.527239, 24.923891>,  <13.629467, 20.314573, 24.963579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965917, 20.527239, 24.923891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107780, 0.344547, 0.932561,
		0.529996, -0.773705, 0.347109,
		0.841123, 0.531666, -0.099218,
		14.218253, 20.686739, 24.894125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003657, 20.158827, 25.496786>,  <13.629467, 20.314573, 24.963579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003657, 20.158827, 25.496786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.171270, 20.502087, 25.378132>,  <14.271838, 20.708042, 25.306938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.171270, 20.502087, 25.378132>,  <14.003657, 20.158827, 25.496786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171270, 20.502087, 25.378132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123563, 0.377560, 0.917704,
		0.899524, -0.347894, 0.264245,
		0.419033, 0.858147, -0.296638,
		14.296980, 20.759531, 25.289141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453529, 20.360167, 26.099928>,  <14.003657, 20.158827, 25.496786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453529, 20.360167, 26.099928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.376868, 20.687391, 25.883024>,  <14.330872, 20.883726, 25.752882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.376868, 20.687391, 25.883024>,  <14.453529, 20.360167, 26.099928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376868, 20.687391, 25.883024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303911, 0.475882, 0.825333,
		0.933224, 0.322977, 0.157413,
		-0.191653, 0.818060, -0.542261,
		14.319372, 20.932810, 25.720346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856799, 20.918173, 26.301056>,  <14.453529, 20.360167, 26.099928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856799, 20.918173, 26.301056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518023, 21.075687, 26.158157>,  <14.314756, 21.170197, 26.072418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.518023, 21.075687, 26.158157>,  <14.856799, 20.918173, 26.301056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518023, 21.075687, 26.158157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180665, 0.418783, 0.889933,
		0.500050, 0.818263, -0.283541,
		-0.846941, 0.393785, -0.357244,
		14.263940, 21.193823, 26.050983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808024, 21.648510, 26.409693>,  <14.856799, 20.918173, 26.301056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808024, 21.648510, 26.409693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422944, 21.553968, 26.357012>,  <14.191896, 21.497244, 26.325403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422944, 21.553968, 26.357012>,  <14.808024, 21.648510, 26.409693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.422944, 21.553968, 26.357012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238785, 0.513262, 0.824345,
		-0.127242, 0.825045, -0.550555,
		-0.962700, -0.236356, -0.131700,
		14.134134, 21.483061, 26.317501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494487, 22.172726, 26.874506>,  <14.808024, 21.648510, 26.409693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494487, 22.172726, 26.874506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.204841, 21.913538, 26.780025>,  <14.031054, 21.758024, 26.723337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.204841, 21.913538, 26.780025>,  <14.494487, 22.172726, 26.874506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204841, 21.913538, 26.780025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464248, 0.204677, 0.861732,
		-0.510031, 0.733649, -0.449029,
		-0.724115, -0.647971, -0.236203,
		13.987606, 21.719147, 26.709164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989464, 22.470903, 27.169220>,  <14.494487, 22.172726, 26.874506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989464, 22.470903, 27.169220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.838696, 22.101097, 27.146589>,  <13.748236, 21.879213, 27.133011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.838696, 22.101097, 27.146589>,  <13.989464, 22.470903, 27.169220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.838696, 22.101097, 27.146589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383651, 0.100235, 0.918022,
		-0.843056, 0.367725, -0.392473,
		-0.376919, -0.924517, -0.056574,
		13.725620, 21.823742, 27.129618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335512, 22.490412, 27.482929>,  <13.989464, 22.470903, 27.169220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335512, 22.490412, 27.482929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428897, 22.101513, 27.488964>,  <13.484928, 21.868174, 27.492584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428897, 22.101513, 27.488964>,  <13.335512, 22.490412, 27.482929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428897, 22.101513, 27.488964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418879, -0.086559, 0.903907,
		-0.877517, -0.217347, -0.427462,
		0.233462, -0.972249, 0.015085,
		13.498936, 21.809837, 27.493490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844945, 22.237217, 27.885059>,  <13.335512, 22.490412, 27.482929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844945, 22.237217, 27.885059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.122167, 21.948875, 27.887808>,  <13.288500, 21.775871, 27.889456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.122167, 21.948875, 27.887808>,  <12.844945, 22.237217, 27.885059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122167, 21.948875, 27.887808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142893, -0.128029, 0.981422,
		-0.706581, -0.681162, -0.191736,
		0.693055, -0.720852, 0.006870,
		13.330083, 21.732620, 27.889870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647054, 21.709673, 28.286772>,  <12.844945, 22.237217, 27.885059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647054, 21.709673, 28.286772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.035349, 21.620871, 28.323387>,  <13.268326, 21.567589, 28.345356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.035349, 21.620871, 28.323387>,  <12.647054, 21.709673, 28.286772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035349, 21.620871, 28.323387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066601, 0.117328, 0.990857,
		-0.230718, -0.967960, 0.099109,
		0.970738, -0.222007, 0.091536,
		13.326571, 21.554268, 28.350847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762817, 21.429657, 29.012501>,  <12.647054, 21.709673, 28.286772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762817, 21.429657, 29.012501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.137806, 21.511488, 28.899864>,  <13.362800, 21.560587, 28.832283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.137806, 21.511488, 28.899864>,  <12.762817, 21.429657, 29.012501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137806, 21.511488, 28.899864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272348, 0.072613, 0.959455,
		0.216732, -0.976153, 0.012356,
		0.937472, 0.204580, -0.281591,
		13.419047, 21.572861, 28.815388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122231, 20.998936, 29.388382>,  <12.762817, 21.429657, 29.012501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122231, 20.998936, 29.388382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.386811, 21.276060, 29.273493>,  <13.545560, 21.442335, 29.204559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.386811, 21.276060, 29.273493>,  <13.122231, 20.998936, 29.388382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386811, 21.276060, 29.273493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465550, -0.079034, 0.881486,
		0.588001, -0.716777, -0.374815,
		0.661452, 0.692809, -0.287224,
		13.585247, 21.483902, 29.187326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.726835, 20.727581, 29.290064>,  <13.122231, 20.998936, 29.388382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.726835, 20.727581, 29.290064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.818796, 21.111994, 29.351460>,  <13.873973, 21.342642, 29.388296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.818796, 21.111994, 29.351460>,  <13.726835, 20.727581, 29.290064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.818796, 21.111994, 29.351460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512919, -0.253682, 0.820097,
		0.827078, -0.109816, -0.551255,
		0.229903, 0.961034, 0.153488,
		13.887767, 21.400305, 29.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.435015, 20.772308, 29.433205>,  <13.726835, 20.727581, 29.290064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.435015, 20.772308, 29.433205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.296051, 21.118591, 29.577345>,  <14.212673, 21.326363, 29.663830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.296051, 21.118591, 29.577345>,  <14.435015, 20.772308, 29.433205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296051, 21.118591, 29.577345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554166, -0.120456, 0.823644,
		0.756444, 0.485836, -0.437900,
		-0.347408, 0.865710, 0.360353,
		14.191829, 21.378304, 29.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959408, 21.068481, 29.771687>,  <14.435015, 20.772308, 29.433205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.959408, 21.068481, 29.771687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.630162, 21.218012, 29.942677>,  <14.432615, 21.307730, 30.045271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.630162, 21.218012, 29.942677>,  <14.959408, 21.068481, 29.771687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630162, 21.218012, 29.942677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396491, -0.160589, 0.903884,
		0.406544, 0.913490, -0.016036,
		-0.823114, 0.373827, 0.427477,
		14.383228, 21.330160, 30.070919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233949, 21.406305, 30.325760>,  <14.959408, 21.068481, 29.771687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233949, 21.406305, 30.325760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.849936, 21.383629, 30.435398>,  <14.619530, 21.370024, 30.501181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.849936, 21.383629, 30.435398>,  <15.233949, 21.406305, 30.325760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849936, 21.383629, 30.435398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279834, -0.215081, 0.935646,
		0.005910, 0.974949, 0.222348,
		-0.960030, -0.056691, 0.274095,
		14.561928, 21.366621, 30.517626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150914, 21.608427, 31.037991>,  <15.233949, 21.406305, 30.325760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.150914, 21.608427, 31.037991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.786141, 21.446386, 31.011852>,  <14.567278, 21.349161, 30.996170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.786141, 21.446386, 31.011852>,  <15.150914, 21.608427, 31.037991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786141, 21.446386, 31.011852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074102, -0.319211, 0.944782,
		-0.403593, 0.856735, 0.321119,
		-0.911933, -0.405103, -0.065345,
		14.512562, 21.324856, 30.992249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799906, 21.806690, 31.602310>,  <15.150914, 21.608427, 31.037991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799906, 21.806690, 31.602310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.596698, 21.480263, 31.492077>,  <14.474773, 21.284407, 31.425938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.596698, 21.480263, 31.492077>,  <14.799906, 21.806690, 31.602310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596698, 21.480263, 31.492077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051272, -0.348028, 0.936081,
		-0.859818, 0.461418, 0.218647,
		-0.508019, -0.816070, -0.275583,
		14.444292, 21.235441, 31.409403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345984, 21.621740, 32.124928>,  <14.799906, 21.806690, 31.602310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345984, 21.621740, 32.124928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.390849, 21.277254, 31.926645>,  <14.417768, 21.070562, 31.807676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.390849, 21.277254, 31.926645>,  <14.345984, 21.621740, 32.124928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390849, 21.277254, 31.926645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134217, -0.481151, 0.866302,
		-0.984584, -0.163700, 0.061622,
		0.112164, -0.861218, -0.495705,
		14.424499, 21.018888, 31.777933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.807731, 21.281445, 32.350414>,  <14.345984, 21.621740, 32.124928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.807731, 21.281445, 32.350414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.096516, 21.022652, 32.252285>,  <14.269787, 20.867376, 32.193409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.096516, 21.022652, 32.252285>,  <13.807731, 21.281445, 32.350414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.096516, 21.022652, 32.252285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210611, -0.132247, 0.968583,
		-0.659102, -0.750947, 0.040785,
		0.721961, -0.646984, -0.245322,
		14.313104, 20.828556, 32.178688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.266024, 21.505379, 31.965988>,  <13.807731, 21.281445, 32.350414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.266024, 21.505379, 31.965988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.034210, 21.235094, 32.148220>,  <12.895122, 21.072924, 32.257561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.034210, 21.235094, 32.148220>,  <13.266024, 21.505379, 31.965988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034210, 21.235094, 32.148220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553437, -0.084024, -0.828642,
		0.598203, -0.732361, -0.325269,
		-0.579534, -0.675712, 0.455579,
		12.860350, 21.032381, 32.284893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206911, 21.006502, 31.607424>,  <13.266024, 21.505379, 31.965988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206911, 21.006502, 31.607424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.871007, 20.935827, 31.812786>,  <12.669465, 20.893423, 31.936005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.871007, 20.935827, 31.812786>,  <13.206911, 21.006502, 31.607424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871007, 20.935827, 31.812786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429797, -0.361488, -0.827406,
		0.331781, -0.915483, 0.227624,
		-0.839759, -0.176686, 0.513407,
		12.619080, 20.882822, 31.966808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897579, 20.383633, 31.329466>,  <13.206911, 21.006502, 31.607424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897579, 20.383633, 31.329466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.595013, 20.520205, 31.552629>,  <12.413473, 20.602148, 31.686527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.595013, 20.520205, 31.552629>,  <12.897579, 20.383633, 31.329466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.595013, 20.520205, 31.552629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621878, -0.111023, -0.775204,
		-0.202740, -0.933326, 0.296309,
		-0.756415, 0.341433, 0.557906,
		12.368088, 20.622633, 31.720001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363831, 19.941095, 31.315748>,  <12.897579, 20.383633, 31.329466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363831, 19.941095, 31.315748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.184773, 20.288235, 31.401962>,  <12.077339, 20.496519, 31.453691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.184773, 20.288235, 31.401962>,  <12.363831, 19.941095, 31.315748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.184773, 20.288235, 31.401962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467305, -0.021535, -0.883834,
		-0.762392, -0.496362, 0.415190,
		-0.447643, 0.867848, 0.215535,
		12.050481, 20.548590, 31.466623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.607059, 19.878904, 31.204611>,  <12.363831, 19.941095, 31.315748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.607059, 19.878904, 31.204611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.724494, 20.258562, 31.159117>,  <11.794954, 20.486357, 31.131821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.724494, 20.258562, 31.159117>,  <11.607059, 19.878904, 31.204611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.724494, 20.258562, 31.159117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333025, -0.009974, -0.942865,
		-0.896048, 0.314688, 0.313160,
		0.293585, 0.949143, -0.113736,
		11.812570, 20.543304, 31.124996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.999226, 20.218552, 30.970037>,  <11.607059, 19.878904, 31.204611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.999226, 20.218552, 30.970037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302811, 20.459696, 30.871624>,  <11.484962, 20.604382, 30.812576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.302811, 20.459696, 30.871624>,  <10.999226, 20.218552, 30.970037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302811, 20.459696, 30.871624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359518, 0.072951, -0.930282,
		-0.542882, 0.794504, 0.272107,
		0.758964, 0.602861, -0.246035,
		11.530499, 20.640554, 30.797813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.726789, 20.723309, 30.515955>,  <10.999226, 20.218552, 30.970037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.726789, 20.723309, 30.515955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117477, 20.775284, 30.447685>,  <11.351891, 20.806469, 30.406723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117477, 20.775284, 30.447685>,  <10.726789, 20.723309, 30.515955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117477, 20.775284, 30.447685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173994, 0.014568, -0.984639,
		-0.125458, 0.991415, 0.036838,
		0.976722, 0.129940, -0.170672,
		11.410494, 20.814266, 30.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.804422, 21.240904, 30.109701>,  <10.726789, 20.723309, 30.515955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.804422, 21.240904, 30.109701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.150202, 21.056368, 30.029806>,  <11.357669, 20.945646, 29.981869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.150202, 21.056368, 30.029806>,  <10.804422, 21.240904, 30.109701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150202, 21.056368, 30.029806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171700, 0.102483, -0.979804,
		0.472493, 0.881284, 0.009379,
		0.864447, -0.461341, -0.199739,
		11.409536, 20.917965, 29.969885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.113194, 21.625883, 29.450127>,  <10.804422, 21.240904, 30.109701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.113194, 21.625883, 29.450127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290320, 21.269585, 29.491083>,  <11.396596, 21.055805, 29.515657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290320, 21.269585, 29.491083>,  <11.113194, 21.625883, 29.450127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290320, 21.269585, 29.491083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092507, -0.158978, -0.982939,
		0.891828, 0.425787, -0.152799,
		0.442814, -0.890748, 0.102393,
		11.423164, 21.002361, 29.521801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542386, 21.681759, 28.936165>,  <11.113194, 21.625883, 29.450127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542386, 21.681759, 28.936165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.511248, 21.291941, 29.020258>,  <11.492565, 21.058050, 29.070713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.511248, 21.291941, 29.020258>,  <11.542386, 21.681759, 28.936165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511248, 21.291941, 29.020258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162451, -0.220452, -0.961775,
		0.983641, -0.040717, 0.175477,
		-0.077845, -0.974548, 0.210231,
		11.487894, 20.999577, 29.083328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134154, 21.345400, 28.661198>,  <11.542386, 21.681759, 28.936165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134154, 21.345400, 28.661198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.848296, 21.067623, 28.694752>,  <11.676782, 20.900957, 28.714884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.848296, 21.067623, 28.694752>,  <12.134154, 21.345400, 28.661198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848296, 21.067623, 28.694752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142480, -0.261923, -0.954513,
		0.684823, -0.670186, 0.286126,
		-0.714644, -0.694440, 0.083883,
		11.633903, 20.859291, 28.719917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.357894, 20.933929, 28.303032>,  <12.134154, 21.345400, 28.661198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.357894, 20.933929, 28.303032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.979995, 20.806330, 28.333210>,  <11.753256, 20.729769, 28.351316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.979995, 20.806330, 28.333210>,  <12.357894, 20.933929, 28.303032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.979995, 20.806330, 28.333210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028912, -0.310347, -0.950184,
		0.326523, -0.895502, 0.302423,
		-0.944747, -0.319000, 0.075444,
		11.696570, 20.710630, 28.355843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361578, 20.232225, 28.025019>,  <12.357894, 20.933929, 28.303032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361578, 20.232225, 28.025019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.995206, 20.387249, 27.983318>,  <11.775382, 20.480263, 27.958298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.995206, 20.387249, 27.983318>,  <12.361578, 20.232225, 28.025019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.995206, 20.387249, 27.983318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039373, -0.345280, -0.937674,
		-0.399401, -0.854739, 0.331512,
		-0.915930, 0.387560, -0.104252,
		11.720427, 20.503517, 27.952044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.057067, 19.824532, 27.499105>,  <12.361578, 20.232225, 28.025019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.057067, 19.824532, 27.499105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.808270, 20.137051, 27.519878>,  <11.658991, 20.324562, 27.532341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.808270, 20.137051, 27.519878>,  <12.057067, 19.824532, 27.499105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808270, 20.137051, 27.519878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188894, -0.085355, -0.978281,
		-0.759897, -0.618294, 0.200673,
		-0.621994, 0.781298, 0.051931,
		11.621672, 20.371441, 27.535458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787361, 19.782080, 26.850286>,  <12.057067, 19.824532, 27.499105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787361, 19.782080, 26.850286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.654607, 20.140577, 26.967999>,  <11.574954, 20.355675, 27.038626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.654607, 20.140577, 26.967999>,  <11.787361, 19.782080, 26.850286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654607, 20.140577, 26.967999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235041, 0.223558, -0.945927,
		-0.913569, -0.383107, 0.136458,
		-0.331885, 0.896243, 0.294282,
		11.555041, 20.409451, 27.056284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162384, 19.972580, 26.602686>,  <11.787361, 19.782080, 26.850286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162384, 19.972580, 26.602686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.307377, 20.337814, 26.677393>,  <11.394373, 20.556955, 26.722218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.307377, 20.337814, 26.677393>,  <11.162384, 19.972580, 26.602686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307377, 20.337814, 26.677393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320413, 0.310274, -0.895023,
		-0.875181, 0.264587, 0.405034,
		0.362483, 0.913085, 0.186769,
		11.416121, 20.611740, 26.733423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605372, 20.465012, 26.398966>,  <11.162384, 19.972580, 26.602686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605372, 20.465012, 26.398966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.962695, 20.643682, 26.379042>,  <11.177089, 20.750885, 26.367088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.962695, 20.643682, 26.379042>,  <10.605372, 20.465012, 26.398966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.962695, 20.643682, 26.379042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114748, 0.119513, -0.986179,
		-0.434552, 0.886676, 0.158017,
		0.893307, 0.446678, -0.049810,
		11.230687, 20.777685, 26.364100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.580782, 21.077549, 25.920435>,  <10.605372, 20.465012, 26.398966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.580782, 21.077549, 25.920435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.967464, 20.976971, 25.939415>,  <11.199474, 20.916624, 25.950804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.967464, 20.976971, 25.939415>,  <10.580782, 21.077549, 25.920435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967464, 20.976971, 25.939415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016279, -0.124624, -0.992070,
		0.255366, 0.959814, -0.116382,
		0.966707, -0.251447, 0.047449,
		11.257477, 20.901537, 25.953650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.869744, 21.466412, 25.389065>,  <10.580782, 21.077549, 25.920435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.869744, 21.466412, 25.389065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128802, 21.168798, 25.454758>,  <11.284237, 20.990231, 25.494173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128802, 21.168798, 25.454758>,  <10.869744, 21.466412, 25.389065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.128802, 21.168798, 25.454758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266496, 0.019267, -0.963644,
		0.713818, 0.667866, 0.210760,
		0.647645, -0.744032, 0.164231,
		11.323096, 20.945589, 25.504026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.220039, 21.492041, 24.747236>,  <10.869744, 21.466412, 25.389065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.220039, 21.492041, 24.747236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.378800, 21.152975, 24.888054>,  <11.474057, 20.949535, 24.972546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.378800, 21.152975, 24.888054>,  <11.220039, 21.492041, 24.747236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378800, 21.152975, 24.888054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305411, -0.239729, -0.921550,
		0.865559, 0.473284, 0.163737,
		0.396902, -0.847663, 0.352046,
		11.497871, 20.898676, 24.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930355, 21.388603, 24.462240>,  <11.220039, 21.492041, 24.747236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930355, 21.388603, 24.462240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.780844, 21.029604, 24.555870>,  <11.691137, 20.814205, 24.612047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.780844, 21.029604, 24.555870>,  <11.930355, 21.388603, 24.462240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.780844, 21.029604, 24.555870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134277, -0.302067, -0.943782,
		0.917747, -0.321334, 0.233419,
		-0.373777, -0.897497, 0.234073,
		11.668711, 20.760355, 24.626091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.197548, 26.099792, 6.251065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.031055, 26.258314, 5.923725>,  <18.931160, 26.353426, 5.727321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.031055, 26.258314, 5.923725>,  <19.197548, 26.099792, 6.251065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031055, 26.258314, 5.923725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586635, 0.570598, 0.574698,
		0.694703, 0.719279, -0.005016,
		-0.416230, 0.396302, -0.818350,
		18.906187, 26.377205, 5.678220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344601, 25.770834, 6.855260>,  <19.197548, 26.099792, 6.251065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344601, 25.770834, 6.855260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.589655, 25.802479, 6.540701>,  <19.736687, 25.821465, 6.351966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.589655, 25.802479, 6.540701>,  <19.344601, 25.770834, 6.855260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589655, 25.802479, 6.540701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135948, 0.969601, 0.203450,
		0.778587, -0.231550, 0.583256,
		0.612634, 0.079111, -0.786397,
		19.773445, 25.826212, 6.304782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971003, 26.141760, 7.075085>,  <19.344601, 25.770834, 6.855260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971003, 26.141760, 7.075085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.925720, 26.202244, 6.682285>,  <19.898550, 26.238535, 6.446606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.925720, 26.202244, 6.682285>,  <19.971003, 26.141760, 7.075085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925720, 26.202244, 6.682285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322331, 0.940485, 0.107658,
		0.939833, -0.304341, -0.155208,
		-0.113206, 0.151210, -0.981998,
		19.891758, 26.247606, 6.387686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779383, 26.689024, 7.588086>,  <19.971003, 26.141760, 7.075085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779383, 26.689024, 7.588086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.467997, 26.743034, 7.342889>,  <19.281164, 26.775440, 7.195771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.467997, 26.743034, 7.342889>,  <19.779383, 26.689024, 7.588086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467997, 26.743034, 7.342889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223086, 0.853311, 0.471268,
		0.586705, 0.503616, -0.634152,
		-0.778466, 0.135025, -0.612991,
		19.234457, 26.783543, 7.158992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917660, 26.194002, 8.218363>,  <19.779383, 26.689024, 7.588086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917660, 26.194002, 8.218363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.563389, 26.032347, 8.309793>,  <19.350826, 25.935354, 8.364652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.563389, 26.032347, 8.309793>,  <19.917660, 26.194002, 8.218363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563389, 26.032347, 8.309793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407297, -0.439924, 0.800360,
		-0.222901, 0.801959, 0.554235,
		-0.885678, -0.404139, 0.228576,
		19.297686, 25.911104, 8.378366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808228, 26.366945, 8.836617>,  <19.917660, 26.194002, 8.218363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.808228, 26.366945, 8.836617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.628654, 26.020092, 8.750323>,  <19.520910, 25.811981, 8.698547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.628654, 26.020092, 8.750323>,  <19.808228, 26.366945, 8.836617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628654, 26.020092, 8.750323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452593, -0.428829, 0.781834,
		-0.770466, 0.253352, 0.584974,
		-0.448933, -0.867132, -0.215733,
		19.493975, 25.759953, 8.685603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544060, 26.036915, 9.454478>,  <19.808228, 26.366945, 8.836617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544060, 26.036915, 9.454478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.671898, 25.781818, 9.174151>,  <19.748602, 25.628761, 9.005956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.671898, 25.781818, 9.174151>,  <19.544060, 26.036915, 9.454478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671898, 25.781818, 9.174151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470505, -0.535178, 0.701577,
		-0.822486, -0.553959, 0.129019,
		0.319596, -0.637741, -0.700817,
		19.767776, 25.590496, 8.963906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166542, 25.362038, 9.577649>,  <19.544060, 26.036915, 9.454478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166542, 25.362038, 9.577649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.533669, 25.323057, 9.423704>,  <19.753944, 25.299669, 9.331337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.533669, 25.323057, 9.423704>,  <19.166542, 25.362038, 9.577649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533669, 25.323057, 9.423704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222251, -0.677148, 0.701481,
		-0.328968, -0.729366, -0.599839,
		0.917815, -0.097450, -0.384862,
		19.809013, 25.293821, 9.308246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502253, 24.688805, 9.862210>,  <19.166542, 25.362038, 9.577649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502253, 24.688805, 9.862210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827435, 24.846588, 9.690860>,  <20.022545, 24.941257, 9.588050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827435, 24.846588, 9.690860>,  <19.502253, 24.688805, 9.862210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827435, 24.846588, 9.690860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578202, -0.459402, 0.674264,
		0.069171, -0.795835, -0.601549,
		0.812956, 0.394457, -0.428376,
		20.071321, 24.964926, 9.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859053, 24.134459, 9.587009>,  <19.502253, 24.688805, 9.862210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859053, 24.134459, 9.587009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.110632, 24.435617, 9.664540>,  <20.261580, 24.616314, 9.711059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.110632, 24.435617, 9.664540>,  <19.859053, 24.134459, 9.587009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.110632, 24.435617, 9.664540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503041, -0.584193, 0.636921,
		0.592770, -0.303087, -0.746165,
		0.628947, 0.752899, 0.193827,
		20.299316, 24.661488, 9.722689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492056, 23.788673, 9.708314>,  <19.859053, 24.134459, 9.587009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492056, 23.788673, 9.708314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567587, 24.149252, 9.864126>,  <20.612906, 24.365601, 9.957614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567587, 24.149252, 9.864126>,  <20.492056, 23.788673, 9.708314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567587, 24.149252, 9.864126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457043, -0.431760, 0.777621,
		0.869169, 0.031195, -0.493529,
		0.188828, 0.901449, 0.389531,
		20.624235, 24.419687, 9.980986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275379, 23.979828, 9.712938>,  <20.492056, 23.788673, 9.708314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275379, 23.979828, 9.712938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.083424, 24.183483, 9.998732>,  <20.968250, 24.305677, 10.170207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.083424, 24.183483, 9.998732>,  <21.275379, 23.979828, 9.712938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083424, 24.183483, 9.998732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487390, -0.522440, 0.699648,
		0.729492, 0.683984, 0.002563,
		-0.479888, 0.509139, 0.714483,
		20.939457, 24.336226, 10.213077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822636, 24.150875, 10.282078>,  <21.275379, 23.979828, 9.712938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822636, 24.150875, 10.282078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.450203, 24.194616, 10.421293>,  <21.226744, 24.220861, 10.504823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.450203, 24.194616, 10.421293>,  <21.822636, 24.150875, 10.282078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.450203, 24.194616, 10.421293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261170, -0.466300, 0.845195,
		0.254715, 0.877842, 0.405604,
		-0.931081, 0.109352, 0.348039,
		21.170879, 24.227423, 10.525705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991503, 24.296612, 10.969486>,  <21.822636, 24.150875, 10.282078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991503, 24.296612, 10.969486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610538, 24.175127, 10.979868>,  <21.381960, 24.102236, 10.986097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610538, 24.175127, 10.979868>,  <21.991503, 24.296612, 10.969486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610538, 24.175127, 10.979868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138868, -0.356521, 0.923909,
		-0.271348, 0.883545, 0.381730,
		-0.952411, -0.303711, 0.025954,
		21.324816, 24.084013, 10.987655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898140, 24.423027, 11.748656>,  <21.991503, 24.296612, 10.969486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898140, 24.423027, 11.748656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599751, 24.188419, 11.622468>,  <21.420717, 24.047655, 11.546755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599751, 24.188419, 11.622468>,  <21.898140, 24.423027, 11.748656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599751, 24.188419, 11.622468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219090, -0.231203, 0.947916,
		-0.628907, 0.776236, 0.043971,
		-0.745973, -0.586517, -0.315471,
		21.375959, 24.012465, 11.527826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341066, 24.540873, 12.246687>,  <21.898140, 24.423027, 11.748656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341066, 24.540873, 12.246687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259905, 24.190361, 12.071889>,  <21.211208, 23.980055, 11.967010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259905, 24.190361, 12.071889>,  <21.341066, 24.540873, 12.246687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259905, 24.190361, 12.071889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484370, -0.298034, 0.822533,
		-0.851008, 0.378564, -0.363970,
		-0.202906, -0.876279, -0.436995,
		21.199034, 23.927477, 11.940790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735691, 24.371782, 12.617817>,  <21.341066, 24.540873, 12.246687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735691, 24.371782, 12.617817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827284, 24.032574, 12.426641>,  <20.882240, 23.829048, 12.311936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827284, 24.032574, 12.426641>,  <20.735691, 24.371782, 12.617817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827284, 24.032574, 12.426641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430405, -0.528585, 0.731676,
		-0.873108, 0.038165, -0.486030,
		0.228984, -0.848022, -0.477938,
		20.895979, 23.778168, 12.283260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.171299, 23.944071, 12.688919>,  <20.735691, 24.371782, 12.617817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.171299, 23.944071, 12.688919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.474209, 23.698519, 12.599761>,  <20.655954, 23.551188, 12.546266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.474209, 23.698519, 12.599761>,  <20.171299, 23.944071, 12.688919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474209, 23.698519, 12.599761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293189, -0.624516, 0.723893,
		-0.583585, -0.482837, -0.652914,
		0.757277, -0.613880, -0.222895,
		20.701391, 23.514355, 12.532892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916519, 23.229548, 12.544195>,  <20.171299, 23.944071, 12.688919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916519, 23.229548, 12.544195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.298038, 23.193785, 12.658928>,  <20.526951, 23.172327, 12.727767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.298038, 23.193785, 12.658928>,  <19.916519, 23.229548, 12.544195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.298038, 23.193785, 12.658928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268387, -0.682643, 0.679682,
		0.135035, -0.725262, -0.675100,
		0.953800, -0.089407, 0.286831,
		20.584179, 23.166962, 12.744977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.012070, 22.538908, 12.655079>,  <19.916519, 23.229548, 12.544195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.012070, 22.538908, 12.655079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.331564, 22.668615, 12.857807>,  <20.523260, 22.746441, 12.979445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.331564, 22.668615, 12.857807>,  <20.012070, 22.538908, 12.655079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.331564, 22.668615, 12.857807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089663, -0.768788, 0.633187,
		0.594962, -0.551193, -0.584985,
		0.798737, 0.324270, 0.506821,
		20.571186, 22.765896, 13.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462816, 21.961580, 12.814073>,  <20.012070, 22.538908, 12.655079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462816, 21.961580, 12.814073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.585346, 22.242889, 13.070687>,  <20.658865, 22.411674, 13.224656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.585346, 22.242889, 13.070687>,  <20.462816, 21.961580, 12.814073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585346, 22.242889, 13.070687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129018, -0.698390, 0.703993,
		0.943143, -0.132881, -0.304670,
		0.306325, 0.703274, 0.641537,
		20.677244, 22.453871, 13.263148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.146399, 21.760674, 13.045404>,  <20.462816, 21.961580, 12.814073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.146399, 21.760674, 13.045404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.026089, 22.015179, 13.329576>,  <20.953903, 22.167881, 13.500078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.026089, 22.015179, 13.329576>,  <21.146399, 21.760674, 13.045404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026089, 22.015179, 13.329576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174140, -0.695757, 0.696848,
		0.937662, 0.333308, 0.098467,
		-0.300774, 0.636261, 0.710427,
		20.935856, 22.206057, 13.542704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684893, 21.847849, 13.520917>,  <21.146399, 21.760674, 13.045404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684893, 21.847849, 13.520917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.379290, 21.923599, 13.767632>,  <21.195927, 21.969049, 13.915661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.379290, 21.923599, 13.767632>,  <21.684893, 21.847849, 13.520917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379290, 21.923599, 13.767632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284339, -0.759294, 0.585340,
		0.579172, 0.622582, 0.526261,
		-0.764010, 0.189376, 0.616787,
		21.150087, 21.980412, 13.952667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897173, 21.702881, 14.216680>,  <21.684893, 21.847849, 13.520917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897173, 21.702881, 14.216680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504929, 21.741976, 14.284621>,  <21.269583, 21.765432, 14.325386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504929, 21.741976, 14.284621>,  <21.897173, 21.702881, 14.216680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504929, 21.741976, 14.284621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067636, -0.644687, 0.761449,
		0.183924, 0.758173, 0.625576,
		-0.980611, 0.097738, 0.169853,
		21.210745, 21.771297, 14.335577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.819508, 21.691452, 14.944738>,  <21.897173, 21.702881, 14.216680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.819508, 21.691452, 14.944738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469906, 21.577118, 14.787556>,  <21.260145, 21.508516, 14.693246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469906, 21.577118, 14.787556>,  <21.819508, 21.691452, 14.944738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469906, 21.577118, 14.787556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042607, -0.760493, 0.647947,
		-0.484049, 0.583051, 0.652494,
		-0.874003, -0.285838, -0.392958,
		21.207705, 21.491367, 14.669668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433741, 21.751759, 15.539075>,  <21.819508, 21.691452, 14.944738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433741, 21.751759, 15.539075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.229578, 21.539886, 15.268100>,  <21.107080, 21.412764, 15.105515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.229578, 21.539886, 15.268100>,  <21.433741, 21.751759, 15.539075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.229578, 21.539886, 15.268100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036192, -0.773851, 0.632333,
		-0.859171, 0.347265, 0.375808,
		-0.510407, -0.529681, -0.677438,
		21.076456, 21.380981, 15.064868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947422, 21.450901, 15.934129>,  <21.433741, 21.751759, 15.539075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947422, 21.450901, 15.934129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.010176, 21.224865, 15.610138>,  <21.047827, 21.089243, 15.415744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.010176, 21.224865, 15.610138>,  <20.947422, 21.450901, 15.934129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010176, 21.224865, 15.610138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053509, -0.814065, 0.578304,
		-0.986167, -0.134067, -0.097475,
		0.156883, -0.565088, -0.809977,
		21.057241, 21.055338, 15.367145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745420, 20.825085, 16.127771>,  <20.947422, 21.450901, 15.934129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745420, 20.825085, 16.127771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.903111, 20.677753, 15.790981>,  <20.997725, 20.589354, 15.588908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.903111, 20.677753, 15.790981>,  <20.745420, 20.825085, 16.127771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903111, 20.677753, 15.790981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155209, -0.876326, 0.456029,
		-0.905812, -0.310460, -0.288303,
		0.394227, -0.368330, -0.841973,
		21.021378, 20.567255, 15.538389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372395, 20.245625, 15.974792>,  <20.745420, 20.825085, 16.127771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372395, 20.245625, 15.974792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.720446, 20.207283, 15.781427>,  <20.929277, 20.184278, 15.665409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.720446, 20.207283, 15.781427>,  <20.372395, 20.245625, 15.974792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.720446, 20.207283, 15.781427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145268, -0.887433, 0.437448,
		-0.470927, -0.450860, -0.758257,
		0.870130, -0.095855, -0.483411,
		20.981485, 20.178526, 15.636404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337408, 19.606041, 15.580891>,  <20.372395, 20.245625, 15.974792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337408, 19.606041, 15.580891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714321, 19.702940, 15.673340>,  <20.940470, 19.761080, 15.728809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714321, 19.702940, 15.673340>,  <20.337408, 19.606041, 15.580891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714321, 19.702940, 15.673340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114480, -0.881802, 0.457514,
		0.314636, -0.404649, -0.858640,
		0.942284, 0.242248, 0.231123,
		20.997005, 19.775614, 15.742677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612328, 18.910898, 15.570546>,  <20.337408, 19.606041, 15.580891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612328, 18.910898, 15.570546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.893045, 19.142569, 15.736455>,  <21.061476, 19.281570, 15.836000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.893045, 19.142569, 15.736455>,  <20.612328, 18.910898, 15.570546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893045, 19.142569, 15.736455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411280, -0.804812, 0.427933,
		0.581662, -0.129734, -0.803018,
		0.701796, 0.579178, 0.414772,
		21.103584, 19.316322, 15.860887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335068, 18.596159, 15.406236>,  <20.612328, 18.910898, 15.570546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335068, 18.596159, 15.406236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357063, 18.832514, 15.728187>,  <21.370260, 18.974327, 15.921357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357063, 18.832514, 15.728187>,  <21.335068, 18.596159, 15.406236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357063, 18.832514, 15.728187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698971, -0.598425, 0.391570,
		0.713033, 0.541053, -0.445922,
		0.054991, 0.590888, 0.804877,
		21.373560, 19.009781, 15.969649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998665, 18.960739, 15.409466>,  <21.335068, 18.596159, 15.406236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998665, 18.960739, 15.409466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.829618, 18.863482, 15.758699>,  <21.728189, 18.805126, 15.968240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.829618, 18.863482, 15.758699>,  <21.998665, 18.960739, 15.409466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829618, 18.863482, 15.758699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803211, -0.546718, 0.236540,
		0.419817, 0.801236, 0.426350,
		-0.422618, -0.243146, 0.873083,
		21.702833, 18.790539, 16.020624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569353, 18.970821, 15.772741>,  <21.998665, 18.960739, 15.409466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569353, 18.970821, 15.772741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282801, 18.781519, 15.977807>,  <22.110868, 18.667938, 16.100845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282801, 18.781519, 15.977807>,  <22.569353, 18.970821, 15.772741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282801, 18.781519, 15.977807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680526, -0.636015, 0.363826,
		0.153879, 0.609520, 0.777693,
		-0.716383, -0.473256, 0.512663,
		22.067886, 18.639542, 16.131605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128962, 18.919580, 15.474103>,  <22.569353, 18.970821, 15.772741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128962, 18.919580, 15.474103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.398226, 18.795908, 15.205399>,  <23.559784, 18.721704, 15.044176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.398226, 18.795908, 15.205399>,  <23.128962, 18.919580, 15.474103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.398226, 18.795908, 15.205399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032680, 0.895077, -0.444712,
		0.738774, 0.321315, 0.592427,
		0.673160, -0.309181, -0.671760,
		23.600174, 18.703154, 15.003870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517710, 19.467978, 15.386559>,  <23.128962, 18.919580, 15.474103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517710, 19.467978, 15.386559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.598442, 19.256071, 15.057048>,  <23.646881, 19.128927, 14.859341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.598442, 19.256071, 15.057048>,  <23.517710, 19.467978, 15.386559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.598442, 19.256071, 15.057048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090302, 0.827440, -0.554246,
		0.975249, 0.186252, 0.119162,
		0.201829, -0.529767, -0.823779,
		23.658991, 19.097141, 14.809915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.856382, 19.888180, 14.990419>,  <23.517710, 19.467978, 15.386559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.856382, 19.888180, 14.990419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.765701, 19.609894, 14.717776>,  <23.711292, 19.442923, 14.554191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.765701, 19.609894, 14.717776>,  <23.856382, 19.888180, 14.990419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.765701, 19.609894, 14.717776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215519, 0.718313, -0.661497,
		0.949820, -0.003062, -0.312781,
		-0.226701, -0.695713, -0.681608,
		23.697691, 19.401180, 14.513294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207077, 20.092819, 14.357183>,  <23.856382, 19.888180, 14.990419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207077, 20.092819, 14.357183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917728, 19.838755, 14.248885>,  <23.744120, 19.686316, 14.183906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917728, 19.838755, 14.248885>,  <24.207077, 20.092819, 14.357183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917728, 19.838755, 14.248885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189211, 0.559471, -0.806964,
		0.664026, -0.532508, -0.524885,
		-0.723373, -0.635159, -0.270746,
		23.700716, 19.648207, 14.167661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350849, 19.793207, 13.670059>,  <24.207077, 20.092819, 14.357183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350849, 19.793207, 13.670059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952606, 19.762827, 13.691958>,  <23.713661, 19.744598, 13.705098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952606, 19.762827, 13.691958>,  <24.350849, 19.793207, 13.670059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.952606, 19.762827, 13.691958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088465, 0.571642, -0.815720,
		0.030657, -0.816980, -0.575850,
		-0.995607, -0.075950, 0.054749,
		23.653923, 19.740042, 13.708383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.165604, 19.722166, 13.036916>,  <24.350849, 19.793207, 13.670059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.165604, 19.722166, 13.036916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.793222, 19.778336, 13.171737>,  <23.569794, 19.812038, 13.252629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.793222, 19.778336, 13.171737>,  <24.165604, 19.722166, 13.036916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.793222, 19.778336, 13.171737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235068, 0.475861, -0.847525,
		-0.279404, -0.868238, -0.409996,
		-0.930954, 0.140425, 0.337052,
		23.513935, 19.820463, 13.272852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.577665, 19.349672, 12.563221>,  <24.165604, 19.722166, 13.036916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.577665, 19.349672, 12.563221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.386507, 19.642040, 12.758105>,  <23.271812, 19.817461, 12.875035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.386507, 19.642040, 12.758105>,  <23.577665, 19.349672, 12.563221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.386507, 19.642040, 12.758105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296657, 0.387765, -0.872716,
		-0.826808, -0.561600, 0.031522,
		-0.477894, 0.730920, 0.487210,
		23.243139, 19.861317, 12.904268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.033371, 19.472631, 12.104520>,  <23.577665, 19.349672, 12.563221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.033371, 19.472631, 12.104520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.996275, 19.795528, 12.337675>,  <22.974018, 19.989267, 12.477569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.996275, 19.795528, 12.337675>,  <23.033371, 19.472631, 12.104520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.996275, 19.795528, 12.337675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385993, 0.510485, -0.768384,
		-0.917828, -0.296251, 0.264247,
		-0.092741, 0.807242, 0.582889,
		22.968452, 20.037701, 12.512542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.313005, 19.669683, 12.034552>,  <23.033371, 19.472631, 12.104520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.313005, 19.669683, 12.034552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.513924, 19.997578, 12.144632>,  <22.634474, 20.194313, 12.210681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.513924, 19.997578, 12.144632>,  <22.313005, 19.669683, 12.034552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513924, 19.997578, 12.144632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417509, 0.508624, -0.752986,
		-0.757222, 0.263322, 0.597726,
		0.502296, 0.819733, 0.275202,
		22.664612, 20.243498, 12.227193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837923, 20.280151, 11.996403>,  <22.313005, 19.669683, 12.034552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837923, 20.280151, 11.996403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.201591, 20.446709, 11.998285>,  <22.419792, 20.546644, 11.999415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.201591, 20.446709, 11.998285>,  <21.837923, 20.280151, 11.996403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201591, 20.446709, 11.998285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278490, 0.616393, -0.736548,
		-0.309596, 0.668338, 0.676369,
		0.909172, 0.416394, 0.004707,
		22.474342, 20.571627, 11.999698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.580107, 21.026041, 11.854813>,  <21.837923, 20.280151, 11.996403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.580107, 21.026041, 11.854813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970362, 20.984922, 11.777283>,  <22.204514, 20.960251, 11.730765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.970362, 20.984922, 11.777283>,  <21.580107, 21.026041, 11.854813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970362, 20.984922, 11.777283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047580, 0.763276, -0.644318,
		0.214176, 0.637842, 0.739788,
		0.975636, -0.102799, -0.193824,
		22.263052, 20.954082, 11.719135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.826725, 21.779259, 11.705400>,  <21.580107, 21.026041, 11.854813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.826725, 21.779259, 11.705400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.098804, 21.532902, 11.546402>,  <22.262053, 21.385088, 11.451003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.098804, 21.532902, 11.546402>,  <21.826725, 21.779259, 11.705400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098804, 21.532902, 11.546402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086613, 0.605996, -0.790738,
		0.727892, 0.503432, 0.465543,
		0.680200, -0.615894, -0.397496,
		22.302864, 21.348133, 11.427154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482733, 22.224709, 11.618039>,  <21.826725, 21.779259, 11.705400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482733, 22.224709, 11.618039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.487787, 21.918137, 11.361158>,  <22.490820, 21.734194, 11.207029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.487787, 21.918137, 11.361158>,  <22.482733, 22.224709, 11.618039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.487787, 21.918137, 11.361158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116003, 0.639041, -0.760375,
		0.993168, -0.064889, 0.096983,
		0.012636, -0.766431, -0.642202,
		22.491577, 21.688208, 11.168498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.072075, 22.399162, 11.185878>,  <22.482733, 22.224709, 11.618039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.072075, 22.399162, 11.185878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.851601, 22.134615, 10.982392>,  <22.719316, 21.975887, 10.860301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.851601, 22.134615, 10.982392>,  <23.072075, 22.399162, 11.185878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.851601, 22.134615, 10.982392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021026, 0.598484, -0.800859,
		0.834118, -0.452117, -0.315969,
		-0.551185, -0.661367, -0.508713,
		22.686245, 21.936205, 10.829779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.177591, 22.566105, 10.493992>,  <23.072075, 22.399162, 11.185878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.177591, 22.566105, 10.493992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.892614, 22.294674, 10.422486>,  <22.721628, 22.131815, 10.379582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.892614, 22.294674, 10.422486>,  <23.177591, 22.566105, 10.493992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892614, 22.294674, 10.422486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306812, 0.530328, -0.790328,
		0.631103, -0.508216, -0.586025,
		-0.712443, -0.678578, -0.178765,
		22.678881, 22.091101, 10.368856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.185411, 22.254814, 9.785381>,  <23.177591, 22.566105, 10.493992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.185411, 22.254814, 9.785381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795568, 22.221548, 9.868546>,  <22.561663, 22.201588, 9.918446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.795568, 22.221548, 9.868546>,  <23.185411, 22.254814, 9.785381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.795568, 22.221548, 9.868546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223909, 0.349710, -0.909707,
		0.002947, -0.933159, -0.359451,
		-0.974605, -0.083166, 0.207912,
		22.503187, 22.196598, 9.930920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.793888, 21.933802, 9.192018>,  <23.185411, 22.254814, 9.785381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.793888, 21.933802, 9.192018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.533770, 22.152473, 9.403018>,  <22.377699, 22.283676, 9.529618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.533770, 22.152473, 9.403018>,  <22.793888, 21.933802, 9.192018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.533770, 22.152473, 9.403018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215972, 0.532681, -0.818295,
		-0.728336, -0.646058, -0.228332,
		-0.650294, 0.546681, 0.527501,
		22.338682, 22.316477, 9.561269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254894, 21.985069, 8.761656>,  <22.793888, 21.933802, 9.192018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254894, 21.985069, 8.761656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.231516, 22.290741, 9.018596>,  <22.217489, 22.474144, 9.172760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.231516, 22.290741, 9.018596>,  <22.254894, 21.985069, 8.761656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231516, 22.290741, 9.018596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457496, 0.551401, -0.697606,
		-0.887289, -0.334644, 0.317382,
		-0.058445, 0.764179, 0.642350,
		22.213982, 22.519995, 9.211301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.999144, 20.134329, 21.333073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810936, 19.781490, 21.323999>,  <15.698011, 19.569786, 21.318556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810936, 19.781490, 21.323999>,  <15.999144, 20.134329, 21.333073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810936, 19.781490, 21.323999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686852, -0.349993, -0.636976,
		0.553936, -0.315291, 0.770550,
		-0.470520, -0.882098, -0.022684,
		15.669780, 19.516861, 21.317194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523087, 19.621904, 21.368488>,  <15.999144, 20.134329, 21.333073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523087, 19.621904, 21.368488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.211920, 19.430738, 21.205299>,  <16.025219, 19.316038, 21.107386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.211920, 19.430738, 21.205299>,  <16.523087, 19.621904, 21.368488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211920, 19.430738, 21.205299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621718, -0.491209, -0.610066,
		0.091162, -0.728223, 0.679250,
		-0.777918, -0.477917, -0.407970,
		15.978544, 19.287363, 21.082909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808226, 18.968191, 21.112886>,  <16.523087, 19.621904, 21.368488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.808226, 18.968191, 21.112886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466990, 18.997021, 20.906181>,  <16.262247, 19.014318, 20.782158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466990, 18.997021, 20.906181>,  <16.808226, 18.968191, 21.112886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466990, 18.997021, 20.906181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443411, -0.421854, -0.790839,
		-0.274998, -0.903794, 0.327921,
		-0.853091, 0.072076, -0.516761,
		16.211063, 19.018644, 20.751152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673639, 18.274685, 20.738649>,  <16.808226, 18.968191, 21.112886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673639, 18.274685, 20.738649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514072, 18.568438, 20.518995>,  <16.418333, 18.744688, 20.387203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514072, 18.568438, 20.518995>,  <16.673639, 18.274685, 20.738649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514072, 18.568438, 20.518995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482742, -0.340961, -0.806663,
		-0.779631, -0.586884, -0.218500,
		-0.398918, 0.734379, -0.549137,
		16.394398, 18.788752, 20.354254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290115, 17.893612, 20.148388>,  <16.673639, 18.274685, 20.738649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290115, 17.893612, 20.148388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339403, 18.271660, 20.027346>,  <16.368977, 18.498487, 19.954721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339403, 18.271660, 20.027346>,  <16.290115, 17.893612, 20.148388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339403, 18.271660, 20.027346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294040, -0.326007, -0.898476,
		-0.947817, 0.021733, -0.318073,
		0.123220, 0.945118, -0.302604,
		16.376369, 18.555195, 19.936563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093403, 17.935646, 19.419378>,  <16.290115, 17.893612, 20.148388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093403, 17.935646, 19.419378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317566, 18.263456, 19.467249>,  <16.452063, 18.460142, 19.495972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317566, 18.263456, 19.467249>,  <16.093403, 17.935646, 19.419378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317566, 18.263456, 19.467249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316030, -0.078027, -0.945535,
		-0.765551, 0.567706, -0.302722,
		0.560407, 0.819525, 0.119678,
		16.485687, 18.509314, 19.503153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066576, 18.211033, 18.765507>,  <16.093403, 17.935646, 19.419378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066576, 18.211033, 18.765507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390368, 18.353731, 18.952045>,  <16.584642, 18.439350, 19.063969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390368, 18.353731, 18.952045>,  <16.066576, 18.211033, 18.765507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390368, 18.353731, 18.952045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533722, -0.116043, -0.837661,
		-0.244715, 0.926967, -0.284337,
		0.809479, 0.356745, 0.466345,
		16.633211, 18.460754, 19.091949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290409, 18.852705, 18.345337>,  <16.066576, 18.211033, 18.765507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290409, 18.852705, 18.345337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592907, 18.693468, 18.553038>,  <16.774405, 18.597927, 18.677658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592907, 18.693468, 18.553038>,  <16.290409, 18.852705, 18.345337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592907, 18.693468, 18.553038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457088, -0.246395, -0.854611,
		0.468153, 0.883637, -0.004373,
		0.756243, -0.398090, 0.519251,
		16.819780, 18.574041, 18.708813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929760, 18.996702, 17.820322>,  <16.290409, 18.852705, 18.345337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929760, 18.996702, 17.820322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074434, 18.732752, 18.083759>,  <17.161240, 18.574381, 18.241821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074434, 18.732752, 18.083759>,  <16.929760, 18.996702, 17.820322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074434, 18.732752, 18.083759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464635, -0.484852, -0.740967,
		0.808268, 0.574004, 0.131238,
		0.361687, -0.659878, 0.658592,
		17.182940, 18.534788, 18.281338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592337, 18.844112, 17.604670>,  <16.929760, 18.996702, 17.820322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592337, 18.844112, 17.604670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473698, 18.539595, 17.835308>,  <17.402515, 18.356884, 17.973692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473698, 18.539595, 17.835308>,  <17.592337, 18.844112, 17.604670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473698, 18.539595, 17.835308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554561, -0.628835, -0.545003,
		0.777492, 0.158113, 0.608693,
		-0.296595, -0.761293, 0.576597,
		17.384720, 18.311207, 18.008287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087339, 18.343937, 17.544439>,  <17.592337, 18.844112, 17.604670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087339, 18.343937, 17.544439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808693, 18.105385, 17.703966>,  <17.641504, 17.962254, 17.799683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808693, 18.105385, 17.703966>,  <18.087339, 18.343937, 17.544439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808693, 18.105385, 17.703966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329611, -0.759787, -0.560428,
		0.637245, -0.258949, 0.725855,
		-0.696617, -0.596380, 0.398818,
		17.599709, 17.926472, 17.823612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417236, 17.651924, 17.735146>,  <18.087339, 18.343937, 17.544439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417236, 17.651924, 17.735146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021786, 17.591822, 17.732443>,  <17.784515, 17.555761, 17.730822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021786, 17.591822, 17.732443>,  <18.417236, 17.651924, 17.735146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021786, 17.591822, 17.732443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126347, -0.805261, -0.579302,
		0.081601, -0.573566, 0.815085,
		-0.988624, -0.150255, -0.006758,
		17.725199, 17.546745, 17.730415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504465, 17.296267, 16.996038>,  <18.417236, 17.651924, 17.735146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504465, 17.296267, 16.996038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115353, 17.263447, 16.909353>,  <17.881886, 17.243755, 16.857342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115353, 17.263447, 16.909353>,  <18.504465, 17.296267, 16.996038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115353, 17.263447, 16.909353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010522, -0.918612, 0.395021,
		-0.231488, 0.386549, 0.892745,
		-0.972781, -0.082049, -0.216715,
		17.823519, 17.238832, 16.844339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994633, 17.632290, 16.598019>,  <18.504465, 17.296267, 16.996038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.994633, 17.632290, 16.598019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367733, 17.704155, 16.723047>,  <19.591593, 17.747274, 16.798065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367733, 17.704155, 16.723047>,  <18.994633, 17.632290, 16.598019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367733, 17.704155, 16.723047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345638, -0.199043, -0.917015,
		-0.102537, 0.963381, -0.247755,
		0.932749, 0.179661, 0.312572,
		19.647558, 17.758053, 16.816818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435083, 17.383888, 17.173016>,  <18.994633, 17.632290, 16.598019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435083, 17.383888, 17.173016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736515, 17.129732, 17.240423>,  <19.917374, 16.977238, 17.280869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736515, 17.129732, 17.240423>,  <19.435083, 17.383888, 17.173016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736515, 17.129732, 17.240423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452794, -0.315877, 0.833786,
		-0.476549, -0.704628, -0.525739,
		0.753577, -0.635391, 0.168520,
		19.962589, 16.939116, 17.290979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104719, 16.756962, 17.364271>,  <19.435083, 17.383888, 17.173016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104719, 16.756962, 17.364271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476254, 16.707834, 17.504089>,  <19.699173, 16.678358, 17.587980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476254, 16.707834, 17.504089>,  <19.104719, 16.756962, 17.364271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476254, 16.707834, 17.504089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370069, -0.352825, 0.859397,
		0.017781, -0.927594, -0.373166,
		0.928834, -0.122816, 0.349548,
		19.754904, 16.670988, 17.608953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021534, 16.204422, 17.746033>,  <19.104719, 16.756962, 17.364271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021534, 16.204422, 17.746033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360041, 16.343588, 17.907421>,  <19.563145, 16.427088, 18.004253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360041, 16.343588, 17.907421>,  <19.021534, 16.204422, 17.746033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360041, 16.343588, 17.907421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348047, -0.212331, 0.913115,
		0.403354, -0.913166, -0.058599,
		0.846268, 0.347913, 0.403469,
		19.613920, 16.447962, 18.028461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222776, 15.688292, 18.253180>,  <19.021534, 16.204422, 17.746033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222776, 15.688292, 18.253180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441929, 16.011770, 18.338820>,  <19.573420, 16.205856, 18.390203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441929, 16.011770, 18.338820>,  <19.222776, 15.688292, 18.253180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441929, 16.011770, 18.338820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010427, -0.249310, 0.968368,
		0.836492, -0.532781, -0.128160,
		0.547879, 0.808696, 0.214101,
		19.606293, 16.254379, 18.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.740820, 15.482930, 18.913136>,  <19.222776, 15.688292, 18.253180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.740820, 15.482930, 18.913136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709141, 15.880984, 18.889704>,  <19.690132, 16.119818, 18.875645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.709141, 15.880984, 18.889704>,  <19.740820, 15.482930, 18.913136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709141, 15.880984, 18.889704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012860, 0.057737, 0.998249,
		0.996776, 0.079814, 0.008224,
		-0.079199, 0.995136, -0.058577,
		19.685381, 16.179525, 18.872131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.190332, 15.642562, 19.328833>,  <19.740820, 15.482930, 18.913136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.190332, 15.642562, 19.328833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930918, 15.946861, 19.318552>,  <19.775269, 16.129440, 19.312384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930918, 15.946861, 19.318552>,  <20.190332, 15.642562, 19.328833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930918, 15.946861, 19.318552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012185, 0.023382, 0.999652,
		0.761085, 0.648626, -0.005894,
		-0.648538, 0.760748, -0.025699,
		19.736357, 16.175085, 19.310843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182056, 15.867855, 20.049129>,  <20.190332, 15.642562, 19.328833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182056, 15.867855, 20.049129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910593, 16.118851, 19.896458>,  <19.747715, 16.269447, 19.804855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910593, 16.118851, 19.896458>,  <20.182056, 15.867855, 20.049129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910593, 16.118851, 19.896458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225310, 0.316745, 0.921362,
		0.699040, 0.711287, -0.073582,
		-0.678659, 0.627490, -0.381678,
		19.706995, 16.307098, 19.781954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249020, 16.524637, 20.426846>,  <20.182056, 15.867855, 20.049129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249020, 16.524637, 20.426846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875517, 16.461323, 20.298443>,  <19.651415, 16.423334, 20.221401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875517, 16.461323, 20.298443>,  <20.249020, 16.524637, 20.426846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875517, 16.461323, 20.298443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345349, 0.162940, 0.924221,
		-0.093988, 0.973856, -0.206811,
		-0.933756, -0.158288, -0.321006,
		19.595390, 16.413836, 20.202141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922461, 17.038845, 20.722103>,  <20.249020, 16.524637, 20.426846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922461, 17.038845, 20.722103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659090, 16.750431, 20.635767>,  <19.501068, 16.577383, 20.583965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659090, 16.750431, 20.635767>,  <19.922461, 17.038845, 20.722103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659090, 16.750431, 20.635767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292322, -0.019275, 0.956126,
		-0.693559, 0.692632, -0.198083,
		-0.658425, -0.721034, -0.215840,
		19.461563, 16.534121, 20.571014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345932, 17.227259, 21.066940>,  <19.922461, 17.038845, 20.722103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345932, 17.227259, 21.066940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279425, 16.839663, 20.993822>,  <19.239519, 16.607105, 20.949951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279425, 16.839663, 20.993822>,  <19.345932, 17.227259, 21.066940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279425, 16.839663, 20.993822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578857, -0.054161, 0.813628,
		-0.798298, 0.241095, -0.551901,
		-0.166270, -0.968989, -0.182796,
		19.229544, 16.548965, 20.938984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637951, 17.113485, 21.028017>,  <19.345932, 17.227259, 21.066940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637951, 17.113485, 21.028017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775894, 16.743097, 21.089540>,  <18.858660, 16.520864, 21.126455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775894, 16.743097, 21.089540>,  <18.637951, 17.113485, 21.028017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775894, 16.743097, 21.089540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617910, -0.100600, 0.779786,
		-0.706585, -0.363953, -0.606858,
		0.344856, -0.925969, 0.153808,
		18.879351, 16.465307, 21.135683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086685, 16.648197, 21.013941>,  <18.637951, 17.113485, 21.028017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086685, 16.648197, 21.013941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387123, 16.482969, 21.219942>,  <18.567387, 16.383833, 21.343542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387123, 16.482969, 21.219942>,  <18.086685, 16.648197, 21.013941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387123, 16.482969, 21.219942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583764, -0.051213, 0.810306,
		-0.308339, -0.909258, -0.279602,
		0.751096, -0.413071, 0.515001,
		18.612452, 16.359049, 21.374443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714245, 16.260376, 21.442141>,  <18.086685, 16.648197, 21.013941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714245, 16.260376, 21.442141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082920, 16.292072, 21.594044>,  <18.304125, 16.311090, 21.685184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082920, 16.292072, 21.594044>,  <17.714245, 16.260376, 21.442141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082920, 16.292072, 21.594044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386092, 0.282717, 0.878068,
		-0.037785, -0.955925, 0.291171,
		0.921686, 0.079241, 0.379757,
		18.359426, 16.315845, 21.707972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823940, 15.787437, 21.953064>,  <17.714245, 16.260376, 21.442141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823940, 15.787437, 21.953064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087889, 16.070679, 22.053591>,  <18.246258, 16.240623, 22.113907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087889, 16.070679, 22.053591>,  <17.823940, 15.787437, 21.953064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087889, 16.070679, 22.053591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421218, 0.071636, 0.904126,
		0.622211, -0.702466, 0.345536,
		0.659870, 0.708103, 0.251319,
		18.285851, 16.283110, 22.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094032, 15.164989, 22.292376>,  <17.823940, 15.787437, 21.953064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.094032, 15.164989, 22.292376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813334, 14.880096, 22.285692>,  <17.644915, 14.709161, 22.281683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813334, 14.880096, 22.285692>,  <18.094032, 15.164989, 22.292376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813334, 14.880096, 22.285692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302834, -0.276986, -0.911905,
		0.644859, -0.644985, 0.410061,
		-0.701746, -0.712231, -0.016706,
		17.602810, 14.666428, 22.280680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375292, 14.605490, 21.913551>,  <18.094032, 15.164989, 22.292376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375292, 14.605490, 21.913551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985031, 14.525541, 21.877420>,  <17.750875, 14.477572, 21.855742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985031, 14.525541, 21.877420>,  <18.375292, 14.605490, 21.913551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985031, 14.525541, 21.877420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168900, -0.421903, -0.890770,
		0.139930, -0.884335, 0.445387,
		-0.975649, -0.199872, -0.090327,
		17.692337, 14.465580, 21.850323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384798, 14.097149, 21.426664>,  <18.375292, 14.605490, 21.913551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384798, 14.097149, 21.426664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999657, 14.205135, 21.428885>,  <17.768572, 14.269927, 21.430216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999657, 14.205135, 21.428885>,  <18.384798, 14.097149, 21.426664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999657, 14.205135, 21.428885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071459, -0.234941, -0.969379,
		-0.260400, -0.933766, 0.245505,
		-0.962853, 0.269970, 0.005547,
		17.710800, 14.286125, 21.430550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064928, 13.489789, 21.157963>,  <18.384798, 14.097149, 21.426664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064928, 13.489789, 21.157963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837399, 13.810210, 21.083391>,  <17.700882, 14.002463, 21.038649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837399, 13.810210, 21.083391>,  <18.064928, 13.489789, 21.157963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837399, 13.810210, 21.083391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115161, -0.302012, -0.946323,
		-0.814359, -0.516819, 0.264041,
		-0.568822, 0.801053, -0.186429,
		17.666752, 14.050526, 21.027462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.494326, 13.318763, 20.669369>,  <18.064928, 13.489789, 21.157963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.494326, 13.318763, 20.669369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505096, 13.717331, 20.637318>,  <17.511559, 13.956472, 20.618088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505096, 13.717331, 20.637318>,  <17.494326, 13.318763, 20.669369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505096, 13.717331, 20.637318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087620, -0.077495, -0.993135,
		-0.995790, 0.033763, 0.085220,
		0.026927, 0.996421, -0.080127,
		17.513174, 14.016257, 20.613279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.079384, 13.443801, 20.090170>,  <17.494326, 13.318763, 20.669369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.079384, 13.443801, 20.090170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245922, 13.801145, 20.157776>,  <17.345844, 14.015551, 20.198339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245922, 13.801145, 20.157776>,  <17.079384, 13.443801, 20.090170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245922, 13.801145, 20.157776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342744, 0.326393, -0.880905,
		-0.842130, 0.308831, 0.442086,
		0.416345, 0.893359, 0.169015,
		17.370825, 14.069153, 20.208481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621647, 13.858313, 19.968800>,  <17.079384, 13.443801, 20.090170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621647, 13.858313, 19.968800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960318, 14.063873, 19.913603>,  <17.163521, 14.187210, 19.880486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960318, 14.063873, 19.913603>,  <16.621647, 13.858313, 19.968800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960318, 14.063873, 19.913603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327985, 0.299823, -0.895842,
		-0.419002, 0.803748, 0.422405,
		0.846678, 0.513902, -0.137991,
		17.214321, 14.218044, 19.872206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400141, 14.587922, 20.093657>,  <16.621647, 13.858313, 19.968800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400141, 14.587922, 20.093657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721684, 14.556445, 19.857819>,  <16.914608, 14.537559, 19.716316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721684, 14.556445, 19.857819>,  <16.400141, 14.587922, 20.093657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721684, 14.556445, 19.857819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488557, 0.478067, -0.729906,
		0.339304, 0.874791, 0.345852,
		0.803856, -0.078692, -0.589596,
		16.962841, 14.532838, 19.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368673, 15.210996, 19.740822>,  <16.400141, 14.587922, 20.093657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368673, 15.210996, 19.740822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628920, 14.985675, 19.537102>,  <16.785069, 14.850482, 19.414869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628920, 14.985675, 19.537102>,  <16.368673, 15.210996, 19.740822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628920, 14.985675, 19.537102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337336, 0.386478, -0.858393,
		0.680369, 0.730291, 0.061427,
		0.650617, -0.563302, -0.509301,
		16.824104, 14.816684, 19.384312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533779, 15.723824, 19.202551>,  <16.368673, 15.210996, 19.740822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533779, 15.723824, 19.202551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656761, 15.367243, 19.069416>,  <16.730551, 15.153294, 18.989534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656761, 15.367243, 19.069416>,  <16.533779, 15.723824, 19.202551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656761, 15.367243, 19.069416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228461, 0.270396, -0.935250,
		0.923729, 0.363590, -0.120527,
		0.307457, -0.891453, -0.332838,
		16.748999, 15.099807, 18.969564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988405, 15.959688, 18.600430>,  <16.533779, 15.723824, 19.202551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988405, 15.959688, 18.600430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860128, 15.581983, 18.570709>,  <16.783161, 15.355359, 18.552877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860128, 15.581983, 18.570709>,  <16.988405, 15.959688, 18.600430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860128, 15.581983, 18.570709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316554, 0.180779, -0.931189,
		0.892720, -0.275107, -0.356885,
		-0.320694, -0.944264, -0.074299,
		16.763920, 15.298703, 18.548420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297468, 15.657230, 17.976057>,  <16.988405, 15.959688, 18.600430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297468, 15.657230, 17.976057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959831, 15.461641, 18.064074>,  <16.757250, 15.344288, 18.116884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959831, 15.461641, 18.064074>,  <17.297468, 15.657230, 17.976057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959831, 15.461641, 18.064074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439056, 0.394716, -0.807112,
		0.307802, -0.777885, -0.547862,
		-0.844090, -0.488972, 0.220040,
		16.706604, 15.314950, 18.130085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.167888, 16.185978, 26.574762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.465674, 16.071238, 26.815922>,  <14.644346, 16.002394, 26.960617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.465674, 16.071238, 26.815922>,  <14.167888, 16.185978, 26.574762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465674, 16.071238, 26.815922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568208, -0.201954, -0.797718,
		0.350583, 0.936446, 0.012643,
		0.744467, -0.286850, 0.602898,
		14.689014, 15.985183, 26.996792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696445, 16.526482, 26.202299>,  <14.167888, 16.185978, 26.574762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696445, 16.526482, 26.202299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903432, 16.271410, 26.430544>,  <15.027624, 16.118368, 26.567490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903432, 16.271410, 26.430544>,  <14.696445, 16.526482, 26.202299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903432, 16.271410, 26.430544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468057, -0.347304, -0.812590,
		0.716345, 0.687566, 0.118751,
		0.517467, -0.637677, 0.570610,
		15.058672, 16.080107, 26.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398622, 16.625753, 26.082361>,  <14.696445, 16.526482, 26.202299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398622, 16.625753, 26.082361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.367672, 16.257900, 26.236397>,  <15.349102, 16.037189, 26.328817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.367672, 16.257900, 26.236397>,  <15.398622, 16.625753, 26.082361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367672, 16.257900, 26.236397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508968, -0.368558, -0.777892,
		0.857301, 0.135808, 0.496580,
		-0.077375, -0.919631, 0.385088,
		15.344460, 15.982011, 26.351923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095037, 16.325716, 26.081284>,  <15.398622, 16.625753, 26.082361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095037, 16.325716, 26.081284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.838557, 16.018829, 26.075029>,  <15.684669, 15.834698, 26.071278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.838557, 16.018829, 26.075029>,  <16.095037, 16.325716, 26.081284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838557, 16.018829, 26.075029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598910, -0.487593, -0.635263,
		0.479760, -0.416695, 0.772137,
		-0.641200, -0.767215, -0.015636,
		15.646197, 15.788665, 26.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416277, 15.758545, 26.282454>,  <16.095037, 16.325716, 26.081284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416277, 15.758545, 26.282454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.113001, 15.616525, 26.063698>,  <15.931036, 15.531313, 25.932444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.113001, 15.616525, 26.063698>,  <16.416277, 15.758545, 26.282454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113001, 15.616525, 26.063698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622358, -0.644226, -0.444572,
		-0.194475, -0.677430, 0.709413,
		-0.758189, -0.355051, -0.546890,
		15.885544, 15.510010, 25.899632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755129, 15.142226, 26.018604>,  <16.416277, 15.758545, 26.282454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.755129, 15.142226, 26.018604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.416111, 15.153300, 25.806604>,  <16.212700, 15.159945, 25.679405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.416111, 15.153300, 25.806604>,  <16.755129, 15.142226, 26.018604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416111, 15.153300, 25.806604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443835, -0.510578, -0.736425,
		-0.290993, -0.859386, 0.420451,
		-0.847546, 0.027683, -0.530000,
		16.161848, 15.161606, 25.647604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759453, 14.549926, 25.724617>,  <16.755129, 15.142226, 26.018604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759453, 14.549926, 25.724617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.529860, 14.791998, 25.503963>,  <16.392103, 14.937242, 25.371571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.529860, 14.791998, 25.503963>,  <16.759453, 14.549926, 25.724617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529860, 14.791998, 25.503963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281782, -0.486544, -0.826967,
		-0.768860, -0.630103, 0.108737,
		-0.573980, 0.605182, -0.551636,
		16.357666, 14.973552, 25.338472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403009, 14.094461, 25.209032>,  <16.759453, 14.549926, 25.724617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403009, 14.094461, 25.209032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.332453, 14.465485, 25.077261>,  <16.290119, 14.688099, 24.998199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.332453, 14.465485, 25.077261>,  <16.403009, 14.094461, 25.209032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332453, 14.465485, 25.077261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163866, -0.302332, -0.939012,
		-0.970584, -0.219615, -0.098666,
		-0.176392, 0.927558, -0.329426,
		16.279535, 14.743752, 24.978434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043076, 14.033208, 24.672951>,  <16.403009, 14.094461, 25.209032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043076, 14.033208, 24.672951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.209763, 14.388636, 24.596226>,  <16.309774, 14.601892, 24.550190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.209763, 14.388636, 24.596226>,  <16.043076, 14.033208, 24.672951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209763, 14.388636, 24.596226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190582, -0.291719, -0.937325,
		-0.888833, 0.354044, -0.290909,
		0.416718, 0.888568, -0.191815,
		16.334778, 14.655206, 24.538681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844570, 14.198269, 24.024311>,  <16.043076, 14.033208, 24.672951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844570, 14.198269, 24.024311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.160534, 14.436281, 24.083614>,  <16.350113, 14.579089, 24.119196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.160534, 14.436281, 24.083614>,  <15.844570, 14.198269, 24.024311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160534, 14.436281, 24.083614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254337, -0.097909, -0.962147,
		-0.557992, 0.797716, -0.228678,
		0.789910, 0.595031, 0.148256,
		16.397507, 14.614791, 24.128092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886259, 14.768371, 23.500124>,  <15.844570, 14.198269, 24.024311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886259, 14.768371, 23.500124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.262999, 14.748732, 23.633099>,  <16.489042, 14.736948, 23.712883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.262999, 14.748732, 23.633099>,  <15.886259, 14.768371, 23.500124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262999, 14.748732, 23.633099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335926, 0.111736, -0.935237,
		0.008773, 0.992524, 0.121731,
		0.941848, -0.049098, 0.332434,
		16.545553, 14.734002, 23.732828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212309, 15.319372, 23.153543>,  <15.886259, 14.768371, 23.500124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212309, 15.319372, 23.153543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.507717, 15.077868, 23.273586>,  <16.684961, 14.932966, 23.345612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.507717, 15.077868, 23.273586>,  <16.212309, 15.319372, 23.153543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507717, 15.077868, 23.273586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415436, 0.056909, -0.907840,
		0.531038, 0.795133, 0.292852,
		0.738519, -0.603759, 0.300106,
		16.729273, 14.896741, 23.363619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878872, 15.640975, 22.963860>,  <16.212309, 15.319372, 23.153543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878872, 15.640975, 22.963860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.945709, 15.246833, 22.977446>,  <16.985811, 15.010347, 22.985598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.945709, 15.246833, 22.977446>,  <16.878872, 15.640975, 22.963860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.945709, 15.246833, 22.977446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307165, 0.019293, -0.951461,
		0.936872, 0.169417, 0.305891,
		0.167095, -0.985355, 0.033964,
		16.995838, 14.951226, 22.987635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339336, 15.556499, 22.466549>,  <16.878872, 15.640975, 22.963860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339336, 15.556499, 22.466549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.267550, 15.171156, 22.546282>,  <17.224478, 14.939950, 22.594122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.267550, 15.171156, 22.546282>,  <17.339336, 15.556499, 22.466549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267550, 15.171156, 22.546282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249902, -0.240617, -0.937898,
		0.951494, -0.118509, 0.283928,
		-0.179467, -0.963358, 0.199330,
		17.213709, 14.882149, 22.606081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950228, 15.718743, 22.844015>,  <17.339336, 15.556499, 22.466549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950228, 15.718743, 22.844015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.114038, 16.062937, 22.722784>,  <18.212326, 16.269453, 22.650045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.114038, 16.062937, 22.722784>,  <17.950228, 15.718743, 22.844015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114038, 16.062937, 22.722784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129932, 0.383839, 0.914213,
		0.902997, -0.335017, 0.268997,
		0.409528, 0.860483, -0.303077,
		18.236897, 16.321081, 22.631861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433878, 15.827804, 23.339529>,  <17.950228, 15.718743, 22.844015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433878, 15.827804, 23.339529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.390329, 16.194885, 23.186707>,  <18.364201, 16.415134, 23.095013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.390329, 16.194885, 23.186707>,  <18.433878, 15.827804, 23.339529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390329, 16.194885, 23.186707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142333, 0.365990, 0.919670,
		0.983813, 0.154507, 0.090773,
		-0.108873, 0.917703, -0.382057,
		18.357668, 16.470196, 23.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901577, 16.334202, 23.571289>,  <18.433878, 15.827804, 23.339529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901577, 16.334202, 23.571289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.629030, 16.599844, 23.448193>,  <18.465502, 16.759230, 23.374334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.629030, 16.599844, 23.448193>,  <18.901577, 16.334202, 23.571289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629030, 16.599844, 23.448193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077231, 0.352866, 0.932481,
		0.727856, 0.659129, -0.189142,
		-0.681367, 0.664104, -0.307741,
		18.424620, 16.799076, 23.355871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878128, 17.022284, 24.024508>,  <18.901577, 16.334202, 23.571289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878128, 17.022284, 24.024508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.525995, 17.008621, 23.835257>,  <18.314716, 17.000423, 23.721706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.525995, 17.008621, 23.835257>,  <18.878128, 17.022284, 24.024508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525995, 17.008621, 23.835257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450235, 0.374179, 0.810727,
		0.149342, 0.926727, -0.344780,
		-0.880333, -0.034157, -0.473125,
		18.261896, 16.998375, 23.693319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741852, 17.613613, 24.041504>,  <18.878128, 17.022284, 24.024508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.741852, 17.613613, 24.041504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.379972, 17.443583, 24.029974>,  <18.162846, 17.341564, 24.023056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.379972, 17.443583, 24.029974>,  <18.741852, 17.613613, 24.041504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379972, 17.443583, 24.029974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260236, 0.497768, 0.827348,
		-0.337338, 0.756001, -0.560950,
		-0.904699, -0.425075, -0.028823,
		18.108562, 17.316059, 24.021328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249804, 18.045008, 23.969257>,  <18.741852, 17.613613, 24.041504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249804, 18.045008, 23.969257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.060173, 17.741829, 24.148485>,  <17.946396, 17.559921, 24.256021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.060173, 17.741829, 24.148485>,  <18.249804, 18.045008, 23.969257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060173, 17.741829, 24.148485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340032, 0.627013, 0.700880,
		-0.812178, 0.179911, -0.554977,
		-0.474074, -0.757949, 0.448071,
		17.917952, 17.514444, 24.282906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.415436, 18.279709, 24.088314>,  <18.249804, 18.045008, 23.969257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.415436, 18.279709, 24.088314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.478151, 17.974335, 24.338940>,  <17.515781, 17.791109, 24.489315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.478151, 17.974335, 24.338940>,  <17.415436, 18.279709, 24.088314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478151, 17.974335, 24.338940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425330, 0.520369, 0.740480,
		-0.891354, -0.382596, -0.243124,
		0.156791, -0.763437, 0.626563,
		17.525188, 17.745304, 24.526909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947369, 18.432550, 24.529093>,  <17.415436, 18.279709, 24.088314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947369, 18.432550, 24.529093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.142874, 18.148705, 24.732092>,  <17.260178, 17.978397, 24.853891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.142874, 18.148705, 24.732092>,  <16.947369, 18.432550, 24.529093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142874, 18.148705, 24.732092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291274, 0.415604, 0.861645,
		-0.822356, -0.568962, -0.003561,
		0.488764, -0.709616, 0.507498,
		17.289503, 17.935820, 24.884342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418495, 18.090027, 25.022608>,  <16.947369, 18.432550, 24.529093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418495, 18.090027, 25.022608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.794992, 18.039881, 25.148046>,  <17.020891, 18.009794, 25.223309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.794992, 18.039881, 25.148046>,  <16.418495, 18.090027, 25.022608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794992, 18.039881, 25.148046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234450, 0.425805, 0.873913,
		-0.243088, -0.896088, 0.371395,
		0.941244, -0.125364, 0.313595,
		17.077366, 18.002272, 25.242125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328449, 17.718992, 25.616516>,  <16.418495, 18.090027, 25.022608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328449, 17.718992, 25.616516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.695145, 17.877262, 25.638546>,  <16.915161, 17.972223, 25.651764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.695145, 17.877262, 25.638546>,  <16.328449, 17.718992, 25.616516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.695145, 17.877262, 25.638546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262398, 0.492443, 0.829848,
		0.301225, -0.775205, 0.555265,
		0.916739, 0.395672, 0.055076,
		16.970165, 17.995964, 25.655069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.438513, 17.697157, 26.251736>,  <16.328449, 17.718992, 25.616516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.438513, 17.697157, 26.251736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.732775, 17.945513, 26.143435>,  <16.909332, 18.094526, 26.078453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.732775, 17.945513, 26.143435>,  <16.438513, 17.697157, 26.251736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732775, 17.945513, 26.143435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133084, 0.524420, 0.840995,
		0.664152, -0.582650, 0.468424,
		0.735657, 0.620888, -0.270754,
		16.953472, 18.131779, 26.062208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950087, 17.728836, 26.792648>,  <16.438513, 17.697157, 26.251736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950087, 17.728836, 26.792648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.014353, 18.074028, 26.601044>,  <17.052912, 18.281143, 26.486080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.014353, 18.074028, 26.601044>,  <16.950087, 17.728836, 26.792648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014353, 18.074028, 26.601044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193686, 0.503447, 0.842037,
		0.967819, -0.042507, 0.248033,
		0.160664, 0.862980, -0.479013,
		17.062551, 18.332922, 26.457340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272900, 18.147516, 27.271002>,  <16.950087, 17.728836, 26.792648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272900, 18.147516, 27.271002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.147215, 18.424236, 27.010946>,  <17.071804, 18.590269, 26.854914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.147215, 18.424236, 27.010946>,  <17.272900, 18.147516, 27.271002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147215, 18.424236, 27.010946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320564, 0.567286, 0.758568,
		0.893593, 0.446763, 0.043518,
		-0.314213, 0.691801, -0.650139,
		17.052952, 18.631777, 26.815905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099117, 18.075365, 27.254169>,  <17.272900, 18.147516, 27.271002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099117, 18.075365, 27.254169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.786659, 17.938450, 27.463034>,  <17.599184, 17.856300, 27.588352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.786659, 17.938450, 27.463034>,  <18.099117, 18.075365, 27.254169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786659, 17.938450, 27.463034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167889, -0.920679, -0.352368,
		0.601354, -0.187585, 0.776650,
		-0.781144, -0.342289, 0.522160,
		17.552317, 17.835764, 27.619682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.493087, 17.050928, 26.767855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.823485, 17.274092, 26.800016>,  <12.021725, 17.407990, 26.819313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.823485, 17.274092, 26.800016>,  <11.493087, 17.050928, 26.767855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823485, 17.274092, 26.800016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047400, 0.073389, -0.996176,
		-0.561678, 0.826650, 0.034175,
		0.825997, 0.557911, 0.080404,
		12.071284, 17.441465, 26.824137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482503, 17.660818, 26.366373>,  <11.493087, 17.050928, 26.767855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482503, 17.660818, 26.366373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.874539, 17.593458, 26.408445>,  <12.109761, 17.553041, 26.433689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.874539, 17.593458, 26.408445>,  <11.482503, 17.660818, 26.366373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874539, 17.593458, 26.408445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118638, 0.071929, -0.990329,
		0.159205, 0.983091, 0.090475,
		0.980091, -0.168399, 0.105180,
		12.168567, 17.542938, 26.439999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.748912, 18.065083, 25.873163>,  <11.482503, 17.660818, 26.366373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.748912, 18.065083, 25.873163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.027133, 17.785622, 25.940203>,  <12.194066, 17.617945, 25.980427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.027133, 17.785622, 25.940203>,  <11.748912, 18.065083, 25.873163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.027133, 17.785622, 25.940203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050850, -0.184818, -0.981456,
		0.716672, 0.691178, -0.093024,
		0.695554, -0.698652, 0.167600,
		12.235799, 17.576027, 25.990482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214503, 18.166513, 25.316795>,  <11.748912, 18.065083, 25.873163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214503, 18.166513, 25.316795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.291198, 17.802059, 25.462709>,  <12.337214, 17.583387, 25.550259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.291198, 17.802059, 25.462709>,  <12.214503, 18.166513, 25.316795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.291198, 17.802059, 25.462709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036560, -0.364794, -0.930370,
		0.980765, 0.191723, -0.036634,
		0.191737, -0.911135, 0.364787,
		12.348719, 17.528719, 25.572145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965555, 17.907185, 25.125111>,  <12.214503, 18.166513, 25.316795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965555, 17.907185, 25.125111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.734960, 17.588676, 25.198446>,  <12.596602, 17.397572, 25.242447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.734960, 17.588676, 25.198446>,  <12.965555, 17.907185, 25.125111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734960, 17.588676, 25.198446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065056, -0.268391, -0.961111,
		0.814511, -0.542142, 0.206527,
		-0.576489, -0.796271, 0.183338,
		12.562013, 17.349794, 25.253448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272301, 17.453749, 24.798656>,  <12.965555, 17.907185, 25.125111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272301, 17.453749, 24.798656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.912557, 17.289894, 24.859779>,  <12.696711, 17.191582, 24.896454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.912557, 17.289894, 24.859779>,  <13.272301, 17.453749, 24.798656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.912557, 17.289894, 24.859779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073040, -0.485369, -0.871253,
		0.431065, -0.772409, 0.466441,
		-0.899360, -0.409636, 0.152808,
		12.642749, 17.167004, 24.905622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272284, 16.860237, 24.402615>,  <13.272301, 17.453749, 24.798656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272284, 16.860237, 24.402615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.877885, 16.908783, 24.448368>,  <12.641246, 16.937910, 24.475821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.877885, 16.908783, 24.448368>,  <13.272284, 16.860237, 24.402615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877885, 16.908783, 24.448368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140971, -0.240079, -0.960463,
		-0.089104, -0.963137, 0.253825,
		-0.985996, 0.121363, 0.114382,
		12.582087, 16.945192, 24.482683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988810, 16.259762, 24.118464>,  <13.272284, 16.860237, 24.402615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988810, 16.259762, 24.118464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.680991, 16.515043, 24.127346>,  <12.496300, 16.668213, 24.132675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.680991, 16.515043, 24.127346>,  <12.988810, 16.259762, 24.118464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680991, 16.515043, 24.127346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206522, -0.215820, -0.954343,
		-0.604274, -0.738997, 0.297887,
		-0.769547, 0.638204, 0.022205,
		12.450128, 16.706505, 24.134008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327575, 15.948231, 23.847515>,  <12.988810, 16.259762, 24.118464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327575, 15.948231, 23.847515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.282447, 16.343327, 23.804352>,  <12.255370, 16.580383, 23.778454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.282447, 16.343327, 23.804352>,  <12.327575, 15.948231, 23.847515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.282447, 16.343327, 23.804352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384956, -0.143570, -0.911700,
		-0.916014, -0.061318, 0.396433,
		-0.112819, 0.987739, -0.107907,
		12.248601, 16.639648, 23.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702660, 16.032452, 23.541853>,  <12.327575, 15.948231, 23.847515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702660, 16.032452, 23.541853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.883657, 16.382683, 23.474192>,  <11.992254, 16.592821, 23.433596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.883657, 16.382683, 23.474192>,  <11.702660, 16.032452, 23.541853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883657, 16.382683, 23.474192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255776, -0.054286, -0.965211,
		-0.854300, 0.480016, 0.199388,
		0.452493, 0.875579, -0.169153,
		12.019404, 16.645357, 23.423445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326615, 16.378050, 22.920240>,  <11.702660, 16.032452, 23.541853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326615, 16.378050, 22.920240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.619854, 16.648317, 22.951332>,  <11.795797, 16.810478, 22.969986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.619854, 16.648317, 22.951332>,  <11.326615, 16.378050, 22.920240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619854, 16.648317, 22.951332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088993, 0.208597, -0.973944,
		-0.674278, 0.707078, 0.213052,
		0.733096, 0.675669, 0.077727,
		11.839783, 16.851019, 22.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.016843, 17.076218, 22.702135>,  <11.326615, 16.378050, 22.920240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.016843, 17.076218, 22.702135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.409121, 17.023155, 22.644670>,  <11.644487, 16.991318, 22.610191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.409121, 17.023155, 22.644670>,  <11.016843, 17.076218, 22.702135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409121, 17.023155, 22.644670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138146, 0.049937, -0.989152,
		0.138392, 0.989903, 0.030647,
		0.980695, -0.132657, -0.143662,
		11.703329, 16.983358, 22.601572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232963, 17.623035, 22.356974>,  <11.016843, 17.076218, 22.702135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232963, 17.623035, 22.356974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.492704, 17.335875, 22.256613>,  <11.648550, 17.163578, 22.196396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.492704, 17.335875, 22.256613>,  <11.232963, 17.623035, 22.356974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.492704, 17.335875, 22.256613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264216, 0.096398, -0.959634,
		0.713111, 0.689436, -0.127084,
		0.649356, -0.717903, -0.250902,
		11.687511, 17.120504, 22.181341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455585, 17.723970, 21.663532>,  <11.232963, 17.623035, 22.356974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455585, 17.723970, 21.663532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.624022, 17.365875, 21.721813>,  <11.725083, 17.151018, 21.756783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.624022, 17.365875, 21.721813>,  <11.455585, 17.723970, 21.663532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.624022, 17.365875, 21.721813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009722, -0.156175, -0.987681,
		0.906965, 0.417322, -0.057061,
		0.421093, -0.895238, 0.145703,
		11.750349, 17.097303, 21.765524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087591, 18.085897, 21.629797>,  <11.455585, 17.723970, 21.663532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087591, 18.085897, 21.629797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.275296, 18.402077, 21.472324>,  <12.387919, 18.591784, 21.377840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.275296, 18.402077, 21.472324>,  <12.087591, 18.085897, 21.629797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.275296, 18.402077, 21.472324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186941, 0.524637, 0.830547,
		0.863044, -0.316149, 0.393960,
		0.469263, 0.790446, -0.393684,
		12.416076, 18.639210, 21.354219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.588614, 18.302345, 22.141039>,  <12.087591, 18.085897, 21.629797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.588614, 18.302345, 22.141039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.509835, 18.621733, 21.913473>,  <12.462568, 18.813366, 21.776934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.509835, 18.621733, 21.913473>,  <12.588614, 18.302345, 22.141039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509835, 18.621733, 21.913473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127800, 0.554419, 0.822367,
		0.972049, 0.234668, -0.007146,
		-0.196945, 0.798468, -0.568913,
		12.450752, 18.861273, 21.742800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931438, 18.787384, 22.487053>,  <12.588614, 18.302345, 22.141039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931438, 18.787384, 22.487053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.679337, 18.989162, 22.250980>,  <12.528075, 19.110229, 22.109337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.679337, 18.989162, 22.250980>,  <12.931438, 18.787384, 22.487053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679337, 18.989162, 22.250980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240256, 0.596132, 0.766097,
		0.738279, 0.624631, -0.254519,
		-0.630255, 0.504444, -0.590183,
		12.490260, 19.140495, 22.073925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.101357, 19.558067, 22.588739>,  <12.931438, 18.787384, 22.487053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.101357, 19.558067, 22.588739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731164, 19.502947, 22.447605>,  <12.509048, 19.469875, 22.362925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.731164, 19.502947, 22.447605>,  <13.101357, 19.558067, 22.588739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731164, 19.502947, 22.447605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374956, 0.465472, 0.801713,
		0.053759, 0.874269, -0.482456,
		-0.925483, -0.137801, -0.352836,
		12.453519, 19.461607, 22.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889270, 20.249893, 22.661081>,  <13.101357, 19.558067, 22.588739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889270, 20.249893, 22.661081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.574617, 20.006905, 22.616913>,  <12.385826, 19.861113, 22.590412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.574617, 20.006905, 22.616913>,  <12.889270, 20.249893, 22.661081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574617, 20.006905, 22.616913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370978, 0.322064, 0.871005,
		-0.493546, 0.726124, -0.478703,
		-0.786630, -0.607470, -0.110423,
		12.338629, 19.824663, 22.583786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.269534, 20.792217, 22.624994>,  <12.889270, 20.249893, 22.661081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.269534, 20.792217, 22.624994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.098215, 20.438599, 22.699848>,  <11.995423, 20.226427, 22.744761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.098215, 20.438599, 22.699848>,  <12.269534, 20.792217, 22.624994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098215, 20.438599, 22.699848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431416, 0.382013, 0.817280,
		-0.794003, 0.269306, -0.545007,
		-0.428298, -0.884048, 0.187137,
		11.969726, 20.173384, 22.755989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.537633, 20.851398, 22.910143>,  <12.269534, 20.792217, 22.624994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.537633, 20.851398, 22.910143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.657132, 20.488855, 23.029652>,  <11.728831, 20.271330, 23.101357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.657132, 20.488855, 23.029652>,  <11.537633, 20.851398, 22.910143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657132, 20.488855, 23.029652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237350, 0.232665, 0.943150,
		-0.924345, -0.352678, -0.145616,
		0.298748, -0.906359, 0.298771,
		11.746757, 20.216948, 23.119284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982393, 20.647440, 23.390131>,  <11.537633, 20.851398, 22.910143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982393, 20.647440, 23.390131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.292060, 20.402470, 23.454128>,  <11.477859, 20.255487, 23.492527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.292060, 20.402470, 23.454128>,  <10.982393, 20.647440, 23.390131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292060, 20.402470, 23.454128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006960, 0.260985, 0.965318,
		-0.632944, -0.746203, 0.206308,
		0.774166, -0.612428, 0.159995,
		11.524310, 20.218740, 23.502127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801792, 20.140493, 23.831310>,  <10.982393, 20.647440, 23.390131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801792, 20.140493, 23.831310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.196513, 20.159908, 23.893105>,  <11.433346, 20.171556, 23.930182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.196513, 20.159908, 23.893105>,  <10.801792, 20.140493, 23.831310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.196513, 20.159908, 23.893105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161836, 0.263025, 0.951119,
		0.005529, -0.963567, 0.267409,
		0.986802, 0.048535, 0.154485,
		11.492554, 20.174469, 23.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723935, 19.887058, 24.484064>,  <10.801792, 20.140493, 23.831310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723935, 19.887058, 24.484064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.084010, 20.050968, 24.425079>,  <11.300056, 20.149315, 24.389688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.084010, 20.050968, 24.425079>,  <10.723935, 19.887058, 24.484064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084010, 20.050968, 24.425079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017725, 0.303848, 0.952556,
		0.435141, -0.860093, 0.266257,
		0.900188, 0.409777, -0.147462,
		11.354067, 20.173901, 24.380840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.208425, 19.623568, 25.011192>,  <10.723935, 19.887058, 24.484064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.208425, 19.623568, 25.011192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.354671, 19.979124, 24.900778>,  <11.442420, 20.192457, 24.834530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.354671, 19.979124, 24.900778>,  <11.208425, 19.623568, 25.011192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354671, 19.979124, 24.900778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133455, 0.243441, 0.960691,
		0.921148, -0.388084, -0.029620,
		0.365618, 0.888891, -0.276036,
		11.464356, 20.245790, 24.817966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819391, 19.706394, 25.482155>,  <11.208425, 19.623568, 25.011192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819391, 19.706394, 25.482155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.733788, 20.076660, 25.357351>,  <11.682426, 20.298819, 25.282469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.733788, 20.076660, 25.357351>,  <11.819391, 19.706394, 25.482155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.733788, 20.076660, 25.357351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244246, 0.359969, 0.900425,
		0.945804, 0.116492, -0.303126,
		-0.214008, 0.925663, -0.312007,
		11.669586, 20.354359, 25.263748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296548, 20.121637, 25.713238>,  <11.819391, 19.706394, 25.482155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296548, 20.121637, 25.713238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.008477, 20.392828, 25.654324>,  <11.835635, 20.555542, 25.618975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.008477, 20.392828, 25.654324>,  <12.296548, 20.121637, 25.713238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.008477, 20.392828, 25.654324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153197, 0.362451, 0.919326,
		0.676665, 0.639513, -0.364893,
		-0.720177, 0.677977, -0.147286,
		11.792424, 20.596222, 25.610138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558963, 20.754810, 25.985386>,  <12.296548, 20.121637, 25.713238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558963, 20.754810, 25.985386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.161576, 20.798109, 25.970930>,  <11.923144, 20.824087, 25.962257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.161576, 20.798109, 25.970930>,  <12.558963, 20.754810, 25.985386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.161576, 20.798109, 25.970930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004421, 0.352939, 0.935636,
		0.114032, 0.929364, -0.351112,
		-0.993467, 0.108245, -0.036138,
		11.863536, 20.830582, 25.960089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.928367, 21.381065, 26.004745>,  <12.558963, 20.754810, 25.985386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.928367, 21.381065, 26.004745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.312486, 21.384119, 26.116293>,  <13.542957, 21.385952, 26.183222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.312486, 21.384119, 26.116293>,  <12.928367, 21.381065, 26.004745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312486, 21.384119, 26.116293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278916, -0.005734, -0.960298,
		-0.005734, 0.999954, -0.007636,
		0.960298, 0.007636, 0.278871,
		13.600575, 21.386410, 26.199955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268656, 21.794138, 25.493540>,  <12.928367, 21.381065, 26.004745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268656, 21.794138, 25.493540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573216, 21.598726, 25.664001>,  <13.755953, 21.481480, 25.766279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573216, 21.598726, 25.664001>,  <13.268656, 21.794138, 25.493540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573216, 21.598726, 25.664001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478530, -0.019945, -0.877845,
		0.437351, 0.872320, 0.218589,
		0.761402, -0.488528, 0.426154,
		13.801637, 21.452168, 25.791847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877001, 22.033482, 25.087128>,  <13.268656, 21.794138, 25.493540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877001, 22.033482, 25.087128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.002790, 21.700489, 25.269590>,  <14.078264, 21.500692, 25.379068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.002790, 21.700489, 25.269590>,  <13.877001, 22.033482, 25.087128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002790, 21.700489, 25.269590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661840, -0.152197, -0.734032,
		0.680495, 0.532737, 0.503109,
		0.314474, -0.832483, 0.456156,
		14.097133, 21.450745, 25.406437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591572, 21.927013, 24.864027>,  <13.877001, 22.033482, 25.087128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591572, 21.927013, 24.864027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.517118, 21.558834, 25.001507>,  <14.472445, 21.337927, 25.083996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.517118, 21.558834, 25.001507>,  <14.591572, 21.927013, 24.864027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.517118, 21.558834, 25.001507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463408, -0.390706, -0.795363,
		0.866376, 0.011229, 0.499266,
		-0.186135, -0.920447, 0.343702,
		14.461277, 21.282700, 25.104618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145854, 21.569014, 24.603853>,  <14.591572, 21.927013, 24.864027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.145854, 21.569014, 24.603853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.867788, 21.302910, 24.712795>,  <14.700949, 21.143248, 24.778160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.867788, 21.302910, 24.712795>,  <15.145854, 21.569014, 24.603853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867788, 21.302910, 24.712795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370778, -0.656417, -0.656993,
		0.615850, -0.355734, 0.702981,
		-0.695163, -0.665259, 0.272357,
		14.659239, 21.103333, 24.794502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402344, 20.990746, 24.521610>,  <15.145854, 21.569014, 24.603853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402344, 20.990746, 24.521610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.024424, 20.865271, 24.483768>,  <14.797671, 20.789986, 24.461063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.024424, 20.865271, 24.483768>,  <15.402344, 20.990746, 24.521610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024424, 20.865271, 24.483768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301927, -0.721422, -0.623209,
		0.127244, -0.617373, 0.776312,
		-0.944801, -0.313689, -0.094605,
		14.740983, 20.771164, 24.455387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483016, 20.257685, 24.487555>,  <15.402344, 20.990746, 24.521610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483016, 20.257685, 24.487555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.114061, 20.329893, 24.350958>,  <14.892689, 20.373219, 24.269001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.114061, 20.329893, 24.350958>,  <15.483016, 20.257685, 24.487555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.114061, 20.329893, 24.350958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108540, -0.727324, -0.677657,
		-0.370706, -0.662127, 0.651280,
		-0.922386, 0.180521, -0.341490,
		14.837345, 20.384050, 24.248510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213808, 19.594177, 24.321436>,  <15.483016, 20.257685, 24.487555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213808, 19.594177, 24.321436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.004766, 19.850777, 24.096807>,  <14.879341, 20.004736, 23.962030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.004766, 19.850777, 24.096807>,  <15.213808, 19.594177, 24.321436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004766, 19.850777, 24.096807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083949, -0.616757, -0.782664,
		-0.848433, -0.456167, 0.268466,
		-0.522604, 0.641501, -0.561571,
		14.847985, 20.043226, 23.928335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581653, 19.271780, 23.905022>,  <15.213808, 19.594177, 24.321436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.581653, 19.271780, 23.905022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.705449, 19.603619, 23.719124>,  <14.779727, 19.802721, 23.607586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.705449, 19.603619, 23.719124>,  <14.581653, 19.271780, 23.905022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705449, 19.603619, 23.719124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084422, -0.510783, -0.855555,
		-0.947148, 0.225551, -0.228118,
		0.309490, 0.829595, -0.464745,
		14.798296, 19.852497, 23.579700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172441, 19.332150, 23.366169>,  <14.581653, 19.271780, 23.905022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172441, 19.332150, 23.366169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.460635, 19.583706, 23.249279>,  <14.633553, 19.734640, 23.179146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.460635, 19.583706, 23.249279>,  <14.172441, 19.332150, 23.366169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460635, 19.583706, 23.249279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034830, -0.388047, -0.920981,
		-0.692593, 0.673733, -0.257679,
		0.720487, 0.628890, -0.292225,
		14.676782, 19.772373, 23.161612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025867, 19.397049, 22.638895>,  <14.172441, 19.332150, 23.366169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025867, 19.397049, 22.638895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.388184, 19.563526, 22.670715>,  <14.605573, 19.663412, 22.689808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.388184, 19.563526, 22.670715>,  <14.025867, 19.397049, 22.638895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.388184, 19.563526, 22.670715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198229, -0.250280, -0.947663,
		-0.374501, 0.874153, -0.309203,
		0.905789, 0.416194, 0.079552,
		14.659921, 19.688385, 22.694580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121898, 19.691803, 22.050623>,  <14.025867, 19.397049, 22.638895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121898, 19.691803, 22.050623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.501601, 19.704262, 22.175802>,  <14.729424, 19.711737, 22.250910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.501601, 19.704262, 22.175802>,  <14.121898, 19.691803, 22.050623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.501601, 19.704262, 22.175802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312475, 0.019239, -0.949731,
		-0.035603, 0.999330, 0.008529,
		0.949259, 0.031148, 0.312950,
		14.786379, 19.713606, 22.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558059, 20.350916, 21.806335>,  <14.121898, 19.691803, 22.050623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558059, 20.350916, 21.806335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.786614, 20.027241, 21.861080>,  <14.923748, 19.833036, 21.893927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.786614, 20.027241, 21.861080>,  <14.558059, 20.350916, 21.806335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786614, 20.027241, 21.861080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492188, 0.204438, -0.846142,
		0.656708, 0.550838, 0.515085,
		0.571390, -0.809187, 0.136860,
		14.958032, 19.784485, 21.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259673, 20.402035, 21.371168>,  <14.558059, 20.350916, 21.806335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259673, 20.402035, 21.371168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.267635, 20.012016, 21.459614>,  <15.272412, 19.778006, 21.512682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.267635, 20.012016, 21.459614>,  <15.259673, 20.402035, 21.371168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.267635, 20.012016, 21.459614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401782, -0.194714, -0.894795,
		0.915519, 0.106651, 0.387879,
		0.019906, -0.975045, 0.221115,
		15.273607, 19.719503, 21.525948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.063365, 25.173407, 17.347132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227953, 25.054443, 17.691746>,  <9.326706, 24.983065, 17.898514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227953, 25.054443, 17.691746>,  <9.063365, 25.173407, 17.347132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.227953, 25.054443, 17.691746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874816, -0.394084, 0.281772,
		0.255714, -0.869623, -0.422333,
		0.411471, -0.297410, 0.861533,
		9.351394, 24.965219, 17.950205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.056767, 24.364731, 17.487179>,  <9.063365, 25.173407, 17.347132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.056767, 24.364731, 17.487179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.036808, 24.592886, 17.815123>,  <9.024833, 24.729778, 18.011889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.036808, 24.592886, 17.815123>,  <9.056767, 24.364731, 17.487179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.036808, 24.592886, 17.815123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914369, -0.356325, 0.192252,
		0.401795, -0.740062, 0.539322,
		-0.049895, 0.570386, 0.819860,
		9.021839, 24.764002, 18.061081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.037452, 24.035154, 18.180876>,  <9.056767, 24.364731, 17.487179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.037452, 24.035154, 18.180876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.827742, 24.375723, 18.174988>,  <8.701916, 24.580065, 18.171455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.827742, 24.375723, 18.174988>,  <9.037452, 24.035154, 18.180876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827742, 24.375723, 18.174988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851478, -0.524376, -0.003864,
		-0.011010, 0.010510, 0.999884,
		-0.524274, 0.851422, -0.014722,
		8.670460, 24.631149, 18.170570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.547715, 24.005030, 18.725031>,  <9.037452, 24.035154, 18.180876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.547715, 24.005030, 18.725031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.414477, 24.245720, 18.434658>,  <8.334535, 24.390135, 18.260435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.414477, 24.245720, 18.434658>,  <8.547715, 24.005030, 18.725031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.414477, 24.245720, 18.434658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783024, -0.605435, -0.142555,
		-0.525282, 0.520937, 0.672832,
		-0.333094, 0.601725, -0.725930,
		8.314549, 24.426237, 18.216879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.162485, 23.530621, 18.397062>,  <8.547715, 24.005030, 18.725031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.162485, 23.530621, 18.397062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.077889, 23.863199, 18.191551>,  <8.027132, 24.062746, 18.068245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.077889, 23.863199, 18.191551>,  <8.162485, 23.530621, 18.397062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.077889, 23.863199, 18.191551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760569, -0.470150, -0.447766,
		-0.613847, 0.296067, 0.731804,
		-0.211489, 0.831446, -0.513779,
		8.014442, 24.112633, 18.037418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.460903, 23.852407, 18.399734>,  <8.162485, 23.530621, 18.397062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.460903, 23.852407, 18.399734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.637592, 23.909739, 18.045483>,  <7.743605, 23.944138, 17.832932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.637592, 23.909739, 18.045483>,  <7.460903, 23.852407, 18.399734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637592, 23.909739, 18.045483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762466, -0.460241, -0.454778,
		-0.472785, 0.876148, -0.094015,
		0.441723, 0.143329, -0.885628,
		7.770109, 23.952738, 17.779795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.919818, 24.005562, 17.945129>,  <7.460903, 23.852407, 18.399734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.919818, 24.005562, 17.945129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.081124, 24.306778, 18.153095>,  <7.177907, 24.487507, 18.277874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.081124, 24.306778, 18.153095>,  <6.919818, 24.005562, 17.945129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.081124, 24.306778, 18.153095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347989, 0.399276, -0.848223,
		-0.846334, 0.522981, -0.101036,
		0.403264, 0.753040, 0.519913,
		7.202103, 24.532690, 18.309069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.642352, 24.759525, 17.807398>,  <6.919818, 24.005562, 17.945129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.642352, 24.759525, 17.807398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.028379, 24.717659, 17.903469>,  <7.259996, 24.692539, 17.961111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.028379, 24.717659, 17.903469>,  <6.642352, 24.759525, 17.807398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.028379, 24.717659, 17.903469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253669, 0.602550, -0.756694,
		-0.065519, 0.791188, 0.608054,
		0.965070, -0.104666, 0.240178,
		7.317900, 24.686258, 17.975523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.970829, 24.482714, 17.622574>,  <6.642352, 24.759525, 17.807398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.970829, 24.482714, 17.622574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.238089, 24.375513, 17.344940>,  <6.398444, 24.311193, 17.178360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.238089, 24.375513, 17.344940>,  <5.970829, 24.482714, 17.622574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.238089, 24.375513, 17.344940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674274, -0.612474, -0.412589,
		-0.314534, 0.743673, -0.589931,
		0.668149, -0.268002, -0.694083,
		6.438533, 24.295113, 17.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.422478, 24.030687, 17.848042>,  <5.970829, 24.482714, 17.622574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.422478, 24.030687, 17.848042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.060945, 24.086283, 17.686167>,  <4.844026, 24.119640, 17.589043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.060945, 24.086283, 17.686167>,  <5.422478, 24.030687, 17.848042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.060945, 24.086283, 17.686167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167787, -0.985151, 0.036395,
		-0.393619, 0.100796, 0.913731,
		-0.903832, 0.138987, -0.404686,
		4.789795, 24.127979, 17.564760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.954933, 23.482788, 18.069431>,  <5.422478, 24.030687, 17.848042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.954933, 23.482788, 18.069431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.773540, 23.630152, 17.744808>,  <4.664704, 23.718571, 17.550034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.773540, 23.630152, 17.744808>,  <4.954933, 23.482788, 18.069431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773540, 23.630152, 17.744808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365652, -0.907313, -0.207560,
		-0.812806, 0.202623, 0.546161,
		-0.453482, 0.368411, -0.811559,
		4.637496, 23.740675, 17.501341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.270036, 23.269911, 18.108423>,  <4.954933, 23.482788, 18.069431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.270036, 23.269911, 18.108423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.332850, 23.332911, 17.718443>,  <4.370539, 23.370710, 17.484455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.332850, 23.332911, 17.718443>,  <4.270036, 23.269911, 18.108423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.332850, 23.332911, 17.718443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355777, -0.911895, -0.204620,
		-0.921283, 0.378999, -0.087166,
		0.157037, 0.157501, -0.974953,
		4.379961, 23.380161, 17.425957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619505, 23.042431, 17.800406>,  <4.270036, 23.269911, 18.108423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619505, 23.042431, 17.800406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.901516, 23.048637, 17.516802>,  <4.070723, 23.052362, 17.346640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.901516, 23.048637, 17.516802>,  <3.619505, 23.042431, 17.800406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.901516, 23.048637, 17.516802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222821, -0.944284, -0.242238,
		-0.673265, 0.328767, -0.662289,
		0.705028, 0.015518, -0.709009,
		4.113025, 23.053293, 17.304098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.327119, 22.700191, 17.381248>,  <3.619505, 23.042431, 17.800406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.327119, 22.700191, 17.381248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.710657, 22.675213, 17.270456>,  <3.940779, 22.660225, 17.203981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.710657, 22.675213, 17.270456>,  <3.327119, 22.700191, 17.381248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710657, 22.675213, 17.270456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118896, -0.974175, -0.191954,
		-0.257840, 0.216986, -0.941507,
		0.958844, -0.062448, -0.276981,
		3.998310, 22.656479, 17.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.282717, 22.206059, 16.789957>,  <3.327119, 22.700191, 17.381248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.282717, 22.206059, 16.789957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.668044, 22.244415, 16.890217>,  <3.899240, 22.267429, 16.950373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.668044, 22.244415, 16.890217>,  <3.282717, 22.206059, 16.789957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.668044, 22.244415, 16.890217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134948, -0.980395, -0.143576,
		0.231969, 0.172134, -0.957371,
		0.963317, 0.095890, 0.250650,
		3.957039, 22.273182, 16.965412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619835, 21.764963, 16.273174>,  <3.282717, 22.206059, 16.789957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619835, 21.764963, 16.273174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.868318, 21.798414, 16.584843>,  <4.017407, 21.818485, 16.771843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.868318, 21.798414, 16.584843>,  <3.619835, 21.764963, 16.273174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868318, 21.798414, 16.584843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045385, -0.988781, 0.142308,
		0.782331, -0.123766, -0.610443,
		0.621207, 0.083627, 0.779171,
		4.054680, 21.823502, 16.818594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.084604, 21.378374, 16.168043>,  <3.619835, 21.764963, 16.273174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.084604, 21.378374, 16.168043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.136055, 21.427277, 16.561695>,  <4.166926, 21.456617, 16.797886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.136055, 21.427277, 16.561695>,  <4.084604, 21.378374, 16.168043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.136055, 21.427277, 16.561695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092988, -0.989487, 0.110767,
		0.987324, 0.077265, -0.138644,
		0.128628, 0.122255, 0.984128,
		4.174644, 21.463953, 16.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.657203, 20.976112, 16.220348>,  <4.084604, 21.378374, 16.168043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.657203, 20.976112, 16.220348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.494211, 21.023136, 16.582594>,  <4.396416, 21.051350, 16.799942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.494211, 21.023136, 16.582594>,  <4.657203, 20.976112, 16.220348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.494211, 21.023136, 16.582594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069094, -0.992806, 0.097788,
		0.910596, -0.022726, 0.412672,
		-0.407480, 0.117558, 0.905616,
		4.371967, 21.058403, 16.854279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.983397, 20.597923, 16.768639>,  <4.657203, 20.976112, 16.220348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.983397, 20.597923, 16.768639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.608774, 20.636583, 16.903408>,  <4.384000, 20.659781, 16.984270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.608774, 20.636583, 16.903408>,  <4.983397, 20.597923, 16.768639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608774, 20.636583, 16.903408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081497, -0.994933, 0.058872,
		0.340908, 0.027679, 0.939689,
		-0.936558, 0.096652, 0.336925,
		4.327806, 20.665579, 17.004486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.904439, 20.121820, 17.289423>,  <4.983397, 20.597923, 16.768639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.904439, 20.121820, 17.289423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.520253, 20.208839, 17.219940>,  <4.289741, 20.261051, 17.178249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.520253, 20.208839, 17.219940>,  <4.904439, 20.121820, 17.289423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.520253, 20.208839, 17.219940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258411, -0.928814, 0.265573,
		-0.103567, 0.299962, 0.948313,
		-0.960467, 0.217550, -0.173708,
		4.232112, 20.274105, 17.167828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.489942, 19.759300, 17.774492>,  <4.904439, 20.121820, 17.289423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.489942, 19.759300, 17.774492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.216195, 19.836164, 17.493147>,  <4.051947, 19.882282, 17.324341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.216195, 19.836164, 17.493147>,  <4.489942, 19.759300, 17.774492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.216195, 19.836164, 17.493147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315968, -0.947526, 0.048569,
		-0.657120, 0.255479, 0.709171,
		-0.684366, 0.192160, -0.703361,
		4.010885, 19.893812, 17.282139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952869, 19.290459, 18.030222>,  <4.489942, 19.759300, 17.774492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952869, 19.290459, 18.030222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.923807, 19.402489, 17.647333>,  <3.906370, 19.469707, 17.417599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.923807, 19.402489, 17.647333>,  <3.952869, 19.290459, 18.030222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.923807, 19.402489, 17.647333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379967, -0.895154, -0.233076,
		-0.922143, 0.346780, 0.171456,
		-0.072653, 0.280077, -0.957224,
		3.902011, 19.486511, 17.360167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290371, 19.004530, 17.818493>,  <3.952869, 19.290459, 18.030222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290371, 19.004530, 17.818493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.514751, 19.072947, 17.494499>,  <3.649380, 19.113997, 17.300102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.514751, 19.072947, 17.494499>,  <3.290371, 19.004530, 17.818493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.514751, 19.072947, 17.494499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383028, -0.813774, -0.437106,
		-0.733909, 0.555443, -0.390974,
		0.560952, 0.171042, -0.809986,
		3.683037, 19.124260, 17.251503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.905173, 18.775158, 17.243172>,  <3.290371, 19.004530, 17.818493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.905173, 18.775158, 17.243172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.256432, 18.809294, 17.054884>,  <3.467187, 18.829775, 16.941912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.256432, 18.809294, 17.054884>,  <2.905173, 18.775158, 17.243172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.256432, 18.809294, 17.054884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057342, -0.958091, -0.280668,
		-0.474944, 0.273459, -0.836450,
		0.878146, 0.085337, -0.470720,
		3.519875, 18.834894, 16.913668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.847231, 18.579676, 16.582216>,  <2.905173, 18.775158, 17.243172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.847231, 18.579676, 16.582216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.241152, 18.540573, 16.639637>,  <3.477504, 18.517111, 16.674089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.241152, 18.540573, 16.639637>,  <2.847231, 18.579676, 16.582216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.241152, 18.540573, 16.639637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017112, -0.877140, -0.479929,
		0.172834, 0.470179, -0.865483,
		0.984802, -0.097758, 0.143554,
		3.536592, 18.511246, 16.682703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.030272, 17.977007, 16.113356>,  <2.847231, 18.579676, 16.582216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.030272, 17.977007, 16.113356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.365079, 18.053064, 16.318586>,  <3.565963, 18.098700, 16.441725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.365079, 18.053064, 16.318586>,  <3.030272, 17.977007, 16.113356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.365079, 18.053064, 16.318586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423952, -0.818169, -0.388414,
		0.345928, 0.542628, -0.765433,
		0.837018, 0.190144, 0.513076,
		3.616184, 18.110107, 16.472509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.617820, 17.975267, 15.597607>,  <3.030272, 17.977007, 16.113356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.617820, 17.975267, 15.597607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.735064, 17.868055, 15.964703>,  <3.805410, 17.803728, 16.184959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.735064, 17.868055, 15.964703>,  <3.617820, 17.975267, 15.597607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735064, 17.868055, 15.964703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488922, -0.782873, -0.384793,
		0.821609, 0.561490, -0.098422,
		0.293110, -0.268029, 0.917740,
		3.822997, 17.787647, 16.240025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.338661, 17.723722, 15.559056>,  <3.617820, 17.975267, 15.597607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.338661, 17.723722, 15.559056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.176652, 17.588104, 15.898705>,  <4.079447, 17.506733, 16.102493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.176652, 17.588104, 15.898705>,  <4.338661, 17.723722, 15.559056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176652, 17.588104, 15.898705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335962, -0.918922, -0.206666,
		0.850346, 0.201568, 0.486089,
		-0.405021, -0.339045, 0.849121,
		4.055146, 17.486391, 16.153440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.918230, 17.536215, 15.975801>,  <4.338661, 17.723722, 15.559056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.918230, 17.536215, 15.975801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.585693, 17.335430, 16.071220>,  <4.386170, 17.214960, 16.128471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.585693, 17.335430, 16.071220>,  <4.918230, 17.536215, 15.975801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.585693, 17.335430, 16.071220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399642, -0.838218, -0.371049,
		0.386206, -0.213135, 0.897451,
		-0.831343, -0.501960, 0.238546,
		4.336290, 17.184841, 16.142784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.141603, 16.985460, 16.327702>,  <4.918230, 17.536215, 15.975801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.141603, 16.985460, 16.327702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.773221, 16.904179, 16.194706>,  <4.552191, 16.855410, 16.114908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.773221, 16.904179, 16.194706>,  <5.141603, 16.985460, 16.327702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773221, 16.904179, 16.194706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338252, -0.840518, -0.423220,
		-0.193463, -0.502232, 0.842814,
		-0.920955, -0.203206, -0.332490,
		4.496934, 16.843216, 16.094959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.210425, 16.310169, 16.274866>,  <5.141603, 16.985460, 16.327702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.210425, 16.310169, 16.274866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.869492, 16.354507, 16.070419>,  <4.664932, 16.381111, 15.947751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.869492, 16.354507, 16.070419>,  <5.210425, 16.310169, 16.274866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.869492, 16.354507, 16.070419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176653, -0.858828, -0.480841,
		-0.492263, -0.500127, 0.712426,
		-0.852332, 0.110848, -0.511118,
		4.613792, 16.387762, 15.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.836473, 16.619194, 16.411489>,  <5.210425, 16.310169, 16.274866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.836473, 16.619194, 16.411489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205548, 16.476480, 16.469942>,  <6.426992, 16.390852, 16.505013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205548, 16.476480, 16.469942>,  <5.836473, 16.619194, 16.411489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.205548, 16.476480, 16.469942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157502, 0.694753, 0.701792,
		-0.351914, -0.624518, 0.697234,
		0.922686, -0.356786, 0.146130,
		6.482354, 16.369444, 16.513781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.818825, 16.599388, 17.091908>,  <5.836473, 16.619194, 16.411489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.818825, 16.599388, 17.091908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.198919, 16.624680, 16.969887>,  <6.426975, 16.639854, 16.896675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.198919, 16.624680, 16.969887>,  <5.818825, 16.599388, 17.091908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.198919, 16.624680, 16.969887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152991, 0.758274, 0.633730,
		0.271381, -0.648863, 0.710865,
		0.950235, 0.063227, -0.305051,
		6.483989, 16.643648, 16.878372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.198482, 16.603508, 17.642204>,  <5.818825, 16.599388, 17.091908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.198482, 16.603508, 17.642204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.426831, 16.778965, 17.364588>,  <6.563841, 16.884239, 17.198017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.426831, 16.778965, 17.364588>,  <6.198482, 16.603508, 17.642204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.426831, 16.778965, 17.364588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232501, 0.724354, 0.649041,
		0.787432, -0.531885, 0.311528,
		0.570872, 0.438646, -0.694043,
		6.598093, 16.910559, 17.156376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.750288, 17.021461, 18.032629>,  <6.198482, 16.603508, 17.642204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.750288, 17.021461, 18.032629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.752843, 17.165283, 17.659388>,  <6.754376, 17.251575, 17.435444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.752843, 17.165283, 17.659388>,  <6.750288, 17.021461, 18.032629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752843, 17.165283, 17.659388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254193, 0.901887, 0.349266,
		0.967132, -0.239418, -0.085636,
		0.006387, 0.359555, -0.933102,
		6.754759, 17.273149, 17.379457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.286751, 17.443283, 18.067465>,  <6.750288, 17.021461, 18.032629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.286751, 17.443283, 18.067465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.091282, 17.564096, 17.740057>,  <6.974000, 17.636583, 17.543612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.091282, 17.564096, 17.740057>,  <7.286751, 17.443283, 18.067465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.091282, 17.564096, 17.740057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175412, 0.953023, 0.246938,
		0.854652, -0.022906, -0.518697,
		-0.488673, 0.302031, -0.818520,
		6.944680, 17.654705, 17.494501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678316, 18.015980, 17.703621>,  <7.286751, 17.443283, 18.067465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678316, 18.015980, 17.703621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.301137, 18.058434, 17.577389>,  <7.074831, 18.083906, 17.501650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.301137, 18.058434, 17.577389>,  <7.678316, 18.015980, 17.703621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.301137, 18.058434, 17.577389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092422, 0.994020, 0.058156,
		0.319864, 0.025672, -0.947116,
		-0.942945, 0.106137, -0.315578,
		7.018254, 18.090275, 17.482716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.710828, 18.517462, 17.205780>,  <7.678316, 18.015980, 17.703621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.710828, 18.517462, 17.205780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337617, 18.531176, 17.349047>,  <7.113690, 18.539404, 17.435007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337617, 18.531176, 17.349047>,  <7.710828, 18.517462, 17.205780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.337617, 18.531176, 17.349047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100094, 0.980889, 0.166849,
		-0.345603, 0.191525, -0.918628,
		-0.933027, 0.034286, 0.358168,
		7.057709, 18.541462, 17.456497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.461423, 19.179941, 17.005619>,  <7.710828, 18.517462, 17.205780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.461423, 19.179941, 17.005619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.226775, 19.041861, 17.298662>,  <7.085986, 18.959011, 17.474487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.226775, 19.041861, 17.298662>,  <7.461423, 19.179941, 17.005619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.226775, 19.041861, 17.298662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227002, 0.938430, 0.260420,
		-0.777397, -0.013536, -0.628865,
		-0.586621, -0.345203, 0.732605,
		7.050788, 18.938299, 17.518444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.951311, 19.659082, 17.075201>,  <7.461423, 19.179941, 17.005619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.951311, 19.659082, 17.075201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929631, 19.459642, 17.421255>,  <6.916624, 19.339979, 17.628887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.929631, 19.459642, 17.421255>,  <6.951311, 19.659082, 17.075201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.929631, 19.459642, 17.421255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266384, 0.842230, 0.468708,
		-0.962342, -0.205055, -0.178467,
		-0.054199, -0.498598, 0.865137,
		6.913372, 19.310062, 17.680796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.274942, 19.803717, 17.435457>,  <6.951311, 19.659082, 17.075201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.274942, 19.803717, 17.435457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.504850, 19.680216, 17.738590>,  <6.642795, 19.606115, 17.920469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.504850, 19.680216, 17.738590>,  <6.274942, 19.803717, 17.435457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.504850, 19.680216, 17.738590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264938, 0.805997, 0.529316,
		-0.774240, -0.505014, 0.381462,
		0.574770, -0.308754, 0.757833,
		6.677281, 19.587589, 17.965940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.852901, 19.888800, 18.070749>,  <6.274942, 19.803717, 17.435457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.852901, 19.888800, 18.070749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.246018, 19.870804, 18.142408>,  <6.481888, 19.860006, 18.185404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.246018, 19.870804, 18.142408>,  <5.852901, 19.888800, 18.070749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.246018, 19.870804, 18.142408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054473, 0.856152, 0.513845,
		-0.176496, -0.514762, 0.838969,
		0.982793, -0.044990, 0.179148,
		6.540856, 19.857307, 18.196154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.017769, 19.945824, 18.784309>,  <5.852901, 19.888800, 18.070749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.017769, 19.945824, 18.784309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.371131, 20.048050, 18.627193>,  <6.583148, 20.109385, 18.532925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.371131, 20.048050, 18.627193>,  <6.017769, 19.945824, 18.784309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.371131, 20.048050, 18.627193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034094, 0.800924, 0.597794,
		0.467368, -0.541486, 0.698827,
		0.883405, 0.255565, -0.392788,
		6.636153, 20.124720, 18.509357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.356100, 20.272541, 19.262861>,  <6.017769, 19.945824, 18.784309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.356100, 20.272541, 19.262861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585234, 20.395046, 18.958740>,  <6.722714, 20.468550, 18.776268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.585234, 20.395046, 18.958740>,  <6.356100, 20.272541, 19.262861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.585234, 20.395046, 18.958740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233197, 0.828348, 0.509372,
		0.785797, -0.469087, 0.403089,
		0.572838, 0.306264, -0.760302,
		6.757084, 20.486925, 18.730650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.912159, 20.598534, 19.512110>,  <6.356100, 20.272541, 19.262861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.912159, 20.598534, 19.512110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.972346, 20.725563, 19.137621>,  <7.008458, 20.801781, 18.912928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.972346, 20.725563, 19.137621>,  <6.912159, 20.598534, 19.512110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.972346, 20.725563, 19.137621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406480, 0.843378, 0.351407,
		0.901185, -0.433429, -0.002187,
		0.150466, 0.317572, -0.936220,
		7.017486, 20.820835, 18.856754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.623538, 20.899519, 19.488029>,  <6.912159, 20.598534, 19.512110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.623538, 20.899519, 19.488029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.399837, 21.032257, 19.184158>,  <7.265616, 21.111900, 19.001835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.399837, 21.032257, 19.184158>,  <7.623538, 20.899519, 19.488029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.399837, 21.032257, 19.184158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163041, 0.942516, 0.291688,
		0.812806, 0.039269, -0.581210,
		-0.559253, 0.331847, -0.759680,
		7.232061, 21.131811, 18.956255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.085790, 21.457560, 19.130310>,  <7.623538, 20.899519, 19.488029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.085790, 21.457560, 19.130310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.703869, 21.525122, 19.032475>,  <7.474716, 21.565659, 18.973774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.703869, 21.525122, 19.032475>,  <8.085790, 21.457560, 19.130310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.703869, 21.525122, 19.032475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089626, 0.948158, 0.304900,
		0.283408, 0.269198, -0.920441,
		-0.954802, 0.168906, -0.244588,
		7.417428, 21.575794, 18.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.163286, 21.987284, 18.710720>,  <8.085790, 21.457560, 19.130310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.163286, 21.987284, 18.710720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.783117, 22.003742, 18.834009>,  <7.555015, 22.013617, 18.907984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.783117, 22.003742, 18.834009>,  <8.163286, 21.987284, 18.710720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.783117, 22.003742, 18.834009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114316, 0.968029, 0.223275,
		-0.289183, 0.247441, -0.924741,
		-0.950423, 0.041146, 0.308224,
		7.497990, 22.016087, 18.926476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.891507, 22.584852, 18.438725>,  <8.163286, 21.987284, 18.710720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.891507, 22.584852, 18.438725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.618106, 22.484425, 18.712889>,  <7.454065, 22.424168, 18.877386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.618106, 22.484425, 18.712889>,  <7.891507, 22.584852, 18.438725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.618106, 22.484425, 18.712889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033423, 0.948765, 0.314210,
		-0.729182, 0.191855, -0.656876,
		-0.683504, -0.251071, 0.685410,
		7.413055, 22.409103, 18.918512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.348876, 23.100159, 18.357273>,  <7.891507, 22.584852, 18.438725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.348876, 23.100159, 18.357273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.292583, 22.943356, 18.720926>,  <7.258807, 22.849274, 18.939119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.292583, 22.943356, 18.720926>,  <7.348876, 23.100159, 18.357273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.292583, 22.943356, 18.720926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270101, 0.898642, 0.345672,
		-0.952492, -0.196910, -0.232349,
		-0.140732, -0.392007, 0.909134,
		7.250363, 22.825754, 18.993666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.675127, 23.302347, 18.575224>,  <7.348876, 23.100159, 18.357273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.675127, 23.302347, 18.575224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.880825, 23.199038, 18.902357>,  <7.004244, 23.137053, 19.098637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.880825, 23.199038, 18.902357>,  <6.675127, 23.302347, 18.575224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.880825, 23.199038, 18.902357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255700, 0.864040, 0.433649,
		-0.818639, -0.432121, 0.378287,
		0.514244, -0.258274, 0.817831,
		7.035099, 23.121555, 19.147707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.256347, 23.205770, 19.188713>,  <6.675127, 23.302347, 18.575224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.256347, 23.205770, 19.188713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.619236, 23.300526, 19.327755>,  <6.836970, 23.357380, 19.411180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.619236, 23.300526, 19.327755>,  <6.256347, 23.205770, 19.188713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.619236, 23.300526, 19.327755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404820, 0.716236, 0.568443,
		-0.114309, -0.656422, 0.745683,
		0.907224, 0.236889, 0.347605,
		6.891404, 23.371592, 19.432035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.399809, 19.456711, 27.976559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.113165, 19.506721, 27.702087>,  <16.941179, 19.536728, 27.537405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.113165, 19.506721, 27.702087>,  <17.399809, 19.456711, 27.976559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113165, 19.506721, 27.702087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656662, 0.210651, 0.724169,
		0.235086, 0.969533, -0.068853,
		-0.716610, 0.125029, -0.686177,
		16.898182, 19.544230, 27.496235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177464, 20.151001, 27.939529>,  <17.399809, 19.456711, 27.976559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177464, 20.151001, 27.939529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.889576, 19.897024, 27.827208>,  <16.716845, 19.744638, 27.759813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.889576, 19.897024, 27.827208>,  <17.177464, 20.151001, 27.939529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889576, 19.897024, 27.827208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468067, 0.145042, 0.871709,
		-0.512757, 0.758821, -0.401586,
		-0.719718, -0.634944, -0.280807,
		16.673660, 19.706541, 27.742966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568653, 20.414490, 28.080524>,  <17.177464, 20.151001, 27.939529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568653, 20.414490, 28.080524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.468882, 20.027140, 28.077991>,  <16.409019, 19.794729, 28.076471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.468882, 20.027140, 28.077991>,  <16.568653, 20.414490, 28.080524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468882, 20.027140, 28.077991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523242, 0.129267, 0.842323,
		-0.814864, 0.213411, -0.538936,
		-0.249428, -0.968373, -0.006330,
		16.394053, 19.736628, 28.076092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895280, 20.346199, 28.343416>,  <16.568653, 20.414490, 28.080524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895280, 20.346199, 28.343416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.022261, 19.971212, 28.400517>,  <16.098450, 19.746220, 28.434776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.022261, 19.971212, 28.400517>,  <15.895280, 20.346199, 28.343416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022261, 19.971212, 28.400517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533234, -0.051991, 0.844368,
		-0.784147, -0.344166, -0.516395,
		0.317451, -0.937469, 0.142753,
		16.117496, 19.689972, 28.443342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343347, 20.021856, 28.704805>,  <15.895280, 20.346199, 28.343416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343347, 20.021856, 28.704805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637184, 19.757648, 28.766886>,  <15.813487, 19.599125, 28.804134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637184, 19.757648, 28.766886>,  <15.343347, 20.021856, 28.704805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637184, 19.757648, 28.766886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408893, -0.248421, 0.878119,
		-0.541458, -0.708522, -0.452570,
		0.734594, -0.660518, 0.155200,
		15.857563, 19.559494, 28.813446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968218, 19.308628, 28.797121>,  <15.343347, 20.021856, 28.704805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968218, 19.308628, 28.797121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.334732, 19.302050, 28.957195>,  <15.554641, 19.298101, 29.053240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.334732, 19.302050, 28.957195>,  <14.968218, 19.308628, 28.797121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334732, 19.302050, 28.957195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379232, -0.357072, 0.853629,
		0.128856, -0.933932, -0.333417,
		0.916286, -0.016447, 0.400188,
		15.609617, 19.297115, 29.077251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127338, 18.665869, 29.165588>,  <14.968218, 19.308628, 28.797121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127338, 18.665869, 29.165588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.380434, 18.930185, 29.327080>,  <15.532291, 19.088776, 29.423975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.380434, 18.930185, 29.327080>,  <15.127338, 18.665869, 29.165588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380434, 18.930185, 29.327080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258522, -0.311199, 0.914506,
		0.729938, -0.683016, -0.026078,
		0.632738, 0.660791, 0.403731,
		15.570255, 19.128422, 29.448198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485723, 18.287958, 29.713854>,  <15.127338, 18.665869, 29.165588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485723, 18.287958, 29.713854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.545844, 18.672743, 29.805101>,  <15.581917, 18.903614, 29.859850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.545844, 18.672743, 29.805101>,  <15.485723, 18.287958, 29.713854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545844, 18.672743, 29.805101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124774, -0.210437, 0.969612,
		0.980735, -0.174200, 0.088398,
		0.150304, 0.961962, 0.228118,
		15.590936, 18.961332, 29.873537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800673, 18.131224, 30.330299>,  <15.485723, 18.287958, 29.713854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800673, 18.131224, 30.330299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.689495, 18.515276, 30.342262>,  <15.622788, 18.745707, 30.349440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.689495, 18.515276, 30.342262>,  <15.800673, 18.131224, 30.330299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689495, 18.515276, 30.342262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202150, -0.088901, 0.975311,
		0.939085, 0.265038, 0.218800,
		-0.277946, 0.960131, 0.029908,
		15.606112, 18.803316, 30.351234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039675, 18.431267, 30.960413>,  <15.800673, 18.131224, 30.330299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039675, 18.431267, 30.960413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.741255, 18.687517, 30.887739>,  <15.562202, 18.841267, 30.844135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.741255, 18.687517, 30.887739>,  <16.039675, 18.431267, 30.960413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741255, 18.687517, 30.887739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241978, -0.006631, 0.970259,
		0.620368, 0.767825, 0.159964,
		-0.746050, 0.640625, -0.181683,
		15.517440, 18.879705, 30.833235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057701, 18.968826, 31.534979>,  <16.039675, 18.431267, 30.960413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057701, 18.968826, 31.534979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.690312, 18.954420, 31.377443>,  <15.469879, 18.945776, 31.282921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.690312, 18.954420, 31.377443>,  <16.057701, 18.968826, 31.534979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690312, 18.954420, 31.377443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394841, 0.140276, 0.907977,
		0.022544, 0.989457, -0.143061,
		-0.918473, -0.036017, -0.393841,
		15.414770, 18.943615, 31.259291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658665, 19.597754, 31.759691>,  <16.057701, 18.968826, 31.534979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658665, 19.597754, 31.759691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.392303, 19.314665, 31.665291>,  <15.232485, 19.144812, 31.608650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.392303, 19.314665, 31.665291>,  <15.658665, 19.597754, 31.759691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392303, 19.314665, 31.665291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453930, 0.133323, 0.881006,
		-0.592044, 0.693796, -0.410038,
		-0.665906, -0.707723, -0.236002,
		15.192531, 19.102348, 31.594490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994061, 19.895569, 31.792440>,  <15.658665, 19.597754, 31.759691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994061, 19.895569, 31.792440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.994132, 19.503696, 31.872663>,  <14.994175, 19.268572, 31.920797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.994132, 19.503696, 31.872663>,  <14.994061, 19.895569, 31.792440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994132, 19.503696, 31.872663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522839, 0.170869, 0.835130,
		-0.852431, -0.105009, -0.512186,
		0.000179, -0.979682, 0.200557,
		14.994185, 19.209791, 31.932831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239765, 19.697691, 32.001041>,  <14.994061, 19.895569, 31.792440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239765, 19.697691, 32.001041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.539493, 19.487543, 32.162292>,  <14.719329, 19.361454, 32.259041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.539493, 19.487543, 32.162292>,  <14.239765, 19.697691, 32.001041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.539493, 19.487543, 32.162292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281003, 0.298971, 0.911951,
		-0.599633, -0.796621, 0.076394,
		0.749318, -0.525368, 0.403126,
		14.764288, 19.329933, 32.283230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338722, 19.809566, 31.319016>,  <14.239765, 19.697691, 32.001041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338722, 19.809566, 31.319016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.349770, 20.185308, 31.455748>,  <14.356398, 20.410753, 31.537786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.349770, 20.185308, 31.455748>,  <14.338722, 19.809566, 31.319016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349770, 20.185308, 31.455748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216842, 0.339446, -0.915290,
		-0.975816, -0.048844, 0.213067,
		0.027618, 0.939356, 0.341828,
		14.358055, 20.467115, 31.558296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767718, 20.240068, 31.007399>,  <14.338722, 19.809566, 31.319016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767718, 20.240068, 31.007399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.001947, 20.538519, 31.134144>,  <14.142485, 20.717588, 31.210192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.001947, 20.538519, 31.134144>,  <13.767718, 20.240068, 31.007399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001947, 20.538519, 31.134144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165570, 0.492737, -0.854282,
		-0.793530, 0.447782, 0.412069,
		0.585573, 0.746125, 0.316862,
		14.177619, 20.762356, 31.229202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356767, 20.839268, 30.857069>,  <13.767718, 20.240068, 31.007399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356767, 20.839268, 30.857069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.732255, 20.973503, 30.888527>,  <13.957548, 21.054045, 30.907402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.732255, 20.973503, 30.888527>,  <13.356767, 20.839268, 30.857069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.732255, 20.973503, 30.888527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120405, 0.533055, -0.837470,
		-0.322967, 0.776680, 0.540796,
		0.938720, 0.335590, 0.078643,
		14.013871, 21.074181, 30.912119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281281, 21.452299, 30.895836>,  <13.356767, 20.839268, 30.857069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281281, 21.452299, 30.895836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.661883, 21.419262, 30.777300>,  <13.890244, 21.399441, 30.706179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.661883, 21.419262, 30.777300>,  <13.281281, 21.452299, 30.895836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.661883, 21.419262, 30.777300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239258, 0.406843, -0.881609,
		0.193378, 0.909757, 0.367352,
		0.951504, -0.082591, -0.296341,
		13.947334, 21.394485, 30.688398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397021, 22.048338, 30.517303>,  <13.281281, 21.452299, 30.895836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397021, 22.048338, 30.517303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.713992, 21.837414, 30.394665>,  <13.904175, 21.710859, 30.321081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.713992, 21.837414, 30.394665>,  <13.397021, 22.048338, 30.517303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713992, 21.837414, 30.394665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117655, 0.361072, -0.925086,
		0.598511, 0.769137, 0.224083,
		0.792428, -0.527309, -0.306599,
		13.951720, 21.679220, 30.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711393, 22.502167, 30.068695>,  <13.397021, 22.048338, 30.517303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.711393, 22.502167, 30.068695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.855609, 22.147287, 29.953529>,  <13.942138, 21.934361, 29.884430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.855609, 22.147287, 29.953529>,  <13.711393, 22.502167, 30.068695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855609, 22.147287, 29.953529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038227, 0.294358, -0.954930,
		0.931961, 0.355295, 0.072212,
		0.360538, -0.887197, -0.287912,
		13.963770, 21.881128, 29.867155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060557, 22.697386, 29.522964>,  <13.711393, 22.502167, 30.068695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060557, 22.697386, 29.522964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.014004, 22.302094, 29.483253>,  <13.986072, 22.064919, 29.459427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.014004, 22.302094, 29.483253>,  <14.060557, 22.697386, 29.522964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.014004, 22.302094, 29.483253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091704, 0.110224, -0.989667,
		0.988962, -0.106076, -0.103453,
		-0.116383, -0.988230, -0.099280,
		13.979089, 22.005625, 29.453470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296958, 22.499949, 28.848694>,  <14.060557, 22.697386, 29.522964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296958, 22.499949, 28.848694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.085159, 22.175272, 28.947313>,  <13.958080, 21.980465, 29.006485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.085159, 22.175272, 28.947313>,  <14.296958, 22.499949, 28.848694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.085159, 22.175272, 28.947313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030457, -0.308639, -0.950691,
		0.847765, -0.495878, 0.188145,
		-0.529496, -0.811693, 0.246551,
		13.926311, 21.931765, 29.021278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583452, 22.005020, 28.437059>,  <14.296958, 22.499949, 28.848694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583452, 22.005020, 28.437059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.225370, 21.868616, 28.551826>,  <14.010522, 21.786774, 28.620687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.225370, 21.868616, 28.551826>,  <14.583452, 22.005020, 28.437059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.225370, 21.868616, 28.551826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108643, -0.457395, -0.882602,
		0.432211, -0.821281, 0.372413,
		-0.895204, -0.341011, 0.286918,
		13.956809, 21.766314, 28.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582364, 21.309793, 28.255693>,  <14.583452, 22.005020, 28.437059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582364, 21.309793, 28.255693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.198797, 21.417643, 28.290981>,  <13.968657, 21.482351, 28.312153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.198797, 21.417643, 28.290981>,  <14.582364, 21.309793, 28.255693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198797, 21.417643, 28.290981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169804, -0.296399, -0.939848,
		-0.227255, -0.916216, 0.330005,
		-0.958917, 0.269621, 0.088219,
		13.911122, 21.498529, 28.317448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165250, 20.703382, 28.047421>,  <14.582364, 21.309793, 28.255693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165250, 20.703382, 28.047421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.926580, 21.020357, 27.996786>,  <13.783379, 21.210543, 27.966406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.926580, 21.020357, 27.996786>,  <14.165250, 20.703382, 28.047421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926580, 21.020357, 27.996786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132300, -0.252723, -0.958451,
		-0.791503, -0.555134, 0.255633,
		-0.596673, 0.792437, -0.126587,
		13.747579, 21.258089, 27.958811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.721399, 20.520763, 27.576595>,  <14.165250, 20.703382, 28.047421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.721399, 20.520763, 27.576595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.672379, 20.916983, 27.551949>,  <13.642967, 21.154715, 27.537161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.672379, 20.916983, 27.551949>,  <13.721399, 20.520763, 27.576595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672379, 20.916983, 27.551949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000268, -0.062116, -0.998069,
		-0.992462, -0.122296, 0.007878,
		-0.122550, 0.990548, -0.061615,
		13.635614, 21.214148, 27.533464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354594, 20.594881, 27.054008>,  <13.721399, 20.520763, 27.576595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354594, 20.594881, 27.054008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.484586, 20.972731, 27.072235>,  <13.562581, 21.199440, 27.083170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.484586, 20.972731, 27.072235>,  <13.354594, 20.594881, 27.054008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484586, 20.972731, 27.072235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064799, 0.025826, -0.997564,
		-0.943499, 0.327140, -0.052817,
		0.324979, 0.944623, 0.045565,
		13.582080, 21.256117, 27.085905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.905827, 21.018602, 26.637871>,  <13.354594, 20.594881, 27.054008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.905827, 21.018602, 26.637871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.253410, 21.216537, 26.635183>,  <13.461961, 21.335299, 26.633572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.253410, 21.216537, 26.635183>,  <12.905827, 21.018602, 26.637871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253410, 21.216537, 26.635183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015644, -0.041035, -0.999035,
		-0.494638, 0.868015, -0.043399,
		0.868959, 0.494839, -0.006718,
		13.514098, 21.364990, 26.633167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340847, 21.452240, 26.404940>,  <12.905827, 21.018602, 26.637871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340847, 21.452240, 26.404940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.992197, 21.256540, 26.392910>,  <11.783007, 21.139120, 26.385693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.992197, 21.256540, 26.392910>,  <12.340847, 21.452240, 26.404940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.992197, 21.256540, 26.392910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025891, -0.107226, 0.993898,
		-0.489490, 0.865527, 0.106128,
		-0.871625, -0.489250, -0.030076,
		11.730710, 21.109766, 26.383886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959801, 21.757904, 26.998055>,  <12.340847, 21.452240, 26.404940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959801, 21.757904, 26.998055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.791759, 21.403685, 26.918739>,  <11.690933, 21.191153, 26.871151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.791759, 21.403685, 26.918739>,  <11.959801, 21.757904, 26.998055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791759, 21.403685, 26.918739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208912, -0.118259, 0.970758,
		-0.883100, 0.449246, -0.135320,
		-0.420106, -0.885546, -0.198288,
		11.665727, 21.138021, 26.859253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452099, 21.680014, 27.420345>,  <11.959801, 21.757904, 26.998055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452099, 21.680014, 27.420345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.462657, 21.293537, 27.317755>,  <11.468992, 21.061651, 27.256201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.462657, 21.293537, 27.317755>,  <11.452099, 21.680014, 27.420345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462657, 21.293537, 27.317755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332763, -0.250424, 0.909151,
		-0.942641, 0.061347, -0.328123,
		0.026396, -0.966190, -0.256474,
		11.470575, 21.003679, 27.240812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834756, 21.381126, 27.626614>,  <11.452099, 21.680014, 27.420345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834756, 21.381126, 27.626614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.063005, 21.055086, 27.586622>,  <11.199955, 20.859461, 27.562628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.063005, 21.055086, 27.586622>,  <10.834756, 21.381126, 27.626614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063005, 21.055086, 27.586622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205856, -0.259834, 0.943456,
		-0.794991, -0.517778, -0.316062,
		0.570624, -0.815102, -0.099978,
		11.234193, 20.810555, 27.556629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.470165, 20.811300, 28.038033>,  <10.834756, 21.381126, 27.626614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.470165, 20.811300, 28.038033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.854474, 20.704498, 28.008030>,  <11.085059, 20.640417, 27.990028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.854474, 20.704498, 28.008030>,  <10.470165, 20.811300, 28.038033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.854474, 20.704498, 28.008030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050113, -0.098860, 0.993839,
		-0.272774, -0.958611, -0.081602,
		0.960772, -0.267004, -0.075006,
		11.142706, 20.624397, 27.985529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402271, 20.380651, 28.473373>,  <10.470165, 20.811300, 28.038033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402271, 20.380651, 28.473373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.794524, 20.445786, 28.429838>,  <11.029876, 20.484865, 28.403717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.794524, 20.445786, 28.429838>,  <10.402271, 20.380651, 28.473373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.794524, 20.445786, 28.429838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112558, -0.013780, 0.993550,
		0.160285, -0.986557, -0.031842,
		0.980632, 0.162836, -0.108836,
		11.088714, 20.494637, 28.397188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.753379, 19.875072, 28.846331>,  <10.402271, 20.380651, 28.473373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.753379, 19.875072, 28.846331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.005666, 20.181356, 28.795925>,  <11.157038, 20.365128, 28.765682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.005666, 20.181356, 28.795925>,  <10.753379, 19.875072, 28.846331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005666, 20.181356, 28.795925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235307, -0.033971, 0.971327,
		0.739476, -0.642286, -0.201604,
		0.630718, 0.765712, -0.126014,
		11.194881, 20.411070, 28.758121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.158206, 19.228714, 28.858231>,  <10.753379, 19.875072, 28.846331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.158206, 19.228714, 28.858231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.107324, 18.888128, 29.061731>,  <11.076795, 18.683777, 29.183832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.107324, 18.888128, 29.061731>,  <11.158206, 19.228714, 28.858231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.107324, 18.888128, 29.061731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703875, -0.438875, -0.558524,
		0.698841, 0.287050, 0.655151,
		-0.127205, -0.851464, 0.508751,
		11.069162, 18.632689, 29.214357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.789923, 19.032677, 29.220985>,  <11.158206, 19.228714, 28.858231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.789923, 19.032677, 29.220985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.602115, 18.697708, 29.109074>,  <11.489429, 18.496727, 29.041925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.602115, 18.697708, 29.109074>,  <11.789923, 19.032677, 29.220985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.602115, 18.697708, 29.109074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820974, -0.297477, -0.487350,
		0.324888, -0.458515, 0.827171,
		-0.469521, -0.837420, -0.279782,
		11.461258, 18.446482, 29.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347694, 18.520226, 29.107561>,  <11.789923, 19.032677, 29.220985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347694, 18.520226, 29.107561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.032631, 18.372105, 28.910597>,  <11.843593, 18.283232, 28.792418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.032631, 18.372105, 28.910597>,  <12.347694, 18.520226, 29.107561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032631, 18.372105, 28.910597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613609, -0.399536, -0.681069,
		0.055465, -0.838599, 0.541918,
		-0.787659, -0.370301, -0.492412,
		11.796333, 18.261015, 28.762873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.502767, 17.841339, 28.882215>,  <12.347694, 18.520226, 29.107561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.502767, 17.841339, 28.882215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.208207, 17.956429, 28.637289>,  <12.031471, 18.025482, 28.490334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.208207, 17.956429, 28.637289>,  <12.502767, 17.841339, 28.882215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.208207, 17.956429, 28.637289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522824, -0.332396, -0.784963,
		-0.429385, -0.898180, 0.094347,
		-0.736399, 0.287725, -0.612316,
		11.987288, 18.042746, 28.453594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.593965, 17.366173, 28.441658>,  <12.502767, 17.841339, 28.882215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.593965, 17.366173, 28.441658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.361739, 17.625717, 28.244915>,  <12.222404, 17.781445, 28.126869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.361739, 17.625717, 28.244915>,  <12.593965, 17.366173, 28.441658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.361739, 17.625717, 28.244915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321776, -0.372072, -0.870645,
		-0.747935, -0.663733, 0.007224,
		-0.580563, 0.648861, -0.491859,
		12.187571, 17.820375, 28.097357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086018, 17.013119, 28.065247>,  <12.593965, 17.366173, 28.441658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086018, 17.013119, 28.065247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.126082, 17.364996, 27.879297>,  <12.150122, 17.576122, 27.767729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.126082, 17.364996, 27.879297>,  <12.086018, 17.013119, 28.065247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.126082, 17.364996, 27.879297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203815, -0.475455, -0.855805,
		-0.973872, -0.009028, -0.226918,
		0.100163, 0.879694, -0.464872,
		12.156132, 17.628904, 27.739836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836221, 16.874289, 27.453075>,  <12.086018, 17.013119, 28.065247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836221, 16.874289, 27.453075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.037918, 17.214151, 27.391336>,  <12.158937, 17.418070, 27.354294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.037918, 17.214151, 27.391336>,  <11.836221, 16.874289, 27.453075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037918, 17.214151, 27.391336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205140, -0.291471, -0.934325,
		-0.838843, 0.439463, -0.321271,
		0.504243, 0.849657, -0.154347,
		12.189191, 17.469048, 27.345032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.894925, 18.392626, 31.634348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.931514, 18.543547, 32.002972>,  <12.953466, 18.634100, 32.224148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.931514, 18.543547, 32.002972>,  <12.894925, 18.392626, 31.634348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931514, 18.543547, 32.002972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949478, -0.245948, 0.194937,
		0.300206, -0.892833, 0.335745,
		0.091471, 0.377304, 0.921561,
		12.958955, 18.656738, 32.279442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338824, 17.696465, 31.456778>,  <12.894925, 18.392626, 31.634348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338824, 17.696465, 31.456778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.698751, 17.691753, 31.282333>,  <13.914707, 17.688927, 31.177668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.698751, 17.691753, 31.282333>,  <13.338824, 17.696465, 31.456778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698751, 17.691753, 31.282333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341628, -0.640728, -0.687574,
		-0.271329, 0.767677, -0.580562,
		0.899817, -0.011777, -0.436108,
		13.968697, 17.688221, 31.151501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311975, 17.785334, 30.788076>,  <13.338824, 17.696465, 31.456778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311975, 17.785334, 30.788076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.656117, 17.587172, 30.836016>,  <13.862602, 17.468273, 30.864780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.656117, 17.587172, 30.836016>,  <13.311975, 17.785334, 30.788076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656117, 17.587172, 30.836016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223649, -0.578221, -0.784628,
		0.458010, 0.648254, -0.608271,
		0.860354, -0.495407, 0.119850,
		13.914224, 17.438549, 30.871971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550667, 17.702637, 30.220949>,  <13.311975, 17.785334, 30.788076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550667, 17.702637, 30.220949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.823503, 17.447979, 30.364859>,  <13.987206, 17.295185, 30.451204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.823503, 17.447979, 30.364859>,  <13.550667, 17.702637, 30.220949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823503, 17.447979, 30.364859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103207, -0.403253, -0.909250,
		0.723948, 0.657322, -0.209349,
		0.682091, -0.636643, 0.359775,
		14.028131, 17.256987, 30.472792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137400, 17.691702, 29.758566>,  <13.550667, 17.702637, 30.220949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137400, 17.691702, 29.758566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.171902, 17.352278, 29.967375>,  <14.192603, 17.148623, 30.092659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.171902, 17.352278, 29.967375>,  <14.137400, 17.691702, 29.758566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171902, 17.352278, 29.967375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243628, -0.490099, -0.836928,
		0.966026, 0.199367, 0.164460,
		0.086254, -0.848561, 0.522020,
		14.197778, 17.097710, 30.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849841, 17.508821, 29.655031>,  <14.137400, 17.691702, 29.758566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849841, 17.508821, 29.655031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.612998, 17.196526, 29.734882>,  <14.470892, 17.009148, 29.782793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.612998, 17.196526, 29.734882>,  <14.849841, 17.508821, 29.655031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612998, 17.196526, 29.734882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281246, -0.432352, -0.856722,
		0.755188, -0.451126, 0.475580,
		-0.592108, -0.780741, 0.199630,
		14.435366, 16.962303, 29.794771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301138, 16.861589, 29.525995>,  <14.849841, 17.508821, 29.655031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301138, 16.861589, 29.525995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.935244, 16.700224, 29.535084>,  <14.715707, 16.603405, 29.540537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.935244, 16.700224, 29.535084>,  <15.301138, 16.861589, 29.525995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935244, 16.700224, 29.535084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180983, -0.459358, -0.869618,
		0.361255, -0.791357, 0.493202,
		-0.914735, -0.403415, 0.022723,
		14.660823, 16.579199, 29.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423970, 16.221472, 29.169859>,  <15.301138, 16.861589, 29.525995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423970, 16.221472, 29.169859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.031298, 16.284714, 29.127329>,  <14.795694, 16.322659, 29.101810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.031298, 16.284714, 29.127329>,  <15.423970, 16.221472, 29.169859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031298, 16.284714, 29.127329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078353, -0.173673, -0.981681,
		-0.173673, -0.972029, 0.158104,
		0.981681, -0.158104, 0.106324,
		14.736794, 16.332146, 29.095432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216670, 15.666203, 28.955486>,  <15.423970, 16.221472, 29.169859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216670, 15.666203, 28.955486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.916682, 15.904745, 28.841009>,  <14.736690, 16.047871, 28.772322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.916682, 15.904745, 28.841009>,  <15.216670, 15.666203, 28.955486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916682, 15.904745, 28.841009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065023, -0.364103, -0.929086,
		-0.658269, -0.715395, 0.234290,
		-0.749969, 0.596354, -0.286195,
		14.691691, 16.083651, 28.755152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844903, 15.208890, 28.598557>,  <15.216670, 15.666203, 28.955486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844903, 15.208890, 28.598557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.729309, 15.576577, 28.491581>,  <14.659952, 15.797190, 28.427395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.729309, 15.576577, 28.491581>,  <14.844903, 15.208890, 28.598557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729309, 15.576577, 28.491581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144942, -0.318148, -0.936896,
		-0.946298, -0.231986, 0.225174,
		-0.288986, 0.919219, -0.267439,
		14.642613, 15.852343, 28.411350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236198, 15.178918, 28.164513>,  <14.844903, 15.208890, 28.598557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236198, 15.178918, 28.164513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.437464, 15.515540, 28.085915>,  <14.558224, 15.717513, 28.038755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.437464, 15.515540, 28.085915>,  <14.236198, 15.178918, 28.164513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437464, 15.515540, 28.085915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087510, -0.275823, -0.957217,
		-0.859749, 0.464442, -0.212429,
		0.503165, 0.841555, -0.196496,
		14.588413, 15.768006, 28.026966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895152, 15.549384, 27.732124>,  <14.236198, 15.178918, 28.164513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895152, 15.549384, 27.732124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.284078, 15.631988, 27.688383>,  <14.517433, 15.681550, 27.662138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.284078, 15.631988, 27.688383>,  <13.895152, 15.549384, 27.732124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284078, 15.631988, 27.688383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058127, -0.239512, -0.969152,
		-0.226329, 0.948677, -0.220878,
		0.972315, 0.206508, -0.109352,
		14.575772, 15.693940, 27.655577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463291, 14.953382, 28.171494>,  <13.895152, 15.549384, 27.732124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463291, 14.953382, 28.171494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.103745, 14.790884, 28.105764>,  <12.888016, 14.693385, 28.066326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.103745, 14.790884, 28.105764>,  <13.463291, 14.953382, 28.171494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.103745, 14.790884, 28.105764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354290, 0.453002, 0.818088,
		-0.257906, 0.793571, -0.551117,
		-0.898868, -0.406245, -0.164322,
		12.834085, 14.669010, 28.056467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.064370, 15.462670, 28.405230>,  <13.463291, 14.953382, 28.171494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.064370, 15.462670, 28.405230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780409, 15.184393, 28.361322>,  <12.610032, 15.017426, 28.334978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780409, 15.184393, 28.361322>,  <13.064370, 15.462670, 28.405230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780409, 15.184393, 28.361322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486263, 0.371395, 0.790958,
		-0.509497, 0.614879, -0.601944,
		-0.709902, -0.695694, -0.109769,
		12.567438, 14.975685, 28.328392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341428, 15.784038, 28.421936>,  <13.064370, 15.462670, 28.405230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341428, 15.784038, 28.421936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.323098, 15.399704, 28.531261>,  <12.312100, 15.169104, 28.596857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.323098, 15.399704, 28.531261>,  <12.341428, 15.784038, 28.421936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.323098, 15.399704, 28.531261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497052, 0.259258, 0.828085,
		-0.866510, -0.097905, -0.489464,
		-0.045824, -0.960833, 0.273314,
		12.309351, 15.111454, 28.613256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631326, 15.644027, 28.536093>,  <12.341428, 15.784038, 28.421936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631326, 15.644027, 28.536093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.832662, 15.354918, 28.725513>,  <11.953464, 15.181454, 28.839165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.832662, 15.354918, 28.725513>,  <11.631326, 15.644027, 28.536093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832662, 15.354918, 28.725513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358980, 0.323591, 0.875455,
		-0.785991, -0.610647, -0.096584,
		0.503340, -0.722772, 0.473550,
		11.983664, 15.138087, 28.867579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.151851, 15.210154, 28.979311>,  <11.631326, 15.644027, 28.536093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.151851, 15.210154, 28.979311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.517604, 15.141143, 29.125811>,  <11.737056, 15.099736, 29.213711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.517604, 15.141143, 29.125811>,  <11.151851, 15.210154, 28.979311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517604, 15.141143, 29.125811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358065, 0.077535, 0.930472,
		-0.188930, -0.981948, 0.009120,
		0.914382, -0.172528, 0.366250,
		11.791919, 15.089384, 29.235685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.961477, 14.774815, 29.479553>,  <11.151851, 15.210154, 28.979311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.961477, 14.774815, 29.479553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.330357, 14.906359, 29.560944>,  <11.551684, 14.985285, 29.609777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.330357, 14.906359, 29.560944>,  <10.961477, 14.774815, 29.479553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330357, 14.906359, 29.560944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269090, 0.167793, 0.948386,
		0.277745, -0.929353, 0.243232,
		0.922198, 0.328861, 0.203476,
		11.607016, 15.005017, 29.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.041079, 14.442847, 30.249601>,  <10.961477, 14.774815, 29.479553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.041079, 14.442847, 30.249601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.345881, 14.699039, 30.211370>,  <11.528762, 14.852754, 30.188431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.345881, 14.699039, 30.211370>,  <11.041079, 14.442847, 30.249601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345881, 14.699039, 30.211370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050568, 0.088292, 0.994810,
		0.645593, -0.762884, 0.034891,
		0.762006, 0.640478, -0.095579,
		11.574482, 14.891182, 30.182697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600579, 14.254501, 30.806318>,  <11.041079, 14.442847, 30.249601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600579, 14.254501, 30.806318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.646081, 14.642213, 30.719088>,  <11.673382, 14.874840, 30.666750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.646081, 14.642213, 30.719088>,  <11.600579, 14.254501, 30.806318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.646081, 14.642213, 30.719088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123970, 0.231634, 0.964872,
		0.985744, -0.082724, 0.146511,
		0.113755, 0.969279, -0.218076,
		11.680207, 14.932997, 30.653666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.892913, 14.583632, 31.404036>,  <11.600579, 14.254501, 30.806318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.892913, 14.583632, 31.404036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.754799, 14.896198, 31.196123>,  <11.671930, 15.083737, 31.071377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.754799, 14.896198, 31.196123>,  <11.892913, 14.583632, 31.404036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754799, 14.896198, 31.196123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158551, 0.497312, 0.852961,
		0.925008, 0.376927, -0.047821,
		-0.345286, 0.781414, -0.519779,
		11.651213, 15.130622, 31.040190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.244968, 15.180933, 31.660263>,  <11.892913, 14.583632, 31.404036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.244968, 15.180933, 31.660263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911052, 15.311632, 31.483015>,  <11.710701, 15.390052, 31.376665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.911052, 15.311632, 31.483015>,  <12.244968, 15.180933, 31.660263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.911052, 15.311632, 31.483015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259263, 0.476727, 0.839949,
		0.485699, 0.816069, -0.313254,
		-0.834793, 0.326748, -0.443122,
		11.660614, 15.409657, 31.350079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.176220, 15.923528, 31.678411>,  <12.244968, 15.180933, 31.660263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.176220, 15.923528, 31.678411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.807111, 15.769483, 31.673092>,  <11.585645, 15.677055, 31.669901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.807111, 15.769483, 31.673092>,  <12.176220, 15.923528, 31.678411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.807111, 15.769483, 31.673092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188726, 0.421581, 0.886934,
		-0.335964, 0.820949, -0.461704,
		-0.922773, -0.385114, -0.013298,
		11.530279, 15.653949, 31.669102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762256, 16.525806, 31.836351>,  <12.176220, 15.923528, 31.678411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762256, 16.525806, 31.836351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.498187, 16.226208, 31.858891>,  <11.339746, 16.046448, 31.872414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.498187, 16.226208, 31.858891>,  <11.762256, 16.525806, 31.836351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.498187, 16.226208, 31.858891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392209, 0.407728, 0.824579,
		-0.640582, 0.522264, -0.562934,
		-0.660172, -0.748998, 0.056346,
		11.300136, 16.001509, 31.875795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.068415, 16.836115, 31.928577>,  <11.762256, 16.525806, 31.836351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.068415, 16.836115, 31.928577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.031086, 16.450333, 32.027466>,  <11.008689, 16.218863, 32.086800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.031086, 16.450333, 32.027466>,  <11.068415, 16.836115, 31.928577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.031086, 16.450333, 32.027466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397753, 0.263742, 0.878768,
		-0.912734, -0.016323, -0.408228,
		-0.093323, -0.964455, 0.247219,
		11.003089, 16.160995, 32.101631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.346848, 16.699062, 32.200321>,  <11.068415, 16.836115, 31.928577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.346848, 16.699062, 32.200321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.597594, 16.423819, 32.346497>,  <10.748042, 16.258673, 32.434200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.597594, 16.423819, 32.346497>,  <10.346848, 16.699062, 32.200321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.597594, 16.423819, 32.346497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357892, 0.162313, 0.919548,
		-0.692063, -0.707222, -0.144520,
		0.626867, -0.688108, 0.365440,
		10.785654, 16.217386, 32.456127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498867, 17.452370, 31.914433>,  <10.346848, 16.699062, 32.200321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498867, 17.452370, 31.914433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.357225, 17.826445, 31.916948>,  <10.272241, 18.050890, 31.918457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.357225, 17.826445, 31.916948>,  <10.498867, 17.452370, 31.914433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.357225, 17.826445, 31.916948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011810, 0.002251, -0.999928,
		-0.935132, -0.354151, 0.010247,
		-0.354103, 0.935185, 0.006288,
		10.250995, 18.107000, 31.918835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.799993, 17.570112, 31.569221>,  <10.498867, 17.452370, 31.914433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.799993, 17.570112, 31.569221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.021172, 17.900023, 31.521910>,  <10.153879, 18.097969, 31.493523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.021172, 17.900023, 31.521910>,  <9.799993, 17.570112, 31.569221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.021172, 17.900023, 31.521910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156936, -0.036324, -0.986941,
		-0.818303, 0.564289, 0.109352,
		0.552948, 0.824778, -0.118281,
		10.187056, 18.147455, 31.486425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.592234, 17.824667, 30.962978>,  <9.799993, 17.570112, 31.569221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.592234, 17.824667, 30.962978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.912836, 18.051992, 31.037394>,  <10.105197, 18.188387, 31.082043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.912836, 18.051992, 31.037394>,  <9.592234, 17.824667, 30.962978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.912836, 18.051992, 31.037394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189075, 0.054298, -0.980460,
		-0.567309, 0.821019, -0.063934,
		0.801506, 0.568312, 0.186038,
		10.153288, 18.222486, 31.093204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.488972, 18.365999, 30.498384>,  <9.592234, 17.824667, 30.962978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.488972, 18.365999, 30.498384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.873967, 18.342426, 30.604324>,  <10.104964, 18.328283, 30.667889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.873967, 18.342426, 30.604324>,  <9.488972, 18.365999, 30.498384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.873967, 18.342426, 30.604324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261984, -0.052079, -0.963666,
		0.070583, 0.996903, -0.034687,
		0.962488, -0.058931, 0.264848,
		10.162713, 18.324747, 30.683779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.726639, 18.670742, 29.979290>,  <9.488972, 18.365999, 30.498384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.726639, 18.670742, 29.979290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.054075, 18.511261, 30.144672>,  <10.250537, 18.415573, 30.243902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.054075, 18.511261, 30.144672>,  <9.726639, 18.670742, 29.979290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.054075, 18.511261, 30.144672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449350, -0.003825, -0.893348,
		0.357760, 0.917073, 0.176025,
		0.818592, -0.398701, 0.413455,
		10.299653, 18.391651, 30.268709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.224061, 19.138933, 29.807726>,  <9.726639, 18.670742, 29.979290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.224061, 19.138933, 29.807726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.399330, 18.784428, 29.867779>,  <10.504492, 18.571724, 29.903811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.399330, 18.784428, 29.867779>,  <10.224061, 19.138933, 29.807726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.399330, 18.784428, 29.867779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503623, 0.103704, -0.857676,
		0.744558, 0.451422, 0.491784,
		0.438174, -0.886264, 0.150133,
		10.530782, 18.518549, 29.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863366, 19.182995, 29.540531>,  <10.224061, 19.138933, 29.807726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863366, 19.182995, 29.540531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.792505, 18.789402, 29.548492>,  <10.749989, 18.553246, 29.553270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.792505, 18.789402, 29.548492>,  <10.863366, 19.182995, 29.540531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.792505, 18.789402, 29.548492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382784, -0.087519, -0.919683,
		0.906694, -0.155303, 0.392157,
		-0.177151, -0.983982, 0.019905,
		10.739360, 18.494207, 29.554464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.412223, 19.728376, 29.314821>,  <10.863366, 19.182995, 29.540531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.412223, 19.728376, 29.314821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.427744, 20.121885, 29.244755>,  <11.437057, 20.357990, 29.202715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.427744, 20.121885, 29.244755>,  <11.412223, 19.728376, 29.314821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427744, 20.121885, 29.244755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352315, 0.150573, 0.923689,
		0.935077, -0.097557, -0.340756,
		0.038803, 0.983774, -0.175168,
		11.439384, 20.417017, 29.192204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.049757, 19.837179, 29.523266>,  <11.412223, 19.728376, 29.314821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.049757, 19.837179, 29.523266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.873109, 20.196058, 29.522051>,  <11.767119, 20.411385, 29.521322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.873109, 20.196058, 29.522051>,  <12.049757, 19.837179, 29.523266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873109, 20.196058, 29.522051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411540, 0.205576, 0.887904,
		0.797249, 0.390867, -0.460019,
		-0.441622, 0.897196, -0.003038,
		11.740623, 20.465218, 29.521139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569057, 20.315155, 29.828751>,  <12.049757, 19.837179, 29.523266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569057, 20.315155, 29.828751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.210609, 20.491686, 29.847517>,  <11.995541, 20.597605, 29.858778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.210609, 20.491686, 29.847517>,  <12.569057, 20.315155, 29.828751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.210609, 20.491686, 29.847517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231084, 0.373720, 0.898295,
		0.378908, 0.815821, -0.436881,
		-0.896119, 0.441327, 0.046918,
		11.941773, 20.624084, 29.861593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.684106, 20.953281, 30.066517>,  <12.569057, 20.315155, 29.828751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.684106, 20.953281, 30.066517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.304238, 20.904694, 30.182013>,  <12.076318, 20.875540, 30.251310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.304238, 20.904694, 30.182013>,  <12.684106, 20.953281, 30.066517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304238, 20.904694, 30.182013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245623, 0.283313, 0.927040,
		-0.194413, 0.951303, -0.239218,
		-0.949670, -0.121471, 0.288741,
		12.019338, 20.868252, 30.268635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558494, 21.413429, 30.590296>,  <12.684106, 20.953281, 30.066517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558494, 21.413429, 30.590296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.236793, 21.187799, 30.665129>,  <12.043772, 21.052422, 30.710028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.236793, 21.187799, 30.665129>,  <12.558494, 21.413429, 30.590296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236793, 21.187799, 30.665129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085996, 0.201022, 0.975805,
		-0.588032, 0.800882, -0.113165,
		-0.804253, -0.564073, 0.187080,
		11.995517, 21.018578, 30.721252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125808, 21.777128, 30.988380>,  <12.558494, 21.413429, 30.590296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125808, 21.777128, 30.988380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.023641, 21.394659, 31.045639>,  <11.962340, 21.165176, 31.079994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.023641, 21.394659, 31.045639>,  <12.125808, 21.777128, 30.988380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.023641, 21.394659, 31.045639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061746, 0.131625, 0.989375,
		-0.964857, 0.261544, 0.025420,
		-0.255419, -0.956175, 0.143149,
		11.947015, 21.107807, 31.088583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.705829, 21.731844, 31.663927>,  <12.125808, 21.777128, 30.988380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.705829, 21.731844, 31.663927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.810320, 21.351833, 31.595566>,  <11.873014, 21.123827, 31.554550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.810320, 21.351833, 31.595566>,  <11.705829, 21.731844, 31.663927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810320, 21.351833, 31.595566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256580, -0.102340, 0.961090,
		-0.930551, -0.294915, 0.217024,
		0.261229, -0.950027, -0.170902,
		11.888689, 21.066826, 31.544294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418901, 21.271475, 32.231461>,  <11.705829, 21.731844, 31.663927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418901, 21.271475, 32.231461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.726566, 21.063904, 32.082275>,  <11.911165, 20.939362, 31.992764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.726566, 21.063904, 32.082275>,  <11.418901, 21.271475, 32.231461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726566, 21.063904, 32.082275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372114, -0.110786, 0.921552,
		-0.519540, -0.847607, 0.107889,
		0.769162, -0.518930, -0.372964,
		11.957314, 20.908224, 31.970387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.657799, 20.743895, 32.755085>,  <11.418901, 21.271475, 32.231461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.657799, 20.743895, 32.755085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.964890, 20.812338, 32.508083>,  <12.149144, 20.853403, 32.359882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.964890, 20.812338, 32.508083>,  <11.657799, 20.743895, 32.755085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.964890, 20.812338, 32.508083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603856, 0.129192, 0.786554,
		0.214364, -0.976745, -0.004141,
		0.767728, 0.171110, -0.617508,
		12.195208, 20.863670, 32.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.307011, 17.251966, 17.052593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.654835, 17.384830, 17.198763>,  <14.863529, 17.464550, 17.286465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.654835, 17.384830, 17.198763>,  <14.307011, 17.251966, 17.052593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.654835, 17.384830, 17.198763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423277, 0.120177, 0.897994,
		0.254364, -0.935535, 0.245098,
		0.869560, 0.332162, 0.365422,
		14.915703, 17.484480, 17.308390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381814, 16.880993, 17.631964>,  <14.307011, 17.251966, 17.052593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381814, 16.880993, 17.631964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566139, 17.234060, 17.668951>,  <14.676734, 17.445900, 17.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.566139, 17.234060, 17.668951>,  <14.381814, 16.880993, 17.631964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.566139, 17.234060, 17.668951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502500, 0.173611, 0.846967,
		0.731536, -0.436759, 0.523542,
		0.460813, 0.882667, 0.092469,
		14.704383, 17.498861, 17.696692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.459175, 16.899975, 18.398521>,  <14.381814, 16.880993, 17.631964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.459175, 16.899975, 18.398521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.515954, 17.272470, 18.264269>,  <14.550021, 17.495968, 18.183718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.515954, 17.272470, 18.264269>,  <14.459175, 16.899975, 18.398521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515954, 17.272470, 18.264269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601430, 0.350441, 0.717964,
		0.786214, 0.099946, 0.609818,
		0.141947, 0.931237, -0.335632,
		14.558538, 17.551842, 18.163580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638968, 17.175261, 18.912148>,  <14.459175, 16.899975, 18.398521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638968, 17.175261, 18.912148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.538886, 17.505697, 18.710169>,  <14.478837, 17.703959, 18.588982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.538886, 17.505697, 18.710169>,  <14.638968, 17.175261, 18.912148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538886, 17.505697, 18.710169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545350, 0.310683, 0.778504,
		0.799993, 0.470159, 0.372774,
		-0.250206, 0.826091, -0.504945,
		14.463824, 17.753525, 18.558685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.880709, 17.689705, 19.265877>,  <14.638968, 17.175261, 18.912148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.880709, 17.689705, 19.265877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.577488, 17.833954, 19.048508>,  <14.395555, 17.920504, 18.918085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.577488, 17.833954, 19.048508>,  <14.880709, 17.689705, 19.265877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577488, 17.833954, 19.048508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463104, 0.289071, 0.837838,
		0.459229, 0.886787, -0.052126,
		-0.758052, 0.360620, -0.543424,
		14.350072, 17.942141, 18.885481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762085, 18.355179, 19.609776>,  <14.880709, 17.689705, 19.265877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762085, 18.355179, 19.609776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442270, 18.253458, 19.392126>,  <14.250381, 18.192425, 19.261536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442270, 18.253458, 19.392126>,  <14.762085, 18.355179, 19.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442270, 18.253458, 19.392126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597444, 0.243737, 0.763971,
		-0.061658, 0.935907, -0.346809,
		-0.799536, -0.254304, -0.544124,
		14.202410, 18.177166, 19.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250713, 18.945082, 19.699541>,  <14.762085, 18.355179, 19.609776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250713, 18.945082, 19.699541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057584, 18.614632, 19.583338>,  <13.941706, 18.416361, 19.513615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057584, 18.614632, 19.583338>,  <14.250713, 18.945082, 19.699541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057584, 18.614632, 19.583338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780225, 0.255174, 0.571082,
		-0.397656, 0.502395, -0.767769,
		-0.482824, -0.826127, -0.290510,
		13.912737, 18.366793, 19.496185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598972, 19.185936, 19.626602>,  <14.250713, 18.945082, 19.699541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598972, 19.185936, 19.626602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544280, 18.790106, 19.608526>,  <13.511464, 18.552607, 19.597681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544280, 18.790106, 19.608526>,  <13.598972, 19.185936, 19.626602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544280, 18.790106, 19.608526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764872, 0.076474, 0.639627,
		-0.629504, 0.122022, -0.767356,
		-0.136732, -0.989577, -0.045191,
		13.503261, 18.493233, 19.594969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892737, 19.038765, 19.486727>,  <13.598972, 19.185936, 19.626602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892737, 19.038765, 19.486727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030558, 18.715694, 19.678118>,  <13.113250, 18.521852, 19.792953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030558, 18.715694, 19.678118>,  <12.892737, 19.038765, 19.486727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030558, 18.715694, 19.678118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615756, 0.190288, 0.764614,
		-0.708610, -0.558075, -0.431769,
		0.344551, -0.807678, 0.478478,
		13.133923, 18.473391, 19.821661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302940, 18.767706, 19.679531>,  <12.892737, 19.038765, 19.486727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302940, 18.767706, 19.679531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579496, 18.611368, 19.922586>,  <12.745430, 18.517567, 20.068419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579496, 18.611368, 19.922586>,  <12.302940, 18.767706, 19.679531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.579496, 18.611368, 19.922586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524470, 0.306930, 0.794182,
		-0.496903, -0.867776, 0.007222,
		0.691389, -0.390843, 0.607637,
		12.786913, 18.494116, 20.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889824, 18.475914, 20.190233>,  <12.302940, 18.767706, 19.679531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889824, 18.475914, 20.190233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.258885, 18.495945, 20.343180>,  <12.480322, 18.507963, 20.434948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.258885, 18.495945, 20.343180>,  <11.889824, 18.475914, 20.190233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258885, 18.495945, 20.343180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377195, 0.323441, 0.867819,
		-0.080217, -0.944923, 0.317311,
		0.922653, 0.050075, 0.382366,
		12.535682, 18.510967, 20.457890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913458, 18.095028, 20.814169>,  <11.889824, 18.475914, 20.190233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913458, 18.095028, 20.814169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219543, 18.351648, 20.835564>,  <12.403194, 18.505621, 20.848400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.219543, 18.351648, 20.835564>,  <11.913458, 18.095028, 20.814169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.219543, 18.351648, 20.835564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305471, 0.288700, 0.907381,
		0.566688, -0.710680, 0.416892,
		0.765214, 0.641550, 0.053489,
		12.449108, 18.544113, 20.851610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312140, 17.517914, 21.162930>,  <11.913458, 18.095028, 20.814169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312140, 17.517914, 21.162930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.135100, 17.181625, 21.287695>,  <12.028876, 16.979853, 21.362555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.135100, 17.181625, 21.287695>,  <12.312140, 17.517914, 21.162930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.135100, 17.181625, 21.287695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193536, -0.429201, -0.882230,
		0.875584, -0.330110, 0.352675,
		-0.442601, -0.840722, 0.311914,
		12.002320, 16.929409, 21.381269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.787273, 16.903608, 20.935877>,  <12.312140, 17.517914, 21.162930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.787273, 16.903608, 20.935877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425767, 16.752798, 21.016930>,  <12.208863, 16.662312, 21.065561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425767, 16.752798, 21.016930>,  <12.787273, 16.903608, 20.935877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425767, 16.752798, 21.016930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084547, -0.621330, -0.778974,
		0.419595, -0.686877, 0.593413,
		-0.903765, -0.377025, 0.202633,
		12.154637, 16.639690, 21.077719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.883087, 16.238684, 20.954872>,  <12.787273, 16.903608, 20.935877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.883087, 16.238684, 20.954872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503222, 16.320564, 20.860018>,  <12.275302, 16.369694, 20.803104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503222, 16.320564, 20.860018>,  <12.883087, 16.238684, 20.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.503222, 16.320564, 20.860018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110087, -0.490629, -0.864386,
		-0.293289, -0.846983, 0.443398,
		-0.949664, 0.204703, -0.237138,
		12.218323, 16.381975, 20.788876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601392, 15.561493, 20.764688>,  <12.883087, 16.238684, 20.954872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601392, 15.561493, 20.764688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353437, 15.827109, 20.597456>,  <12.204665, 15.986480, 20.497116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353437, 15.827109, 20.597456>,  <12.601392, 15.561493, 20.764688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.353437, 15.827109, 20.597456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029227, -0.551963, -0.833356,
		-0.784148, -0.504365, 0.361562,
		-0.619885, 0.664042, -0.418080,
		12.167472, 16.026321, 20.472033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027332, 15.216084, 20.454868>,  <12.601392, 15.561493, 20.764688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027332, 15.216084, 20.454868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026478, 15.569256, 20.267069>,  <12.025965, 15.781159, 20.154388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.026478, 15.569256, 20.267069>,  <12.027332, 15.216084, 20.454868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.026478, 15.569256, 20.267069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097513, -0.467078, -0.878823,
		-0.995232, -0.047659, -0.085100,
		-0.002136, 0.882931, -0.469498,
		12.025837, 15.834135, 20.126219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541514, 15.089640, 19.825626>,  <12.027332, 15.216084, 20.454868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541514, 15.089640, 19.825626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763937, 15.412463, 19.746172>,  <11.897390, 15.606157, 19.698500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763937, 15.412463, 19.746172>,  <11.541514, 15.089640, 19.825626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.763937, 15.412463, 19.746172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111870, -0.309493, -0.944298,
		-0.823581, 0.502863, -0.262381,
		0.556058, 0.807058, -0.198638,
		11.930755, 15.654581, 19.686581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.348289, 15.248083, 19.191635>,  <11.541514, 15.089640, 19.825626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.348289, 15.248083, 19.191635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673270, 15.480714, 19.208052>,  <11.868259, 15.620293, 19.217901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673270, 15.480714, 19.208052>,  <11.348289, 15.248083, 19.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673270, 15.480714, 19.208052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277440, -0.323744, -0.904554,
		-0.512780, 0.746296, -0.424380,
		0.812455, 0.581577, 0.041043,
		11.917006, 15.655187, 19.220366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289413, 15.762383, 18.588203>,  <11.348289, 15.248083, 19.191635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289413, 15.762383, 18.588203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.675893, 15.759029, 18.691267>,  <11.907781, 15.757017, 18.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.675893, 15.759029, 18.691267>,  <11.289413, 15.762383, 18.588203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.675893, 15.759029, 18.691267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241311, -0.322247, -0.915383,
		0.090706, 0.946618, -0.309332,
		0.966200, -0.008386, 0.257659,
		11.965753, 15.756514, 18.768564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.775311, 16.055439, 18.109161>,  <11.289413, 15.762383, 18.588203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.775311, 16.055439, 18.109161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024529, 15.807350, 18.299797>,  <12.174060, 15.658497, 18.414179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024529, 15.807350, 18.299797>,  <11.775311, 16.055439, 18.109161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024529, 15.807350, 18.299797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285810, -0.386655, -0.876819,
		0.728098, 0.682512, -0.063638,
		0.623046, -0.620222, 0.476591,
		12.211442, 15.621284, 18.442774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350949, 16.077494, 17.701920>,  <11.775311, 16.055439, 18.109161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350949, 16.077494, 17.701920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430408, 15.756625, 17.927153>,  <12.478083, 15.564104, 18.062292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430408, 15.756625, 17.927153>,  <12.350949, 16.077494, 17.701920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430408, 15.756625, 17.927153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636148, -0.331524, -0.696712,
		0.745558, 0.496602, 0.444444,
		0.198645, -0.802171, 0.563083,
		12.490001, 15.515974, 18.096077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025065, 15.999327, 17.723280>,  <12.350949, 16.077494, 17.701920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025065, 15.999327, 17.723280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846747, 15.646935, 17.786703>,  <12.739757, 15.435499, 17.824757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846747, 15.646935, 17.786703>,  <13.025065, 15.999327, 17.723280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846747, 15.646935, 17.786703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439244, -0.369633, -0.818802,
		0.779956, -0.295372, 0.551746,
		-0.445795, -0.880981, 0.158557,
		12.713009, 15.382641, 17.834270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.426258, 15.590835, 17.439610>,  <13.025065, 15.999327, 17.723280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.426258, 15.590835, 17.439610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107502, 15.349774, 17.456469>,  <12.916248, 15.205138, 17.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107502, 15.349774, 17.456469>,  <13.426258, 15.590835, 17.439610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107502, 15.349774, 17.456469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300488, -0.455929, -0.837756,
		0.524092, -0.654935, 0.544415,
		-0.796891, -0.602651, 0.042148,
		12.868435, 15.168979, 17.469112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719381, 15.015782, 17.193998>,  <13.426258, 15.590835, 17.439610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719381, 15.015782, 17.193998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329001, 14.931214, 17.172739>,  <13.094773, 14.880474, 17.159985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329001, 14.931214, 17.172739>,  <13.719381, 15.015782, 17.193998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329001, 14.931214, 17.172739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104037, -0.237463, -0.965809,
		0.191571, -0.948110, 0.253747,
		-0.975949, -0.211420, -0.053147,
		13.036217, 14.867788, 17.156796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618061, 14.385110, 16.956146>,  <13.719381, 15.015782, 17.193998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618061, 14.385110, 16.956146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298741, 14.602284, 16.851887>,  <13.107149, 14.732589, 16.789331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298741, 14.602284, 16.851887>,  <13.618061, 14.385110, 16.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298741, 14.602284, 16.851887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097956, -0.309968, -0.945687,
		-0.594240, -0.780474, 0.194264,
		-0.798300, 0.542937, -0.260647,
		13.059252, 14.765165, 16.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436366, 13.667005, 16.708841>,  <13.618061, 14.385110, 16.956146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436366, 13.667005, 16.708841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418447, 13.354653, 16.958071>,  <13.407695, 13.167242, 17.107609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418447, 13.354653, 16.958071>,  <13.436366, 13.667005, 16.708841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418447, 13.354653, 16.958071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638936, 0.501852, 0.583014,
		-0.767954, -0.371986, -0.521415,
		-0.044800, -0.780879, 0.623074,
		13.405006, 13.120390, 17.144993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845187, 13.791447, 17.313452>,  <13.436366, 13.667005, 16.708841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845187, 13.791447, 17.313452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164740, 13.577898, 17.424282>,  <14.356471, 13.449769, 17.490780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164740, 13.577898, 17.424282>,  <13.845187, 13.791447, 17.313452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164740, 13.577898, 17.424282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437384, -0.199403, 0.876888,
		-0.412896, -0.821717, -0.392807,
		0.798881, -0.533872, 0.277073,
		14.404405, 13.417737, 17.507404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655749, 13.051339, 17.676640>,  <13.845187, 13.791447, 17.313452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655749, 13.051339, 17.676640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013870, 13.192359, 17.785557>,  <14.228743, 13.276971, 17.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013870, 13.192359, 17.785557>,  <13.655749, 13.051339, 17.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013870, 13.192359, 17.785557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140579, -0.356413, 0.923692,
		0.422696, -0.865262, -0.269537,
		0.895302, 0.352550, 0.272292,
		14.282461, 13.298123, 17.867245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036399, 12.534394, 18.001928>,  <13.655749, 13.051339, 17.676640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036399, 12.534394, 18.001928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.178146, 12.885029, 18.132172>,  <14.263195, 13.095409, 18.210318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.178146, 12.885029, 18.132172>,  <14.036399, 12.534394, 18.001928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178146, 12.885029, 18.132172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126703, -0.299982, 0.945493,
		0.926482, -0.376308, 0.004762,
		0.354368, 0.876586, 0.325608,
		14.284457, 13.148005, 18.229855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.523482, 12.369142, 18.543634>,  <14.036399, 12.534394, 18.001928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.523482, 12.369142, 18.543634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463958, 12.753113, 18.638624>,  <14.428243, 12.983496, 18.695618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463958, 12.753113, 18.638624>,  <14.523482, 12.369142, 18.543634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463958, 12.753113, 18.638624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060738, -0.230823, 0.971098,
		0.986998, 0.158935, -0.023955,
		-0.148812, 0.959927, 0.237476,
		14.419314, 13.041091, 18.709867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994651, 12.498147, 18.991924>,  <14.523482, 12.369142, 18.543634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994651, 12.498147, 18.991924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715478, 12.776656, 19.058969>,  <14.547974, 12.943762, 19.099197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715478, 12.776656, 19.058969>,  <14.994651, 12.498147, 18.991924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715478, 12.776656, 19.058969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015883, -0.218937, 0.975610,
		0.715987, 0.683573, 0.141744,
		-0.697933, 0.696272, 0.167613,
		14.506098, 12.985538, 19.109253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245317, 12.728957, 19.646790>,  <14.994651, 12.498147, 18.991924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245317, 12.728957, 19.646790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869432, 12.858002, 19.601421>,  <14.643902, 12.935429, 19.574200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869432, 12.858002, 19.601421>,  <15.245317, 12.728957, 19.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869432, 12.858002, 19.601421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110406, 0.027690, 0.993501,
		0.323654, 0.946127, 0.009598,
		-0.939712, 0.322610, -0.113420,
		14.587519, 12.954785, 19.567396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161517, 13.341241, 19.998926>,  <15.245317, 12.728957, 19.646790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161517, 13.341241, 19.998926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792927, 13.190279, 19.962160>,  <14.571773, 13.099702, 19.940102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792927, 13.190279, 19.962160>,  <15.161517, 13.341241, 19.998926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792927, 13.190279, 19.962160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089310, -0.024432, 0.995704,
		-0.378030, 0.925726, -0.011192,
		-0.921476, -0.377405, -0.091913,
		14.516484, 13.077058, 19.934586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861214, 13.788924, 20.431664>,  <15.161517, 13.341241, 19.998926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861214, 13.788924, 20.431664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621608, 13.473872, 20.373945>,  <14.477844, 13.284842, 20.339315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621608, 13.473872, 20.373945>,  <14.861214, 13.788924, 20.431664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621608, 13.473872, 20.373945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217934, -0.013036, 0.975876,
		-0.770510, 0.616012, -0.163842,
		-0.599015, -0.787629, -0.144294,
		14.441903, 13.237583, 20.330656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310690, 13.937167, 20.764637>,  <14.861214, 13.788924, 20.431664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310690, 13.937167, 20.764637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287027, 13.538023, 20.753511>,  <14.272830, 13.298536, 20.746836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287027, 13.538023, 20.753511>,  <14.310690, 13.937167, 20.764637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287027, 13.538023, 20.753511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252837, -0.011978, 0.967435,
		-0.965699, 0.064263, -0.251588,
		-0.059157, -0.997861, -0.027815,
		14.269280, 13.238665, 20.745167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833374, 13.860572, 21.209515>,  <14.310690, 13.937167, 20.764637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833374, 13.860572, 21.209515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925958, 13.472748, 21.177568>,  <13.981507, 13.240053, 21.158400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925958, 13.472748, 21.177568>,  <13.833374, 13.860572, 21.209515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925958, 13.472748, 21.177568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145491, -0.115672, 0.982574,
		-0.961904, -0.215805, -0.167835,
		0.231459, -0.969561, -0.079867,
		13.995396, 13.181880, 21.153608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216413, 13.480257, 21.576536>,  <13.833374, 13.860572, 21.209515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216413, 13.480257, 21.576536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546231, 13.255383, 21.602045>,  <13.744123, 13.120458, 21.617350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546231, 13.255383, 21.602045>,  <13.216413, 13.480257, 21.576536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546231, 13.255383, 21.602045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137776, -0.090188, 0.986349,
		-0.548761, -0.822078, -0.151820,
		0.824548, -0.562187, 0.063771,
		13.793595, 13.086726, 21.621176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969600, 12.932810, 21.915384>,  <13.216413, 13.480257, 21.576536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969600, 12.932810, 21.915384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366462, 12.975739, 21.941023>,  <13.604579, 13.001497, 21.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366462, 12.975739, 21.941023>,  <12.969600, 12.932810, 21.915384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.366462, 12.975739, 21.941023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045985, -0.163441, 0.985481,
		0.116244, -0.980698, -0.157223,
		0.992155, 0.107326, 0.064097,
		13.664108, 13.007937, 21.960251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060221, 12.522158, 22.443003>,  <12.969600, 12.932810, 21.915384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060221, 12.522158, 22.443003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.396186, 12.735573, 22.403236>,  <13.597765, 12.863622, 22.379375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.396186, 12.735573, 22.403236>,  <13.060221, 12.522158, 22.443003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.396186, 12.735573, 22.403236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167321, -0.080302, 0.982627,
		0.516286, -0.841955, -0.156719,
		0.839912, 0.533539, -0.099417,
		13.648160, 12.895635, 22.373411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615829, 12.225330, 22.962429>,  <13.060221, 12.522158, 22.443003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615829, 12.225330, 22.962429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.707904, 12.602376, 22.865688>,  <13.763148, 12.828604, 22.807644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.707904, 12.602376, 22.865688>,  <13.615829, 12.225330, 22.962429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.707904, 12.602376, 22.865688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004327, 0.249516, 0.968361,
		0.973137, -0.221855, 0.061514,
		0.230185, 0.942614, -0.241854,
		13.776959, 12.885160, 22.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161803, 12.453847, 23.392874>,  <13.615829, 12.225330, 22.962429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161803, 12.453847, 23.392874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971532, 12.785207, 23.274563>,  <13.857369, 12.984023, 23.203575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971532, 12.785207, 23.274563>,  <14.161803, 12.453847, 23.392874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971532, 12.785207, 23.274563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065341, 0.302052, 0.951050,
		0.877190, 0.471719, -0.089551,
		-0.475677, 0.828399, -0.295780,
		13.828829, 13.033727, 23.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480230, 12.788835, 23.845901>,  <14.161803, 12.453847, 23.392874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480230, 12.788835, 23.845901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166406, 12.990463, 23.701473>,  <13.978110, 13.111441, 23.614817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166406, 12.990463, 23.701473>,  <14.480230, 12.788835, 23.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166406, 12.990463, 23.701473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055862, 0.522498, 0.850809,
		0.617528, 0.687683, -0.381774,
		-0.784563, 0.504071, -0.361073,
		13.931037, 13.141685, 23.593151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573056, 13.456040, 24.101852>,  <14.480230, 12.788835, 23.845901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573056, 13.456040, 24.101852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187680, 13.414550, 24.003038>,  <13.956455, 13.389655, 23.943750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187680, 13.414550, 24.003038>,  <14.573056, 13.456040, 24.101852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187680, 13.414550, 24.003038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267907, 0.384174, 0.883536,
		0.003257, 0.917415, -0.397917,
		-0.963439, -0.103727, -0.247034,
		13.898648, 13.383431, 23.928928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224798, 14.145086, 24.207052>,  <14.573056, 13.456040, 24.101852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224798, 14.145086, 24.207052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948079, 13.857352, 24.232269>,  <13.782048, 13.684711, 24.247398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948079, 13.857352, 24.232269>,  <14.224798, 14.145086, 24.207052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948079, 13.857352, 24.232269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323736, 0.387007, 0.863377,
		-0.645455, 0.576873, -0.500605,
		-0.691797, -0.719335, 0.063041,
		13.740541, 13.641552, 24.251183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560891, 14.461939, 24.406858>,  <14.224798, 14.145086, 24.207052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560891, 14.461939, 24.406858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463218, 14.090771, 24.519526>,  <13.404613, 13.868070, 24.587126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463218, 14.090771, 24.519526>,  <13.560891, 14.461939, 24.406858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463218, 14.090771, 24.519526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482500, 0.368214, 0.794740,
		-0.841170, 0.058157, -0.537634,
		-0.244184, -0.927920, 0.281670,
		13.389962, 13.812395, 24.604027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902212, 14.513854, 24.618406>,  <13.560891, 14.461939, 24.406858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902212, 14.513854, 24.618406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.040581, 14.175534, 24.780869>,  <13.123602, 13.972543, 24.878345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.040581, 14.175534, 24.780869>,  <12.902212, 14.513854, 24.618406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.040581, 14.175534, 24.780869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529381, 0.181457, 0.828752,
		-0.774657, -0.501694, -0.384980,
		0.345922, -0.845799, 0.406154,
		13.144358, 13.921795, 24.902716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482033, 14.499682, 25.089840>,  <12.902212, 14.513854, 24.618406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482033, 14.499682, 25.089840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747679, 14.220956, 25.198210>,  <12.907066, 14.053720, 25.263231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747679, 14.220956, 25.198210>,  <12.482033, 14.499682, 25.089840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747679, 14.220956, 25.198210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185083, 0.197863, 0.962598,
		-0.724360, -0.689418, 0.002434,
		0.664114, -0.696817, 0.270923,
		12.946913, 14.011911, 25.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.205022, 14.114655, 25.503691>,  <12.482033, 14.499682, 25.089840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.205022, 14.114655, 25.503691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567567, 14.037865, 25.654238>,  <12.785093, 13.991790, 25.744566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567567, 14.037865, 25.654238>,  <12.205022, 14.114655, 25.503691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567567, 14.037865, 25.654238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371307, 0.063104, 0.926363,
		-0.201592, -0.979368, -0.014087,
		0.906362, -0.191978, 0.376368,
		12.839476, 13.980271, 25.767149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087916, 13.644874, 25.943377>,  <12.205022, 14.114655, 25.503691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087916, 13.644874, 25.943377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.458697, 13.735532, 26.062969>,  <12.681166, 13.789927, 26.134726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.458697, 13.735532, 26.062969>,  <12.087916, 13.644874, 25.943377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458697, 13.735532, 26.062969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284569, -0.094602, 0.953976,
		0.244499, -0.969372, -0.023195,
		0.926952, 0.226646, 0.298984,
		12.736783, 13.803525, 26.152664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.218704, 13.258457, 26.563189>,  <12.087916, 13.644874, 25.943377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.218704, 13.258457, 26.563189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484349, 13.557410, 26.555468>,  <12.643736, 13.736782, 26.550835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484349, 13.557410, 26.555468>,  <12.218704, 13.258457, 26.563189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484349, 13.557410, 26.555468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205432, 0.207245, 0.956476,
		0.718855, -0.631243, 0.291171,
		0.664112, 0.747384, -0.019301,
		12.683583, 13.781626, 26.549677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.595432, 13.198896, 27.135546>,  <12.218704, 13.258457, 26.563189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.595432, 13.198896, 27.135546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674561, 13.583591, 27.059725>,  <12.722037, 13.814408, 27.014233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674561, 13.583591, 27.059725>,  <12.595432, 13.198896, 27.135546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674561, 13.583591, 27.059725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111154, 0.214133, 0.970459,
		0.973916, -0.170908, 0.149261,
		0.197821, 0.961737, -0.189551,
		12.733907, 13.872112, 27.002859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115465, 13.545805, 27.627531>,  <12.595432, 13.198896, 27.135546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115465, 13.545805, 27.627531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952324, 13.882443, 27.485899>,  <12.854440, 14.084427, 27.400919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952324, 13.882443, 27.485899>,  <13.115465, 13.545805, 27.627531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.952324, 13.882443, 27.485899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137592, 0.326720, 0.935052,
		0.902621, 0.430082, -0.017456,
		-0.407852, 0.841596, -0.354080,
		12.829968, 14.134922, 27.379675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464748, 14.041635, 27.942089>,  <13.115465, 13.545805, 27.627531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.464748, 14.041635, 27.942089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111169, 14.191866, 27.830679>,  <12.899021, 14.282004, 27.763832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111169, 14.191866, 27.830679>,  <13.464748, 14.041635, 27.942089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111169, 14.191866, 27.830679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154338, 0.327925, 0.932011,
		0.441378, 0.866837, -0.231903,
		-0.883949, 0.375578, -0.278525,
		12.845984, 14.304539, 27.747122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
