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
	<24.293776, 35.189308, 35.365646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313828, 34.849804, 35.155087>,  <24.325859, 34.646103, 35.028751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313828, 34.849804, 35.155087>,  <24.293776, 35.189308, 35.365646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313828, 34.849804, 35.155087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764342, -0.306649, 0.567228,
		-0.642859, -0.430784, 0.633370,
		0.050130, -0.848759, -0.526398,
		24.328867, 34.595177, 34.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066174, 34.977039, 35.230991>,  <24.293776, 35.189308, 35.365646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066174, 34.977039, 35.230991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373491, 35.069344, 35.469810>,  <25.557882, 35.124725, 35.613102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373491, 35.069344, 35.469810>,  <25.066174, 34.977039, 35.230991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373491, 35.069344, 35.469810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169224, 0.826339, -0.537147,
		-0.617321, 0.513723, 0.595822,
		0.768296, 0.230764, 0.597051,
		25.603979, 35.138573, 35.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957750, 35.612457, 35.464062>,  <25.066174, 34.977039, 35.230991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957750, 35.612457, 35.464062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353634, 35.556778, 35.477352>,  <25.591164, 35.523373, 35.485325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353634, 35.556778, 35.477352>,  <24.957750, 35.612457, 35.464062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353634, 35.556778, 35.477352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135418, 0.835888, -0.531934,
		0.046272, 0.530958, 0.846134,
		0.989708, -0.139195, 0.033223,
		25.650547, 35.515018, 35.487320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290201, 36.145874, 35.846222>,  <24.957750, 35.612457, 35.464062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290201, 36.145874, 35.846222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602161, 35.998814, 35.643600>,  <25.789337, 35.910580, 35.522030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602161, 35.998814, 35.643600>,  <25.290201, 36.145874, 35.846222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602161, 35.998814, 35.643600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288865, 0.929383, -0.229791,
		0.555261, 0.032889, 0.831026,
		0.779899, -0.367648, -0.506550,
		25.836130, 35.888519, 35.491634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925470, 36.377693, 36.130371>,  <25.290201, 36.145874, 35.846222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925470, 36.377693, 36.130371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966518, 36.283829, 35.743713>,  <25.991146, 36.227509, 35.511719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966518, 36.283829, 35.743713>,  <25.925470, 36.377693, 36.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966518, 36.283829, 35.743713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222906, 0.952487, -0.207560,
		0.969424, -0.194172, 0.150051,
		0.102619, -0.234661, -0.966645,
		25.997305, 36.213432, 35.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561443, 36.671631, 35.839130>,  <25.925470, 36.377693, 36.130371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561443, 36.671631, 35.839130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298204, 36.628567, 35.541054>,  <26.140261, 36.602730, 35.362206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298204, 36.628567, 35.541054>,  <26.561443, 36.671631, 35.839130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298204, 36.628567, 35.541054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161050, 0.946691, -0.278998,
		0.735507, -0.303622, -0.605676,
		-0.658098, -0.107661, -0.745195,
		26.100775, 36.596268, 35.317493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878784, 36.769390, 35.060413>,  <26.561443, 36.671631, 35.839130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878784, 36.769390, 35.060413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488949, 36.858368, 35.070969>,  <26.255049, 36.911755, 35.077301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488949, 36.858368, 35.070969>,  <26.878784, 36.769390, 35.060413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488949, 36.858368, 35.070969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199346, 0.914985, -0.350804,
		-0.102178, -0.336630, -0.936077,
		-0.974588, 0.222448, 0.026386,
		26.196573, 36.925102, 35.078884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593620, 36.910522, 34.383354>,  <26.878784, 36.769390, 35.060413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593620, 36.910522, 34.383354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425694, 37.113522, 34.684338>,  <26.324938, 37.235321, 34.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425694, 37.113522, 34.684338>,  <26.593620, 36.910522, 34.383354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425694, 37.113522, 34.684338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379571, 0.851249, -0.362354,
		-0.824426, 0.133489, -0.550002,
		-0.419819, 0.507499, 0.752461,
		26.299747, 37.265770, 34.910076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033289, 37.301189, 34.134388>,  <26.593620, 36.910522, 34.383354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033289, 37.301189, 34.134388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112226, 37.486404, 34.480022>,  <26.159590, 37.597534, 34.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112226, 37.486404, 34.480022>,  <26.033289, 37.301189, 34.134388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112226, 37.486404, 34.480022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183079, 0.848510, -0.496502,
		-0.963087, 0.256179, 0.082678,
		0.197346, 0.463038, 0.864089,
		26.171431, 37.625317, 34.739250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660513, 37.981544, 34.153614>,  <26.033289, 37.301189, 34.134388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660513, 37.981544, 34.153614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953823, 38.002636, 34.424767>,  <26.129808, 38.015289, 34.587460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953823, 38.002636, 34.424767>,  <25.660513, 37.981544, 34.153614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953823, 38.002636, 34.424767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378959, 0.796086, -0.471845,
		-0.564533, 0.602882, 0.563769,
		0.733276, 0.052727, 0.677884,
		26.173805, 38.018456, 34.628132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639452, 38.764282, 34.399216>,  <25.660513, 37.981544, 34.153614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639452, 38.764282, 34.399216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993202, 38.590805, 34.468258>,  <26.205452, 38.486717, 34.509686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993202, 38.590805, 34.468258>,  <25.639452, 38.764282, 34.399216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993202, 38.590805, 34.468258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447136, 0.680961, -0.579966,
		0.133988, 0.590086, 0.796144,
		0.884373, -0.433694, 0.172608,
		26.258514, 38.460697, 34.520039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189060, 39.337448, 34.498337>,  <25.639452, 38.764282, 34.399216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189060, 39.337448, 34.498337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362764, 38.989052, 34.406429>,  <26.466988, 38.780014, 34.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362764, 38.989052, 34.406429>,  <26.189060, 39.337448, 34.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362764, 38.989052, 34.406429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546799, 0.457588, -0.701159,
		0.715841, 0.178850, 0.674970,
		0.434261, -0.870991, -0.229765,
		26.493042, 38.727753, 34.337502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818516, 39.463604, 34.159931>,  <26.189060, 39.337448, 34.498337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818516, 39.463604, 34.159931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778713, 39.081470, 34.048630>,  <26.754831, 38.852188, 33.981850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778713, 39.081470, 34.048630>,  <26.818516, 39.463604, 34.159931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778713, 39.081470, 34.048630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682464, 0.137980, -0.717778,
		0.724115, -0.261325, 0.638253,
		-0.099507, -0.955338, -0.278258,
		26.748861, 38.794868, 33.965153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327566, 39.049362, 34.274929>,  <26.818516, 39.463604, 34.159931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327566, 39.049362, 34.274929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165695, 38.913727, 33.935223>,  <27.068573, 38.832348, 33.731400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165695, 38.913727, 33.935223>,  <27.327566, 39.049362, 34.274929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165695, 38.913727, 33.935223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890603, 0.064609, -0.450169,
		0.207517, -0.938534, 0.275846,
		-0.404676, -0.339087, -0.849269,
		27.044292, 38.812000, 33.680443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592834, 38.406712, 33.966034>,  <27.327566, 39.049362, 34.274929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592834, 38.406712, 33.966034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443895, 38.627792, 33.667805>,  <27.354532, 38.760441, 33.488869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443895, 38.627792, 33.667805>,  <27.592834, 38.406712, 33.966034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443895, 38.627792, 33.667805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913827, 0.078023, -0.398536,
		-0.162100, -0.829720, -0.534124,
		-0.372347, 0.552700, -0.745573,
		27.332191, 38.793602, 33.444134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316282, 37.807362, 34.108131>,  <27.592834, 38.406712, 33.966034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316282, 37.807362, 34.108131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126188, 38.130863, 34.246735>,  <27.012131, 38.324963, 34.329899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126188, 38.130863, 34.246735>,  <27.316282, 37.807362, 34.108131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126188, 38.130863, 34.246735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562750, -0.582134, 0.586883,
		0.676359, 0.083909, 0.731777,
		-0.475237, 0.808751, 0.346512,
		26.983618, 38.373489, 34.350689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410715, 37.843834, 34.712685>,  <27.316282, 37.807362, 34.108131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410715, 37.843834, 34.712685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072189, 38.055344, 34.686928>,  <26.869074, 38.182251, 34.671474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072189, 38.055344, 34.686928>,  <27.410715, 37.843834, 34.712685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072189, 38.055344, 34.686928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430472, -0.607715, 0.667365,
		0.313756, 0.592519, 0.741942,
		-0.846316, 0.528775, -0.064389,
		26.818295, 38.213978, 34.667610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218620, 37.995476, 35.393124>,  <27.410715, 37.843834, 34.712685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218620, 37.995476, 35.393124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890055, 38.039009, 35.169182>,  <26.692915, 38.065128, 35.034817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890055, 38.039009, 35.169182>,  <27.218620, 37.995476, 35.393124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890055, 38.039009, 35.169182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482523, -0.655941, 0.580442,
		-0.304063, 0.746925, 0.591311,
		-0.821412, 0.108830, -0.559856,
		26.643631, 38.071659, 35.001225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682947, 38.024094, 35.874626>,  <27.218620, 37.995476, 35.393124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682947, 38.024094, 35.874626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528666, 37.913704, 35.522472>,  <26.436096, 37.847469, 35.311180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528666, 37.913704, 35.522472>,  <26.682947, 38.024094, 35.874626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528666, 37.913704, 35.522472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409274, -0.804014, 0.431343,
		-0.826878, 0.526687, 0.197162,
		-0.385704, -0.275974, -0.880381,
		26.412954, 37.830910, 35.258358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892729, 37.876572, 35.963757>,  <26.682947, 38.024094, 35.874626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892729, 37.876572, 35.963757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046942, 37.688572, 35.646149>,  <26.139469, 37.575771, 35.455585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046942, 37.688572, 35.646149>,  <25.892729, 37.876572, 35.963757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046942, 37.688572, 35.646149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380804, -0.864886, 0.327047,
		-0.840450, 0.176280, -0.512415,
		0.385529, -0.469996, -0.794022,
		26.162601, 37.547573, 35.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378948, 37.490009, 35.450142>,  <25.892729, 37.876572, 35.963757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378948, 37.490009, 35.450142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740673, 37.320866, 35.473495>,  <25.957708, 37.219379, 35.487507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740673, 37.320866, 35.473495>,  <25.378948, 37.490009, 35.450142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740673, 37.320866, 35.473495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420876, -0.860394, 0.287376,
		-0.071287, -0.284450, -0.956037,
		0.904313, -0.422859, 0.058384,
		26.011967, 37.194008, 35.491009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947186, 37.070404, 34.952785>,  <25.378948, 37.490009, 35.450142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947186, 37.070404, 34.952785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344942, 37.033699, 34.931763>,  <25.583597, 37.011677, 34.919147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344942, 37.033699, 34.931763>,  <24.947186, 37.070404, 34.952785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344942, 37.033699, 34.931763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081075, -0.980651, 0.178189,
		-0.067891, -0.172929, -0.982592,
		0.994393, -0.091761, -0.052557,
		25.643261, 37.006172, 34.915997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051050, 36.518967, 34.565941>,  <24.947186, 37.070404, 34.952785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051050, 36.518967, 34.565941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376030, 36.545231, 34.797672>,  <25.571018, 36.560989, 34.936710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376030, 36.545231, 34.797672>,  <25.051050, 36.518967, 34.565941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376030, 36.545231, 34.797672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035858, -0.997385, 0.062748,
		0.581929, -0.030206, -0.812678,
		0.812448, 0.065656, 0.579324,
		25.619764, 36.564926, 34.971470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678112, 36.310528, 34.179897>,  <25.051050, 36.518967, 34.565941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678112, 36.310528, 34.179897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922070, 36.363289, 34.492470>,  <26.068443, 36.394943, 34.680012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922070, 36.363289, 34.492470>,  <25.678112, 36.310528, 34.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922070, 36.363289, 34.492470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191928, -0.932112, 0.307133,
		0.768890, -0.337297, -0.543175,
		0.609895, 0.131901, 0.781429,
		26.105038, 36.402859, 34.726898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383049, 35.921009, 34.272999>,  <25.678112, 36.310528, 34.179897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383049, 35.921009, 34.272999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280979, 35.998871, 34.651836>,  <26.219736, 36.045589, 34.879139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280979, 35.998871, 34.651836>,  <26.383049, 35.921009, 34.272999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280979, 35.998871, 34.651836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201085, -0.968792, 0.144937,
		0.945754, -0.153462, 0.286355,
		-0.255176, 0.194656, 0.947098,
		26.204426, 36.057266, 34.935966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732306, 35.428947, 34.698502>,  <26.383049, 35.921009, 34.272999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732306, 35.428947, 34.698502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457176, 35.583809, 34.944107>,  <26.292099, 35.676723, 35.091473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457176, 35.583809, 34.944107>,  <26.732306, 35.428947, 34.698502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457176, 35.583809, 34.944107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119993, -0.894898, 0.429837,
		0.715893, 0.221973, 0.661985,
		-0.687822, 0.387151, 0.614016,
		26.250830, 35.699955, 35.128311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947851, 35.320728, 35.380157>,  <26.732306, 35.428947, 34.698502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947851, 35.320728, 35.380157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548695, 35.346684, 35.380817>,  <26.309200, 35.362255, 35.381214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548695, 35.346684, 35.380817>,  <26.947851, 35.320728, 35.380157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548695, 35.346684, 35.380817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053425, -0.835589, 0.546751,
		0.036857, 0.545510, 0.837294,
		-0.997891, 0.064884, 0.001653,
		26.249327, 35.366150, 35.381313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938890, 35.349976, 36.095741>,  <26.947851, 35.320728, 35.380157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938890, 35.349976, 36.095741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216562, 35.484467, 36.350319>,  <27.383165, 35.565163, 36.503067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216562, 35.484467, 36.350319>,  <26.938890, 35.349976, 36.095741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216562, 35.484467, 36.350319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359157, -0.604471, 0.711071,
		0.623798, -0.722194, -0.298851,
		0.694177, 0.336230, 0.636449,
		27.424816, 35.585335, 36.541252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369219, 34.806492, 36.483044>,  <26.938890, 35.349976, 36.095741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369219, 34.806492, 36.483044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331062, 35.120827, 36.727459>,  <27.308168, 35.309425, 36.874107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331062, 35.120827, 36.727459>,  <27.369219, 34.806492, 36.483044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331062, 35.120827, 36.727459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180780, -0.617305, 0.765672,
		0.978887, -0.037425, 0.200948,
		-0.095391, 0.785833, 0.611037,
		27.302444, 35.356575, 36.910770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896088, 34.626633, 37.026794>,  <27.369219, 34.806492, 36.483044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896088, 34.626633, 37.026794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582333, 34.863731, 37.099880>,  <27.394079, 35.005989, 37.143730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582333, 34.863731, 37.099880>,  <27.896088, 34.626633, 37.026794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582333, 34.863731, 37.099880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410757, -0.717114, 0.563050,
		0.464771, 0.366601, 0.805972,
		-0.784389, 0.592748, 0.182710,
		27.347015, 35.041557, 37.154694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126122, 34.204594, 36.445705>,  <27.896088, 34.626633, 37.026794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126122, 34.204594, 36.445705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257437, 34.565201, 36.558487>,  <28.336226, 34.781563, 36.626156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257437, 34.565201, 36.558487>,  <28.126122, 34.204594, 36.445705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257437, 34.565201, 36.558487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754682, -0.070821, -0.652257,
		-0.568051, 0.426916, -0.703606,
		0.328289, 0.901514, 0.281956,
		28.355923, 34.835655, 36.643074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254948, 34.649914, 35.889172>,  <28.126122, 34.204594, 36.445705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254948, 34.649914, 35.889172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504299, 34.764534, 36.180180>,  <28.653910, 34.833305, 36.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504299, 34.764534, 36.180180>,  <28.254948, 34.649914, 35.889172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504299, 34.764534, 36.180180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764761, -0.029586, -0.643635,
		-0.162909, 0.957608, -0.237585,
		0.623380, 0.286550, 0.727521,
		28.691313, 34.850498, 36.398438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607897, 35.243633, 35.610806>,  <28.254948, 34.649914, 35.889172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607897, 35.243633, 35.610806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828041, 35.046413, 35.880325>,  <28.960127, 34.928082, 36.042038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828041, 35.046413, 35.880325>,  <28.607897, 35.243633, 35.610806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828041, 35.046413, 35.880325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753919, -0.053294, -0.654802,
		0.358761, 0.868366, 0.342391,
		0.550361, -0.493052, 0.673797,
		28.993149, 34.898499, 36.082466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309881, 35.597931, 35.683117>,  <28.607897, 35.243633, 35.610806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309881, 35.597931, 35.683117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379770, 35.231396, 35.827221>,  <29.421703, 35.011475, 35.913685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379770, 35.231396, 35.827221>,  <29.309881, 35.597931, 35.683117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379770, 35.231396, 35.827221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820133, -0.067027, -0.568234,
		0.544844, 0.394746, 0.739811,
		0.174721, -0.916342, 0.360264,
		29.432186, 34.956493, 35.935299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034927, 35.362358, 35.770264>,  <29.309881, 35.597931, 35.683117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034927, 35.362358, 35.770264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906342, 35.060658, 35.999268>,  <29.829189, 34.879639, 36.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906342, 35.060658, 35.999268>,  <30.034927, 35.362358, 35.770264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906342, 35.060658, 35.999268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729824, -0.582575, -0.357718,
		0.603338, 0.302835, 0.737749,
		-0.321465, -0.754252, 0.572506,
		29.809902, 34.834381, 36.171021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635155, 35.166924, 36.187561>,  <30.034927, 35.362358, 35.770264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635155, 35.166924, 36.187561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363703, 34.883255, 36.111107>,  <30.200832, 34.713055, 36.065235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363703, 34.883255, 36.111107>,  <30.635155, 35.166924, 36.187561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363703, 34.883255, 36.111107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725735, -0.607404, -0.323062,
		0.113012, -0.357953, 0.926875,
		-0.678629, -0.709176, -0.191135,
		30.160114, 34.670502, 36.053768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913830, 34.517624, 36.418491>,  <30.635155, 35.166924, 36.187561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913830, 34.517624, 36.418491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643114, 34.444149, 36.133335>,  <30.480684, 34.400063, 35.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643114, 34.444149, 36.133335>,  <30.913830, 34.517624, 36.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643114, 34.444149, 36.133335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646496, -0.611503, -0.456188,
		-0.352137, -0.769624, 0.532613,
		-0.676788, -0.183691, -0.712892,
		30.440077, 34.389042, 35.919468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023272, 33.894783, 36.411674>,  <30.913830, 34.517624, 36.418491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023272, 33.894783, 36.411674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850157, 33.983734, 36.062218>,  <30.746288, 34.037106, 35.852543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850157, 33.983734, 36.062218>,  <31.023272, 33.894783, 36.411674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850157, 33.983734, 36.062218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628311, -0.620540, -0.469207,
		-0.646468, -0.751983, 0.128841,
		-0.432787, 0.222375, -0.873639,
		30.720320, 34.050446, 35.800125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046186, 33.277405, 35.990822>,  <31.023272, 33.894783, 36.411674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046186, 33.277405, 35.990822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037251, 33.606514, 35.763649>,  <31.031889, 33.803978, 35.627346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037251, 33.606514, 35.763649>,  <31.046186, 33.277405, 35.990822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037251, 33.606514, 35.763649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953906, -0.152512, -0.258465,
		-0.299274, -0.547530, -0.781438,
		-0.022339, 0.822770, -0.567935,
		31.030548, 33.853344, 35.593269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237778, 33.077724, 35.278370>,  <31.046186, 33.277405, 35.990822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237778, 33.077724, 35.278370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297626, 33.469814, 35.330185>,  <31.333536, 33.705067, 35.361275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297626, 33.469814, 35.330185>,  <31.237778, 33.077724, 35.278370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297626, 33.469814, 35.330185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799042, -0.042709, -0.599757,
		-0.582362, 0.193246, -0.789627,
		0.149624, 0.980220, 0.129540,
		31.342514, 33.763882, 35.369045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852953, 32.772537, 34.695137>,  <31.237778, 33.077724, 35.278370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852953, 32.772537, 34.695137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086700, 32.772259, 34.370541>,  <31.226950, 32.772091, 34.175785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086700, 32.772259, 34.370541>,  <30.852953, 32.772537, 34.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086700, 32.772259, 34.370541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105906, -0.991382, 0.077112,
		-0.804547, -0.131003, -0.579259,
		0.584369, -0.000693, -0.811488,
		31.262011, 32.772053, 34.127094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131966, 32.938408, 34.733261>,  <30.852953, 32.772537, 34.695137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131966, 32.938408, 34.733261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924263, 33.273743, 34.799671>,  <29.799641, 33.474945, 34.839516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924263, 33.273743, 34.799671>,  <30.131966, 32.938408, 34.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924263, 33.273743, 34.799671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633796, 0.247432, 0.732857,
		0.573302, 0.485766, -0.659816,
		-0.519256, 0.838337, 0.166023,
		29.768486, 33.525246, 34.849480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532040, 33.677067, 34.800186>,  <30.131966, 32.938408, 34.733261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532040, 33.677067, 34.800186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206453, 33.648048, 35.030731>,  <30.011101, 33.630638, 35.169060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206453, 33.648048, 35.030731>,  <30.532040, 33.677067, 34.800186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206453, 33.648048, 35.030731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478219, 0.479589, 0.735732,
		-0.329793, 0.874489, -0.355676,
		-0.813968, -0.072549, 0.576362,
		29.962263, 33.626286, 35.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122263, 34.263790, 34.652702>,  <30.532040, 33.677067, 34.800186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122263, 34.263790, 34.652702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292200, 34.191704, 35.007561>,  <30.394163, 34.148453, 35.220478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292200, 34.191704, 35.007561>,  <30.122263, 34.263790, 34.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292200, 34.191704, 35.007561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801368, 0.380978, 0.461156,
		-0.421092, -0.906851, 0.017437,
		0.424843, -0.180215, 0.887148,
		30.419653, 34.137638, 35.273705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541990, 34.073921, 35.037994>,  <30.122263, 34.263790, 34.652702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541990, 34.073921, 35.037994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814550, 34.158978, 35.318130>,  <29.978086, 34.210011, 35.486214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814550, 34.158978, 35.318130>,  <29.541990, 34.073921, 35.037994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814550, 34.158978, 35.318130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707174, 0.437948, 0.555074,
		-0.188683, -0.873491, 0.448790,
		0.681399, 0.212639, 0.700343,
		30.018970, 34.222771, 35.528233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380764, 33.712528, 35.668060>,  <29.541990, 34.073921, 35.037994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380764, 33.712528, 35.668060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601273, 34.033451, 35.759624>,  <29.733578, 34.226006, 35.814564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601273, 34.033451, 35.759624>,  <29.380764, 33.712528, 35.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601273, 34.033451, 35.759624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681493, 0.274727, 0.678302,
		0.481319, -0.529930, 0.698216,
		0.551271, 0.802309, 0.228912,
		29.766655, 34.274143, 35.828297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672415, 33.751640, 36.521049>,  <29.380764, 33.712528, 35.668060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672415, 33.751640, 36.521049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595793, 34.105572, 36.351162>,  <29.549820, 34.317932, 36.249229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595793, 34.105572, 36.351162>,  <29.672415, 33.751640, 36.521049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595793, 34.105572, 36.351162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528322, 0.271734, 0.804386,
		0.827154, 0.378472, 0.415422,
		-0.191553, 0.884827, -0.424721,
		29.538326, 34.371021, 36.223747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644958, 34.308201, 37.022057>,  <29.672415, 33.751640, 36.521049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644958, 34.308201, 37.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448950, 34.512703, 36.739639>,  <29.331345, 34.635406, 36.570190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448950, 34.512703, 36.739639>,  <29.644958, 34.308201, 37.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448950, 34.512703, 36.739639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609969, 0.377525, 0.696715,
		0.622750, 0.772068, 0.126857,
		-0.490020, 0.511259, -0.706042,
		29.301945, 34.666080, 36.527828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555111, 35.092136, 37.331722>,  <29.644958, 34.308201, 37.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555111, 35.092136, 37.331722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291662, 35.043869, 37.034630>,  <29.133593, 35.014908, 36.856373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291662, 35.043869, 37.034630>,  <29.555111, 35.092136, 37.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291662, 35.043869, 37.034630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641207, 0.606554, 0.470048,
		0.393787, 0.785832, -0.476866,
		-0.658623, -0.120671, -0.742734,
		29.094074, 35.007668, 36.811810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382917, 35.637558, 37.105972>,  <29.555111, 35.092136, 37.331722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382917, 35.637558, 37.105972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073505, 35.404175, 37.006992>,  <28.887859, 35.264145, 36.947605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073505, 35.404175, 37.006992>,  <29.382917, 35.637558, 37.105972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073505, 35.404175, 37.006992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627303, 0.649274, 0.430040,
		-0.090247, 0.487875, -0.868236,
		-0.773528, -0.583457, -0.247451,
		28.841446, 35.229137, 36.932758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834440, 36.155838, 36.958679>,  <29.382917, 35.637558, 37.105972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834440, 36.155838, 36.958679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669321, 35.801731, 37.044369>,  <28.570250, 35.589268, 37.095783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669321, 35.801731, 37.044369>,  <28.834440, 36.155838, 36.958679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669321, 35.801731, 37.044369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708583, 0.459912, 0.535155,
		-0.572283, 0.069114, -0.817139,
		-0.412799, -0.885271, 0.214227,
		28.545481, 35.536148, 37.108635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302086, 36.102276, 37.658562>,  <28.834440, 36.155838, 36.958679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302086, 36.102276, 37.658562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445354, 36.279858, 37.987103>,  <29.531315, 36.386406, 38.184227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445354, 36.279858, 37.987103>,  <29.302086, 36.102276, 37.658562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445354, 36.279858, 37.987103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929745, -0.250032, -0.270292,
		0.085367, 0.860459, -0.502317,
		0.358170, 0.443953, 0.821352,
		29.552805, 36.413044, 38.233509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829803, 36.620903, 37.400200>,  <29.302086, 36.102276, 37.658562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829803, 36.620903, 37.400200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871958, 36.497513, 37.778351>,  <29.897249, 36.423477, 38.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871958, 36.497513, 37.778351>,  <29.829803, 36.620903, 37.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871958, 36.497513, 37.778351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949345, -0.251800, -0.187990,
		0.296036, 0.917299, 0.266317,
		0.105384, -0.308478, 0.945376,
		29.903574, 36.404968, 38.061962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437748, 36.935268, 37.773499>,  <29.829803, 36.620903, 37.400200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437748, 36.935268, 37.773499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346966, 36.569073, 37.906384>,  <30.292496, 36.349354, 37.986115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346966, 36.569073, 37.906384>,  <30.437748, 36.935268, 37.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346966, 36.569073, 37.906384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935240, -0.300036, -0.187897,
		0.271693, 0.268052, 0.924300,
		-0.226957, -0.915492, 0.332211,
		30.278879, 36.294426, 38.006046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835035, 36.630367, 38.436077>,  <30.437748, 36.935268, 37.773499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835035, 36.630367, 38.436077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734497, 36.380024, 38.140747>,  <30.674175, 36.229820, 37.963547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734497, 36.380024, 38.140747>,  <30.835035, 36.630367, 38.436077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734497, 36.380024, 38.140747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949770, -0.306423, -0.063578,
		-0.186451, -0.717223, 0.671437,
		-0.251343, -0.625856, -0.738330,
		30.659094, 36.192268, 37.919247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218914, 36.035660, 38.578018>,  <30.835035, 36.630367, 38.436077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218914, 36.035660, 38.578018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166899, 36.126835, 38.192036>,  <31.135689, 36.181538, 37.960445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166899, 36.126835, 38.192036>,  <31.218914, 36.035660, 38.578018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166899, 36.126835, 38.192036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987618, -0.056354, -0.146405,
		-0.087750, -0.972044, -0.217783,
		-0.130039, 0.227934, -0.964954,
		31.127888, 36.195213, 37.902550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422855, 35.400421, 38.103970>,  <31.218914, 36.035660, 38.578018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422855, 35.400421, 38.103970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458603, 35.791809, 38.029552>,  <31.480051, 36.026642, 37.984901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458603, 35.791809, 38.029552>,  <31.422855, 35.400421, 38.103970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458603, 35.791809, 38.029552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991460, -0.069584, 0.110294,
		0.094974, -0.194313, -0.976331,
		0.089369, 0.978468, -0.186045,
		31.485413, 36.085350, 37.973740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837194, 35.523880, 37.470764>,  <31.422855, 35.400421, 38.103970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837194, 35.523880, 37.470764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847916, 35.806644, 37.753483>,  <31.854349, 35.976303, 37.923115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847916, 35.806644, 37.753483>,  <31.837194, 35.523880, 37.470764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847916, 35.806644, 37.753483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985035, -0.139104, 0.101770,
		0.170260, 0.693487, -0.700062,
		0.026805, 0.706913, 0.706793,
		31.855957, 36.018719, 37.965519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395374, 35.312592, 37.036316>,  <31.837194, 35.523880, 37.470764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395374, 35.312592, 37.036316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140057, 35.407639, 36.743435>,  <31.986866, 35.464668, 36.567707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140057, 35.407639, 36.743435>,  <32.395374, 35.312592, 37.036316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140057, 35.407639, 36.743435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462396, -0.642097, -0.611474,
		-0.615435, -0.728870, 0.299981,
		-0.638302, 0.237613, -0.732196,
		31.948566, 35.478924, 36.523777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060963, 34.752037, 36.703644>,  <32.395374, 35.312592, 37.036316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060963, 34.752037, 36.703644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064720, 35.044804, 36.431110>,  <32.066975, 35.220463, 36.267590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064720, 35.044804, 36.431110>,  <32.060963, 34.752037, 36.703644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064720, 35.044804, 36.431110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381172, -0.632538, -0.674243,
		-0.924457, -0.253369, -0.284928,
		0.009395, 0.731915, -0.681331,
		32.067539, 35.264378, 36.226711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952318, 34.401100, 36.072811>,  <32.060963, 34.752037, 36.703644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952318, 34.401100, 36.072811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141315, 34.749733, 36.020512>,  <32.254715, 34.958912, 35.989132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141315, 34.749733, 36.020512>,  <31.952318, 34.401100, 36.072811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141315, 34.749733, 36.020512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605213, -0.428716, -0.670760,
		-0.640675, 0.237801, -0.730059,
		0.472495, 0.871581, -0.130748,
		32.283066, 35.011208, 35.981289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950947, 34.680347, 35.340935>,  <31.952318, 34.401100, 36.072811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950947, 34.680347, 35.340935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287766, 34.757416, 35.542465>,  <32.489857, 34.803658, 35.663383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287766, 34.757416, 35.542465>,  <31.950947, 34.680347, 35.340935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287766, 34.757416, 35.542465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532204, -0.448865, -0.717829,
		0.087844, 0.872582, -0.480505,
		0.842046, 0.192669, 0.503822,
		32.540379, 34.815216, 35.693611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511345, 35.175442, 35.047546>,  <31.950947, 34.680347, 35.340935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511345, 35.175442, 35.047546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704571, 34.912575, 35.278988>,  <32.820507, 34.754852, 35.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704571, 34.912575, 35.278988>,  <32.511345, 35.175442, 35.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704571, 34.912575, 35.278988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656089, -0.165931, -0.736217,
		0.579827, 0.735252, 0.351007,
		0.483062, -0.657170, 0.578601,
		32.849491, 34.715424, 35.452568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223877, 35.364784, 34.965885>,  <32.511345, 35.175442, 35.047546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223877, 35.364784, 34.965885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215199, 35.003338, 35.137001>,  <33.209991, 34.786469, 35.239670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215199, 35.003338, 35.137001>,  <33.223877, 35.364784, 34.965885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215199, 35.003338, 35.137001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839306, -0.248961, -0.483305,
		0.543226, 0.348559, 0.763815,
		-0.021700, -0.903618, 0.427790,
		33.208687, 34.732254, 35.265339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838684, 35.264801, 35.374935>,  <33.223877, 35.364784, 34.965885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838684, 35.264801, 35.374935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692795, 34.946732, 35.181160>,  <33.605259, 34.755890, 35.064896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692795, 34.946732, 35.181160>,  <33.838684, 35.264801, 35.374935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692795, 34.946732, 35.181160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857192, -0.083587, -0.508168,
		0.363588, -0.600595, 0.712102,
		-0.364725, -0.795172, -0.484435,
		33.583378, 34.708179, 35.035828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281273, 34.791698, 35.461693>,  <33.838684, 35.264801, 35.374935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281273, 34.791698, 35.461693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074944, 34.746231, 35.122044>,  <33.951145, 34.718952, 34.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074944, 34.746231, 35.122044>,  <34.281273, 34.791698, 35.461693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074944, 34.746231, 35.122044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849586, 0.059545, -0.524079,
		0.110132, -0.991733, 0.065856,
		-0.515825, -0.113668, -0.849120,
		33.920197, 34.712132, 34.867310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700634, 34.278290, 35.057896>,  <34.281273, 34.791698, 35.461693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700634, 34.278290, 35.057896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457825, 34.503132, 34.833199>,  <34.312138, 34.638039, 34.698380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457825, 34.503132, 34.833199>,  <34.700634, 34.278290, 35.057896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457825, 34.503132, 34.833199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727972, 0.109830, -0.676752,
		-0.318710, -0.819741, -0.475867,
		-0.607026, 0.562106, -0.561744,
		34.275719, 34.671764, 34.664677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775276, 34.119053, 34.248512>,  <34.700634, 34.278290, 35.057896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775276, 34.119053, 34.248512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614727, 34.484962, 34.266823>,  <34.518398, 34.704506, 34.277809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614727, 34.484962, 34.266823>,  <34.775276, 34.119053, 34.248512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614727, 34.484962, 34.266823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429335, 0.232049, -0.872826,
		-0.809058, -0.330674, -0.485881,
		-0.401369, 0.914772, 0.045772,
		34.494316, 34.759396, 34.280556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419731, 34.210415, 33.685120>,  <34.775276, 34.119053, 34.248512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419731, 34.210415, 33.685120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530869, 34.577286, 33.799374>,  <34.597549, 34.797409, 33.867924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530869, 34.577286, 33.799374>,  <34.419731, 34.210415, 33.685120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530869, 34.577286, 33.799374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269731, 0.210890, -0.939559,
		-0.921981, 0.338093, -0.188798,
		0.277842, 0.917180, 0.285630,
		34.614220, 34.852440, 33.885063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286373, 34.600475, 33.066185>,  <34.419731, 34.210415, 33.685120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286373, 34.600475, 33.066185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502487, 34.843502, 33.299065>,  <34.632156, 34.989319, 33.438793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502487, 34.843502, 33.299065>,  <34.286373, 34.600475, 33.066185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502487, 34.843502, 33.299065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362449, 0.456383, -0.812616,
		-0.759424, 0.650062, 0.026365,
		0.540283, 0.607564, 0.582203,
		34.664574, 35.025772, 33.473724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116547, 35.299194, 32.895233>,  <34.286373, 34.600475, 33.066185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116547, 35.299194, 32.895233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489445, 35.252514, 33.032223>,  <34.713184, 35.224506, 33.114418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489445, 35.252514, 33.032223>,  <34.116547, 35.299194, 32.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489445, 35.252514, 33.032223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357370, 0.444933, -0.821170,
		-0.056545, 0.887927, 0.456496,
		0.932250, -0.116705, 0.342477,
		34.769119, 35.217503, 33.134964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457764, 35.895401, 32.596519>,  <34.116547, 35.299194, 32.895233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457764, 35.895401, 32.596519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741962, 35.642689, 32.720490>,  <34.912479, 35.491062, 32.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741962, 35.642689, 32.720490>,  <34.457764, 35.895401, 32.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741962, 35.642689, 32.720490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636584, 0.389320, -0.665726,
		0.299936, 0.670284, 0.678792,
		0.710492, -0.631783, 0.309921,
		34.955109, 35.453156, 32.813465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046837, 36.288616, 32.667122>,  <34.457764, 35.895401, 32.596519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046837, 36.288616, 32.667122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168854, 35.908867, 32.637100>,  <35.242065, 35.681015, 32.619087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168854, 35.908867, 32.637100>,  <35.046837, 36.288616, 32.667122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168854, 35.908867, 32.637100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742251, 0.286388, -0.605843,
		0.596668, 0.129098, 0.792036,
		0.305043, -0.949376, -0.075056,
		35.260368, 35.624054, 32.614582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758278, 36.304241, 32.476929>,  <35.046837, 36.288616, 32.667122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758278, 36.304241, 32.476929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666901, 35.929302, 32.371704>,  <35.612076, 35.704338, 32.308571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666901, 35.929302, 32.371704>,  <35.758278, 36.304241, 32.476929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666901, 35.929302, 32.371704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546015, 0.100353, -0.831743,
		0.806029, -0.333636, 0.488881,
		-0.228439, -0.937346, -0.263057,
		35.598370, 35.648098, 32.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369564, 36.060459, 32.163986>,  <35.758278, 36.304241, 32.476929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369564, 36.060459, 32.163986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097126, 35.809605, 32.012829>,  <35.933662, 35.659092, 31.922134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097126, 35.809605, 32.012829>,  <36.369564, 36.060459, 32.163986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097126, 35.809605, 32.012829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511982, -0.038966, -0.858112,
		0.523428, -0.777934, 0.347623,
		-0.681100, -0.627137, -0.377892,
		35.892796, 35.621464, 31.899462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603321, 35.491859, 31.865026>,  <36.369564, 36.060459, 32.163986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603321, 35.491859, 31.865026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263451, 35.495338, 31.654135>,  <36.059528, 35.497425, 31.527599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263451, 35.495338, 31.654135>,  <36.603321, 35.491859, 31.865026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263451, 35.495338, 31.654135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516150, -0.190820, -0.834971,
		-0.107868, -0.981587, 0.157646,
		-0.849679, 0.008698, -0.527229,
		36.008549, 35.497948, 31.495966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575226, 34.880486, 31.411522>,  <36.603321, 35.491859, 31.865026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575226, 34.880486, 31.411522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320271, 35.136253, 31.239536>,  <36.167297, 35.289715, 31.136345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320271, 35.136253, 31.239536>,  <36.575226, 34.880486, 31.411522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320271, 35.136253, 31.239536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434031, -0.163123, -0.886007,
		-0.636670, -0.751352, -0.173556,
		-0.637392, 0.639422, -0.429966,
		36.129051, 35.328079, 31.110546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479912, 34.647350, 30.824469>,  <36.575226, 34.880486, 31.411522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479912, 34.647350, 30.824469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298706, 34.987640, 30.717848>,  <36.189983, 35.191814, 30.653875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298706, 34.987640, 30.717848>,  <36.479912, 34.647350, 30.824469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298706, 34.987640, 30.717848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303514, -0.133954, -0.943364,
		-0.838247, -0.508259, -0.197523,
		-0.453014, 0.850722, -0.266551,
		36.162800, 35.242859, 30.637882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051830, 34.495354, 30.195835>,  <36.479912, 34.647350, 30.824469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051830, 34.495354, 30.195835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101734, 34.892162, 30.188660>,  <36.131676, 35.130249, 30.184355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101734, 34.892162, 30.188660>,  <36.051830, 34.495354, 30.195835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101734, 34.892162, 30.188660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204003, -0.043342, -0.978010,
		-0.970988, 0.118358, -0.207783,
		0.124761, 0.992025, -0.017939,
		36.139164, 35.189770, 30.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800785, 34.691757, 29.659384>,  <36.051830, 34.495354, 30.195835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800785, 34.691757, 29.659384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005955, 35.026913, 29.734045>,  <36.129059, 35.228008, 29.778841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005955, 35.026913, 29.734045>,  <35.800785, 34.691757, 29.659384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005955, 35.026913, 29.734045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006568, 0.221259, -0.975193,
		-0.858406, 0.498979, 0.118993,
		0.512929, 0.837893, 0.186653,
		36.159832, 35.278282, 29.790041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495872, 35.143036, 29.137634>,  <35.800785, 34.691757, 29.659384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495872, 35.143036, 29.137634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833229, 35.316811, 29.264103>,  <36.035641, 35.421074, 29.339983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833229, 35.316811, 29.264103>,  <35.495872, 35.143036, 29.137634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833229, 35.316811, 29.264103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257399, 0.189844, -0.947473,
		-0.471637, 0.880470, 0.048289,
		0.843389, 0.434434, 0.316169,
		36.086246, 35.447140, 29.358953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488762, 35.804680, 28.864607>,  <35.495872, 35.143036, 29.137634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488762, 35.804680, 28.864607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875095, 35.707146, 28.899712>,  <36.106895, 35.648624, 28.920774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875095, 35.707146, 28.899712>,  <35.488762, 35.804680, 28.864607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875095, 35.707146, 28.899712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132414, 0.173225, -0.975940,
		0.222764, 0.954221, 0.199594,
		0.965838, -0.243834, 0.087764,
		36.164848, 35.633995, 28.926041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835709, 36.251354, 28.413181>,  <35.488762, 35.804680, 28.864607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835709, 36.251354, 28.413181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118149, 35.972588, 28.463354>,  <36.287613, 35.805328, 28.493458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118149, 35.972588, 28.463354>,  <35.835709, 36.251354, 28.413181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118149, 35.972588, 28.463354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241855, 0.070872, -0.967721,
		0.665532, 0.713641, 0.218595,
		0.706098, -0.696917, 0.125430,
		36.329979, 35.763512, 28.500982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393429, 36.493404, 27.959738>,  <35.835709, 36.251354, 28.413181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393429, 36.493404, 27.959738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467854, 36.110096, 28.046545>,  <36.512508, 35.880112, 28.098629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467854, 36.110096, 28.046545>,  <36.393429, 36.493404, 27.959738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467854, 36.110096, 28.046545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360318, -0.138940, -0.922424,
		0.914086, 0.249820, 0.319431,
		0.186058, -0.958272, 0.217018,
		36.523670, 35.822613, 28.111650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093697, 36.333290, 27.719730>,  <36.393429, 36.493404, 27.959738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093697, 36.333290, 27.719730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882835, 35.993526, 27.709751>,  <36.756321, 35.789669, 27.703764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882835, 35.993526, 27.709751>,  <37.093697, 36.333290, 27.719730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882835, 35.993526, 27.709751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320341, -0.171445, -0.931659,
		0.787079, -0.499116, 0.362477,
		-0.527150, -0.849406, -0.024946,
		36.724689, 35.738705, 27.702267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542072, 35.823967, 27.304819>,  <37.093697, 36.333290, 27.719730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542072, 35.823967, 27.304819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166691, 35.690784, 27.341591>,  <36.941463, 35.610874, 27.363653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166691, 35.690784, 27.341591>,  <37.542072, 35.823967, 27.304819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166691, 35.690784, 27.341591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032998, -0.351343, -0.935665,
		0.343832, -0.875043, 0.340705,
		-0.938452, -0.332954, 0.091928,
		36.885155, 35.590897, 27.369169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508923, 35.046635, 27.108355>,  <37.542072, 35.823967, 27.304819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508923, 35.046635, 27.108355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142181, 35.197693, 27.056570>,  <36.922134, 35.288326, 27.025499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142181, 35.197693, 27.056570>,  <37.508923, 35.046635, 27.108355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142181, 35.197693, 27.056570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013183, -0.352748, -0.935626,
		-0.399003, -0.856126, 0.328397,
		-0.916854, 0.377647, -0.129461,
		36.867123, 35.310986, 27.017733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133751, 34.545242, 26.716751>,  <37.508923, 35.046635, 27.108355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133751, 34.545242, 26.716751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940384, 34.891582, 26.665205>,  <36.824364, 35.099388, 26.634277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940384, 34.891582, 26.665205>,  <37.133751, 34.545242, 26.716751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940384, 34.891582, 26.665205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013482, -0.154557, -0.987892,
		-0.875288, -0.475824, 0.086389,
		-0.483415, 0.865855, -0.128867,
		36.795361, 35.151340, 26.626545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860657, 34.495861, 26.001137>,  <37.133751, 34.545242, 26.716751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860657, 34.495861, 26.001137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794193, 34.884094, 26.070824>,  <36.754314, 35.117035, 26.112637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794193, 34.884094, 26.070824>,  <36.860657, 34.495861, 26.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794193, 34.884094, 26.070824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005525, 0.177587, -0.984090,
		-0.986083, -0.162553, -0.034870,
		-0.166160, 0.970587, 0.174217,
		36.744347, 35.175270, 26.123089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342823, 34.687233, 25.534361>,  <36.860657, 34.495861, 26.001137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342823, 34.687233, 25.534361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547409, 35.008488, 25.656582>,  <36.670162, 35.201241, 25.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547409, 35.008488, 25.656582>,  <36.342823, 34.687233, 25.534361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547409, 35.008488, 25.656582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015663, 0.346811, -0.937804,
		-0.859159, 0.484444, 0.164803,
		0.511469, 0.803141, 0.305554,
		36.700851, 35.249432, 25.748247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048813, 35.126114, 25.075592>,  <36.342823, 34.687233, 25.534361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048813, 35.126114, 25.075592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374462, 35.308136, 25.219883>,  <36.569851, 35.417351, 25.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374462, 35.308136, 25.219883>,  <36.048813, 35.126114, 25.075592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374462, 35.308136, 25.219883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194270, 0.371970, -0.907688,
		-0.547227, 0.809051, 0.214427,
		0.814126, 0.455055, 0.360726,
		36.618698, 35.444653, 25.328100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931805, 35.885471, 24.938192>,  <36.048813, 35.126114, 25.075592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931805, 35.885471, 24.938192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326698, 35.863251, 24.997900>,  <36.563633, 35.849918, 25.033726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326698, 35.863251, 24.997900>,  <35.931805, 35.885471, 24.938192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326698, 35.863251, 24.997900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159094, 0.388480, -0.907619,
		-0.007565, 0.919781, 0.392360,
		0.987235, -0.055556, 0.149270,
		36.622868, 35.846584, 25.042681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248508, 36.512554, 24.696392>,  <35.931805, 35.885471, 24.938192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248508, 36.512554, 24.696392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560165, 36.261833, 24.693363>,  <36.747162, 36.111401, 24.691545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560165, 36.261833, 24.693363>,  <36.248508, 36.512554, 24.696392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560165, 36.261833, 24.693363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388303, 0.492093, -0.779144,
		0.492093, 0.604125, 0.626799,
		0.779144, -0.626799, -0.007572,
		36.793907, 36.073795, 24.691092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846832, 36.904568, 24.577261>,  <36.248508, 36.512554, 24.696392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846832, 36.904568, 24.577261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925014, 36.528660, 24.465099>,  <36.971924, 36.303116, 24.397802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925014, 36.528660, 24.465099>,  <36.846832, 36.904568, 24.577261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925014, 36.528660, 24.465099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451147, 0.340028, -0.825135,
		0.870783, 0.034776, 0.490436,
		0.195457, -0.939772, -0.280402,
		36.983650, 36.246727, 24.380980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544777, 36.981300, 24.286375>,  <36.846832, 36.904568, 24.577261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544777, 36.981300, 24.286375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359566, 36.645844, 24.171631>,  <37.248440, 36.444569, 24.102785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359566, 36.645844, 24.171631>,  <37.544777, 36.981300, 24.286375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359566, 36.645844, 24.171631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424504, 0.074285, -0.902374,
		0.778076, -0.539596, 0.321610,
		-0.463027, -0.838640, -0.286860,
		37.220657, 36.394253, 24.085573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095142, 36.622692, 23.851704>,  <37.544777, 36.981300, 24.286375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095142, 36.622692, 23.851704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741592, 36.460083, 23.759176>,  <37.529461, 36.362518, 23.703661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741592, 36.460083, 23.759176>,  <38.095142, 36.622692, 23.851704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741592, 36.460083, 23.759176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253545, -0.000845, -0.967323,
		0.393041, -0.913642, 0.103818,
		-0.883874, -0.406520, -0.231317,
		37.476429, 36.338127, 23.689781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162834, 36.077183, 23.469271>,  <38.095142, 36.622692, 23.851704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162834, 36.077183, 23.469271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786396, 36.169586, 23.370501>,  <37.560532, 36.225029, 23.311239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786396, 36.169586, 23.370501>,  <38.162834, 36.077183, 23.469271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786396, 36.169586, 23.370501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306893, 0.276955, -0.910556,
		-0.141959, -0.932701, -0.331536,
		-0.941098, 0.231007, -0.246923,
		37.504066, 36.238888, 23.296423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161209, 35.757557, 22.887609>,  <38.162834, 36.077183, 23.469271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161209, 35.757557, 22.887609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823223, 35.970196, 22.864172>,  <37.620430, 36.097778, 22.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823223, 35.970196, 22.864172>,  <38.161209, 35.757557, 22.887609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823223, 35.970196, 22.864172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188956, 0.194245, -0.962582,
		-0.500322, -0.824424, -0.264579,
		-0.844969, 0.531595, -0.058595,
		37.569733, 36.129673, 22.846594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898529, 35.607533, 22.235189>,  <38.161209, 35.757557, 22.887609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898529, 35.607533, 22.235189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718658, 35.958443, 22.302330>,  <37.610737, 36.168991, 22.342615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718658, 35.958443, 22.302330>,  <37.898529, 35.607533, 22.235189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718658, 35.958443, 22.302330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259272, 0.308039, -0.915363,
		-0.854733, -0.368098, -0.365971,
		-0.449677, 0.877278, 0.167853,
		37.583755, 36.221626, 22.352686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642330, 35.803871, 21.549196>,  <37.898529, 35.607533, 22.235189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642330, 35.803871, 21.549196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615582, 36.125999, 21.784819>,  <37.599533, 36.319275, 21.926191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615582, 36.125999, 21.784819>,  <37.642330, 35.803871, 21.549196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615582, 36.125999, 21.784819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428169, 0.556417, -0.712090,
		-0.901221, 0.204596, -0.382022,
		-0.066872, 0.805320, 0.589056,
		37.595520, 36.367596, 21.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266052, 36.260071, 21.214375>,  <37.642330, 35.803871, 21.549196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266052, 36.260071, 21.214375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466125, 36.495956, 21.468008>,  <37.586170, 36.637486, 21.620188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466125, 36.495956, 21.468008>,  <37.266052, 36.260071, 21.214375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466125, 36.495956, 21.468008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353033, 0.529767, -0.771178,
		-0.790688, 0.609579, 0.056791,
		0.500180, 0.589712, 0.634082,
		37.616180, 36.672871, 21.658232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145947, 36.988960, 21.060349>,  <37.266052, 36.260071, 21.214375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145947, 36.988960, 21.060349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503540, 36.970234, 21.238604>,  <37.718098, 36.958996, 21.345556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503540, 36.970234, 21.238604>,  <37.145947, 36.988960, 21.060349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503540, 36.970234, 21.238604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413547, 0.469121, -0.780323,
		-0.172525, 0.881892, 0.438751,
		0.893988, -0.046819, 0.445639,
		37.771736, 36.956188, 21.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416458, 37.631145, 20.924244>,  <37.145947, 36.988960, 21.060349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416458, 37.631145, 20.924244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751251, 37.453068, 21.051527>,  <37.952129, 37.346222, 21.127897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751251, 37.453068, 21.051527>,  <37.416458, 37.631145, 20.924244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751251, 37.453068, 21.051527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524897, 0.488750, -0.696855,
		0.154713, 0.750284, 0.642758,
		0.836987, -0.445194, 0.318206,
		38.002346, 37.319511, 21.146988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935848, 38.232582, 21.086926>,  <37.416458, 37.631145, 20.924244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935848, 38.232582, 21.086926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137196, 37.900566, 20.990883>,  <38.258003, 37.701355, 20.933256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137196, 37.900566, 20.990883>,  <37.935848, 38.232582, 21.086926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137196, 37.900566, 20.990883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571999, 0.528374, -0.627406,
		0.647640, 0.178475, 0.740749,
		0.503369, -0.830041, -0.240108,
		38.288208, 37.651554, 20.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651672, 38.331871, 21.127590>,  <37.935848, 38.232582, 21.086926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651672, 38.331871, 21.127590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642040, 38.007309, 20.893995>,  <38.636261, 37.812572, 20.753838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642040, 38.007309, 20.893995>,  <38.651672, 38.331871, 21.127590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642040, 38.007309, 20.893995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695454, 0.406050, -0.592846,
		0.718167, -0.420410, 0.554519,
		-0.024076, -0.811405, -0.583988,
		38.634819, 37.763889, 20.718800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403305, 38.170601, 21.080421>,  <38.651672, 38.331871, 21.127590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403305, 38.170601, 21.080421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212345, 38.004925, 20.770445>,  <39.097771, 37.905518, 20.584459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212345, 38.004925, 20.770445>,  <39.403305, 38.170601, 21.080421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212345, 38.004925, 20.770445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708191, 0.340701, -0.618376,
		0.520150, -0.844019, 0.130677,
		-0.477399, -0.414193, -0.774942,
		39.069126, 37.880669, 20.537962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904739, 37.951859, 20.543308>,  <39.403305, 38.170601, 21.080421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904739, 37.951859, 20.543308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590210, 37.962902, 20.296431>,  <39.401493, 37.969528, 20.148304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590210, 37.962902, 20.296431>,  <39.904739, 37.951859, 20.543308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590210, 37.962902, 20.296431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563767, 0.440676, -0.698550,
		0.252698, -0.897242, -0.362078,
		-0.786327, 0.027605, -0.617193,
		39.354313, 37.971184, 20.111273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056213, 37.562351, 19.906775>,  <39.904739, 37.951859, 20.543308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056213, 37.562351, 19.906775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761490, 37.813278, 19.805912>,  <39.584656, 37.963833, 19.745394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761490, 37.813278, 19.805912>,  <40.056213, 37.562351, 19.906775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761490, 37.813278, 19.805912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598622, 0.431955, -0.674587,
		-0.314258, -0.647991, -0.693794,
		-0.736813, 0.627314, -0.252156,
		39.540447, 38.001472, 19.730265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867550, 37.339584, 19.214602>,  <40.056213, 37.562351, 19.906775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867550, 37.339584, 19.214602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755230, 37.719177, 19.271986>,  <39.687836, 37.946934, 19.306416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755230, 37.719177, 19.271986>,  <39.867550, 37.339584, 19.214602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755230, 37.719177, 19.271986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459596, 0.264176, -0.847928,
		-0.842568, -0.172167, -0.510330,
		-0.280802, 0.948983, 0.143459,
		39.670990, 38.003872, 19.315023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882080, 37.646667, 18.480759>,  <39.867550, 37.339584, 19.214602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882080, 37.646667, 18.480759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915005, 37.937595, 18.753296>,  <39.934761, 38.112152, 18.916819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915005, 37.937595, 18.753296>,  <39.882080, 37.646667, 18.480759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915005, 37.937595, 18.753296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683053, 0.456661, -0.569999,
		-0.725715, 0.512312, -0.459210,
		0.082314, 0.727322, 0.681343,
		39.939697, 38.155792, 18.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004078, 38.291695, 18.061037>,  <39.882080, 37.646667, 18.480759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004078, 38.291695, 18.061037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115566, 38.325504, 18.443695>,  <40.182461, 38.345791, 18.673290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115566, 38.325504, 18.443695>,  <40.004078, 38.291695, 18.061037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115566, 38.325504, 18.443695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842364, 0.456886, -0.285793,
		-0.461236, 0.885500, 0.056140,
		0.278719, 0.084528, 0.956645,
		40.199181, 38.350864, 18.730688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313316, 38.825172, 17.691378>,  <40.004078, 38.291695, 18.061037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313316, 38.825172, 17.691378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358711, 38.820560, 18.088766>,  <40.385948, 38.817795, 18.327200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358711, 38.820560, 18.088766>,  <40.313316, 38.825172, 17.691378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358711, 38.820560, 18.088766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724193, 0.685531, -0.074775,
		-0.680195, 0.727952, 0.086147,
		0.113489, -0.011525, 0.993472,
		40.392757, 38.817104, 18.386808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280052, 39.490635, 17.967188>,  <40.313316, 38.825172, 17.691378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280052, 39.490635, 17.967188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508129, 39.248013, 18.188808>,  <40.644974, 39.102440, 18.321781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508129, 39.248013, 18.188808>,  <40.280052, 39.490635, 17.967188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508129, 39.248013, 18.188808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747003, 0.663465, -0.042420,
		-0.341865, 0.438067, 0.831400,
		0.570188, -0.606557, 0.554053,
		40.679184, 39.066044, 18.355024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867447, 39.860081, 17.886759>,  <40.280052, 39.490635, 17.967188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867447, 39.860081, 17.886759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002182, 39.563622, 18.119049>,  <41.083023, 39.385746, 18.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002182, 39.563622, 18.119049>,  <40.867447, 39.860081, 17.886759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002182, 39.563622, 18.119049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933255, 0.344554, -0.101575,
		-0.124810, 0.576181, 0.807737,
		0.336834, -0.741147, 0.580727,
		41.103233, 39.341278, 18.293266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209492, 40.122406, 18.541126>,  <40.867447, 39.860081, 17.886759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209492, 40.122406, 18.541126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370789, 39.772938, 18.432247>,  <41.467567, 39.563255, 18.366920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370789, 39.772938, 18.432247>,  <41.209492, 40.122406, 18.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370789, 39.772938, 18.432247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903415, 0.427446, -0.033639,
		0.145739, -0.232342, 0.961653,
		0.403239, -0.873674, -0.272197,
		41.491760, 39.510834, 18.350588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717430, 40.515667, 18.689619>,  <41.209492, 40.122406, 18.541126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717430, 40.515667, 18.689619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839664, 40.158356, 18.557762>,  <41.913006, 39.943970, 18.478647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839664, 40.158356, 18.557762>,  <41.717430, 40.515667, 18.689619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839664, 40.158356, 18.557762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950347, 0.307523, 0.047657,
		0.058801, -0.327837, 0.942903,
		0.305588, -0.893282, -0.329642,
		41.931339, 39.890369, 18.458870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327518, 41.186226, 18.987875>,  <41.717430, 40.515667, 18.689619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327518, 41.186226, 18.987875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203766, 41.535103, 19.139433>,  <41.129513, 41.744431, 19.230368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203766, 41.535103, 19.139433>,  <41.327518, 41.186226, 18.987875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203766, 41.535103, 19.139433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663067, -0.483468, 0.571489,
		0.681633, -0.074425, 0.727899,
		-0.309383, 0.872192, 0.378897,
		41.110950, 41.796761, 19.253101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216183, 41.138710, 19.810364>,  <41.327518, 41.186226, 18.987875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216183, 41.138710, 19.810364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986786, 41.414597, 19.633551>,  <40.849148, 41.580128, 19.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986786, 41.414597, 19.633551>,  <41.216183, 41.138710, 19.810364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986786, 41.414597, 19.633551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811492, -0.404393, 0.421838,
		0.112195, 0.600627, 0.791618,
		-0.573492, 0.689720, -0.442033,
		40.814739, 41.621513, 19.500940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848827, 41.357143, 20.342772>,  <41.216183, 41.138710, 19.810364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848827, 41.357143, 20.342772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659492, 41.440285, 20.000368>,  <40.545891, 41.490170, 19.794926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659492, 41.440285, 20.000368>,  <40.848827, 41.357143, 20.342772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659492, 41.440285, 20.000368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863398, -0.302115, 0.404067,
		-0.174627, 0.930336, 0.322459,
		-0.473338, 0.207850, -0.856008,
		40.517490, 41.502640, 19.743567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283928, 41.783096, 20.431683>,  <40.848827, 41.357143, 20.342772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283928, 41.783096, 20.431683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223942, 41.545677, 20.115402>,  <40.187950, 41.403225, 19.925634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223942, 41.545677, 20.115402>,  <40.283928, 41.783096, 20.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223942, 41.545677, 20.115402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741686, -0.461294, 0.486941,
		-0.653769, 0.659476, -0.371050,
		-0.149962, -0.593549, -0.790703,
		40.178951, 41.367611, 19.878191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613510, 41.894989, 20.298141>,  <40.283928, 41.783096, 20.431683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613510, 41.894989, 20.298141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727974, 41.520893, 20.214771>,  <39.796654, 41.296436, 20.164749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727974, 41.520893, 20.214771>,  <39.613510, 41.894989, 20.298141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727974, 41.520893, 20.214771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712159, -0.353121, 0.606742,
		-0.641048, -0.025193, -0.767087,
		0.286160, -0.935238, -0.208426,
		39.813824, 41.240322, 20.152245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007359, 41.580208, 20.225269>,  <39.613510, 41.894989, 20.298141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007359, 41.580208, 20.225269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261673, 41.281822, 20.304575>,  <39.414261, 41.102791, 20.352160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261673, 41.281822, 20.304575>,  <39.007359, 41.580208, 20.225269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261673, 41.281822, 20.304575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588846, -0.302686, 0.749428,
		-0.499035, -0.593225, -0.631703,
		0.635787, -0.745966, 0.198267,
		39.452408, 41.058033, 20.364056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599472, 41.061783, 20.485249>,  <39.007359, 41.580208, 20.225269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599472, 41.061783, 20.485249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967319, 40.976971, 20.617512>,  <39.188030, 40.926083, 20.696869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967319, 40.976971, 20.617512>,  <38.599472, 41.061783, 20.485249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967319, 40.976971, 20.617512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390122, -0.394884, 0.831788,
		-0.045797, -0.893928, -0.445864,
		0.919623, -0.212035, 0.330657,
		39.243206, 40.913361, 20.716709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449890, 40.327496, 20.771229>,  <38.599472, 41.061783, 20.485249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449890, 40.327496, 20.771229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794369, 40.447426, 20.935396>,  <39.001057, 40.519382, 21.033897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794369, 40.447426, 20.935396>,  <38.449890, 40.327496, 20.771229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794369, 40.447426, 20.935396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345930, -0.245848, 0.905478,
		0.372388, -0.921771, -0.108004,
		0.861197, 0.299827, 0.410419,
		39.052727, 40.537373, 21.058521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576576, 39.872463, 21.350771>,  <38.449890, 40.327496, 20.771229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576576, 39.872463, 21.350771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806450, 40.187237, 21.440639>,  <38.944374, 40.376102, 21.494560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806450, 40.187237, 21.440639>,  <38.576576, 39.872463, 21.350771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806450, 40.187237, 21.440639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300941, -0.052088, 0.952219,
		0.761036, -0.614836, 0.206887,
		0.574682, 0.786933, 0.224670,
		38.978855, 40.423317, 21.508041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111622, 39.681652, 21.760000>,  <38.576576, 39.872463, 21.350771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111622, 39.681652, 21.760000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005039, 40.063396, 21.813946>,  <38.941090, 40.292442, 21.846313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005039, 40.063396, 21.813946>,  <39.111622, 39.681652, 21.760000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005039, 40.063396, 21.813946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171871, -0.184726, 0.967645,
		0.948398, 0.234660, 0.213249,
		-0.266460, 0.954364, 0.134863,
		38.925102, 40.349705, 21.854404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097313, 39.780296, 22.449123>,  <39.111622, 39.681652, 21.760000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097313, 39.780296, 22.449123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979568, 40.159588, 22.401438>,  <38.908920, 40.387161, 22.372826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979568, 40.159588, 22.401438>,  <39.097313, 39.780296, 22.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979568, 40.159588, 22.401438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306032, 0.024650, 0.951702,
		0.905371, 0.316627, 0.282933,
		-0.294360, 0.948230, -0.119216,
		38.891262, 40.444057, 22.365673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352688, 40.198719, 23.019363>,  <39.097313, 39.780296, 22.449123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352688, 40.198719, 23.019363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021103, 40.383114, 22.892673>,  <38.822151, 40.493752, 22.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021103, 40.383114, 22.892673>,  <39.352688, 40.198719, 23.019363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021103, 40.383114, 22.892673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385299, -0.060199, 0.920826,
		0.405419, 0.885365, 0.227519,
		-0.828964, 0.460983, -0.316724,
		38.772415, 40.521408, 22.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223415, 40.891453, 23.431047>,  <39.352688, 40.198719, 23.019363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223415, 40.891453, 23.431047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879543, 40.749577, 23.283998>,  <38.673222, 40.664452, 23.195768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879543, 40.749577, 23.283998>,  <39.223415, 40.891453, 23.431047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879543, 40.749577, 23.283998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354303, -0.104424, 0.929282,
		-0.367996, 0.929134, -0.035896,
		-0.859679, -0.354690, -0.367623,
		38.621639, 40.643169, 23.173712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684170, 41.248859, 23.844791>,  <39.223415, 40.891453, 23.431047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684170, 41.248859, 23.844791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494789, 40.937893, 23.679153>,  <38.381161, 40.751312, 23.579771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494789, 40.937893, 23.679153>,  <38.684170, 41.248859, 23.844791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494789, 40.937893, 23.679153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596977, -0.062469, 0.799823,
		-0.647662, 0.625879, -0.434523,
		-0.473448, -0.777414, -0.414094,
		38.352757, 40.704670, 23.554926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007656, 41.324146, 24.039017>,  <38.684170, 41.248859, 23.844791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007656, 41.324146, 24.039017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019745, 40.935692, 23.944380>,  <38.026997, 40.702618, 23.887596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019745, 40.935692, 23.944380>,  <38.007656, 41.324146, 24.039017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019745, 40.935692, 23.944380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608817, -0.205612, 0.766202,
		-0.792735, 0.120888, -0.597459,
		0.030220, -0.971139, -0.236595,
		38.028812, 40.644352, 23.873402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447906, 41.111607, 24.239811>,  <38.007656, 41.324146, 24.039017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447906, 41.111607, 24.239811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646996, 40.768345, 24.189459>,  <37.766449, 40.562389, 24.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646996, 40.768345, 24.189459>,  <37.447906, 41.111607, 24.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646996, 40.768345, 24.189459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444887, -0.377180, 0.812287,
		-0.744548, -0.348288, -0.569511,
		0.497718, -0.858155, -0.125881,
		37.796310, 40.510899, 24.151695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969604, 40.635277, 24.304352>,  <37.447906, 41.111607, 24.239811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969604, 40.635277, 24.304352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313705, 40.458504, 24.406063>,  <37.520168, 40.352440, 24.467091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313705, 40.458504, 24.406063>,  <36.969604, 40.635277, 24.304352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313705, 40.458504, 24.406063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412018, -0.308760, 0.857268,
		-0.300338, -0.842239, -0.447695,
		0.860255, -0.441929, 0.254285,
		37.571781, 40.325924, 24.482347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778358, 39.855965, 24.606483>,  <36.969604, 40.635277, 24.304352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778358, 39.855965, 24.606483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137100, 39.980927, 24.731733>,  <37.352345, 40.055904, 24.806883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137100, 39.980927, 24.731733>,  <36.778358, 39.855965, 24.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137100, 39.980927, 24.731733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262065, -0.194988, 0.945146,
		0.356327, -0.929721, -0.093005,
		0.896857, 0.312407, 0.313127,
		37.406158, 40.074650, 24.825672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074108, 39.322300, 24.986765>,  <36.778358, 39.855965, 24.606483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074108, 39.322300, 24.986765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276608, 39.633575, 25.135435>,  <37.398106, 39.820339, 25.224638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276608, 39.633575, 25.135435>,  <37.074108, 39.322300, 24.986765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276608, 39.633575, 25.135435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379001, -0.186372, 0.906435,
		0.774644, -0.599745, 0.200583,
		0.506247, 0.778185, 0.371676,
		37.428482, 39.867031, 25.246939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289452, 39.037697, 25.675083>,  <37.074108, 39.322300, 24.986765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289452, 39.037697, 25.675083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299561, 39.437305, 25.660526>,  <37.305626, 39.677071, 25.651793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299561, 39.437305, 25.660526>,  <37.289452, 39.037697, 25.675083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299561, 39.437305, 25.660526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404643, 0.043513, 0.913439,
		0.914126, -0.008360, 0.405345,
		0.025274, 0.999018, -0.036393,
		37.307144, 39.737011, 25.649609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637058, 39.283321, 26.248941>,  <37.289452, 39.037697, 25.675083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637058, 39.283321, 26.248941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402859, 39.593754, 26.155222>,  <37.262341, 39.780014, 26.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402859, 39.593754, 26.155222>,  <37.637058, 39.283321, 26.248941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402859, 39.593754, 26.155222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253309, 0.099403, 0.962265,
		0.770084, 0.622751, 0.138388,
		-0.585496, 0.776080, -0.234297,
		37.227211, 39.826576, 26.084932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856239, 39.793224, 26.640766>,  <37.637058, 39.283321, 26.248941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856239, 39.793224, 26.640766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493484, 39.909966, 26.519196>,  <37.275829, 39.980011, 26.446253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493484, 39.909966, 26.519196>,  <37.856239, 39.793224, 26.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493484, 39.909966, 26.519196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253119, 0.199313, 0.946681,
		0.336871, 0.935465, -0.106880,
		-0.906890, 0.291856, -0.303927,
		37.221416, 39.997520, 26.428017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629753, 40.172943, 27.171120>,  <37.856239, 39.793224, 26.640766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629753, 40.172943, 27.171120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303600, 40.065788, 26.965832>,  <37.107910, 40.001495, 26.842659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303600, 40.065788, 26.965832>,  <37.629753, 40.172943, 27.171120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303600, 40.065788, 26.965832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527964, -0.019602, 0.849041,
		-0.237505, 0.963252, -0.125451,
		-0.815381, -0.267885, -0.513218,
		37.058987, 39.985424, 26.811867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070580, 40.752647, 27.424681>,  <37.629753, 40.172943, 27.171120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070580, 40.752647, 27.424681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871197, 40.437012, 27.281080>,  <36.751568, 40.247631, 27.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871197, 40.437012, 27.281080>,  <37.070580, 40.752647, 27.424681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871197, 40.437012, 27.281080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448589, -0.119585, 0.885702,
		-0.741827, 0.602528, -0.294368,
		-0.498458, -0.789087, -0.358999,
		36.721661, 40.200287, 27.173380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326233, 40.844566, 27.588486>,  <37.070580, 40.752647, 27.424681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326233, 40.844566, 27.588486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345573, 40.451012, 27.519630>,  <36.357178, 40.214878, 27.478317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345573, 40.451012, 27.519630>,  <36.326233, 40.844566, 27.588486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345573, 40.451012, 27.519630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564416, -0.169099, 0.807985,
		-0.824073, 0.058092, -0.563497,
		0.048349, -0.983886, -0.172138,
		36.360077, 40.155846, 27.467989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710911, 40.542778, 27.600012>,  <36.326233, 40.844566, 27.588486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710911, 40.542778, 27.600012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918964, 40.212288, 27.686550>,  <36.043797, 40.013992, 27.738474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918964, 40.212288, 27.686550>,  <35.710911, 40.542778, 27.600012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918964, 40.212288, 27.686550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611727, -0.183617, 0.769464,
		-0.596029, -0.532570, -0.600932,
		0.520135, -0.826228, 0.216347,
		36.075005, 39.964420, 27.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171650, 39.986919, 27.783180>,  <35.710911, 40.542778, 27.600012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171650, 39.986919, 27.783180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525383, 39.844982, 27.904531>,  <35.737621, 39.759819, 27.977343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525383, 39.844982, 27.904531>,  <35.171650, 39.986919, 27.783180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525383, 39.844982, 27.904531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437964, -0.405515, 0.802337,
		-0.161682, -0.842402, -0.514020,
		0.884334, -0.354846, 0.303378,
		35.790684, 39.738529, 27.995544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017635, 39.348034, 27.801733>,  <35.171650, 39.986919, 27.783180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017635, 39.348034, 27.801733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325455, 39.421307, 28.046434>,  <35.510147, 39.465271, 28.193254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325455, 39.421307, 28.046434>,  <35.017635, 39.348034, 27.801733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325455, 39.421307, 28.046434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443228, -0.536435, 0.718182,
		0.459721, -0.823822, -0.331623,
		0.769548, 0.183179, 0.611752,
		35.556320, 39.476261, 28.229959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144428, 38.718193, 28.204912>,  <35.017635, 39.348034, 27.801733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144428, 38.718193, 28.204912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328743, 39.008984, 28.408548>,  <35.439331, 39.183460, 28.530731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328743, 39.008984, 28.408548>,  <35.144428, 38.718193, 28.204912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328743, 39.008984, 28.408548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203344, -0.471881, 0.857893,
		0.863900, -0.498830, -0.069611,
		0.460790, 0.726979, 0.509092,
		35.466980, 39.227077, 28.561275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474304, 38.339417, 28.731827>,  <35.144428, 38.718193, 28.204912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474304, 38.339417, 28.731827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533493, 38.701923, 28.890211>,  <35.569004, 38.919426, 28.985243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533493, 38.701923, 28.890211>,  <35.474304, 38.339417, 28.731827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533493, 38.701923, 28.890211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047202, -0.393441, 0.918137,
		0.987865, -0.154546, -0.015439,
		0.147969, 0.906267, 0.395962,
		35.577885, 38.973804, 29.008999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964916, 38.226200, 29.227335>,  <35.474304, 38.339417, 28.731827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964916, 38.226200, 29.227335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742935, 38.549389, 29.306543>,  <35.609745, 38.743301, 29.354069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742935, 38.549389, 29.306543>,  <35.964916, 38.226200, 29.227335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742935, 38.549389, 29.306543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089027, -0.294356, 0.951540,
		0.827104, 0.510431, 0.235285,
		-0.554953, 0.807970, 0.198021,
		35.576450, 38.791779, 29.365950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212914, 38.500751, 29.851719>,  <35.964916, 38.226200, 29.227335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212914, 38.500751, 29.851719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837238, 38.627781, 29.799448>,  <35.611835, 38.703999, 29.768085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837238, 38.627781, 29.799448>,  <36.212914, 38.500751, 29.851719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837238, 38.627781, 29.799448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209479, -0.228268, 0.950795,
		0.272118, 0.920348, 0.280911,
		-0.939186, 0.317573, -0.130678,
		35.555481, 38.723053, 29.760244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086468, 38.812828, 30.505230>,  <36.212914, 38.500751, 29.851719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086468, 38.812828, 30.505230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718773, 38.788101, 30.349699>,  <35.498158, 38.773266, 30.256380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718773, 38.788101, 30.349699>,  <36.086468, 38.812828, 30.505230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718773, 38.788101, 30.349699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384576, -0.070540, 0.920394,
		-0.084322, 0.995592, 0.041071,
		-0.919234, -0.061815, -0.388829,
		35.443005, 38.769558, 30.233049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662987, 39.254028, 30.922501>,  <36.086468, 38.812828, 30.505230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662987, 39.254028, 30.922501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418049, 38.997662, 30.737345>,  <35.271088, 38.843842, 30.626251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418049, 38.997662, 30.737345>,  <35.662987, 39.254028, 30.922501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418049, 38.997662, 30.737345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448335, -0.200741, 0.871033,
		-0.651179, 0.740899, -0.164422,
		-0.612342, -0.640914, -0.462889,
		35.234344, 38.805386, 30.598478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983879, 39.407154, 31.150858>,  <35.662987, 39.254028, 30.922501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983879, 39.407154, 31.150858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953106, 39.039013, 30.997480>,  <34.934643, 38.818127, 30.905453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953106, 39.039013, 30.997480>,  <34.983879, 39.407154, 31.150858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953106, 39.039013, 30.997480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444925, -0.312479, 0.839284,
		-0.892257, 0.235172, -0.385449,
		-0.076932, -0.920354, -0.383446,
		34.930027, 38.762905, 30.882446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383640, 39.260067, 31.304070>,  <34.983879, 39.407154, 31.150858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383640, 39.260067, 31.304070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556526, 38.903301, 31.250883>,  <34.660259, 38.689243, 31.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556526, 38.903301, 31.250883>,  <34.383640, 39.260067, 31.304070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556526, 38.903301, 31.250883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428492, -0.332873, 0.839994,
		-0.793462, -0.306085, -0.526051,
		0.432218, -0.891912, -0.132966,
		34.686192, 38.635727, 31.210993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799648, 38.869816, 31.338884>,  <34.383640, 39.260067, 31.304070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799648, 38.869816, 31.338884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140099, 38.673523, 31.413471>,  <34.344368, 38.555748, 31.458223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140099, 38.673523, 31.413471>,  <33.799648, 38.869816, 31.338884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140099, 38.673523, 31.413471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392017, -0.357874, 0.847496,
		-0.349146, -0.794432, -0.496966,
		0.851128, -0.490719, 0.186480,
		34.395435, 38.526302, 31.469412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586845, 38.280186, 31.656750>,  <33.799648, 38.869816, 31.338884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586845, 38.280186, 31.656750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976177, 38.238327, 31.738407>,  <34.209778, 38.213211, 31.787401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976177, 38.238327, 31.738407>,  <33.586845, 38.280186, 31.656750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976177, 38.238327, 31.738407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229137, -0.486421, 0.843143,
		0.011070, -0.867435, -0.497427,
		0.973331, -0.104645, 0.204146,
		34.268177, 38.206932, 31.799650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695164, 37.523182, 31.834742>,  <33.586845, 38.280186, 31.656750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695164, 37.523182, 31.834742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994198, 37.733643, 31.996862>,  <34.173618, 37.859921, 32.094135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994198, 37.733643, 31.996862>,  <33.695164, 37.523182, 31.834742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994198, 37.733643, 31.996862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258950, -0.331041, 0.907390,
		0.611601, -0.783308, -0.111235,
		0.747589, 0.526156, 0.405303,
		34.218475, 37.891491, 32.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936100, 37.085262, 32.311245>,  <33.695164, 37.523182, 31.834742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936100, 37.085262, 32.311245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092922, 37.432404, 32.433308>,  <34.187016, 37.640690, 32.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092922, 37.432404, 32.433308>,  <33.936100, 37.085262, 32.311245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092922, 37.432404, 32.433308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164237, -0.260354, 0.951442,
		0.905163, -0.423135, 0.040461,
		0.392054, 0.867855, 0.305157,
		34.210537, 37.692760, 32.524857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469498, 36.955158, 32.730103>,  <33.936100, 37.085262, 32.311245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469498, 36.955158, 32.730103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341541, 37.314945, 32.849190>,  <34.264767, 37.530815, 32.920643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341541, 37.314945, 32.849190>,  <34.469498, 36.955158, 32.730103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341541, 37.314945, 32.849190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090194, -0.341711, 0.935467,
		0.943153, 0.272391, 0.190435,
		-0.319887, 0.899464, 0.297718,
		34.245575, 37.584785, 32.938507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929058, 37.127529, 33.370113>,  <34.469498, 36.955158, 32.730103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929058, 37.127529, 33.370113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614624, 37.374752, 33.366493>,  <34.425964, 37.523087, 33.364323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614624, 37.374752, 33.366493>,  <34.929058, 37.127529, 33.370113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614624, 37.374752, 33.366493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168063, -0.199617, 0.965354,
		0.594837, 0.760368, 0.260788,
		-0.786081, 0.618057, -0.009050,
		34.378799, 37.560169, 33.363777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088089, 37.479874, 33.982262>,  <34.929058, 37.127529, 33.370113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088089, 37.479874, 33.982262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702522, 37.514500, 33.881573>,  <34.471180, 37.535275, 33.821159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702522, 37.514500, 33.881573>,  <35.088089, 37.479874, 33.982262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702522, 37.514500, 33.881573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255357, -0.567708, 0.782624,
		-0.075158, 0.818666, 0.569330,
		-0.963921, 0.086562, -0.251720,
		34.413345, 37.540466, 33.806057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607235, 38.092300, 34.124477>,  <35.088089, 37.479874, 33.982262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607235, 38.092300, 34.124477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950287, 38.183765, 34.308735>,  <36.156116, 38.238644, 34.419289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950287, 38.183765, 34.308735>,  <35.607235, 38.092300, 34.124477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950287, 38.183765, 34.308735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285348, 0.533596, -0.796148,
		-0.427849, 0.814240, 0.392376,
		0.857626, 0.228667, 0.460640,
		36.207573, 38.252365, 34.446926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785500, 38.868324, 34.071537>,  <35.607235, 38.092300, 34.124477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785500, 38.868324, 34.071537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137543, 38.706284, 34.170578>,  <36.348766, 38.609058, 34.230003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137543, 38.706284, 34.170578>,  <35.785500, 38.868324, 34.071537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137543, 38.706284, 34.170578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451270, 0.551687, -0.701425,
		0.147547, 0.729064, 0.668353,
		0.880105, -0.405101, 0.247605,
		36.401573, 38.584755, 34.244858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269985, 39.365128, 34.231400>,  <35.785500, 38.868324, 34.071537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269985, 39.365128, 34.231400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489365, 39.060017, 34.094357>,  <36.620991, 38.876949, 34.012131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489365, 39.060017, 34.094357>,  <36.269985, 39.365128, 34.231400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489365, 39.060017, 34.094357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351229, 0.581977, -0.733445,
		0.758842, 0.281923, 0.587093,
		0.548449, -0.762773, -0.342609,
		36.653900, 38.831184, 33.991573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792542, 39.700005, 33.966946>,  <36.269985, 39.365128, 34.231400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792542, 39.700005, 33.966946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826984, 39.327709, 33.824783>,  <36.847649, 39.104332, 33.739487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826984, 39.327709, 33.824783>,  <36.792542, 39.700005, 33.966946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826984, 39.327709, 33.824783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572556, 0.338168, -0.746875,
		0.815332, -0.139182, 0.562016,
		0.086104, -0.930737, -0.355408,
		36.852818, 39.048489, 33.718163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514862, 39.665154, 33.768600>,  <36.792542, 39.700005, 33.966946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514862, 39.665154, 33.768600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326805, 39.374271, 33.568546>,  <37.213970, 39.199741, 33.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326805, 39.374271, 33.568546>,  <37.514862, 39.665154, 33.768600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326805, 39.374271, 33.568546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527641, 0.222674, -0.819763,
		0.707503, -0.649301, 0.279013,
		-0.470143, -0.727203, -0.500140,
		37.185760, 39.156109, 33.418503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103268, 39.402245, 33.373821>,  <37.514862, 39.665154, 33.768600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103268, 39.402245, 33.373821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759071, 39.280102, 33.210693>,  <37.552555, 39.206814, 33.112816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759071, 39.280102, 33.210693>,  <38.103268, 39.402245, 33.373821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759071, 39.280102, 33.210693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453437, -0.094060, -0.886311,
		0.232284, -0.947580, 0.219399,
		-0.860487, -0.305359, -0.407820,
		37.500927, 39.188496, 33.088348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257183, 39.011959, 32.833496>,  <38.103268, 39.402245, 33.373821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257183, 39.011959, 32.833496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882751, 39.122902, 32.746937>,  <37.658092, 39.189468, 32.695000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882751, 39.122902, 32.746937>,  <38.257183, 39.011959, 32.833496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882751, 39.122902, 32.746937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263362, 0.144693, -0.953784,
		-0.233229, -0.949809, -0.208490,
		-0.936079, 0.277358, -0.216397,
		37.601929, 39.206108, 32.682018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134388, 38.611343, 32.294212>,  <38.257183, 39.011959, 32.833496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134388, 38.611343, 32.294212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897213, 38.933231, 32.282589>,  <37.754906, 39.126366, 32.275616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897213, 38.933231, 32.282589>,  <38.134388, 38.611343, 32.294212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897213, 38.933231, 32.282589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251636, 0.150891, -0.955987,
		-0.764920, -0.574154, -0.291966,
		-0.592939, 0.804723, -0.029058,
		37.719330, 39.174648, 32.273872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644688, 38.584469, 31.640650>,  <38.134388, 38.611343, 32.294212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644688, 38.584469, 31.640650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744869, 38.952007, 31.762627>,  <37.804977, 39.172531, 31.835812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744869, 38.952007, 31.762627>,  <37.644688, 38.584469, 31.640650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744869, 38.952007, 31.762627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452370, 0.167406, -0.875977,
		-0.855940, 0.357341, -0.373732,
		0.250457, 0.918849, 0.304940,
		37.820007, 39.227661, 31.854109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428307, 38.917660, 30.976847>,  <37.644688, 38.584469, 31.640650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428307, 38.917660, 30.976847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606319, 39.196186, 31.202087>,  <37.713127, 39.363304, 31.337233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606319, 39.196186, 31.202087>,  <37.428307, 38.917660, 30.976847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606319, 39.196186, 31.202087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442535, 0.375659, -0.814274,
		-0.778530, 0.611572, -0.140964,
		0.445033, 0.696319, 0.563104,
		37.739830, 39.405083, 31.371019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306747, 39.443287, 30.582706>,  <37.428307, 38.917660, 30.976847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306747, 39.443287, 30.582706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618073, 39.518597, 30.822298>,  <37.804867, 39.563782, 30.966053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618073, 39.518597, 30.822298>,  <37.306747, 39.443287, 30.582706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618073, 39.518597, 30.822298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505933, 0.376890, -0.775877,
		-0.371827, 0.906922, 0.198085,
		0.778316, 0.188275, 0.598980,
		37.851566, 39.575081, 31.001991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511654, 40.210342, 30.465340>,  <37.306747, 39.443287, 30.582706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511654, 40.210342, 30.465340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840939, 40.072563, 30.645864>,  <38.038509, 39.989895, 30.754179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840939, 40.072563, 30.645864>,  <37.511654, 40.210342, 30.465340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840939, 40.072563, 30.645864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564964, 0.575493, -0.591289,
		-0.056058, 0.741730, 0.668352,
		0.823209, -0.344448, 0.451312,
		38.087902, 39.969227, 30.781258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962677, 40.780006, 30.796679>,  <37.511654, 40.210342, 30.465340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962677, 40.780006, 30.796679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217190, 40.478241, 30.732170>,  <38.369900, 40.297184, 30.693464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217190, 40.478241, 30.732170>,  <37.962677, 40.780006, 30.796679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217190, 40.478241, 30.732170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544218, 0.587112, -0.599272,
		0.546781, 0.293541, 0.784133,
		0.636285, -0.754409, -0.161271,
		38.408073, 40.251919, 30.683788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691093, 40.975018, 30.869152>,  <37.962677, 40.780006, 30.796679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691093, 40.975018, 30.869152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707451, 40.649204, 30.637682>,  <38.717266, 40.453716, 30.498800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707451, 40.649204, 30.637682>,  <38.691093, 40.975018, 30.869152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707451, 40.649204, 30.637682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616166, 0.476476, -0.627144,
		0.786554, -0.330915, 0.521371,
		0.040889, -0.814534, -0.578673,
		38.719719, 40.404842, 30.464081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396324, 40.876648, 30.634895>,  <38.691093, 40.975018, 30.869152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396324, 40.876648, 30.634895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181812, 40.654202, 30.380920>,  <39.053104, 40.520733, 30.228535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181812, 40.654202, 30.380920>,  <39.396324, 40.876648, 30.634895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181812, 40.654202, 30.380920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642799, 0.218432, -0.734232,
		0.547007, -0.801888, 0.240330,
		-0.536276, -0.556114, -0.634937,
		39.020927, 40.487366, 30.190439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853157, 40.652283, 30.032751>,  <39.396324, 40.876648, 30.634895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853157, 40.652283, 30.032751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504528, 40.518501, 29.889360>,  <39.295349, 40.438232, 29.803326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504528, 40.518501, 29.889360>,  <39.853157, 40.652283, 30.032751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504528, 40.518501, 29.889360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415146, -0.114505, -0.902520,
		0.260802, -0.935431, 0.238645,
		-0.871571, -0.334451, -0.358477,
		39.243057, 40.418167, 29.781816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933189, 40.106857, 29.595079>,  <39.853157, 40.652283, 30.032751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933189, 40.106857, 29.595079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571510, 40.233311, 29.480202>,  <39.354504, 40.309181, 29.411274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571510, 40.233311, 29.480202>,  <39.933189, 40.106857, 29.595079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571510, 40.233311, 29.480202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283453, -0.058833, -0.957180,
		-0.319493, -0.946889, -0.036412,
		-0.904200, 0.316133, -0.287195,
		39.300251, 40.328152, 29.394043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695232, 39.594833, 28.996201>,  <39.933189, 40.106857, 29.595079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695232, 39.594833, 28.996201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488308, 39.936405, 28.973562>,  <39.364155, 40.141346, 28.959980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488308, 39.936405, 28.973562>,  <39.695232, 39.594833, 28.996201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488308, 39.936405, 28.973562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165050, 0.034659, -0.985676,
		-0.839733, -0.519238, -0.158870,
		-0.517307, 0.853927, -0.056596,
		39.333115, 40.192585, 28.956583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234612, 39.476501, 28.452749>,  <39.695232, 39.594833, 28.996201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234612, 39.476501, 28.452749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292072, 39.870747, 28.488382>,  <39.326550, 40.107292, 28.509762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292072, 39.870747, 28.488382>,  <39.234612, 39.476501, 28.452749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292072, 39.870747, 28.488382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202521, 0.058834, -0.977509,
		-0.968684, 0.158462, -0.191155,
		0.143652, 0.985611, 0.089083,
		39.335167, 40.166431, 28.515108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696819, 39.811062, 28.022635>,  <39.234612, 39.476501, 28.452749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696819, 39.811062, 28.022635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016796, 40.047974, 28.061214>,  <39.208782, 40.190121, 28.084362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016796, 40.047974, 28.061214>,  <38.696819, 39.811062, 28.022635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016796, 40.047974, 28.061214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104427, 0.020880, -0.994313,
		-0.590927, 0.805461, -0.045148,
		0.799938, 0.592281, 0.096451,
		39.256779, 40.225658, 28.090149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658184, 40.145317, 27.369322>,  <38.696819, 39.811062, 28.022635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658184, 40.145317, 27.369322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011948, 40.251633, 27.522776>,  <39.224205, 40.315422, 27.614849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011948, 40.251633, 27.522776>,  <38.658184, 40.145317, 27.369322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011948, 40.251633, 27.522776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357800, 0.141658, -0.922991,
		-0.299669, 0.953566, 0.030182,
		0.884408, 0.265793, 0.383636,
		39.277271, 40.331371, 27.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834984, 40.762310, 26.980721>,  <38.658184, 40.145317, 27.369322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834984, 40.762310, 26.980721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153244, 40.578945, 27.139112>,  <39.344200, 40.468925, 27.234148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153244, 40.578945, 27.139112>,  <38.834984, 40.762310, 26.980721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153244, 40.578945, 27.139112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408738, -0.076169, -0.909468,
		0.447070, 0.885471, 0.126765,
		0.795652, -0.458410, 0.395978,
		39.391941, 40.441422, 27.257906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433426, 41.092152, 26.638641>,  <38.834984, 40.762310, 26.980721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433426, 41.092152, 26.638641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549995, 40.737671, 26.782705>,  <39.619938, 40.524982, 26.869144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549995, 40.737671, 26.782705>,  <39.433426, 41.092152, 26.638641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549995, 40.737671, 26.782705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474926, -0.192785, -0.858650,
		0.830371, 0.421284, 0.364698,
		0.291427, -0.886202, 0.360162,
		39.637424, 40.471809, 26.890755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025188, 41.080215, 26.204752>,  <39.433426, 41.092152, 26.638641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025188, 41.080215, 26.204752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941601, 40.717613, 26.351490>,  <39.891449, 40.500050, 26.439533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941601, 40.717613, 26.351490>,  <40.025188, 41.080215, 26.204752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941601, 40.717613, 26.351490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574151, -0.417397, -0.704365,
		0.791632, 0.063430, 0.607697,
		-0.208973, -0.906508, 0.366843,
		39.878910, 40.445660, 26.461542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648869, 40.691875, 26.152483>,  <40.025188, 41.080215, 26.204752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648869, 40.691875, 26.152483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338898, 40.439457, 26.166721>,  <40.152916, 40.288006, 26.175264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338898, 40.439457, 26.166721>,  <40.648869, 40.691875, 26.152483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338898, 40.439457, 26.166721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398620, -0.531665, -0.747285,
		0.490494, -0.564904, 0.663550,
		-0.774931, -0.631043, 0.035597,
		40.106419, 40.250145, 26.177401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938179, 39.996792, 25.933678>,  <40.648869, 40.691875, 26.152483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938179, 39.996792, 25.933678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549046, 39.933804, 25.865799>,  <40.315567, 39.896011, 25.825071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549046, 39.933804, 25.865799>,  <40.938179, 39.996792, 25.933678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549046, 39.933804, 25.865799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215101, -0.343844, -0.914058,
		0.085592, -0.925728, 0.368376,
		-0.972834, -0.157474, -0.169695,
		40.257195, 39.886562, 25.814890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829861, 39.286465, 25.749264>,  <40.938179, 39.996792, 25.933678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829861, 39.286465, 25.749264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529449, 39.496906, 25.589680>,  <40.349201, 39.623173, 25.493929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529449, 39.496906, 25.589680>,  <40.829861, 39.286465, 25.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529449, 39.496906, 25.589680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056025, -0.551283, -0.832435,
		-0.657888, -0.647534, 0.384554,
		-0.751028, 0.526105, -0.398961,
		40.304142, 39.654739, 25.469992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463696, 38.808872, 25.345722>,  <40.829861, 39.286465, 25.749264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463696, 38.808872, 25.345722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327995, 39.157421, 25.203955>,  <40.246574, 39.366550, 25.118895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327995, 39.157421, 25.203955>,  <40.463696, 38.808872, 25.345722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327995, 39.157421, 25.203955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029599, -0.366690, -0.929872,
		-0.940230, -0.325950, 0.098608,
		-0.339251, 0.871375, -0.354421,
		40.226219, 39.418835, 25.097628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926254, 38.627140, 24.834373>,  <40.463696, 38.808872, 25.345722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926254, 38.627140, 24.834373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038471, 39.004276, 24.762438>,  <40.105801, 39.230560, 24.719276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038471, 39.004276, 24.762438>,  <39.926254, 38.627140, 24.834373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038471, 39.004276, 24.762438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076859, -0.208827, -0.974928,
		-0.956759, 0.259687, -0.131051,
		0.280543, 0.942843, -0.179838,
		40.122635, 39.287128, 24.708487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598545, 38.703545, 24.210083>,  <39.926254, 38.627140, 24.834373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598545, 38.703545, 24.210083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914291, 38.944149, 24.259212>,  <40.103741, 39.088512, 24.288691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914291, 38.944149, 24.259212>,  <39.598545, 38.703545, 24.210083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914291, 38.944149, 24.259212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239305, -0.117235, -0.963841,
		-0.565359, 0.790218, -0.236486,
		0.789368, 0.601508, 0.122823,
		40.151100, 39.124603, 24.296059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644196, 39.036037, 23.612122>,  <39.598545, 38.703545, 24.210083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644196, 39.036037, 23.612122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005795, 39.097034, 23.771887>,  <40.222755, 39.133633, 23.867746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005795, 39.097034, 23.771887>,  <39.644196, 39.036037, 23.612122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005795, 39.097034, 23.771887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412693, -0.067235, -0.908385,
		-0.111668, 0.986015, -0.123714,
		0.903999, 0.152494, 0.399413,
		40.276993, 39.142784, 23.891710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880714, 39.487534, 23.211620>,  <39.644196, 39.036037, 23.612122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880714, 39.487534, 23.211620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227581, 39.366219, 23.369623>,  <40.435703, 39.293430, 23.464426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227581, 39.366219, 23.369623>,  <39.880714, 39.487534, 23.211620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227581, 39.366219, 23.369623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432235, 0.064383, -0.899460,
		0.247366, 0.950721, 0.186924,
		0.867170, -0.303291, 0.395008,
		40.487732, 39.275230, 23.488125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321472, 39.892887, 22.942511>,  <39.880714, 39.487534, 23.211620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321472, 39.892887, 22.942511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529251, 39.566113, 23.042742>,  <40.653919, 39.370049, 23.102880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529251, 39.566113, 23.042742>,  <40.321472, 39.892887, 22.942511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529251, 39.566113, 23.042742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323033, -0.083747, -0.942675,
		0.791091, 0.570615, 0.220395,
		0.519447, -0.816936, 0.250579,
		40.685085, 39.321033, 23.117916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084972, 40.047623, 22.807083>,  <40.321472, 39.892887, 22.942511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084972, 40.047623, 22.807083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064453, 39.648205, 22.813803>,  <41.052143, 39.408554, 22.817835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064453, 39.648205, 22.813803>,  <41.084972, 40.047623, 22.807083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064453, 39.648205, 22.813803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308303, -0.031833, -0.950755,
		0.949904, -0.043589, 0.309487,
		-0.051295, -0.998542, 0.016799,
		41.049065, 39.348640, 22.818842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681072, 39.714485, 22.424585>,  <41.084972, 40.047623, 22.807083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681072, 39.714485, 22.424585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436691, 39.397896, 22.431696>,  <41.290062, 39.207943, 22.435963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436691, 39.397896, 22.431696>,  <41.681072, 39.714485, 22.424585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436691, 39.397896, 22.431696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228284, -0.197627, -0.953326,
		0.758043, -0.578374, 0.301420,
		-0.610948, -0.791471, 0.017777,
		41.253407, 39.160454, 22.437029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101303, 39.140781, 22.267317>,  <41.681072, 39.714485, 22.424585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101303, 39.140781, 22.267317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721214, 39.054848, 22.177050>,  <41.493160, 39.003288, 22.122889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721214, 39.054848, 22.177050>,  <42.101303, 39.140781, 22.267317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721214, 39.054848, 22.177050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295138, -0.388482, -0.872912,
		0.099860, -0.896064, 0.432549,
		-0.950222, -0.214830, -0.225668,
		41.436150, 38.990398, 22.109348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168152, 38.474445, 21.933218>,  <42.101303, 39.140781, 22.267317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168152, 38.474445, 21.933218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827614, 38.663334, 21.841806>,  <41.623291, 38.776665, 21.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827614, 38.663334, 21.841806>,  <42.168152, 38.474445, 21.933218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827614, 38.663334, 21.841806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152388, -0.194231, -0.969047,
		-0.501989, -0.859817, 0.093396,
		-0.851343, 0.472218, -0.228528,
		41.572212, 38.805000, 21.773249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667786, 37.935253, 21.604040>,  <42.168152, 38.474445, 21.933218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667786, 37.935253, 21.604040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637032, 38.317215, 21.489321>,  <41.618580, 38.546391, 21.420488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637032, 38.317215, 21.489321>,  <41.667786, 37.935253, 21.604040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637032, 38.317215, 21.489321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141929, -0.274238, -0.951131,
		-0.986886, -0.113836, -0.114442,
		-0.076888, 0.954901, -0.286799,
		41.613964, 38.603683, 21.403280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291645, 37.888401, 21.253847>,  <41.667786, 37.935253, 21.604040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291645, 37.888401, 21.253847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673088, 37.788486, 21.321064>,  <42.901955, 37.728539, 21.361395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673088, 37.788486, 21.321064>,  <42.291645, 37.888401, 21.253847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673088, 37.788486, 21.321064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164776, 0.034095, 0.985741,
		-0.251957, -0.967700, -0.008646,
		0.953607, -0.249789, 0.168044,
		42.959171, 37.713551, 21.371477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297966, 37.245274, 21.765865>,  <42.291645, 37.888401, 21.253847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297966, 37.245274, 21.765865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634861, 37.460766, 21.757843>,  <42.836998, 37.590061, 21.753029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634861, 37.460766, 21.757843>,  <42.297966, 37.245274, 21.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634861, 37.460766, 21.757843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009759, 0.021959, 0.999711,
		0.539013, -0.842194, 0.013238,
		0.842241, 0.538728, -0.020055,
		42.887535, 37.622383, 21.751827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434776, 37.276016, 22.468475>,  <42.297966, 37.245274, 21.765865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434776, 37.276016, 22.468475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739506, 37.493488, 22.327599>,  <42.922344, 37.623970, 22.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739506, 37.493488, 22.327599>,  <42.434776, 37.276016, 22.468475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739506, 37.493488, 22.327599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277290, 0.217658, 0.935807,
		0.585438, -0.810578, 0.015060,
		0.761822, 0.543681, -0.352190,
		42.968052, 37.656593, 22.221941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068214, 37.014702, 22.777124>,  <42.434776, 37.276016, 22.468475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068214, 37.014702, 22.777124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095909, 37.403469, 22.687159>,  <43.112526, 37.636730, 22.633179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095909, 37.403469, 22.687159>,  <43.068214, 37.014702, 22.777124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095909, 37.403469, 22.687159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062878, 0.220755, 0.973300,
		0.995617, -0.081528, -0.045828,
		0.069235, 0.971916, -0.224914,
		43.116680, 37.695045, 22.619684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651493, 37.250336, 23.197798>,  <43.068214, 37.014702, 22.777124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651493, 37.250336, 23.197798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433044, 37.576057, 23.119154>,  <43.301975, 37.771492, 23.071968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433044, 37.576057, 23.119154>,  <43.651493, 37.250336, 23.197798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433044, 37.576057, 23.119154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, 0.397439, 0.874584,
		0.790318, 0.423025, -0.443224,
		-0.546126, 0.814304, -0.196608,
		43.269207, 37.820351, 23.060171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064842, 37.948017, 23.315460>,  <43.651493, 37.250336, 23.197798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064842, 37.948017, 23.315460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672970, 38.017063, 23.356298>,  <43.437847, 38.058491, 23.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672970, 38.017063, 23.356298>,  <44.064842, 37.948017, 23.315460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672970, 38.017063, 23.356298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163740, 0.394530, 0.904177,
		0.115792, 0.902525, -0.414779,
		-0.979684, 0.172613, 0.102096,
		43.379063, 38.068848, 23.386927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058990, 38.405811, 23.919102>,  <44.064842, 37.948017, 23.315460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058990, 38.405811, 23.919102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664223, 38.349411, 23.887836>,  <43.427361, 38.315571, 23.869078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664223, 38.349411, 23.887836>,  <44.058990, 38.405811, 23.919102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664223, 38.349411, 23.887836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121182, 0.329053, 0.936503,
		-0.106328, 0.933725, -0.341836,
		-0.986919, -0.141001, -0.078164,
		43.368149, 38.307110, 23.864388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698330, 38.954491, 24.374413>,  <44.058990, 38.405811, 23.919102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698330, 38.954491, 24.374413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396904, 38.698036, 24.316338>,  <43.216049, 38.544163, 24.281492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396904, 38.698036, 24.316338>,  <43.698330, 38.954491, 24.374413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396904, 38.698036, 24.316338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390293, 0.258632, 0.883618,
		-0.528972, 0.722530, -0.445128,
		-0.753565, -0.641140, -0.145189,
		43.170834, 38.505695, 24.272781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130798, 39.325207, 24.590725>,  <43.698330, 38.954491, 24.374413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130798, 39.325207, 24.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052956, 38.933296, 24.609350>,  <43.006248, 38.698151, 24.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052956, 38.933296, 24.609350>,  <43.130798, 39.325207, 24.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052956, 38.933296, 24.609350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528202, 0.144678, 0.836702,
		-0.826517, 0.138235, -0.545675,
		-0.194609, -0.979775, 0.046563,
		42.994572, 38.639362, 24.623320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396412, 39.291317, 24.705698>,  <43.130798, 39.325207, 24.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396412, 39.291317, 24.705698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548008, 38.942734, 24.830225>,  <42.638966, 38.733582, 24.904942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548008, 38.942734, 24.830225>,  <42.396412, 39.291317, 24.705698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548008, 38.942734, 24.830225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617419, 0.012469, 0.786536,
		-0.689318, -0.490304, -0.533332,
		0.378992, -0.871462, 0.311318,
		42.661705, 38.681293, 24.923620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839333, 38.972698, 25.092680>,  <42.396412, 39.291317, 24.705698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839333, 38.972698, 25.092680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161808, 38.759449, 25.195316>,  <42.355293, 38.631500, 25.256897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161808, 38.759449, 25.195316>,  <41.839333, 38.972698, 25.092680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161808, 38.759449, 25.195316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399125, -0.169903, 0.901017,
		-0.436758, -0.828802, -0.349757,
		0.806190, -0.533123, 0.256589,
		42.403664, 38.599514, 25.272293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552433, 38.468948, 25.490944>,  <41.839333, 38.972698, 25.092680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552433, 38.468948, 25.490944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934696, 38.480160, 25.608204>,  <42.164055, 38.486889, 25.678560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934696, 38.480160, 25.608204>,  <41.552433, 38.468948, 25.490944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934696, 38.480160, 25.608204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290498, -0.073509, 0.954048,
		0.048295, -0.996900, -0.062105,
		0.955656, 0.028034, 0.293148,
		42.221394, 38.488567, 25.696148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525166, 38.034271, 25.956463>,  <41.552433, 38.468948, 25.490944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525166, 38.034271, 25.956463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833900, 38.281113, 26.017725>,  <42.019142, 38.429218, 26.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833900, 38.281113, 26.017725>,  <41.525166, 38.034271, 25.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833900, 38.281113, 26.017725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219697, 0.032803, 0.975016,
		0.596663, -0.786197, 0.160895,
		0.771833, 0.617104, 0.153153,
		42.065449, 38.466244, 26.063671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788052, 37.769691, 26.504255>,  <41.525166, 38.034271, 25.956463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788052, 37.769691, 26.504255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986626, 38.116913, 26.506643>,  <42.105770, 38.325245, 26.508076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986626, 38.116913, 26.506643>,  <41.788052, 37.769691, 26.504255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986626, 38.116913, 26.506643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111262, 0.056804, 0.992167,
		0.860914, -0.493211, 0.124780,
		0.496435, 0.868053, 0.005972,
		42.135555, 38.377327, 26.508434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288879, 37.773117, 27.150541>,  <41.788052, 37.769691, 26.504255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288879, 37.773117, 27.150541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237263, 38.151115, 27.030323>,  <42.206291, 38.377914, 26.958191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237263, 38.151115, 27.030323>,  <42.288879, 37.773117, 27.150541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237263, 38.151115, 27.030323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091970, 0.313180, 0.945230,
		0.987365, 0.094332, -0.127325,
		-0.129041, 0.944997, -0.300547,
		42.198551, 38.434616, 26.940159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685612, 38.165318, 27.611137>,  <42.288879, 37.773117, 27.150541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685612, 38.165318, 27.611137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450806, 38.449413, 27.455719>,  <42.309921, 38.619869, 27.362467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450806, 38.449413, 27.455719>,  <42.685612, 38.165318, 27.611137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450806, 38.449413, 27.455719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127559, 0.392803, 0.910733,
		0.799460, 0.584181, -0.139985,
		-0.587020, 0.710239, -0.388547,
		42.274700, 38.662483, 27.339155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975311, 38.877075, 27.824007>,  <42.685612, 38.165318, 27.611137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975311, 38.877075, 27.824007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590202, 38.910130, 27.721054>,  <42.359138, 38.929962, 27.659283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590202, 38.910130, 27.721054>,  <42.975311, 38.877075, 27.824007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590202, 38.910130, 27.721054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192271, 0.459934, 0.866887,
		0.190017, 0.884099, -0.426922,
		-0.962770, 0.082639, -0.257382,
		42.301373, 38.934921, 27.643839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731602, 39.330997, 28.399368>,  <42.975311, 38.877075, 27.824007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731602, 39.330997, 28.399368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397972, 39.201077, 28.221010>,  <42.197796, 39.123123, 28.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397972, 39.201077, 28.221010>,  <42.731602, 39.330997, 28.399368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397972, 39.201077, 28.221010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506316, 0.129828, 0.852519,
		-0.219013, 0.936828, -0.272740,
		-0.834073, -0.324805, -0.445897,
		42.147751, 39.103634, 28.087240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189453, 39.871986, 28.596903>,  <42.731602, 39.330997, 28.399368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189453, 39.871986, 28.596903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003460, 39.540009, 28.473625>,  <41.891865, 39.340824, 28.399658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003460, 39.540009, 28.473625>,  <42.189453, 39.871986, 28.596903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003460, 39.540009, 28.473625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492828, -0.046539, 0.868881,
		-0.735464, 0.555905, -0.387379,
		-0.464987, -0.829942, -0.308193,
		41.863964, 39.291027, 28.381166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391209, 39.952267, 28.664885>,  <42.189453, 39.871986, 28.596903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391209, 39.952267, 28.664885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490738, 39.564949, 28.656042>,  <41.550453, 39.332558, 28.650738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490738, 39.564949, 28.656042>,  <41.391209, 39.952267, 28.664885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490738, 39.564949, 28.656042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558274, -0.162034, 0.813680,
		-0.791466, -0.190120, -0.580893,
		0.248821, -0.968297, -0.022105,
		41.565384, 39.274460, 28.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829281, 39.643684, 28.581654>,  <41.391209, 39.952267, 28.664885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829281, 39.643684, 28.581654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073334, 39.381920, 28.760313>,  <41.219765, 39.224861, 28.867508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073334, 39.381920, 28.760313>,  <40.829281, 39.643684, 28.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073334, 39.381920, 28.760313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595839, -0.007411, 0.803070,
		-0.522225, -0.756106, -0.394443,
		0.610129, -0.654407, 0.446647,
		41.256374, 39.185596, 28.894308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304718, 39.124474, 28.919827>,  <40.829281, 39.643684, 28.581654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304718, 39.124474, 28.919827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654686, 39.089535, 29.110355>,  <40.864666, 39.068569, 29.224672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654686, 39.089535, 29.110355>,  <40.304718, 39.124474, 28.919827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654686, 39.089535, 29.110355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483935, -0.121408, 0.866641,
		-0.017874, -0.988752, -0.148495,
		0.874921, -0.087352, 0.476321,
		40.917164, 39.063328, 29.253252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097130, 38.763836, 29.414253>,  <40.304718, 39.124474, 28.919827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097130, 38.763836, 29.414253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462658, 38.852818, 29.550161>,  <40.681976, 38.906208, 29.631706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462658, 38.852818, 29.550161>,  <40.097130, 38.763836, 29.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462658, 38.852818, 29.550161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291110, -0.224545, 0.929965,
		0.283171, -0.948732, -0.140435,
		0.913822, 0.222457, 0.339770,
		40.736805, 38.919556, 29.652092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333660, 38.210693, 29.919174>,  <40.097130, 38.763836, 29.414253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333660, 38.210693, 29.919174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561588, 38.529003, 30.001200>,  <40.698345, 38.719990, 30.050415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561588, 38.529003, 30.001200>,  <40.333660, 38.210693, 29.919174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561588, 38.529003, 30.001200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152474, -0.142824, 0.977933,
		0.807497, -0.588517, 0.039950,
		0.569824, 0.795770, 0.205063,
		40.732536, 38.767735, 30.062719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928368, 37.955189, 30.172235>,  <40.333660, 38.210693, 29.919174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928368, 37.955189, 30.172235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871906, 38.332314, 30.293020>,  <40.838032, 38.558590, 30.365490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871906, 38.332314, 30.293020>,  <40.928368, 37.955189, 30.172235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871906, 38.332314, 30.293020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048540, -0.298055, 0.953313,
		0.988798, 0.149217, -0.003694,
		-0.141149, 0.942813, 0.301960,
		40.829563, 38.615158, 30.383608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419376, 38.068687, 30.673048>,  <40.928368, 37.955189, 30.172235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419376, 38.068687, 30.673048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121696, 38.332298, 30.716591>,  <40.943089, 38.490463, 30.742716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121696, 38.332298, 30.716591>,  <41.419376, 38.068687, 30.673048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121696, 38.332298, 30.716591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136255, -0.309319, 0.941146,
		0.653911, 0.685570, 0.319991,
		-0.744201, 0.659027, 0.108855,
		40.898438, 38.530006, 30.749247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495377, 38.538010, 31.362230>,  <41.419376, 38.068687, 30.673048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495377, 38.538010, 31.362230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106335, 38.578014, 31.278292>,  <40.872910, 38.602016, 31.227928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106335, 38.578014, 31.278292>,  <41.495377, 38.538010, 31.362230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106335, 38.578014, 31.278292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229143, -0.260515, 0.937883,
		0.039133, 0.960276, 0.276295,
		-0.972606, 0.100013, -0.209846,
		40.814552, 38.608017, 31.215338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285496, 38.898701, 31.947189>,  <41.495377, 38.538010, 31.362230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285496, 38.898701, 31.947189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948910, 38.755058, 31.785707>,  <40.746960, 38.668873, 31.688818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948910, 38.755058, 31.785707>,  <41.285496, 38.898701, 31.947189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948910, 38.755058, 31.785707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393272, -0.105286, 0.913374,
		-0.370507, 0.927337, -0.052634,
		-0.841464, -0.359111, -0.403705,
		40.696472, 38.647324, 31.664597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822453, 39.090912, 32.425373>,  <41.285496, 38.898701, 31.947189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822453, 39.090912, 32.425373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631031, 38.786877, 32.249535>,  <40.516178, 38.604454, 32.144032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631031, 38.786877, 32.249535>,  <40.822453, 39.090912, 32.425373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631031, 38.786877, 32.249535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355445, -0.290100, 0.888539,
		-0.802899, 0.581466, -0.131343,
		-0.478552, -0.760092, -0.439600,
		40.487465, 38.558849, 32.117653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223309, 39.050610, 32.800838>,  <40.822453, 39.090912, 32.425373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223309, 39.050610, 32.800838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266121, 38.691647, 32.629627>,  <40.291809, 38.476269, 32.526901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266121, 38.691647, 32.629627>,  <40.223309, 39.050610, 32.800838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266121, 38.691647, 32.629627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378850, -0.434833, 0.816941,
		-0.919248, 0.074721, -0.386522,
		0.107030, -0.897406, -0.428027,
		40.298229, 38.422424, 32.501221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503696, 38.785812, 32.940968>,  <40.223309, 39.050610, 32.800838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503696, 38.785812, 32.940968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767109, 38.490936, 32.880451>,  <39.925156, 38.314011, 32.844143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767109, 38.490936, 32.880451>,  <39.503696, 38.785812, 32.940968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767109, 38.490936, 32.880451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260608, -0.411988, 0.873127,
		-0.705988, -0.535555, -0.463424,
		0.658532, -0.737189, -0.151289,
		39.964668, 38.269779, 32.835064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198627, 38.157673, 33.320038>,  <39.503696, 38.785812, 32.940968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198627, 38.157673, 33.320038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567665, 38.045193, 33.214397>,  <39.789089, 37.977707, 33.151012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567665, 38.045193, 33.214397>,  <39.198627, 38.157673, 33.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567665, 38.045193, 33.214397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081223, -0.527658, 0.845565,
		-0.377122, -0.801565, -0.463975,
		0.922595, -0.281195, -0.264097,
		39.844444, 37.960835, 33.135170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256050, 37.495018, 33.584816>,  <39.198627, 38.157673, 33.320038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256050, 37.495018, 33.584816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646786, 37.568077, 33.540241>,  <39.881229, 37.611912, 33.513496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646786, 37.568077, 33.540241>,  <39.256050, 37.495018, 33.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646786, 37.568077, 33.540241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187359, -0.478725, 0.857741,
		0.103314, -0.858757, -0.501859,
		0.976843, 0.182644, -0.111437,
		39.939838, 37.622871, 33.506809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507816, 36.849850, 33.691807>,  <39.256050, 37.495018, 33.584816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507816, 36.849850, 33.691807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801788, 37.116982, 33.738937>,  <39.978172, 37.277260, 33.767216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801788, 37.116982, 33.738937>,  <39.507816, 36.849850, 33.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801788, 37.116982, 33.738937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301133, -0.477059, 0.825671,
		0.607621, -0.571326, -0.551710,
		0.734926, 0.667833, 0.117826,
		40.022266, 37.317333, 33.774284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211796, 36.479172, 33.821377>,  <39.507816, 36.849850, 33.691807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211796, 36.479172, 33.821377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219761, 36.855907, 33.955570>,  <40.224541, 37.081947, 34.036087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219761, 36.855907, 33.955570>,  <40.211796, 36.479172, 33.821377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219761, 36.855907, 33.955570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197509, -0.332644, 0.922138,
		0.980099, 0.047901, -0.192644,
		0.019911, 0.941835, 0.335484,
		40.225735, 37.138458, 34.056217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879364, 36.547401, 34.102627>,  <40.211796, 36.479172, 33.821377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879364, 36.547401, 34.102627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643059, 36.825756, 34.265965>,  <40.501278, 36.992771, 34.363968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643059, 36.825756, 34.265965>,  <40.879364, 36.547401, 34.102627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643059, 36.825756, 34.265965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042840, -0.478327, 0.877136,
		0.805709, 0.535670, 0.252764,
		-0.590760, 0.695888, 0.408341,
		40.465832, 37.034523, 34.388466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297966, 36.739574, 34.761150>,  <40.879364, 36.547401, 34.102627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297966, 36.739574, 34.761150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922283, 36.867523, 34.811058>,  <40.696873, 36.944294, 34.841003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922283, 36.867523, 34.811058>,  <41.297966, 36.739574, 34.761150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922283, 36.867523, 34.811058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005253, -0.349954, 0.936752,
		0.343303, 0.880462, 0.327001,
		-0.939210, 0.319872, 0.124765,
		40.640522, 36.963486, 34.848488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311981, 37.053825, 35.467030>,  <41.297966, 36.739574, 34.761150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311981, 37.053825, 35.467030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935093, 36.956032, 35.375427>,  <40.708958, 36.897354, 35.320465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935093, 36.956032, 35.375427>,  <41.311981, 37.053825, 35.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935093, 36.956032, 35.375427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119806, -0.392474, 0.911927,
		-0.312831, 0.886674, 0.340508,
		-0.942223, -0.244484, -0.229006,
		40.652428, 36.882687, 35.306725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925640, 37.360115, 36.046555>,  <41.311981, 37.053825, 35.467030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925640, 37.360115, 36.046555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686352, 37.093491, 35.868645>,  <40.542778, 36.933517, 35.761898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686352, 37.093491, 35.868645>,  <40.925640, 37.360115, 36.046555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686352, 37.093491, 35.868645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193812, -0.418214, 0.887431,
		-0.777537, 0.617086, 0.120998,
		-0.598225, -0.666560, -0.444775,
		40.506886, 36.893524, 35.735210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291443, 37.343338, 36.412380>,  <40.925640, 37.360115, 36.046555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291443, 37.343338, 36.412380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288307, 36.984852, 36.234962>,  <40.286427, 36.769760, 36.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288307, 36.984852, 36.234962>,  <40.291443, 37.343338, 36.412380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288307, 36.984852, 36.234962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399407, -0.403835, 0.823038,
		-0.916740, 0.183606, -0.354791,
		-0.007838, -0.896218, -0.443545,
		40.285957, 36.715988, 36.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601906, 37.090965, 36.549160>,  <40.291443, 37.343338, 36.412380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601906, 37.090965, 36.549160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842983, 36.781342, 36.471603>,  <39.987629, 36.595566, 36.425072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842983, 36.781342, 36.471603>,  <39.601906, 37.090965, 36.549160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842983, 36.781342, 36.471603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305530, -0.448303, 0.840045,
		-0.737168, -0.447048, -0.506687,
		0.602690, -0.774062, -0.193888,
		40.023792, 36.549122, 36.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254524, 36.516716, 36.648109>,  <39.601906, 37.090965, 36.549160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254524, 36.516716, 36.648109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646015, 36.468822, 36.714748>,  <39.880909, 36.440086, 36.754734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646015, 36.468822, 36.714748>,  <39.254524, 36.516716, 36.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646015, 36.468822, 36.714748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201091, -0.398872, 0.894686,
		-0.040672, -0.909156, -0.414465,
		0.978728, -0.119733, 0.166600,
		39.939632, 36.432903, 36.764729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344860, 36.009972, 37.141483>,  <39.254524, 36.516716, 36.648109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344860, 36.009972, 37.141483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719669, 36.146446, 37.171356>,  <39.944553, 36.228333, 37.189278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719669, 36.146446, 37.171356>,  <39.344860, 36.009972, 37.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719669, 36.146446, 37.171356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027877, -0.286195, 0.957766,
		0.348152, -0.895367, -0.277683,
		0.937023, 0.341189, 0.074679,
		40.000778, 36.248802, 37.193760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734158, 35.408897, 37.304615>,  <39.344860, 36.009972, 37.141483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734158, 35.408897, 37.304615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950932, 35.728584, 37.408581>,  <40.080997, 35.920395, 37.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950932, 35.728584, 37.408581>,  <39.734158, 35.408897, 37.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950932, 35.728584, 37.408581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091232, -0.363389, 0.927160,
		0.835453, -0.478749, -0.269848,
		0.541937, 0.799217, 0.259917,
		40.113514, 35.968349, 37.486557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308525, 35.116474, 37.725761>,  <39.734158, 35.408897, 37.304615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308525, 35.116474, 37.725761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294594, 35.505363, 37.818336>,  <40.286236, 35.738697, 37.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294594, 35.505363, 37.818336>,  <40.308525, 35.116474, 37.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294594, 35.505363, 37.818336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245554, -0.216159, 0.944976,
		0.968757, 0.089742, -0.231205,
		-0.034827, 0.972225, 0.231442,
		40.284145, 35.797031, 37.887768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694828, 35.130280, 38.330799>,  <40.308525, 35.116474, 37.725761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694828, 35.130280, 38.330799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471256, 35.461582, 38.314899>,  <40.337112, 35.660366, 38.305359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471256, 35.461582, 38.314899>,  <40.694828, 35.130280, 38.330799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471256, 35.461582, 38.314899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100263, 0.115093, 0.988282,
		0.823129, 0.548398, -0.147373,
		-0.558933, 0.828259, -0.039753,
		40.303577, 35.710060, 38.302975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026096, 35.649128, 38.730522>,  <40.694828, 35.130280, 38.330799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026096, 35.649128, 38.730522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640224, 35.752609, 38.710667>,  <40.408703, 35.814697, 38.698753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640224, 35.752609, 38.710667>,  <41.026096, 35.649128, 38.730522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640224, 35.752609, 38.710667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021065, 0.112058, 0.993478,
		0.262578, 0.959435, -0.102651,
		-0.964681, 0.258704, -0.049634,
		40.350819, 35.830219, 38.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915386, 36.167255, 39.260933>,  <41.026096, 35.649128, 38.730522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915386, 36.167255, 39.260933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556469, 36.010254, 39.180126>,  <40.341118, 35.916054, 39.131641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556469, 36.010254, 39.180126>,  <40.915386, 36.167255, 39.260933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556469, 36.010254, 39.180126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201648, -0.042648, 0.978529,
		-0.392694, 0.918760, -0.040880,
		-0.897290, -0.392506, -0.202014,
		40.287281, 35.892502, 39.119522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661884, 36.404587, 39.961147>,  <40.915386, 36.167255, 39.260933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661884, 36.404587, 39.961147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400227, 36.151886, 39.794781>,  <40.243233, 36.000267, 39.694962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400227, 36.151886, 39.794781>,  <40.661884, 36.404587, 39.961147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400227, 36.151886, 39.794781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353446, -0.230843, 0.906525,
		-0.668712, 0.740000, -0.072287,
		-0.654141, -0.631753, -0.415917,
		40.203983, 35.962360, 39.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212070, 36.267525, 40.489613>,  <40.661884, 36.404587, 39.961147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212070, 36.267525, 40.489613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047081, 36.019844, 40.222343>,  <39.948086, 35.871235, 40.061981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047081, 36.019844, 40.222343>,  <40.212070, 36.267525, 40.489613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047081, 36.019844, 40.222343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553236, -0.412457, 0.723747,
		-0.723738, 0.668184, -0.172437,
		-0.412473, -0.619201, -0.668174,
		39.923340, 35.834084, 40.021893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474709, 36.318829, 40.484699>,  <40.212070, 36.267525, 40.489613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474709, 36.318829, 40.484699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571491, 35.953190, 40.354542>,  <39.629559, 35.733807, 40.276447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571491, 35.953190, 40.354542>,  <39.474709, 36.318829, 40.484699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571491, 35.953190, 40.354542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596376, -0.404634, 0.693258,
		-0.765372, 0.026320, -0.643050,
		0.241953, -0.914100, -0.325392,
		39.644077, 35.678959, 40.256924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780334, 35.910713, 40.538757>,  <39.474709, 36.318829, 40.484699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780334, 35.910713, 40.538757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060211, 35.629517, 40.487801>,  <39.228138, 35.460796, 40.457226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060211, 35.629517, 40.487801>,  <38.780334, 35.910713, 40.538757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060211, 35.629517, 40.487801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487354, -0.600027, 0.634393,
		-0.522416, -0.381792, -0.762441,
		0.699691, -0.702996, -0.127396,
		39.270119, 35.418617, 40.449581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500160, 35.184471, 40.310173>,  <38.780334, 35.910713, 40.538757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500160, 35.184471, 40.310173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853382, 35.146549, 40.494015>,  <39.065315, 35.123795, 40.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853382, 35.146549, 40.494015>,  <38.500160, 35.184471, 40.310173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853382, 35.146549, 40.494015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389340, -0.694766, 0.604743,
		0.261982, -0.712960, -0.650426,
		0.883051, -0.094805, 0.459600,
		39.118298, 35.118107, 40.631893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776310, 34.504509, 40.185368>,  <38.500160, 35.184471, 40.310173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776310, 34.504509, 40.185368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912155, 34.637314, 40.537373>,  <38.993664, 34.716995, 40.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912155, 34.637314, 40.537373>,  <38.776310, 34.504509, 40.185368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912155, 34.637314, 40.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587386, -0.655878, 0.474133,
		0.734601, -0.677932, -0.027727,
		0.339616, 0.332012, 0.880017,
		39.014038, 34.736916, 40.801376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859577, 33.946980, 40.520817>,  <38.776310, 34.504509, 40.185368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859577, 33.946980, 40.520817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834274, 34.211731, 40.819592>,  <38.819092, 34.370583, 40.998856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834274, 34.211731, 40.819592>,  <38.859577, 33.946980, 40.520817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834274, 34.211731, 40.819592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629570, -0.607192, 0.484726,
		0.774364, -0.439585, 0.455111,
		-0.063261, 0.661878, 0.746937,
		38.815296, 34.410294, 41.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980537, 33.590290, 41.221031>,  <38.859577, 33.946980, 40.520817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980537, 33.590290, 41.221031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741444, 33.909443, 41.252277>,  <38.597988, 34.100933, 41.271027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741444, 33.909443, 41.252277>,  <38.980537, 33.590290, 41.221031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741444, 33.909443, 41.252277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679257, -0.555786, 0.479283,
		0.425827, 0.233420, 0.874177,
		-0.597730, 0.797883, 0.078117,
		38.562126, 34.148808, 41.275711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884563, 33.734577, 41.824100>,  <38.980537, 33.590290, 41.221031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884563, 33.734577, 41.824100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555012, 33.883240, 41.652943>,  <38.357281, 33.972439, 41.550247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555012, 33.883240, 41.652943>,  <38.884563, 33.734577, 41.824100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555012, 33.883240, 41.652943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566721, -0.530457, 0.630430,
		0.007324, 0.761896, 0.647659,
		-0.823877, 0.371659, -0.427897,
		38.307850, 33.994736, 41.524574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556686, 33.894695, 42.343597>,  <38.884563, 33.734577, 41.824100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556686, 33.894695, 42.343597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287991, 33.890053, 42.047318>,  <38.126774, 33.887268, 41.869549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287991, 33.890053, 42.047318>,  <38.556686, 33.894695, 42.343597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287991, 33.890053, 42.047318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691854, -0.347551, 0.632887,
		-0.264778, 0.937589, 0.225431,
		-0.671737, -0.011609, -0.740699,
		38.086468, 33.886570, 41.825108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975887, 34.141293, 42.675007>,  <38.556686, 33.894695, 42.343597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975887, 34.141293, 42.675007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855648, 33.950882, 42.344421>,  <37.783504, 33.836636, 42.146069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855648, 33.950882, 42.344421>,  <37.975887, 34.141293, 42.675007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855648, 33.950882, 42.344421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749941, -0.417410, 0.513183,
		-0.589263, 0.774058, -0.231522,
		-0.300594, -0.476028, -0.826463,
		37.765469, 33.808075, 42.096481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229458, 34.248245, 42.470032>,  <37.975887, 34.141293, 42.675007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229458, 34.248245, 42.470032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316486, 33.878239, 42.345444>,  <37.368706, 33.656235, 42.270691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316486, 33.878239, 42.345444>,  <37.229458, 34.248245, 42.470032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316486, 33.878239, 42.345444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773948, -0.357938, 0.522383,
		-0.594697, 0.127402, -0.793791,
		0.217576, -0.925013, -0.311467,
		37.381760, 33.600735, 42.252003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482552, 33.955666, 42.186981>,  <37.229458, 34.248245, 42.470032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482552, 33.955666, 42.186981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758408, 33.705147, 42.332386>,  <36.923920, 33.554836, 42.419628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758408, 33.705147, 42.332386>,  <36.482552, 33.955666, 42.186981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758408, 33.705147, 42.332386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648144, -0.309968, 0.695579,
		-0.322976, -0.715298, -0.619706,
		0.689635, -0.626314, 0.363503,
		36.965302, 33.517258, 42.441441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935204, 33.545853, 42.456932>,  <36.482552, 33.955666, 42.186981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935204, 33.545853, 42.456932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941639, 33.497128, 42.853901>,  <35.945499, 33.467892, 43.092083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941639, 33.497128, 42.853901>,  <35.935204, 33.545853, 42.456932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941639, 33.497128, 42.853901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665729, -0.741864, -0.080262,
		0.746020, -0.659393, -0.093031,
		0.016092, -0.121811, 0.992423,
		35.946468, 33.460583, 43.151627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330276, 33.064354, 42.837406>,  <35.935204, 33.545853, 42.456932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330276, 33.064354, 42.837406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437580, 32.724846, 42.655144>,  <36.501961, 32.521141, 42.545788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437580, 32.724846, 42.655144>,  <36.330276, 33.064354, 42.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437580, 32.724846, 42.655144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566762, 0.521524, -0.637804,
		0.778987, -0.087155, 0.620954,
		0.268255, -0.848774, -0.455656,
		36.518055, 32.470215, 42.518448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030766, 33.119961, 42.934162>,  <36.330276, 33.064354, 42.837406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030766, 33.119961, 42.934162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929909, 32.922108, 42.601475>,  <36.869392, 32.803394, 42.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929909, 32.922108, 42.601475>,  <37.030766, 33.119961, 42.934162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929909, 32.922108, 42.601475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603959, 0.591103, -0.534632,
		0.756080, -0.637130, 0.149696,
		-0.252145, -0.494635, -0.831721,
		36.854267, 32.773716, 42.351959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571571, 32.794571, 42.538765>,  <37.030766, 33.119961, 42.934162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571571, 32.794571, 42.538765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281399, 32.956966, 42.316444>,  <37.107296, 33.054405, 42.183052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281399, 32.956966, 42.316444>,  <37.571571, 32.794571, 42.538765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281399, 32.956966, 42.316444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687207, 0.472524, -0.551787,
		0.038607, -0.782235, -0.621786,
		-0.725436, 0.405992, -0.555800,
		37.063766, 33.078766, 42.149704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645950, 32.703781, 41.745972>,  <37.571571, 32.794571, 42.538765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645950, 32.703781, 41.745972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448372, 33.044277, 41.816856>,  <37.329823, 33.248573, 41.859386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448372, 33.044277, 41.816856>,  <37.645950, 32.703781, 41.745972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448372, 33.044277, 41.816856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652858, 0.497712, -0.571016,
		-0.574273, -0.166358, -0.801583,
		-0.493950, 0.851239, 0.177215,
		37.300186, 33.299648, 41.870022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309696, 33.115463, 41.123077>,  <37.645950, 32.703781, 41.745972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309696, 33.115463, 41.123077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448601, 33.348930, 41.416672>,  <37.531944, 33.489010, 41.592827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448601, 33.348930, 41.416672>,  <37.309696, 33.115463, 41.123077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448601, 33.348930, 41.416672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652316, 0.411962, -0.636216,
		-0.673716, 0.699724, -0.237680,
		0.347261, 0.583672, 0.733987,
		37.552780, 33.524033, 41.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246464, 33.762623, 40.851578>,  <37.309696, 33.115463, 41.123077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246464, 33.762623, 40.851578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496006, 33.788383, 41.163128>,  <37.645733, 33.803841, 41.350060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496006, 33.788383, 41.163128>,  <37.246464, 33.762623, 40.851578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496006, 33.788383, 41.163128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628439, 0.551124, -0.548932,
		-0.464612, 0.831934, 0.303351,
		0.623860, 0.064403, 0.778878,
		37.683163, 33.807705, 41.396790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373943, 34.501125, 40.841812>,  <37.246464, 33.762623, 40.851578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373943, 34.501125, 40.841812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655403, 34.301544, 41.044170>,  <37.824280, 34.181797, 41.165585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655403, 34.301544, 41.044170>,  <37.373943, 34.501125, 40.841812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655403, 34.301544, 41.044170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694722, 0.632540, -0.342426,
		-0.149148, 0.592405, 0.791714,
		0.703645, -0.498949, 0.505898,
		37.866497, 34.151859, 41.195938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759926, 34.974792, 41.421021>,  <37.373943, 34.501125, 40.841812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759926, 34.974792, 41.421021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980892, 34.711872, 41.215965>,  <38.113472, 34.554119, 41.092934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980892, 34.711872, 41.215965>,  <37.759926, 34.974792, 41.421021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980892, 34.711872, 41.215965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559017, 0.748318, -0.357099,
		0.618335, -0.089305, 0.780824,
		0.552414, -0.657301, -0.512635,
		38.146618, 34.514683, 41.062176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354179, 34.904613, 41.978313>,  <37.759926, 34.974792, 41.421021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354179, 34.904613, 41.978313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556770, 34.592937, 41.830616>,  <38.678326, 34.405933, 41.741997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556770, 34.592937, 41.830616>,  <38.354179, 34.904613, 41.978313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556770, 34.592937, 41.830616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467828, 0.608047, -0.641417,
		0.724305, 0.152120, 0.672490,
		0.506478, -0.779190, -0.369245,
		38.708714, 34.359180, 41.719841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020329, 35.010731, 42.074265>,  <38.354179, 34.904613, 41.978313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020329, 35.010731, 42.074265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014435, 34.775494, 41.750801>,  <39.010899, 34.634354, 41.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014435, 34.775494, 41.750801>,  <39.020329, 35.010731, 42.074265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014435, 34.775494, 41.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592016, 0.646622, -0.481037,
		0.805791, -0.485828, 0.338632,
		-0.014734, -0.588091, -0.808661,
		39.010014, 34.599068, 41.508202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767456, 35.085197, 41.815365>,  <39.020329, 35.010731, 42.074265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767456, 35.085197, 41.815365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529003, 34.991169, 41.508282>,  <39.385933, 34.934750, 41.324032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529003, 34.991169, 41.508282>,  <39.767456, 35.085197, 41.815365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529003, 34.991169, 41.508282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579438, 0.535918, -0.614038,
		0.555774, -0.810882, -0.183261,
		-0.596126, -0.235078, -0.767706,
		39.350166, 34.920647, 41.277969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271660, 34.954472, 41.240990>,  <39.767456, 35.085197, 41.815365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271660, 34.954472, 41.240990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925133, 34.970974, 41.041874>,  <39.717216, 34.980873, 40.922405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925133, 34.970974, 41.041874>,  <40.271660, 34.954472, 41.240990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925133, 34.970974, 41.041874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486141, 0.298554, -0.821300,
		0.114737, -0.953501, -0.278696,
		-0.866316, 0.041252, -0.497791,
		39.665237, 34.983349, 40.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344173, 34.610916, 40.558304>,  <40.271660, 34.954472, 41.240990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344173, 34.610916, 40.558304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013889, 34.835064, 40.532448>,  <39.815720, 34.969555, 40.516933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013889, 34.835064, 40.532448>,  <40.344173, 34.610916, 40.558304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013889, 34.835064, 40.532448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231192, 0.231671, -0.944923,
		-0.514534, -0.795180, -0.320848,
		-0.825715, 0.560373, -0.064637,
		39.766174, 35.003174, 40.513058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998779, 34.457104, 39.861942>,  <40.344173, 34.610916, 40.558304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998779, 34.457104, 39.861942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901985, 34.828869, 39.973392>,  <39.843906, 35.051929, 40.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901985, 34.828869, 39.973392>,  <39.998779, 34.457104, 39.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901985, 34.828869, 39.973392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136969, 0.317007, -0.938481,
		-0.960563, -0.188937, -0.204012,
		-0.241987, 0.929413, 0.278627,
		39.829388, 35.107693, 40.056980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619778, 34.714802, 39.333561>,  <39.998779, 34.457104, 39.861942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619778, 34.714802, 39.333561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716591, 35.049618, 39.529839>,  <39.774681, 35.250507, 39.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716591, 35.049618, 39.529839>,  <39.619778, 34.714802, 39.333561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716591, 35.049618, 39.529839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070135, 0.489318, -0.869281,
		-0.967729, 0.244812, 0.059726,
		0.242035, 0.837040, 0.490697,
		39.789200, 35.300728, 39.677048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114700, 35.292446, 39.188721>,  <39.619778, 34.714802, 39.333561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114700, 35.292446, 39.188721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474251, 35.448498, 39.268539>,  <39.689980, 35.542130, 39.316433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474251, 35.448498, 39.268539>,  <39.114700, 35.292446, 39.188721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474251, 35.448498, 39.268539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009833, 0.437314, -0.899255,
		-0.438092, 0.810281, 0.389256,
		0.898876, 0.390129, 0.199551,
		39.743916, 35.565536, 39.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275909, 35.489525, 38.543190>,  <39.114700, 35.292446, 39.188721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275909, 35.489525, 38.543190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570671, 35.645958, 38.763744>,  <39.747528, 35.739819, 38.896076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570671, 35.645958, 38.763744>,  <39.275909, 35.489525, 38.543190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570671, 35.645958, 38.763744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359379, 0.464198, -0.809547,
		-0.572551, 0.794716, 0.201524,
		0.736907, 0.391084, 0.551382,
		39.791744, 35.763283, 38.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185139, 36.256001, 38.490517>,  <39.275909, 35.489525, 38.543190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185139, 36.256001, 38.490517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553226, 36.116745, 38.562061>,  <39.774078, 36.033192, 38.604988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553226, 36.116745, 38.562061>,  <39.185139, 36.256001, 38.490517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553226, 36.116745, 38.562061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300803, 0.336693, -0.892276,
		0.250415, 0.874893, 0.414553,
		0.920223, -0.348138, 0.178857,
		39.829292, 36.012302, 38.615719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602623, 36.807690, 38.534920>,  <39.185139, 36.256001, 38.490517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602623, 36.807690, 38.534920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838497, 36.493694, 38.458969>,  <39.980022, 36.305298, 38.413399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838497, 36.493694, 38.458969>,  <39.602623, 36.807690, 38.534920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838497, 36.493694, 38.458969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275848, 0.416728, -0.866167,
		0.759062, 0.458393, 0.462279,
		0.589689, -0.784993, -0.189876,
		40.015404, 36.258198, 38.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136017, 37.104980, 38.211536>,  <39.602623, 36.807690, 38.534920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136017, 37.104980, 38.211536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165459, 36.715454, 38.125504>,  <40.183125, 36.481739, 38.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165459, 36.715454, 38.125504>,  <40.136017, 37.104980, 38.211536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165459, 36.715454, 38.125504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396444, 0.226471, -0.889687,
		0.915103, -0.019782, 0.402734,
		0.073608, -0.973817, -0.215087,
		40.187542, 36.423309, 38.060978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837677, 36.865204, 38.031288>,  <40.136017, 37.104980, 38.211536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837677, 36.865204, 38.031288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588436, 36.626740, 37.828770>,  <40.438892, 36.483662, 37.707260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588436, 36.626740, 37.828770>,  <40.837677, 36.865204, 38.031288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588436, 36.626740, 37.828770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457051, 0.247762, -0.854236,
		0.634704, -0.763678, 0.118096,
		-0.623102, -0.596163, -0.506295,
		40.401505, 36.447891, 37.676880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136189, 36.863552, 37.314594>,  <40.837677, 36.865204, 38.031288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136189, 36.863552, 37.314594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798130, 36.652306, 37.281578>,  <40.595295, 36.525558, 37.261768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798130, 36.652306, 37.281578>,  <41.136189, 36.863552, 37.314594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798130, 36.652306, 37.281578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037250, 0.095859, -0.994698,
		0.533232, -0.843742, -0.061343,
		-0.845149, -0.528120, -0.082544,
		40.544586, 36.493870, 37.256813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242538, 36.272388, 36.934261>,  <41.136189, 36.863552, 37.314594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242538, 36.272388, 36.934261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849274, 36.339714, 36.905811>,  <40.613316, 36.380108, 36.888741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849274, 36.339714, 36.905811>,  <41.242538, 36.272388, 36.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849274, 36.339714, 36.905811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078803, 0.039395, -0.996112,
		-0.164857, -0.984946, -0.051996,
		-0.983164, 0.168313, -0.071122,
		40.554325, 36.390209, 36.884476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216503, 35.553581, 37.082947>,  <41.242538, 36.272388, 36.934261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216503, 35.553581, 37.082947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990726, 35.257648, 36.936493>,  <40.855259, 35.080090, 36.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990726, 35.257648, 36.936493>,  <41.216503, 35.553581, 37.082947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990726, 35.257648, 36.936493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816973, -0.564157, -0.119511,
		-0.118137, -0.366576, 0.922857,
		-0.564446, -0.739830, -0.366131,
		40.821392, 35.035698, 36.826653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328724, 34.891354, 37.543655>,  <41.216503, 35.553581, 37.082947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328724, 34.891354, 37.543655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244904, 34.831699, 37.157112>,  <41.194611, 34.795906, 36.925186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244904, 34.831699, 37.157112>,  <41.328724, 34.891354, 37.543655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244904, 34.831699, 37.157112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921740, -0.359954, -0.144323,
		-0.326321, -0.920973, 0.212892,
		-0.209549, -0.149135, -0.966358,
		41.182037, 34.786961, 36.867203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395016, 34.210625, 37.260124>,  <41.328724, 34.891354, 37.543655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395016, 34.210625, 37.260124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474545, 34.446465, 36.946987>,  <41.522263, 34.587967, 36.759106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474545, 34.446465, 36.946987>,  <41.395016, 34.210625, 37.260124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474545, 34.446465, 36.946987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805131, -0.553705, -0.212543,
		-0.558780, -0.588036, -0.584789,
		0.198817, 0.589597, -0.782846,
		41.534191, 34.623344, 36.712135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429237, 33.768818, 36.666397>,  <41.395016, 34.210625, 37.260124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429237, 33.768818, 36.666397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654709, 34.094707, 36.612015>,  <41.789993, 34.290241, 36.579384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654709, 34.094707, 36.612015>,  <41.429237, 33.768818, 36.666397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654709, 34.094707, 36.612015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790170, -0.579825, -0.198579,
		-0.240621, 0.004503, -0.970609,
		0.563677, 0.814729, -0.135960,
		41.823811, 34.339127, 36.571228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688301, 33.734715, 35.909313>,  <41.429237, 33.768818, 36.666397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688301, 33.734715, 35.909313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906757, 33.938148, 36.175568>,  <42.037830, 34.060211, 36.335320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906757, 33.938148, 36.175568>,  <41.688301, 33.734715, 35.909313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906757, 33.938148, 36.175568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816602, -0.500420, -0.287647,
		0.186804, 0.700654, -0.688613,
		0.546137, 0.508589, 0.665636,
		42.070599, 34.090725, 36.375259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178291, 34.298725, 35.756630>,  <41.688301, 33.734715, 35.909313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178291, 34.298725, 35.756630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311878, 34.124916, 36.091213>,  <42.392029, 34.020630, 36.291962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311878, 34.124916, 36.091213>,  <42.178291, 34.298725, 35.756630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311878, 34.124916, 36.091213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887936, -0.152741, -0.433866,
		0.316284, 0.887616, 0.334816,
		0.333966, -0.434520, 0.836456,
		42.412067, 33.994560, 36.342152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888119, 34.218937, 35.613045>,  <42.178291, 34.298725, 35.756630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888119, 34.218937, 35.613045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797657, 33.976944, 35.918423>,  <42.743382, 33.831749, 36.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797657, 33.976944, 35.918423>,  <42.888119, 34.218937, 35.613045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797657, 33.976944, 35.918423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856498, -0.496809, -0.139973,
		0.463969, 0.622236, 0.630520,
		-0.226152, -0.604982, 0.763447,
		42.729813, 33.795448, 36.147457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476292, 34.191711, 36.041897>,  <42.888119, 34.218937, 35.613045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476292, 34.191711, 36.041897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263393, 33.857037, 36.093544>,  <43.135654, 33.656231, 36.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263393, 33.857037, 36.093544>,  <43.476292, 34.191711, 36.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263393, 33.857037, 36.093544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820713, -0.547363, -0.163779,
		0.207704, 0.018795, 0.978011,
		-0.532249, -0.836684, 0.129115,
		43.103718, 33.606030, 36.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880924, 33.722801, 36.391205>,  <43.476292, 34.191711, 36.041897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880924, 33.722801, 36.391205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637604, 33.463856, 36.207516>,  <43.491611, 33.308487, 36.097301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637604, 33.463856, 36.207516>,  <43.880924, 33.722801, 36.391205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637604, 33.463856, 36.207516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759401, -0.642960, -0.099558,
		-0.230811, -0.409296, 0.882725,
		-0.608306, -0.647363, -0.459222,
		43.455112, 33.269646, 36.069748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880207, 33.122318, 36.797184>,  <43.880924, 33.722801, 36.391205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880207, 33.122318, 36.797184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794746, 33.033195, 36.416718>,  <43.743469, 32.979721, 36.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794746, 33.033195, 36.416718>,  <43.880207, 33.122318, 36.797184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794746, 33.033195, 36.416718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708527, -0.705657, 0.006142,
		-0.672563, -0.672612, 0.308631,
		-0.213656, -0.222804, -0.951162,
		43.730648, 32.966354, 36.131371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962517, 32.371799, 36.744629>,  <43.880207, 33.122318, 36.797184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962517, 32.371799, 36.744629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947742, 32.478874, 36.359509>,  <43.938877, 32.543121, 36.128437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947742, 32.478874, 36.359509>,  <43.962517, 32.371799, 36.744629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947742, 32.478874, 36.359509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625135, -0.745474, -0.231246,
		-0.779642, -0.610418, -0.139811,
		-0.036931, 0.267691, -0.962797,
		43.936665, 32.559181, 36.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989494, 31.788303, 36.304272>,  <43.962517, 32.371799, 36.744629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989494, 31.788303, 36.304272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119652, 32.092552, 36.079567>,  <44.197746, 32.275101, 35.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119652, 32.092552, 36.079567>,  <43.989494, 31.788303, 36.304272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119652, 32.092552, 36.079567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753608, -0.567441, -0.331791,
		-0.571132, -0.315382, -0.757854,
		0.325396, 0.760621, -0.561758,
		44.217270, 32.320740, 35.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982826, 31.603386, 35.601704>,  <43.989494, 31.788303, 36.304272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982826, 31.603386, 35.601704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263538, 31.882889, 35.657192>,  <44.431965, 32.050591, 35.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263538, 31.882889, 35.657192>,  <43.982826, 31.603386, 35.601704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263538, 31.882889, 35.657192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709807, -0.669266, -0.219676,
		-0.060662, 0.252627, -0.965660,
		0.701779, 0.698759, 0.138718,
		44.474072, 32.092518, 35.698807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432110, 31.452791, 35.006161>,  <43.982826, 31.603386, 35.601704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432110, 31.452791, 35.006161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592739, 31.659798, 35.308395>,  <44.689117, 31.784002, 35.489735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592739, 31.659798, 35.308395>,  <44.432110, 31.452791, 35.006161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592739, 31.659798, 35.308395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814642, -0.578813, -0.036524,
		0.418443, 0.630200, -0.654028,
		0.401578, 0.517516, 0.755588,
		44.713211, 31.815052, 35.535072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070282, 31.822334, 34.821213>,  <44.432110, 31.452791, 35.006161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070282, 31.822334, 34.821213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087528, 31.704227, 35.202988>,  <45.097874, 31.633364, 35.432053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087528, 31.704227, 35.202988>,  <45.070282, 31.822334, 34.821213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087528, 31.704227, 35.202988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841958, -0.503533, -0.193805,
		0.537818, 0.811955, 0.226895,
		0.043112, -0.295268, 0.954441,
		45.100460, 31.615646, 35.489319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587803, 32.059986, 35.289024>,  <45.070282, 31.822334, 34.821213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587803, 32.059986, 35.289024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512543, 31.677036, 35.376690>,  <45.467388, 31.447266, 35.429291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512543, 31.677036, 35.376690>,  <45.587803, 32.059986, 35.289024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512543, 31.677036, 35.376690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856004, -0.269254, -0.441315,
		0.481515, 0.104573, 0.870177,
		-0.188149, -0.957375, 0.219165,
		45.456097, 31.389824, 35.442440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945789, 32.615402, 35.644653>,  <45.587803, 32.059986, 35.289024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945789, 32.615402, 35.644653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848549, 32.976818, 35.785797>,  <45.790207, 33.193668, 35.870483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848549, 32.976818, 35.785797>,  <45.945789, 32.615402, 35.644653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848549, 32.976818, 35.785797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966202, 0.193390, 0.170452,
		0.085771, 0.382374, -0.920018,
		-0.243099, 0.903543, 0.352864,
		45.775620, 33.247883, 35.891655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407936, 33.185467, 35.313877>,  <45.945789, 32.615402, 35.644653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407936, 33.185467, 35.313877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250877, 33.320686, 35.656002>,  <46.156643, 33.401817, 35.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250877, 33.320686, 35.656002>,  <46.407936, 33.185467, 35.313877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250877, 33.320686, 35.656002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914693, 0.240348, 0.324914,
		-0.095735, 0.909921, -0.403582,
		-0.392646, 0.338048, 0.855308,
		46.133083, 33.422100, 35.912594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539959, 33.902405, 35.446014>,  <46.407936, 33.185467, 35.313877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539959, 33.902405, 35.446014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517933, 33.687962, 35.782955>,  <46.504719, 33.559296, 35.985119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517933, 33.687962, 35.782955>,  <46.539959, 33.902405, 35.446014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517933, 33.687962, 35.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788963, 0.493700, 0.365783,
		-0.611969, 0.684727, 0.395782,
		-0.055064, -0.536106, 0.842353,
		46.501415, 33.527130, 36.035660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819530, 34.553154, 35.609009>,  <46.539959, 33.902405, 35.446014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819530, 34.553154, 35.609009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457870, 34.525345, 35.440399>,  <46.240875, 34.508659, 35.339233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457870, 34.525345, 35.440399>,  <46.819530, 34.553154, 35.609009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457870, 34.525345, 35.440399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067803, 0.950812, -0.302256,
		0.421806, -0.301865, -0.854960,
		-0.904147, -0.069525, -0.421526,
		46.186626, 34.504486, 35.313942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022308, 34.741512, 34.880863>,  <46.819530, 34.553154, 35.609009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022308, 34.741512, 34.880863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213276, 34.771969, 35.231010>,  <47.327854, 34.790241, 35.441101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213276, 34.771969, 35.231010>,  <47.022308, 34.741512, 34.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213276, 34.771969, 35.231010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845492, -0.311016, -0.434066,
		0.239204, 0.947350, -0.212860,
		0.477415, 0.076141, 0.875373,
		47.356499, 34.794811, 35.493622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543144, 35.105343, 34.796013>,  <47.022308, 34.741512, 34.880863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.543144, 35.105343, 34.796013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624157, 34.882992, 35.118496>,  <47.672764, 34.749580, 35.311985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624157, 34.882992, 35.118496>,  <47.543144, 35.105343, 34.796013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624157, 34.882992, 35.118496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818368, -0.356070, -0.451097,
		0.537824, 0.751140, 0.382798,
		0.202534, -0.555880, 0.806212,
		47.684917, 34.716228, 35.360359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.645054, 34.783669, 26.649609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245499, 34.796776, 26.636049>,  <40.005764, 34.804638, 26.627913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245499, 34.796776, 26.636049>,  <40.645054, 34.783669, 26.649609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245499, 34.796776, 26.636049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029185, 0.134973, 0.990419,
		0.037026, 0.990307, -0.133867,
		-0.998888, 0.032765, -0.033900,
		39.945831, 34.806606, 26.625879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497395, 35.028774, 27.335154>,  <40.645054, 34.783669, 26.649609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497395, 35.028774, 27.335154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150448, 34.889900, 27.192526>,  <39.942280, 34.806576, 27.106949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150448, 34.889900, 27.192526>,  <40.497395, 35.028774, 27.335154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150448, 34.889900, 27.192526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315030, -0.171634, 0.933434,
		-0.385276, 0.921956, 0.039494,
		-0.867363, -0.347188, -0.356570,
		39.890240, 34.785744, 27.085554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009575, 35.336464, 27.729963>,  <40.497395, 35.028774, 27.335154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009575, 35.336464, 27.729963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818630, 35.017834, 27.581587>,  <39.704063, 34.826656, 27.492561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818630, 35.017834, 27.581587>,  <40.009575, 35.336464, 27.729963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818630, 35.017834, 27.581587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512073, -0.090875, 0.854122,
		-0.714081, 0.597671, -0.364524,
		-0.477358, -0.796575, -0.370943,
		39.675423, 34.778862, 27.470304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324352, 35.527378, 27.880819>,  <40.009575, 35.336464, 27.729963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324352, 35.527378, 27.880819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292122, 35.136951, 27.800026>,  <39.272781, 34.902695, 27.751551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292122, 35.136951, 27.800026>,  <39.324352, 35.527378, 27.880819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292122, 35.136951, 27.800026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517689, -0.132183, 0.845296,
		-0.851766, 0.172679, -0.494649,
		-0.080580, -0.976069, -0.201983,
		39.267948, 34.844131, 27.739431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627071, 35.454132, 27.970480>,  <39.324352, 35.527378, 27.880819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627071, 35.454132, 27.970480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783726, 35.086868, 27.994474>,  <38.877720, 34.866508, 28.008871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783726, 35.086868, 27.994474>,  <38.627071, 35.454132, 27.970480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783726, 35.086868, 27.994474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476659, -0.146691, 0.866763,
		-0.787029, -0.368051, -0.495099,
		0.391640, -0.918161, 0.059984,
		38.901218, 34.811420, 28.012470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057018, 35.094887, 28.258196>,  <38.627071, 35.454132, 27.970480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057018, 35.094887, 28.258196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387203, 34.882900, 28.335918>,  <38.585312, 34.755707, 28.382551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387203, 34.882900, 28.335918>,  <38.057018, 35.094887, 28.258196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387203, 34.882900, 28.335918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313875, -0.144847, 0.938351,
		-0.469150, -0.835557, -0.285908,
		0.825458, -0.529966, 0.194305,
		38.634842, 34.723911, 28.394211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886448, 34.394890, 28.609118>,  <38.057018, 35.094887, 28.258196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886448, 34.394890, 28.609118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274067, 34.453167, 28.688839>,  <38.506638, 34.488132, 28.736671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274067, 34.453167, 28.688839>,  <37.886448, 34.394890, 28.609118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274067, 34.453167, 28.688839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172806, -0.176271, 0.969055,
		0.176314, -0.973500, -0.145638,
		0.969047, 0.145691, 0.199305,
		38.564781, 34.496872, 28.748631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121574, 33.810272, 28.986271>,  <37.886448, 34.394890, 28.609118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121574, 33.810272, 28.986271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372913, 34.111122, 29.065762>,  <38.523716, 34.291630, 29.113457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372913, 34.111122, 29.065762>,  <38.121574, 33.810272, 28.986271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372913, 34.111122, 29.065762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214918, -0.077683, 0.973538,
		0.747655, -0.654431, 0.112832,
		0.628348, 0.752120, 0.198729,
		38.561417, 34.336758, 29.125380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579659, 33.594940, 29.549744>,  <38.121574, 33.810272, 28.986271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579659, 33.594940, 29.549744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561646, 33.994259, 29.534910>,  <38.550838, 34.233849, 29.526011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561646, 33.994259, 29.534910>,  <38.579659, 33.594940, 29.549744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561646, 33.994259, 29.534910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129311, 0.030985, 0.991120,
		0.990581, 0.049431, 0.127696,
		-0.045036, 0.998297, -0.037085,
		38.548134, 34.293747, 29.523785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845596, 33.687775, 30.168026>,  <38.579659, 33.594940, 29.549744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845596, 33.687775, 30.168026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704319, 34.049702, 30.072903>,  <38.619553, 34.266861, 30.015829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704319, 34.049702, 30.072903>,  <38.845596, 33.687775, 30.168026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704319, 34.049702, 30.072903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249313, 0.153968, 0.956105,
		0.901720, 0.396977, 0.171203,
		-0.353191, 0.904822, -0.237808,
		38.598362, 34.321148, 30.001560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209137, 34.189926, 30.574915>,  <38.845596, 33.687775, 30.168026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209137, 34.189926, 30.574915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865574, 34.372780, 30.482563>,  <38.659435, 34.482494, 30.427153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865574, 34.372780, 30.482563>,  <39.209137, 34.189926, 30.574915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865574, 34.372780, 30.482563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194449, 0.125967, 0.972791,
		0.473783, 0.880430, -0.019304,
		-0.858906, 0.457138, -0.230880,
		38.607903, 34.509922, 30.413300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244690, 34.794136, 31.066559>,  <39.209137, 34.189926, 30.574915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244690, 34.794136, 31.066559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870750, 34.735081, 30.937407>,  <38.646385, 34.699650, 30.859915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870750, 34.735081, 30.937407>,  <39.244690, 34.794136, 31.066559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870750, 34.735081, 30.937407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347895, 0.199454, 0.916072,
		-0.070844, 0.968722, -0.237822,
		-0.934853, -0.147635, -0.322883,
		38.590294, 34.690792, 30.840542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886925, 35.360897, 31.321211>,  <39.244690, 34.794136, 31.066559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886925, 35.360897, 31.321211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623421, 35.071323, 31.239285>,  <38.465317, 34.897579, 31.190128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623421, 35.071323, 31.239285>,  <38.886925, 35.360897, 31.321211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623421, 35.071323, 31.239285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297909, 0.001012, 0.954594,
		-0.690859, 0.689865, -0.216334,
		-0.658760, -0.723937, -0.204818,
		38.425793, 34.854141, 31.177839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331398, 35.570778, 31.595848>,  <38.886925, 35.360897, 31.321211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331398, 35.570778, 31.595848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294086, 35.173084, 31.574677>,  <38.271698, 34.934467, 31.561974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294086, 35.173084, 31.574677>,  <38.331398, 35.570778, 31.595848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294086, 35.173084, 31.574677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157190, -0.037790, 0.986845,
		-0.983153, 0.100371, -0.152759,
		-0.093278, -0.994232, -0.052930,
		38.266102, 34.874813, 31.558798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656517, 35.369701, 31.834515>,  <38.331398, 35.570778, 31.595848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656517, 35.369701, 31.834515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880257, 35.043526, 31.894079>,  <38.014500, 34.847820, 31.929817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880257, 35.043526, 31.894079>,  <37.656517, 35.369701, 31.834515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880257, 35.043526, 31.894079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298589, -0.030623, 0.953890,
		-0.773284, -0.578025, -0.260612,
		0.559353, -0.815444, 0.148912,
		38.048061, 34.798893, 31.938753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360126, 35.072151, 32.431381>,  <37.656517, 35.369701, 31.834515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360126, 35.072151, 32.431381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683983, 34.843807, 32.376812>,  <37.878296, 34.706802, 32.344070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683983, 34.843807, 32.376812>,  <37.360126, 35.072151, 32.431381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683983, 34.843807, 32.376812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079464, -0.336904, 0.938180,
		-0.581527, -0.748744, -0.318132,
		0.809637, -0.570857, -0.136420,
		37.926872, 34.672550, 32.335888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226505, 34.445641, 32.718571>,  <37.360126, 35.072151, 32.431381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226505, 34.445641, 32.718571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623848, 34.491470, 32.722958>,  <37.862251, 34.518967, 32.725590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623848, 34.491470, 32.722958>,  <37.226505, 34.445641, 32.718571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623848, 34.491470, 32.722958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028668, -0.338596, 0.940495,
		0.111467, -0.933931, -0.339630,
		0.993355, 0.114571, 0.010968,
		37.921856, 34.525841, 32.726250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439941, 33.681526, 32.932755>,  <37.226505, 34.445641, 32.718571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439941, 33.681526, 32.932755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735512, 33.942013, 33.001923>,  <37.912853, 34.098305, 33.043423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735512, 33.942013, 33.001923>,  <37.439941, 33.681526, 32.932755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735512, 33.942013, 33.001923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158325, -0.417277, 0.894882,
		0.654917, -0.633877, -0.411442,
		0.738930, 0.651214, 0.172923,
		37.957191, 34.137379, 33.053799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005173, 33.310143, 33.138035>,  <37.439941, 33.681526, 32.932755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005173, 33.310143, 33.138035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035313, 33.673893, 33.301670>,  <38.053398, 33.892143, 33.399849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035313, 33.673893, 33.301670>,  <38.005173, 33.310143, 33.138035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035313, 33.673893, 33.301670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104389, -0.415192, 0.903725,
		0.991678, -0.025392, -0.126215,
		0.075351, 0.909379, 0.409086,
		38.057919, 33.946709, 33.424397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421268, 33.180046, 33.706123>,  <38.005173, 33.310143, 33.138035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421268, 33.180046, 33.706123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262321, 33.542431, 33.764545>,  <38.166954, 33.759861, 33.799599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262321, 33.542431, 33.764545>,  <38.421268, 33.180046, 33.706123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262321, 33.542431, 33.764545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015432, -0.152544, 0.988176,
		0.917528, 0.394926, 0.046636,
		-0.397371, 0.905960, 0.146058,
		38.143108, 33.814220, 33.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744522, 33.329659, 34.243633>,  <38.421268, 33.180046, 33.706123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744522, 33.329659, 34.243633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441795, 33.590057, 34.267097>,  <38.260159, 33.746296, 34.281178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441795, 33.590057, 34.267097>,  <38.744522, 33.329659, 34.243633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441795, 33.590057, 34.267097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089166, 0.013916, 0.995920,
		0.647520, 0.758956, -0.068578,
		-0.756814, 0.650993, 0.058662,
		38.214752, 33.785355, 34.284695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868404, 33.825809, 34.847069>,  <38.744522, 33.329659, 34.243633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868404, 33.825809, 34.847069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475758, 33.838993, 34.771862>,  <38.240170, 33.846905, 34.726738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475758, 33.838993, 34.771862>,  <38.868404, 33.825809, 34.847069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475758, 33.838993, 34.771862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190680, -0.123707, 0.973826,
		0.008841, 0.991771, 0.127718,
		-0.981613, 0.032963, -0.188017,
		38.181274, 33.848881, 34.715458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426796, 34.440258, 34.716190>,  <38.868404, 33.825809, 34.847069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426796, 34.440258, 34.716190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812496, 34.411568, 34.818230>,  <40.043915, 34.394352, 34.879452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812496, 34.411568, 34.818230>,  <39.426796, 34.440258, 34.716190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812496, 34.411568, 34.818230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264896, 0.286281, -0.920800,
		-0.006981, 0.955457, 0.295048,
		0.964252, -0.071728, 0.255095,
		40.101772, 34.390049, 34.894756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811485, 35.102089, 34.611057>,  <39.426796, 34.440258, 34.716190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811485, 35.102089, 34.611057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078480, 34.804600, 34.596409>,  <40.238674, 34.626106, 34.587620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078480, 34.804600, 34.596409>,  <39.811485, 35.102089, 34.611057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078480, 34.804600, 34.596409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371735, 0.375430, -0.849038,
		0.645198, 0.553106, 0.527062,
		0.667483, -0.743724, -0.036618,
		40.278725, 34.581482, 34.585423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362995, 35.378479, 34.252865>,  <39.811485, 35.102089, 34.611057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362995, 35.378479, 34.252865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493652, 35.000950, 34.272846>,  <40.572048, 34.774433, 34.284836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493652, 35.000950, 34.272846>,  <40.362995, 35.378479, 34.252865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493652, 35.000950, 34.272846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333298, 0.065568, -0.940539,
		0.884430, 0.323873, 0.335993,
		0.326645, -0.943826, 0.049955,
		40.591644, 34.717804, 34.287834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101353, 35.410480, 34.218132>,  <40.362995, 35.378479, 34.252865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101353, 35.410480, 34.218132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.945694, 35.063553, 34.093987>,  <40.852299, 34.855396, 34.019497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.945694, 35.063553, 34.093987>,  <41.101353, 35.410480, 34.218132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945694, 35.063553, 34.093987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407667, 0.139986, -0.902337,
		0.826058, -0.477668, 0.299101,
		-0.389148, -0.867316, -0.310366,
		40.828949, 34.803360, 34.000877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693966, 34.934914, 33.889099>,  <41.101353, 35.410480, 34.218132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693966, 34.934914, 33.889099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341282, 34.810978, 33.746788>,  <41.129669, 34.736614, 33.661400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341282, 34.810978, 33.746788>,  <41.693966, 34.934914, 33.889099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341282, 34.810978, 33.746788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377173, -0.009928, -0.926090,
		0.283411, -0.950736, 0.125618,
		-0.881714, -0.309844, -0.355778,
		41.076767, 34.718025, 33.640053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806606, 34.543045, 33.243561>,  <41.693966, 34.934914, 33.889099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806606, 34.543045, 33.243561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410454, 34.555004, 33.189526>,  <41.172764, 34.562180, 33.157104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410454, 34.555004, 33.189526>,  <41.806606, 34.543045, 33.243561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410454, 34.555004, 33.189526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137234, 0.087969, -0.986625,
		-0.017617, -0.995674, -0.091226,
		-0.990382, 0.029901, -0.135091,
		41.113338, 34.563972, 33.148998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615086, 33.986671, 32.774014>,  <41.806606, 34.543045, 33.243561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615086, 33.986671, 32.774014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.353199, 34.287678, 32.745537>,  <41.196068, 34.468281, 32.728451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.353199, 34.287678, 32.745537>,  <41.615086, 33.986671, 32.774014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353199, 34.287678, 32.745537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225621, 0.104670, -0.968576,
		-0.721419, -0.650201, -0.238312,
		-0.654714, 0.752517, -0.071189,
		41.156784, 34.513432, 32.724182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166191, 33.817276, 32.232208>,  <41.615086, 33.986671, 32.774014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166191, 33.817276, 32.232208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.121838, 34.213936, 32.258553>,  <41.095226, 34.451931, 32.274357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.121838, 34.213936, 32.258553>,  <41.166191, 33.817276, 32.232208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121838, 34.213936, 32.258553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087569, 0.075756, -0.993274,
		-0.989968, -0.104369, -0.095238,
		-0.110882, 0.991649, 0.065857,
		41.088573, 34.511429, 32.278309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841858, 34.094273, 31.675364>,  <41.166191, 33.817276, 32.232208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841858, 34.094273, 31.675364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998661, 34.440845, 31.799053>,  <41.092743, 34.648788, 31.873268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998661, 34.440845, 31.799053>,  <40.841858, 34.094273, 31.675364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998661, 34.440845, 31.799053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083937, 0.301041, -0.949910,
		-0.916124, 0.398329, 0.045285,
		0.392009, 0.866434, 0.309226,
		41.116264, 34.700775, 31.891821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549171, 34.546112, 31.214006>,  <40.841858, 34.094273, 31.675364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549171, 34.546112, 31.214006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867847, 34.740475, 31.357773>,  <41.059055, 34.857090, 31.444033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867847, 34.740475, 31.357773>,  <40.549171, 34.546112, 31.214006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867847, 34.740475, 31.357773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180583, 0.376136, -0.908797,
		-0.576777, 0.788935, 0.211918,
		0.796692, 0.485904, 0.359415,
		41.106853, 34.886246, 31.465597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575649, 35.293812, 30.998949>,  <40.549171, 34.546112, 31.214006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575649, 35.293812, 30.998949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958366, 35.221638, 31.090153>,  <41.187996, 35.178333, 31.144875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958366, 35.221638, 31.090153>,  <40.575649, 35.293812, 30.998949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958366, 35.221638, 31.090153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276370, 0.320657, -0.905979,
		0.090357, 0.929851, 0.356670,
		0.956794, -0.180435, 0.228010,
		41.245403, 35.167507, 31.158556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859554, 35.830425, 30.673521>,  <40.575649, 35.293812, 30.998949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859554, 35.830425, 30.673521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165043, 35.585701, 30.755903>,  <41.348335, 35.438866, 30.805332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165043, 35.585701, 30.755903>,  <40.859554, 35.830425, 30.673521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165043, 35.585701, 30.755903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436463, 0.254311, -0.863033,
		0.475632, 0.749012, 0.461254,
		0.763724, -0.611806, 0.205957,
		41.394161, 35.402161, 30.817690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427654, 36.255108, 30.474567>,  <40.859554, 35.830425, 30.673521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427654, 36.255108, 30.474567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.533173, 35.869278, 30.474506>,  <41.596485, 35.637779, 30.474470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.533173, 35.869278, 30.474506>,  <41.427654, 36.255108, 30.474567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533173, 35.869278, 30.474506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345956, 0.094760, -0.933453,
		0.900403, 0.246189, 0.358699,
		0.263797, -0.964578, -0.000151,
		41.612312, 35.579903, 30.474461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086403, 36.281925, 30.256668>,  <41.427654, 36.255108, 30.474567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086403, 36.281925, 30.256668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.971096, 35.906342, 30.181568>,  <41.901913, 35.680992, 30.136507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.971096, 35.906342, 30.181568>,  <42.086403, 36.281925, 30.256668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971096, 35.906342, 30.181568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176742, 0.140531, -0.974173,
		0.941096, -0.314009, 0.125443,
		-0.288270, -0.938962, -0.187752,
		41.884613, 35.624653, 30.125242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598656, 35.999577, 29.864325>,  <42.086403, 36.281925, 30.256668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598656, 35.999577, 29.864325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.284492, 35.762039, 29.794481>,  <42.095993, 35.619518, 29.752575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.284492, 35.762039, 29.794481>,  <42.598656, 35.999577, 29.864325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284492, 35.762039, 29.794481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120761, 0.129661, -0.984177,
		0.607082, -0.794068, -0.030124,
		-0.785410, -0.593839, -0.174607,
		42.048870, 35.583889, 29.742100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752277, 35.466324, 29.411581>,  <42.598656, 35.999577, 29.864325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752277, 35.466324, 29.411581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.357853, 35.500149, 29.354277>,  <42.121197, 35.520443, 29.319893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.357853, 35.500149, 29.354277>,  <42.752277, 35.466324, 29.411581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357853, 35.500149, 29.354277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147187, 0.042126, -0.988211,
		-0.077530, -0.995527, -0.053985,
		-0.986065, 0.084562, -0.143263,
		42.062035, 35.525517, 29.311298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602436, 34.872021, 28.991661>,  <42.752277, 35.466324, 29.411581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602436, 34.872021, 28.991661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299435, 35.128036, 28.940210>,  <42.117634, 35.281647, 28.909340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299435, 35.128036, 28.940210>,  <42.602436, 34.872021, 28.991661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299435, 35.128036, 28.940210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148998, -0.022329, -0.988585,
		-0.635605, -0.768018, -0.078450,
		-0.757499, 0.640039, -0.128626,
		42.072186, 35.320049, 28.901623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176670, 34.629871, 28.465754>,  <42.602436, 34.872021, 28.991661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176670, 34.629871, 28.465754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068310, 35.014820, 28.474319>,  <42.003292, 35.245789, 28.479460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068310, 35.014820, 28.474319>,  <42.176670, 34.629871, 28.465754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068310, 35.014820, 28.474319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154028, 0.065296, -0.985907,
		-0.950203, -0.263788, -0.165920,
		-0.270904, 0.962368, 0.021414,
		41.987038, 35.303532, 28.480743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.758430, 34.703777, 27.776413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810291, 35.079941, 27.902155>,  <41.841408, 35.305641, 27.977600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810291, 35.079941, 27.902155>,  <41.758430, 34.703777, 27.776413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810291, 35.079941, 27.902155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041439, 0.311615, -0.949305,
		-0.990693, 0.136106, 0.001432,
		0.129652, 0.940410, 0.314355,
		41.849186, 35.362064, 27.996462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191643, 35.200287, 27.557737>,  <41.758430, 34.703777, 27.776413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191643, 35.200287, 27.557737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500931, 35.449276, 27.606163>,  <41.686504, 35.598671, 27.635220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500931, 35.449276, 27.606163>,  <41.191643, 35.200287, 27.557737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500931, 35.449276, 27.606163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034510, 0.149326, -0.988186,
		-0.633196, 0.768264, 0.093980,
		0.773221, 0.622472, 0.121066,
		41.732899, 35.636017, 27.642483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015598, 35.821087, 27.158394>,  <41.191643, 35.200287, 27.557737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015598, 35.821087, 27.158394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408550, 35.811802, 27.232582>,  <41.644321, 35.806232, 27.277094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408550, 35.811802, 27.232582>,  <41.015598, 35.821087, 27.158394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408550, 35.811802, 27.232582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186874, 0.100959, -0.977182,
		0.003956, 0.994620, 0.103517,
		0.982376, -0.023210, 0.185469,
		41.703262, 35.804840, 27.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306618, 36.402309, 26.847034>,  <41.015598, 35.821087, 27.158394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306618, 36.402309, 26.847034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613121, 36.146549, 26.872374>,  <41.797024, 35.993092, 26.887577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613121, 36.146549, 26.872374>,  <41.306618, 36.402309, 26.847034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613121, 36.146549, 26.872374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283138, 0.247506, -0.926592,
		0.576789, 0.727943, 0.370693,
		0.766256, -0.639405, 0.063350,
		41.842999, 35.954727, 26.891378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766735, 36.763885, 26.566179>,  <41.306618, 36.402309, 26.847034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766735, 36.763885, 26.566179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.923473, 36.395905, 26.561308>,  <42.017517, 36.175117, 26.558386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.923473, 36.395905, 26.561308>,  <41.766735, 36.763885, 26.566179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923473, 36.395905, 26.561308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366745, 0.168324, -0.914967,
		0.843774, 0.354060, 0.403344,
		0.391846, -0.919950, -0.012177,
		42.041027, 36.119919, 26.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128880, 36.796078, 26.054605>,  <41.766735, 36.763885, 26.566179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128880, 36.796078, 26.054605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172508, 36.401424, 26.103025>,  <42.198685, 36.164631, 26.132078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172508, 36.401424, 26.103025>,  <42.128880, 36.796078, 26.054605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172508, 36.401424, 26.103025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131418, -0.106397, -0.985601,
		0.985309, 0.123407, 0.118058,
		0.109069, -0.986636, 0.121052,
		42.205231, 36.105434, 26.139341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752556, 36.687672, 25.698576>,  <42.128880, 36.796078, 26.054605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752556, 36.687672, 25.698576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.526897, 36.357975, 25.718014>,  <42.391502, 36.160156, 25.729677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.526897, 36.357975, 25.718014>,  <42.752556, 36.687672, 25.698576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526897, 36.357975, 25.718014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178376, -0.179129, -0.967520,
		0.806178, -0.537153, 0.248080,
		-0.564144, -0.824245, 0.048595,
		42.357655, 36.110703, 25.732592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105751, 36.113117, 25.361891>,  <42.752556, 36.687672, 25.698576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105751, 36.113117, 25.361891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.727943, 35.981766, 25.364828>,  <42.501259, 35.902954, 25.366590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.727943, 35.981766, 25.364828>,  <43.105751, 36.113117, 25.361891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727943, 35.981766, 25.364828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098414, -0.304260, -0.947492,
		0.313373, -0.894199, 0.319697,
		-0.944517, -0.328381, 0.007345,
		42.444588, 35.883251, 25.367031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097424, 35.366856, 25.257803>,  <43.105751, 36.113117, 25.361891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097424, 35.366856, 25.257803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.736176, 35.479347, 25.128012>,  <42.519428, 35.546841, 25.050137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.736176, 35.479347, 25.128012>,  <43.097424, 35.366856, 25.257803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736176, 35.479347, 25.128012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177185, -0.444258, -0.878203,
		-0.391122, -0.850616, 0.351391,
		-0.903122, 0.281223, -0.324475,
		42.465240, 35.563717, 25.030668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024479, 34.959637, 24.714676>,  <43.097424, 35.366856, 25.257803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024479, 34.959637, 24.714676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714191, 35.205711, 24.658375>,  <42.528019, 35.353355, 24.624594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714191, 35.205711, 24.658375>,  <43.024479, 34.959637, 24.714676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714191, 35.205711, 24.658375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048771, -0.163931, -0.985265,
		-0.629194, -0.771151, 0.097161,
		-0.775716, 0.615184, -0.140754,
		42.481476, 35.390266, 24.616148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303074, 34.615986, 24.431105>,  <43.024479, 34.959637, 24.714676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303074, 34.615986, 24.431105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362282, 34.997482, 24.326447>,  <42.397808, 35.226379, 24.263651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362282, 34.997482, 24.326447>,  <42.303074, 34.615986, 24.431105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362282, 34.997482, 24.326447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030487, -0.260033, -0.965118,
		-0.988514, 0.150837, -0.009415,
		0.148024, 0.953746, -0.261645,
		42.406689, 35.283607, 24.247953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837887, 34.696495, 23.762354>,  <42.303074, 34.615986, 24.431105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837887, 34.696495, 23.762354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126926, 34.972961, 23.766893>,  <42.300350, 35.138844, 23.769617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126926, 34.972961, 23.766893>,  <41.837887, 34.696495, 23.762354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126926, 34.972961, 23.766893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044018, 0.062391, -0.997081,
		-0.689860, 0.719995, 0.075508,
		0.722604, 0.691169, 0.011348,
		42.343708, 35.180313, 23.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609558, 35.218052, 23.380154>,  <41.837887, 34.696495, 23.762354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609558, 35.218052, 23.380154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.001812, 35.292168, 23.405537>,  <42.237164, 35.336636, 23.420767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.001812, 35.292168, 23.405537>,  <41.609558, 35.218052, 23.380154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001812, 35.292168, 23.405537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036434, 0.145763, -0.988648,
		-0.192436, 0.971813, 0.136189,
		0.980633, 0.185290, 0.063457,
		42.296001, 35.347755, 23.424574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695229, 35.682018, 22.907236>,  <41.609558, 35.218052, 23.380154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695229, 35.682018, 22.907236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078201, 35.592419, 22.980062>,  <42.307983, 35.538658, 23.023758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078201, 35.592419, 22.980062>,  <41.695229, 35.682018, 22.907236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078201, 35.592419, 22.980062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206140, 0.089060, -0.974461,
		0.202061, 0.970512, 0.131444,
		0.957433, -0.223997, 0.182066,
		42.365433, 35.525219, 23.034681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092606, 36.215698, 22.587366>,  <41.695229, 35.682018, 22.907236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092606, 36.215698, 22.587366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.333900, 35.898483, 22.621294>,  <42.478676, 35.708153, 22.641651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.333900, 35.898483, 22.621294>,  <42.092606, 36.215698, 22.587366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333900, 35.898483, 22.621294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290360, 0.119315, -0.949450,
		0.742831, 0.597371, 0.302243,
		0.603236, -0.793040, 0.084822,
		42.514870, 35.660572, 22.646740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735409, 36.413460, 22.142183>,  <42.092606, 36.215698, 22.587366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735409, 36.413460, 22.142183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729145, 36.018818, 22.207129>,  <42.725388, 35.782032, 22.246096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.729145, 36.018818, 22.207129>,  <42.735409, 36.413460, 22.142183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729145, 36.018818, 22.207129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295400, -0.159701, -0.941931,
		0.955245, 0.033211, 0.293945,
		-0.015661, -0.986607, 0.162364,
		42.724445, 35.722836, 22.255838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374985, 36.155010, 21.766068>,  <42.735409, 36.413460, 22.142183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374985, 36.155010, 21.766068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132652, 35.843666, 21.831938>,  <42.987251, 35.656860, 21.871460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.132652, 35.843666, 21.831938>,  <43.374985, 36.155010, 21.766068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132652, 35.843666, 21.831938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103184, -0.282109, -0.953817,
		0.788875, -0.560859, 0.251225,
		-0.605829, -0.778365, 0.164677,
		42.950905, 35.610157, 21.881340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721882, 35.495876, 21.513519>,  <43.374985, 36.155010, 21.766068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721882, 35.495876, 21.513519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323727, 35.457512, 21.514273>,  <43.084835, 35.434494, 21.514725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323727, 35.457512, 21.514273>,  <43.721882, 35.495876, 21.513519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323727, 35.457512, 21.514273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022568, -0.253237, -0.967141,
		0.093234, -0.962638, 0.254234,
		-0.995389, -0.095908, 0.001886,
		43.025108, 35.428741, 21.514839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622185, 34.904621, 21.092394>,  <43.721882, 35.495876, 21.513519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622185, 34.904621, 21.092394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267147, 35.088482, 21.104410>,  <43.054127, 35.198799, 21.111620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267147, 35.088482, 21.104410>,  <43.622185, 34.904621, 21.092394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267147, 35.088482, 21.104410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071454, -0.072967, -0.994771,
		-0.455054, -0.885098, 0.097609,
		-0.887592, 0.459650, 0.030040,
		43.000870, 35.226376, 21.113422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285763, 34.544128, 20.592264>,  <43.622185, 34.904621, 21.092394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285763, 34.544128, 20.592264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085133, 34.887367, 20.636253>,  <42.964752, 35.093311, 20.662647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085133, 34.887367, 20.636253>,  <43.285763, 34.544128, 20.592264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085133, 34.887367, 20.636253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177307, 0.022453, -0.983899,
		-0.846747, -0.513002, 0.140884,
		-0.501579, 0.858094, 0.109971,
		42.934658, 35.144794, 20.669245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722450, 34.401554, 20.313759>,  <43.285763, 34.544128, 20.592264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722450, 34.401554, 20.313759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749229, 34.800106, 20.292822>,  <42.765297, 35.039238, 20.280260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749229, 34.800106, 20.292822>,  <42.722450, 34.401554, 20.313759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749229, 34.800106, 20.292822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227978, -0.035795, -0.973008,
		-0.971362, 0.077078, 0.224756,
		0.066952, 0.996382, -0.052342,
		42.769314, 35.099022, 20.277119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069263, 34.694786, 20.050098>,  <42.722450, 34.401554, 20.313759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069263, 34.694786, 20.050098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.351418, 34.968105, 19.974686>,  <42.520710, 35.132095, 19.929438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.351418, 34.968105, 19.974686>,  <42.069263, 34.694786, 20.050098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351418, 34.968105, 19.974686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329376, 0.080453, -0.940765,
		-0.627651, 0.725698, 0.281811,
		0.705383, 0.683294, -0.188532,
		42.563034, 35.173092, 19.918127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905037, 35.439316, 19.926449>,  <42.069263, 34.694786, 20.050098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905037, 35.439316, 19.926449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204918, 35.324833, 19.687777>,  <42.384846, 35.256142, 19.544573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204918, 35.324833, 19.687777>,  <41.905037, 35.439316, 19.926449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204918, 35.324833, 19.687777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589512, 0.120849, -0.798668,
		0.300693, 0.950516, -0.078122,
		0.749706, -0.286208, -0.596679,
		42.429829, 35.238972, 19.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114586, 35.973480, 19.393990>,  <41.905037, 35.439316, 19.926449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114586, 35.973480, 19.393990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225559, 35.608013, 19.275169>,  <42.292141, 35.388733, 19.203876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225559, 35.608013, 19.275169>,  <42.114586, 35.973480, 19.393990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225559, 35.608013, 19.275169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385039, 0.177534, -0.905664,
		0.880215, 0.365634, -0.302545,
		0.277430, -0.913670, -0.297051,
		42.308788, 35.333912, 19.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475101, 35.726456, 19.094168>,  <42.114586, 35.973480, 19.393990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475101, 35.726456, 19.094168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.135548, 35.824955, 18.907080>,  <40.931816, 35.884056, 18.794827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.135548, 35.824955, 18.907080>,  <41.475101, 35.726456, 19.094168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135548, 35.824955, 18.907080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461186, 0.087316, 0.882997,
		0.258277, 0.965265, 0.039446,
		-0.848882, 0.246250, -0.467719,
		40.880882, 35.898830, 18.766764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206093, 36.364117, 19.334627>,  <41.475101, 35.726456, 19.094168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206093, 36.364117, 19.334627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881332, 36.161736, 19.218121>,  <40.686478, 36.040306, 19.148216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881332, 36.161736, 19.218121>,  <41.206093, 36.364117, 19.334627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881332, 36.161736, 19.218121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413116, 0.145388, 0.898998,
		-0.412501, 0.850222, -0.327056,
		-0.811898, -0.505950, -0.291267,
		40.637764, 36.009949, 19.130741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599174, 36.716316, 19.657623>,  <41.206093, 36.364117, 19.334627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599174, 36.716316, 19.657623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.475418, 36.345741, 19.571844>,  <40.401165, 36.123398, 19.520376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.475418, 36.345741, 19.571844>,  <40.599174, 36.716316, 19.657623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475418, 36.345741, 19.571844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435381, -0.062484, 0.898075,
		-0.845411, 0.371224, -0.384022,
		-0.309392, -0.926439, -0.214448,
		40.382599, 36.067810, 19.507509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950264, 36.654457, 19.933859>,  <40.599174, 36.716316, 19.657623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950264, 36.654457, 19.933859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070763, 36.274349, 19.902264>,  <40.143063, 36.046284, 19.883307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.070763, 36.274349, 19.902264>,  <39.950264, 36.654457, 19.933859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070763, 36.274349, 19.902264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379083, -0.195358, 0.904506,
		-0.874955, -0.242535, -0.419082,
		0.301246, -0.950269, -0.078989,
		40.161137, 35.989269, 19.878567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410408, 36.213696, 20.185320>,  <39.950264, 36.654457, 19.933859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410408, 36.213696, 20.185320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735767, 35.981464, 20.199818>,  <39.930984, 35.842125, 20.208517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735767, 35.981464, 20.199818>,  <39.410408, 36.213696, 20.185320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735767, 35.981464, 20.199818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249707, -0.292212, 0.923178,
		-0.525384, -0.759963, -0.382659,
		0.813399, -0.580576, 0.036244,
		39.979786, 35.807293, 20.210691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210320, 35.496334, 20.421942>,  <39.410408, 36.213696, 20.185320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210320, 35.496334, 20.421942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591888, 35.558308, 20.524723>,  <39.820831, 35.595493, 20.586391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591888, 35.558308, 20.524723>,  <39.210320, 35.496334, 20.421942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591888, 35.558308, 20.524723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216330, -0.238297, 0.946792,
		0.207922, -0.958755, -0.193800,
		0.953923, 0.154934, 0.256955,
		39.878067, 35.604786, 20.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375416, 34.931595, 20.826387>,  <39.210320, 35.496334, 20.421942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375416, 34.931595, 20.826387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647736, 35.216740, 20.893728>,  <39.811127, 35.387829, 20.934132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.647736, 35.216740, 20.893728>,  <39.375416, 34.931595, 20.826387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647736, 35.216740, 20.893728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143352, -0.095722, 0.985032,
		0.718309, -0.694739, 0.037023,
		0.680795, 0.712864, 0.168350,
		39.851974, 35.430599, 20.944233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840397, 34.699814, 21.333193>,  <39.375416, 34.931595, 20.826387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840397, 34.699814, 21.333193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880905, 35.097530, 21.346659>,  <39.905209, 35.336159, 21.354738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880905, 35.097530, 21.346659>,  <39.840397, 34.699814, 21.333193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880905, 35.097530, 21.346659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023313, -0.031456, 0.999233,
		0.994586, -0.101978, 0.019994,
		0.101271, 0.994289, 0.033663,
		39.911285, 35.395817, 21.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189041, 34.784065, 21.950191>,  <39.840397, 34.699814, 21.333193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189041, 34.784065, 21.950191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110184, 35.173180, 21.901501>,  <40.062870, 35.406651, 21.872286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110184, 35.173180, 21.901501>,  <40.189041, 34.784065, 21.950191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110184, 35.173180, 21.901501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045701, 0.114911, 0.992324,
		0.979309, 0.201195, 0.021804,
		-0.197145, 0.972788, -0.121728,
		40.051041, 35.465015, 21.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737305, 35.214710, 22.244001>,  <40.189041, 34.784065, 21.950191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737305, 35.214710, 22.244001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392326, 35.415730, 22.219898>,  <40.185337, 35.536339, 22.205437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392326, 35.415730, 22.219898>,  <40.737305, 35.214710, 22.244001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392326, 35.415730, 22.219898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044118, 0.043963, 0.998059,
		0.504218, 0.863433, -0.015744,
		-0.862449, 0.502545, -0.060260,
		40.133591, 35.566494, 22.201820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855145, 35.687115, 22.666817>,  <40.737305, 35.214710, 22.244001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855145, 35.687115, 22.666817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.455597, 35.677898, 22.650181>,  <40.215870, 35.672367, 22.640200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.455597, 35.677898, 22.650181>,  <40.855145, 35.687115, 22.666817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455597, 35.677898, 22.650181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042690, 0.049625, 0.997855,
		-0.020931, 0.998502, -0.050553,
		-0.998869, -0.023044, -0.041588,
		40.155937, 35.670986, 22.637705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695698, 36.060482, 23.237793>,  <40.855145, 35.687115, 22.666817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695698, 36.060482, 23.237793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342884, 35.893135, 23.151085>,  <40.131195, 35.792728, 23.099060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342884, 35.893135, 23.151085>,  <40.695698, 36.060482, 23.237793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342884, 35.893135, 23.151085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217354, -0.046915, 0.974965,
		-0.418062, 0.907066, -0.049553,
		-0.882032, -0.418366, -0.216768,
		40.078274, 35.767624, 23.086054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324169, 36.348915, 23.660822>,  <40.695698, 36.060482, 23.237793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324169, 36.348915, 23.660822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126526, 36.010506, 23.580723>,  <40.007942, 35.807461, 23.532663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126526, 36.010506, 23.580723>,  <40.324169, 36.348915, 23.660822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126526, 36.010506, 23.580723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207608, -0.108848, 0.972137,
		-0.844251, 0.521911, -0.121860,
		-0.494105, -0.846027, -0.200248,
		39.978294, 35.756699, 23.520649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738983, 36.463005, 24.054028>,  <40.324169, 36.348915, 23.660822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738983, 36.463005, 24.054028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778198, 36.076138, 23.960238>,  <39.801727, 35.844017, 23.903963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778198, 36.076138, 23.960238>,  <39.738983, 36.463005, 24.054028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778198, 36.076138, 23.960238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336001, -0.253941, 0.906983,
		-0.936746, -0.010131, -0.349864,
		0.098033, -0.967167, -0.234474,
		39.807610, 35.785988, 23.889894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136528, 36.120014, 24.346478>,  <39.738983, 36.463005, 24.054028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136528, 36.120014, 24.346478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411674, 35.838905, 24.273880>,  <39.576763, 35.670238, 24.230322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411674, 35.838905, 24.273880>,  <39.136528, 36.120014, 24.346478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411674, 35.838905, 24.273880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156638, -0.387887, 0.908300,
		-0.708731, -0.596363, -0.376897,
		0.687869, -0.702777, -0.181494,
		39.618034, 35.628071, 24.219433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851402, 35.389286, 24.450262>,  <39.136528, 36.120014, 24.346478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851402, 35.389286, 24.450262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248291, 35.358833, 24.489664>,  <39.486423, 35.340561, 24.513306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248291, 35.358833, 24.489664>,  <38.851402, 35.389286, 24.450262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248291, 35.358833, 24.489664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116510, -0.288986, 0.950217,
		-0.043875, -0.954301, -0.295608,
		0.992220, -0.076131, 0.098506,
		39.545956, 35.335995, 24.519217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930958, 34.775959, 24.752230>,  <38.851402, 35.389286, 24.450262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930958, 34.775959, 24.752230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295670, 34.930271, 24.808559>,  <39.514496, 35.022858, 24.842358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295670, 34.930271, 24.808559>,  <38.930958, 34.775959, 24.752230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295670, 34.930271, 24.808559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059815, -0.463997, 0.883815,
		0.406304, -0.797419, -0.446138,
		0.911778, 0.385783, 0.140826,
		39.569202, 35.046005, 24.850807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392075, 34.242573, 25.037924>,  <38.930958, 34.775959, 24.752230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392075, 34.242573, 25.037924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.565483, 34.579006, 25.167315>,  <39.669529, 34.780865, 25.244949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.565483, 34.579006, 25.167315>,  <39.392075, 34.242573, 25.037924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565483, 34.579006, 25.167315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048613, -0.380269, 0.923597,
		0.899831, -0.384674, -0.205742,
		0.433521, 0.841084, 0.323478,
		39.695538, 34.831329, 25.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004818, 34.044918, 25.460894>,  <39.392075, 34.242573, 25.037924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004818, 34.044918, 25.460894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944603, 34.420689, 25.584059>,  <39.908474, 34.646152, 25.657959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944603, 34.420689, 25.584059>,  <40.004818, 34.044918, 25.460894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944603, 34.420689, 25.584059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150539, -0.286048, 0.946316,
		0.977076, 0.188808, -0.098360,
		-0.150537, 0.939429, 0.307914,
		39.899441, 34.702518, 25.676434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530846, 34.196152, 26.069958>,  <40.004818, 34.044918, 25.460894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530846, 34.196152, 26.069958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.223438, 34.446747, 26.121956>,  <40.038994, 34.597103, 26.153154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.223438, 34.446747, 26.121956>,  <40.530846, 34.196152, 26.069958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223438, 34.446747, 26.121956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179244, 0.015766, 0.983678,
		0.614212, 0.779272, -0.124411,
		-0.768515, 0.626487, 0.129996,
		39.992886, 34.634693, 26.160955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.291309, 34.472393, 31.040367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031166, 34.764362, 30.956230>,  <41.875080, 34.939545, 30.905748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031166, 34.764362, 30.956230>,  <42.291309, 34.472393, 31.040367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031166, 34.764362, 30.956230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305597, 0.002097, 0.952159,
		0.695444, 0.683526, 0.221698,
		-0.650361, 0.729923, -0.210342,
		41.836060, 34.983337, 30.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453423, 34.969273, 31.509418>,  <42.291309, 34.472393, 31.040367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453423, 34.969273, 31.509418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071350, 35.006752, 31.397102>,  <41.842106, 35.029240, 31.329714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071350, 35.006752, 31.397102>,  <42.453423, 34.969273, 31.509418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071350, 35.006752, 31.397102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284536, -0.029095, 0.958224,
		0.081619, 0.995175, 0.054453,
		-0.955184, 0.093703, -0.280789,
		41.784794, 35.034863, 31.312866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137138, 35.536781, 31.985458>,  <42.453423, 34.969273, 31.509418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137138, 35.536781, 31.985458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833309, 35.323074, 31.837078>,  <41.651012, 35.194851, 31.748051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833309, 35.323074, 31.837078>,  <42.137138, 35.536781, 31.985458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833309, 35.323074, 31.837078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460342, 0.038685, 0.886898,
		-0.459492, 0.844429, -0.275331,
		-0.759574, -0.534269, -0.370951,
		41.605438, 35.162792, 31.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491798, 35.870697, 32.141716>,  <42.137138, 35.536781, 31.985458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491798, 35.870697, 32.141716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369671, 35.492867, 32.093464>,  <41.296394, 35.266167, 32.064510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369671, 35.492867, 32.093464>,  <41.491798, 35.870697, 32.141716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369671, 35.492867, 32.093464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544730, 0.069342, 0.835740,
		-0.781057, 0.320879, -0.535711,
		-0.305319, -0.944579, -0.120633,
		41.278076, 35.209492, 32.057274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834328, 35.848858, 32.413662>,  <41.491798, 35.870697, 32.141716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834328, 35.848858, 32.413662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916733, 35.458481, 32.385101>,  <40.966175, 35.224255, 32.367966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916733, 35.458481, 32.385101>,  <40.834328, 35.848858, 32.413662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916733, 35.458481, 32.385101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513717, -0.169964, 0.840956,
		-0.832859, -0.136566, -0.536372,
		0.206010, -0.975941, -0.071400,
		40.978535, 35.165699, 32.363682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242489, 35.408836, 32.572323>,  <40.834328, 35.848858, 32.413662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242489, 35.408836, 32.572323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548267, 35.157223, 32.628803>,  <40.731735, 35.006256, 32.662689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.548267, 35.157223, 32.628803>,  <40.242489, 35.408836, 32.572323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548267, 35.157223, 32.628803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361243, -0.236547, 0.901970,
		-0.533970, -0.740515, -0.408062,
		0.764448, -0.629034, 0.141197,
		40.777603, 34.968513, 32.671162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906010, 34.841900, 32.900143>,  <40.242489, 35.408836, 32.572323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906010, 34.841900, 32.900143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289547, 34.789238, 33.000774>,  <40.519669, 34.757641, 33.061153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289547, 34.789238, 33.000774>,  <39.906010, 34.841900, 32.900143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289547, 34.789238, 33.000774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283654, -0.403794, 0.869765,
		-0.012921, -0.905327, -0.424519,
		0.958840, -0.131655, 0.251583,
		40.577198, 34.749741, 33.076248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914829, 34.320541, 33.288582>,  <39.906010, 34.841900, 32.900143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914829, 34.320541, 33.288582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277184, 34.456047, 33.390255>,  <40.494595, 34.537350, 33.451260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.277184, 34.456047, 33.390255>,  <39.914829, 34.320541, 33.288582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277184, 34.456047, 33.390255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101835, -0.408339, 0.907132,
		0.411098, -0.847643, -0.335410,
		0.905885, 0.338764, 0.254186,
		40.548950, 34.557674, 33.466511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301846, 33.666656, 33.585178>,  <39.914829, 34.320541, 33.288582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301846, 33.666656, 33.585178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466915, 34.007492, 33.713955>,  <40.565956, 34.211994, 33.791222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466915, 34.007492, 33.713955>,  <40.301846, 33.666656, 33.585178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466915, 34.007492, 33.713955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149837, -0.285118, 0.946708,
		0.898470, -0.438920, 0.010013,
		0.412674, 0.852090, 0.321937,
		40.590717, 34.263119, 33.810535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947453, 33.463493, 34.005894>,  <40.301846, 33.666656, 33.585178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947453, 33.463493, 34.005894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821995, 33.831779, 34.098774>,  <40.746719, 34.052750, 34.154503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821995, 33.831779, 34.098774>,  <40.947453, 33.463493, 34.005894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821995, 33.831779, 34.098774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094921, -0.273714, 0.957116,
		0.944785, 0.278151, 0.173243,
		-0.313642, 0.920713, 0.232198,
		40.727901, 34.107994, 34.168434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175789, 33.592060, 34.568485>,  <40.947453, 33.463493, 34.005894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175789, 33.592060, 34.568485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904720, 33.885998, 34.579514>,  <40.742077, 34.062359, 34.586132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904720, 33.885998, 34.579514>,  <41.175789, 33.592060, 34.568485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904720, 33.885998, 34.579514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115730, -0.143604, 0.982845,
		0.726197, 0.662859, 0.182360,
		-0.677675, 0.734844, 0.027572,
		40.701416, 34.106449, 34.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226082, 33.932903, 35.196362>,  <41.175789, 33.592060, 34.568485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226082, 33.932903, 35.196362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865334, 34.074276, 35.096996>,  <40.648884, 34.159100, 35.037376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.865334, 34.074276, 35.096996>,  <41.226082, 33.932903, 35.196362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865334, 34.074276, 35.096996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213821, 0.134459, 0.967575,
		0.375377, 0.925745, -0.045693,
		-0.901872, 0.353435, -0.248417,
		40.594772, 34.180305, 35.022472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016094, 34.655941, 35.392231>,  <41.226082, 33.932903, 35.196362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016094, 34.655941, 35.392231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681465, 34.437534, 35.374252>,  <40.480690, 34.306492, 35.363464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681465, 34.437534, 35.374252>,  <41.016094, 34.655941, 35.392231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681465, 34.437534, 35.374252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129274, 0.117016, 0.984680,
		-0.532392, 0.829563, -0.168478,
		-0.836569, -0.546016, -0.044942,
		40.430496, 34.273731, 35.360771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502525, 35.071125, 35.752167>,  <41.016094, 34.655941, 35.392231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502525, 35.071125, 35.752167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413345, 34.681438, 35.765999>,  <40.359837, 34.447628, 35.774300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413345, 34.681438, 35.765999>,  <40.502525, 35.071125, 35.752167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413345, 34.681438, 35.765999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218753, 0.084567, 0.972109,
		-0.949969, 0.209164, -0.231967,
		-0.222947, -0.974217, 0.034581,
		40.346462, 34.389172, 35.776375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112953, 35.539562, 35.657463>,  <40.502525, 35.071125, 35.752167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112953, 35.539562, 35.657463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152061, 35.915680, 35.787868>,  <40.175526, 36.141350, 35.866112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152061, 35.915680, 35.787868>,  <40.112953, 35.539562, 35.657463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152061, 35.915680, 35.787868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062311, 0.321155, -0.944974,
		-0.993256, 0.112704, -0.027191,
		0.097770, 0.940296, 0.326012,
		40.181393, 36.197769, 35.885674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906300, 35.936920, 35.125217>,  <40.112953, 35.539562, 35.657463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906300, 35.936920, 35.125217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047035, 36.253635, 35.324928>,  <40.131477, 36.443665, 35.444756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047035, 36.253635, 35.324928>,  <39.906300, 35.936920, 35.125217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047035, 36.253635, 35.324928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209964, 0.453036, -0.866414,
		-0.912208, 0.409669, -0.006851,
		0.351839, 0.791789, 0.499279,
		40.152588, 36.491173, 35.474712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427738, 36.587078, 34.971020>,  <39.906300, 35.936920, 35.125217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427738, 36.587078, 34.971020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789974, 36.706184, 35.091846>,  <40.007317, 36.777649, 35.164345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789974, 36.706184, 35.091846>,  <39.427738, 36.587078, 34.971020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789974, 36.706184, 35.091846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058203, 0.618186, -0.783874,
		-0.420149, 0.727447, 0.542490,
		0.905587, 0.297769, 0.302070,
		40.061649, 36.795517, 35.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442966, 37.413502, 35.043293>,  <39.427738, 36.587078, 34.971020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442966, 37.413502, 35.043293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.803566, 37.253460, 34.977295>,  <40.019924, 37.157436, 34.937698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.803566, 37.253460, 34.977295>,  <39.442966, 37.413502, 35.043293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803566, 37.253460, 34.977295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111346, 0.582812, -0.804942,
		0.418220, 0.707281, 0.569952,
		0.901495, -0.400105, -0.164991,
		40.074013, 37.133427, 34.927799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788063, 38.013588, 34.808426>,  <39.442966, 37.413502, 35.043293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788063, 38.013588, 34.808426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990067, 37.687168, 34.695984>,  <40.111271, 37.491314, 34.628517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990067, 37.687168, 34.695984>,  <39.788063, 38.013588, 34.808426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990067, 37.687168, 34.695984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153083, 0.405213, -0.901314,
		0.849429, 0.412141, 0.329561,
		0.505011, -0.816053, -0.281108,
		40.141571, 37.442352, 34.611652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404915, 38.292019, 34.624271>,  <39.788063, 38.013588, 34.808426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404915, 38.292019, 34.624271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319214, 37.945488, 34.443798>,  <40.267792, 37.737568, 34.335514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319214, 37.945488, 34.443798>,  <40.404915, 38.292019, 34.624271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319214, 37.945488, 34.443798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181047, 0.418688, -0.889900,
		0.959853, -0.272350, 0.067141,
		-0.214253, -0.866329, -0.451187,
		40.254936, 37.685589, 34.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699833, 38.384815, 34.010662>,  <40.404915, 38.292019, 34.624271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699833, 38.384815, 34.010662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554123, 38.019161, 33.939495>,  <40.466698, 37.799770, 33.896793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554123, 38.019161, 33.939495>,  <40.699833, 38.384815, 34.010662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554123, 38.019161, 33.939495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093248, 0.154285, -0.983616,
		0.926610, -0.374901, 0.029038,
		-0.364279, -0.914137, -0.177920,
		40.444839, 37.744919, 33.886120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170692, 38.001911, 33.527790>,  <40.699833, 38.384815, 34.010662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170692, 38.001911, 33.527790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.794266, 37.871124, 33.493168>,  <40.568409, 37.792652, 33.472393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.794266, 37.871124, 33.493168>,  <41.170692, 38.001911, 33.527790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794266, 37.871124, 33.493168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016737, 0.300621, -0.953597,
		0.337826, -0.895943, -0.288375,
		-0.941060, -0.326976, -0.086562,
		40.511948, 37.773033, 33.467201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030834, 37.506489, 32.872105>,  <41.170692, 38.001911, 33.527790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030834, 37.506489, 32.872105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.672607, 37.657925, 32.965595>,  <40.457672, 37.748787, 33.021690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.672607, 37.657925, 32.965595>,  <41.030834, 37.506489, 32.872105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672607, 37.657925, 32.965595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122963, 0.294252, -0.947785,
		-0.427599, -0.877544, -0.216969,
		-0.895566, 0.378593, 0.233727,
		40.403938, 37.771503, 33.035713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613010, 37.202599, 32.466789>,  <41.030834, 37.506489, 32.872105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613010, 37.202599, 32.466789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414085, 37.532616, 32.574112>,  <40.294731, 37.730625, 32.638508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414085, 37.532616, 32.574112>,  <40.613010, 37.202599, 32.466789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414085, 37.532616, 32.574112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065845, 0.272479, -0.959906,
		-0.865070, -0.495039, -0.081183,
		-0.497312, 0.825040, 0.268309,
		40.264893, 37.780128, 32.654606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252991, 37.253109, 31.926207>,  <40.613010, 37.202599, 32.466789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252991, 37.253109, 31.926207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273285, 37.617802, 32.089260>,  <40.285461, 37.836617, 32.187092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273285, 37.617802, 32.089260>,  <40.252991, 37.253109, 31.926207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273285, 37.617802, 32.089260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129466, 0.398712, -0.907892,
		-0.990285, 0.098841, -0.097808,
		0.050740, 0.911734, 0.407635,
		40.288506, 37.891323, 32.211552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876511, 37.618690, 31.481319>,  <40.252991, 37.253109, 31.926207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876511, 37.618690, 31.481319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055344, 37.908489, 31.691164>,  <40.162643, 38.082371, 31.817070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055344, 37.908489, 31.691164>,  <39.876511, 37.618690, 31.481319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055344, 37.908489, 31.691164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240154, 0.467734, -0.850618,
		-0.861650, 0.506286, 0.035125,
		0.447086, 0.724499, 0.524610,
		40.189468, 38.125839, 31.848547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563499, 38.249325, 31.231342>,  <39.876511, 37.618690, 31.481319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563499, 38.249325, 31.231342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931206, 38.341225, 31.359192>,  <40.151829, 38.396362, 31.435902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931206, 38.341225, 31.359192>,  <39.563499, 38.249325, 31.231342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931206, 38.341225, 31.359192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119730, 0.610321, -0.783054,
		-0.374976, 0.758107, 0.533542,
		0.919270, 0.229746, 0.319624,
		40.206985, 38.410149, 31.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569614, 38.898315, 31.018007>,  <39.563499, 38.249325, 31.231342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569614, 38.898315, 31.018007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955559, 38.814056, 31.080832>,  <40.187126, 38.763500, 31.118526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955559, 38.814056, 31.080832>,  <39.569614, 38.898315, 31.018007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955559, 38.814056, 31.080832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254549, 0.601142, -0.757517,
		0.065151, 0.770880, 0.633639,
		0.964863, -0.210645, 0.157062,
		40.245018, 38.750862, 31.127951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184601, 39.484028, 31.323277>,  <39.569614, 38.898315, 31.018007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184601, 39.484028, 31.323277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857269, 39.638733, 31.153214>,  <38.660870, 39.731556, 31.051176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857269, 39.638733, 31.153214>,  <39.184601, 39.484028, 31.323277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857269, 39.638733, 31.153214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532209, -0.230592, 0.814605,
		0.217018, 0.892885, 0.394536,
		-0.818326, 0.386759, -0.425159,
		38.611771, 39.754761, 31.025665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862106, 39.974400, 31.717215>,  <39.184601, 39.484028, 31.323277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862106, 39.974400, 31.717215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556625, 39.846508, 31.492884>,  <38.373337, 39.769772, 31.358286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556625, 39.846508, 31.492884>,  <38.862106, 39.974400, 31.717215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556625, 39.846508, 31.492884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576547, -0.053023, 0.815341,
		-0.290427, 0.946023, -0.143847,
		-0.763705, -0.319732, -0.560827,
		38.327515, 39.750587, 31.324636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370930, 40.318024, 32.023201>,  <38.862106, 39.974400, 31.717215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370930, 40.318024, 32.023201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181396, 40.033901, 31.814991>,  <38.067677, 39.863430, 31.690063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.181396, 40.033901, 31.814991>,  <38.370930, 40.318024, 32.023201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181396, 40.033901, 31.814991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583117, -0.189861, 0.789890,
		-0.659889, 0.677808, -0.324227,
		-0.473836, -0.710302, -0.520529,
		38.039246, 39.820812, 31.658833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740646, 40.414738, 32.251923>,  <38.370930, 40.318024, 32.023201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740646, 40.414738, 32.251923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732891, 40.043346, 32.103565>,  <37.728237, 39.820511, 32.014553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732891, 40.043346, 32.103565>,  <37.740646, 40.414738, 32.251923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732891, 40.043346, 32.103565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567797, -0.295111, 0.768450,
		-0.822940, 0.225486, -0.521465,
		-0.019385, -0.928475, -0.370889,
		37.727077, 39.764805, 31.992298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036648, 40.283283, 32.264179>,  <37.740646, 40.414738, 32.251923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036648, 40.283283, 32.264179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240963, 39.939404, 32.262630>,  <37.363552, 39.733074, 32.261700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240963, 39.939404, 32.262630>,  <37.036648, 40.283283, 32.264179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240963, 39.939404, 32.262630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455978, -0.274732, 0.846526,
		-0.728824, -0.430624, -0.532333,
		0.510784, -0.859700, -0.003876,
		37.394199, 39.681492, 32.261467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485004, 39.740540, 32.573559>,  <37.036648, 40.283283, 32.264179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485004, 39.740540, 32.573559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831509, 39.540726, 32.576668>,  <37.039410, 39.420837, 32.578533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831509, 39.540726, 32.576668>,  <36.485004, 39.740540, 32.573559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831509, 39.540726, 32.576668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322354, -0.546985, 0.772590,
		-0.381682, -0.671770, -0.634857,
		0.866260, -0.499532, 0.007774,
		37.091385, 39.390865, 32.578999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337944, 39.027893, 32.550201>,  <36.485004, 39.740540, 32.573559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337944, 39.027893, 32.550201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699387, 39.070213, 32.716240>,  <36.916252, 39.095604, 32.815865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699387, 39.070213, 32.716240>,  <36.337944, 39.027893, 32.550201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699387, 39.070213, 32.716240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293159, -0.553821, 0.779320,
		0.312342, -0.825886, -0.469419,
		0.903604, 0.105800, 0.415098,
		36.970467, 39.101952, 32.840771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505856, 38.336189, 32.745407>,  <36.337944, 39.027893, 32.550201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505856, 38.336189, 32.745407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739853, 38.581135, 32.958126>,  <36.880249, 38.728100, 33.085758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739853, 38.581135, 32.958126>,  <36.505856, 38.336189, 32.745407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739853, 38.581135, 32.958126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316358, -0.431468, 0.844839,
		0.746797, -0.662458, -0.058679,
		0.584989, 0.612359, 0.531793,
		36.915348, 38.764843, 33.117664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983742, 37.827904, 33.101391>,  <36.505856, 38.336189, 32.745407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983742, 37.827904, 33.101391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.992149, 38.181229, 33.288719>,  <36.997192, 38.393223, 33.401115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.992149, 38.181229, 33.288719>,  <36.983742, 37.827904, 33.101391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992149, 38.181229, 33.288719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181548, -0.457261, 0.870605,
		0.983158, -0.103319, 0.150753,
		0.021017, 0.883311, 0.468317,
		36.998455, 38.446220, 33.429214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314247, 37.741688, 33.672215>,  <36.983742, 37.827904, 33.101391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314247, 37.741688, 33.672215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.129913, 38.084442, 33.764633>,  <37.019314, 38.290096, 33.820084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.129913, 38.084442, 33.764633>,  <37.314247, 37.741688, 33.672215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129913, 38.084442, 33.764633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239831, -0.370887, 0.897175,
		0.854469, 0.358034, 0.376424,
		-0.460830, 0.856887, 0.231044,
		36.991665, 38.341507, 33.833946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419556, 37.794273, 34.384056>,  <37.314247, 37.741688, 33.672215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419556, 37.794273, 34.384056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103947, 38.027290, 34.305992>,  <36.914581, 38.167103, 34.259151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103947, 38.027290, 34.305992>,  <37.419556, 37.794273, 34.384056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103947, 38.027290, 34.305992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356112, -0.174800, 0.917948,
		0.500632, 0.793780, 0.345372,
		-0.789020, 0.582545, -0.195164,
		36.867241, 38.202053, 34.247444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357857, 38.277233, 34.969894>,  <37.419556, 37.794273, 34.384056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357857, 38.277233, 34.969894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990578, 38.276573, 34.811443>,  <36.770210, 38.276176, 34.716373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990578, 38.276573, 34.811443>,  <37.357857, 38.277233, 34.969894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990578, 38.276573, 34.811443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392001, -0.140172, 0.909223,
		-0.057030, 0.990126, 0.128057,
		-0.918195, -0.001654, -0.396124,
		36.715118, 38.276077, 34.692608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.460381, 40.582928, 28.071594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092499, 40.499863, 27.938313>,  <39.871769, 40.450024, 27.858343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092499, 40.499863, 27.938313>,  <40.460381, 40.582928, 28.071594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092499, 40.499863, 27.938313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387303, 0.340706, 0.856688,
		-0.064375, 0.916949, -0.393776,
		-0.919702, -0.207660, -0.333205,
		39.816589, 40.437565, 27.838350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140038, 41.102722, 28.331623>,  <40.460381, 40.582928, 28.071594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140038, 41.102722, 28.331623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868008, 40.819180, 28.256775>,  <39.704788, 40.649052, 28.211866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868008, 40.819180, 28.256775>,  <40.140038, 41.102722, 28.331623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868008, 40.819180, 28.256775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394462, 0.138652, 0.908392,
		-0.617976, 0.691589, -0.373912,
		-0.680077, -0.708858, -0.187122,
		39.663986, 40.606522, 28.200638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512367, 41.418949, 28.701834>,  <40.140038, 41.102722, 28.331623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512367, 41.418949, 28.701834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459805, 41.028259, 28.634018>,  <39.428268, 40.793846, 28.593328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459805, 41.028259, 28.634018>,  <39.512367, 41.418949, 28.701834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459805, 41.028259, 28.634018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572244, -0.064914, 0.817510,
		-0.809487, 0.204446, -0.550394,
		-0.131408, -0.976723, -0.169540,
		39.420383, 40.735241, 28.583157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824570, 41.380924, 28.860062>,  <39.512367, 41.418949, 28.701834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824570, 41.380924, 28.860062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981976, 41.014492, 28.890915>,  <39.076420, 40.794632, 28.909426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981976, 41.014492, 28.890915>,  <38.824570, 41.380924, 28.860062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981976, 41.014492, 28.890915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559008, -0.171831, 0.811162,
		-0.729834, -0.362320, -0.579713,
		0.393513, -0.916078, 0.077132,
		39.100029, 40.739670, 28.914055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267429, 40.918236, 28.982658>,  <38.824570, 41.380924, 28.860062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267429, 40.918236, 28.982658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579994, 40.696693, 29.097647>,  <38.767532, 40.563770, 29.166639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579994, 40.696693, 29.097647>,  <38.267429, 40.918236, 28.982658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579994, 40.696693, 29.097647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500831, -0.281841, 0.818373,
		-0.372238, -0.783461, -0.497622,
		0.781413, -0.553854, 0.287469,
		38.814419, 40.530537, 29.183887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161335, 40.253399, 29.140690>,  <38.267429, 40.918236, 28.982658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161335, 40.253399, 29.140690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504128, 40.289215, 29.343695>,  <38.709805, 40.310703, 29.465498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504128, 40.289215, 29.343695>,  <38.161335, 40.253399, 29.140690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504128, 40.289215, 29.343695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427489, -0.426481, 0.797099,
		0.287817, -0.900053, -0.327209,
		0.856980, 0.089541, 0.507511,
		38.761223, 40.316078, 29.495949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402237, 39.583485, 29.426874>,  <38.161335, 40.253399, 29.140690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402237, 39.583485, 29.426874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586193, 39.861923, 29.647400>,  <38.696568, 40.028988, 29.779715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586193, 39.861923, 29.647400>,  <38.402237, 39.583485, 29.426874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586193, 39.861923, 29.647400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268685, -0.482676, 0.833566,
		0.846351, -0.531477, -0.034945,
		0.459889, 0.696100, 0.551314,
		38.724159, 40.070755, 29.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789391, 39.185604, 29.906748>,  <38.402237, 39.583485, 29.426874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789391, 39.185604, 29.906748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744156, 39.563324, 30.030373>,  <38.717014, 39.789955, 30.104548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744156, 39.563324, 30.030373>,  <38.789391, 39.185604, 29.906748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744156, 39.563324, 30.030373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104574, -0.320639, 0.941411,
		0.988066, 0.074143, 0.135009,
		-0.113089, 0.944295, 0.309060,
		38.710228, 39.846611, 30.123091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288040, 39.294273, 30.461960>,  <38.789391, 39.185604, 29.906748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288040, 39.294273, 30.461960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991722, 39.558319, 30.511719>,  <38.813931, 39.716747, 30.541574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991722, 39.558319, 30.511719>,  <39.288040, 39.294273, 30.461960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991722, 39.558319, 30.511719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203892, -0.397418, 0.894699,
		0.640039, 0.637426, 0.428997,
		-0.740796, 0.660111, 0.124397,
		38.769482, 39.756351, 30.549038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898716, 39.488289, 30.807606>,  <39.288040, 39.294273, 30.461960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898716, 39.488289, 30.807606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198280, 39.224487, 30.833483>,  <40.378017, 39.066204, 30.849009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198280, 39.224487, 30.833483>,  <39.898716, 39.488289, 30.807606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198280, 39.224487, 30.833483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460375, 0.447583, -0.766632,
		0.476642, 0.603922, 0.638820,
		0.748911, -0.659505, 0.064694,
		40.422955, 39.026634, 30.852890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542225, 39.865082, 30.683680>,  <39.898716, 39.488289, 30.807606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542225, 39.865082, 30.683680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641895, 39.482483, 30.622992>,  <40.701698, 39.252922, 30.586578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641895, 39.482483, 30.622992>,  <40.542225, 39.865082, 30.683680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641895, 39.482483, 30.622992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428203, 0.249329, -0.868606,
		0.868650, 0.151470, 0.471703,
		0.249177, -0.956500, -0.151720,
		40.716648, 39.195534, 30.577475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207653, 39.876774, 30.449196>,  <40.542225, 39.865082, 30.683680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207653, 39.876774, 30.449196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082848, 39.515522, 30.331209>,  <41.007965, 39.298771, 30.260418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082848, 39.515522, 30.331209>,  <41.207653, 39.876774, 30.449196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082848, 39.515522, 30.331209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453302, 0.131336, -0.881628,
		0.834964, -0.408787, 0.368412,
		-0.312013, -0.903130, -0.294965,
		40.989243, 39.244583, 30.242720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920746, 39.464542, 30.148987>,  <41.207653, 39.876774, 30.449196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920746, 39.464542, 30.148987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587578, 39.300079, 30.000834>,  <41.387676, 39.201401, 29.911942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587578, 39.300079, 30.000834>,  <41.920746, 39.464542, 30.148987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587578, 39.300079, 30.000834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425841, -0.048788, -0.903482,
		0.353407, -0.910256, 0.215727,
		-0.832925, -0.411162, -0.370382,
		41.337700, 39.176731, 29.889719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123901, 38.783436, 29.788698>,  <41.920746, 39.464542, 30.148987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123901, 38.783436, 29.788698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760311, 38.857422, 29.639269>,  <41.542156, 38.901814, 29.549612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760311, 38.857422, 29.639269>,  <42.123901, 38.783436, 29.788698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760311, 38.857422, 29.639269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334334, -0.211781, -0.918352,
		-0.248986, -0.959653, 0.130660,
		-0.908970, 0.184972, -0.373575,
		41.487621, 38.912910, 29.527197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083843, 38.311562, 29.310873>,  <42.123901, 38.783436, 29.788698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083843, 38.311562, 29.310873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823639, 38.593342, 29.197327>,  <41.667515, 38.762409, 29.129198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823639, 38.593342, 29.197327>,  <42.083843, 38.311562, 29.310873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823639, 38.593342, 29.197327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367755, -0.034865, -0.929269,
		-0.664524, -0.708893, -0.236386,
		-0.650511, 0.704454, -0.283868,
		41.628487, 38.804676, 29.112165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792183, 38.045921, 28.722631>,  <42.083843, 38.311562, 29.310873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792183, 38.045921, 28.722631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721272, 38.437653, 28.683681>,  <41.678726, 38.672691, 28.660311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721272, 38.437653, 28.683681>,  <41.792183, 38.045921, 28.722631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721272, 38.437653, 28.683681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240709, -0.052792, -0.969160,
		-0.954270, -0.195251, -0.226375,
		-0.177279, 0.979331, -0.097377,
		41.668087, 38.731453, 28.654469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279823, 38.130615, 28.169939>,  <41.792183, 38.045921, 28.722631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279823, 38.130615, 28.169939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466755, 38.479805, 28.225840>,  <41.578915, 38.689320, 28.259380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466755, 38.479805, 28.225840>,  <41.279823, 38.130615, 28.169939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466755, 38.479805, 28.225840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061010, 0.189540, -0.979976,
		-0.881978, 0.449442, 0.141837,
		0.467326, 0.872970, 0.139749,
		41.606953, 38.741695, 28.267765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000824, 38.583668, 27.636192>,  <41.279823, 38.130615, 28.169939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000824, 38.583668, 27.636192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348499, 38.744877, 27.750801>,  <41.557102, 38.841602, 27.819567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348499, 38.744877, 27.750801>,  <41.000824, 38.583668, 27.636192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348499, 38.744877, 27.750801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213856, 0.216070, -0.952670,
		-0.445853, 0.889320, 0.101616,
		0.869184, 0.403019, 0.286522,
		41.609253, 38.865784, 27.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087612, 39.206440, 27.337725>,  <41.000824, 38.583668, 27.636192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087612, 39.206440, 27.337725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461674, 39.096817, 27.427505>,  <41.686111, 39.031044, 27.481373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461674, 39.096817, 27.427505>,  <41.087612, 39.206440, 27.337725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461674, 39.096817, 27.427505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236265, 0.010442, -0.971632,
		0.263941, 0.961656, 0.074516,
		0.935154, -0.274059, 0.224450,
		41.742222, 39.014599, 27.494841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398155, 39.548668, 26.832945>,  <41.087612, 39.206440, 27.337725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398155, 39.548668, 26.832945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652512, 39.284122, 26.992067>,  <41.805126, 39.125397, 27.087540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652512, 39.284122, 26.992067>,  <41.398155, 39.548668, 26.832945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652512, 39.284122, 26.992067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484647, -0.058954, -0.872721,
		0.600635, 0.747748, 0.283038,
		0.635889, -0.661360, 0.397804,
		41.843277, 39.085716, 27.111408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987106, 39.674976, 26.519306>,  <41.398155, 39.548668, 26.832945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987106, 39.674976, 26.519306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066814, 39.316177, 26.677137>,  <42.114639, 39.100899, 26.771835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066814, 39.316177, 26.677137>,  <41.987106, 39.674976, 26.519306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066814, 39.316177, 26.677137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420402, -0.285466, -0.861261,
		0.885186, 0.337504, 0.320214,
		0.199269, -0.896995, 0.394578,
		42.126595, 39.047077, 26.795511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669411, 39.581879, 26.378321>,  <41.987106, 39.674976, 26.519306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669411, 39.581879, 26.378321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511818, 39.220711, 26.447048>,  <42.417263, 39.004009, 26.488285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511818, 39.220711, 26.447048>,  <42.669411, 39.581879, 26.378321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511818, 39.220711, 26.447048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426524, -0.345200, -0.836011,
		0.814159, -0.256088, 0.521118,
		-0.393983, -0.902915, 0.171820,
		42.393623, 38.949837, 26.498594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196087, 39.053944, 26.375093>,  <42.669411, 39.581879, 26.378321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196087, 39.053944, 26.375093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846554, 38.882641, 26.282999>,  <42.636833, 38.779858, 26.227741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846554, 38.882641, 26.282999>,  <43.196087, 39.053944, 26.375093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846554, 38.882641, 26.282999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372277, -0.284692, -0.883380,
		0.312766, -0.857641, 0.408204,
		-0.873835, -0.428256, -0.230238,
		42.584404, 38.754166, 26.213928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.813824, 35.193691, 23.707794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940182, 35.559696, 23.808163>,  <37.015995, 35.779301, 23.868383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940182, 35.559696, 23.808163>,  <36.813824, 35.193691, 23.707794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940182, 35.559696, 23.808163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151438, -0.309697, 0.938698,
		0.936630, -0.258532, -0.236399,
		0.315896, 0.915013, 0.250920,
		37.034950, 35.834202, 23.883438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404739, 35.104816, 24.058369>,  <36.813824, 35.193691, 23.707794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404739, 35.104816, 24.058369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265709, 35.465195, 24.162285>,  <37.182289, 35.681419, 24.224634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265709, 35.465195, 24.162285>,  <37.404739, 35.104816, 24.058369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265709, 35.465195, 24.162285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002876, -0.278090, 0.960551,
		0.937646, 0.333122, 0.099250,
		-0.347581, 0.900942, 0.259792,
		37.161434, 35.735477, 24.240223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696548, 35.103088, 24.747040>,  <37.404739, 35.104816, 24.058369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696548, 35.103088, 24.747040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454552, 35.421509, 24.740313>,  <37.309353, 35.612560, 24.736277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454552, 35.421509, 24.740313>,  <37.696548, 35.103088, 24.747040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454552, 35.421509, 24.740313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172684, -0.110562, 0.978752,
		0.777277, 0.595046, 0.204355,
		-0.604996, 0.796051, -0.016817,
		37.273052, 35.660324, 24.735268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859631, 35.597176, 25.286026>,  <37.696548, 35.103088, 24.747040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859631, 35.597176, 25.286026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475582, 35.672413, 25.203283>,  <37.245152, 35.717556, 25.153639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475582, 35.672413, 25.203283>,  <37.859631, 35.597176, 25.286026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475582, 35.672413, 25.203283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223794, -0.073554, 0.971857,
		0.167584, 0.979393, 0.112715,
		-0.960121, 0.188092, -0.206855,
		37.187546, 35.728840, 25.141226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594131, 36.158268, 25.770597>,  <37.859631, 35.597176, 25.286026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594131, 36.158268, 25.770597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293060, 35.929779, 25.639645>,  <37.112419, 35.792686, 25.561073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293060, 35.929779, 25.639645>,  <37.594131, 36.158268, 25.770597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293060, 35.929779, 25.639645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374698, -0.037216, 0.926400,
		-0.541366, 0.819950, -0.186025,
		-0.752678, -0.571225, -0.327381,
		37.067257, 35.758411, 25.541430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057587, 36.418388, 26.106932>,  <37.594131, 36.158268, 25.770597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057587, 36.418388, 26.106932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937943, 36.053761, 25.994099>,  <36.866158, 35.834984, 25.926399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937943, 36.053761, 25.994099>,  <37.057587, 36.418388, 26.106932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937943, 36.053761, 25.994099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376500, -0.158892, 0.912689,
		-0.876803, 0.379196, -0.295681,
		-0.299107, -0.911572, -0.282084,
		36.848209, 35.780289, 25.909473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467789, 36.443359, 26.365616>,  <37.057587, 36.418388, 26.106932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467789, 36.443359, 26.365616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.565544, 36.065384, 26.278568>,  <36.624199, 35.838596, 26.226339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.565544, 36.065384, 26.278568>,  <36.467789, 36.443359, 26.365616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565544, 36.065384, 26.278568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268006, -0.281503, 0.921373,
		-0.931905, -0.166851, -0.322046,
		0.244389, -0.944943, -0.217617,
		36.638863, 35.781902, 26.213284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902573, 36.134159, 26.431812>,  <36.467789, 36.443359, 26.365616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902573, 36.134159, 26.431812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191212, 35.861320, 26.479206>,  <36.364395, 35.697617, 26.507643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191212, 35.861320, 26.479206>,  <35.902573, 36.134159, 26.431812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191212, 35.861320, 26.479206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257851, -0.105967, 0.960356,
		-0.642501, -0.723543, -0.252345,
		0.721599, -0.682097, 0.118482,
		36.407692, 35.656693, 26.514751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618240, 35.584652, 26.879274>,  <35.902573, 36.134159, 26.431812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618240, 35.584652, 26.879274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011024, 35.525990, 26.927004>,  <36.246696, 35.490791, 26.955641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011024, 35.525990, 26.927004>,  <35.618240, 35.584652, 26.879274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011024, 35.525990, 26.927004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132522, -0.083767, 0.987634,
		-0.134852, -0.985634, -0.101692,
		0.981964, -0.146660, 0.119322,
		36.305614, 35.481991, 26.962801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640079, 35.162022, 27.416821>,  <35.618240, 35.584652, 26.879274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640079, 35.162022, 27.416821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007072, 35.318417, 27.387560>,  <36.227268, 35.412254, 27.370005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007072, 35.318417, 27.387560>,  <35.640079, 35.162022, 27.416821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007072, 35.318417, 27.387560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047712, 0.074397, 0.996087,
		0.394899, -0.917384, 0.049603,
		0.917485, 0.390987, -0.073150,
		36.282318, 35.435711, 27.365616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130096, 34.611706, 27.728832>,  <35.640079, 35.162022, 27.416821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130096, 34.611706, 27.728832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311867, 34.967999, 27.732515>,  <36.420929, 35.181774, 27.734726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311867, 34.967999, 27.732515>,  <36.130096, 34.611706, 27.728832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311867, 34.967999, 27.732515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211167, -0.117763, 0.970330,
		0.865393, -0.439000, -0.241609,
		0.454427, 0.890736, 0.009209,
		36.448196, 35.235218, 27.735277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701389, 34.534149, 28.181402>,  <36.130096, 34.611706, 27.728832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701389, 34.534149, 28.181402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636391, 34.928493, 28.165073>,  <36.597389, 35.165100, 28.155277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636391, 34.928493, 28.165073>,  <36.701389, 34.534149, 28.181402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636391, 34.928493, 28.165073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099369, 0.057510, 0.993387,
		0.981692, 0.157370, -0.107310,
		-0.162501, 0.985864, -0.040820,
		36.587639, 35.224251, 28.152828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171303, 34.810150, 28.679012>,  <36.701389, 34.534149, 28.181402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171303, 34.810150, 28.679012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912075, 35.106228, 28.607325>,  <36.756538, 35.283875, 28.564312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912075, 35.106228, 28.607325>,  <37.171303, 34.810150, 28.679012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912075, 35.106228, 28.607325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074596, 0.172498, 0.982181,
		0.757921, 0.649889, -0.056574,
		-0.648068, 0.740195, -0.179219,
		36.717655, 35.328285, 28.553558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430702, 35.416958, 29.006292>,  <37.171303, 34.810150, 28.679012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430702, 35.416958, 29.006292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031979, 35.445484, 28.991961>,  <36.792744, 35.462601, 28.983362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031979, 35.445484, 28.991961>,  <37.430702, 35.416958, 29.006292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031979, 35.445484, 28.991961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021979, 0.186286, 0.982250,
		0.076720, 0.979904, -0.184124,
		-0.996810, 0.071312, -0.035830,
		36.732937, 35.466877, 28.981211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011784, 35.490822, 29.632353>,  <37.430702, 35.416958, 29.006292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011784, 35.490822, 29.632353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205914, 35.160751, 29.747971>,  <38.322392, 34.962711, 29.817341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205914, 35.160751, 29.747971>,  <38.011784, 35.490822, 29.632353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205914, 35.160751, 29.747971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337960, -0.127848, -0.932437,
		0.806375, 0.550223, 0.216827,
		0.485328, -0.825172, 0.289046,
		38.351513, 34.913200, 29.834684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789055, 35.556435, 29.492960>,  <38.011784, 35.490822, 29.632353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789055, 35.556435, 29.492960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746368, 35.159386, 29.515984>,  <38.720757, 34.921158, 29.529799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746368, 35.159386, 29.515984>,  <38.789055, 35.556435, 29.492960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746368, 35.159386, 29.515984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338874, -0.090734, -0.936446,
		0.934760, -0.080424, 0.346057,
		-0.106712, -0.992622, 0.057561,
		38.714355, 34.861599, 29.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437912, 35.255604, 29.349970>,  <38.789055, 35.556435, 29.492960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437912, 35.255604, 29.349970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177444, 34.959225, 29.284269>,  <39.021164, 34.781399, 29.244848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177444, 34.959225, 29.284269>,  <39.437912, 35.255604, 29.349970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177444, 34.959225, 29.284269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469734, -0.223491, -0.854050,
		0.596098, -0.633283, 0.493579,
		-0.651166, -0.740949, -0.164252,
		38.982094, 34.736938, 29.234993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812115, 34.680305, 29.034073>,  <39.437912, 35.255604, 29.349970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812115, 34.680305, 29.034073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.427795, 34.622089, 28.939682>,  <39.197205, 34.587158, 28.883047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.427795, 34.622089, 28.939682>,  <39.812115, 34.680305, 29.034073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427795, 34.622089, 28.939682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264363, -0.224467, -0.937937,
		0.083541, -0.963551, 0.254144,
		-0.960798, -0.145543, -0.235975,
		39.139557, 34.578426, 28.868889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804649, 34.077251, 28.675549>,  <39.812115, 34.680305, 29.034073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804649, 34.077251, 28.675549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455406, 34.250568, 28.586155>,  <39.245861, 34.354557, 28.532518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455406, 34.250568, 28.586155>,  <39.804649, 34.077251, 28.675549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455406, 34.250568, 28.586155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152703, -0.192285, -0.969386,
		-0.463001, -0.880502, 0.101720,
		-0.873105, 0.433293, -0.223483,
		39.193474, 34.380558, 28.519110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521500, 33.678524, 28.227516>,  <39.804649, 34.077251, 28.675549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521500, 33.678524, 28.227516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.340298, 34.030537, 28.170483>,  <39.231579, 34.241745, 28.136263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.340298, 34.030537, 28.170483>,  <39.521500, 33.678524, 28.227516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340298, 34.030537, 28.170483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082091, -0.118079, -0.989605,
		-0.887722, -0.459997, -0.018753,
		-0.453002, 0.880034, -0.142583,
		39.204399, 34.294548, 28.127708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166012, 33.587719, 27.622185>,  <39.521500, 33.678524, 28.227516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166012, 33.587719, 27.622185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185555, 33.986092, 27.652468>,  <39.197281, 34.225117, 27.670637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185555, 33.986092, 27.652468>,  <39.166012, 33.587719, 27.622185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185555, 33.986092, 27.652468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186292, 0.065382, -0.980317,
		-0.981279, 0.061996, -0.182340,
		0.048854, 0.995933, 0.075707,
		39.200211, 34.284870, 27.675180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919933, 33.845840, 27.020256>,  <39.166012, 33.587719, 27.622185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919933, 33.845840, 27.020256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157139, 34.142483, 27.145699>,  <39.299461, 34.320469, 27.220964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157139, 34.142483, 27.145699>,  <38.919933, 33.845840, 27.020256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157139, 34.142483, 27.145699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210989, 0.232753, -0.949373,
		-0.777056, 0.629161, -0.018445,
		0.593015, 0.741608, 0.313608,
		39.335045, 34.364964, 27.239780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737640, 34.355076, 26.667664>,  <38.919933, 33.845840, 27.020256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737640, 34.355076, 26.667664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.096039, 34.484089, 26.789751>,  <39.311077, 34.561497, 26.863005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.096039, 34.484089, 26.789751>,  <38.737640, 34.355076, 26.667664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096039, 34.484089, 26.789751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240255, 0.225945, -0.944048,
		-0.373451, 0.919196, 0.124956,
		0.895998, 0.322534, 0.305221,
		39.364838, 34.580849, 26.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731445, 35.004520, 26.452198>,  <38.737640, 34.355076, 26.667664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731445, 35.004520, 26.452198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114906, 34.902573, 26.502851>,  <39.344982, 34.841404, 26.533243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114906, 34.902573, 26.502851>,  <38.731445, 35.004520, 26.452198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114906, 34.902573, 26.502851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173672, 0.171397, -0.969774,
		0.225458, 0.951665, 0.208573,
		0.958648, -0.254867, 0.126635,
		39.402500, 34.826111, 26.540842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096615, 35.600246, 26.203129>,  <38.731445, 35.004520, 26.452198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096615, 35.600246, 26.203129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372051, 35.311939, 26.171295>,  <39.537315, 35.138954, 26.152195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372051, 35.311939, 26.171295>,  <39.096615, 35.600246, 26.203129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372051, 35.311939, 26.171295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350719, 0.427089, -0.833421,
		0.634691, 0.545977, 0.546878,
		0.688595, -0.720766, -0.079585,
		39.578629, 35.095711, 26.147419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663364, 35.879551, 26.062019>,  <39.096615, 35.600246, 26.203129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663364, 35.879551, 26.062019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729031, 35.508606, 25.927534>,  <39.768433, 35.286037, 25.846842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.729031, 35.508606, 25.927534>,  <39.663364, 35.879551, 26.062019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729031, 35.508606, 25.927534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296003, 0.371445, -0.880006,
		0.940974, 0.044949, 0.335482,
		0.164169, -0.927366, -0.336215,
		39.778282, 35.230396, 25.826670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173512, 35.989605, 25.651840>,  <39.663364, 35.879551, 26.062019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173512, 35.989605, 25.651840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049305, 35.627731, 25.535141>,  <39.974781, 35.410606, 25.465122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049305, 35.627731, 25.535141>,  <40.173512, 35.989605, 25.651840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049305, 35.627731, 25.535141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259740, 0.214487, -0.941558,
		0.914392, -0.368151, 0.168381,
		-0.310520, -0.904688, -0.291748,
		39.956150, 35.356323, 25.447617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665001, 35.683571, 25.199085>,  <40.173512, 35.989605, 25.651840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665001, 35.683571, 25.199085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319378, 35.509483, 25.097904>,  <40.112003, 35.405029, 25.037195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319378, 35.509483, 25.097904>,  <40.665001, 35.683571, 25.199085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319378, 35.509483, 25.097904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223533, 0.118505, -0.967465,
		0.451036, -0.892491, -0.005109,
		-0.864060, -0.435219, -0.252952,
		40.060162, 35.378918, 25.022018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244728, 35.382195, 25.381641>,  <40.665001, 35.683571, 25.199085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244728, 35.382195, 25.381641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.604019, 35.557484, 25.368078>,  <41.819595, 35.662659, 25.359940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.604019, 35.557484, 25.368078>,  <41.244728, 35.382195, 25.381641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604019, 35.557484, 25.368078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051022, -0.027335, 0.998323,
		0.436562, -0.898450, -0.046912,
		0.898226, 0.438223, -0.033907,
		41.873486, 35.688950, 25.357906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502335, 35.095558, 25.952423>,  <41.244728, 35.382195, 25.381641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502335, 35.095558, 25.952423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.776226, 35.376343, 25.874035>,  <41.940559, 35.544815, 25.827002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.776226, 35.376343, 25.874035>,  <41.502335, 35.095558, 25.952423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776226, 35.376343, 25.874035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269764, 0.005682, 0.962910,
		0.677038, -0.712194, -0.185473,
		0.684724, 0.701960, -0.195971,
		41.981644, 35.586929, 25.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180080, 34.775791, 26.167551>,  <41.502335, 35.095558, 25.952423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180080, 34.775791, 26.167551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169754, 35.175629, 26.172434>,  <42.163559, 35.415531, 26.175364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169754, 35.175629, 26.172434>,  <42.180080, 34.775791, 26.167551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169754, 35.175629, 26.172434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222262, -0.006165, 0.974967,
		0.974645, 0.027885, -0.222012,
		-0.025819, 0.999592, 0.012206,
		42.162010, 35.475506, 26.176096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629223, 34.946583, 26.600353>,  <42.180080, 34.775791, 26.167551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629223, 34.946583, 26.600353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.436829, 35.296204, 26.572996>,  <42.321392, 35.505978, 26.556581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.436829, 35.296204, 26.572996>,  <42.629223, 34.946583, 26.600353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436829, 35.296204, 26.572996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045001, 0.102520, 0.993713,
		0.875572, 0.474884, -0.088645,
		-0.480986, 0.874056, -0.068393,
		42.292534, 35.558422, 26.552479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904861, 35.256931, 27.131435>,  <42.629223, 34.946583, 26.600353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904861, 35.256931, 27.131435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.578114, 35.473148, 27.050896>,  <42.382065, 35.602879, 27.002571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.578114, 35.473148, 27.050896>,  <42.904861, 35.256931, 27.131435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578114, 35.473148, 27.050896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140714, 0.151786, 0.978346,
		0.559401, 0.827511, -0.047926,
		-0.816866, 0.540544, -0.201351,
		42.333054, 35.635311, 26.990490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997929, 35.878403, 27.513277>,  <42.904861, 35.256931, 27.131435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997929, 35.878403, 27.513277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607197, 35.862373, 27.429188>,  <42.372757, 35.852757, 27.378735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607197, 35.862373, 27.429188>,  <42.997929, 35.878403, 27.513277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607197, 35.862373, 27.429188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213710, 0.130922, 0.968085,
		-0.011271, 0.990583, -0.136452,
		-0.976832, -0.040072, -0.210222,
		42.314148, 35.850353, 27.366121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733742, 36.424992, 27.939638>,  <42.997929, 35.878403, 27.513277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733742, 36.424992, 27.939638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.435844, 36.168568, 27.865450>,  <42.257107, 36.014713, 27.820936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.435844, 36.168568, 27.865450>,  <42.733742, 36.424992, 27.939638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435844, 36.168568, 27.865450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269581, 0.034757, 0.962350,
		-0.610478, 0.766703, -0.198703,
		-0.744743, -0.641061, -0.185470,
		42.212421, 35.976250, 27.809809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238026, 36.558815, 28.399162>,  <42.733742, 36.424992, 27.939638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238026, 36.558815, 28.399162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.111664, 36.198013, 28.281460>,  <42.035847, 35.981533, 28.210838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.111664, 36.198013, 28.281460>,  <42.238026, 36.558815, 28.399162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111664, 36.198013, 28.281460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388250, -0.160086, 0.907543,
		-0.865717, 0.400940, -0.299634,
		-0.315904, -0.902009, -0.294254,
		42.016891, 35.927410, 28.193184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551952, 36.501671, 28.719824>,  <42.238026, 36.558815, 28.399162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551952, 36.501671, 28.719824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694080, 36.140842, 28.621834>,  <41.779358, 35.924347, 28.563040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.694080, 36.140842, 28.621834>,  <41.551952, 36.501671, 28.719824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694080, 36.140842, 28.621834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225404, -0.337033, 0.914113,
		-0.907160, -0.269587, -0.323086,
		0.355323, -0.902071, -0.244977,
		41.800678, 35.870220, 28.548340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976555, 36.025463, 28.939070>,  <41.551952, 36.501671, 28.719824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976555, 36.025463, 28.939070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.312450, 35.809380, 28.917107>,  <41.513988, 35.679729, 28.903929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.312450, 35.809380, 28.917107>,  <40.976555, 36.025463, 28.939070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312450, 35.809380, 28.917107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207787, -0.413116, 0.886656,
		-0.501667, -0.733147, -0.459158,
		0.839735, -0.540213, -0.054908,
		41.564373, 35.647316, 28.900635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763245, 35.426247, 29.276052>,  <40.976555, 36.025463, 28.939070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763245, 35.426247, 29.276052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163033, 35.427868, 29.263124>,  <41.402905, 35.428841, 29.255367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.163033, 35.427868, 29.263124>,  <40.763245, 35.426247, 29.276052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163033, 35.427868, 29.263124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030786, -0.441720, 0.896624,
		-0.010640, -0.897144, -0.441611,
		0.999470, 0.004056, -0.032319,
		41.462872, 35.429085, 29.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063423, 34.740971, 29.531115>,  <40.763245, 35.426247, 29.276052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063423, 34.740971, 29.531115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362934, 34.996956, 29.600147>,  <41.542641, 35.150547, 29.641567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.362934, 34.996956, 29.600147>,  <41.063423, 34.740971, 29.531115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362934, 34.996956, 29.600147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076418, -0.341986, 0.936593,
		0.658405, -0.688108, -0.304975,
		0.748775, 0.639963, 0.172582,
		41.587566, 35.188946, 29.651922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503754, 34.365269, 29.879122>,  <41.063423, 34.740971, 29.531115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503754, 34.365269, 29.879122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602501, 34.743332, 29.964664>,  <41.661751, 34.970169, 30.015989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602501, 34.743332, 29.964664>,  <41.503754, 34.365269, 29.879122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602501, 34.743332, 29.964664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093475, -0.196431, 0.976052,
		0.964531, -0.260945, 0.039856,
		0.246867, 0.945158, 0.213855,
		41.676559, 35.026878, 30.028822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939842, 34.324520, 30.388174>,  <41.503754, 34.365269, 29.879122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939842, 34.324520, 30.388174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.831326, 34.708206, 30.419958>,  <41.766216, 34.938416, 30.439028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.831326, 34.708206, 30.419958>,  <41.939842, 34.324520, 30.388174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831326, 34.708206, 30.419958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046792, -0.095601, 0.994319,
		0.961359, 0.266034, 0.070819,
		-0.271293, 0.959211, 0.079458,
		41.749939, 34.995968, 30.443796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.377411, 38.359249, 26.203913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.012058, 38.394146, 26.044851>,  <42.792847, 38.415085, 25.949415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.012058, 38.394146, 26.044851>,  <43.377411, 38.359249, 26.203913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012058, 38.394146, 26.044851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373165, -0.211063, -0.903438,
		-0.162748, -0.973571, 0.160224,
		-0.913379, 0.087243, -0.397653,
		42.738045, 38.420319, 25.925556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541538, 38.123901, 25.602228>,  <43.377411, 38.359249, 26.203913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541538, 38.123901, 25.602228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.164150, 38.229809, 25.522457>,  <42.937717, 38.293354, 25.474594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.164150, 38.229809, 25.522457>,  <43.541538, 38.123901, 25.602228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164150, 38.229809, 25.522457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139753, -0.227821, -0.963622,
		-0.300569, -0.937014, 0.177939,
		-0.943465, 0.264768, -0.199426,
		42.881111, 38.309238, 25.462629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201778, 37.470448, 25.229137>,  <43.541538, 38.123901, 25.602228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201778, 37.470448, 25.229137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.051361, 37.832314, 25.148972>,  <42.961109, 38.049435, 25.100872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.051361, 37.832314, 25.148972>,  <43.201778, 37.470448, 25.229137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051361, 37.832314, 25.148972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191953, -0.135543, -0.971999,
		-0.906502, -0.403983, -0.122684,
		-0.376042, 0.904669, -0.200415,
		42.938549, 38.103714, 25.088846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933163, 37.347324, 24.624989>,  <43.201778, 37.470448, 25.229137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933163, 37.347324, 24.624989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909451, 37.746147, 24.644440>,  <42.895222, 37.985439, 24.656111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909451, 37.746147, 24.644440>,  <42.933163, 37.347324, 24.624989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909451, 37.746147, 24.644440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092096, 0.053968, -0.994286,
		-0.993984, -0.054465, -0.095024,
		-0.059282, 0.997056, 0.048627,
		42.891666, 38.045265, 24.659027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400108, 37.513237, 24.195160>,  <42.933163, 37.347324, 24.624989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400108, 37.513237, 24.195160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632721, 37.836960, 24.228254>,  <42.772289, 38.031193, 24.248110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632721, 37.836960, 24.228254>,  <42.400108, 37.513237, 24.195160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632721, 37.836960, 24.228254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029131, 0.080918, -0.996295,
		-0.813005, 0.581783, 0.023480,
		0.581528, 0.809309, 0.082735,
		42.807178, 38.079754, 24.253075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145451, 37.935898, 23.777998>,  <42.400108, 37.513237, 24.195160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145451, 37.935898, 23.777998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.521683, 38.069439, 23.802813>,  <42.747421, 38.149563, 23.817701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.521683, 38.069439, 23.802813>,  <42.145451, 37.935898, 23.777998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521683, 38.069439, 23.802813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044234, 0.060671, -0.997177,
		-0.336677, 0.940670, 0.042298,
		0.940581, 0.333855, 0.062036,
		42.803856, 38.169594, 23.821423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168034, 38.468941, 23.329298>,  <42.145451, 37.935898, 23.777998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168034, 38.468941, 23.329298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.548977, 38.355389, 23.373884>,  <42.777542, 38.287258, 23.400637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.548977, 38.355389, 23.373884>,  <42.168034, 38.468941, 23.329298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548977, 38.355389, 23.373884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010128, -0.335848, -0.941862,
		0.304812, 0.898119, -0.316972,
		0.952359, -0.283880, 0.111466,
		42.834686, 38.270226, 23.407324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447701, 38.735775, 22.771599>,  <42.168034, 38.468941, 23.329298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447701, 38.735775, 22.771599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.727139, 38.461632, 22.853827>,  <42.894802, 38.297146, 22.903162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.727139, 38.461632, 22.853827>,  <42.447701, 38.735775, 22.771599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727139, 38.461632, 22.853827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118569, -0.172444, -0.977857,
		0.705628, 0.707497, -0.039206,
		0.698592, -0.685354, 0.205568,
		42.936718, 38.256027, 22.915497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006142, 38.887249, 22.239241>,  <42.447701, 38.735775, 22.771599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006142, 38.887249, 22.239241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047688, 38.509621, 22.364428>,  <43.072617, 38.283043, 22.439539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047688, 38.509621, 22.364428>,  <43.006142, 38.887249, 22.239241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047688, 38.509621, 22.364428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279120, -0.274355, -0.920229,
		0.954622, 0.182938, 0.235012,
		0.103868, -0.944067, 0.312967,
		43.078850, 38.226402, 22.458317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641842, 38.708389, 21.964876>,  <43.006142, 38.887249, 22.239241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641842, 38.708389, 21.964876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.436413, 38.376400, 22.051956>,  <43.313156, 38.177208, 22.104204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.436413, 38.376400, 22.051956>,  <43.641842, 38.708389, 21.964876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436413, 38.376400, 22.051956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070745, -0.293807, -0.953243,
		0.855127, -0.474155, 0.209606,
		-0.513569, -0.829973, 0.217698,
		43.282341, 38.127407, 22.117266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063740, 38.161877, 21.706257>,  <43.641842, 38.708389, 21.964876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063740, 38.161877, 21.706257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718410, 37.968651, 21.764664>,  <43.511211, 37.852715, 21.799707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718410, 37.968651, 21.764664>,  <44.063740, 38.161877, 21.706257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718410, 37.968651, 21.764664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057933, -0.382299, -0.922221,
		0.501314, -0.787716, 0.358033,
		-0.863324, -0.483064, 0.146017,
		43.459412, 37.823730, 21.808468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232327, 37.506527, 21.425785>,  <44.063740, 38.161877, 21.706257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232327, 37.506527, 21.425785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.836735, 37.563240, 21.408760>,  <43.599380, 37.597267, 21.398544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.836735, 37.563240, 21.408760>,  <44.232327, 37.506527, 21.425785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836735, 37.563240, 21.408760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003620, -0.310605, -0.950532,
		-0.147988, -0.939906, 0.307696,
		-0.988983, 0.141781, -0.042563,
		43.540039, 37.605774, 21.395990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956490, 36.943954, 21.068260>,  <44.232327, 37.506527, 21.425785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956490, 36.943954, 21.068260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.739288, 37.276154, 21.018585>,  <43.608967, 37.475471, 20.988779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.739288, 37.276154, 21.018585>,  <43.956490, 36.943954, 21.068260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739288, 37.276154, 21.018585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003758, -0.150294, -0.988634,
		-0.839720, -0.536368, 0.084731,
		-0.543006, 0.830495, -0.124189,
		43.576385, 37.525303, 20.981329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526440, 36.713924, 20.536592>,  <43.956490, 36.943954, 21.068260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526440, 36.713924, 20.536592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.553394, 37.112854, 20.547924>,  <43.569569, 37.352211, 20.554722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.553394, 37.112854, 20.547924>,  <43.526440, 36.713924, 20.536592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553394, 37.112854, 20.547924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282434, 0.046299, -0.958169,
		-0.956917, 0.056568, 0.284798,
		0.067388, 0.997325, 0.028328,
		43.573612, 37.412052, 20.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344021, 36.246529, 20.140587>,  <43.526440, 36.713924, 20.536592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344021, 36.246529, 20.140587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076038, 35.966698, 20.041193>,  <42.915249, 35.798798, 19.981556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076038, 35.966698, 20.041193>,  <43.344021, 36.246529, 20.140587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076038, 35.966698, 20.041193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291156, -0.060301, 0.954773,
		-0.682922, 0.712007, -0.163287,
		-0.669959, -0.699578, -0.248486,
		42.875050, 35.756824, 19.966646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728329, 36.416824, 20.390858>,  <43.344021, 36.246529, 20.140587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728329, 36.416824, 20.390858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720375, 36.019531, 20.345087>,  <42.715603, 35.781155, 20.317625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720375, 36.019531, 20.345087>,  <42.728329, 36.416824, 20.390858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720375, 36.019531, 20.345087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079531, -0.112517, 0.990462,
		-0.996634, 0.028798, -0.076755,
		-0.019887, -0.993232, -0.114429,
		42.714409, 35.721561, 20.310759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072788, 36.163277, 20.679226>,  <42.728329, 36.416824, 20.390858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072788, 36.163277, 20.679226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.340672, 35.866337, 20.687357>,  <42.501400, 35.688175, 20.692236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.340672, 35.866337, 20.687357>,  <42.072788, 36.163277, 20.679226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340672, 35.866337, 20.687357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184345, -0.139668, 0.972887,
		-0.719382, -0.655295, -0.230384,
		0.669706, -0.742348, 0.020326,
		42.541584, 35.643631, 20.693455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778694, 35.728977, 21.120358>,  <42.072788, 36.163277, 20.679226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778694, 35.728977, 21.120358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154362, 35.592346, 21.105965>,  <42.379761, 35.510368, 21.097328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154362, 35.592346, 21.105965>,  <41.778694, 35.728977, 21.120358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154362, 35.592346, 21.105965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039006, 0.001989, 0.999237,
		-0.341245, -0.939852, 0.015192,
		0.939165, -0.341577, -0.035981,
		42.436111, 35.489872, 21.095171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779682, 35.147671, 21.607491>,  <41.778694, 35.728977, 21.120358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779682, 35.147671, 21.607491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.169071, 35.232513, 21.573185>,  <42.402706, 35.283421, 21.552601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.169071, 35.232513, 21.573185>,  <41.779682, 35.147671, 21.607491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169071, 35.232513, 21.573185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113662, -0.123020, 0.985874,
		0.198558, -0.969473, -0.143866,
		0.973476, 0.212105, -0.085766,
		42.461113, 35.296146, 21.547455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236488, 34.526073, 21.822083>,  <41.779682, 35.147671, 21.607491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236488, 34.526073, 21.822083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.454189, 34.858246, 21.869720>,  <42.584808, 35.057549, 21.898302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.454189, 34.858246, 21.869720>,  <42.236488, 34.526073, 21.822083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454189, 34.858246, 21.869720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067939, -0.097865, 0.992878,
		0.836169, -0.548463, 0.003156,
		0.544248, 0.830428, 0.119094,
		42.617462, 35.107376, 21.905449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805885, 34.387840, 22.339924>,  <42.236488, 34.526073, 21.822083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805885, 34.387840, 22.339924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772373, 34.785885, 22.319010>,  <42.752266, 35.024712, 22.306461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772373, 34.785885, 22.319010>,  <42.805885, 34.387840, 22.339924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772373, 34.785885, 22.319010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184113, 0.067022, 0.980617,
		0.979329, 0.072526, -0.188828,
		-0.083776, 0.995112, -0.052284,
		42.747242, 35.084419, 22.303326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187183, 34.593857, 22.784809>,  <42.805885, 34.387840, 22.339924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187183, 34.593857, 22.784809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.014385, 34.952171, 22.742968>,  <42.910706, 35.167160, 22.717863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.014385, 34.952171, 22.742968>,  <43.187183, 34.593857, 22.784809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014385, 34.952171, 22.742968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168599, 0.194155, 0.966374,
		0.885975, 0.399835, -0.234904,
		-0.431998, 0.895788, -0.104605,
		42.884785, 35.220909, 22.711586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529423, 35.061573, 23.210123>,  <43.187183, 34.593857, 22.784809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529423, 35.061573, 23.210123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.175697, 35.240368, 23.156179>,  <42.963463, 35.347645, 23.123814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.175697, 35.240368, 23.156179>,  <43.529423, 35.061573, 23.210123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175697, 35.240368, 23.156179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026713, 0.239930, 0.970423,
		0.466124, 0.861763, -0.200234,
		-0.884316, 0.446988, -0.134857,
		42.910404, 35.374466, 23.115723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535637, 35.750721, 23.491421>,  <43.529423, 35.061573, 23.210123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535637, 35.750721, 23.491421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.162617, 35.609848, 23.459646>,  <42.938805, 35.525326, 23.440582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.162617, 35.609848, 23.459646>,  <43.535637, 35.750721, 23.491421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162617, 35.609848, 23.459646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188229, 0.286538, 0.939397,
		-0.308076, 0.890991, -0.333503,
		-0.932555, -0.352180, -0.079435,
		42.882851, 35.504192, 23.435816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024639, 36.349846, 23.663164>,  <43.535637, 35.750721, 23.491421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024639, 36.349846, 23.663164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832825, 36.005085, 23.729086>,  <42.717735, 35.798229, 23.768639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832825, 36.005085, 23.729086>,  <43.024639, 36.349846, 23.663164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832825, 36.005085, 23.729086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225308, 0.302446, 0.926155,
		-0.848104, 0.406993, -0.339229,
		-0.479537, -0.861907, 0.164807,
		42.688965, 35.746513, 23.778528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338783, 36.524971, 24.030306>,  <43.024639, 36.349846, 23.663164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338783, 36.524971, 24.030306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403435, 36.133636, 24.082056>,  <42.442226, 35.898834, 24.113106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403435, 36.133636, 24.082056>,  <42.338783, 36.524971, 24.030306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403435, 36.133636, 24.082056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393335, 0.056373, 0.917665,
		-0.905077, -0.199205, -0.375702,
		0.161624, -0.978335, 0.129376,
		42.451923, 35.840137, 24.120869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721432, 36.415173, 24.415333>,  <42.338783, 36.524971, 24.030306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721432, 36.415173, 24.415333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940052, 36.084148, 24.466593>,  <42.071224, 35.885532, 24.497349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940052, 36.084148, 24.466593>,  <41.721432, 36.415173, 24.415333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940052, 36.084148, 24.466593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388083, -0.114699, 0.914459,
		-0.742072, -0.549533, -0.383852,
		0.546552, -0.827561, 0.128149,
		42.104019, 35.835880, 24.505037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301445, 35.870708, 24.657228>,  <41.721432, 36.415173, 24.415333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301445, 35.870708, 24.657228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673988, 35.791756, 24.779617>,  <41.897514, 35.744385, 24.853050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673988, 35.791756, 24.779617>,  <41.301445, 35.870708, 24.657228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673988, 35.791756, 24.779617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308004, 0.021109, 0.951151,
		-0.194202, -0.980099, -0.041135,
		0.931353, -0.197385, 0.305973,
		41.953396, 35.732540, 24.871408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876598, 35.311020, 24.598946>,  <41.301445, 35.870708, 24.657228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876598, 35.311020, 24.598946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477966, 35.278385, 24.593708>,  <40.238789, 35.258804, 24.590567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477966, 35.278385, 24.593708>,  <40.876598, 35.311020, 24.598946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477966, 35.278385, 24.593708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006347, 0.082383, -0.996581,
		0.082383, -0.993256, -0.081583,
		0.996581, 0.081583, 0.013091,
		40.178993, 35.253910, 24.589781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625401, 34.787121, 24.098087>,  <40.876598, 35.311020, 24.598946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625401, 34.787121, 24.098087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.309319, 35.030590, 24.126629>,  <40.119671, 35.176670, 24.143755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.309319, 35.030590, 24.126629>,  <40.625401, 34.787121, 24.098087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309319, 35.030590, 24.126629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048438, 0.054037, -0.997363,
		-0.610924, -0.791579, -0.013217,
		-0.790206, 0.608673, 0.071355,
		40.072258, 35.213192, 24.148035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087414, 34.546360, 23.574692>,  <40.625401, 34.787121, 24.098087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087414, 34.546360, 23.574692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.988056, 34.919865, 23.677761>,  <39.928440, 35.143967, 23.739603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.988056, 34.919865, 23.677761>,  <40.087414, 34.546360, 23.574692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988056, 34.919865, 23.677761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320043, 0.171960, -0.931666,
		-0.914260, -0.313889, 0.256129,
		-0.248396, 0.933758, 0.257674,
		39.913536, 35.199993, 23.755064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469482, 34.581882, 23.130247>,  <40.087414, 34.546360, 23.574692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469482, 34.581882, 23.130247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587830, 34.947147, 23.242388>,  <39.658836, 35.166306, 23.309671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587830, 34.947147, 23.242388>,  <39.469482, 34.581882, 23.130247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587830, 34.947147, 23.242388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131173, 0.329550, -0.934981,
		-0.946180, 0.239855, 0.217285,
		0.295866, 0.913163, 0.280351,
		39.676590, 35.221096, 23.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120499, 34.994640, 22.672581>,  <39.469482, 34.581882, 23.130247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120499, 34.994640, 22.672581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.394947, 35.240444, 22.828331>,  <39.559616, 35.387928, 22.921782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.394947, 35.240444, 22.828331>,  <39.120499, 34.994640, 22.672581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394947, 35.240444, 22.828331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040139, 0.502439, -0.863680,
		-0.726381, 0.608217, 0.320067,
		0.686119, 0.614513, 0.389376,
		39.600784, 35.424797, 22.945143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891743, 35.680363, 22.540798>,  <39.120499, 34.994640, 22.672581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891743, 35.680363, 22.540798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289478, 35.660042, 22.578117>,  <39.528122, 35.647850, 22.600510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289478, 35.660042, 22.578117>,  <38.891743, 35.680363, 22.540798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289478, 35.660042, 22.578117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105542, 0.372495, -0.922013,
		0.012084, 0.926643, 0.375749,
		0.994341, -0.050799, 0.093298,
		39.587780, 35.644802, 22.606108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113113, 36.308743, 22.203739>,  <38.891743, 35.680363, 22.540798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113113, 36.308743, 22.203739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447708, 36.089809, 22.193016>,  <39.648464, 35.958450, 22.186583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447708, 36.089809, 22.193016>,  <39.113113, 36.308743, 22.203739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447708, 36.089809, 22.193016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141071, 0.262352, -0.954605,
		0.529521, 0.794730, 0.296667,
		0.836484, -0.547335, -0.026808,
		39.698654, 35.925610, 22.184975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920132, 37.010754, 21.962296>,  <39.113113, 36.308743, 22.203739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920132, 37.010754, 21.962296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559555, 36.998993, 21.789537>,  <38.343208, 36.991936, 21.685883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559555, 36.998993, 21.789537>,  <38.920132, 37.010754, 21.962296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559555, 36.998993, 21.789537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401087, -0.318659, 0.858828,
		-0.162877, 0.947414, 0.275461,
		-0.901444, -0.029400, -0.431897,
		38.289124, 36.990173, 21.659967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371258, 37.270973, 22.481096>,  <38.920132, 37.010754, 21.962296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371258, 37.270973, 22.481096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135410, 37.084606, 22.217199>,  <37.993900, 36.972786, 22.058861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135410, 37.084606, 22.217199>,  <38.371258, 37.270973, 22.481096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135410, 37.084606, 22.217199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570174, -0.338430, 0.748577,
		-0.572054, 0.817548, -0.066110,
		-0.589623, -0.465920, -0.659744,
		37.958523, 36.944832, 22.019276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715813, 37.484699, 22.587681>,  <38.371258, 37.270973, 22.481096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715813, 37.484699, 22.587681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663952, 37.126598, 22.417168>,  <37.632835, 36.911739, 22.314859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663952, 37.126598, 22.417168>,  <37.715813, 37.484699, 22.587681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663952, 37.126598, 22.417168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624104, -0.260394, 0.736675,
		-0.770510, 0.361557, -0.524968,
		-0.129651, -0.895249, -0.426285,
		37.625057, 36.858025, 22.289282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131218, 37.377094, 22.732313>,  <37.715813, 37.484699, 22.587681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131218, 37.377094, 22.732313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257877, 37.010685, 22.633808>,  <37.333874, 36.790840, 22.574705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257877, 37.010685, 22.633808>,  <37.131218, 37.377094, 22.732313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257877, 37.010685, 22.633808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492248, -0.380615, 0.782831,
		-0.810820, -0.126655, -0.571428,
		0.316644, -0.916019, -0.246264,
		37.352871, 36.735878, 22.559929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582218, 36.958988, 22.847168>,  <37.131218, 37.377094, 22.732313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582218, 36.958988, 22.847168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869949, 36.682152, 22.823286>,  <37.042587, 36.516048, 22.808958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.869949, 36.682152, 22.823286>,  <36.582218, 36.958988, 22.847168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869949, 36.682152, 22.823286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340744, -0.426433, 0.837883,
		-0.605355, -0.582373, -0.542575,
		0.719332, -0.692096, -0.059703,
		37.085751, 36.474522, 22.805376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269295, 36.245686, 22.863605>,  <36.582218, 36.958988, 22.847168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269295, 36.245686, 22.863605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643143, 36.273136, 23.003187>,  <36.867451, 36.289604, 23.086937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643143, 36.273136, 23.003187>,  <36.269295, 36.245686, 22.863605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643143, 36.273136, 23.003187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293356, -0.405932, 0.865541,
		0.201049, -0.911323, -0.359262,
		0.934624, 0.068625, 0.348954,
		36.923531, 36.293724, 23.107874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318504, 35.785122, 23.371635>,  <36.269295, 36.245686, 22.863605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318504, 35.785122, 23.371635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665810, 35.966351, 23.452465>,  <36.874195, 36.075089, 23.500963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665810, 35.966351, 23.452465>,  <36.318504, 35.785122, 23.371635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665810, 35.966351, 23.452465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011492, -0.388845, 0.921231,
		0.495963, -0.802198, -0.332415,
		0.868268, 0.453076, 0.202072,
		36.926289, 36.102272, 23.513086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.946365, 39.753220, 21.169989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.139042, 39.407715, 21.229176>,  <41.254646, 39.200413, 21.264687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.139042, 39.407715, 21.229176>,  <40.946365, 39.753220, 21.169989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139042, 39.407715, 21.229176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503018, -0.134257, 0.853784,
		-0.717600, -0.485687, -0.499158,
		0.481687, -0.863761, 0.147966,
		41.283546, 39.148586, 21.273565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451397, 39.344391, 21.394833>,  <40.946365, 39.753220, 21.169989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451397, 39.344391, 21.394833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796452, 39.169865, 21.497192>,  <41.003487, 39.065151, 21.558607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796452, 39.169865, 21.497192>,  <40.451397, 39.344391, 21.394833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796452, 39.169865, 21.497192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305806, -0.046887, 0.950939,
		-0.402910, -0.898572, -0.173874,
		0.862639, -0.436314, 0.255897,
		41.055244, 39.038971, 21.573961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238518, 38.756519, 21.853882>,  <40.451397, 39.344391, 21.394833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238518, 38.756519, 21.853882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625801, 38.808441, 21.939407>,  <40.858173, 38.839596, 21.990723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625801, 38.808441, 21.939407>,  <40.238518, 38.756519, 21.853882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625801, 38.808441, 21.939407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209799, -0.044019, 0.976753,
		0.136205, -0.990561, -0.015386,
		0.968211, 0.129811, 0.213814,
		40.916264, 38.847385, 22.003551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415920, 38.229572, 22.429636>,  <40.238518, 38.756519, 21.853882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415920, 38.229572, 22.429636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684517, 38.525578, 22.445057>,  <40.845676, 38.703178, 22.454309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684517, 38.525578, 22.445057>,  <40.415920, 38.229572, 22.429636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684517, 38.525578, 22.445057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121771, 0.058880, 0.990810,
		0.730939, -0.670015, 0.129649,
		0.671491, 0.740009, 0.038551,
		40.885963, 38.747581, 22.456623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989876, 38.050362, 22.869598>,  <40.415920, 38.229572, 22.429636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989876, 38.050362, 22.869598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988598, 38.450336, 22.865177>,  <40.987831, 38.690319, 22.862524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988598, 38.450336, 22.865177>,  <40.989876, 38.050362, 22.869598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988598, 38.450336, 22.865177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077695, 0.010772, 0.996919,
		0.996972, 0.004048, 0.077656,
		-0.003199, 0.999934, -0.011054,
		40.987637, 38.750317, 22.861860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210434, 38.196598, 23.501066>,  <40.989876, 38.050362, 22.869598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210434, 38.196598, 23.501066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084347, 38.552086, 23.367908>,  <41.008694, 38.765377, 23.288013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084347, 38.552086, 23.367908>,  <41.210434, 38.196598, 23.501066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084347, 38.552086, 23.367908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166324, 0.293613, 0.941344,
		0.934330, 0.352098, 0.055262,
		-0.315220, 0.888717, -0.332894,
		40.989780, 38.818703, 23.268040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546368, 38.756413, 23.989632>,  <41.210434, 38.196598, 23.501066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546368, 38.756413, 23.989632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.204979, 38.899494, 23.838037>,  <41.000145, 38.985344, 23.747082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.204979, 38.899494, 23.838037>,  <41.546368, 38.756413, 23.989632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204979, 38.899494, 23.838037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301686, 0.253846, 0.918993,
		0.424933, 0.898670, -0.108736,
		-0.853474, 0.357706, -0.378984,
		40.948936, 39.006805, 23.724342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443054, 39.365932, 24.303417>,  <41.546368, 38.756413, 23.989632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443054, 39.365932, 24.303417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068520, 39.312115, 24.173700>,  <40.843800, 39.279823, 24.095871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068520, 39.312115, 24.173700>,  <41.443054, 39.365932, 24.303417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068520, 39.312115, 24.173700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340562, 0.572594, 0.745757,
		0.085351, 0.808724, -0.581963,
		-0.936340, -0.134543, -0.324292,
		40.787617, 39.271751, 24.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142910, 40.071304, 24.349245>,  <41.443054, 39.365932, 24.303417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142910, 40.071304, 24.349245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836369, 39.815823, 24.321674>,  <40.652443, 39.662533, 24.305132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836369, 39.815823, 24.321674>,  <41.142910, 40.071304, 24.349245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836369, 39.815823, 24.321674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484151, 0.503700, 0.715461,
		-0.422252, 0.581669, -0.695244,
		-0.766356, -0.638708, -0.068928,
		40.606461, 39.624210, 24.300997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616562, 40.469311, 24.494804>,  <41.142910, 40.071304, 24.349245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616562, 40.469311, 24.494804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465099, 40.104385, 24.557158>,  <40.374222, 39.885429, 24.594568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465099, 40.104385, 24.557158>,  <40.616562, 40.469311, 24.494804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465099, 40.104385, 24.557158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589987, 0.367695, 0.718830,
		-0.713117, 0.180220, -0.677484,
		-0.378655, -0.912316, 0.155882,
		40.351501, 39.830692, 24.603922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857723, 40.612064, 24.719059>,  <40.616562, 40.469311, 24.494804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857723, 40.612064, 24.719059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980915, 40.249466, 24.834579>,  <40.054829, 40.031906, 24.903893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980915, 40.249466, 24.834579>,  <39.857723, 40.612064, 24.719059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980915, 40.249466, 24.834579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485675, 0.111221, 0.867035,
		-0.818088, -0.407292, -0.406011,
		0.307979, -0.906501, 0.288801,
		40.073307, 39.977516, 24.921219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241638, 40.263542, 25.061201>,  <39.857723, 40.612064, 24.719059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241638, 40.263542, 25.061201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580105, 40.093788, 25.190140>,  <39.783184, 39.991936, 25.267504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.580105, 40.093788, 25.190140>,  <39.241638, 40.263542, 25.061201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580105, 40.093788, 25.190140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314050, 0.091602, 0.944977,
		-0.430560, -0.900837, -0.055767,
		0.846162, -0.424384, 0.322348,
		39.833954, 39.966473, 25.286844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683186, 39.817074, 24.846376>,  <39.241638, 40.263542, 25.061201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683186, 39.817074, 24.846376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328815, 39.958752, 24.726593>,  <38.116192, 40.043758, 24.654722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328815, 39.958752, 24.726593>,  <38.683186, 39.817074, 24.846376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328815, 39.958752, 24.726593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321722, 0.004202, -0.946825,
		-0.334102, -0.935162, -0.117675,
		-0.885929, 0.354195, -0.299458,
		38.063038, 40.065010, 24.636755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473297, 39.370823, 24.192240>,  <38.683186, 39.817074, 24.846376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473297, 39.370823, 24.192240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.261925, 39.710060, 24.176750>,  <38.135101, 39.913601, 24.167456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.261925, 39.710060, 24.176750>,  <38.473297, 39.370823, 24.192240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261925, 39.710060, 24.176750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229059, 0.098506, -0.968416,
		-0.817491, -0.520612, -0.246316,
		-0.528432, 0.848092, -0.038723,
		38.103394, 39.964489, 24.165133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154453, 39.382317, 23.543087>,  <38.473297, 39.370823, 24.192240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154453, 39.382317, 23.543087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122734, 39.766266, 23.650681>,  <38.103703, 39.996635, 23.715237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122734, 39.766266, 23.650681>,  <38.154453, 39.382317, 23.543087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122734, 39.766266, 23.650681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204076, 0.279748, -0.938133,
		-0.975738, -0.019500, -0.218072,
		-0.079299, 0.959875, 0.268982,
		38.098946, 40.054230, 23.731375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813293, 39.627186, 23.017056>,  <38.154453, 39.382317, 23.543087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813293, 39.627186, 23.017056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976692, 39.958977, 23.169426>,  <38.074730, 40.158051, 23.260849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976692, 39.958977, 23.169426>,  <37.813293, 39.627186, 23.017056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976692, 39.958977, 23.169426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252938, 0.298122, -0.920405,
		-0.877015, 0.472330, -0.088025,
		0.408493, 0.829474, 0.380928,
		38.099239, 40.207821, 23.283705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518917, 40.197945, 22.647333>,  <37.813293, 39.627186, 23.017056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518917, 40.197945, 22.647333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863094, 40.327171, 22.804945>,  <38.069603, 40.404709, 22.899511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863094, 40.327171, 22.804945>,  <37.518917, 40.197945, 22.647333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863094, 40.327171, 22.804945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244975, 0.415776, -0.875853,
		-0.446789, 0.850151, 0.278608,
		0.860446, 0.323069, 0.394030,
		38.121227, 40.424091, 22.923155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668896, 40.893410, 22.261724>,  <37.518917, 40.197945, 22.647333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668896, 40.893410, 22.261724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014526, 40.786572, 22.432381>,  <38.221905, 40.722469, 22.534775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014526, 40.786572, 22.432381>,  <37.668896, 40.893410, 22.261724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014526, 40.786572, 22.432381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500131, 0.359823, -0.787653,
		0.056865, 0.893972, 0.444500,
		0.864081, -0.267098, 0.426641,
		38.273750, 40.706444, 22.560373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192062, 41.497845, 22.218374>,  <37.668896, 40.893410, 22.261724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192062, 41.497845, 22.218374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397236, 41.156364, 22.254374>,  <38.520340, 40.951477, 22.275972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.397236, 41.156364, 22.254374>,  <38.192062, 41.497845, 22.218374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397236, 41.156364, 22.254374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592793, 0.276426, -0.756429,
		0.620885, 0.441346, 0.647855,
		0.512931, -0.853699, 0.089998,
		38.551117, 40.900253, 22.281374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926731, 41.653660, 22.263615>,  <38.192062, 41.497845, 22.218374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926731, 41.653660, 22.263615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891331, 41.279652, 22.126268>,  <38.870090, 41.055244, 22.043859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891331, 41.279652, 22.126268>,  <38.926731, 41.653660, 22.263615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891331, 41.279652, 22.126268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636753, 0.211981, -0.741357,
		0.765972, -0.284249, 0.576618,
		-0.088498, -0.935022, -0.343368,
		38.864780, 40.999146, 22.023258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478092, 41.615868, 21.673424>,  <38.926731, 41.653660, 22.263615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478092, 41.615868, 21.673424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338520, 41.244019, 21.626019>,  <39.254776, 41.020908, 21.597576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338520, 41.244019, 21.626019>,  <39.478092, 41.615868, 21.673424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338520, 41.244019, 21.626019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417257, -0.040877, -0.907869,
		0.839133, -0.366233, 0.402155,
		-0.348931, -0.929625, -0.118512,
		39.233841, 40.965130, 21.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031414, 41.143803, 21.649385>,  <39.478092, 41.615868, 21.673424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031414, 41.143803, 21.649385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.743576, 40.975674, 21.428291>,  <39.570873, 40.874794, 21.295635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.743576, 40.975674, 21.428291>,  <40.031414, 41.143803, 21.649385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743576, 40.975674, 21.428291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621670, -0.035316, -0.782483,
		0.309378, -0.906686, 0.286717,
		-0.719591, -0.420326, -0.552734,
		39.527699, 40.849575, 21.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408333, 40.595802, 21.211977>,  <40.031414, 41.143803, 21.649385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408333, 40.595802, 21.211977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050358, 40.664085, 21.047077>,  <39.835575, 40.705055, 20.948137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.050358, 40.664085, 21.047077>,  <40.408333, 40.595802, 21.211977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050358, 40.664085, 21.047077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406863, -0.067095, -0.911022,
		-0.183184, -0.983034, -0.009412,
		-0.894934, 0.170714, -0.412250,
		39.781879, 40.715298, 20.923403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274120, 40.038063, 20.623817>,  <40.408333, 40.595802, 21.211977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274120, 40.038063, 20.623817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033710, 40.348682, 20.548193>,  <39.889465, 40.535053, 20.502819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033710, 40.348682, 20.548193>,  <40.274120, 40.038063, 20.623817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033710, 40.348682, 20.548193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289157, -0.009252, -0.957237,
		-0.745089, -0.629991, -0.218983,
		-0.601025, 0.776547, -0.189061,
		39.853401, 40.581646, 20.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845142, 39.961678, 20.015869>,  <40.274120, 40.038063, 20.623817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845142, 39.961678, 20.015869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862881, 40.357296, 20.072174>,  <39.873524, 40.594669, 20.105957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862881, 40.357296, 20.072174>,  <39.845142, 39.961678, 20.015869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862881, 40.357296, 20.072174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238660, 0.126334, -0.962850,
		-0.970090, 0.076290, -0.230445,
		0.044343, 0.989050, 0.140763,
		39.876183, 40.654011, 20.114403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857246, 39.242649, 19.723980>,  <39.845142, 39.961678, 20.015869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857246, 39.242649, 19.723980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866730, 38.919971, 19.487785>,  <39.872421, 38.726364, 19.346067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.866730, 38.919971, 19.487785>,  <39.857246, 39.242649, 19.723980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866730, 38.919971, 19.487785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847675, -0.329351, 0.415904,
		-0.529987, 0.490681, -0.691626,
		0.023712, -0.806697, -0.590489,
		39.873844, 38.677963, 19.310638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192986, 39.197678, 19.565105>,  <39.857246, 39.242649, 19.723980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192986, 39.197678, 19.565105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344131, 38.839497, 19.470978>,  <39.434818, 38.624588, 19.414501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.344131, 38.839497, 19.470978>,  <39.192986, 39.197678, 19.565105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344131, 38.839497, 19.470978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756992, -0.445142, 0.478343,
		-0.533087, -0.002612, -0.846056,
		0.377864, -0.895456, -0.235322,
		39.457493, 38.570858, 19.400381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567490, 38.747959, 19.318445>,  <39.192986, 39.197678, 19.565105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567490, 38.747959, 19.318445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.865326, 38.520538, 19.458347>,  <39.044029, 38.384087, 19.542290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.865326, 38.520538, 19.458347>,  <38.567490, 38.747959, 19.318445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865326, 38.520538, 19.458347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629098, -0.422493, 0.652484,
		-0.223202, -0.705866, -0.672261,
		0.744591, -0.568554, 0.349757,
		39.088703, 38.349972, 19.563274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292072, 38.004784, 19.347744>,  <38.567490, 38.747959, 19.318445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292072, 38.004784, 19.347744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.606163, 38.006355, 19.595423>,  <38.794617, 38.007298, 19.744030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.606163, 38.006355, 19.595423>,  <38.292072, 38.004784, 19.347744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606163, 38.006355, 19.595423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545071, -0.470072, 0.694212,
		0.293795, -0.882620, -0.366970,
		0.785227, 0.003932, 0.619195,
		38.841732, 38.007534, 19.781181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258747, 37.358173, 19.655485>,  <38.292072, 38.004784, 19.347744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258747, 37.358173, 19.655485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511009, 37.513248, 19.924400>,  <38.662365, 37.606293, 20.085749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511009, 37.513248, 19.924400>,  <38.258747, 37.358173, 19.655485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511009, 37.513248, 19.924400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499869, -0.459721, 0.734022,
		0.593638, -0.798970, -0.096131,
		0.630655, 0.387690, 0.672288,
		38.700207, 37.629555, 20.126087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575905, 36.773769, 19.942368>,  <38.258747, 37.358173, 19.655485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575905, 36.773769, 19.942368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611683, 37.092609, 20.181240>,  <38.633148, 37.283913, 20.324564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611683, 37.092609, 20.181240>,  <38.575905, 36.773769, 19.942368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611683, 37.092609, 20.181240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379445, -0.527095, 0.760390,
		0.920880, -0.294611, 0.255311,
		0.089446, 0.797104, 0.597180,
		38.638515, 37.331741, 20.360394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882027, 36.523537, 20.640118>,  <38.575905, 36.773769, 19.942368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882027, 36.523537, 20.640118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726616, 36.874599, 20.752375>,  <38.633369, 37.085239, 20.819729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726616, 36.874599, 20.752375>,  <38.882027, 36.523537, 20.640118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726616, 36.874599, 20.752375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295463, -0.407151, 0.864251,
		0.872783, 0.252863, 0.417504,
		-0.388524, 0.877661, 0.280643,
		38.610058, 37.137897, 20.836567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070282, 36.650970, 21.325645>,  <38.882027, 36.523537, 20.640118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070282, 36.650970, 21.325645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729366, 36.850285, 21.262005>,  <38.524818, 36.969875, 21.223820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729366, 36.850285, 21.262005>,  <39.070282, 36.650970, 21.325645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729366, 36.850285, 21.262005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364908, -0.348478, 0.863368,
		0.374763, 0.793896, 0.478833,
		-0.852288, 0.498289, -0.159102,
		38.473679, 36.999771, 21.214273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604134, 36.671474, 21.759830>,  <39.070282, 36.650970, 21.325645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604134, 36.671474, 21.759830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728241, 36.291271, 21.766453>,  <39.802704, 36.063148, 21.770426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728241, 36.291271, 21.766453>,  <39.604134, 36.671474, 21.759830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728241, 36.291271, 21.766453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233126, 0.059189, -0.970644,
		0.921622, 0.305019, 0.239952,
		0.310267, -0.950505, 0.016558,
		39.821320, 36.006119, 21.771420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254436, 36.652863, 21.351591>,  <39.604134, 36.671474, 21.759830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254436, 36.652863, 21.351591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155918, 36.266018, 21.376976>,  <40.096809, 36.033909, 21.392206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.155918, 36.266018, 21.376976>,  <40.254436, 36.652863, 21.351591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155918, 36.266018, 21.376976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269093, -0.131140, -0.954144,
		0.931091, -0.217921, 0.292542,
		-0.246292, -0.967116, 0.063462,
		40.082031, 35.975883, 21.396015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827202, 36.284473, 20.933823>,  <40.254436, 36.652863, 21.351591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827202, 36.284473, 20.933823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521896, 36.026161, 20.941866>,  <40.338715, 35.871174, 20.946692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521896, 36.026161, 20.941866>,  <40.827202, 36.284473, 20.933823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521896, 36.026161, 20.941866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222138, -0.291518, -0.930415,
		0.606704, -0.705682, 0.365955,
		-0.763259, -0.645779, 0.020107,
		40.292919, 35.832428, 20.947897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146931, 35.582455, 20.595184>,  <40.827202, 36.284473, 20.933823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146931, 35.582455, 20.595184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.747093, 35.586597, 20.605867>,  <40.507191, 35.589081, 20.612278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.747093, 35.586597, 20.605867>,  <41.146931, 35.582455, 20.595184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747093, 35.586597, 20.605867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028631, -0.332381, -0.942711,
		-0.000882, -0.943089, 0.332541,
		-0.999590, 0.010352, 0.026708,
		40.447216, 35.589703, 20.613880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962425, 35.024963, 20.240211>,  <41.146931, 35.582455, 20.595184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962425, 35.024963, 20.240211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637211, 35.257645, 20.230463>,  <40.442081, 35.397251, 20.224613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637211, 35.257645, 20.230463>,  <40.962425, 35.024963, 20.240211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637211, 35.257645, 20.230463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122738, -0.212173, -0.969494,
		-0.569125, -0.785244, 0.243902,
		-0.813039, 0.581699, -0.024374,
		40.393299, 35.432156, 20.223150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486828, 34.698162, 19.736643>,  <40.962425, 35.024963, 20.240211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486828, 34.698162, 19.736643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380928, 35.082066, 19.774092>,  <40.317390, 35.312408, 19.796560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380928, 35.082066, 19.774092>,  <40.486828, 34.698162, 19.736643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380928, 35.082066, 19.774092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180858, 0.045943, -0.982436,
		-0.947206, -0.277029, 0.161418,
		-0.264747, 0.959763, 0.093620,
		40.301502, 35.369995, 19.802177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941654, 34.890522, 19.197309>,  <40.486828, 34.698162, 19.736643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941654, 34.890522, 19.197309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087029, 35.251736, 19.288919>,  <40.174252, 35.468464, 19.343885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087029, 35.251736, 19.288919>,  <39.941654, 34.890522, 19.197309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087029, 35.251736, 19.288919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070115, 0.218623, -0.973287,
		-0.928979, 0.369782, 0.016139,
		0.363432, 0.903031, 0.229024,
		40.196056, 35.522644, 19.357626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628086, 35.336628, 18.729313>,  <39.941654, 34.890522, 19.197309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628086, 35.336628, 18.729313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.945904, 35.534199, 18.870583>,  <40.136597, 35.652740, 18.955345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.945904, 35.534199, 18.870583>,  <39.628086, 35.336628, 18.729313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945904, 35.534199, 18.870583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302018, 0.183119, -0.935549,
		-0.526764, 0.850004, -0.003677,
		0.794547, 0.493924, 0.353177,
		40.184269, 35.682377, 18.976536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606682, 36.000690, 18.428568>,  <39.628086, 35.336628, 18.729313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606682, 36.000690, 18.428568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982693, 35.893913, 18.513514>,  <40.208298, 35.829845, 18.564480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982693, 35.893913, 18.513514>,  <39.606682, 36.000690, 18.428568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982693, 35.893913, 18.513514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262430, 0.168234, -0.950173,
		0.217917, 0.948914, 0.228198,
		0.940023, -0.266945, 0.212362,
		40.264698, 35.813831, 18.577223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.932552, 34.053932, 34.494225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317619, 33.968189, 34.560345>,  <37.548660, 33.916744, 34.600018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317619, 33.968189, 34.560345>,  <36.932552, 34.053932, 34.494225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317619, 33.968189, 34.560345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250204, 0.471618, -0.845562,
		0.103294, 0.855353, 0.507644,
		0.962667, -0.214356, 0.165297,
		37.606419, 33.903881, 34.609932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236141, 34.687805, 34.308098>,  <36.932552, 34.053932, 34.494225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236141, 34.687805, 34.308098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524071, 34.410381, 34.296543>,  <37.696827, 34.243927, 34.289612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524071, 34.410381, 34.296543>,  <37.236141, 34.687805, 34.308098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524071, 34.410381, 34.296543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295063, 0.343369, -0.891647,
		0.628330, 0.633302, 0.451808,
		0.719819, -0.693560, -0.028885,
		37.740017, 34.202312, 34.287876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828434, 35.003387, 34.192154>,  <37.236141, 34.687805, 34.308098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828434, 35.003387, 34.192154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915070, 34.635052, 34.062450>,  <37.967049, 34.414051, 33.984631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915070, 34.635052, 34.062450>,  <37.828434, 35.003387, 34.192154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915070, 34.635052, 34.062450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260493, 0.374607, -0.889839,
		0.940869, 0.108259, 0.321007,
		0.216584, -0.920842, -0.324255,
		37.980045, 34.358799, 33.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362679, 35.113720, 33.825283>,  <37.828434, 35.003387, 34.192154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362679, 35.113720, 33.825283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292244, 34.738663, 33.705406>,  <38.249985, 34.513630, 33.633480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292244, 34.738663, 33.705406>,  <38.362679, 35.113720, 33.825283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292244, 34.738663, 33.705406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285356, 0.242756, -0.927169,
		0.942107, -0.248782, 0.224816,
		-0.176087, -0.937645, -0.299693,
		38.239418, 34.457371, 33.615498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852741, 35.037209, 33.237049>,  <38.362679, 35.113720, 33.825283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852741, 35.037209, 33.237049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.606934, 34.723709, 33.201042>,  <38.459450, 34.535610, 33.179436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.606934, 34.723709, 33.201042>,  <38.852741, 35.037209, 33.237049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606934, 34.723709, 33.201042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148431, -0.002793, -0.988919,
		0.774815, -0.621068, 0.118050,
		-0.614516, -0.783751, -0.090022,
		38.422577, 34.488583, 33.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170799, 34.573315, 32.703167>,  <38.852741, 35.037209, 33.237049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170799, 34.573315, 32.703167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772633, 34.535057, 32.703827>,  <38.533733, 34.512104, 32.704224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772633, 34.535057, 32.703827>,  <39.170799, 34.573315, 32.703167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772633, 34.535057, 32.703827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008253, 0.068647, -0.997607,
		0.095298, -0.993046, -0.069121,
		-0.995415, -0.095640, 0.001654,
		38.474007, 34.506363, 32.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047886, 34.027840, 32.146358>,  <39.170799, 34.573315, 32.703167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047886, 34.027840, 32.146358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.688908, 34.189510, 32.217041>,  <38.473518, 34.286514, 32.259449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.688908, 34.189510, 32.217041>,  <39.047886, 34.027840, 32.146358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688908, 34.189510, 32.217041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188982, 0.009679, -0.981933,
		-0.398584, -0.914630, 0.067696,
		-0.897450, 0.404176, 0.176706,
		38.419674, 34.310764, 32.270054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577297, 33.591869, 31.783648>,  <39.047886, 34.027840, 32.146358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577297, 33.591869, 31.783648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426186, 33.957710, 31.841316>,  <38.335518, 34.177216, 31.875917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426186, 33.957710, 31.841316>,  <38.577297, 33.591869, 31.783648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426186, 33.957710, 31.841316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044957, 0.173648, -0.983781,
		-0.924802, -0.365174, -0.106719,
		-0.377783, 0.914600, 0.144173,
		38.312851, 34.232090, 31.884567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999748, 33.631016, 31.416689>,  <38.577297, 33.591869, 31.783648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999748, 33.631016, 31.416689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071388, 34.020958, 31.469709>,  <38.114372, 34.254925, 31.501522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071388, 34.020958, 31.469709>,  <37.999748, 33.631016, 31.416689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071388, 34.020958, 31.469709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076021, 0.148040, -0.986055,
		-0.980889, 0.166530, 0.100624,
		0.179104, 0.974860, 0.132551,
		38.125118, 34.313416, 31.509476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461411, 33.978119, 30.996109>,  <37.999748, 33.631016, 31.416689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461411, 33.978119, 30.996109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754379, 34.247730, 31.034582>,  <37.930161, 34.409496, 31.057667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754379, 34.247730, 31.034582>,  <37.461411, 33.978119, 30.996109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754379, 34.247730, 31.034582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098060, 0.035367, -0.994552,
		-0.673755, 0.737861, -0.040191,
		0.732420, 0.674025, 0.096183,
		37.974106, 34.449936, 31.063437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347820, 34.529339, 30.508446>,  <37.461411, 33.978119, 30.996109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347820, 34.529339, 30.508446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730701, 34.587055, 30.608797>,  <37.960430, 34.621685, 30.669008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730701, 34.587055, 30.608797>,  <37.347820, 34.529339, 30.508446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730701, 34.587055, 30.608797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245937, 0.051414, -0.967921,
		-0.152559, 0.988199, 0.013728,
		0.957205, 0.144289, 0.250878,
		38.017864, 34.630341, 30.684061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538635, 35.127735, 30.092609>,  <37.347820, 34.529339, 30.508446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538635, 35.127735, 30.092609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874775, 34.929905, 30.181332>,  <38.076458, 34.811207, 30.234566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874775, 34.929905, 30.181332>,  <37.538635, 35.127735, 30.092609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874775, 34.929905, 30.181332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330845, 0.143872, -0.932654,
		0.429359, 0.857142, 0.284532,
		0.840353, -0.494579, 0.221808,
		38.126881, 34.781532, 30.247873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291603, 35.858639, 29.743874>,  <37.538635, 35.127735, 30.092609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291603, 35.858639, 29.743874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927734, 35.740353, 29.627220>,  <36.709412, 35.669380, 29.557228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927734, 35.740353, 29.627220>,  <37.291603, 35.858639, 29.743874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927734, 35.740353, 29.627220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303953, -0.004517, 0.952676,
		-0.283035, 0.955267, -0.085773,
		-0.909672, -0.295711, -0.291635,
		36.654831, 35.651638, 29.539730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865753, 36.371231, 30.052588>,  <37.291603, 35.858639, 29.743874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865753, 36.371231, 30.052588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661087, 36.044991, 29.944521>,  <36.538288, 35.849247, 29.879681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661087, 36.044991, 29.944521>,  <36.865753, 36.371231, 30.052588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661087, 36.044991, 29.944521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579169, 0.095145, 0.809637,
		-0.634638, 0.570733, -0.521055,
		-0.511662, -0.815605, -0.270168,
		36.507587, 35.800308, 29.863470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181511, 36.472069, 30.323704>,  <36.865753, 36.371231, 30.052588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181511, 36.472069, 30.323704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207687, 36.075840, 30.275547>,  <36.223392, 35.838104, 30.246653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207687, 36.075840, 30.275547>,  <36.181511, 36.472069, 30.323704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207687, 36.075840, 30.275547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421720, -0.136800, 0.896347,
		-0.904362, -0.007887, -0.426694,
		0.065441, -0.990568, -0.120390,
		36.227318, 35.778671, 30.239429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503616, 36.351967, 30.478956>,  <36.181511, 36.472069, 30.323704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503616, 36.351967, 30.478956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697647, 36.004871, 30.522276>,  <35.814064, 35.796616, 30.548267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697647, 36.004871, 30.522276>,  <35.503616, 36.351967, 30.478956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697647, 36.004871, 30.522276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476697, -0.158565, 0.864648,
		-0.733116, -0.471049, -0.490565,
		0.485078, -0.867739, 0.108301,
		35.843170, 35.744549, 30.554766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018417, 35.769196, 30.600822>,  <35.503616, 36.351967, 30.478956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018417, 35.769196, 30.600822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374043, 35.670605, 30.755127>,  <35.587418, 35.611450, 30.847710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374043, 35.670605, 30.755127>,  <35.018417, 35.769196, 30.600822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374043, 35.670605, 30.755127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450681, -0.323467, 0.832019,
		-0.080290, -0.913575, -0.398665,
		0.889067, -0.246474, 0.385760,
		35.640762, 35.596661, 30.870855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854946, 35.364159, 31.013165>,  <35.018417, 35.769196, 30.600822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854946, 35.364159, 31.013165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216007, 35.452019, 31.161205>,  <35.432644, 35.504734, 31.250031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216007, 35.452019, 31.161205>,  <34.854946, 35.364159, 31.013165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216007, 35.452019, 31.161205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296411, -0.306194, 0.904647,
		0.312032, -0.926281, -0.211277,
		0.902649, 0.219654, 0.370102,
		35.486801, 35.517914, 31.272236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903893, 34.831539, 31.503002>,  <34.854946, 35.364159, 31.013165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903893, 34.831539, 31.503002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210323, 35.058178, 31.624388>,  <35.394180, 35.194160, 31.697220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210323, 35.058178, 31.624388>,  <34.903893, 34.831539, 31.503002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210323, 35.058178, 31.624388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181668, -0.262009, 0.947812,
		0.616542, -0.781226, -0.097786,
		0.766076, 0.566602, 0.303464,
		35.440147, 35.228157, 31.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256897, 34.464417, 31.912622>,  <34.903893, 34.831539, 31.503002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256897, 34.464417, 31.912622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360146, 34.830540, 32.036293>,  <35.422096, 35.050213, 32.110497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360146, 34.830540, 32.036293>,  <35.256897, 34.464417, 31.912622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360146, 34.830540, 32.036293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264798, -0.240737, 0.933771,
		0.929114, -0.322898, 0.180230,
		0.258125, 0.915305, 0.309175,
		35.437584, 35.105129, 32.129044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598923, 34.382854, 32.509125>,  <35.256897, 34.464417, 31.912622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598923, 34.382854, 32.509125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523285, 34.773659, 32.548489>,  <35.477901, 35.008141, 32.572105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523285, 34.773659, 32.548489>,  <35.598923, 34.382854, 32.509125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523285, 34.773659, 32.548489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360732, -0.162325, 0.918435,
		0.913299, 0.138175, 0.383135,
		-0.189097, 0.977015, 0.098407,
		35.466557, 35.066765, 32.578011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873402, 34.609276, 33.198444>,  <35.598923, 34.382854, 32.509125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873402, 34.609276, 33.198444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596878, 34.870388, 33.074532>,  <35.430965, 35.027058, 33.000183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596878, 34.870388, 33.074532>,  <35.873402, 34.609276, 33.198444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596878, 34.870388, 33.074532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386054, 0.028723, 0.922029,
		0.610783, 0.757000, 0.232153,
		-0.691308, 0.652783, -0.309786,
		35.389484, 35.066223, 32.981594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915325, 35.140808, 33.707706>,  <35.873402, 34.609276, 33.198444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915325, 35.140808, 33.707706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565071, 35.202507, 33.524632>,  <35.354919, 35.239525, 33.414787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565071, 35.202507, 33.524632>,  <35.915325, 35.140808, 33.707706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565071, 35.202507, 33.524632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439745, 0.137274, 0.887570,
		0.199733, 0.978450, -0.052373,
		-0.875632, 0.154247, -0.457687,
		35.302383, 35.248779, 33.387325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523422, 35.752972, 34.038799>,  <35.915325, 35.140808, 33.707706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523422, 35.752972, 34.038799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248158, 35.520157, 33.865520>,  <35.083000, 35.380466, 33.761551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248158, 35.520157, 33.865520>,  <35.523422, 35.752972, 34.038799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248158, 35.520157, 33.865520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579797, 0.082192, 0.810605,
		-0.436200, 0.808995, -0.394027,
		-0.688161, -0.582041, -0.433201,
		35.041710, 35.345543, 33.735561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941204, 36.068222, 34.139465>,  <35.523422, 35.752972, 34.038799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941204, 36.068222, 34.139465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863842, 35.680885, 34.076347>,  <34.817425, 35.448483, 34.038479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863842, 35.680885, 34.076347>,  <34.941204, 36.068222, 34.139465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863842, 35.680885, 34.076347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639065, 0.002309, 0.769149,
		-0.744439, 0.249600, -0.619283,
		-0.193410, -0.968346, -0.157791,
		34.805820, 35.390381, 34.029011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251102, 35.979252, 34.328896>,  <34.941204, 36.068222, 34.139465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251102, 35.979252, 34.328896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360947, 35.595459, 34.303688>,  <34.426853, 35.365181, 34.288563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360947, 35.595459, 34.303688>,  <34.251102, 35.979252, 34.328896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360947, 35.595459, 34.303688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683443, -0.240872, 0.689120,
		-0.676382, -0.146169, -0.721902,
		0.274614, -0.959487, -0.063024,
		34.443333, 35.307613, 34.284782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886543, 36.622501, 34.266705>,  <34.251102, 35.979252, 34.328896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886543, 36.622501, 34.266705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693893, 36.967793, 34.327206>,  <33.578304, 37.174969, 34.363506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693893, 36.967793, 34.327206>,  <33.886543, 36.622501, 34.266705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693893, 36.967793, 34.327206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278477, 0.314390, -0.907529,
		-0.830956, -0.394967, -0.391807,
		-0.481624, 0.863226, 0.151255,
		33.549408, 37.226761, 34.372581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416946, 36.940475, 33.683861>,  <33.886543, 36.622501, 34.266705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416946, 36.940475, 33.683861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589478, 37.240196, 33.884865>,  <33.692997, 37.420029, 34.005466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589478, 37.240196, 33.884865>,  <33.416946, 36.940475, 33.683861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589478, 37.240196, 33.884865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355796, 0.370567, -0.857957,
		-0.829077, 0.548846, -0.106763,
		0.431324, 0.749298, 0.502506,
		33.718876, 37.464985, 34.035618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205902, 37.587639, 33.402077>,  <33.416946, 36.940475, 33.683861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205902, 37.587639, 33.402077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575447, 37.597301, 33.554863>,  <33.797173, 37.603100, 33.646534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575447, 37.597301, 33.554863>,  <33.205902, 37.587639, 33.402077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575447, 37.597301, 33.554863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330850, 0.451308, -0.828770,
		-0.192407, 0.892041, 0.408953,
		0.923860, 0.024159, 0.381967,
		33.852604, 37.604549, 33.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429150, 38.401802, 33.397549>,  <33.205902, 37.587639, 33.402077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429150, 38.401802, 33.397549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732746, 38.141441, 33.403946>,  <33.914906, 37.985226, 33.407784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732746, 38.141441, 33.403946>,  <33.429150, 38.401802, 33.397549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732746, 38.141441, 33.403946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299076, 0.326708, -0.896558,
		0.578347, 0.685264, 0.442638,
		0.758992, -0.650903, 0.015996,
		33.960445, 37.946171, 33.408745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016953, 38.825848, 33.148685>,  <33.429150, 38.401802, 33.397549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016953, 38.825848, 33.148685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061394, 38.434391, 33.079491>,  <34.088058, 38.199516, 33.037971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061394, 38.434391, 33.079491>,  <34.016953, 38.825848, 33.148685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061394, 38.434391, 33.079491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406085, 0.203580, -0.890870,
		0.907056, 0.028729, 0.420029,
		0.111103, -0.978637, -0.172992,
		34.094727, 38.140800, 33.027592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618183, 38.906754, 32.835945>,  <34.016953, 38.825848, 33.148685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618183, 38.906754, 32.835945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499924, 38.533203, 32.755482>,  <34.428970, 38.309071, 32.707203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499924, 38.533203, 32.755482>,  <34.618183, 38.906754, 32.835945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499924, 38.533203, 32.755482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501433, 0.027525, -0.864758,
		0.813116, -0.356530, 0.460140,
		-0.295647, -0.933878, -0.201157,
		34.411228, 38.253040, 32.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140278, 38.570374, 32.635189>,  <34.618183, 38.906754, 32.835945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140278, 38.570374, 32.635189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847145, 38.366089, 32.455353>,  <34.671265, 38.243519, 32.347450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847145, 38.366089, 32.455353>,  <35.140278, 38.570374, 32.635189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847145, 38.366089, 32.455353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525896, -0.005883, -0.850529,
		0.431734, -0.859730, 0.272895,
		-0.732830, -0.510716, -0.449588,
		34.627296, 38.212875, 32.320477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500992, 38.135143, 32.180393>,  <35.140278, 38.570374, 32.635189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500992, 38.135143, 32.180393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124561, 38.136875, 32.045124>,  <34.898705, 38.137913, 31.963963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124561, 38.136875, 32.045124>,  <35.500992, 38.135143, 32.180393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124561, 38.136875, 32.045124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334374, 0.161904, -0.928429,
		0.050735, -0.986797, -0.153811,
		-0.941073, 0.004326, -0.338174,
		34.842239, 38.138172, 31.943672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403660, 37.583744, 31.687143>,  <35.500992, 38.135143, 32.180393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403660, 37.583744, 31.687143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135162, 37.872108, 31.618189>,  <34.974064, 38.045128, 31.576817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135162, 37.872108, 31.618189>,  <35.403660, 37.583744, 31.687143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135162, 37.872108, 31.618189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208606, -0.039435, -0.977204,
		-0.711278, -0.691901, -0.123917,
		-0.671242, 0.720914, -0.172384,
		34.933788, 38.088383, 31.566473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363178, 37.553638, 31.052145>,  <35.403660, 37.583744, 31.687143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363178, 37.553638, 31.052145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119968, 37.867775, 31.098703>,  <34.974045, 38.056255, 31.126638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119968, 37.867775, 31.098703>,  <35.363178, 37.553638, 31.052145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119968, 37.867775, 31.098703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032337, 0.170986, -0.984743,
		-0.793261, -0.594982, -0.129359,
		-0.608023, 0.785341, 0.116397,
		34.937561, 38.103378, 31.133623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948055, 37.594479, 30.427197>,  <35.363178, 37.553638, 31.052145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948055, 37.594479, 30.427197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900444, 37.964432, 30.571653>,  <34.871876, 38.186405, 30.658327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900444, 37.964432, 30.571653>,  <34.948055, 37.594479, 30.427197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900444, 37.964432, 30.571653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196472, 0.378477, -0.904519,
		-0.973258, -0.036710, -0.226764,
		-0.119030, 0.924883, 0.361143,
		34.864735, 38.241898, 30.679996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377323, 37.981285, 30.012302>,  <34.948055, 37.594479, 30.427197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377323, 37.981285, 30.012302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649769, 38.214687, 30.189213>,  <34.813236, 38.354729, 30.295359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649769, 38.214687, 30.189213>,  <34.377323, 37.981285, 30.012302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649769, 38.214687, 30.189213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198241, 0.434525, -0.878572,
		-0.704829, 0.686085, 0.180287,
		0.681115, 0.583502, 0.442276,
		34.854103, 38.389736, 30.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169861, 38.615044, 29.902405>,  <34.377323, 37.981285, 30.012302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169861, 38.615044, 29.902405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566486, 38.637703, 29.949045>,  <34.804462, 38.651299, 29.977030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566486, 38.637703, 29.949045>,  <34.169861, 38.615044, 29.902405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566486, 38.637703, 29.949045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071437, 0.511782, -0.856140,
		-0.108176, 0.857245, 0.503417,
		0.991562, 0.056651, 0.116602,
		34.863956, 38.654697, 29.984026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295155, 39.218216, 29.668457>,  <34.169861, 38.615044, 29.902405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295155, 39.218216, 29.668457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669662, 39.078709, 29.685268>,  <34.894367, 38.995007, 29.695354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669662, 39.078709, 29.685268>,  <34.295155, 39.218216, 29.668457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669662, 39.078709, 29.685268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270395, 0.639119, -0.720009,
		0.224254, 0.685485, 0.692691,
		0.936267, -0.348765, 0.042026,
		34.950542, 38.974079, 29.697876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776554, 39.845444, 29.636400>,  <34.295155, 39.218216, 29.668457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776554, 39.845444, 29.636400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037243, 39.549156, 29.571167>,  <35.193657, 39.371384, 29.532026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037243, 39.549156, 29.571167>,  <34.776554, 39.845444, 29.636400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037243, 39.549156, 29.571167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404830, 0.521553, -0.751062,
		0.641382, 0.423463, 0.639772,
		0.651722, -0.740717, -0.163084,
		35.232761, 39.326942, 29.522242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413448, 40.167351, 29.478382>,  <34.776554, 39.845444, 29.636400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413448, 40.167351, 29.478382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481457, 39.798706, 29.338829>,  <35.522263, 39.577518, 29.255098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481457, 39.798706, 29.338829>,  <35.413448, 40.167351, 29.478382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481457, 39.798706, 29.338829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500264, 0.385743, -0.775202,
		0.849017, -0.042735, 0.526634,
		0.170017, -0.921616, -0.348881,
		35.532463, 39.522221, 29.234165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081326, 40.162106, 29.182524>,  <35.413448, 40.167351, 29.478382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081326, 40.162106, 29.182524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904442, 39.842907, 29.018738>,  <35.798313, 39.651390, 28.920465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904442, 39.842907, 29.018738>,  <36.081326, 40.162106, 29.182524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904442, 39.842907, 29.018738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566235, 0.105669, -0.817442,
		0.695581, -0.593332, 0.405124,
		-0.442205, -0.797992, -0.409467,
		35.771782, 39.603508, 28.895897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625408, 39.650822, 29.016739>,  <36.081326, 40.162106, 29.182524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625408, 39.650822, 29.016739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307346, 39.597248, 28.780165>,  <36.116508, 39.565105, 28.638220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307346, 39.597248, 28.780165>,  <36.625408, 39.650822, 29.016739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307346, 39.597248, 28.780165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561215, 0.206930, -0.801385,
		0.229717, -0.969145, -0.089376,
		-0.795152, -0.133933, -0.591434,
		36.068802, 39.557068, 28.602734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934673, 39.197636, 28.432306>,  <36.625408, 39.650822, 29.016739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934673, 39.197636, 28.432306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598587, 39.369926, 28.300541>,  <36.396935, 39.473301, 28.221481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598587, 39.369926, 28.300541>,  <36.934673, 39.197636, 28.432306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598587, 39.369926, 28.300541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441596, 0.190966, -0.876656,
		-0.314692, -0.882047, -0.350660,
		-0.840216, 0.430726, -0.329413,
		36.346523, 39.499146, 28.201717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809971, 38.934647, 27.853962>,  <36.934673, 39.197636, 28.432306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809971, 38.934647, 27.853962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567719, 39.252155, 27.831543>,  <36.422367, 39.442661, 27.818092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567719, 39.252155, 27.831543>,  <36.809971, 38.934647, 27.853962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567719, 39.252155, 27.831543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331015, 0.187256, -0.924859,
		-0.723629, -0.578677, -0.376157,
		-0.605633, 0.793768, -0.056047,
		36.386028, 39.490284, 27.814730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628746, 38.911587, 27.185881>,  <36.809971, 38.934647, 27.853962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628746, 38.911587, 27.185881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534489, 39.288456, 27.281195>,  <36.477936, 39.514576, 27.338383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534489, 39.288456, 27.281195>,  <36.628746, 38.911587, 27.185881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534489, 39.288456, 27.281195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399744, 0.317457, -0.859898,
		-0.885819, -0.107377, -0.451435,
		-0.235645, 0.942173, 0.238287,
		36.463795, 39.571110, 27.352680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224068, 39.135632, 26.651136>,  <36.628746, 38.911587, 27.185881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224068, 39.135632, 26.651136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357731, 39.478050, 26.808886>,  <36.437927, 39.683502, 26.903534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357731, 39.478050, 26.808886>,  <36.224068, 39.135632, 26.651136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357731, 39.478050, 26.808886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391714, 0.254440, -0.884206,
		-0.857263, 0.449943, -0.250302,
		0.334155, 0.856044, 0.394371,
		36.457977, 39.734863, 26.927197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945499, 39.666271, 26.283670>,  <36.224068, 39.135632, 26.651136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945499, 39.666271, 26.283670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293457, 39.787945, 26.438976>,  <36.502232, 39.860950, 26.532160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293457, 39.787945, 26.438976>,  <35.945499, 39.666271, 26.283670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293457, 39.787945, 26.438976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263171, 0.379522, -0.886963,
		-0.417155, 0.873748, 0.250093,
		0.869898, 0.304184, 0.388265,
		36.554428, 39.879200, 26.555456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020100, 40.390606, 25.965548>,  <35.945499, 39.666271, 26.283670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020100, 40.390606, 25.965548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376789, 40.269947, 26.100506>,  <36.590805, 40.197552, 26.181480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376789, 40.269947, 26.100506>,  <36.020100, 40.390606, 25.965548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376789, 40.269947, 26.100506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427949, 0.319430, -0.845473,
		0.147260, 0.898317, 0.413933,
		0.891725, -0.301647, 0.337394,
		36.644306, 40.179455, 26.201725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579323, 40.878613, 25.779634>,  <36.020100, 40.390606, 25.965548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579323, 40.878613, 25.779634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776508, 40.539299, 25.856993>,  <36.894817, 40.335709, 25.903408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776508, 40.539299, 25.856993>,  <36.579323, 40.878613, 25.779634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776508, 40.539299, 25.856993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536775, 0.121587, -0.834918,
		0.684736, 0.515390, 0.515277,
		0.492960, -0.848286, 0.193394,
		36.924397, 40.284813, 25.915010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328335, 41.057171, 25.803562>,  <36.579323, 40.878613, 25.779634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328335, 41.057171, 25.803562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328129, 40.665836, 25.720755>,  <37.328003, 40.431034, 25.671070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328129, 40.665836, 25.720755>,  <37.328335, 41.057171, 25.803562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328129, 40.665836, 25.720755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603472, 0.164767, -0.780175,
		0.797384, -0.125334, 0.590314,
		-0.000518, -0.978337, -0.207018,
		37.327972, 40.372334, 25.658649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992756, 40.935131, 25.534687>,  <37.328335, 41.057171, 25.803562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992756, 40.935131, 25.534687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809891, 40.591682, 25.441925>,  <37.700172, 40.385612, 25.386269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809891, 40.591682, 25.441925>,  <37.992756, 40.935131, 25.534687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809891, 40.591682, 25.441925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542117, -0.062310, -0.837990,
		0.705063, -0.508814, 0.493957,
		-0.457159, -0.858618, -0.231904,
		37.672745, 40.334095, 25.372355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507439, 40.428577, 25.411829>,  <37.992756, 40.935131, 25.534687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507439, 40.428577, 25.411829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179813, 40.318401, 25.210529>,  <37.983238, 40.252296, 25.089748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179813, 40.318401, 25.210529>,  <38.507439, 40.428577, 25.411829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179813, 40.318401, 25.210529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539111, -0.069561, -0.839357,
		0.196190, -0.958797, 0.205471,
		-0.819066, -0.275445, -0.503251,
		37.934093, 40.235767, 25.059555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971783, 39.802750, 25.599930>,  <38.507439, 40.428577, 25.411829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971783, 39.802750, 25.599930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363934, 39.829815, 25.673998>,  <39.599224, 39.846054, 25.718439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363934, 39.829815, 25.673998>,  <38.971783, 39.802750, 25.599930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363934, 39.829815, 25.673998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190571, 0.084722, 0.978011,
		0.050488, -0.994105, 0.095954,
		0.980374, 0.067664, 0.185170,
		39.658047, 39.850113, 25.729549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085022, 39.465130, 26.198448>,  <38.971783, 39.802750, 25.599930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085022, 39.465130, 26.198448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.418045, 39.686665, 26.194389>,  <39.617859, 39.819588, 26.191954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.418045, 39.686665, 26.194389>,  <39.085022, 39.465130, 26.198448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418045, 39.686665, 26.194389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111189, 0.185033, 0.976422,
		0.542658, -0.811804, 0.215632,
		0.832562, 0.553839, -0.010146,
		39.667812, 39.852818, 26.191345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541527, 39.246799, 26.812164>,  <39.085022, 39.465130, 26.198448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541527, 39.246799, 26.812164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611069, 39.621967, 26.692110>,  <39.652794, 39.847069, 26.620077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611069, 39.621967, 26.692110>,  <39.541527, 39.246799, 26.812164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611069, 39.621967, 26.692110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163147, 0.327995, 0.930485,
		0.971164, -0.112801, 0.210041,
		0.173852, 0.937921, -0.300134,
		39.663223, 39.903343, 26.602070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130238, 39.381321, 27.360044>,  <39.541527, 39.246799, 26.812164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130238, 39.381321, 27.360044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.998032, 39.731144, 27.218109>,  <39.918709, 39.941040, 27.132948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.998032, 39.731144, 27.218109>,  <40.130238, 39.381321, 27.360044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998032, 39.731144, 27.218109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205073, 0.300436, 0.931495,
		0.921253, 0.380637, 0.080051,
		-0.330511, 0.874559, -0.354836,
		39.898880, 39.993511, 27.111658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467194, 39.894512, 27.751678>,  <40.130238, 39.381321, 27.360044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467194, 39.894512, 27.751678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123989, 40.042976, 27.609659>,  <39.918068, 40.132057, 27.524446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123989, 40.042976, 27.609659>,  <40.467194, 39.894512, 27.751678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123989, 40.042976, 27.609659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252361, 0.297435, 0.920786,
		0.447366, 0.879642, -0.161534,
		-0.858008, 0.371163, -0.355049,
		39.866585, 40.154324, 27.503145>
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
