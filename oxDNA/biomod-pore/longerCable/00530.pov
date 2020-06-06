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
	<24.628546, 35.051846, 35.082718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308327, 35.140125, 34.859859>,  <24.116196, 35.193092, 34.726143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308327, 35.140125, 34.859859>,  <24.628546, 35.051846, 35.082718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308327, 35.140125, 34.859859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384373, -0.524182, -0.759928,
		-0.459759, -0.822513, 0.334804,
		-0.800549, 0.220694, -0.557149,
		24.068163, 35.206333, 34.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593018, 35.698257, 34.753605>,  <24.628546, 35.051846, 35.082718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593018, 35.698257, 34.753605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658234, 36.052982, 34.926571>,  <24.697363, 36.265816, 35.030350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658234, 36.052982, 34.926571>,  <24.593018, 35.698257, 34.753605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.658234, 36.052982, 34.926571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338632, -0.461957, 0.819710,
		0.926686, 0.012786, -0.375619,
		0.163040, 0.886810, 0.432419,
		24.707146, 36.319027, 35.056297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334032, 35.704464, 35.188084>,  <24.593018, 35.698257, 34.753605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334032, 35.704464, 35.188084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128447, 36.011246, 35.341774>,  <25.005095, 36.195312, 35.433987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128447, 36.011246, 35.341774>,  <25.334032, 35.704464, 35.188084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128447, 36.011246, 35.341774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282952, -0.271265, 0.919975,
		0.809801, 0.581552, -0.077589,
		-0.513966, 0.766950, 0.384222,
		24.974257, 36.241329, 35.457039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738329, 36.099930, 35.611023>,  <25.334032, 35.704464, 35.188084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738329, 36.099930, 35.611023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367762, 36.175789, 35.741123>,  <25.145422, 36.221302, 35.819183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367762, 36.175789, 35.741123>,  <25.738329, 36.099930, 35.611023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367762, 36.175789, 35.741123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305723, -0.125273, 0.943843,
		0.219740, 0.973828, 0.058076,
		-0.926416, 0.189645, 0.325250,
		25.089836, 36.232681, 35.838699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806299, 36.613285, 36.182899>,  <25.738329, 36.099930, 35.611023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806299, 36.613285, 36.182899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448923, 36.439617, 36.228966>,  <25.234497, 36.335415, 36.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448923, 36.439617, 36.228966>,  <25.806299, 36.613285, 36.182899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448923, 36.439617, 36.228966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171202, -0.092111, 0.980921,
		-0.415278, 0.896109, 0.156626,
		-0.893439, -0.434169, 0.115164,
		25.180891, 36.309368, 36.263515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269993, 36.894909, 36.703236>,  <25.806299, 36.613285, 36.182899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269993, 36.894909, 36.703236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212328, 36.499687, 36.681431>,  <25.177729, 36.262554, 36.668346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212328, 36.499687, 36.681431>,  <25.269993, 36.894909, 36.703236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212328, 36.499687, 36.681431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180246, -0.080389, 0.980331,
		-0.973000, 0.131502, 0.189682,
		-0.144163, -0.988051, -0.054515,
		25.169079, 36.203270, 36.665077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724926, 36.764801, 37.184383>,  <25.269993, 36.894909, 36.703236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724926, 36.764801, 37.184383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954834, 36.450603, 37.092613>,  <25.092779, 36.262085, 37.037552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954834, 36.450603, 37.092613>,  <24.724926, 36.764801, 37.184383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954834, 36.450603, 37.092613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231716, -0.112666, 0.966237,
		-0.784825, -0.608524, 0.117255,
		0.574768, -0.785496, -0.229428,
		25.127264, 36.214954, 37.023785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485983, 36.097042, 37.438923>,  <24.724926, 36.764801, 37.184383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485983, 36.097042, 37.438923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885696, 36.100574, 37.453644>,  <25.125525, 36.102692, 37.462475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885696, 36.100574, 37.453644>,  <24.485983, 36.097042, 37.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885696, 36.100574, 37.453644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034683, -0.175495, 0.983869,
		0.015145, -0.984441, -0.175063,
		0.999283, 0.008829, 0.036801,
		25.185482, 36.103222, 37.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743530, 35.566280, 37.756454>,  <24.485983, 36.097042, 37.438923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743530, 35.566280, 37.756454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038469, 35.833084, 37.799202>,  <25.215433, 35.993164, 37.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038469, 35.833084, 37.799202>,  <24.743530, 35.566280, 37.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038469, 35.833084, 37.799202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011693, -0.170780, 0.985240,
		0.675413, -0.725214, -0.133724,
		0.737347, 0.667007, 0.106867,
		25.259674, 36.033188, 37.831261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154078, 35.124866, 38.148064>,  <24.743530, 35.566280, 37.756454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154078, 35.124866, 38.148064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251770, 35.509869, 38.195271>,  <25.310387, 35.740871, 38.223595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251770, 35.509869, 38.195271>,  <25.154078, 35.124866, 38.148064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251770, 35.509869, 38.195271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122836, -0.151433, 0.980805,
		0.961905, -0.225047, -0.155216,
		0.244233, 0.962508, 0.118020,
		25.325039, 35.798622, 38.230675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842833, 35.063068, 38.492443>,  <25.154078, 35.124866, 38.148064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842833, 35.063068, 38.492443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695126, 35.427628, 38.565102>,  <25.606503, 35.646362, 38.608696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695126, 35.427628, 38.565102>,  <25.842833, 35.063068, 38.492443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695126, 35.427628, 38.565102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073254, -0.223396, 0.971971,
		0.926432, 0.345609, 0.149256,
		-0.369265, 0.911399, 0.181644,
		25.584347, 35.701046, 38.619595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064341, 35.193909, 39.233875>,  <25.842833, 35.063068, 38.492443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064341, 35.193909, 39.233875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705532, 35.317909, 39.107857>,  <25.490248, 35.392307, 39.032246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705532, 35.317909, 39.107857>,  <26.064341, 35.193909, 39.233875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705532, 35.317909, 39.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393618, -0.236065, 0.888447,
		0.201045, 0.920964, 0.333776,
		-0.897021, 0.309998, -0.315048,
		25.436426, 35.410908, 39.013344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022959, 35.064331, 39.989960>,  <26.064341, 35.193909, 39.233875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022959, 35.064331, 39.989960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015579, 35.456524, 40.068256>,  <26.011152, 35.691841, 40.115234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015579, 35.456524, 40.068256>,  <26.022959, 35.064331, 39.989960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015579, 35.456524, 40.068256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162313, 0.190238, -0.968227,
		-0.986567, -0.049632, 0.155636,
		-0.018448, 0.980482, 0.195738,
		26.010044, 35.750668, 40.126976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380274, 35.337170, 39.896873>,  <26.022959, 35.064331, 39.989960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380274, 35.337170, 39.896873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656698, 35.616848, 39.823593>,  <25.822552, 35.784657, 39.779625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656698, 35.616848, 39.823593>,  <25.380274, 35.337170, 39.896873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656698, 35.616848, 39.823593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388883, 0.146015, -0.909642,
		-0.609267, 0.699862, 0.372810,
		0.691060, 0.699195, -0.183203,
		25.864016, 35.826607, 39.768631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887358, 35.697369, 39.574860>,  <25.380274, 35.337170, 39.896873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887358, 35.697369, 39.574860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262318, 35.814373, 39.499264>,  <25.487293, 35.884575, 39.453907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262318, 35.814373, 39.499264>,  <24.887358, 35.697369, 39.574860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262318, 35.814373, 39.499264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305694, 0.431162, -0.848911,
		-0.166834, 0.853542, 0.493592,
		0.937399, 0.292516, -0.188990,
		25.543537, 35.902126, 39.442566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682566, 36.338249, 39.247520>,  <24.887358, 35.697369, 39.574860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682566, 36.338249, 39.247520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058531, 36.215645, 39.187366>,  <25.284109, 36.142082, 39.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058531, 36.215645, 39.187366>,  <24.682566, 36.338249, 39.247520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058531, 36.215645, 39.187366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003401, 0.432033, -0.901851,
		0.341398, 0.848173, 0.405031,
		0.939913, -0.306512, -0.150380,
		25.340504, 36.123692, 39.142254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077633, 36.869843, 38.922539>,  <24.682566, 36.338249, 39.247520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077633, 36.869843, 38.922539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247353, 36.520733, 38.826015>,  <25.349184, 36.311268, 38.768101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247353, 36.520733, 38.826015>,  <25.077633, 36.869843, 38.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247353, 36.520733, 38.826015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219798, 0.357780, -0.907569,
		0.878442, 0.332041, 0.343641,
		0.424298, -0.872778, -0.241307,
		25.374641, 36.258900, 38.753624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617727, 37.029823, 38.556599>,  <25.077633, 36.869843, 38.922539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617727, 37.029823, 38.556599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560465, 36.650551, 38.443134>,  <25.526108, 36.422989, 38.375057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560465, 36.650551, 38.443134>,  <25.617727, 37.029823, 38.556599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560465, 36.650551, 38.443134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244454, 0.243857, -0.938497,
		0.959036, -0.203692, 0.196877,
		-0.143154, -0.948179, -0.283660,
		25.517519, 36.366096, 38.358036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147230, 37.001343, 37.994236>,  <25.617727, 37.029823, 38.556599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147230, 37.001343, 37.994236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883663, 36.703518, 37.951431>,  <25.725523, 36.524822, 37.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883663, 36.703518, 37.951431>,  <26.147230, 37.001343, 37.994236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883663, 36.703518, 37.951431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189543, -0.026670, -0.981510,
		0.727943, -0.667018, 0.158700,
		-0.658917, -0.744564, -0.107014,
		25.685987, 36.480148, 37.919327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492310, 36.507000, 37.488361>,  <26.147230, 37.001343, 37.994236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492310, 36.507000, 37.488361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117277, 36.367989, 37.483219>,  <25.892258, 36.284580, 37.480133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117277, 36.367989, 37.483219>,  <26.492310, 36.507000, 37.488361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117277, 36.367989, 37.483219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042779, -0.078560, -0.995991,
		0.345129, -0.934371, 0.088524,
		-0.937580, -0.347533, -0.012858,
		25.836002, 36.263729, 37.479362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438423, 35.916451, 37.043159>,  <26.492310, 36.507000, 37.488361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438423, 35.916451, 37.043159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058590, 36.040482, 37.061668>,  <25.830690, 36.114899, 37.072773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058590, 36.040482, 37.061668>,  <26.438423, 35.916451, 37.043159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058590, 36.040482, 37.061668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069612, -0.064630, -0.995478,
		-0.305687, -0.948511, 0.082957,
		-0.949584, 0.310079, 0.046272,
		25.773714, 36.133507, 37.075550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963659, 35.436142, 36.844090>,  <26.438423, 35.916451, 37.043159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963659, 35.436142, 36.844090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819973, 35.794960, 36.741108>,  <25.733761, 36.010250, 36.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819973, 35.794960, 36.741108>,  <25.963659, 35.436142, 36.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819973, 35.794960, 36.741108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051538, -0.256376, -0.965202,
		-0.931831, -0.359982, 0.045862,
		-0.359214, 0.897042, -0.257452,
		25.712210, 36.064072, 36.663872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190468, 35.167564, 36.616997>,  <25.963659, 35.436142, 36.844090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190468, 35.167564, 36.616997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032602, 35.484524, 36.803051>,  <24.937883, 35.674698, 36.914684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032602, 35.484524, 36.803051>,  <25.190468, 35.167564, 36.616997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032602, 35.484524, 36.803051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246254, 0.396489, -0.884395,
		-0.885211, -0.463581, 0.038650,
		-0.394665, 0.792394, 0.465135,
		24.914204, 35.722240, 36.942593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621222, 35.263905, 36.257526>,  <25.190468, 35.167564, 36.616997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621222, 35.263905, 36.257526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731892, 35.602261, 36.439919>,  <24.798294, 35.805275, 36.549355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731892, 35.602261, 36.439919>,  <24.621222, 35.263905, 36.257526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731892, 35.602261, 36.439919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227413, 0.518656, -0.824184,
		-0.933667, 0.124337, 0.335867,
		0.276676, 0.845894, 0.455976,
		24.814894, 35.856030, 36.576710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988071, 35.728809, 36.304203>,  <24.621222, 35.263905, 36.257526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988071, 35.728809, 36.304203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342455, 35.913383, 36.322773>,  <24.555084, 36.024128, 36.333916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.342455, 35.913383, 36.322773>,  <23.988071, 35.728809, 36.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342455, 35.913383, 36.322773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281867, 0.615254, -0.736216,
		-0.368283, 0.639168, 0.675153,
		0.885956, 0.461439, 0.046428,
		24.608242, 36.051815, 36.336700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886192, 36.508781, 36.240208>,  <23.988071, 35.728809, 36.304203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.886192, 36.508781, 36.240208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252131, 36.402637, 36.118462>,  <24.471693, 36.338951, 36.045414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252131, 36.402637, 36.118462>,  <23.886192, 36.508781, 36.240208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252131, 36.402637, 36.118462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137318, 0.504393, -0.852485,
		0.379735, 0.821689, 0.425004,
		0.914847, -0.265358, -0.304368,
		24.526585, 36.323029, 36.027149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127398, 37.108810, 35.896603>,  <23.886192, 36.508781, 36.240208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127398, 37.108810, 35.896603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378611, 36.828953, 35.760326>,  <24.529339, 36.661037, 35.678562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378611, 36.828953, 35.760326>,  <24.127398, 37.108810, 35.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378611, 36.828953, 35.760326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137442, 0.331193, -0.933499,
		0.765953, 0.633094, 0.111839,
		0.628033, -0.699645, -0.340692,
		24.567020, 36.619061, 35.658119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613588, 37.458797, 35.435059>,  <24.127398, 37.108810, 35.896603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613588, 37.458797, 35.435059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593311, 37.071735, 35.336212>,  <24.581144, 36.839497, 35.276905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593311, 37.071735, 35.336212>,  <24.613588, 37.458797, 35.435059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593311, 37.071735, 35.336212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017710, 0.248266, -0.968530,
		0.998557, -0.044722, -0.029723,
		-0.050694, -0.967659, -0.247116,
		24.578104, 36.781437, 35.262077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093187, 37.628025, 34.928528>,  <24.613588, 37.458797, 35.435059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093187, 37.628025, 34.928528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491404, 37.653751, 34.956135>,  <25.730333, 37.669186, 34.972698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491404, 37.653751, 34.956135>,  <25.093187, 37.628025, 34.928528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491404, 37.653751, 34.956135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090799, 0.454593, 0.886059,
		0.025610, -0.888374, 0.458405,
		0.995540, 0.064314, 0.069022,
		25.790066, 37.673046, 34.976841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391127, 37.141983, 35.492767>,  <25.093187, 37.628025, 34.928528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391127, 37.141983, 35.492767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599316, 37.469299, 35.395191>,  <25.724230, 37.665688, 35.336647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599316, 37.469299, 35.395191>,  <25.391127, 37.141983, 35.492767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599316, 37.469299, 35.395191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162781, 0.375533, 0.912402,
		0.838219, -0.435171, 0.328657,
		0.520472, 0.818292, -0.243941,
		25.755457, 37.714787, 35.322010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506433, 37.403404, 36.198563>,  <25.391127, 37.141983, 35.492767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506433, 37.403404, 36.198563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652937, 37.712883, 35.991779>,  <25.740839, 37.898571, 35.867710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652937, 37.712883, 35.991779>,  <25.506433, 37.403404, 36.198563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652937, 37.712883, 35.991779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050045, 0.571134, 0.819330,
		0.929166, -0.274217, 0.247904,
		0.366260, 0.773700, -0.516955,
		25.762815, 37.944992, 35.836693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020557, 37.697765, 36.650688>,  <25.506433, 37.403404, 36.198563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020557, 37.697765, 36.650688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921583, 37.979553, 36.384605>,  <25.862198, 38.148624, 36.224957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921583, 37.979553, 36.384605>,  <26.020557, 37.697765, 36.650688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921583, 37.979553, 36.384605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185937, 0.639269, 0.746165,
		0.950896, 0.308314, -0.027192,
		-0.247436, 0.704469, -0.665206,
		25.847353, 38.190895, 36.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396219, 38.273102, 36.798378>,  <26.020557, 37.697765, 36.650688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396219, 38.273102, 36.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069242, 38.395004, 36.602863>,  <25.873056, 38.468147, 36.485554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069242, 38.395004, 36.602863>,  <26.396219, 38.273102, 36.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069242, 38.395004, 36.602863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231499, 0.603198, 0.763257,
		0.527444, 0.737071, -0.422527,
		-0.817442, 0.304761, -0.488784,
		25.824009, 38.486431, 36.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361807, 38.929417, 36.954140>,  <26.396219, 38.273102, 36.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361807, 38.929417, 36.954140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982000, 38.850407, 36.856655>,  <25.754116, 38.803001, 36.798164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982000, 38.850407, 36.856655>,  <26.361807, 38.929417, 36.954140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982000, 38.850407, 36.856655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313669, 0.584892, 0.748006,
		-0.005206, 0.786691, -0.617324,
		-0.949518, -0.197530, -0.243716,
		25.697145, 38.791149, 36.783539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046015, 39.478451, 37.192226>,  <26.361807, 38.929417, 36.954140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046015, 39.478451, 37.192226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713047, 39.269833, 37.117325>,  <25.513266, 39.144661, 37.072384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713047, 39.269833, 37.117325>,  <26.046015, 39.478451, 37.192226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713047, 39.269833, 37.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534581, 0.666786, 0.519249,
		-0.145954, 0.532337, -0.833856,
		-0.832419, -0.521550, -0.187257,
		25.463322, 39.113369, 37.061146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552401, 39.965405, 36.963432>,  <26.046015, 39.478451, 37.192226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552401, 39.965405, 36.963432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381001, 39.644772, 37.130219>,  <25.278160, 39.452393, 37.230289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381001, 39.644772, 37.130219>,  <25.552401, 39.965405, 36.963432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381001, 39.644772, 37.130219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555451, 0.597671, 0.578155,
		-0.712643, 0.016140, -0.701341,
		-0.428503, -0.801579, 0.416961,
		25.252449, 39.404297, 37.255306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847425, 40.065731, 37.036884>,  <25.552401, 39.965405, 36.963432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847425, 40.065731, 37.036884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926540, 39.782890, 37.308437>,  <24.974010, 39.613186, 37.471371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926540, 39.782890, 37.308437>,  <24.847425, 40.065731, 37.036884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926540, 39.782890, 37.308437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365621, 0.589369, 0.720393,
		-0.909506, -0.390698, -0.141963,
		0.197788, -0.707106, 0.678882,
		24.985876, 39.570759, 37.512100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267384, 39.874638, 37.482529>,  <24.847425, 40.065731, 37.036884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267384, 39.874638, 37.482529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603477, 39.800644, 37.686405>,  <24.805134, 39.756248, 37.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603477, 39.800644, 37.686405>,  <24.267384, 39.874638, 37.482529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603477, 39.800644, 37.686405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290863, 0.639542, 0.711607,
		-0.457610, -0.746167, 0.483558,
		0.840233, -0.184989, 0.509694,
		24.855547, 39.745148, 37.839314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.050758, 39.743416, 38.155457>,  <24.267384, 39.874638, 37.482529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.050758, 39.743416, 38.155457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400148, 39.919525, 38.072315>,  <24.609781, 40.025192, 38.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400148, 39.919525, 38.072315>,  <24.050758, 39.743416, 38.155457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400148, 39.919525, 38.072315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315744, 0.837213, 0.446520,
		0.370605, -0.324397, 0.870298,
		0.873474, 0.440274, -0.207850,
		24.662191, 40.051609, 38.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362196, 40.086967, 38.794594>,  <24.050758, 39.743416, 38.155457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362196, 40.086967, 38.794594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473574, 40.283451, 38.464458>,  <24.540400, 40.401340, 38.266376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473574, 40.283451, 38.464458>,  <24.362196, 40.086967, 38.794594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473574, 40.283451, 38.464458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055428, 0.866107, 0.496776,
		0.958852, -0.092577, 0.268389,
		0.278443, 0.491210, -0.825337,
		24.557106, 40.430813, 38.216858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064056, 40.306019, 38.724545>,  <24.362196, 40.086967, 38.794594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064056, 40.306019, 38.724545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001429, 39.921768, 38.816357>,  <24.963852, 39.691219, 38.871445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001429, 39.921768, 38.816357>,  <25.064056, 40.306019, 38.724545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001429, 39.921768, 38.816357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150342, -0.206506, -0.966826,
		0.976157, -0.185882, -0.112090,
		-0.156569, -0.960626, 0.229528,
		24.954458, 39.633579, 38.885216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567976, 39.697235, 38.511971>,  <25.064056, 40.306019, 38.724545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567976, 39.697235, 38.511971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180914, 39.599400, 38.536697>,  <24.948677, 39.540699, 38.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180914, 39.599400, 38.536697>,  <25.567976, 39.697235, 38.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180914, 39.599400, 38.536697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044879, -0.408013, -0.911872,
		0.248254, -0.879603, 0.405793,
		-0.967655, -0.244588, 0.061815,
		24.890617, 39.526024, 38.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455832, 38.922935, 38.563694>,  <25.567976, 39.697235, 38.511971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455832, 38.922935, 38.563694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189165, 39.138065, 38.357277>,  <25.029165, 39.267143, 38.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189165, 39.138065, 38.357277>,  <25.455832, 38.922935, 38.563694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189165, 39.138065, 38.357277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193807, -0.543455, -0.816759,
		-0.719718, -0.644520, 0.258071,
		-0.666667, 0.537820, -0.516046,
		24.989164, 39.299412, 38.202461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046051, 38.449348, 38.241062>,  <25.455832, 38.922935, 38.563694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046051, 38.449348, 38.241062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013739, 38.786110, 38.027641>,  <24.994352, 38.988167, 37.899590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013739, 38.786110, 38.027641>,  <25.046051, 38.449348, 38.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013739, 38.786110, 38.027641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151155, -0.518764, -0.841449,
		-0.985204, -0.148621, -0.085352,
		-0.080779, 0.841900, -0.533553,
		24.989504, 39.038681, 37.867577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.474649, 38.436855, 37.639427>,  <25.046051, 38.449348, 38.241062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.474649, 38.436855, 37.639427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783190, 38.680882, 37.566936>,  <24.968315, 38.827297, 37.523441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783190, 38.680882, 37.566936>,  <24.474649, 38.436855, 37.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783190, 38.680882, 37.566936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118962, -0.417958, -0.900644,
		-0.625191, 0.673155, -0.394967,
		0.771352, 0.610061, -0.181224,
		25.014595, 38.863899, 37.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342360, 38.623199, 36.911552>,  <24.474649, 38.436855, 37.639427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342360, 38.623199, 36.911552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718695, 38.753529, 36.948772>,  <24.944496, 38.831726, 36.971104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718695, 38.753529, 36.948772>,  <24.342360, 38.623199, 36.911552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718695, 38.753529, 36.948772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212346, -0.352940, -0.911231,
		-0.264065, 0.877081, -0.401248,
		0.940840, 0.325827, 0.093045,
		25.000946, 38.851276, 36.976685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516615, 38.545700, 36.289326>,  <24.342360, 38.623199, 36.911552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516615, 38.545700, 36.289326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877428, 38.634266, 36.437550>,  <25.093916, 38.687405, 36.526485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877428, 38.634266, 36.437550>,  <24.516615, 38.545700, 36.289326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877428, 38.634266, 36.437550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431108, -0.418310, -0.799476,
		-0.022004, 0.880905, -0.472782,
		0.902032, 0.221412, 0.370560,
		25.148037, 38.700691, 36.548717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793108, 38.922112, 35.811096>,  <24.516615, 38.545700, 36.289326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793108, 38.922112, 35.811096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104576, 38.765846, 36.007484>,  <25.291456, 38.672085, 36.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104576, 38.765846, 36.007484>,  <24.793108, 38.922112, 35.811096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104576, 38.765846, 36.007484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388096, -0.314968, -0.866127,
		0.493008, 0.864971, -0.093639,
		0.778669, -0.390667, 0.490973,
		25.338177, 38.648647, 36.154778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350540, 39.065536, 35.299782>,  <24.793108, 38.922112, 35.811096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350540, 39.065536, 35.299782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516731, 38.813976, 35.562649>,  <25.616446, 38.663040, 35.720367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516731, 38.813976, 35.562649>,  <25.350540, 39.065536, 35.299782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516731, 38.813976, 35.562649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561389, -0.391164, -0.729269,
		0.715695, 0.671921, 0.190536,
		0.415480, -0.628899, 0.657163,
		25.641375, 38.625305, 35.759796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069662, 39.110115, 35.363750>,  <25.350540, 39.065536, 35.299782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069662, 39.110115, 35.363750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015486, 38.734459, 35.490036>,  <25.982979, 38.509068, 35.565807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015486, 38.734459, 35.490036>,  <26.069662, 39.110115, 35.363750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015486, 38.734459, 35.490036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317802, -0.342992, -0.883945,
		0.938433, -0.019390, 0.344916,
		-0.135443, -0.939138, 0.315713,
		25.974854, 38.452717, 35.584751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453367, 38.748520, 34.946186>,  <26.069662, 39.110115, 35.363750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453367, 38.748520, 34.946186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203913, 38.463043, 35.073761>,  <26.054239, 38.291756, 35.150307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203913, 38.463043, 35.073761>,  <26.453367, 38.748520, 34.946186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203913, 38.463043, 35.073761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093361, -0.473075, -0.876061,
		0.776119, -0.516568, 0.361658,
		-0.623637, -0.713693, 0.318936,
		26.016821, 38.248936, 35.169441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844374, 38.037727, 35.123966>,  <26.453367, 38.748520, 34.946186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844374, 38.037727, 35.123966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464312, 38.044926, 34.999462>,  <26.236275, 38.049244, 34.924759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464312, 38.044926, 34.999462>,  <26.844374, 38.037727, 35.123966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464312, 38.044926, 34.999462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266109, -0.473408, -0.839685,
		-0.162461, -0.880660, 0.445022,
		-0.950154, 0.017992, -0.311262,
		26.179266, 38.050323, 34.906082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716949, 37.354637, 35.090538>,  <26.844374, 38.037727, 35.123966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716949, 37.354637, 35.090538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503881, 37.564304, 34.824753>,  <26.376041, 37.690105, 34.665283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503881, 37.564304, 34.824753>,  <26.716949, 37.354637, 35.090538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503881, 37.564304, 34.824753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228216, -0.667072, -0.709177,
		-0.814974, -0.529397, 0.235704,
		-0.532668, 0.524169, -0.664463,
		26.344082, 37.721554, 34.625416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549765, 36.893887, 34.560013>,  <26.716949, 37.354637, 35.090538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549765, 36.893887, 34.560013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493649, 37.241222, 34.369724>,  <26.459978, 37.449623, 34.255550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493649, 37.241222, 34.369724>,  <26.549765, 36.893887, 34.560013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493649, 37.241222, 34.369724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183869, -0.449262, -0.874274,
		-0.972888, -0.210122, -0.096634,
		-0.140290, 0.868339, -0.475717,
		26.451561, 37.501724, 34.227009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087299, 36.866718, 34.003712>,  <26.549765, 36.893887, 34.560013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087299, 36.866718, 34.003712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308533, 37.187122, 33.912083>,  <26.441273, 37.379364, 33.857105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308533, 37.187122, 33.912083>,  <26.087299, 36.866718, 34.003712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308533, 37.187122, 33.912083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219525, -0.405356, -0.887409,
		-0.803683, 0.440525, -0.400039,
		0.553084, 0.801014, -0.229072,
		26.474459, 37.427425, 33.843361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797104, 36.166576, 33.802223>,  <26.087299, 36.866718, 34.003712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797104, 36.166576, 33.802223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670914, 36.039841, 33.444431>,  <25.595200, 35.963799, 33.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670914, 36.039841, 33.444431>,  <25.797104, 36.166576, 33.802223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670914, 36.039841, 33.444431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056852, -0.947229, 0.315476,
		-0.947229, 0.048673, 0.316841,
		-0.315476, -0.316841, -0.894475,
		25.576271, 35.944790, 33.176090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146229, 35.806988, 33.858349>,  <25.797104, 36.166576, 33.802223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146229, 35.806988, 33.858349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359715, 35.672615, 33.547916>,  <25.487806, 35.591991, 33.361656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359715, 35.672615, 33.547916>,  <25.146229, 35.806988, 33.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359715, 35.672615, 33.547916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099118, -0.886540, 0.451909,
		-0.839836, -0.318114, -0.439863,
		0.533715, -0.335931, -0.776079,
		25.519829, 35.571835, 33.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977358, 35.058918, 33.557785>,  <25.146229, 35.806988, 33.858349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977358, 35.058918, 33.557785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356468, 35.177692, 33.511219>,  <25.583935, 35.248955, 33.483280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356468, 35.177692, 33.511219>,  <24.977358, 35.058918, 33.557785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356468, 35.177692, 33.511219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311856, -0.786308, 0.533353,
		0.066834, -0.541803, -0.837844,
		0.947776, 0.296933, -0.116412,
		25.640800, 35.266773, 33.476295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302095, 34.526718, 33.271751>,  <24.977358, 35.058918, 33.557785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302095, 34.526718, 33.271751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583099, 34.731049, 33.469959>,  <25.751701, 34.853649, 33.588882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583099, 34.731049, 33.469959>,  <25.302095, 34.526718, 33.271751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583099, 34.731049, 33.469959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140124, -0.781920, 0.607426,
		0.697744, -0.357289, -0.620884,
		0.702508, 0.510829, 0.495516,
		25.793852, 34.884296, 33.618614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070799, 34.307087, 33.283085>,  <25.302095, 34.526718, 33.271751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070799, 34.307087, 33.283085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919174, 34.463863, 33.618393>,  <25.828199, 34.557930, 33.819576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919174, 34.463863, 33.618393>,  <26.070799, 34.307087, 33.283085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919174, 34.463863, 33.618393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298351, -0.805732, 0.511647,
		0.875956, 0.444043, 0.188484,
		-0.379060, 0.391946, 0.838267,
		25.805456, 34.581448, 33.869873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608639, 33.879238, 33.569767>,  <26.070799, 34.307087, 33.283085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608639, 33.879238, 33.569767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663820, 34.238583, 33.402954>,  <26.696928, 34.454189, 33.302868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663820, 34.238583, 33.402954>,  <26.608639, 33.879238, 33.569767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663820, 34.238583, 33.402954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638585, 0.241179, 0.730782,
		0.757086, -0.367123, -0.540409,
		0.137952, 0.898361, -0.417032,
		26.705206, 34.508091, 33.277843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295078, 34.026688, 33.573921>,  <26.608639, 33.879238, 33.569767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295078, 34.026688, 33.573921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150953, 34.395935, 33.520226>,  <27.064478, 34.617485, 33.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150953, 34.395935, 33.520226>,  <27.295078, 34.026688, 33.573921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150953, 34.395935, 33.520226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774863, 0.376307, 0.507918,
		0.519387, 0.078989, -0.850881,
		-0.360312, 0.923122, -0.134243,
		27.042860, 34.672871, 33.479954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820772, 34.430855, 33.220768>,  <27.295078, 34.026688, 33.573921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820772, 34.430855, 33.220768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594040, 34.639011, 33.476234>,  <27.458000, 34.763905, 33.629513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594040, 34.639011, 33.476234>,  <27.820772, 34.430855, 33.220768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594040, 34.639011, 33.476234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806703, 0.193342, 0.558434,
		0.167127, 0.831750, -0.529397,
		-0.566832, 0.520396, 0.638663,
		27.423990, 34.795132, 33.667831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319317, 33.924934, 32.885071>,  <27.820772, 34.430855, 33.220768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319317, 33.924934, 32.885071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095535, 33.679070, 33.107494>,  <27.961266, 33.531551, 33.240948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095535, 33.679070, 33.107494>,  <28.319317, 33.924934, 32.885071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095535, 33.679070, 33.107494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633108, 0.749887, 0.191948,
		-0.534962, -0.244656, -0.808677,
		-0.559455, -0.614665, 0.556055,
		27.927698, 33.494671, 33.274311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877529, 33.323311, 32.551029>,  <28.319317, 33.924934, 32.885071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877529, 33.323311, 32.551029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557898, 33.135155, 32.700806>,  <28.366117, 33.022263, 32.790672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557898, 33.135155, 32.700806>,  <28.877529, 33.323311, 32.551029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557898, 33.135155, 32.700806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304724, -0.220000, -0.926684,
		0.518281, -0.854594, 0.032458,
		-0.799080, -0.470392, 0.374437,
		28.318174, 32.994038, 32.813137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791346, 32.583794, 32.529678>,  <28.877529, 33.323311, 32.551029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791346, 32.583794, 32.529678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432732, 32.759312, 32.505398>,  <28.217564, 32.864624, 32.490829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432732, 32.759312, 32.505398>,  <28.791346, 32.583794, 32.529678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432732, 32.759312, 32.505398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047369, -0.231211, -0.971750,
		-0.440434, -0.868332, 0.228074,
		-0.896534, 0.438796, -0.060701,
		28.163771, 32.890949, 32.487186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118740, 32.221409, 32.376877>,  <28.791346, 32.583794, 32.529678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118740, 32.221409, 32.376877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188791, 32.575054, 32.203594>,  <28.230822, 32.787243, 32.099625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188791, 32.575054, 32.203594>,  <28.118740, 32.221409, 32.376877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188791, 32.575054, 32.203594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080729, -0.425629, -0.901290,
		-0.981231, 0.192811, -0.003164,
		0.175126, 0.884117, -0.433206,
		28.241329, 32.840290, 32.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726717, 32.234661, 31.780312>,  <28.118740, 32.221409, 32.376877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726717, 32.234661, 31.780312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006189, 32.513275, 31.714970>,  <28.173872, 32.680443, 31.675764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006189, 32.513275, 31.714970>,  <27.726717, 32.234661, 31.780312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006189, 32.513275, 31.714970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178945, -0.391209, -0.902737,
		-0.692693, 0.601494, -0.397971,
		0.698681, 0.696535, -0.163354,
		28.215794, 32.722237, 31.665964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494045, 32.476856, 31.215153>,  <27.726717, 32.234661, 31.780312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494045, 32.476856, 31.215153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878674, 32.582062, 31.246655>,  <28.109451, 32.645184, 31.265556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878674, 32.582062, 31.246655>,  <27.494045, 32.476856, 31.215153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878674, 32.582062, 31.246655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168620, -0.339376, -0.925414,
		-0.216668, 0.903133, -0.370683,
		0.961573, 0.263012, 0.078754,
		28.167145, 32.660965, 31.270281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606438, 32.647552, 30.511698>,  <27.494045, 32.476856, 31.215153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606438, 32.647552, 30.511698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980701, 32.630154, 30.651783>,  <28.205259, 32.619713, 30.735834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980701, 32.630154, 30.651783>,  <27.606438, 32.647552, 30.511698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980701, 32.630154, 30.651783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346444, -0.075826, -0.935001,
		0.067225, 0.996172, -0.055878,
		0.935659, -0.043497, 0.350215,
		28.261398, 32.617104, 30.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978682, 33.179489, 30.209188>,  <27.606438, 32.647552, 30.511698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978682, 33.179489, 30.209188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241711, 32.895374, 30.309658>,  <28.399529, 32.724907, 30.369940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241711, 32.895374, 30.309658>,  <27.978682, 33.179489, 30.209188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241711, 32.895374, 30.309658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410999, 0.058794, -0.909738,
		0.631409, 0.701451, 0.330589,
		0.657573, -0.710288, 0.251173,
		28.438982, 32.682289, 30.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622799, 33.475220, 30.072741>,  <27.978682, 33.179489, 30.209188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622799, 33.475220, 30.072741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682434, 33.079769, 30.080629>,  <28.718216, 32.842499, 30.085363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682434, 33.079769, 30.080629>,  <28.622799, 33.475220, 30.072741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682434, 33.079769, 30.080629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502161, 0.058515, -0.862792,
		0.851825, 0.138538, 0.505174,
		0.149090, -0.988627, 0.019723,
		28.727161, 32.783180, 30.086546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218863, 33.372749, 29.660357>,  <28.622799, 33.475220, 30.072741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218863, 33.372749, 29.660357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050991, 33.009773, 29.652140>,  <28.950268, 32.791988, 29.647209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050991, 33.009773, 29.652140>,  <29.218863, 33.372749, 29.660357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050991, 33.009773, 29.652140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268805, -0.102638, -0.957710,
		0.866957, -0.407451, 0.287000,
		-0.419677, -0.907441, -0.020542,
		28.925087, 32.737541, 29.645977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766562, 32.902557, 29.466743>,  <29.218863, 33.372749, 29.660357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766562, 32.902557, 29.466743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421009, 32.724121, 29.373184>,  <29.213678, 32.617058, 29.317049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421009, 32.724121, 29.373184>,  <29.766562, 32.902557, 29.466743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421009, 32.724121, 29.373184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382951, -0.280033, -0.880301,
		0.327198, -0.850047, 0.412748,
		-0.863881, -0.446095, -0.233900,
		29.161844, 32.590294, 29.303015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948400, 32.422821, 29.047550>,  <29.766562, 32.902557, 29.466743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948400, 32.422821, 29.047550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555573, 32.407883, 28.973642>,  <29.319876, 32.398918, 28.929298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555573, 32.407883, 28.973642>,  <29.948400, 32.422821, 29.047550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555573, 32.407883, 28.973642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188486, -0.180292, -0.965385,
		0.002745, -0.982904, 0.184100,
		-0.982072, -0.037350, -0.184769,
		29.260950, 32.396679, 28.918211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871489, 31.895924, 28.452473>,  <29.948400, 32.422821, 29.047550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871489, 31.895924, 28.452473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547338, 32.130230, 28.447342>,  <29.352848, 32.270813, 28.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547338, 32.130230, 28.447342>,  <29.871489, 31.895924, 28.452473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547338, 32.130230, 28.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005688, -0.029755, -0.999541,
		-0.585881, -0.809932, 0.027444,
		-0.810377, 0.585768, -0.012826,
		29.304226, 32.305962, 28.443495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334452, 31.574173, 27.944977>,  <29.871489, 31.895924, 28.452473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334452, 31.574173, 27.944977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219742, 31.956659, 27.968342>,  <29.150915, 32.186150, 27.982361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219742, 31.956659, 27.968342>,  <29.334452, 31.574173, 27.944977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219742, 31.956659, 27.968342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101202, 0.030395, -0.994402,
		-0.952637, -0.291081, 0.088054,
		-0.286775, 0.956215, 0.058414,
		29.133709, 32.243523, 27.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635086, 31.590040, 27.558741>,  <29.334452, 31.574173, 27.944977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635086, 31.590040, 27.558741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802685, 31.953169, 27.565678>,  <28.903244, 32.171047, 27.569839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802685, 31.953169, 27.565678>,  <28.635086, 31.590040, 27.558741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802685, 31.953169, 27.565678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038320, 0.036760, -0.998589,
		-0.907179, 0.417740, 0.050190,
		0.418996, 0.907822, 0.017340,
		28.928383, 32.225517, 27.570879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262264, 31.862860, 27.035645>,  <28.635086, 31.590040, 27.558741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262264, 31.862860, 27.035645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593218, 32.081551, 27.087055>,  <28.791790, 32.212765, 27.117901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593218, 32.081551, 27.087055>,  <28.262264, 31.862860, 27.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593218, 32.081551, 27.087055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088532, 0.099022, -0.991139,
		-0.554612, 0.831434, 0.033527,
		0.827386, 0.546729, 0.128527,
		28.841434, 32.245571, 27.125614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228407, 32.477390, 26.604925>,  <28.262264, 31.862860, 27.035645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228407, 32.477390, 26.604925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618729, 32.518837, 26.681942>,  <28.852921, 32.543705, 26.728151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618729, 32.518837, 26.681942>,  <28.228407, 32.477390, 26.604925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618729, 32.518837, 26.681942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125387, 0.456234, -0.880982,
		-0.179130, 0.883807, 0.432202,
		0.975803, 0.103618, 0.192543,
		28.911469, 32.549923, 26.739704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350533, 33.210777, 26.656496>,  <28.228407, 32.477390, 26.604925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350533, 33.210777, 26.656496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680597, 33.013870, 26.545656>,  <28.878635, 32.895725, 26.479153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680597, 33.013870, 26.545656>,  <28.350533, 33.210777, 26.656496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680597, 33.013870, 26.545656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011005, 0.504450, -0.863371,
		0.564790, 0.709370, 0.421670,
		0.825161, -0.492264, -0.277102,
		28.928146, 32.866192, 26.462526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793425, 33.637665, 26.251253>,  <28.350533, 33.210777, 26.656496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793425, 33.637665, 26.251253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959385, 33.290447, 26.142178>,  <29.058960, 33.082115, 26.076733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959385, 33.290447, 26.142178>,  <28.793425, 33.637665, 26.251253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959385, 33.290447, 26.142178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206215, 0.381612, -0.901026,
		0.886191, 0.317603, 0.337334,
		0.414899, -0.868044, -0.272687,
		29.083855, 33.030033, 26.060371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412430, 33.853374, 25.977913>,  <28.793425, 33.637665, 26.251253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412430, 33.853374, 25.977913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346502, 33.491932, 25.819757>,  <29.306946, 33.275066, 25.724865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346502, 33.491932, 25.819757>,  <29.412430, 33.853374, 25.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346502, 33.491932, 25.819757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183527, 0.365775, -0.912429,
		0.969099, -0.222948, 0.105550,
		-0.164817, -0.903605, -0.395389,
		29.297056, 33.220852, 25.701141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011127, 33.675999, 25.551516>,  <29.412430, 33.853374, 25.977913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011127, 33.675999, 25.551516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694782, 33.459030, 25.438158>,  <29.504974, 33.328850, 25.370144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694782, 33.459030, 25.438158>,  <30.011127, 33.675999, 25.551516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694782, 33.459030, 25.438158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147609, 0.280329, -0.948487,
		0.593923, -0.791957, -0.141636,
		-0.790865, -0.542421, -0.283393,
		29.457523, 33.296303, 25.353140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238098, 33.346554, 24.866379>,  <30.011127, 33.675999, 25.551516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238098, 33.346554, 24.866379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839550, 33.317009, 24.883301>,  <29.600422, 33.299282, 24.893454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839550, 33.317009, 24.883301>,  <30.238098, 33.346554, 24.866379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839550, 33.317009, 24.883301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043944, 0.020691, -0.998820,
		0.072903, -0.997053, -0.023862,
		-0.996370, -0.073866, 0.042307,
		29.540638, 33.294853, 24.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009121, 32.848473, 24.305872>,  <30.238098, 33.346554, 24.866379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009121, 32.848473, 24.305872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681345, 33.066471, 24.376863>,  <29.484680, 33.197269, 24.419458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681345, 33.066471, 24.376863>,  <30.009121, 32.848473, 24.305872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681345, 33.066471, 24.376863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145663, 0.101463, -0.984118,
		-0.554349, -0.832276, -0.003757,
		-0.819439, 0.544997, 0.177478,
		29.435513, 33.229969, 24.430107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419394, 32.591644, 23.790012>,  <30.009121, 32.848473, 24.305872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419394, 32.591644, 23.790012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321833, 32.954903, 23.926119>,  <29.263296, 33.172859, 24.007782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321833, 32.954903, 23.926119>,  <29.419394, 32.591644, 23.790012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321833, 32.954903, 23.926119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228966, 0.287020, -0.930158,
		-0.942384, -0.304775, 0.137931,
		-0.243900, 0.908147, 0.340266,
		29.248663, 33.227348, 24.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858328, 32.651058, 23.498854>,  <29.419394, 32.591644, 23.790012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858328, 32.651058, 23.498854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954182, 33.017658, 23.626978>,  <29.011694, 33.237617, 23.703854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954182, 33.017658, 23.626978>,  <28.858328, 32.651058, 23.498854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954182, 33.017658, 23.626978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263219, 0.378899, -0.887215,
		-0.934501, 0.128295, 0.332038,
		0.239634, 0.916502, 0.320312,
		29.026072, 33.292610, 23.723072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371208, 33.105320, 23.211273>,  <28.858328, 32.651058, 23.498854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371208, 33.105320, 23.211273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638651, 33.388462, 23.302404>,  <28.799116, 33.558346, 23.357082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638651, 33.388462, 23.302404>,  <28.371208, 33.105320, 23.211273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638651, 33.388462, 23.302404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147965, 0.426893, -0.892114,
		-0.728746, 0.562763, 0.390162,
		0.668607, 0.707856, 0.227828,
		28.839233, 33.600819, 23.370752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986303, 33.819668, 22.976717>,  <28.371208, 33.105320, 23.211273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986303, 33.819668, 22.976717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385761, 33.812363, 22.996201>,  <28.625437, 33.807980, 23.007891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385761, 33.812363, 22.996201>,  <27.986303, 33.819668, 22.976717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385761, 33.812363, 22.996201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050914, 0.535498, -0.843001,
		-0.010686, 0.844339, 0.535703,
		0.998646, -0.018266, 0.048711,
		28.685354, 33.806881, 23.010815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156651, 34.523510, 22.684288>,  <27.986303, 33.819668, 22.976717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156651, 34.523510, 22.684288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526152, 34.370510, 22.692043>,  <28.747852, 34.278709, 22.696697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526152, 34.370510, 22.692043>,  <28.156651, 34.523510, 22.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526152, 34.370510, 22.692043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243908, 0.548512, -0.799777,
		0.295278, 0.743525, 0.599984,
		0.923753, -0.382497, 0.019388,
		28.803278, 34.255760, 22.697859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610197, 35.062210, 22.499269>,  <28.156651, 34.523510, 22.684288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610197, 35.062210, 22.499269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823000, 34.738419, 22.399897>,  <28.950682, 34.544144, 22.340273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823000, 34.738419, 22.399897>,  <28.610197, 35.062210, 22.499269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823000, 34.738419, 22.399897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309556, 0.459022, -0.832751,
		0.788126, 0.366127, 0.494781,
		0.532008, -0.809475, -0.248430,
		28.982603, 34.495575, 22.325367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247686, 35.287895, 22.423082>,  <28.610197, 35.062210, 22.499269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247686, 35.287895, 22.423082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200329, 34.948997, 22.215946>,  <29.171915, 34.745659, 22.091663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200329, 34.948997, 22.215946>,  <29.247686, 35.287895, 22.423082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200329, 34.948997, 22.215946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304722, 0.465346, -0.831022,
		0.945054, -0.256185, 0.203080,
		-0.118392, -0.847244, -0.517843,
		29.164812, 34.694824, 22.060593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750271, 35.341354, 21.800476>,  <29.247686, 35.287895, 22.423082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750271, 35.341354, 21.800476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544432, 35.011295, 21.707249>,  <29.420929, 34.813259, 21.651312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544432, 35.011295, 21.707249>,  <29.750271, 35.341354, 21.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544432, 35.011295, 21.707249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175784, 0.164523, -0.970584,
		0.839220, -0.540430, 0.060385,
		-0.514597, -0.825147, -0.233070,
		29.390053, 34.763752, 21.637327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153330, 34.924454, 21.295218>,  <29.750271, 35.341354, 21.800476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153330, 34.924454, 21.295218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766430, 34.839844, 21.239103>,  <29.534290, 34.789078, 21.205435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766430, 34.839844, 21.239103>,  <30.153330, 34.924454, 21.295218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766430, 34.839844, 21.239103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093361, 0.217444, -0.971597,
		0.236037, -0.952874, -0.190573,
		-0.967249, -0.211541, -0.140287,
		29.476254, 34.776386, 21.197018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058403, 34.625034, 20.579967>,  <30.153330, 34.924454, 21.295218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058403, 34.625034, 20.579967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700024, 34.773884, 20.676964>,  <29.484997, 34.863194, 20.735161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700024, 34.773884, 20.676964>,  <30.058403, 34.625034, 20.579967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700024, 34.773884, 20.676964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214329, 0.115957, -0.969854,
		-0.389025, -0.920911, -0.024135,
		-0.895948, 0.372125, 0.242489,
		29.431240, 34.885521, 20.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547369, 34.204536, 20.285624>,  <30.058403, 34.625034, 20.579967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547369, 34.204536, 20.285624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390528, 34.567760, 20.344524>,  <29.296423, 34.785694, 20.379864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390528, 34.567760, 20.344524>,  <29.547369, 34.204536, 20.285624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390528, 34.567760, 20.344524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106122, 0.114350, -0.987756,
		-0.913780, -0.402927, 0.051529,
		-0.392102, 0.908060, 0.147250,
		29.272898, 34.840179, 20.388699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912048, 34.224533, 19.904596>,  <29.547369, 34.204536, 20.285624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912048, 34.224533, 19.904596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000330, 34.610985, 19.958086>,  <29.053299, 34.842857, 19.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000330, 34.610985, 19.958086>,  <28.912048, 34.224533, 19.904596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000330, 34.610985, 19.958086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090449, 0.156790, -0.983482,
		-0.971138, 0.204962, 0.121990,
		0.220703, 0.966130, 0.133726,
		29.066542, 34.900826, 19.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319149, 34.634182, 19.582741>,  <28.912048, 34.224533, 19.904596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319149, 34.634182, 19.582741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639360, 34.873142, 19.601761>,  <28.831488, 35.016518, 19.613173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639360, 34.873142, 19.601761>,  <28.319149, 34.634182, 19.582741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639360, 34.873142, 19.601761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006983, 0.070038, -0.997520,
		-0.599251, 0.798878, 0.051896,
		0.800531, 0.597402, 0.047549,
		28.879520, 35.052364, 19.616026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155516, 35.172977, 19.203787>,  <28.319149, 34.634182, 19.582741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155516, 35.172977, 19.203787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555056, 35.188484, 19.215044>,  <28.794781, 35.197788, 19.221798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555056, 35.188484, 19.215044>,  <28.155516, 35.172977, 19.203787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555056, 35.188484, 19.215044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014613, 0.312901, -0.949673,
		-0.045620, 0.948994, 0.311975,
		0.998852, 0.038766, 0.028142,
		28.854712, 35.200115, 19.223486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364731, 35.735859, 18.675579>,  <28.155516, 35.172977, 19.203787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364731, 35.735859, 18.675579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724525, 35.571224, 18.734264>,  <28.940401, 35.472443, 18.769476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724525, 35.571224, 18.734264>,  <28.364731, 35.735859, 18.675579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724525, 35.571224, 18.734264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261313, 0.237588, -0.935557,
		0.350205, 0.879857, 0.321259,
		0.899484, -0.411586, 0.146713,
		28.994371, 35.447750, 18.778278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870913, 36.271172, 18.509230>,  <28.364731, 35.735859, 18.675579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870913, 36.271172, 18.509230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042572, 35.910488, 18.488243>,  <29.145567, 35.694077, 18.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042572, 35.910488, 18.488243>,  <28.870913, 36.271172, 18.509230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042572, 35.910488, 18.488243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391192, 0.237910, -0.889026,
		0.814125, 0.360999, 0.454841,
		0.429149, -0.901709, -0.052469,
		29.171316, 35.639977, 18.472502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578684, 36.305378, 18.428373>,  <28.870913, 36.271172, 18.509230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578684, 36.305378, 18.428373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508282, 35.940960, 18.279230>,  <29.466042, 35.722309, 18.189745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508282, 35.940960, 18.279230>,  <29.578684, 36.305378, 18.428373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508282, 35.940960, 18.279230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560299, 0.218714, -0.798892,
		0.809375, -0.349519, 0.471962,
		-0.176004, -0.911043, -0.372857,
		29.455481, 35.667648, 18.167374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202812, 36.022053, 18.204632>,  <29.578684, 36.305378, 18.428373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202812, 36.022053, 18.204632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934208, 35.800636, 18.007587>,  <29.773045, 35.667786, 17.889360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934208, 35.800636, 18.007587>,  <30.202812, 36.022053, 18.204632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934208, 35.800636, 18.007587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468395, 0.198037, -0.861038,
		0.574176, -0.808932, 0.126292,
		-0.671511, -0.553543, -0.492608,
		29.732754, 35.634575, 17.859804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577509, 35.557289, 17.829287>,  <30.202812, 36.022053, 18.204632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577509, 35.557289, 17.829287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224646, 35.550285, 17.641035>,  <30.012928, 35.546082, 17.528084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224646, 35.550285, 17.641035>,  <30.577509, 35.557289, 17.829287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224646, 35.550285, 17.641035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468355, 0.072266, -0.880580,
		0.049436, -0.997231, -0.055546,
		-0.882156, -0.017518, -0.470631,
		29.959999, 35.545033, 17.499846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625622, 35.047131, 17.237364>,  <30.577509, 35.557289, 17.829287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625622, 35.047131, 17.237364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324677, 35.298988, 17.159901>,  <30.144110, 35.450104, 17.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324677, 35.298988, 17.159901>,  <30.625622, 35.047131, 17.237364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324677, 35.298988, 17.159901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405166, 0.210496, -0.889681,
		-0.519415, -0.747826, -0.413479,
		-0.752362, 0.629641, -0.193659,
		30.098969, 35.487881, 17.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333794, 34.884739, 16.485779>,  <30.625622, 35.047131, 17.237364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333794, 34.884739, 16.485779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231575, 35.266888, 16.545048>,  <30.170244, 35.496178, 16.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231575, 35.266888, 16.545048>,  <30.333794, 34.884739, 16.485779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231575, 35.266888, 16.545048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374103, 0.239039, -0.896051,
		-0.891483, -0.173551, -0.418494,
		-0.255547, 0.955374, 0.148173,
		30.154911, 35.553501, 16.589500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982450, 35.054249, 15.874823>,  <30.333794, 34.884739, 16.485779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982450, 35.054249, 15.874823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078844, 35.413280, 16.022490>,  <30.136681, 35.628700, 16.111090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078844, 35.413280, 16.022490>,  <29.982450, 35.054249, 15.874823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078844, 35.413280, 16.022490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254127, 0.308748, -0.916566,
		-0.936668, 0.314691, -0.153695,
		0.240982, 0.897577, 0.369166,
		30.151138, 35.682552, 16.133240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851498, 35.498142, 15.350251>,  <29.982450, 35.054249, 15.874823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851498, 35.498142, 15.350251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111515, 35.714195, 15.564056>,  <30.267525, 35.843826, 15.692340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111515, 35.714195, 15.564056>,  <29.851498, 35.498142, 15.350251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111515, 35.714195, 15.564056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381088, 0.376840, -0.844253,
		-0.657432, 0.752498, 0.039126,
		0.650043, 0.540129, 0.534514,
		30.306528, 35.876232, 15.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830694, 36.149765, 15.128290>,  <29.851498, 35.498142, 15.350251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830694, 36.149765, 15.128290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192198, 36.157875, 15.299314>,  <30.409100, 36.162743, 15.401929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192198, 36.157875, 15.299314>,  <29.830694, 36.149765, 15.128290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192198, 36.157875, 15.299314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388754, 0.379150, -0.839712,
		-0.179135, 0.925113, 0.334778,
		0.903759, 0.020275, 0.427560,
		30.463326, 36.163960, 15.427583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147015, 36.830128, 15.346241>,  <29.830694, 36.149765, 15.128290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147015, 36.830128, 15.346241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107199, 37.227936, 15.333430>,  <30.083309, 37.466621, 15.325744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107199, 37.227936, 15.333430>,  <30.147015, 36.830128, 15.346241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107199, 37.227936, 15.333430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947479, 0.084901, -0.308343,
		-0.303934, -0.061037, -0.950736,
		-0.099538, 0.994518, -0.032027,
		30.077337, 37.526291, 15.323822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312588, 37.123905, 14.609850>,  <30.147015, 36.830128, 15.346241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312588, 37.123905, 14.609850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371927, 37.355129, 14.930807>,  <30.407532, 37.493866, 15.123382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371927, 37.355129, 14.930807>,  <30.312588, 37.123905, 14.609850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371927, 37.355129, 14.930807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981570, 0.012769, -0.190677,
		-0.120469, 0.815892, -0.565515,
		0.148351, 0.578063, 0.802393,
		30.416433, 37.528549, 15.171525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857092, 37.618252, 14.320170>,  <30.312588, 37.123905, 14.609850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857092, 37.618252, 14.320170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882557, 37.607658, 14.719218>,  <30.897837, 37.601303, 14.958647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882557, 37.607658, 14.719218>,  <30.857092, 37.618252, 14.320170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882557, 37.607658, 14.719218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997971, 0.000844, -0.063664,
		0.000844, 0.999649, 0.026480,
		0.063664, -0.026480, 0.997620,
		30.901657, 37.599712, 15.018504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320000, 37.290321, 14.763029>,  <30.857092, 37.618252, 14.320170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320000, 37.290321, 14.763029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396393, 37.586861, 14.505679>,  <31.442228, 37.764786, 14.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396393, 37.586861, 14.505679>,  <31.320000, 37.290321, 14.763029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396393, 37.586861, 14.505679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981060, -0.122546, 0.150013,
		0.032368, -0.659839, -0.750710,
		0.190981, 0.741347, -0.643375,
		31.453688, 37.809265, 14.312667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608139, 37.054138, 14.127694>,  <31.320000, 37.290321, 14.763029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608139, 37.054138, 14.127694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738756, 37.413864, 14.244034>,  <31.817127, 37.629700, 14.313837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738756, 37.413864, 14.244034>,  <31.608139, 37.054138, 14.127694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738756, 37.413864, 14.244034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904549, -0.386597, 0.179814,
		0.274152, 0.204369, -0.939720,
		0.326545, 0.899320, 0.290848,
		31.836720, 37.683659, 14.331288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361744, 37.003773, 14.151044>,  <31.608139, 37.054138, 14.127694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361744, 37.003773, 14.151044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278534, 37.343140, 14.345738>,  <32.228607, 37.546761, 14.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278534, 37.343140, 14.345738>,  <32.361744, 37.003773, 14.151044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278534, 37.343140, 14.345738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836513, -0.103578, 0.538067,
		0.506921, 0.519095, -0.688165,
		-0.208029, 0.848418, 0.486736,
		32.216125, 37.597664, 14.491759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954945, 37.531254, 14.212488>,  <32.361744, 37.003773, 14.151044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954945, 37.531254, 14.212488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699963, 37.629860, 14.504484>,  <32.546974, 37.689022, 14.679682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699963, 37.629860, 14.504484>,  <32.954945, 37.531254, 14.212488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699963, 37.629860, 14.504484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763980, 0.079335, 0.640344,
		0.099940, 0.965887, -0.238904,
		-0.637453, 0.246514, 0.729990,
		32.508728, 37.703815, 14.723481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312687, 38.012230, 14.692219>,  <32.954945, 37.531254, 14.212488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312687, 38.012230, 14.692219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013939, 37.852642, 14.905013>,  <32.834690, 37.756889, 15.032689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013939, 37.852642, 14.905013>,  <33.312687, 38.012230, 14.692219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013939, 37.852642, 14.905013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598199, -0.053716, 0.799545,
		-0.290417, 0.915390, 0.278782,
		-0.746871, -0.398969, 0.531985,
		32.789879, 37.732952, 15.064609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698776, 38.393570, 15.048667>,  <33.312687, 38.012230, 14.692219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698776, 38.393570, 15.048667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321613, 38.286644, 15.128133>,  <32.095314, 38.222488, 15.175813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321613, 38.286644, 15.128133>,  <32.698776, 38.393570, 15.048667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321613, 38.286644, 15.128133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136661, 0.233430, 0.962722,
		-0.303728, 0.934907, -0.183571,
		-0.942907, -0.267319, 0.198665,
		32.038742, 38.206448, 15.187733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359100, 38.877728, 15.475836>,  <32.698776, 38.393570, 15.048667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359100, 38.877728, 15.475836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161266, 38.535656, 15.537878>,  <32.042568, 38.330414, 15.575104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161266, 38.535656, 15.537878>,  <32.359100, 38.877728, 15.475836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161266, 38.535656, 15.537878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056942, 0.146194, 0.987616,
		-0.867263, 0.497290, -0.023609,
		-0.494582, -0.855179, 0.155105,
		32.012890, 38.279102, 15.584410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872915, 39.006760, 16.019724>,  <32.359100, 38.877728, 15.475836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872915, 39.006760, 16.019724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936022, 38.611771, 16.021349>,  <31.973886, 38.374779, 16.022324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936022, 38.611771, 16.021349>,  <31.872915, 39.006760, 16.019724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936022, 38.611771, 16.021349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020217, 0.007344, 0.999769,
		-0.987269, -0.157648, 0.021122,
		0.157767, -0.987468, 0.004063,
		31.983353, 38.315529, 16.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352381, 38.782375, 16.486006>,  <31.872915, 39.006760, 16.019724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352381, 38.782375, 16.486006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655680, 38.521847, 16.474375>,  <31.837658, 38.365528, 16.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655680, 38.521847, 16.474375>,  <31.352381, 38.782375, 16.486006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655680, 38.521847, 16.474375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072538, 0.039954, 0.996565,
		-0.647921, -0.757750, 0.077540,
		0.758246, -0.651320, -0.029079,
		31.883154, 38.326450, 16.465651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165247, 38.270370, 17.154730>,  <31.352381, 38.782375, 16.486006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165247, 38.270370, 17.154730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546148, 38.177013, 17.075998>,  <31.774689, 38.120998, 17.028759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546148, 38.177013, 17.075998>,  <31.165247, 38.270370, 17.154730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546148, 38.177013, 17.075998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198571, -0.016243, 0.979952,
		-0.231910, -0.972247, 0.030877,
		0.952254, -0.233392, -0.196827,
		31.831825, 38.106995, 17.016951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349073, 37.685425, 17.534105>,  <31.165247, 38.270370, 17.154730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349073, 37.685425, 17.534105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698280, 37.855839, 17.439165>,  <31.907804, 37.958088, 17.382200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698280, 37.855839, 17.439165>,  <31.349073, 37.685425, 17.534105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698280, 37.855839, 17.439165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265199, -0.006282, 0.964173,
		0.409282, -0.904684, -0.118469,
		0.873016, 0.426037, -0.237350,
		31.960186, 37.983650, 17.367960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796177, 37.293522, 17.760075>,  <31.349073, 37.685425, 17.534105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796177, 37.293522, 17.760075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976202, 37.649860, 17.735327>,  <32.084217, 37.863663, 17.720478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976202, 37.649860, 17.735327>,  <31.796177, 37.293522, 17.760075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976202, 37.649860, 17.735327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124378, 0.006071, 0.992216,
		0.884292, -0.454255, -0.108070,
		0.450063, 0.890851, -0.061868,
		32.111221, 37.917114, 17.716766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279724, 37.273518, 18.234426>,  <31.796177, 37.293522, 17.760075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279724, 37.273518, 18.234426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238922, 37.669636, 18.196688>,  <32.214439, 37.907307, 18.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238922, 37.669636, 18.196688>,  <32.279724, 37.273518, 18.234426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238922, 37.669636, 18.196688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032248, 0.098082, 0.994656,
		0.994261, 0.098422, -0.041940,
		-0.102010, 0.990299, -0.094346,
		32.208321, 37.966724, 18.168385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648636, 37.515259, 18.743502>,  <32.279724, 37.273518, 18.234426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648636, 37.515259, 18.743502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441494, 37.847530, 18.661718>,  <32.317207, 38.046894, 18.612648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441494, 37.847530, 18.661718>,  <32.648636, 37.515259, 18.743502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441494, 37.847530, 18.661718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037548, 0.216698, 0.975516,
		0.854643, 0.512855, -0.081028,
		-0.517857, 0.830675, -0.204456,
		32.286137, 38.096733, 18.600382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938206, 38.003944, 19.161219>,  <32.648636, 37.515259, 18.743502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938206, 38.003944, 19.161219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570747, 38.124039, 19.058495>,  <32.350273, 38.196095, 18.996861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570747, 38.124039, 19.058495>,  <32.938206, 38.003944, 19.161219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570747, 38.124039, 19.058495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188928, 0.237051, 0.952949,
		0.346984, 0.923941, -0.161044,
		-0.918645, 0.300232, -0.256812,
		32.295155, 38.214108, 18.981451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754608, 38.589901, 19.486404>,  <32.938206, 38.003944, 19.161219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754608, 38.589901, 19.486404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381733, 38.495384, 19.376722>,  <32.158009, 38.438675, 19.310913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381733, 38.495384, 19.376722>,  <32.754608, 38.589901, 19.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381733, 38.495384, 19.376722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334908, 0.275626, 0.901036,
		-0.137332, 0.931770, -0.336072,
		-0.932189, -0.236294, -0.274205,
		32.102077, 38.424496, 19.294460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447357, 39.031101, 19.836330>,  <32.754608, 38.589901, 19.486404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447357, 39.031101, 19.836330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159538, 38.761265, 19.770380>,  <31.986847, 38.599365, 19.730810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159538, 38.761265, 19.770380>,  <32.447357, 39.031101, 19.836330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159538, 38.761265, 19.770380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179735, -0.048422, 0.982523,
		-0.670781, 0.736606, -0.086405,
		-0.719548, -0.674587, -0.164874,
		31.943674, 38.558887, 19.720917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840347, 39.154995, 20.270401>,  <32.447357, 39.031101, 19.836330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840347, 39.154995, 20.270401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811764, 38.761425, 20.204937>,  <31.794615, 38.525284, 20.165659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811764, 38.761425, 20.204937>,  <31.840347, 39.154995, 20.270401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811764, 38.761425, 20.204937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134781, -0.153050, 0.978984,
		-0.988296, 0.092013, -0.121678,
		-0.071457, -0.983925, -0.163661,
		31.790327, 38.466248, 20.155838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201813, 38.833282, 20.662626>,  <31.840347, 39.154995, 20.270401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201813, 38.833282, 20.662626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431776, 38.512520, 20.597599>,  <31.569754, 38.320065, 20.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431776, 38.512520, 20.597599>,  <31.201813, 38.833282, 20.662626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431776, 38.512520, 20.597599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318093, -0.402104, 0.858562,
		-0.753853, -0.441885, -0.486254,
		0.574910, -0.801904, -0.162567,
		31.604250, 38.271950, 20.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772518, 38.255806, 20.785357>,  <31.201813, 38.833282, 20.662626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772518, 38.255806, 20.785357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134073, 38.084717, 20.787769>,  <31.351007, 37.982063, 20.789217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134073, 38.084717, 20.787769>,  <30.772518, 38.255806, 20.785357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134073, 38.084717, 20.787769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234629, -0.483937, 0.843063,
		-0.357677, -0.763452, -0.537782,
		0.903890, -0.427723, 0.006035,
		31.405239, 37.956398, 20.789579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671719, 37.505619, 20.830711>,  <30.772518, 38.255806, 20.785357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671719, 37.505619, 20.830711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045555, 37.561386, 20.961615>,  <31.269857, 37.594849, 21.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045555, 37.561386, 20.961615>,  <30.671719, 37.505619, 20.830711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045555, 37.561386, 20.961615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200668, -0.552997, 0.808658,
		0.293717, -0.821436, -0.488849,
		0.934593, 0.139420, 0.327261,
		31.325933, 37.603210, 21.059793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897129, 36.883595, 21.085402>,  <30.671719, 37.505619, 20.830711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897129, 36.883595, 21.085402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143421, 37.148445, 21.256264>,  <31.291197, 37.307358, 21.358780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143421, 37.148445, 21.256264>,  <30.897129, 36.883595, 21.085402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143421, 37.148445, 21.256264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182081, -0.407870, 0.894700,
		0.766630, -0.628672, -0.130576,
		0.615731, 0.662129, 0.427155,
		31.328140, 37.347084, 21.384411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250292, 36.474369, 21.609474>,  <30.897129, 36.883595, 21.085402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250292, 36.474369, 21.609474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292913, 36.853313, 21.730246>,  <31.318487, 37.080681, 21.802708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292913, 36.853313, 21.730246>,  <31.250292, 36.474369, 21.609474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292913, 36.853313, 21.730246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089675, -0.293262, 0.951817,
		0.990255, -0.128495, 0.053707,
		0.106553, 0.947357, 0.301927,
		31.324879, 37.137520, 21.820824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654060, 36.431530, 22.207994>,  <31.250292, 36.474369, 21.609474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654060, 36.431530, 22.207994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491581, 36.796246, 22.232140>,  <31.394093, 37.015076, 22.246626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491581, 36.796246, 22.232140>,  <31.654060, 36.431530, 22.207994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491581, 36.796246, 22.232140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205235, -0.155400, 0.966297,
		0.890439, 0.380119, 0.250254,
		-0.406198, 0.911789, 0.060361,
		31.369722, 37.069782, 22.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069042, 36.905258, 22.834030>,  <31.654060, 36.431530, 22.207994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069042, 36.905258, 22.834030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699802, 37.048519, 22.778015>,  <31.478258, 37.134476, 22.744406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699802, 37.048519, 22.778015>,  <32.069042, 36.905258, 22.834030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699802, 37.048519, 22.778015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166234, -0.043259, 0.985137,
		0.346768, 0.932662, 0.099469,
		-0.923102, 0.358149, -0.140039,
		31.422873, 37.155964, 22.736004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859554, 37.267189, 23.397728>,  <32.069042, 36.905258, 22.834030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859554, 37.267189, 23.397728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502331, 37.202953, 23.229603>,  <31.287996, 37.164413, 23.128729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502331, 37.202953, 23.229603>,  <31.859554, 37.267189, 23.397728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502331, 37.202953, 23.229603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428679, 0.019887, 0.903238,
		-0.136689, 0.986822, -0.086600,
		-0.893057, -0.160587, -0.420312,
		31.234413, 37.154778, 23.103510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479618, 37.458019, 23.925146>,  <31.859554, 37.267189, 23.397728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479618, 37.458019, 23.925146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197798, 37.303318, 23.687145>,  <31.028706, 37.210499, 23.544344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197798, 37.303318, 23.687145>,  <31.479618, 37.458019, 23.925146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197798, 37.303318, 23.687145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630645, -0.043246, 0.774866,
		-0.325413, 0.921169, -0.213434,
		-0.704552, -0.386752, -0.595003,
		30.986431, 37.187294, 23.508644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874699, 37.869301, 23.893211>,  <31.479618, 37.458019, 23.925146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874699, 37.869301, 23.893211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753548, 37.503735, 23.785114>,  <30.680857, 37.284397, 23.720257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753548, 37.503735, 23.785114>,  <30.874699, 37.869301, 23.893211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753548, 37.503735, 23.785114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620065, -0.026365, 0.784107,
		-0.723729, 0.405056, -0.558700,
		-0.302877, -0.913912, -0.270242,
		30.662685, 37.229561, 23.704042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212942, 37.913788, 24.014099>,  <30.874699, 37.869301, 23.893211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212942, 37.913788, 24.014099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267036, 37.518272, 23.988785>,  <30.299494, 37.280964, 23.973597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267036, 37.518272, 23.988785>,  <30.212942, 37.913788, 24.014099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267036, 37.518272, 23.988785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666182, -0.138022, 0.732906,
		-0.733425, -0.056956, -0.677380,
		0.135236, -0.988790, -0.063286,
		30.307608, 37.221634, 23.969799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547819, 37.694405, 24.102638>,  <30.212942, 37.913788, 24.014099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547819, 37.694405, 24.102638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787294, 37.378742, 24.157482>,  <29.930979, 37.189342, 24.190390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787294, 37.378742, 24.157482>,  <29.547819, 37.694405, 24.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787294, 37.378742, 24.157482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574366, -0.303657, 0.760195,
		-0.558280, -0.533872, -0.635062,
		0.598688, -0.789160, 0.137112,
		29.966900, 37.141994, 24.198616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112213, 37.087734, 24.238953>,  <29.547819, 37.694405, 24.102638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112213, 37.087734, 24.238953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472551, 37.001076, 24.389444>,  <29.688753, 36.949081, 24.479738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472551, 37.001076, 24.389444>,  <29.112213, 37.087734, 24.238953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472551, 37.001076, 24.389444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433435, -0.498323, 0.750872,
		0.024811, -0.839488, -0.542812,
		0.900843, -0.216644, 0.376227,
		29.742804, 36.936081, 24.502312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234285, 36.299473, 24.243656>,  <29.112213, 37.087734, 24.238953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234285, 36.299473, 24.243656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454567, 36.481796, 24.523359>,  <29.586735, 36.591190, 24.691181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454567, 36.481796, 24.523359>,  <29.234285, 36.299473, 24.243656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454567, 36.481796, 24.523359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477312, -0.515288, 0.711795,
		0.684763, -0.725752, -0.066207,
		0.550703, 0.455809, 0.699260,
		29.619778, 36.618538, 24.733137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381910, 35.732151, 24.834333>,  <29.234285, 36.299473, 24.243656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381910, 35.732151, 24.834333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519829, 36.068542, 25.001127>,  <29.602579, 36.270378, 25.101204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519829, 36.068542, 25.001127>,  <29.381910, 35.732151, 24.834333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519829, 36.068542, 25.001127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197806, -0.369155, 0.908074,
		0.917600, -0.395580, 0.039067,
		0.344794, 0.840976, 0.416985,
		29.623266, 36.320835, 25.126223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967833, 35.543358, 25.288044>,  <29.381910, 35.732151, 24.834333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967833, 35.543358, 25.288044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829817, 35.893551, 25.423386>,  <29.747007, 36.103664, 25.504591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829817, 35.893551, 25.423386>,  <29.967833, 35.543358, 25.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829817, 35.893551, 25.423386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068233, -0.382937, 0.921251,
		0.936105, 0.294780, 0.191864,
		-0.345038, 0.875479, 0.338355,
		29.726305, 36.156197, 25.524893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419096, 35.717808, 25.838203>,  <29.967833, 35.543358, 25.288044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419096, 35.717808, 25.838203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085924, 35.929314, 25.903494>,  <29.886021, 36.056217, 25.942669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085924, 35.929314, 25.903494>,  <30.419096, 35.717808, 25.838203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085924, 35.929314, 25.903494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045841, -0.228020, 0.972577,
		0.551479, 0.817569, 0.165685,
		-0.832928, 0.528761, 0.163227,
		29.836046, 36.087940, 25.952461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516209, 36.033493, 26.485962>,  <30.419096, 35.717808, 25.838203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516209, 36.033493, 26.485962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119192, 36.039577, 26.437576>,  <29.880983, 36.043228, 26.408545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119192, 36.039577, 26.437576>,  <30.516209, 36.033493, 26.485962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119192, 36.039577, 26.437576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120589, -0.268525, 0.955695,
		-0.017943, 0.963152, 0.268356,
		-0.992540, 0.015212, -0.120964,
		29.821430, 36.044140, 26.401287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197418, 36.549755, 26.959593>,  <30.516209, 36.033493, 26.485962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197418, 36.549755, 26.959593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880335, 36.324406, 26.866446>,  <29.690084, 36.189198, 26.810556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880335, 36.324406, 26.866446>,  <30.197418, 36.549755, 26.959593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880335, 36.324406, 26.866446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124063, -0.224915, 0.966448,
		-0.596844, 0.795001, 0.108399,
		-0.792708, -0.563370, -0.232869,
		29.642523, 36.155396, 26.796585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736689, 36.838379, 27.254967>,  <30.197418, 36.549755, 26.959593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736689, 36.838379, 27.254967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591400, 36.467598, 27.217386>,  <29.504227, 36.245129, 27.194838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591400, 36.467598, 27.217386>,  <29.736689, 36.838379, 27.254967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591400, 36.467598, 27.217386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063263, -0.076068, 0.995094,
		-0.929553, 0.367381, -0.031013,
		-0.363220, -0.926954, -0.093951,
		29.482433, 36.189510, 27.189201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125401, 36.864502, 27.593946>,  <29.736689, 36.838379, 27.254967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125401, 36.864502, 27.593946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204208, 36.472832, 27.574337>,  <29.251493, 36.237831, 27.562572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204208, 36.472832, 27.574337>,  <29.125401, 36.864502, 27.593946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204208, 36.472832, 27.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125474, -0.074774, 0.989275,
		-0.972337, -0.188756, -0.137592,
		0.197020, -0.979173, -0.049022,
		29.263315, 36.179081, 27.559631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688652, 36.654736, 28.163109>,  <29.125401, 36.864502, 27.593946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688652, 36.654736, 28.163109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946814, 36.360081, 28.082296>,  <29.101709, 36.183289, 28.033810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946814, 36.360081, 28.082296>,  <28.688652, 36.654736, 28.163109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946814, 36.360081, 28.082296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092017, -0.337546, 0.936801,
		-0.758280, -0.586023, -0.285636,
		0.645402, -0.736641, -0.202030,
		29.140434, 36.139088, 28.021687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492071, 36.063690, 28.465528>,  <28.688652, 36.654736, 28.163109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492071, 36.063690, 28.465528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883650, 35.994736, 28.421818>,  <29.118597, 35.953362, 28.395592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883650, 35.994736, 28.421818>,  <28.492071, 36.063690, 28.465528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883650, 35.994736, 28.421818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044514, -0.342183, 0.938578,
		-0.199192, -0.923684, -0.327306,
		0.978949, -0.172388, -0.109278,
		29.177334, 35.943020, 28.389034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518637, 35.443474, 28.713734>,  <28.492071, 36.063690, 28.465528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518637, 35.443474, 28.713734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903259, 35.553284, 28.716505>,  <29.134033, 35.619167, 28.718168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903259, 35.553284, 28.716505>,  <28.518637, 35.443474, 28.713734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903259, 35.553284, 28.716505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141618, -0.517341, 0.843981,
		0.235275, -0.810553, -0.536329,
		0.961556, 0.274522, 0.006929,
		29.191727, 35.635639, 28.718584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004450, 34.812069, 28.626562>,  <28.518637, 35.443474, 28.713734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004450, 34.812069, 28.626562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199255, 35.111874, 28.805918>,  <29.316137, 35.291756, 28.913532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199255, 35.111874, 28.805918>,  <29.004450, 34.812069, 28.626562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199255, 35.111874, 28.805918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155068, -0.579434, 0.800131,
		0.859519, -0.320144, -0.398417,
		0.487013, 0.749510, 0.448390,
		29.345360, 35.336727, 28.940435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567766, 34.473991, 29.054483>,  <29.004450, 34.812069, 28.626562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567766, 34.473991, 29.054483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550108, 34.844997, 29.202948>,  <29.539513, 35.067600, 29.292027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550108, 34.844997, 29.202948>,  <29.567766, 34.473991, 29.054483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550108, 34.844997, 29.202948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150932, -0.361067, 0.920245,
		0.987558, 0.096646, -0.124053,
		-0.044146, 0.927519, 0.371161,
		29.536863, 35.123253, 29.314297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041067, 34.369194, 29.566515>,  <29.567766, 34.473991, 29.054483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041067, 34.369194, 29.566515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845394, 34.701653, 29.672260>,  <29.727989, 34.901127, 29.735708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845394, 34.701653, 29.672260>,  <30.041067, 34.369194, 29.566515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845394, 34.701653, 29.672260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146835, -0.220297, 0.964318,
		0.859732, 0.510546, -0.014276,
		-0.489184, 0.831151, 0.264363,
		29.698639, 34.950996, 29.751570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511450, 34.763039, 30.094620>,  <30.041067, 34.369194, 29.566515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511450, 34.763039, 30.094620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132826, 34.888962, 30.122690>,  <29.905651, 34.964516, 30.139532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132826, 34.888962, 30.122690>,  <30.511450, 34.763039, 30.094620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132826, 34.888962, 30.122690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023050, -0.283047, 0.958829,
		0.321709, 0.905970, 0.275176,
		-0.946558, 0.314807, 0.070176,
		29.848858, 34.983402, 30.143744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770153, 35.305943, 30.430773>,  <30.511450, 34.763039, 30.094620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770153, 35.305943, 30.430773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047647, 35.027580, 30.505014>,  <31.214144, 34.860565, 30.549559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047647, 35.027580, 30.505014>,  <30.770153, 35.305943, 30.430773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047647, 35.027580, 30.505014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528731, 0.317096, -0.787333,
		0.489053, 0.644337, 0.587927,
		0.693737, -0.695903, 0.185604,
		31.255768, 34.818810, 30.560696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384058, 35.670448, 30.422958>,  <30.770153, 35.305943, 30.430773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384058, 35.670448, 30.422958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493229, 35.288132, 30.379171>,  <31.558731, 35.058743, 30.352900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493229, 35.288132, 30.379171>,  <31.384058, 35.670448, 30.422958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493229, 35.288132, 30.379171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668601, 0.270262, -0.692771,
		0.691726, 0.115887, 0.712801,
		0.272926, -0.955787, -0.109465,
		31.575108, 35.001396, 30.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140179, 35.571068, 30.277012>,  <31.384058, 35.670448, 30.422958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140179, 35.571068, 30.277012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981874, 35.231533, 30.136812>,  <31.886892, 35.027813, 30.052692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981874, 35.231533, 30.136812>,  <32.140179, 35.571068, 30.277012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981874, 35.231533, 30.136812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521927, 0.106136, -0.846362,
		0.755625, -0.517887, 0.401028,
		-0.395756, -0.848840, -0.350498,
		31.863148, 34.976883, 30.031662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715427, 35.132477, 30.108967>,  <32.140179, 35.571068, 30.277012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715427, 35.132477, 30.108967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395943, 34.993870, 29.912201>,  <32.204250, 34.910706, 29.794142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395943, 34.993870, 29.912201>,  <32.715427, 35.132477, 30.108967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395943, 34.993870, 29.912201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526089, -0.005383, -0.850413,
		0.292034, -0.938028, 0.186598,
		-0.798716, -0.346517, -0.491914,
		32.156326, 34.889915, 29.764627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006683, 34.751648, 29.597647>,  <32.715427, 35.132477, 30.108967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006683, 34.751648, 29.597647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626842, 34.772057, 29.473940>,  <32.398937, 34.784302, 29.399715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626842, 34.772057, 29.473940>,  <33.006683, 34.751648, 29.597647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626842, 34.772057, 29.473940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311470, 0.042891, -0.949288,
		-0.035173, -0.997776, -0.056622,
		-0.949605, 0.051025, -0.309268,
		32.341961, 34.787365, 29.381159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916988, 34.222626, 29.058208>,  <33.006683, 34.751648, 29.597647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916988, 34.222626, 29.058208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608578, 34.474445, 29.019863>,  <32.423531, 34.625538, 28.996855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608578, 34.474445, 29.019863>,  <32.916988, 34.222626, 29.058208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608578, 34.474445, 29.019863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085321, -0.047056, -0.995242,
		-0.631060, -0.775538, -0.017432,
		-0.771028, 0.629545, -0.095865,
		32.377270, 34.663307, 28.991104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446461, 33.905617, 28.560051>,  <32.916988, 34.222626, 29.058208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446461, 33.905617, 28.560051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368473, 34.297565, 28.577200>,  <32.321678, 34.532734, 28.587488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368473, 34.297565, 28.577200>,  <32.446461, 33.905617, 28.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368473, 34.297565, 28.577200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043632, 0.052331, -0.997676,
		-0.979838, -0.192648, -0.052957,
		-0.194971, 0.979871, 0.042871,
		32.309982, 34.591526, 28.590061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029011, 34.041668, 28.046515>,  <32.446461, 33.905617, 28.560051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029011, 34.041668, 28.046515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153545, 34.416142, 28.111790>,  <32.228264, 34.640827, 28.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153545, 34.416142, 28.111790>,  <32.029011, 34.041668, 28.046515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153545, 34.416142, 28.111790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132842, 0.127161, -0.982946,
		-0.940970, 0.327701, -0.084775,
		0.311332, 0.936185, 0.163187,
		32.246944, 34.696999, 28.160746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685673, 34.389271, 27.571138>,  <32.029011, 34.041668, 28.046515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685673, 34.389271, 27.571138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968601, 34.657906, 27.659376>,  <32.138359, 34.819088, 27.712318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968601, 34.657906, 27.659376>,  <31.685673, 34.389271, 27.571138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968601, 34.657906, 27.659376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159429, 0.152462, -0.975366,
		-0.688679, 0.725066, 0.000769,
		0.707322, 0.671591, 0.220594,
		32.180798, 34.859383, 27.725554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649508, 34.961681, 27.113462>,  <31.685673, 34.389271, 27.571138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649508, 34.961681, 27.113462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018627, 35.040401, 27.245953>,  <32.240101, 35.087635, 27.325447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018627, 35.040401, 27.245953>,  <31.649508, 34.961681, 27.113462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018627, 35.040401, 27.245953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286666, 0.223678, -0.931553,
		-0.257419, 0.954588, 0.149994,
		0.922799, 0.196801, 0.331226,
		32.295467, 35.099442, 27.345320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839300, 35.735439, 26.812313>,  <31.649508, 34.961681, 27.113462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839300, 35.735439, 26.812313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172707, 35.540726, 26.916840>,  <32.372749, 35.423897, 26.979555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172707, 35.540726, 26.916840>,  <31.839300, 35.735439, 26.812313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172707, 35.540726, 26.916840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483573, 0.414020, -0.771196,
		0.267217, 0.769172, 0.580490,
		0.833518, -0.486787, 0.261318,
		32.422760, 35.394691, 26.995235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433159, 36.169395, 26.684164>,  <31.839300, 35.735439, 26.812313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433159, 36.169395, 26.684164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570824, 35.794605, 26.660078>,  <32.653423, 35.569729, 26.645626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570824, 35.794605, 26.660078>,  <32.433159, 36.169395, 26.684164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570824, 35.794605, 26.660078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615988, 0.273728, -0.738669,
		0.708598, 0.217132, 0.671374,
		0.344163, -0.936977, -0.060213,
		32.674072, 35.513512, 26.642014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063229, 36.259274, 26.604332>,  <32.433159, 36.169395, 26.684164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063229, 36.259274, 26.604332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983601, 35.903622, 26.439491>,  <32.935822, 35.690231, 26.340588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983601, 35.903622, 26.439491>,  <33.063229, 36.259274, 26.604332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983601, 35.903622, 26.439491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514940, 0.262879, -0.815924,
		0.833791, -0.374635, 0.405514,
		-0.199072, -0.889125, -0.412100,
		32.923878, 35.636883, 26.315861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610920, 35.998859, 26.346563>,  <33.063229, 36.259274, 26.604332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610920, 35.998859, 26.346563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327160, 35.817211, 26.130966>,  <33.156902, 35.708221, 26.001608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327160, 35.817211, 26.130966>,  <33.610920, 35.998859, 26.346563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327160, 35.817211, 26.130966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511044, 0.195216, -0.837093,
		0.485365, -0.869288, 0.093590,
		-0.709404, -0.454125, -0.538995,
		33.114338, 35.680973, 25.969267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935558, 35.499611, 25.889273>,  <33.610920, 35.998859, 26.346563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935558, 35.499611, 25.889273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580284, 35.560116, 25.715725>,  <33.367119, 35.596416, 25.611597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580284, 35.560116, 25.715725>,  <33.935558, 35.499611, 25.889273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580284, 35.560116, 25.715725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421505, -0.107658, -0.900413,
		-0.182908, -0.982614, 0.031862,
		-0.888188, 0.151263, -0.433868,
		33.313828, 35.605492, 25.585564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934174, 35.028831, 25.411728>,  <33.935558, 35.499611, 25.889273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934174, 35.028831, 25.411728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648056, 35.289742, 25.311420>,  <33.476383, 35.446289, 25.251236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648056, 35.289742, 25.311420>,  <33.934174, 35.028831, 25.411728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648056, 35.289742, 25.311420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383515, 0.066435, -0.921142,
		-0.584180, -0.755064, -0.297679,
		-0.715297, 0.652277, -0.250769,
		33.433468, 35.485424, 25.236189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764217, 34.948326, 24.734634>,  <33.934174, 35.028831, 25.411728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764217, 34.948326, 24.734634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596134, 35.308765, 24.777412>,  <33.495285, 35.525028, 24.803080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596134, 35.308765, 24.777412>,  <33.764217, 34.948326, 24.734634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596134, 35.308765, 24.777412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206240, 0.209610, -0.955787,
		-0.883678, -0.379576, -0.273924,
		-0.420211, 0.901102, 0.106944,
		33.470070, 35.579098, 24.809496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168400, 35.039612, 24.202465>,  <33.764217, 34.948326, 24.734634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168400, 35.039612, 24.202465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319347, 35.395744, 24.304367>,  <33.409916, 35.609425, 24.365509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319347, 35.395744, 24.304367>,  <33.168400, 35.039612, 24.202465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319347, 35.395744, 24.304367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150645, 0.212411, -0.965499,
		-0.913727, 0.402728, -0.053967,
		0.377370, 0.890332, 0.254755,
		33.432560, 35.662846, 24.380793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973175, 35.513039, 23.689869>,  <33.168400, 35.039612, 24.202465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973175, 35.513039, 23.689869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257027, 35.721260, 23.879797>,  <33.427338, 35.846191, 23.993753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257027, 35.721260, 23.879797>,  <32.973175, 35.513039, 23.689869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257027, 35.721260, 23.879797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333866, 0.345014, -0.877210,
		-0.620454, 0.781019, 0.071036,
		0.709626, 0.520552, 0.474821,
		33.469913, 35.877426, 24.022243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890839, 36.137421, 23.329178>,  <32.973175, 35.513039, 23.689869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890839, 36.137421, 23.329178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244923, 36.144966, 23.515104>,  <33.457371, 36.149494, 23.626659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244923, 36.144966, 23.515104>,  <32.890839, 36.137421, 23.329178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244923, 36.144966, 23.515104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415543, 0.417101, -0.808301,
		-0.209122, 0.908664, 0.361382,
		0.885207, 0.018864, 0.464814,
		33.510487, 36.150627, 23.654549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053215, 36.836391, 23.456360>,  <32.890839, 36.137421, 23.329178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053215, 36.836391, 23.456360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391418, 36.624290, 23.431248>,  <33.594341, 36.497028, 23.416182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391418, 36.624290, 23.431248>,  <33.053215, 36.836391, 23.456360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391418, 36.624290, 23.431248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218564, 0.450964, -0.865368,
		0.487176, 0.717957, 0.497189,
		0.845511, -0.530254, -0.062779,
		33.645073, 36.465214, 23.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586823, 37.374760, 23.234678>,  <33.053215, 36.836391, 23.456360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586823, 37.374760, 23.234678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736721, 37.011150, 23.161749>,  <33.826660, 36.792984, 23.117992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736721, 37.011150, 23.161749>,  <33.586823, 37.374760, 23.234678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736721, 37.011150, 23.161749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092084, 0.232174, -0.968306,
		0.922542, 0.346083, 0.170714,
		0.374749, -0.909023, -0.182321,
		33.849144, 36.738445, 23.107052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158176, 37.446541, 22.746983>,  <33.586823, 37.374760, 23.234678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158176, 37.446541, 22.746983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027008, 37.071194, 22.703300>,  <33.948307, 36.845985, 22.677092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027008, 37.071194, 22.703300>,  <34.158176, 37.446541, 22.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027008, 37.071194, 22.703300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148958, 0.062794, -0.986847,
		0.932887, -0.339876, 0.119187,
		-0.327922, -0.938371, -0.109207,
		33.928631, 36.789680, 22.670538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583572, 37.282040, 22.129620>,  <34.158176, 37.446541, 22.746983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583572, 37.282040, 22.129620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295376, 37.008301, 22.174431>,  <34.122456, 36.844055, 22.201319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295376, 37.008301, 22.174431>,  <34.583572, 37.282040, 22.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295376, 37.008301, 22.174431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104454, -0.052608, -0.993137,
		0.685548, -0.727253, -0.033579,
		-0.720495, -0.684351, 0.112029,
		34.079227, 36.802994, 22.208040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845158, 36.621975, 21.863537>,  <34.583572, 37.282040, 22.129620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845158, 36.621975, 21.863537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446201, 36.593483, 21.858770>,  <34.206829, 36.576385, 21.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446201, 36.593483, 21.858770>,  <34.845158, 36.621975, 21.863537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446201, 36.593483, 21.858770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024403, -0.177085, -0.983893,
		0.067977, -0.981614, 0.178361,
		-0.997388, -0.071235, -0.011916,
		34.146984, 36.572113, 21.855196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708630, 36.095177, 21.401724>,  <34.845158, 36.621975, 21.863537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708630, 36.095177, 21.401724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357277, 36.284595, 21.427628>,  <34.146465, 36.398247, 21.443171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357277, 36.284595, 21.427628>,  <34.708630, 36.095177, 21.401724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357277, 36.284595, 21.427628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126600, -0.099866, -0.986914,
		-0.460882, -0.875089, 0.147671,
		-0.878385, 0.473546, 0.064760,
		34.093761, 36.426659, 21.447056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072941, 35.639832, 21.354805>,  <34.708630, 36.095177, 21.401724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072941, 35.639832, 21.354805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934467, 35.993362, 21.228941>,  <33.851383, 36.205479, 21.153421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934467, 35.993362, 21.228941>,  <34.072941, 35.639832, 21.354805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934467, 35.993362, 21.228941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233937, -0.406128, -0.883365,
		-0.908533, -0.232193, 0.347354,
		-0.346181, 0.883825, -0.314662,
		33.830612, 36.258511, 21.134542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585262, 35.469952, 20.875103>,  <34.072941, 35.639832, 21.354805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585262, 35.469952, 20.875103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628830, 35.860886, 20.802496>,  <33.654968, 36.095448, 20.758932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628830, 35.860886, 20.802496>,  <33.585262, 35.469952, 20.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628830, 35.860886, 20.802496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398067, -0.124443, -0.908877,
		-0.910868, 0.171249, 0.375492,
		0.108917, 0.977337, -0.181519,
		33.661507, 36.154087, 20.748041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902225, 35.665833, 20.723015>,  <33.585262, 35.469952, 20.875103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902225, 35.665833, 20.723015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170841, 35.915493, 20.563278>,  <33.332008, 36.065289, 20.467436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170841, 35.915493, 20.563278>,  <32.902225, 35.665833, 20.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170841, 35.915493, 20.563278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342431, -0.216524, -0.914253,
		-0.657101, 0.750700, 0.068326,
		0.671535, 0.624153, -0.399341,
		33.372303, 36.102737, 20.443476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547710, 35.910362, 20.134211>,  <32.902225, 35.665833, 20.723015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547710, 35.910362, 20.134211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935905, 35.991562, 20.082148>,  <33.168823, 36.040283, 20.050909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935905, 35.991562, 20.082148>,  <32.547710, 35.910362, 20.134211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935905, 35.991562, 20.082148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125281, -0.036746, -0.991441,
		-0.206046, 0.978489, -0.010230,
		0.970490, 0.203001, -0.130157,
		33.227051, 36.052464, 20.043100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505455, 36.385548, 19.670973>,  <32.547710, 35.910362, 20.134211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505455, 36.385548, 19.670973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871456, 36.226799, 19.641953>,  <33.091057, 36.131550, 19.624540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871456, 36.226799, 19.641953>,  <32.505455, 36.385548, 19.670973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871456, 36.226799, 19.641953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094121, -0.035116, -0.994941,
		0.392318, 0.917201, -0.069486,
		0.915002, -0.396873, -0.072551,
		33.145958, 36.107738, 19.620188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718456, 36.679619, 19.122934>,  <32.505455, 36.385548, 19.670973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718456, 36.679619, 19.122934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977787, 36.377453, 19.160929>,  <33.133385, 36.196156, 19.183725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977787, 36.377453, 19.160929>,  <32.718456, 36.679619, 19.122934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977787, 36.377453, 19.160929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020788, -0.107149, -0.994026,
		0.761076, 0.646430, -0.053764,
		0.648329, -0.755412, 0.094987,
		33.172287, 36.150829, 19.189425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242512, 36.797550, 18.585476>,  <32.718456, 36.679619, 19.122934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242512, 36.797550, 18.585476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232738, 36.408611, 18.678373>,  <33.226875, 36.175247, 18.734112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232738, 36.408611, 18.678373>,  <33.242512, 36.797550, 18.585476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232738, 36.408611, 18.678373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036247, -0.231297, -0.972208,
		0.999044, -0.032168, -0.029595,
		-0.024429, -0.972351, 0.232242,
		33.225410, 36.116905, 18.748047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637268, 36.527946, 18.018522>,  <33.242512, 36.797550, 18.585476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637268, 36.527946, 18.018522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455513, 36.219234, 18.196459>,  <33.346458, 36.034008, 18.303221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455513, 36.219234, 18.196459>,  <33.637268, 36.527946, 18.018522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455513, 36.219234, 18.196459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087243, -0.458412, -0.884447,
		0.886522, -0.440691, 0.140964,
		-0.454388, -0.771783, 0.444840,
		33.319195, 35.987701, 18.329910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995773, 35.956276, 17.802626>,  <33.637268, 36.527946, 18.018522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995773, 35.956276, 17.802626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626747, 35.841724, 17.906057>,  <33.405331, 35.772995, 17.968117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626747, 35.841724, 17.906057>,  <33.995773, 35.956276, 17.802626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626747, 35.841724, 17.906057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176339, -0.283137, -0.942729,
		0.343192, -0.915325, 0.210712,
		-0.922564, -0.286380, 0.258578,
		33.349979, 35.755810, 17.983631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954773, 35.375500, 17.390476>,  <33.995773, 35.956276, 17.802626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954773, 35.375500, 17.390476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574963, 35.440842, 17.497601>,  <33.347076, 35.480045, 17.561876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574963, 35.440842, 17.497601>,  <33.954773, 35.375500, 17.390476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574963, 35.440842, 17.497601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302633, -0.252235, -0.919125,
		-0.082592, -0.953778, 0.288939,
		-0.949522, 0.163354, 0.267812,
		33.290108, 35.489849, 17.577944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628532, 34.771378, 17.232500>,  <33.954773, 35.375500, 17.390476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628532, 34.771378, 17.232500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345230, 35.053383, 17.247112>,  <33.175251, 35.222588, 17.255878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345230, 35.053383, 17.247112>,  <33.628532, 34.771378, 17.232500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345230, 35.053383, 17.247112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241907, -0.193757, -0.950757,
		-0.663218, -0.682213, 0.307777,
		-0.708253, 0.705013, 0.036529,
		33.132755, 35.264885, 17.258072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935207, 34.497200, 16.920443>,  <33.628532, 34.771378, 17.232500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935207, 34.497200, 16.920443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942589, 34.896332, 16.895130>,  <32.947018, 35.135811, 16.879942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942589, 34.896332, 16.895130>,  <32.935207, 34.497200, 16.920443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942589, 34.896332, 16.895130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307029, -0.054577, -0.950134,
		-0.951521, 0.036964, 0.305354,
		0.018456, 0.997825, -0.063281,
		32.948124, 35.195679, 16.876146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022152, 34.490513, 16.198055>,  <32.935207, 34.497200, 16.920443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022152, 34.490513, 16.198055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067089, 34.095478, 16.154158>,  <33.094051, 33.858456, 16.127819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067089, 34.095478, 16.154158>,  <33.022152, 34.490513, 16.198055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067089, 34.095478, 16.154158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210726, -0.131611, 0.968645,
		-0.971068, -0.085698, -0.222897,
		0.112347, -0.987590, -0.109745,
		33.100792, 33.799202, 16.121235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392834, 34.262112, 16.442799>,  <33.022152, 34.490513, 16.198055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392834, 34.262112, 16.442799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673481, 33.978340, 16.469467>,  <32.841869, 33.808079, 16.485468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673481, 33.978340, 16.469467>,  <32.392834, 34.262112, 16.442799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673481, 33.978340, 16.469467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332099, -0.242789, 0.911462,
		-0.630428, -0.661641, -0.405945,
		0.701620, -0.709425, 0.066669,
		32.883968, 33.765514, 16.489468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013100, 33.800079, 16.754272>,  <32.392834, 34.262112, 16.442799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013100, 33.800079, 16.754272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388218, 33.663998, 16.781994>,  <32.613289, 33.582348, 16.798626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388218, 33.663998, 16.781994>,  <32.013100, 33.800079, 16.754272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388218, 33.663998, 16.781994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183249, -0.315470, 0.931074,
		-0.294892, -0.885856, -0.358188,
		0.937795, -0.340204, 0.069303,
		32.669556, 33.561935, 16.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016243, 33.066574, 16.995178>,  <32.013100, 33.800079, 16.754272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016243, 33.066574, 16.995178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381844, 33.201141, 17.085882>,  <32.601204, 33.281883, 17.140305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381844, 33.201141, 17.085882>,  <32.016243, 33.066574, 16.995178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381844, 33.201141, 17.085882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096841, -0.361856, 0.927191,
		0.393980, -0.869415, -0.298158,
		0.914003, 0.336420, 0.226759,
		32.656044, 33.302067, 17.153910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349190, 32.500942, 17.381598>,  <32.016243, 33.066574, 16.995178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349190, 32.500942, 17.381598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560143, 32.829365, 17.468988>,  <32.686714, 33.026417, 17.521423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560143, 32.829365, 17.468988>,  <32.349190, 32.500942, 17.381598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560143, 32.829365, 17.468988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081725, -0.304975, 0.948847,
		0.845688, -0.482552, -0.227939,
		0.527384, 0.821057, 0.218477,
		32.718357, 33.075684, 17.534531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013477, 32.260773, 17.805693>,  <32.349190, 32.500942, 17.381598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013477, 32.260773, 17.805693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930962, 32.630795, 17.933266>,  <32.881454, 32.852806, 18.009809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930962, 32.630795, 17.933266>,  <33.013477, 32.260773, 17.805693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930962, 32.630795, 17.933266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096099, -0.305213, 0.947423,
		0.973761, 0.226090, -0.025935,
		-0.206287, 0.925056, 0.318932,
		32.869076, 32.908310, 18.028946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344223, 32.288498, 18.497570>,  <33.013477, 32.260773, 17.805693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344223, 32.288498, 18.497570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118549, 32.618732, 18.493343>,  <32.983147, 32.816872, 18.490808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118549, 32.618732, 18.493343>,  <33.344223, 32.288498, 18.497570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118549, 32.618732, 18.493343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065908, 0.057788, 0.996151,
		0.823017, 0.561312, -0.087015,
		-0.564180, 0.825584, -0.010565,
		32.949295, 32.866409, 18.490173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674133, 32.696747, 19.103542>,  <33.344223, 32.288498, 18.497570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674133, 32.696747, 19.103542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314686, 32.854427, 19.026512>,  <33.099018, 32.949036, 18.980293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314686, 32.854427, 19.026512>,  <33.674133, 32.696747, 19.103542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314686, 32.854427, 19.026512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223243, -0.032981, 0.974205,
		0.377682, 0.918432, 0.117640,
		-0.898621, 0.394202, -0.192578,
		33.045101, 32.972687, 18.968739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629333, 33.336575, 19.502792>,  <33.674133, 32.696747, 19.103542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629333, 33.336575, 19.502792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255562, 33.223419, 19.416239>,  <33.031300, 33.155525, 19.364307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255562, 33.223419, 19.416239>,  <33.629333, 33.336575, 19.502792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255562, 33.223419, 19.416239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206528, -0.064587, 0.976307,
		-0.290158, 0.956977, 0.001928,
		-0.934427, -0.282885, -0.216383,
		32.975235, 33.138554, 19.351324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207218, 33.804432, 19.997532>,  <33.629333, 33.336575, 19.502792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207218, 33.804432, 19.997532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980431, 33.496834, 19.879421>,  <32.844357, 33.312275, 19.808554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980431, 33.496834, 19.879421>,  <33.207218, 33.804432, 19.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980431, 33.496834, 19.879421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376552, -0.076864, 0.923201,
		-0.732634, 0.634616, -0.245987,
		-0.566971, -0.768996, -0.295279,
		32.810341, 33.266136, 19.790838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585209, 33.931702, 20.284233>,  <33.207218, 33.804432, 19.997532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585209, 33.931702, 20.284233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567154, 33.543526, 20.189400>,  <32.556320, 33.310619, 20.132500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567154, 33.543526, 20.189400>,  <32.585209, 33.931702, 20.284233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567154, 33.543526, 20.189400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283412, -0.215135, 0.934556,
		-0.957936, 0.109373, -0.265324,
		-0.045134, -0.970440, -0.237083,
		32.553616, 33.252392, 20.118275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990198, 33.688183, 20.407902>,  <32.585209, 33.931702, 20.284233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990198, 33.688183, 20.407902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223408, 33.363781, 20.427288>,  <32.363335, 33.169140, 20.438919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223408, 33.363781, 20.427288>,  <31.990198, 33.688183, 20.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223408, 33.363781, 20.427288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385827, -0.223882, 0.894994,
		-0.714997, -0.540502, -0.443437,
		0.583023, -0.811008, 0.048465,
		32.398315, 33.120480, 20.441828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594563, 33.267075, 20.779999>,  <31.990198, 33.688183, 20.407902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594563, 33.267075, 20.779999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962910, 33.111557, 20.791637>,  <32.183918, 33.018246, 20.798620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962910, 33.111557, 20.791637>,  <31.594563, 33.267075, 20.779999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962910, 33.111557, 20.791637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043503, -0.028306, 0.998652,
		-0.387443, -0.920891, -0.042980,
		0.920867, -0.388791, 0.029095,
		32.239170, 32.994919, 20.800365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649364, 32.604664, 21.190340>,  <31.594563, 33.267075, 20.779999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649364, 32.604664, 21.190340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019356, 32.756523, 21.197140>,  <32.241348, 32.847637, 21.201220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019356, 32.756523, 21.197140>,  <31.649364, 32.604664, 21.190340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019356, 32.756523, 21.197140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020445, -0.094375, 0.995327,
		0.379475, -0.920306, -0.095057,
		0.924976, 0.379646, 0.016997,
		32.296848, 32.870415, 21.202238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017632, 32.084515, 21.596012>,  <31.649364, 32.604664, 21.190340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017632, 32.084515, 21.596012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230370, 32.423225, 21.591648>,  <32.358013, 32.626450, 21.589029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230370, 32.423225, 21.591648>,  <32.017632, 32.084515, 21.596012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230370, 32.423225, 21.591648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211887, -0.120587, 0.969826,
		0.819906, -0.518107, -0.243554,
		0.531843, 0.846772, -0.010910,
		32.389923, 32.677258, 21.588375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648006, 31.940662, 22.011877>,  <32.017632, 32.084515, 21.596012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648006, 31.940662, 22.011877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630413, 32.339710, 21.990641>,  <32.619858, 32.579140, 21.977900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630413, 32.339710, 21.990641>,  <32.648006, 31.940662, 22.011877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630413, 32.339710, 21.990641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016559, 0.053863, 0.998411,
		0.998895, 0.043032, -0.018889,
		-0.043981, 0.997621, -0.053091,
		32.617218, 32.638996, 21.974714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222015, 32.191586, 22.464520>,  <32.648006, 31.940662, 22.011877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222015, 32.191586, 22.464520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948833, 32.480556, 22.421299>,  <32.784924, 32.653938, 22.395367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948833, 32.480556, 22.421299>,  <33.222015, 32.191586, 22.464520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948833, 32.480556, 22.421299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080961, 0.221873, 0.971709,
		0.725963, 0.654882, -0.210016,
		-0.682952, 0.722428, -0.108052,
		32.743946, 32.697285, 22.388884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482491, 32.749714, 23.011311>,  <33.222015, 32.191586, 22.464520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482491, 32.749714, 23.011311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102398, 32.832592, 22.918240>,  <32.874344, 32.882320, 22.862398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102398, 32.832592, 22.918240>,  <33.482491, 32.749714, 23.011311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102398, 32.832592, 22.918240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184464, 0.227698, 0.956100,
		0.251079, 0.951433, -0.178145,
		-0.950228, 0.207195, -0.232675,
		32.817329, 32.894749, 22.848436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332321, 33.311554, 23.404562>,  <33.482491, 32.749714, 23.011311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332321, 33.311554, 23.404562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962959, 33.210121, 23.289309>,  <32.741341, 33.149261, 23.220158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962959, 33.210121, 23.289309>,  <33.332321, 33.311554, 23.404562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962959, 33.210121, 23.289309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334277, 0.162388, 0.928380,
		-0.188629, 0.953587, -0.234716,
		-0.923406, -0.253580, -0.288131,
		32.685936, 33.134048, 23.202869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977100, 33.797493, 23.680319>,  <33.332321, 33.311554, 23.404562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977100, 33.797493, 23.680319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740990, 33.480110, 23.621000>,  <32.599323, 33.289680, 23.585409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740990, 33.480110, 23.621000>,  <32.977100, 33.797493, 23.680319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740990, 33.480110, 23.621000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214229, -0.023134, 0.976509,
		-0.778252, 0.608182, -0.156326,
		-0.590279, -0.793460, -0.148294,
		32.563908, 33.242073, 23.576511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397655, 34.050838, 24.014408>,  <32.977100, 33.797493, 23.680319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397655, 34.050838, 24.014408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391376, 33.651093, 24.001665>,  <32.387608, 33.411243, 23.994019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391376, 33.651093, 24.001665>,  <32.397655, 34.050838, 24.014408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391376, 33.651093, 24.001665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058494, -0.030890, 0.997810,
		-0.998164, 0.017525, -0.057972,
		-0.015696, -0.999369, -0.031859,
		32.386669, 33.351280, 23.992107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933439, 33.896435, 24.367714>,  <32.397655, 34.050838, 24.014408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933439, 33.896435, 24.367714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142059, 33.555149, 24.369169>,  <32.267231, 33.350380, 24.370043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142059, 33.555149, 24.369169>,  <31.933439, 33.896435, 24.367714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142059, 33.555149, 24.369169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038293, 0.027665, 0.998884,
		-0.852360, -0.520830, 0.047101,
		0.521551, -0.853212, 0.003637,
		32.298523, 33.299187, 24.370260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724741, 33.641003, 24.946569>,  <31.933439, 33.896435, 24.367714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724741, 33.641003, 24.946569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066257, 33.449890, 24.863852>,  <32.271168, 33.335224, 24.814220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066257, 33.449890, 24.863852>,  <31.724741, 33.641003, 24.946569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066257, 33.449890, 24.863852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230173, -0.009857, 0.973100,
		-0.466966, -0.878424, 0.101556,
		0.853793, -0.477780, -0.206793,
		32.322395, 33.306557, 24.801813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757135, 33.095947, 25.514135>,  <31.724741, 33.641003, 24.946569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757135, 33.095947, 25.514135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126896, 33.116978, 25.363022>,  <32.348751, 33.129597, 25.272354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126896, 33.116978, 25.363022>,  <31.757135, 33.095947, 25.514135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126896, 33.116978, 25.363022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380635, -0.063511, 0.922542,
		0.024515, -0.996595, -0.078724,
		0.924400, 0.052581, -0.377782,
		32.404217, 33.132751, 25.249687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266495, 32.452053, 25.798174>,  <31.757135, 33.095947, 25.514135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266495, 32.452053, 25.798174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524651, 32.740520, 25.697464>,  <32.679543, 32.913601, 25.637037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524651, 32.740520, 25.697464>,  <32.266495, 32.452053, 25.798174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524651, 32.740520, 25.697464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503949, -0.154299, 0.849839,
		0.574028, -0.675358, -0.463015,
		0.645389, 0.721168, -0.251774,
		32.718266, 32.956871, 25.621931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937435, 32.172699, 25.734629>,  <32.266495, 32.452053, 25.798174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937435, 32.172699, 25.734629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977398, 32.566856, 25.789787>,  <33.001377, 32.803352, 25.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977398, 32.566856, 25.789787>,  <32.937435, 32.172699, 25.734629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977398, 32.566856, 25.789787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486304, -0.169268, 0.857238,
		0.868059, -0.018584, -0.496113,
		0.099907, 0.985395, 0.137897,
		33.007370, 32.862476, 25.831156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571644, 32.211071, 25.928959>,  <32.937435, 32.172699, 25.734629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571644, 32.211071, 25.928959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407005, 32.540684, 26.084679>,  <33.308224, 32.738453, 26.178110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407005, 32.540684, 26.084679>,  <33.571644, 32.211071, 25.928959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407005, 32.540684, 26.084679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513749, -0.143035, 0.845933,
		0.752762, 0.548186, -0.364474,
		-0.411597, 0.824034, 0.389301,
		33.283527, 32.787895, 26.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088467, 32.541641, 26.344807>,  <33.571644, 32.211071, 25.928959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088467, 32.541641, 26.344807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741756, 32.684242, 26.484293>,  <33.533730, 32.769802, 26.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741756, 32.684242, 26.484293>,  <34.088467, 32.541641, 26.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741756, 32.684242, 26.484293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292019, -0.203999, 0.934403,
		0.404252, 0.911752, 0.072717,
		-0.866778, 0.356500, 0.348716,
		33.481724, 32.791191, 26.588907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326912, 33.012165, 26.926020>,  <34.088467, 32.541641, 26.344807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326912, 33.012165, 26.926020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938366, 32.942890, 26.991083>,  <33.705238, 32.901325, 27.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938366, 32.942890, 26.991083>,  <34.326912, 33.012165, 26.926020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938366, 32.942890, 26.991083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174024, -0.052506, 0.983341,
		-0.161765, 0.983488, 0.081142,
		-0.971364, -0.173191, 0.162657,
		33.646957, 32.890934, 27.039881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183064, 33.503582, 27.385889>,  <34.326912, 33.012165, 26.926020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183064, 33.503582, 27.385889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897354, 33.228092, 27.435654>,  <33.725929, 33.062798, 27.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897354, 33.228092, 27.435654>,  <34.183064, 33.503582, 27.385889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897354, 33.228092, 27.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225891, -0.058618, 0.972387,
		-0.662414, 0.722650, 0.197446,
		-0.714269, -0.688724, 0.124410,
		33.683075, 33.021477, 27.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960270, 33.597961, 28.099562>,  <34.183064, 33.503582, 27.385889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960270, 33.597961, 28.099562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838463, 33.231956, 27.993719>,  <33.765377, 33.012352, 27.930214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838463, 33.231956, 27.993719>,  <33.960270, 33.597961, 28.099562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838463, 33.231956, 27.993719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230387, -0.340309, 0.911653,
		-0.924224, 0.216654, 0.314438,
		-0.304519, -0.915014, -0.264607,
		33.747108, 32.957451, 27.914337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490765, 33.299290, 28.645596>,  <33.960270, 33.597961, 28.099562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490765, 33.299290, 28.645596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626671, 32.971794, 28.460457>,  <33.708214, 32.775299, 28.349373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626671, 32.971794, 28.460457>,  <33.490765, 33.299290, 28.645596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626671, 32.971794, 28.460457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147072, -0.439819, 0.885962,
		-0.928939, -0.369092, -0.029022,
		0.339767, -0.818737, -0.462849,
		33.728600, 32.726173, 28.321602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316364, 32.723042, 29.087784>,  <33.490765, 33.299290, 28.645596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316364, 32.723042, 29.087784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606548, 32.623409, 28.831139>,  <33.780659, 32.563629, 28.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606548, 32.623409, 28.831139>,  <33.316364, 32.723042, 29.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606548, 32.623409, 28.831139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394805, -0.613000, 0.684368,
		-0.563769, -0.749794, -0.346371,
		0.725461, -0.249077, -0.641613,
		33.824188, 32.548687, 28.638655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366570, 31.999311, 28.968584>,  <33.316364, 32.723042, 29.087784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366570, 31.999311, 28.968584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733723, 32.133541, 28.883839>,  <33.954014, 32.214077, 28.832993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733723, 32.133541, 28.883839>,  <33.366570, 31.999311, 28.968584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733723, 32.133541, 28.883839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394938, -0.719968, 0.570676,
		0.038969, -0.607485, -0.793375,
		0.917881, 0.335572, -0.211862,
		34.009087, 32.234211, 28.820280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807365, 31.391369, 29.108057>,  <33.366570, 31.999311, 28.968584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807365, 31.391369, 29.108057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085747, 31.664522, 29.019228>,  <34.252777, 31.828413, 28.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085747, 31.664522, 29.019228>,  <33.807365, 31.391369, 29.108057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085747, 31.664522, 29.019228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700679, -0.578124, 0.418118,
		0.157141, -0.446593, -0.880830,
		0.695957, 0.682882, -0.222072,
		34.294533, 31.869387, 28.952606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216976, 31.105009, 28.689957>,  <33.807365, 31.391369, 29.108057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216976, 31.105009, 28.689957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405518, 31.382198, 28.908175>,  <34.518642, 31.548512, 29.039104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405518, 31.382198, 28.908175>,  <34.216976, 31.105009, 28.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405518, 31.382198, 28.908175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688947, -0.675494, 0.262792,
		0.550619, 0.251984, -0.795816,
		0.471350, 0.692973, 0.545543,
		34.546921, 31.590090, 29.071836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926338, 31.103418, 28.436140>,  <34.216976, 31.105009, 28.689957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926338, 31.103418, 28.436140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914417, 31.233337, 28.814266>,  <34.907265, 31.311289, 29.041142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914417, 31.233337, 28.814266>,  <34.926338, 31.103418, 28.436140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914417, 31.233337, 28.814266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774094, -0.590818, 0.227402,
		0.632369, 0.738539, -0.233817,
		-0.029802, 0.324798, 0.945314,
		34.905476, 31.330776, 29.097860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567970, 30.931597, 28.596647>,  <34.926338, 31.103418, 28.436140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567970, 30.931597, 28.596647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428730, 31.064129, 28.947428>,  <35.345184, 31.143648, 29.157896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428730, 31.064129, 28.947428>,  <35.567970, 30.931597, 28.596647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428730, 31.064129, 28.947428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653562, -0.584868, 0.480402,
		0.672073, 0.740372, -0.012950,
		-0.348102, 0.331328, 0.876953,
		35.324299, 31.163527, 29.210514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074440, 31.274706, 29.028973>,  <35.567970, 30.931597, 28.596647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074440, 31.274706, 29.028973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807846, 31.135445, 29.292664>,  <35.647888, 31.051888, 29.450878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807846, 31.135445, 29.292664>,  <36.074440, 31.274706, 29.028973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807846, 31.135445, 29.292664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722985, -0.517591, 0.457594,
		0.181897, 0.781593, 0.596679,
		-0.666488, -0.348155, 0.659228,
		35.607899, 31.030998, 29.490433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348999, 31.406454, 29.692177>,  <36.074440, 31.274706, 29.028973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348999, 31.406454, 29.692177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073414, 31.119150, 29.731020>,  <35.908062, 30.946768, 29.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073414, 31.119150, 29.731020>,  <36.348999, 31.406454, 29.692177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073414, 31.119150, 29.731020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684130, -0.600204, 0.414393,
		-0.239355, 0.351939, 0.904902,
		-0.688966, -0.718258, 0.097110,
		35.866722, 30.903673, 29.760153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432991, 31.066618, 30.347937>,  <36.348999, 31.406454, 29.692177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432991, 31.066618, 30.347937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295853, 30.795448, 30.087822>,  <36.213570, 30.632746, 29.931753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295853, 30.795448, 30.087822>,  <36.432991, 31.066618, 30.347937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295853, 30.795448, 30.087822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645603, -0.672896, 0.361120,
		-0.682389, -0.296020, 0.668369,
		-0.342844, -0.677925, -0.650289,
		36.193001, 30.592072, 29.892735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261326, 30.495983, 30.748793>,  <36.432991, 31.066618, 30.347937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261326, 30.495983, 30.748793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309258, 30.369583, 30.372328>,  <36.338017, 30.293743, 30.146448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309258, 30.369583, 30.372328>,  <36.261326, 30.495983, 30.748793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309258, 30.369583, 30.372328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605340, -0.728128, 0.321545,
		-0.786895, -0.608254, 0.104035,
		0.119831, -0.315999, -0.941162,
		36.345207, 30.274784, 30.089979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080513, 29.678843, 30.607527>,  <36.261326, 30.495983, 30.748793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080513, 29.678843, 30.607527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 29.866943, 30.401808>,  <36.539516, 29.979803, 30.278376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 29.866943, 30.401808>,  <36.080513, 29.678843, 30.607527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367390, 29.866943, 30.401808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679024, -0.637545, 0.363955,
		-0.156737, -0.610245, -0.776554,
		0.717190, 0.470253, -0.514297,
		36.582546, 30.008018, 30.247519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579281, 29.169014, 30.204363>,  <36.080513, 29.678843, 30.607527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579281, 29.169014, 30.204363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749550, 29.515453, 30.309187>,  <36.851711, 29.723316, 30.372082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749550, 29.515453, 30.309187>,  <36.579281, 29.169014, 30.204363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749550, 29.515453, 30.309187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764381, -0.499165, 0.408112,
		0.484277, 0.026593, -0.874510,
		0.425672, 0.866099, 0.262061,
		36.877251, 29.775284, 30.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238018, 29.397684, 29.891056>,  <36.579281, 29.169014, 30.204363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238018, 29.397684, 29.891056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192272, 29.490593, 30.277418>,  <37.164825, 29.546339, 30.509235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192272, 29.490593, 30.277418>,  <37.238018, 29.397684, 29.891056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192272, 29.490593, 30.277418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719762, -0.650781, 0.241718,
		0.684735, 0.722866, -0.092751,
		-0.114369, 0.232271, 0.965904,
		37.157963, 29.560274, 30.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933369, 29.506054, 30.236807>,  <37.238018, 29.397684, 29.891056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933369, 29.506054, 30.236807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694073, 29.439280, 30.550301>,  <37.550495, 29.399214, 30.738396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694073, 29.439280, 30.550301>,  <37.933369, 29.506054, 30.236807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694073, 29.439280, 30.550301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749334, -0.463076, 0.473349,
		0.283908, 0.870455, 0.402124,
		-0.598244, -0.166938, 0.783732,
		37.514599, 29.389198, 30.785419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311310, 29.698748, 30.846811>,  <37.933369, 29.506054, 30.236807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311310, 29.698748, 30.846811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034115, 29.414232, 30.893860>,  <37.867798, 29.243523, 30.922089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034115, 29.414232, 30.893860>,  <38.311310, 29.698748, 30.846811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034115, 29.414232, 30.893860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713462, -0.653160, 0.253680,
		-0.103614, 0.259716, 0.960110,
		-0.692991, -0.711287, 0.117621,
		37.826218, 29.200846, 30.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368576, 29.475828, 31.529182>,  <38.311310, 29.698748, 30.846811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368576, 29.475828, 31.529182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213413, 29.199490, 31.285131>,  <38.120316, 29.033686, 31.138700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213413, 29.199490, 31.285131>,  <38.368576, 29.475828, 31.529182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213413, 29.199490, 31.285131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749292, -0.621850, 0.227739,
		-0.536742, -0.368824, 0.758866,
		-0.387905, -0.690849, -0.610129,
		38.097042, 28.992235, 31.102093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566734, 28.809715, 31.888880>,  <38.368576, 29.475828, 31.529182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566734, 28.809715, 31.888880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933937, 28.776327, 32.043953>,  <39.154259, 28.756294, 32.136997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933937, 28.776327, 32.043953>,  <38.566734, 28.809715, 31.888880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933937, 28.776327, 32.043953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225100, -0.695165, -0.682698,
		0.326488, 0.713988, -0.619376,
		0.918006, -0.083471, 0.387681,
		39.209339, 28.751286, 32.160255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078377, 29.040625, 31.377855>,  <38.566734, 28.809715, 31.888880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078377, 29.040625, 31.377855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171116, 28.751270, 31.637997>,  <39.226757, 28.577658, 31.794081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171116, 28.751270, 31.637997>,  <39.078377, 29.040625, 31.377855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171116, 28.751270, 31.637997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097109, -0.682441, -0.724461,
		0.967894, 0.104807, -0.228467,
		0.231844, -0.723387, 0.650353,
		39.240669, 28.534254, 31.833103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655678, 28.662537, 31.047949>,  <39.078377, 29.040625, 31.377855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655678, 28.662537, 31.047949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455254, 28.414900, 31.289829>,  <39.334999, 28.266317, 31.434958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455254, 28.414900, 31.289829>,  <39.655678, 28.662537, 31.047949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455254, 28.414900, 31.289829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004741, -0.700696, -0.713444,
		0.865402, -0.354608, 0.354023,
		-0.501056, -0.619094, 0.604703,
		39.304935, 28.229172, 31.471241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975918, 28.024092, 30.953463>,  <39.655678, 28.662537, 31.047949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975918, 28.024092, 30.953463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591183, 27.981236, 31.054165>,  <39.360340, 27.955521, 31.114586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591183, 27.981236, 31.054165>,  <39.975918, 28.024092, 30.953463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591183, 27.981236, 31.054165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100508, -0.717444, -0.689328,
		0.254477, -0.688328, 0.679299,
		-0.961842, -0.107143, 0.251755,
		39.302631, 27.949093, 31.129692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801899, 27.528545, 30.432219>,  <39.975918, 28.024092, 30.953463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801899, 27.528545, 30.432219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473782, 27.455564, 30.649040>,  <39.276909, 27.411776, 30.779133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473782, 27.455564, 30.649040>,  <39.801899, 27.528545, 30.432219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473782, 27.455564, 30.649040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396350, -0.501930, -0.768747,
		0.412335, -0.845445, 0.339417,
		-0.820297, -0.182453, 0.542055,
		39.227692, 27.400829, 30.811657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943806, 27.149620, 29.899805>,  <39.801899, 27.528545, 30.432219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943806, 27.149620, 29.899805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966995, 26.784918, 29.737156>,  <39.980907, 26.566097, 29.639566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966995, 26.784918, 29.737156>,  <39.943806, 27.149620, 29.899805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966995, 26.784918, 29.737156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753193, 0.227387, -0.617249,
		0.655240, 0.342051, -0.673544,
		0.057975, -0.911754, -0.406623,
		39.984386, 26.511391, 29.615170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105373, 27.171240, 29.095989>,  <39.943806, 27.149620, 29.899805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105373, 27.171240, 29.095989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923336, 26.826633, 29.186037>,  <39.814114, 26.619869, 29.240065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923336, 26.826633, 29.186037>,  <40.105373, 27.171240, 29.095989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923336, 26.826633, 29.186037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636505, 0.137943, -0.758837,
		0.622698, -0.488629, -0.611137,
		-0.455092, -0.861518, 0.225118,
		39.786808, 26.568178, 29.253572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129974, 26.822298, 28.509987>,  <40.105373, 27.171240, 29.095989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129974, 26.822298, 28.509987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838863, 26.623560, 28.699081>,  <39.664196, 26.504316, 28.812538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838863, 26.623560, 28.699081>,  <40.129974, 26.822298, 28.509987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838863, 26.623560, 28.699081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489419, -0.106605, -0.865508,
		0.480421, -0.861266, -0.165581,
		-0.727780, -0.496847, 0.472735,
		39.620529, 26.474506, 28.840902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893330, 26.299276, 28.005909>,  <40.129974, 26.822298, 28.509987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893330, 26.299276, 28.005909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616547, 26.320568, 28.293900>,  <39.450478, 26.333344, 28.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616547, 26.320568, 28.293900>,  <39.893330, 26.299276, 28.005909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616547, 26.320568, 28.293900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721823, -0.032898, -0.691296,
		-0.013105, -0.998041, 0.061178,
		-0.691954, 0.053219, 0.719977,
		39.408962, 26.336536, 28.509893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376812, 25.700445, 27.920753>,  <39.893330, 26.299276, 28.005909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376812, 25.700445, 27.920753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190411, 25.981945, 28.135256>,  <39.078568, 26.150845, 28.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190411, 25.981945, 28.135256>,  <39.376812, 25.700445, 27.920753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190411, 25.981945, 28.135256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754966, -0.000227, -0.655764,
		-0.461374, -0.710446, 0.531415,
		-0.466005, 0.703752, 0.536258,
		39.050610, 26.193071, 28.296133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657219, 25.404850, 27.994019>,  <39.376812, 25.700445, 27.920753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657219, 25.404850, 27.994019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679874, 25.799547, 28.054853>,  <38.693466, 26.036366, 28.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679874, 25.799547, 28.054853>,  <38.657219, 25.404850, 27.994019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679874, 25.799547, 28.054853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682543, 0.149441, -0.715404,
		-0.728648, -0.063288, 0.681958,
		0.056636, 0.986743, 0.152087,
		38.696865, 26.095570, 28.100479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007633, 25.563189, 28.043098>,  <38.657219, 25.404850, 27.994019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007633, 25.563189, 28.043098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212845, 25.892220, 27.944981>,  <38.335972, 26.089638, 27.886110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212845, 25.892220, 27.944981>,  <38.007633, 25.563189, 28.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212845, 25.892220, 27.944981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797898, 0.351632, -0.489605,
		-0.316484, 0.446902, 0.836730,
		0.513027, 0.822577, -0.245297,
		38.366753, 26.138992, 27.871391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614166, 26.213093, 28.269720>,  <38.007633, 25.563189, 28.043098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614166, 26.213093, 28.269720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840866, 26.255892, 27.942955>,  <37.976887, 26.281570, 27.746897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840866, 26.255892, 27.942955>,  <37.614166, 26.213093, 28.269720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840866, 26.255892, 27.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800263, 0.307246, -0.514955,
		0.195896, 0.945596, 0.259756,
		0.566749, 0.106996, -0.816913,
		38.010891, 26.287991, 27.697882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549347, 26.987490, 27.995152>,  <37.614166, 26.213093, 28.269720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549347, 26.987490, 27.995152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660168, 26.726538, 27.712976>,  <37.726658, 26.569965, 27.543671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660168, 26.726538, 27.712976>,  <37.549347, 26.987490, 27.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660168, 26.726538, 27.712976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683480, 0.382223, -0.621900,
		0.675351, 0.654449, -0.339995,
		0.277048, -0.652381, -0.705438,
		37.743282, 26.530823, 27.501345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641079, 27.398062, 27.339800>,  <37.549347, 26.987490, 27.995152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641079, 27.398062, 27.339800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586506, 27.006054, 27.281912>,  <37.553761, 26.770849, 27.247179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586506, 27.006054, 27.281912>,  <37.641079, 27.398062, 27.339800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586506, 27.006054, 27.281912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668037, 0.198892, -0.717055,
		0.731513, -0.001153, -0.681827,
		-0.136437, -0.980020, -0.144722,
		37.545574, 26.712048, 27.238495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048447, 27.100380, 26.710964>,  <37.641079, 27.398062, 27.339800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048447, 27.100380, 26.710964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706482, 26.896652, 26.750387>,  <37.501301, 26.774416, 26.774040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706482, 26.896652, 26.750387>,  <38.048447, 27.100380, 26.710964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706482, 26.896652, 26.750387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269295, 0.273327, -0.923457,
		0.443397, -0.816018, -0.370829,
		-0.854915, -0.509321, 0.098557,
		37.450008, 26.743856, 26.779955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703377, 26.875954, 27.272785>,  <38.048447, 27.100380, 26.710964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703377, 26.875954, 27.272785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389652, 26.871140, 27.520887>,  <38.201420, 26.868252, 27.669748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389652, 26.871140, 27.520887>,  <38.703377, 26.875954, 27.272785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389652, 26.871140, 27.520887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598752, -0.276326, 0.751758,
		0.162344, 0.960989, 0.223931,
		-0.784309, -0.012036, 0.620254,
		38.154358, 26.867529, 27.706964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919239, 27.296841, 27.866322>,  <38.703377, 26.875954, 27.272785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919239, 27.296841, 27.866322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660275, 26.999386, 27.933086>,  <38.504894, 26.820913, 27.973145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660275, 26.999386, 27.933086>,  <38.919239, 27.296841, 27.866322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660275, 26.999386, 27.933086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644162, -0.416866, 0.641310,
		-0.407323, 0.522709, 0.748908,
		-0.647413, -0.743638, 0.166910,
		38.466049, 26.776295, 27.983160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584431, 27.348124, 28.526812>,  <38.919239, 27.296841, 27.866322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584431, 27.348124, 28.526812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631409, 26.978645, 28.380941>,  <38.659595, 26.756958, 28.293419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631409, 26.978645, 28.380941>,  <38.584431, 27.348124, 28.526812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631409, 26.978645, 28.380941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562917, -0.240601, 0.790718,
		-0.818126, -0.298153, 0.491706,
		0.117449, -0.923697, -0.364677,
		38.666645, 26.701536, 28.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447784, 27.003256, 29.158188>,  <38.584431, 27.348124, 28.526812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447784, 27.003256, 29.158188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639240, 26.768703, 28.896788>,  <38.754112, 26.627972, 28.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639240, 26.768703, 28.896788>,  <38.447784, 27.003256, 29.158188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639240, 26.768703, 28.896788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635390, -0.282346, 0.718722,
		-0.605957, -0.759236, 0.237438,
		0.478640, -0.586380, -0.653501,
		38.782833, 26.592789, 28.700737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543159, 26.466873, 29.446871>,  <38.447784, 27.003256, 29.158188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543159, 26.466873, 29.446871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820515, 26.431877, 29.160778>,  <38.986927, 26.410879, 28.989122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820515, 26.431877, 29.160778>,  <38.543159, 26.466873, 29.446871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820515, 26.431877, 29.160778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655008, -0.337125, 0.676247,
		-0.300285, -0.937386, -0.176455,
		0.693392, -0.087488, -0.715229,
		39.028534, 26.405630, 28.946209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803314, 25.797138, 29.463760>,  <38.543159, 26.466873, 29.446871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803314, 25.797138, 29.463760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080151, 25.996349, 29.254774>,  <39.246254, 26.115877, 29.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080151, 25.996349, 29.254774>,  <38.803314, 25.797138, 29.463760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080151, 25.996349, 29.254774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705181, -0.312072, 0.636656,
		0.154027, -0.809059, -0.567185,
		0.692095, 0.498030, -0.522465,
		39.287781, 26.145758, 29.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335796, 25.375099, 29.406429>,  <38.803314, 25.797138, 29.463760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335796, 25.375099, 29.406429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486824, 25.742720, 29.361198>,  <39.577442, 25.963291, 29.334061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486824, 25.742720, 29.361198>,  <39.335796, 25.375099, 29.406429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486824, 25.742720, 29.361198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781709, -0.250898, 0.570947,
		0.496359, -0.303965, -0.813162,
		0.377569, 0.919051, -0.113077,
		39.600094, 26.018435, 29.327276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100925, 25.268686, 29.344604>,  <39.335796, 25.375099, 29.406429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100925, 25.268686, 29.344604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042992, 25.647680, 29.458656>,  <40.008232, 25.875076, 29.527088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042992, 25.647680, 29.458656>,  <40.100925, 25.268686, 29.344604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042992, 25.647680, 29.458656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769757, -0.073168, 0.634130,
		0.621690, 0.311323, -0.718735,
		-0.144831, 0.947484, 0.285130,
		39.999542, 25.931925, 29.544195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748363, 25.561539, 29.198063>,  <40.100925, 25.268686, 29.344604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748363, 25.561539, 29.198063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541340, 25.744011, 29.487623>,  <40.417126, 25.853495, 29.661360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541340, 25.744011, 29.487623>,  <40.748363, 25.561539, 29.198063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541340, 25.744011, 29.487623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820625, 0.025074, 0.570917,
		0.242290, 0.889534, -0.387330,
		-0.517562, 0.456180, 0.723899,
		40.386070, 25.880865, 29.704792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994999, 26.247389, 29.353613>,  <40.748363, 25.561539, 29.198063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994999, 26.247389, 29.353613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793571, 26.165527, 29.689360>,  <40.672714, 26.116411, 29.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793571, 26.165527, 29.689360>,  <40.994999, 26.247389, 29.353613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793571, 26.165527, 29.689360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730069, 0.418698, 0.540085,
		-0.461970, 0.884765, -0.061434,
		-0.503571, -0.204652, 0.839365,
		40.642502, 26.104132, 29.941170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778301, 26.868862, 29.746611>,  <40.994999, 26.247389, 29.353613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778301, 26.868862, 29.746611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815617, 26.562544, 30.001123>,  <40.838005, 26.378754, 30.153831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815617, 26.562544, 30.001123>,  <40.778301, 26.868862, 29.746611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815617, 26.562544, 30.001123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595132, 0.555225, 0.580984,
		-0.798194, 0.324470, 0.507548,
		0.093291, -0.765796, 0.636280,
		40.843605, 26.332806, 30.192007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001667, 27.213566, 30.352798>,  <40.778301, 26.868862, 29.746611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001667, 27.213566, 30.352798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095882, 26.826729, 30.391272>,  <41.152412, 26.594625, 30.414354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095882, 26.826729, 30.391272>,  <41.001667, 27.213566, 30.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095882, 26.826729, 30.391272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611368, 0.224371, 0.758872,
		-0.755482, -0.119940, 0.644098,
		0.235536, -0.967095, 0.096181,
		41.166542, 26.536600, 30.420126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045921, 26.998640, 31.052647>,  <41.001667, 27.213566, 30.352798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045921, 26.998640, 31.052647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243160, 26.693886, 30.884655>,  <41.361504, 26.511032, 30.783859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243160, 26.693886, 30.884655>,  <41.045921, 26.998640, 31.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243160, 26.693886, 30.884655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608448, -0.043023, 0.792426,
		-0.621808, -0.646279, 0.442354,
		0.493098, -0.761887, -0.419980,
		41.391090, 26.465321, 30.758661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601440, 27.615635, 30.948195>,  <41.045921, 26.998640, 31.052647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601440, 27.615635, 30.948195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819103, 27.363041, 31.169147>,  <41.949699, 27.211485, 31.301720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819103, 27.363041, 31.169147>,  <41.601440, 27.615635, 30.948195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819103, 27.363041, 31.169147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838967, 0.405270, -0.363168,
		0.005471, 0.661049, 0.750323,
		0.544155, -0.631483, 0.552381,
		41.982349, 27.173595, 31.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116051, 28.097786, 31.354200>,  <41.601440, 27.615635, 30.948195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116051, 28.097786, 31.354200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245140, 27.719648, 31.335556>,  <42.322594, 27.492765, 31.324369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245140, 27.719648, 31.335556>,  <42.116051, 28.097786, 31.354200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245140, 27.719648, 31.335556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916145, 0.324364, -0.235513,
		0.237760, 0.033304, 0.970753,
		0.322720, -0.945346, -0.046610,
		42.341957, 27.436045, 31.321573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709267, 28.040222, 31.705204>,  <42.116051, 28.097786, 31.354200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709267, 28.040222, 31.705204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707642, 27.752747, 31.427076>,  <42.706669, 27.580261, 31.260199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707642, 27.752747, 31.427076>,  <42.709267, 28.040222, 31.705204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707642, 27.752747, 31.427076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987774, 0.105476, -0.114789,
		0.155837, -0.687286, 0.709473,
		-0.004061, -0.718688, -0.695321,
		42.706425, 27.537140, 31.218479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210388, 27.369774, 31.881306>,  <42.709267, 28.040222, 31.705204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210388, 27.369774, 31.881306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128529, 27.555370, 31.536554>,  <43.079411, 27.666727, 31.329704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128529, 27.555370, 31.536554>,  <43.210388, 27.369774, 31.881306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128529, 27.555370, 31.536554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932765, 0.359396, -0.028004,
		0.296762, -0.809659, -0.506345,
		-0.204652, 0.463990, -0.861876,
		43.067131, 27.694567, 31.277992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429420, 27.092455, 31.259733>,  <43.210388, 27.369774, 31.881306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429420, 27.092455, 31.259733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387905, 27.490088, 31.246906>,  <43.362995, 27.728668, 31.239210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387905, 27.490088, 31.246906>,  <43.429420, 27.092455, 31.259733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387905, 27.490088, 31.246906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983687, 0.097831, -0.150962,
		-0.146932, -0.047210, -0.988019,
		-0.103786, 0.994083, -0.032065,
		43.356770, 27.788313, 31.237288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878414, 27.313723, 30.648230>,  <43.429420, 27.092455, 31.259733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878414, 27.313723, 30.648230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823868, 27.616983, 30.903294>,  <43.791142, 27.798941, 31.056332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823868, 27.616983, 30.903294>,  <43.878414, 27.313723, 30.648230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823868, 27.616983, 30.903294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976970, 0.209551, -0.040225,
		-0.164119, 0.617489, -0.769267,
		-0.136362, 0.758153, 0.637660,
		43.782959, 27.844429, 31.094591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142944, 27.962244, 30.396832>,  <43.878414, 27.313723, 30.648230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142944, 27.962244, 30.396832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176601, 27.923838, 30.793558>,  <44.196796, 27.900793, 31.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176601, 27.923838, 30.793558>,  <44.142944, 27.962244, 30.396832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176601, 27.923838, 30.793558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989550, -0.108914, -0.094492,
		0.117096, 0.989403, 0.085850,
		0.084140, -0.096017, 0.991817,
		44.201843, 27.895033, 31.091103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770477, 28.215771, 30.563732>,  <44.142944, 27.962244, 30.396832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770477, 28.215771, 30.563732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664738, 27.973091, 30.863609>,  <44.601292, 27.827484, 31.043535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664738, 27.973091, 30.863609>,  <44.770477, 28.215771, 30.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664738, 27.973091, 30.863609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937304, -0.344674, 0.051575,
		0.227109, 0.716323, 0.659775,
		-0.264351, -0.606697, 0.749692,
		44.585434, 27.791082, 31.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320511, 28.802105, 30.599903>,  <44.770477, 28.215771, 30.563732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320511, 28.802105, 30.599903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525902, 29.106192, 30.759106>,  <45.649136, 29.288645, 30.854628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525902, 29.106192, 30.759106>,  <45.320511, 28.802105, 30.599903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525902, 29.106192, 30.759106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711815, -0.636385, 0.297210,
		0.479231, 0.130698, -0.867903,
		0.513475, 0.760219, 0.398008,
		45.679943, 29.334257, 30.878508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690636, 28.905785, 31.135508>,  <45.320511, 28.802105, 30.599903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690636, 28.905785, 31.135508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592510, 29.073824, 31.484985>,  <44.533634, 29.174648, 31.694672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592510, 29.073824, 31.484985>,  <44.690636, 28.905785, 31.135508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592510, 29.073824, 31.484985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061711, 0.892636, -0.446534,
		-0.967478, -0.163457, -0.193050,
		-0.245313, 0.420098, 0.873693,
		44.518917, 29.199854, 31.747093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266945, 29.431496, 31.379705>,  <44.690636, 28.905785, 31.135508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266945, 29.431496, 31.379705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381554, 29.689531, 31.096365>,  <45.450321, 29.844353, 30.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381554, 29.689531, 31.096365>,  <45.266945, 29.431496, 31.379705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381554, 29.689531, 31.096365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190072, 0.762930, 0.617909,
		0.939029, -0.042409, 0.341212,
		0.286526, 0.645089, -0.708352,
		45.467510, 29.883059, 30.883860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971790, 29.820953, 31.492569>,  <45.266945, 29.431496, 31.379705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971790, 29.820953, 31.492569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704884, 30.030775, 31.281061>,  <45.544739, 30.156668, 31.154156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704884, 30.030775, 31.281061>,  <45.971790, 29.820953, 31.492569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704884, 30.030775, 31.281061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155589, 0.792436, 0.589778,
		0.728386, 0.311268, -0.610381,
		-0.667267, 0.524555, -0.528769,
		45.504704, 30.188141, 31.122431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190491, 30.618780, 31.371500>,  <45.971790, 29.820953, 31.492569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190491, 30.618780, 31.371500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791740, 30.590435, 31.385401>,  <45.552490, 30.573427, 31.393742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791740, 30.590435, 31.385401>,  <46.190491, 30.618780, 31.371500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791740, 30.590435, 31.385401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041047, 0.841564, 0.538596,
		-0.067415, 0.535489, -0.841847,
		-0.996880, -0.070865, 0.034754,
		45.492676, 30.569176, 31.395826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916039, 31.164465, 30.940742>,  <46.190491, 30.618780, 31.371500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916039, 31.164465, 30.940742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697227, 31.050892, 31.255737>,  <45.565941, 30.982748, 31.444735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697227, 31.050892, 31.255737>,  <45.916039, 31.164465, 30.940742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697227, 31.050892, 31.255737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039162, 0.931010, 0.362886,
		-0.836195, 0.229350, -0.498173,
		-0.547032, -0.283934, 0.787488,
		45.533119, 30.965712, 31.491983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314743, 31.489508, 30.946152>,  <45.916039, 31.164465, 30.940742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314743, 31.489508, 30.946152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507050, 31.405643, 31.286718>,  <45.622433, 31.355326, 31.491058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507050, 31.405643, 31.286718>,  <45.314743, 31.489508, 30.946152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507050, 31.405643, 31.286718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214129, 0.969668, 0.117867,
		-0.850301, 0.125646, 0.511078,
		0.480767, -0.209659, 0.851414,
		45.651279, 31.342747, 31.542143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296143, 32.087357, 31.187634>,  <45.314743, 31.489508, 30.946152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296143, 32.087357, 31.187634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527630, 31.916937, 31.465790>,  <45.666523, 31.814684, 31.632683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527630, 31.916937, 31.465790>,  <45.296143, 32.087357, 31.187634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527630, 31.916937, 31.465790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369446, 0.897135, 0.242197,
		-0.727046, 0.116745, 0.676591,
		0.578718, -0.426052, 0.695389,
		45.701244, 31.789122, 31.674406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368927, 32.440975, 31.753830>,  <45.296143, 32.087357, 31.187634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368927, 32.440975, 31.753830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727821, 32.264378, 31.756474>,  <45.943157, 32.158421, 31.758059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727821, 32.264378, 31.756474>,  <45.368927, 32.440975, 31.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727821, 32.264378, 31.756474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432959, 0.882632, 0.183052,
		-0.086648, -0.161381, 0.983081,
		0.897239, -0.441495, 0.006607,
		45.996994, 32.131927, 31.758455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685402, 32.510387, 32.397343>,  <45.368927, 32.440975, 31.753830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685402, 32.510387, 32.397343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953030, 32.487892, 32.100914>,  <46.113605, 32.474396, 31.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953030, 32.487892, 32.100914>,  <45.685402, 32.510387, 32.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953030, 32.487892, 32.100914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472739, 0.801614, 0.365969,
		0.573470, -0.595191, 0.562921,
		0.669067, -0.056242, -0.741072,
		46.153751, 32.471020, 31.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348640, 32.327877, 32.648796>,  <45.685402, 32.510387, 32.397343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348640, 32.327877, 32.648796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358047, 32.563408, 32.325630>,  <46.363693, 32.704727, 32.131729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358047, 32.563408, 32.325630>,  <46.348640, 32.327877, 32.648796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358047, 32.563408, 32.325630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435643, 0.721336, 0.538414,
		0.899812, -0.364626, -0.239553,
		0.023522, 0.588831, -0.807914,
		46.365105, 32.740059, 32.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047073, 32.583538, 32.413754>,  <46.348640, 32.327877, 32.648796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047073, 32.583538, 32.413754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764973, 32.849880, 32.316391>,  <46.595711, 33.009686, 32.257973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764973, 32.849880, 32.316391>,  <47.047073, 32.583538, 32.413754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764973, 32.849880, 32.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413573, 0.665268, 0.621592,
		0.575822, 0.337715, -0.744565,
		-0.705256, 0.665859, -0.243406,
		46.553394, 33.049637, 32.243370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749924, 33.044922, 32.957703>,  <47.047073, 32.583538, 32.413754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749924, 33.044922, 32.957703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412037, 33.142998, 33.148003>,  <46.209305, 33.201843, 33.262180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412037, 33.142998, 33.148003>,  <46.749924, 33.044922, 32.957703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412037, 33.142998, 33.148003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522635, 0.186303, 0.831952,
		0.115354, 0.951406, -0.285519,
		-0.844716, 0.245192, 0.475747,
		46.158623, 33.216557, 33.290726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803085, 33.593163, 33.383480>,  <46.749924, 33.044922, 32.957703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803085, 33.593163, 33.383480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500977, 33.392551, 33.552258>,  <46.319710, 33.272186, 33.653522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500977, 33.392551, 33.552258>,  <46.803085, 33.593163, 33.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500977, 33.392551, 33.552258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389013, 0.175085, 0.904441,
		-0.527475, 0.847242, 0.062862,
		-0.755274, -0.501524, 0.421941,
		46.274395, 33.242096, 33.678841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244759, 34.129967, 33.661724>,  <46.803085, 33.593163, 33.383480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244759, 34.129967, 33.661724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266693, 33.769875, 33.834499>,  <46.279854, 33.553818, 33.938164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266693, 33.769875, 33.834499>,  <46.244759, 34.129967, 33.661724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266693, 33.769875, 33.834499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267211, 0.430045, 0.862357,
		-0.962076, 0.068131, 0.264135,
		0.054837, -0.900233, 0.431941,
		46.283146, 33.499805, 33.964081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786850, 34.111153, 34.334316>,  <46.244759, 34.129967, 33.661724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786850, 34.111153, 34.334316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092426, 33.858715, 34.388165>,  <46.275772, 33.707253, 34.420475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092426, 33.858715, 34.388165>,  <45.786850, 34.111153, 34.334316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092426, 33.858715, 34.388165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143526, 0.369570, 0.918051,
		-0.629125, -0.682014, 0.372907,
		0.763939, -0.631091, 0.134619,
		46.321609, 33.669388, 34.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721924, 34.007435, 35.024506>,  <45.786850, 34.111153, 34.334316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721924, 34.007435, 35.024506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091484, 33.943676, 34.885372>,  <46.313221, 33.905418, 34.801891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091484, 33.943676, 34.885372>,  <45.721924, 34.007435, 35.024506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091484, 33.943676, 34.885372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382561, 0.401248, 0.832254,
		0.006907, -0.901993, 0.431696,
		0.923905, -0.159402, -0.347838,
		46.368656, 33.895855, 34.781021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121090, 33.599991, 35.535671>,  <45.721924, 34.007435, 35.024506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121090, 33.599991, 35.535671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319420, 33.846600, 35.291027>,  <46.438419, 33.994564, 35.144241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319420, 33.846600, 35.291027>,  <46.121090, 33.599991, 35.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319420, 33.846600, 35.291027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466451, 0.404988, 0.786389,
		0.732518, -0.675194, -0.086774,
		0.495823, 0.616520, -0.611606,
		46.468166, 34.031555, 35.107544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827023, 33.683655, 35.643230>,  <46.121090, 33.599991, 35.535671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827023, 33.683655, 35.643230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729748, 34.038692, 35.486752>,  <46.671383, 34.251717, 35.392864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729748, 34.038692, 35.486752>,  <46.827023, 33.683655, 35.643230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729748, 34.038692, 35.486752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488156, 0.460504, 0.741377,
		0.838190, -0.010670, -0.545274,
		-0.243190, 0.887594, -0.391198,
		46.656792, 34.304970, 35.369392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.363750, 34.222546, 35.537399>,  <46.827023, 33.683655, 35.643230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.363750, 34.222546, 35.537399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053207, 34.471470, 35.577396>,  <46.866882, 34.620823, 35.601395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053207, 34.471470, 35.577396>,  <47.363750, 34.222546, 35.537399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053207, 34.471470, 35.577396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498862, 0.509727, 0.700938,
		0.385232, 0.594062, -0.706178,
		-0.776358, 0.622310, 0.099992,
		46.820301, 34.658161, 35.607395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.641521, 34.941879, 35.581432>,  <47.363750, 34.222546, 35.537399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.641521, 34.941879, 35.581432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289452, 34.902843, 35.767235>,  <47.078209, 34.879421, 35.878716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289452, 34.902843, 35.767235>,  <47.641521, 34.941879, 35.581432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289452, 34.902843, 35.767235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333474, 0.569263, 0.751488,
		-0.337766, 0.816343, -0.468507,
		-0.880176, -0.097592, 0.464507,
		47.025398, 34.873566, 35.906586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922421, 34.830738, 34.894024>,  <47.641521, 34.941879, 35.581432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922421, 34.830738, 34.894024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625229, 35.095730, 34.855869>,  <47.446915, 35.254726, 34.832977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625229, 35.095730, 34.855869>,  <47.922421, 34.830738, 34.894024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625229, 35.095730, 34.855869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668328, -0.726598, 0.159353,
		0.036264, 0.182143, 0.982603,
		-0.742982, 0.662480, -0.095382,
		47.402332, 35.294476, 34.827255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.799059, 30.080231, 21.739107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.609869, 30.429701, 21.784691>,  <29.496355, 30.639383, 21.812042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.609869, 30.429701, 21.784691>,  <29.799059, 30.080231, 21.739107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609869, 30.429701, 21.784691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188458, -0.026032, 0.981736,
		0.860686, 0.485811, -0.152339,
		-0.472973, 0.873676, 0.113960,
		29.467978, 30.691803, 21.818878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238285, 30.643835, 22.078739>,  <29.799059, 30.080231, 21.739107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238285, 30.643835, 22.078739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855656, 30.740547, 22.143867>,  <29.626078, 30.798574, 22.182945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.855656, 30.740547, 22.143867>,  <30.238285, 30.643835, 22.078739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855656, 30.740547, 22.143867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190803, 0.097074, 0.976817,
		0.220368, 0.965464, -0.138990,
		-0.956573, 0.241779, 0.162821,
		29.568684, 30.813080, 22.192715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258478, 31.262077, 22.571156>,  <30.238285, 30.643835, 22.078739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258478, 31.262077, 22.571156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.887106, 31.117159, 22.604034>,  <29.664282, 31.030209, 22.623762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.887106, 31.117159, 22.604034>,  <30.258478, 31.262077, 22.571156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887106, 31.117159, 22.604034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107789, -0.050963, 0.992867,
		-0.355522, 0.930669, 0.086367,
		-0.928432, -0.362295, 0.082197,
		29.608576, 31.008471, 22.628695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939434, 31.695223, 23.036865>,  <30.258478, 31.262077, 22.571156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939434, 31.695223, 23.036865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.731096, 31.354975, 23.065632>,  <29.606094, 31.150826, 23.082891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.731096, 31.354975, 23.065632>,  <29.939434, 31.695223, 23.036865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731096, 31.354975, 23.065632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033266, 0.104405, 0.993978,
		-0.853004, 0.515314, -0.082676,
		-0.520843, -0.850618, 0.071916,
		29.574844, 31.099789, 23.087206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431751, 31.857550, 23.508554>,  <29.939434, 31.695223, 23.036865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431751, 31.857550, 23.508554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.457165, 31.459707, 23.475750>,  <29.472412, 31.221003, 23.456068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.457165, 31.459707, 23.475750>,  <29.431751, 31.857550, 23.508554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457165, 31.459707, 23.475750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094708, -0.087815, 0.991624,
		-0.993476, -0.055235, -0.099776,
		0.063534, -0.994604, -0.082011,
		29.476225, 31.161325, 23.451147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133362, 31.704653, 24.079782>,  <29.431751, 31.857550, 23.508554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133362, 31.704653, 24.079782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297209, 31.358061, 23.965641>,  <29.395517, 31.150106, 23.897156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297209, 31.358061, 23.965641>,  <29.133362, 31.704653, 24.079782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297209, 31.358061, 23.965641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183353, -0.228222, 0.956188,
		-0.893642, -0.443991, 0.065388,
		0.409616, -0.866479, -0.285356,
		29.420094, 31.098118, 23.880033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828541, 31.127373, 24.470181>,  <29.133362, 31.704653, 24.079782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828541, 31.127373, 24.470181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185818, 30.995384, 24.347982>,  <29.400185, 30.916191, 24.274664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.185818, 30.995384, 24.347982>,  <28.828541, 31.127373, 24.470181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185818, 30.995384, 24.347982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246520, -0.208863, 0.946364,
		-0.376078, -0.920596, -0.105211,
		0.893193, -0.329970, -0.305494,
		29.453775, 30.896393, 24.256334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033087, 30.568161, 24.964537>,  <28.828541, 31.127373, 24.470181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033087, 30.568161, 24.964537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379694, 30.626564, 24.773611>,  <29.587658, 30.661606, 24.659056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379694, 30.626564, 24.773611>,  <29.033087, 30.568161, 24.964537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379694, 30.626564, 24.773611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495803, -0.362240, 0.789279,
		-0.057663, -0.920578, -0.386278,
		0.866519, 0.146006, -0.477313,
		29.639650, 30.670366, 24.630417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546032, 29.981966, 25.111721>,  <29.033087, 30.568161, 24.964537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546032, 29.981966, 25.111721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.778301, 30.293108, 25.015583>,  <29.917662, 30.479794, 24.957901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.778301, 30.293108, 25.015583>,  <29.546032, 29.981966, 25.111721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778301, 30.293108, 25.015583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646783, -0.261453, 0.716460,
		0.494462, -0.571477, -0.654921,
		0.580672, 0.777853, -0.240343,
		29.952503, 30.526464, 24.943480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143118, 29.762352, 25.387459>,  <29.546032, 29.981966, 25.111721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143118, 29.762352, 25.387459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234177, 30.144735, 25.313354>,  <30.288811, 30.374165, 25.268892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234177, 30.144735, 25.313354>,  <30.143118, 29.762352, 25.387459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234177, 30.144735, 25.313354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836159, -0.094409, 0.540301,
		0.499015, -0.277903, -0.820825,
		0.227645, 0.955959, -0.185259,
		30.302469, 30.431522, 25.257776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872030, 29.855532, 25.287294>,  <30.143118, 29.762352, 25.387459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872030, 29.855532, 25.287294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731600, 30.200201, 25.433867>,  <30.647343, 30.407001, 25.521809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731600, 30.200201, 25.433867>,  <30.872030, 29.855532, 25.287294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731600, 30.200201, 25.433867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722329, 0.000217, 0.691549,
		0.595808, 0.507467, -0.622487,
		-0.351074, 0.861671, 0.366429,
		30.626278, 30.458702, 25.543795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486856, 30.254322, 25.555145>,  <30.872030, 29.855532, 25.287294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486856, 30.254322, 25.555145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.147909, 30.347383, 25.746075>,  <30.944540, 30.403221, 25.860632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.147909, 30.347383, 25.746075>,  <31.486856, 30.254322, 25.555145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147909, 30.347383, 25.746075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516097, 0.149330, 0.843412,
		0.124943, 0.961027, -0.246609,
		-0.847368, 0.232653, 0.477325,
		30.893698, 30.417179, 25.889273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815224, 30.845078, 25.956490>,  <31.486856, 30.254322, 25.555145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815224, 30.845078, 25.956490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466137, 30.759380, 26.131975>,  <31.256685, 30.707962, 26.237267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466137, 30.759380, 26.131975>,  <31.815224, 30.845078, 25.956490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466137, 30.759380, 26.131975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415438, 0.146177, 0.897799,
		-0.256477, 0.965781, -0.038566,
		-0.872715, -0.214243, 0.438713,
		31.204323, 30.695108, 26.263590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821796, 31.330284, 26.407166>,  <31.815224, 30.845078, 25.956490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821796, 31.330284, 26.407166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.568636, 31.056561, 26.552029>,  <31.416740, 30.892326, 26.638947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.568636, 31.056561, 26.552029>,  <31.821796, 31.330284, 26.407166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568636, 31.056561, 26.552029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380571, 0.132386, 0.915227,
		-0.674241, 0.717075, 0.176640,
		-0.632902, -0.684307, 0.362158,
		31.378765, 30.851269, 26.660677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588631, 31.585106, 27.010273>,  <31.821796, 31.330284, 26.407166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588631, 31.585106, 27.010273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527063, 31.193590, 27.064358>,  <31.490124, 30.958681, 27.096807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527063, 31.193590, 27.064358>,  <31.588631, 31.585106, 27.010273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527063, 31.193590, 27.064358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230575, 0.097484, 0.968159,
		-0.960804, 0.180192, 0.210680,
		-0.153916, -0.978789, 0.135211,
		31.480888, 30.899954, 27.104921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421547, 31.589655, 27.691618>,  <31.588631, 31.585106, 27.010273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421547, 31.589655, 27.691618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.479008, 31.205788, 27.594950>,  <31.513485, 30.975468, 27.536949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.479008, 31.205788, 27.594950>,  <31.421547, 31.589655, 27.691618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479008, 31.205788, 27.594950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151191, -0.220055, 0.963700,
		-0.978011, -0.174976, 0.113482,
		0.143652, -0.959666, -0.241671,
		31.522102, 30.917889, 27.522448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029295, 31.135582, 28.141495>,  <31.421547, 31.589655, 27.691618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029295, 31.135582, 28.141495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350309, 30.931673, 28.017513>,  <31.542917, 30.809328, 27.943125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350309, 30.931673, 28.017513>,  <31.029295, 31.135582, 28.141495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350309, 30.931673, 28.017513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312687, -0.083060, 0.946217,
		-0.508099, -0.856291, 0.092740,
		0.802534, -0.509771, -0.309954,
		31.591070, 30.778742, 27.924526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041653, 30.482971, 28.470407>,  <31.029295, 31.135582, 28.141495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041653, 30.482971, 28.470407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415133, 30.556286, 28.347370>,  <31.639219, 30.600275, 28.273548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415133, 30.556286, 28.347370>,  <31.041653, 30.482971, 28.470407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415133, 30.556286, 28.347370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337299, -0.161961, 0.927361,
		0.120156, -0.969626, -0.213045,
		0.933698, 0.183288, -0.307593,
		31.695242, 30.611273, 28.255093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294724, 30.087831, 29.004995>,  <31.041653, 30.482971, 28.470407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294724, 30.087831, 29.004995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613628, 30.270613, 28.847229>,  <31.804972, 30.380281, 28.752569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613628, 30.270613, 28.847229>,  <31.294724, 30.087831, 29.004995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613628, 30.270613, 28.847229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552637, -0.289699, 0.781452,
		0.242824, -0.840993, -0.483495,
		0.797264, 0.456952, -0.394418,
		31.852808, 30.407698, 28.728903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892212, 29.571003, 29.058147>,  <31.294724, 30.087831, 29.004995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892212, 29.571003, 29.058147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.043648, 29.941229, 29.057821>,  <32.134510, 30.163364, 29.057625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.043648, 29.941229, 29.057821>,  <31.892212, 29.571003, 29.058147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043648, 29.941229, 29.057821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628094, -0.256267, 0.734728,
		0.679828, -0.278674, -0.678362,
		0.378591, 0.925564, -0.000816,
		32.157227, 30.218899, 29.057577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650093, 29.662697, 29.197933>,  <31.892212, 29.571003, 29.058147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650093, 29.662697, 29.197933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.516628, 30.029333, 29.286057>,  <32.436550, 30.249315, 29.338930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.516628, 30.029333, 29.286057>,  <32.650093, 29.662697, 29.197933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516628, 30.029333, 29.286057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548023, -0.001556, 0.836462,
		0.767035, 0.399826, -0.501793,
		-0.333658, 0.916590, 0.220307,
		32.416531, 30.304310, 29.352148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011009, 29.162849, 29.374067>,  <32.650093, 29.662697, 29.197933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011009, 29.162849, 29.374067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.401737, 29.080553, 29.397720>,  <33.636173, 29.031176, 29.411911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.401737, 29.080553, 29.397720>,  <33.011009, 29.162849, 29.374067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401737, 29.080553, 29.397720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041579, -0.088613, -0.995198,
		0.209991, 0.974587, -0.078005,
		0.976819, -0.205739, 0.059130,
		33.694782, 29.018831, 29.415459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409290, 29.737326, 29.076008>,  <33.011009, 29.162849, 29.374067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409290, 29.737326, 29.076008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656479, 29.422951, 29.067913>,  <33.804790, 29.234325, 29.063057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656479, 29.422951, 29.067913>,  <33.409290, 29.737326, 29.076008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656479, 29.422951, 29.067913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158020, 0.149380, -0.976071,
		0.770156, 0.599987, 0.216507,
		0.617972, -0.785940, -0.020236,
		33.841869, 29.187168, 29.061842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019981, 29.916803, 28.663975>,  <33.409290, 29.737326, 29.076008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019981, 29.916803, 28.663975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041058, 29.517756, 28.646177>,  <34.053703, 29.278326, 28.635500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041058, 29.517756, 28.646177>,  <34.019981, 29.916803, 28.663975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041058, 29.517756, 28.646177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268130, 0.057052, -0.961692,
		0.961940, 0.038746, 0.270498,
		0.052694, -0.997619, -0.044492,
		34.056866, 29.218470, 28.632830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636391, 29.802402, 28.185032>,  <34.019981, 29.916803, 28.663975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636391, 29.802402, 28.185032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436214, 29.456207, 28.193907>,  <34.316109, 29.248491, 28.199232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436214, 29.456207, 28.193907>,  <34.636391, 29.802402, 28.185032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436214, 29.456207, 28.193907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235283, -0.160619, -0.958563,
		0.833187, -0.474484, 0.284015,
		-0.500441, -0.865486, 0.022188,
		34.286083, 29.196562, 28.200563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996624, 29.388239, 27.763517>,  <34.636391, 29.802402, 28.185032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996624, 29.388239, 27.763517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649208, 29.190863, 27.782063>,  <34.440758, 29.072437, 27.793190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649208, 29.190863, 27.782063>,  <34.996624, 29.388239, 27.763517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649208, 29.190863, 27.782063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009082, -0.077683, -0.996937,
		0.495531, -0.866304, 0.062990,
		-0.868543, -0.493441, 0.046362,
		34.388645, 29.042831, 27.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063267, 28.801611, 27.393917>,  <34.996624, 29.388239, 27.763517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063267, 28.801611, 27.393917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665642, 28.842804, 27.407936>,  <34.427067, 28.867519, 27.416348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665642, 28.842804, 27.407936>,  <35.063267, 28.801611, 27.393917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665642, 28.842804, 27.407936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041999, -0.066114, -0.996928,
		-0.100358, -0.992482, 0.070047,
		-0.994064, 0.102992, 0.035049,
		34.367424, 28.873699, 27.418451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769146, 28.342661, 26.861374>,  <35.063267, 28.801611, 27.393917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769146, 28.342661, 26.861374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472340, 28.603151, 26.925009>,  <34.294254, 28.759445, 26.963190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472340, 28.603151, 26.925009>,  <34.769146, 28.342661, 26.861374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472340, 28.603151, 26.925009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268050, -0.070709, -0.960807,
		-0.614456, -0.755581, 0.227029,
		-0.742020, 0.651228, 0.159086,
		34.249733, 28.798519, 26.972734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187336, 28.060452, 26.473595>,  <34.769146, 28.342661, 26.861374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187336, 28.060452, 26.473595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122803, 28.452471, 26.520025>,  <34.084084, 28.687683, 26.547884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122803, 28.452471, 26.520025>,  <34.187336, 28.060452, 26.473595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122803, 28.452471, 26.520025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372635, 0.048417, -0.926714,
		-0.913846, -0.192763, 0.357390,
		-0.161333, 0.980050, 0.116076,
		34.074402, 28.746487, 26.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642807, 28.165861, 26.116238>,  <34.187336, 28.060452, 26.473595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642807, 28.165861, 26.116238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795738, 28.532404, 26.163752>,  <33.887497, 28.752331, 26.192261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795738, 28.532404, 26.163752>,  <33.642807, 28.165861, 26.116238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795738, 28.532404, 26.163752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270565, 0.233939, -0.933845,
		-0.883526, 0.324898, 0.337377,
		0.382330, 0.916359, 0.118786,
		33.910439, 28.807312, 26.199387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104958, 28.587063, 26.014822>,  <33.642807, 28.165861, 26.116238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104958, 28.587063, 26.014822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440800, 28.793934, 25.948389>,  <33.642307, 28.918056, 25.908529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440800, 28.793934, 25.948389>,  <33.104958, 28.587063, 26.014822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440800, 28.793934, 25.948389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250668, 0.097650, -0.963136,
		-0.481894, 0.850289, 0.211628,
		0.839609, 0.517178, -0.166083,
		33.692684, 28.949087, 25.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858597, 29.101788, 25.626497>,  <33.104958, 28.587063, 26.014822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858597, 29.101788, 25.626497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254257, 29.111343, 25.568510>,  <33.491653, 29.117077, 25.533718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254257, 29.111343, 25.568510>,  <32.858597, 29.101788, 25.626497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254257, 29.111343, 25.568510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145423, 0.299857, -0.942835,
		0.020946, 0.953685, 0.300077,
		0.989148, 0.023889, -0.144969,
		33.551003, 29.118509, 25.525019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906479, 29.540649, 25.085428>,  <32.858597, 29.101788, 25.626497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906479, 29.540649, 25.085428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278313, 29.393204, 25.085058>,  <33.501411, 29.304737, 25.084837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278313, 29.393204, 25.085058>,  <32.906479, 29.540649, 25.085428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278313, 29.393204, 25.085058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042184, 0.108872, -0.993160,
		0.366192, 0.923186, 0.116755,
		0.929583, -0.368612, -0.000924,
		33.557186, 29.282619, 25.084782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222614, 30.010704, 24.779495>,  <32.906479, 29.540649, 25.085428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222614, 30.010704, 24.779495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450378, 29.684401, 24.738871>,  <33.587036, 29.488619, 24.714497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450378, 29.684401, 24.738871>,  <33.222614, 30.010704, 24.779495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450378, 29.684401, 24.738871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076922, 0.070129, -0.994568,
		0.818449, 0.574125, -0.022818,
		0.569406, -0.815759, -0.101559,
		33.621201, 29.439672, 24.708403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712608, 30.208929, 24.291821>,  <33.222614, 30.010704, 24.779495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712608, 30.208929, 24.291821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678429, 29.810402, 24.288982>,  <33.657921, 29.571285, 24.287279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678429, 29.810402, 24.288982>,  <33.712608, 30.208929, 24.291821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678429, 29.810402, 24.288982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066009, 0.012766, -0.997737,
		0.994153, -0.084792, -0.066857,
		-0.085454, -0.996317, -0.007094,
		33.652794, 29.511507, 24.286854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260876, 29.912861, 23.737051>,  <33.712608, 30.208929, 24.291821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260876, 29.912861, 23.737051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950672, 29.669094, 23.803017>,  <33.764549, 29.522835, 23.842596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950672, 29.669094, 23.803017>,  <34.260876, 29.912861, 23.737051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950672, 29.669094, 23.803017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207603, -0.000527, -0.978213,
		0.596227, -0.792849, -0.126108,
		-0.775509, -0.609418, 0.164912,
		33.718018, 29.486269, 23.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323357, 29.335464, 23.325493>,  <34.260876, 29.912861, 23.737051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323357, 29.335464, 23.325493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932266, 29.364508, 23.404264>,  <33.697613, 29.381933, 23.451529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932266, 29.364508, 23.404264>,  <34.323357, 29.335464, 23.325493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932266, 29.364508, 23.404264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203724, -0.102553, -0.973642,
		-0.050497, -0.992074, 0.115061,
		-0.977725, 0.072606, 0.196931,
		33.638950, 29.386290, 23.463345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143269, 29.143635, 22.652441>,  <34.323357, 29.335464, 23.325493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143269, 29.143635, 22.652441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802586, 29.225975, 22.845201>,  <33.598175, 29.275379, 22.960857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802586, 29.225975, 22.845201>,  <34.143269, 29.143635, 22.652441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802586, 29.225975, 22.845201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502164, -0.057773, -0.862841,
		-0.149779, -0.976876, 0.152578,
		-0.851703, 0.205854, 0.481898,
		33.547073, 29.287729, 22.989771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741631, 28.666449, 22.362488>,  <34.143269, 29.143635, 22.652441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741631, 28.666449, 22.362488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508602, 28.958738, 22.504841>,  <33.368786, 29.134111, 22.590252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508602, 28.958738, 22.504841>,  <33.741631, 28.666449, 22.362488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508602, 28.958738, 22.504841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402081, 0.121424, -0.907517,
		-0.706355, -0.671790, 0.223072,
		-0.582574, 0.730722, 0.355882,
		33.333828, 29.177956, 22.611605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018116, 28.521194, 22.151356>,  <33.741631, 28.666449, 22.362488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018116, 28.521194, 22.151356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023724, 28.910992, 22.240950>,  <33.027088, 29.144869, 22.294706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.023724, 28.910992, 22.240950>,  <33.018116, 28.521194, 22.151356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023724, 28.910992, 22.240950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602249, 0.187048, -0.776086,
		-0.798185, -0.124012, 0.589509,
		0.014023, 0.974492, 0.223985,
		33.027931, 29.203339, 22.308146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.205357, 28.823914, 22.193975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445984, 29.132095, 22.109589>,  <32.590363, 29.317005, 22.058956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445984, 29.132095, 22.109589>,  <32.205357, 28.823914, 22.193975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445984, 29.132095, 22.109589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587034, 0.247275, -0.770874,
		-0.541758, 0.587581, 0.601038,
		0.601573, 0.770457, -0.210967,
		32.626457, 29.363232, 22.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730892, 29.290047, 22.196989>,  <32.205357, 28.823914, 22.193975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730892, 29.290047, 22.196989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047676, 29.451664, 22.013882>,  <32.237747, 29.548635, 21.904018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047676, 29.451664, 22.013882>,  <31.730892, 29.290047, 22.196989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047676, 29.451664, 22.013882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599466, 0.372169, -0.708611,
		-0.115945, 0.835606, 0.536954,
		0.791958, 0.404045, -0.457766,
		32.285263, 29.572878, 21.876553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616146, 29.924173, 22.194685>,  <31.730892, 29.290047, 22.196989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616146, 29.924173, 22.194685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.865294, 29.860647, 21.888269>,  <32.014782, 29.822533, 21.704420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.865294, 29.860647, 21.888269>,  <31.616146, 29.924173, 22.194685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865294, 29.860647, 21.888269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634134, 0.470949, -0.613254,
		0.458158, 0.867747, 0.192630,
		0.622868, -0.158813, -0.766037,
		32.052155, 29.813004, 21.658459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603189, 30.529324, 21.729908>,  <31.616146, 29.924173, 22.194685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603189, 30.529324, 21.729908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.760609, 30.261972, 21.477436>,  <31.855061, 30.101561, 21.325953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.760609, 30.261972, 21.477436>,  <31.603189, 30.529324, 21.729908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760609, 30.261972, 21.477436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542618, 0.385339, -0.746378,
		0.742082, 0.636226, -0.211026,
		0.393549, -0.668380, -0.631180,
		31.878674, 30.061459, 21.288082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612749, 30.844645, 21.164684>,  <31.603189, 30.529324, 21.729908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612749, 30.844645, 21.164684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701485, 30.480947, 21.023794>,  <31.754726, 30.262730, 20.939260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701485, 30.480947, 21.023794>,  <31.612749, 30.844645, 21.164684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701485, 30.480947, 21.023794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342906, 0.265407, -0.901097,
		0.912799, 0.320679, -0.252907,
		0.221840, -0.909243, -0.352226,
		31.768036, 30.208174, 20.918127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017334, 30.990553, 20.601336>,  <31.612749, 30.844645, 21.164684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017334, 30.990553, 20.601336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847738, 30.629946, 20.566696>,  <31.745981, 30.413582, 20.545912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847738, 30.629946, 20.566696>,  <32.017334, 30.990553, 20.601336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847738, 30.629946, 20.566696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425691, 0.282771, -0.859551,
		0.799389, -0.327573, -0.503660,
		-0.423986, -0.901519, -0.086600,
		31.720543, 30.359489, 20.540716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289707, 30.665983, 20.023542>,  <32.017334, 30.990553, 20.601336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289707, 30.665983, 20.023542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927986, 30.498707, 20.057831>,  <31.710953, 30.398340, 20.078403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927986, 30.498707, 20.057831>,  <32.289707, 30.665983, 20.023542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927986, 30.498707, 20.057831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137257, 0.094691, -0.985999,
		0.404221, -0.903409, -0.143030,
		-0.904304, -0.418193, 0.085723,
		31.656694, 30.373249, 20.083548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280243, 30.167929, 19.452126>,  <32.289707, 30.665983, 20.023542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280243, 30.167929, 19.452126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903818, 30.187057, 19.586063>,  <31.677963, 30.198534, 19.666426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903818, 30.187057, 19.586063>,  <32.280243, 30.167929, 19.452126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903818, 30.187057, 19.586063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333449, 0.034927, -0.942121,
		-0.056753, -0.998245, -0.016921,
		-0.941058, 0.047826, 0.334846,
		31.621500, 30.201405, 19.686518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926792, 29.494101, 19.194971>,  <32.280243, 30.167929, 19.452126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926792, 29.494101, 19.194971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668005, 29.788504, 19.274694>,  <31.512733, 29.965145, 19.322529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668005, 29.788504, 19.274694>,  <31.926792, 29.494101, 19.194971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668005, 29.788504, 19.274694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183331, 0.103572, -0.977580,
		-0.740151, -0.669001, 0.067926,
		-0.646967, 0.736010, 0.199308,
		31.473915, 30.009306, 19.334486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330732, 29.359678, 18.796932>,  <31.926792, 29.494101, 19.194971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330732, 29.359678, 18.796932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320831, 29.742092, 18.913818>,  <31.314892, 29.971540, 18.983950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320831, 29.742092, 18.913818>,  <31.330732, 29.359678, 18.796932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320831, 29.742092, 18.913818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118373, 0.287445, -0.950454,
		-0.992661, -0.058114, 0.106054,
		-0.024750, 0.956032, 0.292214,
		31.313406, 30.028902, 19.001482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772243, 29.726339, 18.336067>,  <31.330732, 29.359678, 18.796932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772243, 29.726339, 18.336067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976671, 30.041521, 18.473436>,  <31.099327, 30.230631, 18.555857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976671, 30.041521, 18.473436>,  <30.772243, 29.726339, 18.336067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976671, 30.041521, 18.473436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050604, 0.371266, -0.927147,
		-0.858050, 0.491213, 0.149868,
		0.511067, 0.787954, 0.343422,
		31.129992, 30.277906, 18.576464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420723, 30.400961, 18.173309>,  <30.772243, 29.726339, 18.336067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420723, 30.400961, 18.173309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810671, 30.489712, 18.181257>,  <31.044640, 30.542963, 18.186026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810671, 30.489712, 18.181257>,  <30.420723, 30.400961, 18.173309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810671, 30.489712, 18.181257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125352, 0.620121, -0.774427,
		-0.184151, 0.752476, 0.632352,
		0.974872, 0.221878, 0.019872,
		31.103132, 30.556274, 18.187220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409225, 30.908789, 17.753727>,  <30.420723, 30.400961, 18.173309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409225, 30.908789, 17.753727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807327, 30.884270, 17.783962>,  <31.046188, 30.869558, 17.802103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807327, 30.884270, 17.783962>,  <30.409225, 30.908789, 17.753727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807327, 30.884270, 17.783962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096998, 0.561761, -0.821594,
		0.007901, 0.825025, 0.565041,
		0.995253, -0.061299, 0.075587,
		31.105904, 30.865881, 17.806639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530178, 31.493776, 17.597542>,  <30.409225, 30.908789, 17.753727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530178, 31.493776, 17.597542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891407, 31.334497, 17.533163>,  <31.108145, 31.238930, 17.494535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891407, 31.334497, 17.533163>,  <30.530178, 31.493776, 17.597542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891407, 31.334497, 17.533163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092004, 0.545392, -0.833116,
		0.419523, 0.737555, 0.529163,
		0.903070, -0.398197, -0.160947,
		31.162329, 31.215038, 17.484879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017811, 31.985558, 17.517559>,  <30.530178, 31.493776, 17.597542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017811, 31.985558, 17.517559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.186604, 31.675526, 17.329437>,  <31.287880, 31.489506, 17.216564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.186604, 31.675526, 17.329437>,  <31.017811, 31.985558, 17.517559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186604, 31.675526, 17.329437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211940, 0.588714, -0.780062,
		0.881483, 0.229496, 0.412697,
		0.421981, -0.775079, -0.470302,
		31.313198, 31.443003, 17.188347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605314, 32.180634, 17.148569>,  <31.017811, 31.985558, 17.517559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605314, 32.180634, 17.148569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531395, 31.829340, 16.972139>,  <31.487043, 31.618563, 16.866282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531395, 31.829340, 16.972139>,  <31.605314, 32.180634, 17.148569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531395, 31.829340, 16.972139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033274, 0.442956, -0.895926,
		0.982213, -0.180244, -0.052636,
		-0.184800, -0.878238, -0.441075,
		31.475954, 31.565868, 16.839817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088570, 32.150677, 16.631495>,  <31.605314, 32.180634, 17.148569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088570, 32.150677, 16.631495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815145, 31.870468, 16.549507>,  <31.651091, 31.702343, 16.500315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.815145, 31.870468, 16.549507>,  <32.088570, 32.150677, 16.631495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815145, 31.870468, 16.549507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068235, 0.218260, -0.973502,
		0.726693, -0.679438, -0.101395,
		-0.683565, -0.700519, -0.204969,
		31.610077, 31.660313, 16.488016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289799, 31.761835, 16.032366>,  <32.088570, 32.150677, 16.631495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289799, 31.761835, 16.032366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891960, 31.749786, 16.072092>,  <31.653255, 31.742558, 16.095928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891960, 31.749786, 16.072092>,  <32.289799, 31.761835, 16.032366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891960, 31.749786, 16.072092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103316, 0.196530, -0.975039,
		0.009848, -0.980035, -0.198581,
		-0.994600, -0.030119, 0.099318,
		31.593580, 31.740749, 16.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012486, 31.345816, 15.448770>,  <32.289799, 31.761835, 16.032366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012486, 31.345816, 15.448770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707880, 31.575876, 15.568306>,  <31.525118, 31.713913, 15.640028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707880, 31.575876, 15.568306>,  <32.012486, 31.345816, 15.448770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707880, 31.575876, 15.568306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106488, 0.343780, -0.932993,
		-0.639347, -0.742305, -0.200545,
		-0.761509, 0.575150, 0.298841,
		31.479427, 31.748421, 15.657958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669178, 31.394461, 14.793159>,  <32.012486, 31.345816, 15.448770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669178, 31.394461, 14.793159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508982, 31.669538, 15.035376>,  <31.412863, 31.834585, 15.180706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508982, 31.669538, 15.035376>,  <31.669178, 31.394461, 14.793159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508982, 31.669538, 15.035376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220118, 0.569300, -0.792115,
		-0.889469, -0.450526, -0.076626,
		-0.400492, 0.687695, 0.605543,
		31.388834, 31.875847, 15.217038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939814, 31.438770, 14.524577>,  <31.669178, 31.394461, 14.793159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939814, 31.438770, 14.524577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001123, 31.771847, 14.737419>,  <31.037909, 31.971693, 14.865125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001123, 31.771847, 14.737419>,  <30.939814, 31.438770, 14.524577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001123, 31.771847, 14.737419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395079, 0.545197, -0.739373,
		-0.905770, -0.096897, 0.412542,
		0.153273, 0.832689, 0.532105,
		31.047106, 32.021652, 14.897051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410013, 31.953156, 14.346933>,  <30.939814, 31.438770, 14.524577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410013, 31.953156, 14.346933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695803, 32.182014, 14.508018>,  <30.867277, 32.319328, 14.604669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695803, 32.182014, 14.508018>,  <30.410013, 31.953156, 14.346933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695803, 32.182014, 14.508018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145821, 0.684709, -0.714080,
		-0.684298, 0.451468, 0.572637,
		0.714474, 0.572146, 0.402711,
		30.910145, 32.353657, 14.628831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121185, 32.641300, 14.579868>,  <30.410013, 31.953156, 14.346933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121185, 32.641300, 14.579868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495850, 32.633080, 14.440016>,  <30.720648, 32.628147, 14.356104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495850, 32.633080, 14.440016>,  <30.121185, 32.641300, 14.579868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495850, 32.633080, 14.440016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147374, 0.882470, -0.446686,
		0.317720, 0.469920, 0.823547,
		0.936662, -0.020552, -0.349632,
		30.776848, 32.626915, 14.335126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605637, 32.772434, 14.105282>,  <30.121185, 32.641300, 14.579868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605637, 32.772434, 14.105282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377899, 33.100346, 14.080620>,  <29.241257, 33.297092, 14.065823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.377899, 33.100346, 14.080620>,  <29.605637, 32.772434, 14.105282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377899, 33.100346, 14.080620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090893, 0.137309, 0.986349,
		0.817058, 0.555969, -0.152689,
		-0.569346, 0.819783, -0.061655,
		29.207096, 33.346279, 14.062123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995611, 33.396027, 14.366829>,  <29.605637, 32.772434, 14.105282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995611, 33.396027, 14.366829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598450, 33.423027, 14.405992>,  <29.360153, 33.439228, 14.429489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598450, 33.423027, 14.405992>,  <29.995611, 33.396027, 14.366829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598450, 33.423027, 14.405992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112535, 0.267174, 0.957055,
		0.038442, 0.961282, -0.272874,
		-0.992904, 0.067499, 0.097907,
		29.300579, 33.443275, 14.435364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935019, 33.858704, 14.867081>,  <29.995611, 33.396027, 14.366829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935019, 33.858704, 14.867081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548534, 33.755810, 14.860549>,  <29.316645, 33.694073, 14.856630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548534, 33.755810, 14.860549>,  <29.935019, 33.858704, 14.867081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548534, 33.755810, 14.860549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094059, 0.292896, 0.951507,
		-0.239981, 0.920891, -0.307194,
		-0.966210, -0.257237, -0.016329,
		29.258671, 33.678638, 14.855650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588364, 34.336761, 15.301229>,  <29.935019, 33.858704, 14.867081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588364, 34.336761, 15.301229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353579, 34.014320, 15.271079>,  <29.212708, 33.820858, 15.252989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353579, 34.014320, 15.271079>,  <29.588364, 34.336761, 15.301229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353579, 34.014320, 15.271079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087469, -0.029418, 0.995733,
		-0.804877, 0.591049, -0.053241,
		-0.586961, -0.806099, -0.075376,
		29.177490, 33.772491, 15.248466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944372, 34.430408, 15.662263>,  <29.588364, 34.336761, 15.301229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944372, 34.430408, 15.662263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010920, 34.036221, 15.648545>,  <29.050848, 33.799709, 15.640315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010920, 34.036221, 15.648545>,  <28.944372, 34.430408, 15.662263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010920, 34.036221, 15.648545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064564, -0.045591, 0.996872,
		-0.983948, -0.163634, -0.071211,
		0.166369, -0.985467, -0.034294,
		29.060831, 33.740582, 15.638257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744635, 34.270500, 16.294281>,  <28.944372, 34.430408, 15.662263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744635, 34.270500, 16.294281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889551, 33.916252, 16.178057>,  <28.976501, 33.703705, 16.108322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889551, 33.916252, 16.178057>,  <28.744635, 34.270500, 16.294281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889551, 33.916252, 16.178057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008602, -0.314901, 0.949086,
		-0.932025, -0.341345, -0.121704,
		0.362291, -0.885619, -0.290559,
		28.998238, 33.650566, 16.090889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395599, 33.866199, 16.750834>,  <28.744635, 34.270500, 16.294281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395599, 33.866199, 16.750834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.663052, 33.617512, 16.587666>,  <28.823523, 33.468300, 16.489765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.663052, 33.617512, 16.587666>,  <28.395599, 33.866199, 16.750834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663052, 33.617512, 16.587666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004454, -0.545217, 0.838283,
		-0.743584, -0.562316, -0.361778,
		0.668628, -0.621723, -0.407919,
		28.863640, 33.430996, 16.465290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240629, 33.162575, 16.925789>,  <28.395599, 33.866199, 16.750834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240629, 33.162575, 16.925789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632196, 33.181915, 16.846409>,  <28.867136, 33.193520, 16.798780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632196, 33.181915, 16.846409>,  <28.240629, 33.162575, 16.925789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632196, 33.181915, 16.846409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187796, -0.595128, 0.781381,
		-0.080325, -0.802176, -0.591661,
		0.978918, 0.048347, -0.198449,
		28.925873, 33.196419, 16.786875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462788, 32.517109, 17.091476>,  <28.240629, 33.162575, 16.925789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462788, 32.517109, 17.091476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795746, 32.737423, 17.115969>,  <28.995522, 32.869610, 17.130665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795746, 32.737423, 17.115969>,  <28.462788, 32.517109, 17.091476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795746, 32.737423, 17.115969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242602, -0.461507, 0.853320,
		0.498255, -0.695447, -0.517780,
		0.832398, 0.550786, 0.061231,
		29.045465, 32.902660, 17.134338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062445, 32.037560, 17.258135>,  <28.462788, 32.517109, 17.091476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062445, 32.037560, 17.258135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.147017, 32.408195, 17.382542>,  <29.197760, 32.630577, 17.457186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.147017, 32.408195, 17.382542>,  <29.062445, 32.037560, 17.258135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147017, 32.408195, 17.382542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314121, -0.365748, 0.876103,
		0.925541, -0.087536, -0.368390,
		0.211429, 0.926588, 0.311018,
		29.210445, 32.686172, 17.475847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779560, 32.029968, 17.448029>,  <29.062445, 32.037560, 17.258135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779560, 32.029968, 17.448029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628122, 32.345833, 17.641150>,  <29.537260, 32.535351, 17.757023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.628122, 32.345833, 17.641150>,  <29.779560, 32.029968, 17.448029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628122, 32.345833, 17.641150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300361, -0.388580, 0.871085,
		0.875471, 0.474803, -0.090070,
		-0.378594, 0.789663, 0.482802,
		29.514544, 32.582733, 17.785990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279018, 32.131447, 18.056307>,  <29.779560, 32.029968, 17.448029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279018, 32.131447, 18.056307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958160, 32.341396, 18.170197>,  <29.765646, 32.467365, 18.238531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958160, 32.341396, 18.170197>,  <30.279018, 32.131447, 18.056307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958160, 32.341396, 18.170197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052597, -0.412864, 0.909273,
		0.594808, 0.744344, 0.303570,
		-0.802145, 0.524876, 0.284725,
		29.717516, 32.498859, 18.255613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444530, 32.296230, 18.696962>,  <30.279018, 32.131447, 18.056307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444530, 32.296230, 18.696962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046528, 32.328106, 18.672913>,  <29.807726, 32.347229, 18.658484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046528, 32.328106, 18.672913>,  <30.444530, 32.296230, 18.696962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046528, 32.328106, 18.672913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090760, -0.471410, 0.877232,
		0.041561, 0.878307, 0.476288,
		-0.995005, 0.079687, -0.060123,
		29.748026, 32.352013, 18.654875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184374, 32.655685, 19.353947>,  <30.444530, 32.296230, 18.696962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184374, 32.655685, 19.353947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881056, 32.449001, 19.194950>,  <29.699066, 32.324989, 19.099552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881056, 32.449001, 19.194950>,  <30.184374, 32.655685, 19.353947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881056, 32.449001, 19.194950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174643, -0.426433, 0.887499,
		-0.628086, 0.742403, 0.233121,
		-0.758293, -0.516713, -0.397492,
		29.653568, 32.293987, 19.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858793, 32.556473, 19.954117>,  <30.184374, 32.655685, 19.353947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858793, 32.556473, 19.954117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647512, 32.324867, 19.705683>,  <29.520744, 32.185905, 19.556622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.647512, 32.324867, 19.705683>,  <29.858793, 32.556473, 19.954117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647512, 32.324867, 19.705683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146449, -0.658365, 0.738314,
		-0.836393, 0.480937, 0.262955,
		-0.528203, -0.579012, -0.621085,
		29.489052, 32.151165, 19.519358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140846, 32.583256, 20.157423>,  <29.858793, 32.556473, 19.954117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140846, 32.583256, 20.157423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183680, 32.246319, 19.946144>,  <29.209379, 32.044155, 19.819376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183680, 32.246319, 19.946144>,  <29.140846, 32.583256, 20.157423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183680, 32.246319, 19.946144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251373, -0.536929, 0.805307,
		-0.961949, 0.046542, -0.269237,
		0.107080, -0.842343, -0.528197,
		29.215803, 31.993616, 19.787685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583330, 32.141190, 20.447073>,  <29.140846, 32.583256, 20.157423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583330, 32.141190, 20.447073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844631, 31.903671, 20.259171>,  <29.001411, 31.761160, 20.146429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844631, 31.903671, 20.259171>,  <28.583330, 32.141190, 20.447073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844631, 31.903671, 20.259171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025403, -0.637272, 0.770220,
		-0.756715, -0.491214, -0.431382,
		0.653251, -0.593796, -0.469755,
		29.040606, 31.725533, 20.118244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207899, 31.559525, 20.458773>,  <28.583330, 32.141190, 20.447073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207899, 31.559525, 20.458773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594688, 31.466784, 20.416430>,  <28.826761, 31.411139, 20.391024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594688, 31.466784, 20.416430>,  <28.207899, 31.559525, 20.458773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594688, 31.466784, 20.416430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010331, -0.450641, 0.892645,
		-0.254665, -0.862071, -0.438154,
		0.966974, -0.231852, -0.105856,
		28.884781, 31.397228, 20.384672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270670, 30.917913, 20.632172>,  <28.207899, 31.559525, 20.458773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270670, 30.917913, 20.632172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.652187, 31.033134, 20.666351>,  <28.881098, 31.102268, 20.686859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.652187, 31.033134, 20.666351>,  <28.270670, 30.917913, 20.632172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652187, 31.033134, 20.666351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047740, -0.426064, 0.903433,
		0.296644, -0.857609, -0.420129,
		0.953794, 0.288055, 0.085447,
		28.938326, 31.119551, 20.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654449, 30.330582, 21.001328>,  <28.270670, 30.917913, 20.632172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654449, 30.330582, 21.001328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889914, 30.648615, 21.059734>,  <29.031191, 30.839436, 21.094778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889914, 30.648615, 21.059734>,  <28.654449, 30.330582, 21.001328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889914, 30.648615, 21.059734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090423, -0.244260, 0.965485,
		0.803308, -0.555138, -0.215680,
		0.588659, 0.795084, 0.146019,
		29.066511, 30.887140, 21.103540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261549, 30.063604, 21.261297>,  <28.654449, 30.330582, 21.001328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261549, 30.063604, 21.261297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271997, 30.448999, 21.367887>,  <29.278267, 30.680237, 21.431841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271997, 30.448999, 21.367887>,  <29.261549, 30.063604, 21.261297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271997, 30.448999, 21.367887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237226, -0.264927, 0.934632,
		0.971103, 0.038801, -0.235485,
		0.026122, 0.963488, 0.266476,
		29.279835, 30.738045, 21.447830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.297920, 28.362906, 24.610722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084404, 28.700682, 24.628561>,  <33.956295, 28.903347, 24.639265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084404, 28.700682, 24.628561>,  <34.297920, 28.362906, 24.610722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084404, 28.700682, 24.628561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218037, 0.086482, 0.972101,
		0.817025, 0.528621, -0.230282,
		-0.533788, 0.844441, 0.044601,
		33.924267, 28.954014, 24.641941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714428, 28.685659, 24.896563>,  <34.297920, 28.362906, 24.610722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714428, 28.685659, 24.896563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376873, 28.888479, 24.966713>,  <34.174339, 29.010172, 25.008802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376873, 28.888479, 24.966713>,  <34.714428, 28.685659, 24.896563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376873, 28.888479, 24.966713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155962, -0.080922, 0.984443,
		0.513354, 0.858109, -0.010791,
		-0.843886, 0.507050, 0.175375,
		34.123707, 29.040594, 25.019325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851311, 29.128971, 25.433842>,  <34.714428, 28.685659, 24.896563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851311, 29.128971, 25.433842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451458, 29.138580, 25.438839>,  <34.211548, 29.144346, 25.441837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451458, 29.138580, 25.438839>,  <34.851311, 29.128971, 25.433842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451458, 29.138580, 25.438839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016995, 0.197408, 0.980174,
		0.021083, 0.980027, -0.197743,
		-0.999633, 0.024025, 0.012494,
		34.151569, 29.145788, 25.442587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767849, 29.711899, 25.806492>,  <34.851311, 29.128971, 25.433842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767849, 29.711899, 25.806492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.443993, 29.477535, 25.820309>,  <34.249680, 29.336918, 25.828598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.443993, 29.477535, 25.820309>,  <34.767849, 29.711899, 25.806492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443993, 29.477535, 25.820309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015008, 0.079501, 0.996722,
		-0.586733, 0.806468, -0.073160,
		-0.809641, -0.585908, 0.034542,
		34.201099, 29.301764, 25.830671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381340, 29.993261, 26.273111>,  <34.767849, 29.711899, 25.806492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381340, 29.993261, 26.273111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279232, 29.606514, 26.272291>,  <34.217968, 29.374466, 26.271799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.279232, 29.606514, 26.272291>,  <34.381340, 29.993261, 26.273111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279232, 29.606514, 26.272291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070749, 0.016564, 0.997357,
		-0.964277, 0.254745, -0.072634,
		-0.255274, -0.966866, -0.002050,
		34.202648, 29.316454, 26.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836723, 30.019623, 26.714314>,  <34.381340, 29.993261, 26.273111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836723, 30.019623, 26.714314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941765, 29.634329, 26.691622>,  <34.004791, 29.403152, 26.678007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941765, 29.634329, 26.691622>,  <33.836723, 30.019623, 26.714314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941765, 29.634329, 26.691622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074821, -0.078943, 0.994067,
		-0.961997, -0.256806, -0.092801,
		0.262608, -0.963233, -0.056729,
		34.020546, 29.345358, 26.674603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296951, 29.645695, 27.057501>,  <33.836723, 30.019623, 26.714314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296951, 29.645695, 27.057501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.612728, 29.400265, 27.050516>,  <33.802193, 29.253006, 27.046326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.612728, 29.400265, 27.050516>,  <33.296951, 29.645695, 27.057501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612728, 29.400265, 27.050516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050938, -0.093832, 0.994284,
		-0.611707, -0.784041, -0.105329,
		0.789442, -0.613576, -0.017460,
		33.849560, 29.216192, 27.045279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100510, 29.154522, 27.543318>,  <33.296951, 29.645695, 27.057501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100510, 29.154522, 27.543318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.493073, 29.095079, 27.494732>,  <33.728611, 29.059414, 27.465580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.493073, 29.095079, 27.494732>,  <33.100510, 29.154522, 27.543318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493073, 29.095079, 27.494732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092986, -0.185493, 0.978236,
		-0.167889, -0.971346, -0.168228,
		0.981410, -0.148592, -0.121463,
		33.787495, 29.050497, 27.458292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218987, 28.502176, 27.876411>,  <33.100510, 29.154522, 27.543318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218987, 28.502176, 27.876411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.555988, 28.717430, 27.866602>,  <33.758190, 28.846582, 27.860716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.555988, 28.717430, 27.866602>,  <33.218987, 28.502176, 27.876411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555988, 28.717430, 27.866602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101935, -0.114552, 0.988174,
		0.528960, -0.835039, -0.151365,
		0.842503, 0.538133, -0.024526,
		33.808739, 28.878870, 27.859243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502464, 28.072744, 28.249331>,  <33.218987, 28.502176, 27.876411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502464, 28.072744, 28.249331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729118, 28.402212, 28.240461>,  <33.865112, 28.599894, 28.235140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729118, 28.402212, 28.240461>,  <33.502464, 28.072744, 28.249331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729118, 28.402212, 28.240461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114708, -0.052209, 0.992026,
		0.815946, -0.564659, -0.124066,
		0.566634, 0.823671, -0.022171,
		33.899109, 28.649313, 28.233810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002003, 27.916374, 28.704769>,  <33.502464, 28.072744, 28.249331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002003, 27.916374, 28.704769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.008514, 28.315056, 28.672974>,  <34.012421, 28.554264, 28.653896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.008514, 28.315056, 28.672974>,  <34.002003, 27.916374, 28.704769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008514, 28.315056, 28.672974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075719, 0.078040, 0.994071,
		0.996996, -0.022205, -0.074198,
		0.016283, 0.996703, -0.079486,
		34.013401, 28.614067, 28.649128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639904, 28.135942, 29.002424>,  <34.002003, 27.916374, 28.704769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639904, 28.135942, 29.002424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.391705, 28.449381, 29.014820>,  <34.242786, 28.637444, 29.022257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.391705, 28.449381, 29.014820>,  <34.639904, 28.135942, 29.002424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391705, 28.449381, 29.014820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266798, 0.173777, 0.947956,
		0.737432, 0.596469, -0.316890,
		-0.620495, 0.783598, 0.030988,
		34.205555, 28.684460, 29.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944164, 28.597151, 29.439711>,  <34.639904, 28.135942, 29.002424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944164, 28.597151, 29.439711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579613, 28.761017, 29.423920>,  <34.360882, 28.859337, 29.414446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.579613, 28.761017, 29.423920>,  <34.944164, 28.597151, 29.439711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579613, 28.761017, 29.423920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122947, 0.362544, 0.923821,
		0.392767, 0.837101, -0.380784,
		-0.911382, 0.409663, -0.039476,
		34.306198, 28.883915, 29.412077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974155, 29.253553, 29.682583>,  <34.944164, 28.597151, 29.439711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974155, 29.253553, 29.682583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.597946, 29.133043, 29.745380>,  <34.372219, 29.060738, 29.783060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.597946, 29.133043, 29.745380>,  <34.974155, 29.253553, 29.682583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597946, 29.133043, 29.745380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040267, 0.360003, 0.932082,
		-0.337332, 0.882967, -0.326460,
		-0.940524, -0.301275, 0.156995,
		34.315788, 29.042662, 29.792479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016861, 30.002119, 30.045872>,  <34.974155, 29.253553, 29.682583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016861, 30.002119, 30.045872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.280411, 30.299976, 30.003170>,  <35.438541, 30.478691, 29.977549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.280411, 30.299976, 30.003170>,  <35.016861, 30.002119, 30.045872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280411, 30.299976, 30.003170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736220, 0.609154, -0.294807,
		-0.154497, 0.272833, 0.949575,
		0.658871, 0.744643, -0.106753,
		35.478073, 30.523369, 29.971144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724590, 30.709417, 30.402119>,  <35.016861, 30.002119, 30.045872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724590, 30.709417, 30.402119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993153, 30.794209, 30.118069>,  <35.154289, 30.845083, 29.947639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993153, 30.794209, 30.118069>,  <34.724590, 30.709417, 30.402119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993153, 30.794209, 30.118069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536975, 0.799552, -0.269027,
		0.510753, 0.561946, 0.650652,
		0.671408, 0.211978, -0.710124,
		35.194576, 30.857801, 29.905031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858376, 31.375959, 30.449871>,  <34.724590, 30.709417, 30.402119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858376, 31.375959, 30.449871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.980824, 31.333752, 30.071421>,  <35.054291, 31.308426, 29.844351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.980824, 31.333752, 30.071421>,  <34.858376, 31.375959, 30.449871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980824, 31.333752, 30.071421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549035, 0.792339, -0.266008,
		0.777723, 0.600887, 0.184614,
		0.306118, -0.105521, -0.946128,
		35.072659, 31.302095, 29.787582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180996, 31.933821, 30.186069>,  <34.858376, 31.375959, 30.449871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180996, 31.933821, 30.186069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.075459, 31.771835, 29.835894>,  <35.012138, 31.674644, 29.625788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.075459, 31.771835, 29.835894>,  <35.180996, 31.933821, 30.186069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075459, 31.771835, 29.835894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493281, 0.836585, -0.238327,
		0.828893, 0.368957, -0.420485,
		-0.263839, -0.404964, -0.875439,
		34.996307, 31.650347, 29.573261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109451, 32.521744, 29.744013>,  <35.180996, 31.933821, 30.186069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109451, 32.521744, 29.744013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.926674, 32.223949, 29.549307>,  <34.817009, 32.045273, 29.432484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.926674, 32.223949, 29.549307>,  <35.109451, 32.521744, 29.744013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926674, 32.223949, 29.549307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565668, 0.665539, -0.486907,
		0.686459, 0.052860, -0.725245,
		-0.456941, -0.744489, -0.486766,
		34.789593, 32.000603, 29.403276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753944, 32.827934, 29.234610>,  <35.109451, 32.521744, 29.744013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753944, 32.827934, 29.234610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.709759, 32.461220, 29.081095>,  <34.683247, 32.241192, 28.988985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.709759, 32.461220, 29.081095>,  <34.753944, 32.827934, 29.234610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709759, 32.461220, 29.081095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473579, 0.388049, -0.790659,
		0.873797, 0.094414, -0.477038,
		-0.110465, -0.916790, -0.383788,
		34.676620, 32.186184, 28.965958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120323, 32.664997, 28.498745>,  <34.753944, 32.827934, 29.234610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120323, 32.664997, 28.498745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784039, 32.456055, 28.555801>,  <34.582268, 32.330688, 28.590034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784039, 32.456055, 28.555801>,  <35.120323, 32.664997, 28.498745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784039, 32.456055, 28.555801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406761, 0.435362, -0.803122,
		0.357415, -0.733216, -0.578489,
		-0.840714, -0.522355, 0.142639,
		34.531826, 32.299347, 28.598593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776478, 32.020744, 27.960409>,  <35.120323, 32.664997, 28.498745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776478, 32.020744, 27.960409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.489460, 32.210957, 28.163979>,  <34.317249, 32.325085, 28.286119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.489460, 32.210957, 28.163979>,  <34.776478, 32.020744, 27.960409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489460, 32.210957, 28.163979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446478, 0.246783, -0.860090,
		-0.534592, -0.844375, 0.035236,
		-0.717543, 0.475530, 0.508924,
		34.274197, 32.353615, 28.316656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187084, 31.772257, 27.603657>,  <34.776478, 32.020744, 27.960409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187084, 31.772257, 27.603657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.058846, 32.079456, 27.825428>,  <33.981903, 32.263775, 27.958490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.058846, 32.079456, 27.825428>,  <34.187084, 31.772257, 27.603657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058846, 32.079456, 27.825428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742827, 0.159331, -0.650247,
		-0.587728, -0.620313, 0.519411,
		-0.320599, 0.768001, 0.554429,
		33.962666, 32.309856, 27.991756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432983, 31.715584, 27.584320>,  <34.187084, 31.772257, 27.603657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432983, 31.715584, 27.584320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.533035, 32.087566, 27.692112>,  <33.593067, 32.310757, 27.756786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.533035, 32.087566, 27.692112>,  <33.432983, 31.715584, 27.584320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533035, 32.087566, 27.692112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687916, 0.366549, -0.626429,
		-0.681328, -0.028693, 0.731415,
		0.250126, 0.929956, 0.269479,
		33.608074, 32.366554, 27.772955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844261, 32.088551, 27.629990>,  <33.432983, 31.715584, 27.584320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844261, 32.088551, 27.629990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.130825, 32.354416, 27.545156>,  <33.302761, 32.513935, 27.494257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.130825, 32.354416, 27.545156>,  <32.844261, 32.088551, 27.629990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130825, 32.354416, 27.545156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637687, 0.500492, -0.585545,
		-0.283047, 0.554732, 0.782405,
		0.716408, 0.664666, -0.212083,
		33.345749, 32.553814, 27.481531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419434, 32.674950, 27.500248>,  <32.844261, 32.088551, 27.629990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419434, 32.674950, 27.500248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780472, 32.744843, 27.342875>,  <32.997093, 32.786777, 27.248451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780472, 32.744843, 27.342875>,  <32.419434, 32.674950, 27.500248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780472, 32.744843, 27.342875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429005, 0.289296, -0.855724,
		-0.035703, 0.941157, 0.336078,
		0.902596, 0.174731, -0.393432,
		33.051250, 32.797260, 27.224846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403141, 33.259182, 27.068357>,  <32.419434, 32.674950, 27.500248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403141, 33.259182, 27.068357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730278, 33.099174, 26.902893>,  <32.926559, 33.003170, 26.803616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730278, 33.099174, 26.902893>,  <32.403141, 33.259182, 27.068357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730278, 33.099174, 26.902893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232444, 0.427948, -0.873402,
		0.526404, 0.810459, 0.257012,
		0.817844, -0.400021, -0.413660,
		32.975632, 32.979168, 26.778795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793060, 33.842571, 26.751770>,  <32.403141, 33.259182, 27.068357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793060, 33.842571, 26.751770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.930382, 33.514374, 26.568932>,  <33.012775, 33.317455, 26.459229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.930382, 33.514374, 26.568932>,  <32.793060, 33.842571, 26.751770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930382, 33.514374, 26.568932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132605, 0.439456, -0.888422,
		0.929816, 0.365612, 0.042066,
		0.343304, -0.820491, -0.457096,
		33.033375, 33.268227, 26.431803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208729, 34.415436, 26.828638>,  <32.793060, 33.842571, 26.751770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208729, 34.415436, 26.828638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.066116, 34.786102, 26.781012>,  <32.980549, 35.008503, 26.752436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.066116, 34.786102, 26.781012>,  <33.208729, 34.415436, 26.828638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066116, 34.786102, 26.781012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069072, 0.100949, 0.992491,
		0.931726, 0.362081, 0.028015,
		-0.356534, 0.926664, -0.119066,
		32.959156, 35.064102, 26.745291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559776, 34.715210, 27.284363>,  <33.208729, 34.415436, 26.828638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559776, 34.715210, 27.284363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.224697, 34.921669, 27.212973>,  <33.023651, 35.045544, 27.170139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.224697, 34.921669, 27.212973>,  <33.559776, 34.715210, 27.284363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224697, 34.921669, 27.212973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198641, 0.016451, 0.979934,
		0.508726, 0.856342, 0.088747,
		-0.837699, 0.516147, -0.178473,
		32.973389, 35.076511, 27.159431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497452, 35.151489, 27.757181>,  <33.559776, 34.715210, 27.284363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497452, 35.151489, 27.757181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.117313, 35.141991, 27.633068>,  <32.889229, 35.136292, 27.558601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.117313, 35.141991, 27.633068>,  <33.497452, 35.151489, 27.757181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117313, 35.141991, 27.633068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308327, -0.063063, 0.949188,
		-0.042104, 0.997727, 0.052611,
		-0.950348, -0.023743, -0.310281,
		32.832211, 35.134869, 27.539984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119877, 35.644840, 28.082977>,  <33.497452, 35.151489, 27.757181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119877, 35.644840, 28.082977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.826637, 35.406700, 27.951450>,  <32.650692, 35.263817, 27.872534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.826637, 35.406700, 27.951450>,  <33.119877, 35.644840, 28.082977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826637, 35.406700, 27.951450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340280, -0.097533, 0.935252,
		-0.588877, 0.797521, -0.131086,
		-0.733099, -0.595355, -0.328815,
		32.606709, 35.228092, 27.852806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557617, 35.946152, 28.423151>,  <33.119877, 35.644840, 28.082977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557617, 35.946152, 28.423151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488274, 35.560116, 28.344620>,  <32.446667, 35.328495, 28.297501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.488274, 35.560116, 28.344620>,  <32.557617, 35.946152, 28.423151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488274, 35.560116, 28.344620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319950, -0.133347, 0.938003,
		-0.931439, 0.225426, -0.285664,
		-0.173357, -0.965091, -0.196330,
		32.436268, 35.270588, 28.285721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964092, 35.900894, 28.664249>,  <32.557617, 35.946152, 28.423151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964092, 35.900894, 28.664249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.074844, 35.517776, 28.633341>,  <32.141296, 35.287907, 28.614796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.074844, 35.517776, 28.633341>,  <31.964092, 35.900894, 28.664249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074844, 35.517776, 28.633341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507311, -0.214002, 0.834768,
		-0.816070, -0.191932, -0.545152,
		0.276882, -0.957792, -0.077272,
		32.157909, 35.230438, 28.610159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420950, 35.507580, 28.887821>,  <31.964092, 35.900894, 28.664249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420950, 35.507580, 28.887821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.701078, 35.222088, 28.883213>,  <31.869156, 35.050793, 28.880447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.701078, 35.222088, 28.883213>,  <31.420950, 35.507580, 28.887821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701078, 35.222088, 28.883213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407935, -0.413411, 0.814052,
		-0.585781, -0.565397, -0.580678,
		0.700322, -0.713735, -0.011523,
		31.911175, 35.007969, 28.879757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077709, 34.806492, 29.048492>,  <31.420950, 35.507580, 28.887821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077709, 34.806492, 29.048492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465025, 34.804512, 29.148403>,  <31.697414, 34.803326, 29.208349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.465025, 34.804512, 29.148403>,  <31.077709, 34.806492, 29.048492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465025, 34.804512, 29.148403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227608, -0.429639, 0.873845,
		0.102990, -0.902987, -0.417142,
		0.968291, -0.004948, 0.249776,
		31.755512, 34.803028, 29.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140165, 34.238834, 29.410257>,  <31.077709, 34.806492, 29.048492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140165, 34.238834, 29.410257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.451511, 34.470020, 29.508318>,  <31.638319, 34.608734, 29.567154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.451511, 34.470020, 29.508318>,  <31.140165, 34.238834, 29.410257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451511, 34.470020, 29.508318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117920, -0.248941, 0.961313,
		0.616637, -0.777162, -0.125613,
		0.778366, 0.577969, 0.245149,
		31.685020, 34.643410, 29.581863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400377, 33.801388, 29.824120>,  <31.140165, 34.238834, 29.410257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400377, 33.801388, 29.824120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.559593, 34.163757, 29.881889>,  <31.655123, 34.381180, 29.916552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.559593, 34.163757, 29.881889>,  <31.400377, 33.801388, 29.824120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559593, 34.163757, 29.881889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109500, -0.109390, 0.987949,
		0.910810, -0.409058, 0.055658,
		0.398040, 0.905928, 0.144425,
		31.679005, 34.435535, 29.925217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937746, 33.724720, 30.272421>,  <31.400377, 33.801388, 29.824120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937746, 33.724720, 30.272421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.844398, 34.112785, 30.298704>,  <31.788389, 34.345627, 30.314474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.844398, 34.112785, 30.298704>,  <31.937746, 33.724720, 30.272421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844398, 34.112785, 30.298704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123062, -0.096497, 0.987696,
		0.964570, 0.222412, 0.141910,
		-0.233370, 0.970166, 0.065708,
		31.774387, 34.403835, 30.318417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216351, 34.042477, 30.897766>,  <31.937746, 33.724720, 30.272421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216351, 34.042477, 30.897766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916943, 34.274002, 30.768341>,  <31.737297, 34.412918, 30.690687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916943, 34.274002, 30.768341>,  <32.216351, 34.042477, 30.897766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916943, 34.274002, 30.768341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291662, 0.150837, 0.944554,
		0.595524, 0.801390, 0.055912,
		-0.748522, 0.578811, -0.323562,
		31.692387, 34.447647, 30.671272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.826378, 36.061867, 23.456097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435440, 36.145802, 23.445044>,  <34.200878, 36.196163, 23.438412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435440, 36.145802, 23.445044>,  <34.826378, 36.061867, 23.456097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435440, 36.145802, 23.445044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089031, -0.289176, 0.953127,
		0.192008, 0.933995, 0.301307,
		-0.977347, 0.209834, -0.027631,
		34.142235, 36.208752, 23.436754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732708, 36.293190, 24.127188>,  <34.826378, 36.061867, 23.456097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732708, 36.293190, 24.127188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360737, 36.238689, 23.990561>,  <34.137554, 36.205990, 23.908585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360737, 36.238689, 23.990561>,  <34.732708, 36.293190, 24.127188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360737, 36.238689, 23.990561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328421, -0.110173, 0.938084,
		-0.165449, 0.984529, 0.057704,
		-0.929928, -0.136254, -0.341568,
		34.081757, 36.197815, 23.888090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279869, 36.616013, 24.618778>,  <34.732708, 36.293190, 24.127188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279869, 36.616013, 24.618778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019608, 36.391384, 24.414316>,  <33.863449, 36.256607, 24.291639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019608, 36.391384, 24.414316>,  <34.279869, 36.616013, 24.618778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019608, 36.391384, 24.414316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432694, -0.278984, 0.857289,
		-0.624035, 0.778975, -0.061467,
		-0.650658, -0.561575, -0.511154,
		33.824409, 36.222912, 24.260969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631840, 36.920643, 24.812040>,  <34.279869, 36.616013, 24.618778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631840, 36.920643, 24.812040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589657, 36.541115, 24.692963>,  <33.564346, 36.313396, 24.621515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589657, 36.541115, 24.692963>,  <33.631840, 36.920643, 24.812040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589657, 36.541115, 24.692963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483763, -0.212602, 0.848984,
		-0.868822, 0.233545, -0.436583,
		-0.105458, -0.948819, -0.297694,
		33.558018, 36.256470, 24.603655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984184, 36.786110, 24.910612>,  <33.631840, 36.920643, 24.812040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984184, 36.786110, 24.910612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132065, 36.415577, 24.881674>,  <33.220795, 36.193256, 24.864311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132065, 36.415577, 24.881674>,  <32.984184, 36.786110, 24.910612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132065, 36.415577, 24.881674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565484, -0.286101, 0.773546,
		-0.737258, -0.245068, -0.629596,
		0.369699, -0.926330, -0.072348,
		33.242973, 36.137676, 24.859970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512314, 36.246429, 24.854465>,  <32.984184, 36.786110, 24.910612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512314, 36.246429, 24.854465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804146, 36.001984, 24.977270>,  <32.979244, 35.855316, 25.050953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804146, 36.001984, 24.977270>,  <32.512314, 36.246429, 24.854465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804146, 36.001984, 24.977270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615414, -0.390847, 0.684474,
		-0.298292, -0.688320, -0.661239,
		0.729581, -0.611109, 0.307015,
		33.023018, 35.818649, 25.069374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088203, 35.639595, 25.077532>,  <32.512314, 36.246429, 24.854465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088203, 35.639595, 25.077532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460434, 35.635754, 25.223915>,  <32.683773, 35.633450, 25.311745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460434, 35.635754, 25.223915>,  <32.088203, 35.639595, 25.077532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460434, 35.635754, 25.223915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340137, -0.392350, 0.854616,
		0.135374, -0.919766, -0.368381,
		0.930580, -0.009608, 0.365961,
		32.739609, 35.632870, 25.333704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321617, 34.939968, 25.274342>,  <32.088203, 35.639595, 25.077532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321617, 34.939968, 25.274342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543579, 35.196465, 25.486341>,  <32.676754, 35.350361, 25.613541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543579, 35.196465, 25.486341>,  <32.321617, 34.939968, 25.274342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543579, 35.196465, 25.486341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226438, -0.496609, 0.837917,
		0.800506, -0.584974, -0.130369,
		0.554903, 0.641237, 0.529999,
		32.710049, 35.388836, 25.645342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637413, 34.522106, 25.800774>,  <32.321617, 34.939968, 25.274342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637413, 34.522106, 25.800774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681988, 34.879669, 25.974447>,  <32.708733, 35.094208, 26.078651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681988, 34.879669, 25.974447>,  <32.637413, 34.522106, 25.800774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681988, 34.879669, 25.974447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031873, -0.439898, 0.897482,
		0.993260, -0.086172, -0.077512,
		0.111435, 0.893904, 0.434186,
		32.715420, 35.147839, 26.104704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246025, 34.097076, 25.808504>,  <32.637413, 34.522106, 25.800774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246025, 34.097076, 25.808504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156380, 33.708645, 25.841457>,  <33.102592, 33.475586, 25.861229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156380, 33.708645, 25.841457>,  <33.246025, 34.097076, 25.808504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156380, 33.708645, 25.841457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223383, -0.031097, -0.974235,
		0.948617, -0.236739, -0.209952,
		-0.224110, -0.971076, 0.082383,
		33.089146, 33.417324, 25.866173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491966, 33.863251, 25.204330>,  <33.246025, 34.097076, 25.808504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491966, 33.863251, 25.204330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228516, 33.600155, 25.350527>,  <33.070446, 33.442295, 25.438246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228516, 33.600155, 25.350527>,  <33.491966, 33.863251, 25.204330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228516, 33.600155, 25.350527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377117, -0.131788, -0.916741,
		0.651148, -0.741624, -0.161247,
		-0.658627, -0.657743, 0.365493,
		33.030926, 33.402832, 25.460175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669994, 33.311329, 24.844889>,  <33.491966, 33.863251, 25.204330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669994, 33.311329, 24.844889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288345, 33.281178, 24.960802>,  <33.059357, 33.263084, 25.030350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288345, 33.281178, 24.960802>,  <33.669994, 33.311329, 24.844889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288345, 33.281178, 24.960802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247937, -0.343727, -0.905748,
		0.167886, -0.936039, 0.309266,
		-0.954118, -0.075383, 0.289785,
		33.002110, 33.258564, 25.047737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385231, 32.715847, 24.401009>,  <33.669994, 33.311329, 24.844889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385231, 32.715847, 24.401009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058186, 32.891281, 24.550222>,  <32.861958, 32.996540, 24.639750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058186, 32.891281, 24.550222>,  <33.385231, 32.715847, 24.401009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058186, 32.891281, 24.550222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447714, -0.076925, -0.890862,
		-0.362019, -0.895393, 0.259254,
		-0.817615, 0.438581, 0.373032,
		32.812901, 33.022854, 24.662132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898094, 32.178928, 24.279400>,  <33.385231, 32.715847, 24.401009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898094, 32.178928, 24.279400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708488, 32.528988, 24.318228>,  <32.594727, 32.739025, 24.341524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708488, 32.528988, 24.318228>,  <32.898094, 32.178928, 24.279400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708488, 32.528988, 24.318228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403565, -0.117947, -0.907317,
		-0.782591, -0.469252, 0.409089,
		-0.474011, 0.875152, 0.097069,
		32.566284, 32.791534, 24.347349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200443, 32.029404, 24.044739>,  <32.898094, 32.178928, 24.279400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200443, 32.029404, 24.044739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267998, 32.422428, 24.013601>,  <32.308533, 32.658241, 23.994919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267998, 32.422428, 24.013601>,  <32.200443, 32.029404, 24.044739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267998, 32.422428, 24.013601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217308, -0.039913, -0.975286,
		-0.961381, 0.181631, 0.206777,
		0.168889, 0.982556, -0.077842,
		32.318665, 32.717194, 23.990250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910191, 32.196148, 23.386683>,  <32.200443, 32.029404, 24.044739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910191, 32.196148, 23.386683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113186, 32.532104, 23.463667>,  <32.234982, 32.733677, 23.509857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113186, 32.532104, 23.463667>,  <31.910191, 32.196148, 23.386683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113186, 32.532104, 23.463667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024198, 0.209384, -0.977534,
		-0.861318, 0.500746, 0.085936,
		0.507490, 0.839888, 0.192463,
		32.265434, 32.784069, 23.521406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522133, 32.675812, 22.974617>,  <31.910191, 32.196148, 23.386683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522133, 32.675812, 22.974617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889462, 32.823914, 23.030611>,  <32.109859, 32.912773, 23.064207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889462, 32.823914, 23.030611>,  <31.522133, 32.675812, 22.974617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889462, 32.823914, 23.030611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068526, 0.199608, -0.977477,
		-0.389855, 0.907232, 0.157932,
		0.918323, 0.370252, 0.139987,
		32.164959, 32.934990, 23.072607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595238, 33.092304, 22.486931>,  <31.522133, 32.675812, 22.974617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595238, 33.092304, 22.486931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974724, 33.046009, 22.604607>,  <32.202415, 33.018230, 22.675213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974724, 33.046009, 22.604607>,  <31.595238, 33.092304, 22.486931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974724, 33.046009, 22.604607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305074, 0.091144, -0.947957,
		0.082904, 0.989089, 0.121779,
		0.948713, -0.115741, 0.294189,
		32.259338, 33.011288, 22.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867821, 33.664326, 22.326529>,  <31.595238, 33.092304, 22.486931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867821, 33.664326, 22.326529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136875, 33.369526, 22.353025>,  <32.298309, 33.192646, 22.368923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136875, 33.369526, 22.353025>,  <31.867821, 33.664326, 22.326529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136875, 33.369526, 22.353025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175577, 0.071995, -0.981830,
		0.718843, 0.672043, 0.177827,
		0.672634, -0.737004, 0.066242,
		32.338665, 33.148426, 22.372898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584801, 33.915661, 22.054619>,  <31.867821, 33.664326, 22.326529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584801, 33.915661, 22.054619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570107, 33.517975, 22.014236>,  <32.561291, 33.279366, 21.990007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570107, 33.517975, 22.014236>,  <32.584801, 33.915661, 22.054619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570107, 33.517975, 22.014236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288176, 0.086195, -0.953690,
		0.956873, -0.064127, 0.283342,
		-0.036735, -0.994212, -0.100958,
		32.559086, 33.219711, 21.983950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165970, 33.757504, 21.642538>,  <32.584801, 33.915661, 22.054619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165970, 33.757504, 21.642538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922375, 33.442390, 21.605585>,  <32.776218, 33.253323, 21.583412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922375, 33.442390, 21.605585>,  <33.165970, 33.757504, 21.642538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922375, 33.442390, 21.605585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196274, -0.036817, -0.979858,
		0.768514, -0.614851, 0.177042,
		-0.608985, -0.787784, -0.092384,
		32.739677, 33.206055, 21.577869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519417, 33.346817, 21.189598>,  <33.165970, 33.757504, 21.642538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519417, 33.346817, 21.189598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145325, 33.205276, 21.194210>,  <32.920868, 33.120354, 21.196978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145325, 33.205276, 21.194210>,  <33.519417, 33.346817, 21.189598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145325, 33.205276, 21.194210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119699, -0.346687, -0.930312,
		0.333186, -0.868677, 0.366588,
		-0.935232, -0.353847, 0.011531,
		32.864754, 33.099121, 21.197670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497120, 32.618786, 20.913540>,  <33.519417, 33.346817, 21.189598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497120, 32.618786, 20.913540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109669, 32.715042, 20.888685>,  <32.877197, 32.772797, 20.873772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109669, 32.715042, 20.888685>,  <33.497120, 32.618786, 20.913540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109669, 32.715042, 20.888685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066698, -0.492543, -0.867728,
		-0.239412, -0.836358, 0.493139,
		-0.968624, 0.240636, -0.062137,
		32.819080, 32.787231, 20.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.117817, 34.451092, 21.156115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.511267, 34.522984, 21.150761>,  <28.747337, 34.566120, 21.147549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.511267, 34.522984, 21.150761>,  <28.117817, 34.451092, 21.156115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511267, 34.522984, 21.150761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105583, -0.514454, 0.850993,
		0.146068, -0.838470, -0.525007,
		0.983624, 0.179734, -0.013383,
		28.806355, 34.576904, 21.146746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508183, 33.885685, 21.269632>,  <28.117817, 34.451092, 21.156115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508183, 33.885685, 21.269632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.794678, 34.142048, 21.380079>,  <28.966574, 34.295864, 21.446348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.794678, 34.142048, 21.380079>,  <28.508183, 33.885685, 21.269632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794678, 34.142048, 21.380079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062652, -0.453124, 0.889243,
		0.695039, -0.619609, -0.364698,
		0.716237, 0.640908, 0.276120,
		29.009548, 34.334320, 21.462915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952309, 33.524178, 21.688820>,  <28.508183, 33.885685, 21.269632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952309, 33.524178, 21.688820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058741, 33.899494, 21.777191>,  <29.122599, 34.124683, 21.830214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058741, 33.899494, 21.777191>,  <28.952309, 33.524178, 21.688820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058741, 33.899494, 21.777191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179839, -0.273485, 0.944915,
		0.947027, -0.211689, -0.241510,
		0.266078, 0.938293, 0.220928,
		29.138563, 34.180981, 21.843470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609669, 33.423233, 21.951473>,  <28.952309, 33.524178, 21.688820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609669, 33.423233, 21.951473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427856, 33.757889, 22.073740>,  <29.318769, 33.958683, 22.147100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427856, 33.757889, 22.073740>,  <29.609669, 33.423233, 21.951473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427856, 33.757889, 22.073740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088275, -0.299162, 0.950110,
		0.886346, 0.458837, 0.062124,
		-0.454531, 0.836642, 0.305665,
		29.291496, 34.008881, 22.165440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897572, 33.573521, 22.497410>,  <29.609669, 33.423233, 21.951473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897572, 33.573521, 22.497410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570581, 33.796688, 22.554626>,  <29.374388, 33.930588, 22.588957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.570581, 33.796688, 22.554626>,  <29.897572, 33.573521, 22.497410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570581, 33.796688, 22.554626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018251, -0.273323, 0.961749,
		0.575671, 0.783597, 0.233618,
		-0.817477, 0.557915, 0.143043,
		29.325338, 33.964062, 22.597540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993511, 34.056278, 23.093231>,  <29.897572, 33.573521, 22.497410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993511, 34.056278, 23.093231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597673, 34.000267, 23.080006>,  <29.360170, 33.966660, 23.072071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597673, 34.000267, 23.080006>,  <29.993511, 34.056278, 23.093231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597673, 34.000267, 23.080006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023011, -0.072798, 0.997081,
		-0.142029, 0.987468, 0.068818,
		-0.989595, -0.140031, -0.033062,
		29.300795, 33.958260, 23.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742977, 34.487415, 23.547823>,  <29.993511, 34.056278, 23.093231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742977, 34.487415, 23.547823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.451839, 34.214325, 23.522133>,  <29.277157, 34.050472, 23.506720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.451839, 34.214325, 23.522133>,  <29.742977, 34.487415, 23.547823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451839, 34.214325, 23.522133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028722, -0.123928, 0.991875,
		-0.685138, 0.720088, 0.109810,
		-0.727847, -0.682726, -0.064226,
		29.233486, 34.009506, 23.502865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253132, 34.631569, 24.046906>,  <29.742977, 34.487415, 23.547823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253132, 34.631569, 24.046906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.210611, 34.244511, 23.955381>,  <29.185099, 34.012276, 23.900467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.210611, 34.244511, 23.955381>,  <29.253132, 34.631569, 24.046906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210611, 34.244511, 23.955381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052781, -0.235282, 0.970493,
		-0.992932, 0.091088, 0.076085,
		-0.106302, -0.967649, -0.228812,
		29.178720, 33.954216, 23.886738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769712, 34.337070, 24.470314>,  <29.253132, 34.631569, 24.046906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769712, 34.337070, 24.470314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.953485, 34.008678, 24.334721>,  <29.063749, 33.811642, 24.253365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.953485, 34.008678, 24.334721>,  <28.769712, 34.337070, 24.470314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953485, 34.008678, 24.334721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132219, -0.440609, 0.887909,
		-0.878317, -0.363113, -0.310979,
		0.459432, -0.820983, -0.338984,
		29.091314, 33.762383, 24.233025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367977, 33.899635, 24.842499>,  <28.769712, 34.337070, 24.470314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367977, 33.899635, 24.842499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.678797, 33.691563, 24.700733>,  <28.865288, 33.566719, 24.615673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.678797, 33.691563, 24.700733>,  <28.367977, 33.899635, 24.842499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678797, 33.691563, 24.700733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171658, -0.366590, 0.914410,
		-0.605580, -0.771380, -0.195566,
		0.777049, -0.520178, -0.354413,
		28.911911, 33.535511, 24.594410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262089, 33.141022, 24.882093>,  <28.367977, 33.899635, 24.842499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262089, 33.141022, 24.882093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.655470, 33.209736, 24.905100>,  <28.891499, 33.250965, 24.918903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.655470, 33.209736, 24.905100>,  <28.262089, 33.141022, 24.882093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655470, 33.209736, 24.905100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028534, -0.460422, 0.887241,
		0.178896, -0.870920, -0.457706,
		0.983454, 0.171784, 0.057517,
		28.950506, 33.261272, 24.922356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463909, 32.482685, 25.078690>,  <28.262089, 33.141022, 24.882093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463909, 32.482685, 25.078690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767111, 32.733147, 25.151751>,  <28.949032, 32.883423, 25.195587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767111, 32.733147, 25.151751>,  <28.463909, 32.482685, 25.078690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767111, 32.733147, 25.151751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024148, -0.306783, 0.951473,
		0.651805, -0.716808, -0.247662,
		0.758002, 0.626156, 0.182653,
		28.994511, 32.920994, 25.206547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117298, 32.046009, 25.181580>,  <28.463909, 32.482685, 25.078690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117298, 32.046009, 25.181580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.150108, 32.407513, 25.349627>,  <29.169794, 32.624413, 25.450455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.150108, 32.407513, 25.349627>,  <29.117298, 32.046009, 25.181580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150108, 32.407513, 25.349627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047783, -0.424618, 0.904111,
		0.995484, -0.054087, -0.078015,
		0.082027, 0.903756, 0.420116,
		29.174717, 32.678638, 25.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586100, 31.951756, 25.670639>,  <29.117298, 32.046009, 25.181580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586100, 31.951756, 25.670639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441162, 32.304482, 25.791378>,  <29.354200, 32.516117, 25.863821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441162, 32.304482, 25.791378>,  <29.586100, 31.951756, 25.670639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441162, 32.304482, 25.791378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030080, -0.312622, 0.949401,
		0.931559, 0.353089, 0.086752,
		-0.362344, 0.881814, 0.301847,
		29.332458, 32.569027, 25.881931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213194, 31.713669, 25.299347>,  <29.586100, 31.951756, 25.670639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213194, 31.713669, 25.299347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265848, 31.318239, 25.269974>,  <30.297440, 31.080982, 25.252350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265848, 31.318239, 25.269974>,  <30.213194, 31.713669, 25.299347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265848, 31.318239, 25.269974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085842, 0.062431, -0.994351,
		0.987575, 0.137194, -0.076643,
		0.131634, -0.988575, -0.073432,
		30.305338, 31.021667, 25.247944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542204, 31.617100, 24.669949>,  <30.213194, 31.713669, 25.299347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542204, 31.617100, 24.669949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363071, 31.268755, 24.750990>,  <30.255592, 31.059748, 24.799616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363071, 31.268755, 24.750990>,  <30.542204, 31.617100, 24.669949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363071, 31.268755, 24.750990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314454, -0.058718, -0.947455,
		0.836997, -0.488011, -0.247549,
		-0.447833, -0.870860, 0.202604,
		30.228722, 31.007498, 24.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733444, 31.177805, 24.123373>,  <30.542204, 31.617100, 24.669949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733444, 31.177805, 24.123373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398252, 31.039759, 24.292459>,  <30.197138, 30.956930, 24.393911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398252, 31.039759, 24.292459>,  <30.733444, 31.177805, 24.123373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398252, 31.039759, 24.292459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386462, -0.171598, -0.906202,
		0.385281, -0.922740, 0.010421,
		-0.837977, -0.345115, 0.422718,
		30.146860, 30.936224, 24.419275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601913, 30.488617, 23.859264>,  <30.733444, 31.177805, 24.123373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601913, 30.488617, 23.859264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.243229, 30.611109, 23.987095>,  <30.028017, 30.684605, 24.063793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.243229, 30.611109, 23.987095>,  <30.601913, 30.488617, 23.859264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243229, 30.611109, 23.987095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370164, -0.123016, -0.920786,
		-0.242661, -0.943975, 0.223666,
		-0.896713, 0.306232, 0.319574,
		29.974215, 30.702978, 24.082968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168556, 30.131462, 23.499155>,  <30.601913, 30.488617, 23.859264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168556, 30.131462, 23.499155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.928707, 30.421505, 23.634611>,  <29.784798, 30.595530, 23.715885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.928707, 30.421505, 23.634611>,  <30.168556, 30.131462, 23.499155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928707, 30.421505, 23.634611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600413, -0.127835, -0.789407,
		-0.529113, -0.676669, 0.512015,
		-0.599620, 0.725105, 0.338641,
		29.748821, 30.639036, 23.736204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488577, 29.859131, 23.442968>,  <30.168556, 30.131462, 23.499155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488577, 29.859131, 23.442968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.459986, 30.258068, 23.437410>,  <29.442831, 30.497431, 23.434076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.459986, 30.258068, 23.437410>,  <29.488577, 29.859131, 23.442968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459986, 30.258068, 23.437410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467297, -0.045791, -0.882914,
		-0.881206, -0.056617, 0.469330,
		-0.071479, 0.997345, -0.013895,
		29.438541, 30.557272, 23.433243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833338, 30.027267, 23.052114>,  <29.488577, 29.859131, 23.442968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833338, 30.027267, 23.052114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047365, 30.363880, 23.081844>,  <29.175781, 30.565847, 23.099682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047365, 30.363880, 23.081844>,  <28.833338, 30.027267, 23.052114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047365, 30.363880, 23.081844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191579, 0.206556, -0.959496,
		-0.822799, 0.499157, 0.271741,
		0.535069, 0.841532, 0.074326,
		29.207886, 30.616341, 23.104141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411856, 30.531513, 22.779045>,  <28.833338, 30.027267, 23.052114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411856, 30.531513, 22.779045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.782228, 30.676620, 22.737005>,  <29.004452, 30.763685, 22.711781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.782228, 30.676620, 22.737005>,  <28.411856, 30.531513, 22.779045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782228, 30.676620, 22.737005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219158, 0.289425, -0.931774,
		-0.307600, 0.885794, 0.347492,
		0.925933, 0.362769, -0.105102,
		29.060009, 30.785452, 22.705475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308704, 31.189598, 22.410339>,  <28.411856, 30.531513, 22.779045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308704, 31.189598, 22.410339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.691498, 31.084921, 22.360218>,  <28.921173, 31.022114, 22.330145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.691498, 31.084921, 22.360218>,  <28.308704, 31.189598, 22.410339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691498, 31.084921, 22.360218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053045, 0.266777, -0.962297,
		0.285255, 0.927549, 0.241419,
		0.956983, -0.261694, -0.125301,
		28.978592, 31.006413, 22.322628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687815, 31.774818, 22.018661>,  <28.308704, 31.189598, 22.410339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687815, 31.774818, 22.018661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.902456, 31.440819, 21.969940>,  <29.031240, 31.240419, 21.940708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.902456, 31.440819, 21.969940>,  <28.687815, 31.774818, 22.018661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902456, 31.440819, 21.969940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122218, 0.219729, -0.967875,
		0.834937, 0.504479, 0.219959,
		0.536604, -0.834997, -0.121804,
		29.063437, 31.190319, 21.933399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246222, 31.997889, 21.641554>,  <28.687815, 31.774818, 22.018661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246222, 31.997889, 21.641554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.229679, 31.599827, 21.605864>,  <29.219753, 31.360991, 21.584450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.229679, 31.599827, 21.605864>,  <29.246222, 31.997889, 21.641554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229679, 31.599827, 21.605864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204392, 0.078986, -0.975697,
		0.978015, -0.058588, 0.200134,
		-0.041356, -0.995153, -0.089225,
		29.217272, 31.301281, 21.579096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938999, 31.781424, 21.307377>,  <29.246222, 31.997889, 21.641554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938999, 31.781424, 21.307377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647732, 31.518972, 21.228115>,  <29.472971, 31.361502, 21.180557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647732, 31.518972, 21.228115>,  <29.938999, 31.781424, 21.307377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647732, 31.518972, 21.228115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069339, 0.217103, -0.973683,
		0.681883, -0.722744, -0.112592,
		-0.728168, -0.656131, -0.198154,
		29.429281, 31.322134, 21.168669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217009, 31.404600, 20.744694>,  <29.938999, 31.781424, 21.307377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217009, 31.404600, 20.744694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826920, 31.316605, 20.735361>,  <29.592867, 31.263807, 20.729761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826920, 31.316605, 20.735361>,  <30.217009, 31.404600, 20.744694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826920, 31.316605, 20.735361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001305, 0.111183, -0.993799,
		0.221222, -0.969145, -0.108715,
		-0.975223, -0.219992, -0.023332,
		29.534353, 31.250608, 20.728361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172653, 30.976944, 20.219353>,  <30.217009, 31.404600, 20.744694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172653, 30.976944, 20.219353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.807148, 31.131666, 20.269022>,  <29.587845, 31.224499, 20.298824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.807148, 31.131666, 20.269022>,  <30.172653, 30.976944, 20.219353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807148, 31.131666, 20.269022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074464, 0.141008, -0.987204,
		-0.399364, -0.911317, -0.100045,
		-0.913763, 0.386804, 0.124174,
		29.533018, 31.247707, 20.306274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362587, 30.264248, 20.037773>,  <30.172653, 30.976944, 20.219353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362587, 30.264248, 20.037773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.744417, 30.252237, 19.919193>,  <30.973516, 30.245031, 19.848045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.744417, 30.252237, 19.919193>,  <30.362587, 30.264248, 20.037773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744417, 30.252237, 19.919193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282095, -0.229288, 0.931584,
		-0.095944, -0.972896, -0.210403,
		0.954577, -0.030026, -0.296448,
		31.030790, 30.243229, 19.830259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600637, 29.637651, 20.282919>,  <30.362587, 30.264248, 20.037773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600637, 29.637651, 20.282919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.941141, 29.837961, 20.220198>,  <31.145443, 29.958147, 20.182564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.941141, 29.837961, 20.220198>,  <30.600637, 29.637651, 20.282919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941141, 29.837961, 20.220198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262098, -0.146877, 0.953799,
		0.454606, -0.853026, -0.256282,
		0.851257, 0.500773, -0.156805,
		31.196518, 29.988194, 20.173157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144423, 29.247671, 20.459339>,  <30.600637, 29.637651, 20.282919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144423, 29.247671, 20.459339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.359650, 29.584831, 20.459621>,  <31.488787, 29.787127, 20.459791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.359650, 29.584831, 20.459621>,  <31.144423, 29.247671, 20.459339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359650, 29.584831, 20.459621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483533, -0.309353, 0.818838,
		0.690418, -0.440250, -0.574023,
		0.538069, 0.842900, 0.000708,
		31.521070, 29.837702, 20.459833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890778, 29.075630, 20.348572>,  <31.144423, 29.247671, 20.459339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890778, 29.075630, 20.348572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865553, 29.427528, 20.537069>,  <31.850418, 29.638668, 20.650167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865553, 29.427528, 20.537069>,  <31.890778, 29.075630, 20.348572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865553, 29.427528, 20.537069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599619, -0.344059, 0.722552,
		0.797798, 0.328130, -0.505816,
		-0.063060, 0.879747, 0.471242,
		31.846636, 29.691452, 20.678442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554447, 29.213394, 20.567101>,  <31.890778, 29.075630, 20.348572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554447, 29.213394, 20.567101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342480, 29.479900, 20.776968>,  <32.215298, 29.639803, 20.902887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342480, 29.479900, 20.776968>,  <32.554447, 29.213394, 20.567101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342480, 29.479900, 20.776968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541918, -0.209837, 0.813814,
		0.652309, 0.715585, -0.249863,
		-0.529922, 0.666264, 0.524667,
		32.183502, 29.679779, 20.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031906, 29.856691, 20.771111>,  <32.554447, 29.213394, 20.567101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031906, 29.856691, 20.771111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731487, 29.811771, 21.031361>,  <32.551235, 29.784819, 21.187511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731487, 29.811771, 21.031361>,  <33.031906, 29.856691, 20.771111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731487, 29.811771, 21.031361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657565, -0.038505, 0.752413,
		-0.059445, 0.992928, 0.102765,
		-0.751049, -0.112302, 0.650625,
		32.506172, 29.778080, 21.226549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226860, 30.264368, 21.194908>,  <33.031906, 29.856691, 20.771111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226860, 30.264368, 21.194908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974045, 30.016130, 21.380550>,  <32.822357, 29.867188, 21.491936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974045, 30.016130, 21.380550>,  <33.226860, 30.264368, 21.194908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974045, 30.016130, 21.380550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542663, 0.073102, 0.836764,
		-0.553218, 0.780716, 0.290571,
		-0.632034, -0.620595, 0.464107,
		32.784435, 29.829952, 21.519783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308197, 30.440819, 21.859377>,  <33.226860, 30.264368, 21.194908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308197, 30.440819, 21.859377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111610, 30.096912, 21.914896>,  <32.993656, 29.890570, 21.948208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111610, 30.096912, 21.914896>,  <33.308197, 30.440819, 21.859377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111610, 30.096912, 21.914896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373468, -0.064091, 0.925426,
		-0.786753, 0.506654, 0.352593,
		-0.491469, -0.859764, 0.138796,
		32.964169, 29.838984, 21.956535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957092, 30.512615, 22.545288>,  <33.308197, 30.440819, 21.859377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957092, 30.512615, 22.545288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966084, 30.115860, 22.495251>,  <32.971478, 29.877806, 22.465227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966084, 30.115860, 22.495251>,  <32.957092, 30.512615, 22.545288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966084, 30.115860, 22.495251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175168, -0.119283, 0.977286,
		-0.984282, -0.043884, 0.171066,
		0.022482, -0.991890, -0.125096,
		32.972828, 29.818293, 22.457722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607811, 30.196579, 23.100149>,  <32.957092, 30.512615, 22.545288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607811, 30.196579, 23.100149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819790, 29.894791, 22.945265>,  <32.946976, 29.713718, 22.852335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.819790, 29.894791, 22.945265>,  <32.607811, 30.196579, 23.100149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819790, 29.894791, 22.945265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330785, -0.236524, 0.913585,
		-0.780858, -0.612233, 0.124223,
		0.529945, -0.754472, -0.387209,
		32.978775, 29.668449, 22.829102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381897, 29.573156, 23.467705>,  <32.607811, 30.196579, 23.100149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381897, 29.573156, 23.467705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744064, 29.504841, 23.312248>,  <32.961365, 29.463852, 23.218975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744064, 29.504841, 23.312248>,  <32.381897, 29.573156, 23.467705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744064, 29.504841, 23.312248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337657, -0.265134, 0.903157,
		-0.257278, -0.948968, -0.182395,
		0.905426, -0.170775, -0.388639,
		33.015690, 29.453604, 23.195656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496510, 28.858126, 23.659414>,  <32.381897, 29.573156, 23.467705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496510, 28.858126, 23.659414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844158, 29.042973, 23.588902>,  <33.052746, 29.153881, 23.546595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.844158, 29.042973, 23.588902>,  <32.496510, 28.858126, 23.659414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844158, 29.042973, 23.588902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321322, -0.256604, 0.911541,
		0.376002, -0.848884, -0.371508,
		0.869123, 0.462115, -0.176282,
		33.104897, 29.181606, 23.536016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998783, 28.428345, 24.073107>,  <32.496510, 28.858126, 23.659414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998783, 28.428345, 24.073107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208302, 28.758839, 23.990181>,  <33.334011, 28.957134, 23.940426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208302, 28.758839, 23.990181>,  <32.998783, 28.428345, 24.073107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208302, 28.758839, 23.990181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552557, -0.144323, 0.820885,
		0.648323, -0.544526, -0.532136,
		0.523793, 0.826234, -0.207314,
		33.365440, 29.006708, 23.927986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589035, 28.232622, 24.381868>,  <32.998783, 28.428345, 24.073107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589035, 28.232622, 24.381868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.595638, 28.630156, 24.338003>,  <33.599602, 28.868675, 24.311684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.595638, 28.630156, 24.338003>,  <33.589035, 28.232622, 24.381868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595638, 28.630156, 24.338003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447068, 0.090766, 0.889883,
		0.894348, -0.063718, -0.442812,
		0.016509, 0.993832, -0.109663,
		33.600590, 28.928305, 24.305103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.027306, 31.957483, 20.463600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848740, 32.314049, 20.432383>,  <32.741600, 32.527988, 20.413652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848740, 32.314049, 20.432383>,  <33.027306, 31.957483, 20.463600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848740, 32.314049, 20.432383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001850, -0.086299, -0.996268,
		-0.894823, -0.444895, 0.036877,
		-0.446417, 0.891415, -0.078045,
		32.714813, 32.581474, 20.408970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563778, 31.958858, 19.837742>,  <33.027306, 31.957483, 20.463600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563778, 31.958858, 19.837742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561085, 32.347973, 19.930384>,  <32.559467, 32.581440, 19.985970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561085, 32.347973, 19.930384>,  <32.563778, 31.958858, 19.837742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561085, 32.347973, 19.930384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132252, 0.228710, -0.964469,
		-0.991193, -0.037126, 0.127112,
		-0.006735, 0.972786, 0.231606,
		32.559063, 32.639809, 19.999865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034279, 32.262135, 19.456654>,  <32.563778, 31.958858, 19.837742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034279, 32.262135, 19.456654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281925, 32.558418, 19.561003>,  <32.430511, 32.736187, 19.623611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281925, 32.558418, 19.561003>,  <32.034279, 32.262135, 19.456654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281925, 32.558418, 19.561003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037129, 0.359431, -0.932433,
		-0.784424, 0.567595, 0.250030,
		0.619112, 0.740706, 0.260872,
		32.467659, 32.780628, 19.639265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716747, 32.872543, 19.276234>,  <32.034279, 32.262135, 19.456654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716747, 32.872543, 19.276234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108295, 32.953060, 19.290640>,  <32.343224, 33.001369, 19.299284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108295, 32.953060, 19.290640>,  <31.716747, 32.872543, 19.276234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108295, 32.953060, 19.290640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063331, 0.465875, -0.882581,
		-0.194438, 0.861650, 0.468778,
		0.978868, 0.201296, 0.036015,
		32.401955, 33.013451, 19.301445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787355, 33.246536, 18.641512>,  <31.716747, 32.872543, 19.276234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787355, 33.246536, 18.641512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173317, 33.228275, 18.744953>,  <32.404896, 33.217319, 18.807018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173317, 33.228275, 18.744953>,  <31.787355, 33.246536, 18.641512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173317, 33.228275, 18.744953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252304, 0.434231, -0.864746,
		-0.072818, 0.899644, 0.430509,
		0.964904, -0.045651, 0.258604,
		32.462788, 33.214581, 18.822535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175701, 33.852676, 18.496161>,  <31.787355, 33.246536, 18.641512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175701, 33.852676, 18.496161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435925, 33.548946, 18.501768>,  <32.592060, 33.366707, 18.505133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435925, 33.548946, 18.501768>,  <32.175701, 33.852676, 18.496161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435925, 33.548946, 18.501768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302417, 0.242074, -0.921924,
		0.696649, 0.604005, 0.387117,
		0.650557, -0.759328, 0.014021,
		32.631092, 33.321148, 18.505974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825535, 34.196621, 18.131714>,  <32.175701, 33.852676, 18.496161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825535, 34.196621, 18.131714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814049, 33.797283, 18.111746>,  <32.807159, 33.557682, 18.099766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814049, 33.797283, 18.111746>,  <32.825535, 34.196621, 18.131714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814049, 33.797283, 18.111746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399195, 0.034332, -0.916223,
		0.916416, -0.046233, 0.397547,
		-0.028711, -0.998341, -0.049918,
		32.805435, 33.497780, 18.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453194, 34.066845, 18.038776>,  <32.825535, 34.196621, 18.131714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453194, 34.066845, 18.038776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239399, 33.781296, 17.857800>,  <33.111122, 33.609966, 17.749212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239399, 33.781296, 17.857800>,  <33.453194, 34.066845, 18.038776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239399, 33.781296, 17.857800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384743, 0.271129, -0.882305,
		0.752528, -0.645653, 0.129745,
		-0.534485, -0.713877, -0.452443,
		33.079052, 33.567131, 17.722067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766914, 33.780670, 17.506262>,  <33.453194, 34.066845, 18.038776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766914, 33.780670, 17.506262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419750, 33.638035, 17.367943>,  <33.211452, 33.552456, 17.284952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419750, 33.638035, 17.367943>,  <33.766914, 33.780670, 17.506262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419750, 33.638035, 17.367943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274829, 0.235162, -0.932292,
		0.413759, -0.904183, -0.106101,
		-0.867913, -0.356584, -0.345796,
		33.159378, 33.531059, 17.264204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032650, 33.312267, 16.983210>,  <33.766914, 33.780670, 17.506262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032650, 33.312267, 16.983210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640461, 33.370602, 16.930443>,  <33.405148, 33.405602, 16.898783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640461, 33.370602, 16.930443>,  <34.032650, 33.312267, 16.983210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640461, 33.370602, 16.930443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118633, -0.096341, -0.988253,
		-0.156828, -0.984607, 0.077160,
		-0.980475, 0.145833, -0.131916,
		33.346317, 33.414352, 16.890867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760693, 32.785431, 16.604502>,  <34.032650, 33.312267, 16.983210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760693, 32.785431, 16.604502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485485, 33.072006, 16.558279>,  <33.320362, 33.243950, 16.530544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485485, 33.072006, 16.558279>,  <33.760693, 32.785431, 16.604502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485485, 33.072006, 16.558279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033976, -0.127262, -0.991287,
		-0.724899, -0.685948, 0.063217,
		-0.688017, 0.716435, -0.115558,
		33.279079, 33.286938, 16.523611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423809, 32.542561, 16.113615>,  <33.760693, 32.785431, 16.604502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423809, 32.542561, 16.113615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318871, 32.928455, 16.105057>,  <33.255909, 33.159992, 16.099922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318871, 32.928455, 16.105057>,  <33.423809, 32.542561, 16.113615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318871, 32.928455, 16.105057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119632, 0.010516, -0.992763,
		-0.957529, -0.263007, -0.118172,
		-0.262346, 0.964737, -0.021395,
		33.240166, 33.217876, 16.098639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754696, 32.588085, 15.768025>,  <33.423809, 32.542561, 16.113615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754696, 32.588085, 15.768025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961010, 32.930641, 15.758594>,  <33.084801, 33.136177, 15.752934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961010, 32.930641, 15.758594>,  <32.754696, 32.588085, 15.768025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961010, 32.930641, 15.758594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035220, -0.048696, -0.998192,
		-0.855992, 0.514025, -0.055279,
		0.515788, 0.856392, -0.023580,
		33.115746, 33.187557, 15.751519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364532, 33.054993, 15.381823>,  <32.754696, 32.588085, 15.768025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364532, 33.054993, 15.381823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749481, 33.163433, 15.374487>,  <32.980453, 33.228497, 15.370086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749481, 33.163433, 15.374487>,  <32.364532, 33.054993, 15.381823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749481, 33.163433, 15.374487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042768, 0.084483, -0.995507,
		-0.268332, 0.958837, 0.092899,
		0.962377, 0.271100, -0.018338,
		33.038193, 33.244762, 15.368985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730555, 33.146172, 15.143143>,  <32.364532, 33.054993, 15.381823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730555, 33.146172, 15.143143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436987, 32.925831, 14.984186>,  <31.260845, 32.793625, 14.888812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436987, 32.925831, 14.984186>,  <31.730555, 33.146172, 15.143143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436987, 32.925831, 14.984186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032418, -0.612797, 0.789575,
		-0.678461, 0.566603, 0.467602,
		-0.733921, -0.550854, -0.397391,
		31.216810, 32.760574, 14.864969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214888, 33.082443, 15.688261>,  <31.730555, 33.146172, 15.143143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214888, 33.082443, 15.688261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161934, 32.767422, 15.447516>,  <31.130161, 32.578411, 15.303070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161934, 32.767422, 15.447516>,  <31.214888, 33.082443, 15.688261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161934, 32.767422, 15.447516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009629, -0.608198, 0.793727,
		-0.991152, 0.099282, 0.088100,
		-0.132385, -0.787552, -0.601861,
		31.122219, 32.531155, 15.266958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642679, 32.778439, 15.854467>,  <31.214888, 33.082443, 15.688261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642679, 32.778439, 15.854467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852236, 32.490601, 15.672162>,  <30.977970, 32.317898, 15.562779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852236, 32.490601, 15.672162>,  <30.642679, 32.778439, 15.854467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852236, 32.490601, 15.672162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022496, -0.523191, 0.851919,
		-0.851489, -0.456564, -0.257906,
		0.523890, -0.719598, -0.455762,
		31.009403, 32.274723, 15.535434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387930, 32.169044, 16.149721>,  <30.642679, 32.778439, 15.854467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387930, 32.169044, 16.149721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737394, 32.061054, 15.987819>,  <30.947073, 31.996260, 15.890677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737394, 32.061054, 15.987819>,  <30.387930, 32.169044, 16.149721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737394, 32.061054, 15.987819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190777, -0.575196, 0.795458,
		-0.447569, -0.772180, -0.451022,
		0.873663, -0.269978, -0.404753,
		30.999493, 31.980061, 15.866392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419073, 31.395098, 15.969578>,  <30.387930, 32.169044, 16.149721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419073, 31.395098, 15.969578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.789701, 31.527258, 16.041471>,  <31.012077, 31.606554, 16.084608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.789701, 31.527258, 16.041471>,  <30.419073, 31.395098, 15.969578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789701, 31.527258, 16.041471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128115, -0.726524, 0.675092,
		0.353634, -0.602492, -0.715504,
		0.926569, 0.330402, 0.179735,
		31.067673, 31.626379, 16.095392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657112, 30.806957, 16.212063>,  <30.419073, 31.395098, 15.969578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657112, 30.806957, 16.212063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932434, 31.085487, 16.293421>,  <31.097628, 31.252605, 16.342236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932434, 31.085487, 16.293421>,  <30.657112, 30.806957, 16.212063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932434, 31.085487, 16.293421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394010, -0.594274, 0.701138,
		0.609093, -0.402456, -0.683399,
		0.688304, 0.696325, 0.203397,
		31.138926, 31.294384, 16.354441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279430, 30.404123, 16.282263>,  <30.657112, 30.806957, 16.212063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279430, 30.404123, 16.282263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310759, 30.762922, 16.456278>,  <31.329556, 30.978203, 16.560686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.310759, 30.762922, 16.456278>,  <31.279430, 30.404123, 16.282263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310759, 30.762922, 16.456278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400703, -0.427902, 0.810146,
		0.912854, 0.110869, -0.392945,
		0.078322, 0.896999, 0.435038,
		31.334255, 31.032022, 16.586790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929838, 30.338926, 16.685083>,  <31.279430, 30.404123, 16.282263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929838, 30.338926, 16.685083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748377, 30.661396, 16.837021>,  <31.639500, 30.854877, 16.928185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748377, 30.661396, 16.837021>,  <31.929838, 30.338926, 16.685083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748377, 30.661396, 16.837021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259256, -0.288407, 0.921742,
		0.852634, 0.516628, -0.078169,
		-0.453653, 0.806174, 0.379845,
		31.612282, 30.903248, 16.950974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348076, 30.617239, 17.264088>,  <31.929838, 30.338926, 16.685083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348076, 30.617239, 17.264088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990934, 30.785336, 17.328854>,  <31.776649, 30.886192, 17.367714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990934, 30.785336, 17.328854>,  <32.348076, 30.617239, 17.264088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990934, 30.785336, 17.328854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115835, -0.133138, 0.984305,
		0.435201, 0.897593, 0.070193,
		-0.892851, 0.420240, 0.161914,
		31.723080, 30.911407, 17.377428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443874, 30.761524, 17.881189>,  <32.348076, 30.617239, 17.264088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443874, 30.761524, 17.881189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 30.801407, 17.867067>,  <31.807467, 30.825336, 17.858593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 30.801407, 17.867067>,  <32.443874, 30.761524, 17.881189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046120, 30.801407, 17.867067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043278, -0.078960, 0.995938,
		0.096513, 0.991879, 0.082832,
		-0.994390, 0.099705, -0.035306,
		31.747803, 30.831318, 17.856476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253719, 31.021584, 18.506741>,  <32.443874, 30.761524, 17.881189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253719, 31.021584, 18.506741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901075, 30.887106, 18.374235>,  <31.689489, 30.806419, 18.294731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.901075, 30.887106, 18.374235>,  <32.253719, 31.021584, 18.506741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901075, 30.887106, 18.374235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259069, -0.241981, 0.935055,
		-0.394520, 0.910175, 0.126235,
		-0.881610, -0.336194, -0.331265,
		31.636593, 30.786247, 18.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836037, 31.258596, 18.983721>,  <32.253719, 31.021584, 18.506741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836037, 31.258596, 18.983721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615648, 30.954840, 18.845295>,  <31.483416, 30.772587, 18.762239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615648, 30.954840, 18.845295>,  <31.836037, 31.258596, 18.983721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615648, 30.954840, 18.845295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139033, -0.325359, 0.935314,
		-0.822862, 0.563444, 0.073683,
		-0.550970, -0.759389, -0.346062,
		31.450357, 30.727022, 18.741476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160265, 31.221634, 19.371353>,  <31.836037, 31.258596, 18.983721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160265, 31.221634, 19.371353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229559, 30.858541, 19.218506>,  <31.271135, 30.640686, 19.126797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229559, 30.858541, 19.218506>,  <31.160265, 31.221634, 19.371353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229559, 30.858541, 19.218506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104658, -0.402757, 0.909304,
		-0.979304, -0.117532, -0.164773,
		0.173236, -0.907730, -0.382120,
		31.281530, 30.586222, 19.103870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519392, 30.769112, 19.526228>,  <31.160265, 31.221634, 19.371353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519392, 30.769112, 19.526228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856726, 30.559027, 19.480721>,  <31.059126, 30.432976, 19.453417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856726, 30.559027, 19.480721>,  <30.519392, 30.769112, 19.526228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856726, 30.559027, 19.480721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108253, -0.373396, 0.921334,
		-0.526376, -0.764675, -0.371753,
		0.843332, -0.525211, -0.113768,
		31.109726, 30.401464, 19.446590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855381, 30.868938, 19.584602>,  <30.519392, 30.769112, 19.526228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855381, 30.868938, 19.584602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599363, 31.134502, 19.739298>,  <29.445753, 31.293840, 19.832115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599363, 31.134502, 19.739298>,  <29.855381, 30.868938, 19.584602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599363, 31.134502, 19.739298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104071, 0.423796, -0.899759,
		-0.761256, -0.616135, -0.202156,
		-0.640046, 0.663908, 0.386739,
		29.407349, 31.333675, 19.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417492, 30.951635, 19.072138>,  <29.855381, 30.868938, 19.584602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417492, 30.951635, 19.072138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.350002, 31.259846, 19.318007>,  <29.309507, 31.444773, 19.465527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.350002, 31.259846, 19.318007>,  <29.417492, 30.951635, 19.072138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350002, 31.259846, 19.318007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229174, 0.575854, -0.784775,
		-0.958650, -0.273279, 0.079423,
		-0.168726, 0.770527, 0.614671,
		29.299385, 31.491003, 19.502407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717731, 31.254370, 19.097982>,  <29.417492, 30.951635, 19.072138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717731, 31.254370, 19.097982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969139, 31.548594, 19.199108>,  <29.119984, 31.725128, 19.259783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969139, 31.548594, 19.199108>,  <28.717731, 31.254370, 19.097982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969139, 31.548594, 19.199108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227559, 0.484720, -0.844549,
		-0.743759, 0.473287, 0.472040,
		0.628521, 0.735559, 0.252814,
		29.157696, 31.769260, 19.274952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592495, 31.800364, 18.580801>,  <28.717731, 31.254370, 19.097982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592495, 31.800364, 18.580801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.932608, 31.943686, 18.735016>,  <29.136675, 32.029678, 18.827545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.932608, 31.943686, 18.735016>,  <28.592495, 31.800364, 18.580801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932608, 31.943686, 18.735016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042667, 0.683172, -0.729010,
		-0.524596, 0.636313, 0.565601,
		0.850281, 0.358304, 0.385539,
		29.187693, 32.051178, 18.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493618, 32.542946, 18.684713>,  <28.592495, 31.800364, 18.580801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493618, 32.542946, 18.684713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891523, 32.508503, 18.662691>,  <29.130266, 32.487839, 18.649479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891523, 32.508503, 18.662691>,  <28.493618, 32.542946, 18.684713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891523, 32.508503, 18.662691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024328, 0.722692, -0.690742,
		0.099265, 0.685786, 0.721002,
		0.994764, -0.086107, -0.055054,
		29.189953, 32.482670, 18.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653202, 33.185970, 18.540693>,  <28.493618, 32.542946, 18.684713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653202, 33.185970, 18.540693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.977522, 32.970688, 18.448666>,  <29.172113, 32.841518, 18.393450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.977522, 32.970688, 18.448666>,  <28.653202, 33.185970, 18.540693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977522, 32.970688, 18.448666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198070, 0.622162, -0.757419,
		0.550790, 0.568547, 0.611053,
		0.810801, -0.538209, -0.230069,
		29.220762, 32.809223, 18.379644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176470, 33.728817, 18.323679>,  <28.653202, 33.185970, 18.540693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176470, 33.728817, 18.323679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.275635, 33.373119, 18.169912>,  <29.335135, 33.159698, 18.077652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.275635, 33.373119, 18.169912>,  <29.176470, 33.728817, 18.323679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275635, 33.373119, 18.169912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148037, 0.426917, -0.892091,
		0.957405, 0.164254, 0.237480,
		0.247914, -0.889248, -0.384417,
		29.350008, 33.106346, 18.054586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673347, 34.405025, 18.358690>,  <29.176470, 33.728817, 18.323679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673347, 34.405025, 18.358690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.505732, 34.767757, 18.376883>,  <29.405161, 34.985397, 18.387798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.505732, 34.767757, 18.376883>,  <29.673347, 34.405025, 18.358690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505732, 34.767757, 18.376883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114729, -0.102573, 0.988087,
		0.900689, 0.408831, 0.147022,
		-0.419041, 0.906827, 0.045482,
		29.380020, 35.039806, 18.390528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077274, 34.806908, 18.881115>,  <29.673347, 34.405025, 18.358690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077274, 34.806908, 18.881115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.725382, 34.996964, 18.873955>,  <29.514246, 35.110996, 18.869659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.725382, 34.996964, 18.873955>,  <30.077274, 34.806908, 18.881115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725382, 34.996964, 18.873955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069922, 0.166518, 0.983556,
		0.470305, 0.864012, -0.179713,
		-0.879730, 0.475137, -0.017901,
		29.461462, 35.139503, 18.868584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205017, 35.221401, 19.368616>,  <30.077274, 34.806908, 18.881115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205017, 35.221401, 19.368616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808409, 35.204563, 19.319447>,  <29.570442, 35.194462, 19.289946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.808409, 35.204563, 19.319447>,  <30.205017, 35.221401, 19.368616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808409, 35.204563, 19.319447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121644, -0.031702, 0.992067,
		-0.045655, 0.998611, 0.026313,
		-0.991523, -0.042092, -0.122922,
		29.510952, 35.191936, 19.282570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905609, 35.888771, 19.701950>,  <30.205017, 35.221401, 19.368616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905609, 35.888771, 19.701950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598248, 35.633087, 19.689526>,  <29.413830, 35.479675, 19.682072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598248, 35.633087, 19.689526>,  <29.905609, 35.888771, 19.701950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598248, 35.633087, 19.689526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085937, 0.054969, 0.994783,
		-0.634169, 0.767065, -0.097170,
		-0.768404, -0.639211, -0.031059,
		29.367725, 35.441322, 19.680208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335556, 36.124210, 20.193201>,  <29.905609, 35.888771, 19.701950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335556, 36.124210, 20.193201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.249973, 35.739464, 20.125034>,  <29.198624, 35.508617, 20.084135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.249973, 35.739464, 20.125034>,  <29.335556, 36.124210, 20.193201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249973, 35.739464, 20.125034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164974, -0.136369, 0.976825,
		-0.962812, 0.237111, -0.129505,
		-0.213956, -0.961864, -0.170415,
		29.185787, 35.450905, 20.073910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750816, 36.041267, 20.539766>,  <29.335556, 36.124210, 20.193201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750816, 36.041267, 20.539766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.925316, 35.683174, 20.503433>,  <29.030016, 35.468319, 20.481634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.925316, 35.683174, 20.503433>,  <28.750816, 36.041267, 20.539766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925316, 35.683174, 20.503433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113621, -0.154939, 0.981369,
		-0.892624, -0.417799, -0.169308,
		0.436248, -0.895231, -0.090832,
		29.056190, 35.414604, 20.476183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418722, 35.546661, 20.983912>,  <28.750816, 36.041267, 20.539766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418722, 35.546661, 20.983912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.774544, 35.375580, 20.919708>,  <28.988037, 35.272930, 20.881186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.774544, 35.375580, 20.919708>,  <28.418722, 35.546661, 20.983912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774544, 35.375580, 20.919708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017977, -0.383851, 0.923220,
		-0.456481, -0.818367, -0.349144,
		0.889552, -0.427709, -0.160509,
		29.041409, 35.247269, 20.871555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.807865, 36.287407, 16.800823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671692, 35.919617, 16.879478>,  <32.589989, 35.698940, 16.926672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671692, 35.919617, 16.879478>,  <32.807865, 36.287407, 16.800823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671692, 35.919617, 16.879478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398828, 0.048181, 0.915759,
		-0.851495, 0.390177, 0.350312,
		-0.340430, -0.919478, 0.196639,
		32.569561, 35.643772, 16.938471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282528, 36.232872, 17.348103>,  <32.807865, 36.287407, 16.800823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282528, 36.232872, 17.348103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532955, 35.923649, 17.307274>,  <32.683212, 35.738113, 17.282776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.532955, 35.923649, 17.307274>,  <32.282528, 36.232872, 17.348103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532955, 35.923649, 17.307274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342454, 0.154983, 0.926664,
		-0.700550, -0.615105, 0.361768,
		0.626064, -0.773063, -0.102072,
		32.720776, 35.691730, 17.276651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132305, 35.880428, 18.006887>,  <32.282528, 36.232872, 17.348103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132305, 35.880428, 18.006887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.478516, 35.751251, 17.853746>,  <32.686241, 35.673744, 17.761862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.478516, 35.751251, 17.853746>,  <32.132305, 35.880428, 18.006887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478516, 35.751251, 17.853746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398734, -0.018329, 0.916884,
		-0.303115, -0.946242, 0.112903,
		0.865525, -0.322939, -0.382854,
		32.738174, 35.654369, 17.738890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231709, 35.329361, 18.435188>,  <32.132305, 35.880428, 18.006887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231709, 35.329361, 18.435188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.568508, 35.480579, 18.281248>,  <32.770588, 35.571312, 18.188885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.568508, 35.480579, 18.281248>,  <32.231709, 35.329361, 18.435188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568508, 35.480579, 18.281248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396397, 0.050324, 0.916699,
		0.365923, -0.924417, -0.107484,
		0.842003, 0.378047, -0.384851,
		32.821110, 35.593994, 18.165792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682583, 34.922428, 18.722187>,  <32.231709, 35.329361, 18.435188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682583, 34.922428, 18.722187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877319, 35.256485, 18.619797>,  <32.994160, 35.456921, 18.558363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877319, 35.256485, 18.619797>,  <32.682583, 34.922428, 18.722187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877319, 35.256485, 18.619797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479646, -0.010679, 0.877397,
		0.730017, -0.549932, -0.405771,
		0.486842, 0.835141, -0.255977,
		33.023373, 35.507027, 18.543003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362553, 34.850048, 19.083105>,  <32.682583, 34.922428, 18.722187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362553, 34.850048, 19.083105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292747, 35.233673, 18.993895>,  <33.250866, 35.463848, 18.940369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.292747, 35.233673, 18.993895>,  <33.362553, 34.850048, 19.083105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292747, 35.233673, 18.993895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497188, 0.281333, 0.820765,
		0.849912, 0.032346, -0.525931,
		-0.174510, 0.959065, -0.223026,
		33.240395, 35.521393, 18.926987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933903, 35.140518, 19.451145>,  <33.362553, 34.850048, 19.083105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933903, 35.140518, 19.451145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692688, 35.446621, 19.361053>,  <33.547958, 35.630283, 19.306999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.692688, 35.446621, 19.361053>,  <33.933903, 35.140518, 19.451145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692688, 35.446621, 19.361053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301865, 0.480264, 0.823544,
		0.738389, 0.428642, -0.520622,
		-0.603041, 0.765253, -0.225230,
		33.511776, 35.676197, 19.293484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386936, 35.742687, 19.435711>,  <33.933903, 35.140518, 19.451145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386936, 35.742687, 19.435711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.008434, 35.843513, 19.516771>,  <33.781334, 35.904011, 19.565407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.008434, 35.843513, 19.516771>,  <34.386936, 35.742687, 19.435711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008434, 35.843513, 19.516771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283839, 0.346841, 0.893944,
		0.155045, 0.903418, -0.399746,
		-0.946254, 0.252065, 0.202649,
		33.724560, 35.919132, 19.577566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467274, 36.384476, 19.652281>,  <34.386936, 35.742687, 19.435711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467274, 36.384476, 19.652281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.100399, 36.287735, 19.778942>,  <33.880272, 36.229691, 19.854939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.100399, 36.287735, 19.778942>,  <34.467274, 36.384476, 19.652281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100399, 36.287735, 19.778942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174408, 0.470857, 0.864798,
		-0.358253, 0.848411, -0.389685,
		-0.917190, -0.241852, 0.316655,
		33.825241, 36.215179, 19.873940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135983, 36.962219, 19.879747>,  <34.467274, 36.384476, 19.652281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135983, 36.962219, 19.879747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.919411, 36.676258, 20.056728>,  <33.789467, 36.504681, 20.162918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.919411, 36.676258, 20.056728>,  <34.135983, 36.962219, 19.879747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919411, 36.676258, 20.056728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210138, 0.394490, 0.894550,
		-0.814059, 0.577315, -0.063362,
		-0.541432, -0.714902, 0.442454,
		33.756981, 36.461788, 20.189465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887135, 37.385231, 20.461281>,  <34.135983, 36.962219, 19.879747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887135, 37.385231, 20.461281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.788853, 37.012146, 20.566866>,  <33.729885, 36.788296, 20.630217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.788853, 37.012146, 20.566866>,  <33.887135, 37.385231, 20.461281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788853, 37.012146, 20.566866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030979, 0.279727, 0.959580,
		-0.968850, 0.227594, -0.097624,
		-0.245703, -0.932713, 0.263963,
		33.715141, 36.732330, 20.646055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281246, 37.400749, 20.927431>,  <33.887135, 37.385231, 20.461281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281246, 37.400749, 20.927431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.459328, 37.045490, 20.973026>,  <33.566177, 36.832336, 21.000383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.459328, 37.045490, 20.973026>,  <33.281246, 37.400749, 20.927431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459328, 37.045490, 20.973026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028165, 0.113346, 0.993156,
		-0.894988, -0.445363, 0.025447,
		0.445200, -0.888147, 0.113987,
		33.592888, 36.779045, 21.007223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594872, 37.471420, 20.910313>,  <33.281246, 37.400749, 20.927431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594872, 37.471420, 20.910313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230476, 37.633804, 20.881203>,  <32.011841, 37.731236, 20.863737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230476, 37.633804, 20.881203>,  <32.594872, 37.471420, 20.910313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230476, 37.633804, 20.881203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217316, 0.322510, -0.921283,
		-0.350537, -0.855092, -0.382024,
		-0.910987, 0.405963, -0.072773,
		31.957180, 37.755592, 20.859371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354023, 37.228168, 20.333086>,  <32.594872, 37.471420, 20.910313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354023, 37.228168, 20.333086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116024, 37.543972, 20.393293>,  <31.973225, 37.733456, 20.429417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116024, 37.543972, 20.393293>,  <32.354023, 37.228168, 20.333086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116024, 37.543972, 20.393293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090656, 0.252003, -0.963471,
		-0.798599, -0.559617, -0.221515,
		-0.594997, 0.789508, 0.150517,
		31.937525, 37.780823, 20.438448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785543, 37.240585, 19.807159>,  <32.354023, 37.228168, 20.333086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785543, 37.240585, 19.807159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770912, 37.620934, 19.930126>,  <31.762135, 37.849144, 20.003906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770912, 37.620934, 19.930126>,  <31.785543, 37.240585, 19.807159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770912, 37.620934, 19.930126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085800, 0.309475, -0.947029,
		-0.995641, -0.008262, -0.092904,
		-0.036576, 0.950872, 0.307417,
		31.759939, 37.906197, 20.022352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192616, 37.582272, 19.429888>,  <31.785543, 37.240585, 19.807159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192616, 37.582272, 19.429888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383810, 37.917480, 19.535151>,  <31.498528, 38.118607, 19.598309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383810, 37.917480, 19.535151>,  <31.192616, 37.582272, 19.429888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383810, 37.917480, 19.535151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034570, 0.281418, -0.958963,
		-0.877686, 0.467470, 0.105544,
		0.477989, 0.838019, 0.263157,
		31.527206, 38.168884, 19.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823168, 38.244041, 19.184458>,  <31.192616, 37.582272, 19.429888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823168, 38.244041, 19.184458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220785, 38.282394, 19.205198>,  <31.459354, 38.305408, 19.217642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220785, 38.282394, 19.205198>,  <30.823168, 38.244041, 19.184458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220785, 38.282394, 19.205198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043743, 0.084790, -0.995438,
		-0.099844, 0.991775, 0.080091,
		0.994041, 0.095885, 0.051849,
		31.518997, 38.311161, 19.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110418, 38.460697, 18.538719>,  <30.823168, 38.244041, 19.184458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110418, 38.460697, 18.538719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.476215, 38.407791, 18.691671>,  <31.695694, 38.376049, 18.783443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.476215, 38.407791, 18.691671>,  <31.110418, 38.460697, 18.538719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476215, 38.407791, 18.691671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399803, 0.150168, -0.904216,
		0.062171, 0.979774, 0.190206,
		0.914490, -0.132261, 0.382380,
		31.750563, 38.368114, 18.806385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506302, 39.086506, 18.359264>,  <31.110418, 38.460697, 18.538719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506302, 39.086506, 18.359264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752220, 38.777008, 18.420376>,  <31.899771, 38.591309, 18.457043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752220, 38.777008, 18.420376>,  <31.506302, 39.086506, 18.359264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752220, 38.777008, 18.420376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372781, 0.114378, -0.920843,
		0.695025, 0.623083, 0.358757,
		0.614796, -0.773747, 0.152778,
		31.936659, 38.544884, 18.466209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042809, 39.195358, 17.937237>,  <31.506302, 39.086506, 18.359264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042809, 39.195358, 17.937237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.069416, 38.801632, 18.002586>,  <32.085381, 38.565395, 18.041796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.069416, 38.801632, 18.002586>,  <32.042809, 39.195358, 17.937237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069416, 38.801632, 18.002586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443160, -0.117556, -0.888701,
		0.893971, 0.131517, 0.428391,
		0.066519, -0.984319, 0.163375,
		32.089371, 38.506336, 18.051600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605450, 39.087860, 17.600077>,  <32.042809, 39.195358, 17.937237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605450, 39.087860, 17.600077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.452160, 38.719540, 17.629095>,  <32.360188, 38.498547, 17.646507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.452160, 38.719540, 17.629095>,  <32.605450, 39.087860, 17.600077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452160, 38.719540, 17.629095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221259, -0.167772, -0.960675,
		0.896764, -0.352099, 0.268030,
		-0.383221, -0.920803, 0.072547,
		32.337193, 38.443298, 17.650860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029411, 38.616299, 17.153116>,  <32.605450, 39.087860, 17.600077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029411, 38.616299, 17.153116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692459, 38.408703, 17.211143>,  <32.490288, 38.284145, 17.245960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692459, 38.408703, 17.211143>,  <33.029411, 38.616299, 17.153116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692459, 38.408703, 17.211143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017145, -0.294878, -0.955381,
		0.538614, -0.802305, 0.257297,
		-0.842378, -0.518993, 0.145070,
		32.439747, 38.253006, 17.254663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064198, 38.099621, 16.666897>,  <33.029411, 38.616299, 17.153116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064198, 38.099621, 16.666897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682098, 38.092098, 16.784985>,  <32.452839, 38.087585, 16.855837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682098, 38.092098, 16.784985>,  <33.064198, 38.099621, 16.666897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682098, 38.092098, 16.784985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283125, -0.231033, -0.930840,
		0.085716, -0.972764, 0.215367,
		-0.955245, -0.018812, 0.295218,
		32.395523, 38.086456, 16.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810558, 37.419209, 16.489029>,  <33.064198, 38.099621, 16.666897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810558, 37.419209, 16.489029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515469, 37.687725, 16.460365>,  <32.338413, 37.848835, 16.443167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515469, 37.687725, 16.460365>,  <32.810558, 37.419209, 16.489029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515469, 37.687725, 16.460365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196144, -0.314696, -0.928706,
		-0.645982, -0.671071, 0.363827,
		-0.737723, 0.671290, -0.071662,
		32.294151, 37.889111, 16.438868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171074, 37.061722, 16.129789>,  <32.810558, 37.419209, 16.489029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171074, 37.061722, 16.129789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114277, 37.456020, 16.093676>,  <32.080200, 37.692600, 16.072008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114277, 37.456020, 16.093676>,  <32.171074, 37.061722, 16.129789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114277, 37.456020, 16.093676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342101, -0.134454, -0.929994,
		-0.928873, -0.101164, 0.356315,
		-0.141990, 0.985742, -0.090283,
		32.071678, 37.751743, 16.066591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580235, 37.079544, 15.948706>,  <32.171074, 37.061722, 16.129789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580235, 37.079544, 15.948706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.718367, 37.436531, 15.832607>,  <31.801247, 37.650723, 15.762948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.718367, 37.436531, 15.832607>,  <31.580235, 37.079544, 15.948706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718367, 37.436531, 15.832607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486732, -0.094105, -0.868468,
		-0.802395, 0.441182, 0.401896,
		0.345332, 0.892470, -0.290247,
		31.821966, 37.704273, 15.745533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071011, 36.656029, 16.406824>,  <31.580235, 37.079544, 15.948706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071011, 36.656029, 16.406824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823774, 36.417576, 16.201849>,  <30.675432, 36.274506, 16.078863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823774, 36.417576, 16.201849>,  <31.071011, 36.656029, 16.406824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823774, 36.417576, 16.201849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576773, -0.099021, 0.810881,
		-0.534132, 0.796759, -0.282627,
		-0.618091, -0.596129, -0.512439,
		30.638348, 36.238739, 16.048117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324383, 36.868759, 16.582907>,  <31.071011, 36.656029, 16.406824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324383, 36.868759, 16.582907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291706, 36.491413, 16.454294>,  <30.272100, 36.265003, 16.377127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291706, 36.491413, 16.454294>,  <30.324383, 36.868759, 16.582907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291706, 36.491413, 16.454294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595221, -0.212579, 0.774933,
		-0.799399, 0.254685, -0.544148,
		-0.081690, -0.943369, -0.321530,
		30.267199, 36.208401, 16.357836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607407, 36.685211, 16.782070>,  <30.324383, 36.868759, 16.582907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607407, 36.685211, 16.782070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761168, 36.320236, 16.725946>,  <29.853424, 36.101250, 16.692272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761168, 36.320236, 16.725946>,  <29.607407, 36.685211, 16.782070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761168, 36.320236, 16.725946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584933, -0.358318, 0.727641,
		-0.714206, -0.197632, -0.671454,
		0.384400, -0.912441, -0.140312,
		29.876488, 36.046505, 16.683853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043962, 36.153313, 16.729700>,  <29.607407, 36.685211, 16.782070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043962, 36.153313, 16.729700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385244, 35.979130, 16.844534>,  <29.590014, 35.874622, 16.913435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385244, 35.979130, 16.844534>,  <29.043962, 36.153313, 16.729700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385244, 35.979130, 16.844534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486780, -0.467143, 0.738121,
		-0.187307, -0.769518, -0.610539,
		0.853207, -0.435453, 0.287087,
		29.641207, 35.848495, 16.930660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820761, 35.500221, 16.855219>,  <29.043962, 36.153313, 16.729700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820761, 35.500221, 16.855219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163536, 35.527859, 17.059526>,  <29.369202, 35.544441, 17.182112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163536, 35.527859, 17.059526>,  <28.820761, 35.500221, 16.855219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163536, 35.527859, 17.059526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452853, -0.372304, 0.810132,
		0.246136, -0.925535, -0.287752,
		0.856937, 0.069094, 0.510769,
		29.420618, 35.548588, 17.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871664, 34.817551, 17.213268>,  <28.820761, 35.500221, 16.855219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871664, 34.817551, 17.213268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118771, 35.069218, 17.401951>,  <29.267035, 35.220219, 17.515162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118771, 35.069218, 17.401951>,  <28.871664, 34.817551, 17.213268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118771, 35.069218, 17.401951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472913, -0.182006, 0.862106,
		0.628266, -0.755658, 0.185105,
		0.617767, 0.629170, 0.471708,
		29.304100, 35.257969, 17.543463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328831, 34.470020, 17.722479>,  <28.871664, 34.817551, 17.213268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328831, 34.470020, 17.722479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330053, 34.844040, 17.864277>,  <29.330788, 35.068451, 17.949356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330053, 34.844040, 17.864277>,  <29.328831, 34.470020, 17.722479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330053, 34.844040, 17.864277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091511, -0.352746, 0.931234,
		0.995799, -0.035287, 0.084489,
		0.003057, 0.935053, 0.354493,
		29.330971, 35.124557, 17.970625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810268, 33.808636, 17.737707>,  <29.328831, 34.470020, 17.722479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810268, 33.808636, 17.737707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608978, 33.473732, 17.652138>,  <29.488205, 33.272789, 17.600796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608978, 33.473732, 17.652138>,  <29.810268, 33.808636, 17.737707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608978, 33.473732, 17.652138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165673, 0.149489, -0.974785,
		0.848126, -0.525976, 0.063485,
		-0.503224, -0.837259, -0.213925,
		29.458012, 33.222553, 17.587959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165182, 33.497940, 17.179382>,  <29.810268, 33.808636, 17.737707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165182, 33.497940, 17.179382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799919, 33.340584, 17.136707>,  <29.580761, 33.246170, 17.111103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799919, 33.340584, 17.136707>,  <30.165182, 33.497940, 17.179382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799919, 33.340584, 17.136707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049289, 0.153249, -0.986958,
		0.404613, -0.906508, -0.120550,
		-0.913159, -0.393394, -0.106688,
		29.525970, 33.222565, 17.104700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217566, 33.252171, 16.550596>,  <30.165182, 33.497940, 17.179382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217566, 33.252171, 16.550596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824085, 33.225925, 16.617561>,  <29.587997, 33.210178, 16.657742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824085, 33.225925, 16.617561>,  <30.217566, 33.252171, 16.550596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824085, 33.225925, 16.617561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173870, 0.109677, -0.978642,
		0.045848, -0.991799, -0.119297,
		-0.983701, -0.065611, 0.167415,
		29.528975, 33.206242, 16.667786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939949, 32.762207, 16.156403>,  <30.217566, 33.252171, 16.550596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939949, 32.762207, 16.156403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621223, 32.986732, 16.245855>,  <29.429989, 33.121449, 16.299526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621223, 32.986732, 16.245855>,  <29.939949, 32.762207, 16.156403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621223, 32.986732, 16.245855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335468, -0.103150, -0.936387,
		-0.502542, -0.821148, 0.270495,
		-0.796814, 0.561316, 0.223631,
		29.382179, 33.155128, 16.312944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440559, 32.472557, 15.838427>,  <29.939949, 32.762207, 16.156403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440559, 32.472557, 15.838427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287224, 32.838787, 15.887033>,  <29.195223, 33.058525, 15.916196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287224, 32.838787, 15.887033>,  <29.440559, 32.472557, 15.838427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287224, 32.838787, 15.887033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307720, -0.002559, -0.951474,
		-0.870839, -0.402128, 0.282723,
		-0.383338, 0.915580, 0.121515,
		29.172222, 33.113461, 15.923487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960718, 32.482769, 15.400694>,  <29.440559, 32.472557, 15.838427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960718, 32.482769, 15.400694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969248, 32.873024, 15.488032>,  <28.974365, 33.107178, 15.540436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969248, 32.873024, 15.488032>,  <28.960718, 32.482769, 15.400694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969248, 32.873024, 15.488032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450654, 0.204331, -0.868999,
		-0.892444, -0.079866, 0.444033,
		0.021326, 0.975638, 0.218346,
		28.975645, 33.165714, 15.553536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318254, 32.791168, 15.213700>,  <28.960718, 32.482769, 15.400694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318254, 32.791168, 15.213700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585991, 33.088200, 15.223172>,  <28.746634, 33.266418, 15.228855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585991, 33.088200, 15.223172>,  <28.318254, 32.791168, 15.213700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585991, 33.088200, 15.223172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111159, 0.131608, -0.985050,
		-0.734591, 0.656703, 0.170635,
		0.669343, 0.742576, 0.023680,
		28.786793, 33.310974, 15.230276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071913, 33.263172, 14.748365>,  <28.318254, 32.791168, 15.213700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071913, 33.263172, 14.748365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454180, 33.374859, 14.785752>,  <28.683540, 33.441872, 14.808185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454180, 33.374859, 14.785752>,  <28.071913, 33.263172, 14.748365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454180, 33.374859, 14.785752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023434, 0.244304, -0.969415,
		-0.293511, 0.928630, 0.226930,
		0.955669, 0.279216, 0.093468,
		28.740881, 33.458622, 14.813792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099977, 33.879108, 14.398305>,  <28.071913, 33.263172, 14.748365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099977, 33.879108, 14.398305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465071, 33.716095, 14.409836>,  <28.684126, 33.618286, 14.416755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465071, 33.716095, 14.409836>,  <28.099977, 33.879108, 14.398305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465071, 33.716095, 14.409836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007814, -0.087963, -0.996093,
		0.408482, 0.908942, -0.083471,
		0.912733, -0.407538, 0.028828,
		28.738890, 33.593834, 14.418485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.076820, 30.733379, 29.901463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451256, 30.703415, 29.763983>,  <32.675919, 30.685436, 29.681496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451256, 30.703415, 29.763983>,  <32.076820, 30.733379, 29.901463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451256, 30.703415, 29.763983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328204, 0.165593, -0.929979,
		0.126580, 0.983345, 0.130423,
		0.936087, -0.074911, -0.343698,
		32.732082, 30.680941, 29.660873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281578, 31.331480, 29.578197>,  <32.076820, 30.733379, 29.901463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281578, 31.331480, 29.578197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436333, 30.998554, 29.419415>,  <32.529186, 30.798800, 29.324144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436333, 30.998554, 29.419415>,  <32.281578, 31.331480, 29.578197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436333, 30.998554, 29.419415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550360, 0.136983, -0.823614,
		0.739882, 0.537110, -0.405077,
		0.386883, -0.832315, -0.396955,
		32.552399, 30.748859, 29.300327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589680, 31.377111, 28.864998>,  <32.281578, 31.331480, 29.578197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589680, 31.377111, 28.864998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485119, 30.993795, 28.911205>,  <32.422382, 30.763805, 28.938931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485119, 30.993795, 28.911205>,  <32.589680, 31.377111, 28.864998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485119, 30.993795, 28.911205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296865, -0.034059, -0.954312,
		0.918444, -0.283754, -0.275580,
		-0.261404, -0.958292, 0.115518,
		32.406696, 30.706308, 28.945860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844677, 31.057531, 28.267191>,  <32.589680, 31.377111, 28.864998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844677, 31.057531, 28.267191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552811, 30.814144, 28.392000>,  <32.377693, 30.668112, 28.466887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552811, 30.814144, 28.392000>,  <32.844677, 31.057531, 28.267191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552811, 30.814144, 28.392000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394024, 0.001188, -0.919099,
		0.558872, -0.793577, -0.240618,
		-0.729662, -0.608468, 0.312024,
		32.333912, 30.631603, 28.485607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869728, 30.575415, 27.793915>,  <32.844677, 31.057531, 28.267191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869728, 30.575415, 27.793915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498825, 30.568010, 27.943499>,  <32.276283, 30.563568, 28.033249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498825, 30.568010, 27.943499>,  <32.869728, 30.575415, 27.793915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498825, 30.568010, 27.943499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365124, -0.176432, -0.914087,
		0.082901, -0.984139, 0.156839,
		-0.927261, -0.018513, 0.373959,
		32.220646, 30.562456, 28.055687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586143, 29.953562, 27.507420>,  <32.869728, 30.575415, 27.793915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586143, 29.953562, 27.507420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293461, 30.198280, 27.627626>,  <32.117851, 30.345112, 27.699751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293461, 30.198280, 27.627626>,  <32.586143, 29.953562, 27.507420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293461, 30.198280, 27.627626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456258, -0.112068, -0.882762,
		-0.506392, -0.783036, 0.361138,
		-0.731707, 0.611796, 0.300516,
		32.073948, 30.381819, 27.717781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952866, 29.662411, 27.325623>,  <32.586143, 29.953562, 27.507420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952866, 29.662411, 27.325623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825527, 30.039549, 27.365025>,  <31.749125, 30.265831, 27.388666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825527, 30.039549, 27.365025>,  <31.952866, 29.662411, 27.325623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825527, 30.039549, 27.365025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701139, -0.164244, -0.693850,
		-0.638013, -0.289950, 0.713350,
		-0.318345, 0.942843, 0.098505,
		31.730024, 30.322401, 27.394577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178724, 29.616106, 27.241156>,  <31.952866, 29.662411, 27.325623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178724, 29.616106, 27.241156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267813, 30.003313, 27.194958>,  <31.321266, 30.235638, 27.167238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267813, 30.003313, 27.194958>,  <31.178724, 29.616106, 27.241156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267813, 30.003313, 27.194958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687491, 0.071962, -0.722619,
		-0.691195, 0.240346, 0.681530,
		0.222723, 0.968016, -0.115496,
		31.334629, 30.293718, 27.160309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574684, 29.884872, 26.975271>,  <31.178724, 29.616106, 27.241156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574684, 29.884872, 26.975271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821739, 30.186920, 26.887341>,  <30.969973, 30.368149, 26.834581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821739, 30.186920, 26.887341>,  <30.574684, 29.884872, 26.975271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821739, 30.186920, 26.887341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568273, 0.235266, -0.788490,
		-0.543684, 0.611922, 0.574421,
		0.617636, 0.755117, -0.219828,
		31.007030, 30.413456, 26.821392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063202, 30.382654, 26.825535>,  <30.574684, 29.884872, 26.975271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063202, 30.382654, 26.825535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412556, 30.472126, 26.652483>,  <30.622168, 30.525810, 26.548651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412556, 30.472126, 26.652483>,  <30.063202, 30.382654, 26.825535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412556, 30.472126, 26.652483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479311, 0.237188, -0.844987,
		-0.086393, 0.945361, 0.314369,
		0.873382, 0.223681, -0.432631,
		30.674570, 30.539230, 26.522694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913158, 31.017836, 26.534599>,  <30.063202, 30.382654, 26.825535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913158, 31.017836, 26.534599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227741, 30.855095, 26.348715>,  <30.416491, 30.757450, 26.237185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227741, 30.855095, 26.348715>,  <29.913158, 31.017836, 26.534599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227741, 30.855095, 26.348715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386042, 0.263529, -0.884038,
		0.482138, 0.874656, 0.050192,
		0.786457, -0.406853, -0.464712,
		30.463678, 30.733040, 26.209301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115719, 31.517611, 25.990774>,  <29.913158, 31.017836, 26.534599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115719, 31.517611, 25.990774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266075, 31.174109, 25.851494>,  <30.356289, 30.968006, 25.767925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266075, 31.174109, 25.851494>,  <30.115719, 31.517611, 25.990774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266075, 31.174109, 25.851494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359152, 0.211379, -0.909026,
		0.854234, 0.466752, -0.228969,
		0.375890, -0.858756, -0.348202,
		30.378841, 30.916481, 25.747034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079342, 32.212685, 26.148550>,  <30.115719, 31.517611, 25.990774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079342, 32.212685, 26.148550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728193, 32.389301, 26.222727>,  <29.517504, 32.495270, 26.267233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728193, 32.389301, 26.222727>,  <30.079342, 32.212685, 26.148550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728193, 32.389301, 26.222727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067954, -0.268456, 0.960892,
		0.474053, 0.856140, 0.205665,
		-0.877870, 0.441538, 0.185440,
		29.464832, 32.521763, 26.278358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196772, 32.520798, 26.782663>,  <30.079342, 32.212685, 26.148550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196772, 32.520798, 26.782663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796934, 32.525829, 26.772415>,  <29.557032, 32.528847, 26.766266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796934, 32.525829, 26.772415>,  <30.196772, 32.520798, 26.782663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796934, 32.525829, 26.772415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028066, -0.269955, 0.962464,
		0.005187, 0.962791, 0.270198,
		-0.999593, 0.012576, -0.025621,
		29.497057, 32.529602, 26.764729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898104, 32.990059, 27.373331>,  <30.196772, 32.520798, 26.782663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898104, 32.990059, 27.373331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572226, 32.772430, 27.293070>,  <29.376699, 32.641853, 27.244913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572226, 32.772430, 27.293070>,  <29.898104, 32.990059, 27.373331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572226, 32.772430, 27.293070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263786, 0.039558, 0.963770,
		-0.516419, 0.838108, -0.175746,
		-0.814695, -0.544069, -0.200653,
		29.327818, 32.609211, 27.232874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326706, 33.460720, 27.543186>,  <29.898104, 32.990059, 27.373331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326706, 33.460720, 27.543186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198074, 33.081978, 27.545856>,  <29.120895, 32.854733, 27.547459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198074, 33.081978, 27.545856>,  <29.326706, 33.460720, 27.543186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198074, 33.081978, 27.545856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370087, 0.132175, 0.919546,
		-0.871562, 0.293238, -0.392925,
		-0.321581, -0.946859, 0.006675,
		29.101601, 32.797920, 27.547859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685976, 33.434906, 27.988649>,  <29.326706, 33.460720, 27.543186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685976, 33.434906, 27.988649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827404, 33.060753, 27.986088>,  <28.912262, 32.836262, 27.984550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.827404, 33.060753, 27.986088>,  <28.685976, 33.434906, 27.988649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827404, 33.060753, 27.986088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254140, -0.102647, 0.961705,
		-0.900222, -0.338404, -0.274012,
		0.353571, -0.935386, -0.006403,
		28.933475, 32.780136, 27.984167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263678, 33.068840, 28.408562>,  <28.685976, 33.434906, 27.988649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263678, 33.068840, 28.408562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562649, 32.803711, 28.426525>,  <28.742031, 32.644634, 28.437304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562649, 32.803711, 28.426525>,  <28.263678, 33.068840, 28.408562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562649, 32.803711, 28.426525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135245, -0.085628, 0.987105,
		-0.650432, -0.743863, -0.153644,
		0.747427, -0.662824, 0.044909,
		28.786877, 32.604862, 28.439999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007246, 32.546078, 28.803476>,  <28.263678, 33.068840, 28.408562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007246, 32.546078, 28.803476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.403976, 32.502670, 28.830338>,  <28.642014, 32.476627, 28.846455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.403976, 32.502670, 28.830338>,  <28.007246, 32.546078, 28.803476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403976, 32.502670, 28.830338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103576, -0.377108, 0.920359,
		-0.074549, -0.919790, -0.385265,
		0.991824, -0.108516, 0.067155,
		28.701523, 32.470116, 28.850485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086525, 31.873749, 28.990185>,  <28.007246, 32.546078, 28.803476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086525, 31.873749, 28.990185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387281, 32.117935, 29.089779>,  <28.567736, 32.264446, 29.149536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.387281, 32.117935, 29.089779>,  <28.086525, 31.873749, 28.990185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387281, 32.117935, 29.089779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191394, -0.159283, 0.968503,
		0.630897, -0.775861, -0.002923,
		0.751889, 0.610466, 0.248987,
		28.612848, 32.301075, 29.164474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408791, 31.558134, 29.575504>,  <28.086525, 31.873749, 28.990185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408791, 31.558134, 29.575504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.580872, 31.916815, 29.617172>,  <28.684120, 32.132023, 29.642174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.580872, 31.916815, 29.617172>,  <28.408791, 31.558134, 29.575504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580872, 31.916815, 29.617172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020859, -0.105491, 0.994201,
		0.902492, -0.429879, -0.026678,
		0.430201, 0.896703, 0.104172,
		28.709932, 32.185825, 29.648424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819071, 31.441151, 30.054541>,  <28.408791, 31.558134, 29.575504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819071, 31.441151, 30.054541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.795095, 31.840427, 30.056499>,  <28.780710, 32.079994, 30.057674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.795095, 31.840427, 30.056499>,  <28.819071, 31.441151, 30.054541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795095, 31.840427, 30.056499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023003, -0.006284, 0.999716,
		0.997937, 0.059808, 0.023338,
		-0.059938, 0.998190, 0.004895,
		28.777115, 32.139885, 30.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195478, 31.710594, 30.634573>,  <28.819071, 31.441151, 30.054541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195478, 31.710594, 30.634573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.949347, 32.014164, 30.549337>,  <28.801668, 32.196304, 30.498196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.949347, 32.014164, 30.549337>,  <29.195478, 31.710594, 30.634573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949347, 32.014164, 30.549337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104054, 0.189756, 0.976302,
		0.781372, 0.622921, -0.037794,
		-0.615330, 0.758922, -0.213087,
		28.764748, 32.241840, 30.485411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454762, 32.262577, 31.090466>,  <29.195478, 31.710594, 30.634573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454762, 32.262577, 31.090466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.090719, 32.402817, 31.002111>,  <28.872293, 32.486961, 30.949099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.090719, 32.402817, 31.002111>,  <29.454762, 32.262577, 31.090466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090719, 32.402817, 31.002111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115854, 0.296507, 0.947977,
		0.397856, 0.888348, -0.229234,
		-0.910104, 0.350601, -0.220886,
		28.817688, 32.507996, 30.935846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440985, 33.025681, 31.282312>,  <29.454762, 32.262577, 31.090466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440985, 33.025681, 31.282312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.053713, 32.928619, 31.257820>,  <28.821350, 32.870380, 31.243126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.053713, 32.928619, 31.257820>,  <29.440985, 33.025681, 31.282312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053713, 32.928619, 31.257820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176079, 0.486633, 0.855678,
		-0.177838, 0.839230, -0.513874,
		-0.968179, -0.242655, -0.061229,
		28.763260, 32.855824, 31.239452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127436, 33.643875, 31.426922>,  <29.440985, 33.025681, 31.282312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127436, 33.643875, 31.426922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853029, 33.368511, 31.521130>,  <28.688385, 33.203293, 31.577654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853029, 33.368511, 31.521130>,  <29.127436, 33.643875, 31.426922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853029, 33.368511, 31.521130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211732, 0.498578, 0.840588,
		-0.696098, 0.526789, -0.487791,
		-0.686015, -0.688414, 0.235522,
		28.647224, 33.161987, 31.591785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989754, 34.290405, 31.031790>,  <29.127436, 33.643875, 31.426922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989754, 34.290405, 31.031790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172815, 34.646053, 31.033377>,  <29.282652, 34.859444, 31.034328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172815, 34.646053, 31.033377>,  <28.989754, 34.290405, 31.031790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172815, 34.646053, 31.033377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338811, 0.178520, -0.923763,
		-0.822045, 0.421420, 0.382945,
		0.457655, 0.889121, 0.003970,
		29.310112, 34.912788, 31.034567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627596, 34.823009, 30.753202>,  <28.989754, 34.290405, 31.031790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627596, 34.823009, 30.753202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003599, 34.949986, 30.703211>,  <29.229200, 35.026169, 30.673216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.003599, 34.949986, 30.703211>,  <28.627596, 34.823009, 30.753202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003599, 34.949986, 30.703211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165395, 0.103628, -0.980768,
		-0.298381, 0.942600, 0.149914,
		0.940007, 0.317438, -0.124981,
		29.285601, 35.045216, 30.665716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572063, 35.382568, 30.276939>,  <28.627596, 34.823009, 30.753202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572063, 35.382568, 30.276939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.959919, 35.287048, 30.255854>,  <29.192633, 35.229736, 30.243202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.959919, 35.287048, 30.255854>,  <28.572063, 35.382568, 30.276939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959919, 35.287048, 30.255854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006707, 0.189506, -0.981857,
		0.244455, 0.952399, 0.182150,
		0.969638, -0.238798, -0.052713,
		29.250811, 35.215408, 30.240040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885839, 35.939220, 29.933792>,  <28.572063, 35.382568, 30.276939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885839, 35.939220, 29.933792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.135374, 35.628662, 29.897915>,  <29.285095, 35.442329, 29.876389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.135374, 35.628662, 29.897915>,  <28.885839, 35.939220, 29.933792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135374, 35.628662, 29.897915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272444, 0.323589, -0.906126,
		0.732533, 0.540836, 0.413390,
		0.623834, -0.776393, -0.089692,
		29.322525, 35.395744, 29.871008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522985, 36.277504, 29.764620>,  <28.885839, 35.939220, 29.933792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522985, 36.277504, 29.764620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.493309, 35.900959, 29.632965>,  <29.475502, 35.675034, 29.553972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.493309, 35.900959, 29.632965>,  <29.522985, 36.277504, 29.764620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493309, 35.900959, 29.632965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456293, 0.261426, -0.850560,
		0.886731, -0.213288, 0.410141,
		-0.074193, -0.941363, -0.329137,
		29.471050, 35.618549, 29.534224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131577, 36.218674, 29.477289>,  <29.522985, 36.277504, 29.764620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131577, 36.218674, 29.477289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.885740, 35.942574, 29.324537>,  <29.738239, 35.776913, 29.232887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.885740, 35.942574, 29.324537>,  <30.131577, 36.218674, 29.477289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885740, 35.942574, 29.324537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140066, 0.380919, -0.913938,
		0.776314, -0.615183, -0.137427,
		-0.614588, -0.690254, -0.381879,
		29.701365, 35.735497, 29.209974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429050, 36.123055, 28.869034>,  <30.131577, 36.218674, 29.477289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429050, 36.123055, 28.869034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059011, 35.977661, 28.825083>,  <29.836988, 35.890427, 28.798712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059011, 35.977661, 28.825083>,  <30.429050, 36.123055, 28.869034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059011, 35.977661, 28.825083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035236, 0.370284, -0.928250,
		0.378120, -0.854839, -0.355354,
		-0.925086, -0.363511, -0.109890,
		29.781483, 35.868618, 28.792120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440918, 35.679718, 28.232361>,  <30.429050, 36.123055, 28.869034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440918, 35.679718, 28.232361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052601, 35.758854, 28.286655>,  <29.819611, 35.806335, 28.319231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052601, 35.758854, 28.286655>,  <30.440918, 35.679718, 28.232361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052601, 35.758854, 28.286655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098425, 0.187554, -0.977311,
		-0.218805, -0.962125, -0.162604,
		-0.970792, 0.197837, 0.135735,
		29.761364, 35.818203, 28.327375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156109, 35.224968, 27.812553>,  <30.440918, 35.679718, 28.232361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156109, 35.224968, 27.812553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.864325, 35.494682, 27.858541>,  <29.689253, 35.656513, 27.886133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.864325, 35.494682, 27.858541>,  <30.156109, 35.224968, 27.812553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864325, 35.494682, 27.858541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133268, 0.024758, -0.990771,
		-0.670914, -0.738051, 0.071801,
		-0.729462, 0.674290, 0.114969,
		29.645487, 35.696968, 27.893032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585058, 34.916096, 27.415848>,  <30.156109, 35.224968, 27.812553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585058, 34.916096, 27.415848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517698, 35.308475, 27.454603>,  <29.477282, 35.543903, 27.477858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517698, 35.308475, 27.454603>,  <29.585058, 34.916096, 27.415848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517698, 35.308475, 27.454603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294062, 0.043823, -0.954781,
		-0.940834, -0.189278, 0.281079,
		-0.168401, 0.980945, 0.096890,
		29.467178, 35.602760, 27.483669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994427, 34.972557, 26.931337>,  <29.585058, 34.916096, 27.415848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994427, 34.972557, 26.931337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136843, 35.335918, 27.019011>,  <29.222292, 35.553936, 27.071615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136843, 35.335918, 27.019011>,  <28.994427, 34.972557, 26.931337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136843, 35.335918, 27.019011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207171, 0.305450, -0.929398,
		-0.911216, 0.285496, 0.296947,
		0.356042, 0.908401, 0.219184,
		29.243654, 35.608440, 27.084766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642002, 35.420891, 26.566883>,  <28.994427, 34.972557, 26.931337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642002, 35.420891, 26.566883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968092, 35.642227, 26.635262>,  <29.163746, 35.775028, 26.676289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968092, 35.642227, 26.635262>,  <28.642002, 35.420891, 26.566883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968092, 35.642227, 26.635262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, 0.360807, -0.931320,
		-0.577018, 0.750753, 0.321589,
		0.815223, 0.553343, 0.170947,
		29.212660, 35.808231, 26.686546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539343, 36.175709, 26.314619>,  <28.642002, 35.420891, 26.566883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539343, 36.175709, 26.314619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.935635, 36.122444, 26.325399>,  <29.173409, 36.090485, 26.331867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.935635, 36.122444, 26.325399>,  <28.539343, 36.175709, 26.314619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935635, 36.122444, 26.325399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085569, 0.457483, -0.885092,
		0.105532, 0.879191, 0.464636,
		0.990728, -0.133163, 0.026952,
		29.232853, 36.082497, 26.333485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864559, 36.767197, 26.283911>,  <28.539343, 36.175709, 26.314619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864559, 36.767197, 26.283911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142349, 36.509300, 26.156155>,  <29.309023, 36.354561, 26.079500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142349, 36.509300, 26.156155>,  <28.864559, 36.767197, 26.283911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142349, 36.509300, 26.156155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111230, 0.534765, -0.837648,
		0.710865, 0.546202, 0.443097,
		0.694478, -0.644740, -0.319391,
		29.350693, 36.315880, 26.060337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325354, 37.278774, 26.028522>,  <28.864559, 36.767197, 26.283911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325354, 37.278774, 26.028522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.434206, 36.927715, 25.870695>,  <29.499517, 36.717079, 25.775999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.434206, 36.927715, 25.870695>,  <29.325354, 37.278774, 26.028522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434206, 36.927715, 25.870695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427623, 0.477629, -0.767469,
		0.862023, 0.040125, 0.505278,
		0.272131, -0.877645, -0.394569,
		29.515844, 36.664421, 25.752325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953094, 37.417789, 25.777052>,  <29.325354, 37.278774, 26.028522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953094, 37.417789, 25.777052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863462, 37.081196, 25.580402>,  <29.809683, 36.879238, 25.462412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863462, 37.081196, 25.580402>,  <29.953094, 37.417789, 25.777052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863462, 37.081196, 25.580402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484823, 0.341350, -0.805249,
		0.845420, -0.418790, 0.331482,
		-0.224079, -0.841484, -0.491624,
		29.796238, 36.828751, 25.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571194, 37.105244, 25.509758>,  <29.953094, 37.417789, 25.777052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571194, 37.105244, 25.509758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270386, 36.964798, 25.286625>,  <30.089901, 36.880531, 25.152744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270386, 36.964798, 25.286625>,  <30.571194, 37.105244, 25.509758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270386, 36.964798, 25.286625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530852, 0.179035, -0.828337,
		0.390717, -0.919055, 0.051754,
		-0.752022, -0.351119, -0.557834,
		30.044779, 36.859463, 25.119274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889824, 36.685108, 25.041563>,  <30.571194, 37.105244, 25.509758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889824, 36.685108, 25.041563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533419, 36.755867, 24.874327>,  <30.319574, 36.798325, 24.773985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533419, 36.755867, 24.874327>,  <30.889824, 36.685108, 25.041563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533419, 36.755867, 24.874327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443947, 0.147030, -0.883908,
		-0.094891, -0.973185, -0.209539,
		-0.891014, 0.176899, -0.418090,
		30.266115, 36.808937, 24.748899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743591, 36.147308, 24.521486>,  <30.889824, 36.685108, 25.041563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743591, 36.147308, 24.521486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518787, 36.467060, 24.436512>,  <30.383905, 36.658913, 24.385527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518787, 36.467060, 24.436512>,  <30.743591, 36.147308, 24.521486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518787, 36.467060, 24.436512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349658, -0.003146, -0.936872,
		-0.749588, -0.600813, -0.277743,
		-0.562011, 0.799384, -0.212438,
		30.350183, 36.706875, 24.372780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523754, 35.939686, 23.908125>,  <30.743591, 36.147308, 24.521486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523754, 35.939686, 23.908125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481771, 36.334435, 23.957232>,  <30.456583, 36.571281, 23.986696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481771, 36.334435, 23.957232>,  <30.523754, 35.939686, 23.908125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481771, 36.334435, 23.957232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291419, 0.148552, -0.944991,
		-0.950820, -0.063405, -0.303184,
		-0.104955, 0.986870, 0.122769,
		30.450285, 36.630497, 23.994062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108496, 36.105637, 23.372948>,  <30.523754, 35.939686, 23.908125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108496, 36.105637, 23.372948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276672, 36.452633, 23.479298>,  <30.377579, 36.660831, 23.543108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276672, 36.452633, 23.479298>,  <30.108496, 36.105637, 23.372948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276672, 36.452633, 23.479298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263083, 0.163885, -0.950752,
		-0.868341, 0.469682, -0.159318,
		0.420441, 0.867491, 0.265874,
		30.402805, 36.712879, 23.559059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164051, 36.377621, 22.796389>,  <30.108496, 36.105637, 23.372948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164051, 36.377621, 22.796389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374924, 36.651325, 22.997929>,  <30.501448, 36.815548, 23.118853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374924, 36.651325, 22.997929>,  <30.164051, 36.377621, 22.796389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374924, 36.651325, 22.997929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436099, 0.291036, -0.851537,
		-0.729313, 0.668643, -0.144978,
		0.527180, 0.684262, 0.503851,
		30.533077, 36.856606, 23.149084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121395, 37.064548, 22.463110>,  <30.164051, 36.377621, 22.796389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121395, 37.064548, 22.463110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467228, 37.100506, 22.660864>,  <30.674728, 37.122082, 22.779516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.467228, 37.100506, 22.660864>,  <30.121395, 37.064548, 22.463110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467228, 37.100506, 22.660864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429558, 0.378274, -0.819993,
		-0.260726, 0.921318, 0.288434,
		0.864582, 0.089895, 0.494386,
		30.726603, 37.127476, 22.809179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316387, 37.720425, 22.459040>,  <30.121395, 37.064548, 22.463110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316387, 37.720425, 22.459040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672211, 37.562248, 22.550528>,  <30.885704, 37.467342, 22.605421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672211, 37.562248, 22.550528>,  <30.316387, 37.720425, 22.459040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672211, 37.562248, 22.550528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380154, 0.363156, -0.850647,
		0.253322, 0.843648, 0.473378,
		0.889556, -0.395444, 0.228721,
		30.939077, 37.443615, 22.619144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779768, 38.211903, 22.312603>,  <30.316387, 37.720425, 22.459040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779768, 38.211903, 22.312603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976793, 37.863876, 22.304983>,  <31.095009, 37.655060, 22.300411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.976793, 37.863876, 22.304983>,  <30.779768, 38.211903, 22.312603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976793, 37.863876, 22.304983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410676, 0.251679, -0.876358,
		0.767284, 0.423840, 0.481284,
		0.492565, -0.870067, -0.019049,
		31.124563, 37.602856, 22.299269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492765, 38.343941, 22.173927>,  <30.779768, 38.211903, 22.312603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492765, 38.343941, 22.173927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452366, 37.962719, 22.059750>,  <31.428125, 37.733986, 21.991243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452366, 37.962719, 22.059750>,  <31.492765, 38.343941, 22.173927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452366, 37.962719, 22.059750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544663, 0.187126, -0.817512,
		0.832551, -0.238038, 0.500196,
		-0.100999, -0.953059, -0.285443,
		31.422066, 37.676800, 21.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176571, 38.085526, 22.045116>,  <31.492765, 38.343941, 22.173927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176571, 38.085526, 22.045116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913454, 37.869888, 21.834711>,  <31.755585, 37.740505, 21.708467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913454, 37.869888, 21.834711>,  <32.176571, 38.085526, 22.045116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913454, 37.869888, 21.834711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510476, 0.194428, -0.837623,
		0.553828, -0.819498, 0.147301,
		-0.657791, -0.539093, -0.526014,
		31.716116, 37.708160, 21.676907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474682, 37.687855, 21.627834>,  <32.176571, 38.085526, 22.045116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474682, 37.687855, 21.627834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122879, 37.680420, 21.437624>,  <31.911798, 37.675961, 21.323498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122879, 37.680420, 21.437624>,  <32.474682, 37.687855, 21.627834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122879, 37.680420, 21.437624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446110, 0.315717, -0.837442,
		0.165698, -0.948671, -0.269383,
		-0.879506, -0.018588, -0.475525,
		31.859028, 37.674843, 21.294966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956215, 37.135483, 21.524715>,  <32.474682, 37.687855, 21.627834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956215, 37.135483, 21.524715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285496, 36.910641, 21.492765>,  <33.483063, 36.775734, 21.473597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285496, 36.910641, 21.492765>,  <32.956215, 37.135483, 21.524715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285496, 36.910641, 21.492765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036981, -0.087298, 0.995496,
		-0.566547, -0.822445, -0.051076,
		0.823199, -0.562106, -0.079873,
		33.532455, 36.742008, 21.468803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819908, 36.389454, 21.753994>,  <32.956215, 37.135483, 21.524715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819908, 36.389454, 21.753994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207218, 36.478188, 21.800024>,  <33.439602, 36.531425, 21.827642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207218, 36.478188, 21.800024>,  <32.819908, 36.389454, 21.753994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207218, 36.478188, 21.800024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060995, -0.236771, 0.969649,
		0.242345, -0.945902, -0.215728,
		0.968271, 0.221831, 0.115076,
		33.497700, 36.544735, 21.834547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037018, 35.961750, 22.267818>,  <32.819908, 36.389454, 21.753994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037018, 35.961750, 22.267818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346020, 36.215736, 22.265194>,  <33.531422, 36.368130, 22.263618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346020, 36.215736, 22.265194>,  <33.037018, 35.961750, 22.267818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346020, 36.215736, 22.265194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139447, -0.159554, 0.977291,
		0.619504, -0.755881, -0.211801,
		0.772509, 0.634970, -0.006561,
		33.577774, 36.406227, 22.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613815, 35.573215, 22.485136>,  <33.037018, 35.961750, 22.267818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613815, 35.573215, 22.485136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723419, 35.953827, 22.541021>,  <33.789181, 36.182194, 22.574553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723419, 35.953827, 22.541021>,  <33.613815, 35.573215, 22.485136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723419, 35.953827, 22.541021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227862, -0.205369, 0.951789,
		0.934344, -0.228961, -0.273089,
		0.274007, 0.951525, 0.139714,
		33.805622, 36.239285, 22.582935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463131, 35.671230, 22.727968>,  <33.613815, 35.573215, 22.485136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463131, 35.671230, 22.727968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260979, 35.991386, 22.856951>,  <34.139687, 36.183479, 22.934340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260979, 35.991386, 22.856951>,  <34.463131, 35.671230, 22.727968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260979, 35.991386, 22.856951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012839, -0.380620, 0.924642,
		0.862803, 0.463153, 0.202633,
		-0.505378, 0.800385, 0.322454,
		34.109364, 36.231503, 22.953688>
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
