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
	<24.205648, 34.933777, 35.518036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393381, 34.809135, 35.187550>,  <24.506021, 34.734352, 34.989258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393381, 34.809135, 35.187550>,  <24.205648, 34.933777, 35.518036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393381, 34.809135, 35.187550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454072, 0.887646, -0.076833,
		0.757328, -0.339101, 0.558091,
		0.469333, -0.311601, -0.826215,
		24.534182, 34.715656, 34.939686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998661, 34.895214, 35.510742>,  <24.205648, 34.933777, 35.518036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998661, 34.895214, 35.510742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809420, 34.987709, 35.170696>,  <24.695875, 35.043205, 34.966667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809420, 34.987709, 35.170696>,  <24.998661, 34.895214, 35.510742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809420, 34.987709, 35.170696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492348, 0.869592, -0.037463,
		0.730594, -0.436279, -0.525256,
		-0.473102, 0.231238, -0.850120,
		24.667488, 35.057079, 34.915661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416658, 34.354858, 35.129025>,  <24.998661, 34.895214, 35.510742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416658, 34.354858, 35.129025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568459, 34.693302, 34.979317>,  <25.659538, 34.896370, 34.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568459, 34.693302, 34.979317>,  <25.416658, 34.354858, 35.129025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568459, 34.693302, 34.979317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122094, 0.355194, 0.926785,
		0.917100, -0.397411, 0.031491,
		0.379500, 0.846110, -0.374270,
		25.682308, 34.947136, 34.867035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181147, 34.536816, 35.289982>,  <25.416658, 34.354858, 35.129025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181147, 34.536816, 35.289982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949610, 34.858704, 35.237282>,  <25.810688, 35.051838, 35.205662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949610, 34.858704, 35.237282>,  <26.181147, 34.536816, 35.289982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949610, 34.858704, 35.237282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159882, 0.270441, 0.949368,
		0.799611, 0.528470, -0.285204,
		-0.578844, 0.804724, -0.131755,
		25.775957, 35.100121, 35.197754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476419, 35.172749, 35.257603>,  <26.181147, 34.536816, 35.289982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476419, 35.172749, 35.257603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110483, 35.191353, 35.418053>,  <25.890921, 35.202515, 35.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110483, 35.191353, 35.418053>,  <26.476419, 35.172749, 35.257603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110483, 35.191353, 35.418053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396889, 0.286721, 0.871935,
		-0.074460, 0.956885, -0.280762,
		-0.914841, 0.046507, 0.401126,
		25.836031, 35.205303, 35.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977137, 35.424454, 35.804176>,  <26.476419, 35.172749, 35.257603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977137, 35.424454, 35.804176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371887, 35.420006, 35.868618>,  <27.608738, 35.417336, 35.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371887, 35.420006, 35.868618>,  <26.977137, 35.424454, 35.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371887, 35.420006, 35.868618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156129, -0.320517, 0.934287,
		0.041248, -0.947177, -0.318047,
		0.986875, -0.011119, 0.161103,
		27.667950, 35.416668, 35.916950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095329, 34.824017, 36.085480>,  <26.977137, 35.424454, 35.804176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095329, 34.824017, 36.085480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428432, 35.006500, 36.210945>,  <27.628294, 35.115990, 36.286224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428432, 35.006500, 36.210945>,  <27.095329, 34.824017, 36.085480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428432, 35.006500, 36.210945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139750, -0.374986, 0.916436,
		0.535708, -0.807004, -0.248517,
		0.832758, 0.456212, 0.313662,
		27.678261, 35.143364, 36.305042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536505, 34.333363, 36.439644>,  <27.095329, 34.824017, 36.085480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536505, 34.333363, 36.439644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643349, 34.696163, 36.569878>,  <27.707455, 34.913841, 36.648018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643349, 34.696163, 36.569878>,  <27.536505, 34.333363, 36.439644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643349, 34.696163, 36.569878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052528, -0.323658, 0.944715,
		0.962233, -0.269446, -0.038810,
		0.267111, 0.906997, 0.325588,
		27.723482, 34.968262, 36.667553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957544, 34.172005, 37.013378>,  <27.536505, 34.333363, 36.439644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957544, 34.172005, 37.013378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908182, 34.565037, 37.068966>,  <27.878565, 34.800854, 37.102318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908182, 34.565037, 37.068966>,  <27.957544, 34.172005, 37.013378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908182, 34.565037, 37.068966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053201, -0.133288, 0.989649,
		0.990930, 0.129520, -0.035826,
		-0.123404, 0.982578, 0.138969,
		27.871161, 34.859810, 37.110657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262236, 34.260426, 37.662041>,  <27.957544, 34.172005, 37.013378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262236, 34.260426, 37.662041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120867, 34.630901, 37.609493>,  <28.036045, 34.853188, 37.577965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120867, 34.630901, 37.609493>,  <28.262236, 34.260426, 37.662041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120867, 34.630901, 37.609493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001534, 0.141010, 0.990007,
		0.935463, 0.349687, -0.051256,
		-0.353421, 0.926194, -0.131373,
		28.014841, 34.908760, 37.570080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693626, 34.806225, 38.084850>,  <28.262236, 34.260426, 37.662041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693626, 34.806225, 38.084850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310011, 34.896507, 38.016380>,  <28.079842, 34.950676, 37.975300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310011, 34.896507, 38.016380>,  <28.693626, 34.806225, 38.084850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310011, 34.896507, 38.016380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152436, 0.098103, 0.983432,
		0.238756, 0.969244, -0.059680,
		-0.959041, 0.225703, -0.171170,
		28.022299, 34.964218, 37.965031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597820, 35.382149, 38.439045>,  <28.693626, 34.806225, 38.084850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597820, 35.382149, 38.439045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247269, 35.195511, 38.391296>,  <28.036938, 35.083530, 38.362648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247269, 35.195511, 38.391296>,  <28.597820, 35.382149, 38.439045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247269, 35.195511, 38.391296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166619, 0.061176, 0.984122,
		-0.451881, 0.882354, -0.131356,
		-0.876380, -0.466592, -0.119373,
		27.984354, 35.055534, 38.355484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236763, 35.657471, 39.044498>,  <28.597820, 35.382149, 38.439045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236763, 35.657471, 39.044498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997902, 35.362072, 38.919254>,  <27.854586, 35.184834, 38.844109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997902, 35.362072, 38.919254>,  <28.236763, 35.657471, 39.044498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997902, 35.362072, 38.919254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357916, -0.104015, 0.927942,
		-0.717846, 0.666191, -0.202205,
		-0.597154, -0.738492, -0.313107,
		27.818756, 35.140526, 38.825321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630659, 35.964455, 39.206749>,  <28.236763, 35.657471, 39.044498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630659, 35.964455, 39.206749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633951, 35.564529, 39.199787>,  <27.635927, 35.324574, 39.195610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633951, 35.564529, 39.199787>,  <27.630659, 35.964455, 39.206749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633951, 35.564529, 39.199787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312891, -0.019105, 0.949597,
		-0.949754, -0.002369, -0.312990,
		0.008230, -0.999815, -0.017403,
		27.636419, 35.264584, 39.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948877, 35.729870, 39.539040>,  <27.630659, 35.964455, 39.206749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948877, 35.729870, 39.539040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215322, 35.432396, 39.561783>,  <27.375189, 35.253914, 39.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215322, 35.432396, 39.561783>,  <26.948877, 35.729870, 39.539040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215322, 35.432396, 39.561783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159608, -0.067668, 0.984858,
		-0.728573, -0.665101, -0.163772,
		0.666113, -0.743681, 0.056855,
		27.415155, 35.209293, 39.578838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723728, 35.332726, 40.113708>,  <26.948877, 35.729870, 39.539040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723728, 35.332726, 40.113708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091640, 35.196083, 40.036446>,  <27.312387, 35.114098, 39.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091640, 35.196083, 40.036446>,  <26.723728, 35.332726, 40.113708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091640, 35.196083, 40.036446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149203, -0.150840, 0.977234,
		-0.362962, -0.927661, -0.087771,
		0.919781, -0.341603, -0.193159,
		27.367575, 35.093601, 39.978497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818794, 34.709511, 40.524612>,  <26.723728, 35.332726, 40.113708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818794, 34.709511, 40.524612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188076, 34.841530, 40.445858>,  <27.409645, 34.920742, 40.398605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188076, 34.841530, 40.445858>,  <26.818794, 34.709511, 40.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188076, 34.841530, 40.445858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230935, -0.066928, 0.970665,
		0.307187, -0.941589, -0.138007,
		0.923204, 0.330046, -0.196887,
		27.465036, 34.940544, 40.386791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358072, 34.220131, 40.857967>,  <26.818794, 34.709511, 40.524612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358072, 34.220131, 40.857967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561621, 34.559612, 40.800354>,  <27.683750, 34.763302, 40.765785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561621, 34.559612, 40.800354>,  <27.358072, 34.220131, 40.857967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561621, 34.559612, 40.800354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227837, 0.028572, 0.973280,
		0.830146, -0.528089, -0.178828,
		0.508869, 0.848708, -0.144038,
		27.714281, 34.814224, 40.757141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057051, 34.206470, 41.210922>,  <27.358072, 34.220131, 40.857967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057051, 34.206470, 41.210922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983576, 34.598522, 41.180977>,  <27.939491, 34.833752, 41.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983576, 34.598522, 41.180977>,  <28.057051, 34.206470, 41.210922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983576, 34.598522, 41.180977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320235, 0.131671, 0.938143,
		0.929360, 0.148350, -0.338058,
		-0.183686, 0.980130, -0.074863,
		27.928471, 34.892563, 41.158520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497744, 34.434509, 41.655231>,  <28.057051, 34.206470, 41.210922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497744, 34.434509, 41.655231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287622, 34.767269, 41.583672>,  <28.161551, 34.966923, 41.540737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287622, 34.767269, 41.583672>,  <28.497744, 34.434509, 41.655231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287622, 34.767269, 41.583672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247545, 0.350551, 0.903236,
		0.814112, 0.430187, -0.390077,
		-0.525302, 0.831898, -0.178897,
		28.130032, 35.016838, 41.530003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877872, 34.916641, 41.934662>,  <28.497744, 34.434509, 41.655231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877872, 34.916641, 41.934662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545303, 35.133652, 41.886669>,  <28.345762, 35.263859, 41.857876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545303, 35.133652, 41.886669>,  <28.877872, 34.916641, 41.934662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545303, 35.133652, 41.886669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214490, 0.512569, 0.831425,
		0.512569, 0.665533, -0.542530,
		-0.831425, 0.542530, -0.119977,
		28.295876, 35.296410, 41.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108932, 35.668388, 41.842373>,  <28.877872, 34.916641, 41.934662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108932, 35.668388, 41.842373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742640, 35.587662, 41.981342>,  <28.522863, 35.539227, 42.064724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742640, 35.587662, 41.981342>,  <29.108932, 35.668388, 41.842373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742640, 35.587662, 41.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196126, 0.530164, 0.824901,
		-0.350669, 0.823528, -0.445907,
		-0.915732, -0.201813, 0.347428,
		28.467920, 35.527119, 42.085571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041889, 36.174252, 42.258087>,  <29.108932, 35.668388, 41.842373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041889, 36.174252, 42.258087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740030, 35.942429, 42.381130>,  <28.558914, 35.803337, 42.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740030, 35.942429, 42.381130>,  <29.041889, 36.174252, 42.258087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740030, 35.942429, 42.381130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084408, 0.379178, 0.921466,
		-0.650678, 0.721347, -0.237227,
		-0.754648, -0.579553, 0.307610,
		28.513636, 35.768562, 42.473412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484562, 36.574875, 42.610275>,  <29.041889, 36.174252, 42.258087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484562, 36.574875, 42.610275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461836, 36.194954, 42.733337>,  <28.448200, 35.967003, 42.807175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461836, 36.194954, 42.733337>,  <28.484562, 36.574875, 42.610275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461836, 36.194954, 42.733337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029042, 0.306447, 0.951445,
		-0.997962, 0.062994, 0.010172,
		-0.056818, -0.949801, 0.307652,
		28.444790, 35.910015, 42.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136177, 36.670406, 43.185146>,  <28.484562, 36.574875, 42.610275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136177, 36.670406, 43.185146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305574, 36.311733, 43.236713>,  <28.407213, 36.096531, 43.267654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305574, 36.311733, 43.236713>,  <28.136177, 36.670406, 43.185146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305574, 36.311733, 43.236713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118102, 0.195743, 0.973518,
		-0.898168, -0.397052, 0.188796,
		0.423492, -0.896680, 0.128917,
		28.432623, 36.042728, 43.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925035, 36.363102, 43.864979>,  <28.136177, 36.670406, 43.185146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925035, 36.363102, 43.864979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288160, 36.225807, 43.768589>,  <28.506035, 36.143433, 43.710754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288160, 36.225807, 43.768589>,  <27.925035, 36.363102, 43.864979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288160, 36.225807, 43.768589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275663, 0.055338, 0.959660,
		-0.316052, -0.937618, 0.144853,
		0.907811, -0.343234, -0.240977,
		28.560503, 36.122837, 43.696297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251101, 35.812481, 44.422497>,  <27.925035, 36.363102, 43.864979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251101, 35.812481, 44.422497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543985, 36.023388, 44.250053>,  <28.719717, 36.149933, 44.146587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543985, 36.023388, 44.250053>,  <28.251101, 35.812481, 44.422497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543985, 36.023388, 44.250053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492913, 0.026572, 0.869673,
		0.470003, -0.849285, -0.240439,
		0.732212, 0.527265, -0.431113,
		28.763649, 36.181568, 44.120720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034805, 36.248878, 44.936745>,  <28.251101, 35.812481, 44.422497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034805, 36.248878, 44.936745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053251, 36.046871, 45.281494>,  <28.064320, 35.925667, 45.488342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053251, 36.046871, 45.281494>,  <28.034805, 36.248878, 44.936745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053251, 36.046871, 45.281494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869251, -0.404846, -0.283730,
		0.492216, 0.762270, 0.420319,
		0.046115, -0.505020, 0.861875,
		28.067085, 35.895367, 45.540058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594492, 36.449512, 45.158066>,  <28.034805, 36.248878, 44.936745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594492, 36.449512, 45.158066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483547, 36.089832, 45.293423>,  <28.416981, 35.874023, 45.374638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483547, 36.089832, 45.293423>,  <28.594492, 36.449512, 45.158066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483547, 36.089832, 45.293423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905120, -0.362681, -0.221857,
		0.322223, 0.244753, 0.914477,
		-0.277363, -0.899199, 0.338395,
		28.400339, 35.820072, 45.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177204, 36.047504, 45.016720>,  <28.594492, 36.449512, 45.158066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177204, 36.047504, 45.016720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943092, 35.768066, 45.181358>,  <28.802626, 35.600403, 45.280144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943092, 35.768066, 45.181358>,  <29.177204, 36.047504, 45.016720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943092, 35.768066, 45.181358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649841, -0.707733, -0.277166,
		0.484930, 0.105256, 0.868196,
		-0.585277, -0.698595, 0.411601,
		28.767509, 35.558487, 45.304840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543985, 35.656593, 45.632046>,  <29.177204, 36.047504, 45.016720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543985, 35.656593, 45.632046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265623, 35.433971, 45.450512>,  <29.098606, 35.300400, 45.341591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265623, 35.433971, 45.450512>,  <29.543985, 35.656593, 45.632046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265623, 35.433971, 45.450512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700865, -0.664107, -0.260288,
		-0.156527, -0.499210, 0.852225,
		-0.695907, -0.556553, -0.453830,
		29.056850, 35.267006, 45.314362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846201, 34.998508, 45.571159>,  <29.543985, 35.656593, 45.632046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846201, 34.998508, 45.571159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578093, 34.995831, 45.274326>,  <29.417227, 34.994225, 45.096226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578093, 34.995831, 45.274326>,  <29.846201, 34.998508, 45.571159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578093, 34.995831, 45.274326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517452, -0.720996, -0.460878,
		-0.531955, -0.692908, 0.486727,
		-0.670273, -0.006691, -0.742084,
		29.377010, 34.993824, 45.051701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924978, 34.424416, 45.286018>,  <29.846201, 34.998508, 45.571159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924978, 34.424416, 45.286018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741459, 34.589149, 44.971085>,  <29.631348, 34.687988, 44.782124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741459, 34.589149, 44.971085>,  <29.924978, 34.424416, 45.286018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741459, 34.589149, 44.971085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553190, -0.561027, -0.615816,
		-0.695331, -0.718081, 0.029576,
		-0.458799, 0.411835, -0.787335,
		29.603819, 34.712700, 44.734882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723227, 33.852055, 44.787334>,  <29.924978, 34.424416, 45.286018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723227, 33.852055, 44.787334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776642, 34.206825, 44.610458>,  <29.808691, 34.419685, 44.504333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776642, 34.206825, 44.610458>,  <29.723227, 33.852055, 44.787334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776642, 34.206825, 44.610458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558582, -0.435925, -0.705659,
		-0.818629, -0.152768, -0.553632,
		0.133541, 0.886922, -0.442194,
		29.816704, 34.472900, 44.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211422, 33.963440, 44.193302>,  <29.723227, 33.852055, 44.787334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211422, 33.963440, 44.193302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554443, 33.779095, 44.284695>,  <30.760256, 33.668488, 44.339531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554443, 33.779095, 44.284695>,  <30.211422, 33.963440, 44.193302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554443, 33.779095, 44.284695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399074, 0.315807, -0.860817,
		0.324562, 0.829380, 0.454740,
		0.857555, -0.460863, 0.228485,
		30.811710, 33.640835, 44.353241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749800, 34.395725, 44.001141>,  <30.211422, 33.963440, 44.193302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749800, 34.395725, 44.001141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917576, 34.034462, 43.964516>,  <31.018242, 33.817703, 43.942539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917576, 34.034462, 43.964516>,  <30.749800, 34.395725, 44.001141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917576, 34.034462, 43.964516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201924, 0.191158, -0.960565,
		0.885042, 0.384409, 0.262547,
		0.419438, -0.903155, -0.091561,
		31.043407, 33.763515, 43.937046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278255, 34.443237, 43.441166>,  <30.749800, 34.395725, 44.001141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278255, 34.443237, 43.441166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212122, 34.049286, 43.461880>,  <31.172441, 33.812916, 43.474308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212122, 34.049286, 43.461880>,  <31.278255, 34.443237, 43.441166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212122, 34.049286, 43.461880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316768, -0.102756, -0.942921,
		0.933982, -0.139491, 0.328967,
		-0.165333, -0.984877, 0.051786,
		31.162521, 33.753822, 43.477417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861900, 34.094048, 43.093891>,  <31.278255, 34.443237, 43.441166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861900, 34.094048, 43.093891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552225, 33.840878, 43.096195>,  <31.366419, 33.688976, 43.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552225, 33.840878, 43.096195>,  <31.861900, 34.094048, 43.093891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552225, 33.840878, 43.096195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115719, -0.150483, -0.981817,
		0.622286, -0.759446, 0.189744,
		-0.774190, -0.632927, 0.005761,
		31.319967, 33.651001, 43.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019207, 33.530392, 42.657669>,  <31.861900, 34.094048, 43.093891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019207, 33.530392, 42.657669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620619, 33.496834, 42.656109>,  <31.381466, 33.476700, 42.655170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620619, 33.496834, 42.656109>,  <32.019207, 33.530392, 42.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620619, 33.496834, 42.656109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028579, -0.295016, -0.955065,
		0.078976, -0.951802, 0.296371,
		-0.996467, -0.083897, -0.003902,
		31.321678, 33.471664, 42.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864471, 32.898170, 42.257557>,  <32.019207, 33.530392, 42.657669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864471, 32.898170, 42.257557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556927, 33.152939, 42.280094>,  <31.372400, 33.305801, 42.293617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556927, 33.152939, 42.280094>,  <31.864471, 32.898170, 42.257557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556927, 33.152939, 42.280094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027839, 0.054683, -0.998116,
		-0.638806, -0.768983, -0.024312,
		-0.768863, 0.636926, 0.056339,
		31.326267, 33.344017, 42.296997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383387, 32.701565, 41.759571>,  <31.864471, 32.898170, 42.257557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383387, 32.701565, 41.759571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295750, 33.084354, 41.835670>,  <31.243168, 33.314030, 41.881329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295750, 33.084354, 41.835670>,  <31.383387, 32.701565, 41.759571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295750, 33.084354, 41.835670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143949, 0.161148, -0.976376,
		-0.965028, -0.241300, 0.102450,
		-0.219090, 0.956977, 0.190247,
		31.230022, 33.371449, 41.892746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897409, 32.758450, 41.294434>,  <31.383387, 32.701565, 41.759571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897409, 32.758450, 41.294434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983704, 33.138157, 41.385948>,  <31.035480, 33.365982, 41.440857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983704, 33.138157, 41.385948>,  <30.897409, 32.758450, 41.294434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983704, 33.138157, 41.385948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286919, 0.285584, -0.914396,
		-0.933347, 0.131624, 0.333974,
		0.215734, 0.949272, 0.228783,
		31.048424, 33.422939, 41.454582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400820, 33.145554, 41.045025>,  <30.897409, 32.758450, 41.294434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400820, 33.145554, 41.045025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684456, 33.423630, 41.092175>,  <30.854637, 33.590477, 41.120464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684456, 33.423630, 41.092175>,  <30.400820, 33.145554, 41.045025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684456, 33.423630, 41.092175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209466, 0.367309, -0.906206,
		-0.673287, 0.617890, 0.406074,
		0.709090, 0.695195, 0.117877,
		30.897182, 33.632187, 41.127537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091127, 33.771046, 40.845303>,  <30.400820, 33.145554, 41.045025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091127, 33.771046, 40.845303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487022, 33.820648, 40.816887>,  <30.724560, 33.850410, 40.799839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487022, 33.820648, 40.816887>,  <30.091127, 33.771046, 40.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487022, 33.820648, 40.816887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101009, 0.255373, -0.961552,
		-0.101096, 0.958858, 0.265278,
		0.989736, 0.124005, -0.071036,
		30.783943, 33.857849, 40.795578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310091, 34.559570, 40.743771>,  <30.091127, 33.771046, 40.845303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310091, 34.559570, 40.743771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609350, 34.319607, 40.630363>,  <30.788906, 34.175629, 40.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609350, 34.319607, 40.630363>,  <30.310091, 34.559570, 40.743771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609350, 34.319607, 40.630363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040064, 0.385666, -0.921768,
		0.662321, 0.700978, 0.264501,
		0.748148, -0.599909, -0.283519,
		30.833796, 34.139633, 40.545307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703157, 35.025692, 40.426487>,  <30.310091, 34.559570, 40.743771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703157, 35.025692, 40.426487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821571, 34.663605, 40.304543>,  <30.892620, 34.446350, 40.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821571, 34.663605, 40.304543>,  <30.703157, 35.025692, 40.426487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821571, 34.663605, 40.304543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087149, 0.343431, -0.935126,
		0.951193, 0.250263, 0.180557,
		0.296036, -0.905220, -0.304859,
		30.910381, 34.392040, 40.213085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195412, 35.186378, 39.980476>,  <30.703157, 35.025692, 40.426487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195412, 35.186378, 39.980476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072981, 34.815933, 39.892265>,  <30.999521, 34.593666, 39.839340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072981, 34.815933, 39.892265>,  <31.195412, 35.186378, 39.980476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072981, 34.815933, 39.892265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093784, 0.201187, -0.975053,
		0.947375, -0.319125, 0.025276,
		-0.306079, -0.926112, -0.220529,
		30.981157, 34.538101, 39.826107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692780, 34.964081, 39.505333>,  <31.195412, 35.186378, 39.980476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692780, 34.964081, 39.505333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376574, 34.723972, 39.456741>,  <31.186850, 34.579906, 39.427586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376574, 34.723972, 39.456741>,  <31.692780, 34.964081, 39.505333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376574, 34.723972, 39.456741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117286, 0.046303, -0.992018,
		0.601109, -0.798452, 0.033801,
		-0.790514, -0.600276, -0.121480,
		31.139420, 34.543888, 39.420296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871119, 34.532246, 38.892544>,  <31.692780, 34.964081, 39.505333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871119, 34.532246, 38.892544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481911, 34.475945, 38.965672>,  <31.248386, 34.442165, 39.009548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481911, 34.475945, 38.965672>,  <31.871119, 34.532246, 38.892544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481911, 34.475945, 38.965672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152105, -0.204474, -0.966982,
		0.173483, -0.968700, 0.177549,
		-0.973020, -0.140749, 0.182816,
		31.190004, 34.433720, 39.020515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568539, 33.851460, 38.556347>,  <31.871119, 34.532246, 38.892544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568539, 33.851460, 38.556347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264534, 34.107407, 38.601871>,  <31.082132, 34.260975, 38.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264534, 34.107407, 38.601871>,  <31.568539, 33.851460, 38.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264534, 34.107407, 38.601871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262736, -0.142325, -0.954313,
		-0.594436, -0.755190, 0.276285,
		-0.760010, 0.639868, 0.113813,
		31.036531, 34.299366, 38.636017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029930, 33.584171, 38.200394>,  <31.568539, 33.851460, 38.556347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029930, 33.584171, 38.200394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917278, 33.966969, 38.228222>,  <30.849688, 34.196648, 38.244919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917278, 33.966969, 38.228222>,  <31.029930, 33.584171, 38.200394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917278, 33.966969, 38.228222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515299, -0.089685, -0.852305,
		-0.809415, -0.275884, 0.518398,
		-0.281630, 0.956998, 0.069570,
		30.832788, 34.254066, 38.249092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306536, 33.615776, 37.881508>,  <31.029930, 33.584171, 38.200394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306536, 33.615776, 37.881508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430840, 33.995789, 37.893349>,  <30.505423, 34.223797, 37.900455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430840, 33.995789, 37.893349>,  <30.306536, 33.615776, 37.881508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430840, 33.995789, 37.893349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472313, 0.181376, -0.862568,
		-0.824832, 0.254069, 0.505075,
		0.310760, 0.950027, 0.029605,
		30.524067, 34.280796, 37.902229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684452, 34.011959, 37.735317>,  <30.306536, 33.615776, 37.881508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684452, 34.011959, 37.735317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978735, 34.272995, 37.662811>,  <30.155306, 34.429619, 37.619308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978735, 34.272995, 37.662811>,  <29.684452, 34.011959, 37.735317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978735, 34.272995, 37.662811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419807, 0.229360, -0.878155,
		-0.531502, 0.722162, 0.442705,
		0.735709, 0.652592, -0.181263,
		30.199448, 34.468773, 37.608433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333014, 34.544037, 37.492321>,  <29.684452, 34.011959, 37.735317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333014, 34.544037, 37.492321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712376, 34.581768, 37.371243>,  <29.939993, 34.604408, 37.298595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712376, 34.581768, 37.371243>,  <29.333014, 34.544037, 37.492321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712376, 34.581768, 37.371243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314019, 0.411243, -0.855729,
		0.043762, 0.906632, 0.419647,
		0.948408, 0.094329, -0.302696,
		29.996899, 34.610065, 37.280434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245714, 35.169590, 37.368004>,  <29.333014, 34.544037, 37.492321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245714, 35.169590, 37.368004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566572, 35.044205, 37.164711>,  <29.759087, 34.968971, 37.042736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566572, 35.044205, 37.164711>,  <29.245714, 35.169590, 37.368004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566572, 35.044205, 37.164711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228450, 0.625279, -0.746215,
		0.551702, 0.714679, 0.429953,
		0.802145, -0.313465, -0.508236,
		29.807215, 34.950165, 37.012241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711267, 35.806099, 37.163227>,  <29.245714, 35.169590, 37.368004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711267, 35.806099, 37.163227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763067, 35.504929, 36.905132>,  <29.794147, 35.324226, 36.750275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763067, 35.504929, 36.905132>,  <29.711267, 35.806099, 37.163227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763067, 35.504929, 36.905132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187683, 0.620346, -0.761542,
		0.973656, 0.219720, -0.060977,
		0.129499, -0.752924, -0.645241,
		29.801916, 35.279053, 36.711559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176308, 36.151264, 36.786129>,  <29.711267, 35.806099, 37.163227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176308, 36.151264, 36.786129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049072, 35.835217, 36.576550>,  <29.972731, 35.645588, 36.450802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049072, 35.835217, 36.576550>,  <30.176308, 36.151264, 36.786129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049072, 35.835217, 36.576550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095287, 0.576500, -0.811522,
		0.943260, -0.208211, -0.258668,
		-0.318090, -0.790124, -0.523950,
		29.953646, 35.598179, 36.419365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600540, 36.287258, 36.239174>,  <30.176308, 36.151264, 36.786129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600540, 36.287258, 36.239174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277719, 36.078171, 36.129311>,  <30.084028, 35.952721, 36.063393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277719, 36.078171, 36.129311>,  <30.600540, 36.287258, 36.239174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277719, 36.078171, 36.129311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039315, 0.511679, -0.858277,
		0.589175, -0.681872, -0.433500,
		-0.807048, -0.522718, -0.274661,
		30.035604, 35.921356, 36.046913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697435, 37.050224, 36.333942>,  <30.600540, 36.287258, 36.239174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697435, 37.050224, 36.333942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991592, 37.215527, 36.119125>,  <31.168087, 37.314709, 35.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991592, 37.215527, 36.119125>,  <30.697435, 37.050224, 36.333942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991592, 37.215527, 36.119125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393731, 0.384441, 0.834974,
		0.551518, -0.825486, 0.120005,
		0.735394, 0.413253, -0.537045,
		31.212212, 37.339500, 35.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350533, 36.876297, 36.543537>,  <30.697435, 37.050224, 36.333942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350533, 36.876297, 36.543537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343925, 37.244968, 36.388496>,  <31.339962, 37.466171, 36.295471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343925, 37.244968, 36.388496>,  <31.350533, 36.876297, 36.543537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343925, 37.244968, 36.388496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249315, 0.379204, 0.891092,
		0.968281, -0.081916, -0.236052,
		-0.016517, 0.921680, -0.387600,
		31.338970, 37.521473, 36.272217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952847, 37.140713, 36.689297>,  <31.350533, 36.876297, 36.543537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952847, 37.140713, 36.689297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698797, 37.444969, 36.635551>,  <31.546368, 37.627522, 36.603306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698797, 37.444969, 36.635551>,  <31.952847, 37.140713, 36.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698797, 37.444969, 36.635551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395603, 0.469729, 0.789211,
		0.663415, 0.448092, -0.599245,
		-0.635121, 0.760637, -0.134359,
		31.508261, 37.673161, 36.595245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232864, 37.844707, 36.702145>,  <31.952847, 37.140713, 36.689297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232864, 37.844707, 36.702145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862236, 37.872314, 36.850040>,  <31.639860, 37.888878, 36.938778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862236, 37.872314, 36.850040>,  <32.232864, 37.844707, 36.702145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862236, 37.872314, 36.850040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366915, 0.382104, 0.848157,
		-0.082738, 0.921538, -0.379370,
		-0.926568, 0.069021, 0.369741,
		31.584265, 37.893021, 36.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057713, 38.519501, 36.996193>,  <32.232864, 37.844707, 36.702145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057713, 38.519501, 36.996193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826195, 38.256535, 37.189194>,  <31.687284, 38.098755, 37.304993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826195, 38.256535, 37.189194>,  <32.057713, 38.519501, 36.996193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826195, 38.256535, 37.189194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332875, 0.349676, 0.875740,
		-0.744443, 0.667483, 0.016448,
		-0.578790, -0.657414, 0.482502,
		31.652557, 38.059311, 37.333946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635820, 38.865993, 37.451229>,  <32.057713, 38.519501, 36.996193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635820, 38.865993, 37.451229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692730, 38.494297, 37.587624>,  <31.726875, 38.271278, 37.669460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692730, 38.494297, 37.587624>,  <31.635820, 38.865993, 37.451229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692730, 38.494297, 37.587624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344076, 0.369435, 0.863209,
		-0.928100, -0.005489, 0.372291,
		0.142276, -0.929240, 0.340984,
		31.735413, 38.215527, 37.689919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453823, 38.853508, 38.186325>,  <31.635820, 38.865993, 37.451229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453823, 38.853508, 38.186325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683908, 38.527122, 38.163231>,  <31.821959, 38.331291, 38.149376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683908, 38.527122, 38.163231>,  <31.453823, 38.853508, 38.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683908, 38.527122, 38.163231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494432, 0.290588, 0.819204,
		-0.651666, -0.499759, 0.570589,
		0.575211, -0.815965, -0.057731,
		31.856472, 38.282333, 38.145912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605114, 38.507267, 38.911404>,  <31.453823, 38.853508, 38.186325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605114, 38.507267, 38.911404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889547, 38.341713, 38.684052>,  <32.060207, 38.242382, 38.547638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889547, 38.341713, 38.684052>,  <31.605114, 38.507267, 38.911404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889547, 38.341713, 38.684052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682658, 0.212869, 0.699046,
		-0.168333, -0.885091, 0.433909,
		0.711085, -0.413884, -0.568382,
		32.102875, 38.217548, 38.513538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926262, 37.940048, 39.300594>,  <31.605114, 38.507267, 38.911404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926262, 37.940048, 39.300594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205276, 38.035168, 39.030216>,  <32.372684, 38.092239, 38.867989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205276, 38.035168, 39.030216>,  <31.926262, 37.940048, 39.300594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205276, 38.035168, 39.030216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642875, 0.208949, 0.736921,
		0.316475, -0.948574, -0.007125,
		0.697535, 0.237798, -0.675941,
		32.414536, 38.106506, 38.827435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521198, 37.659447, 39.505161>,  <31.926262, 37.940048, 39.300594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521198, 37.659447, 39.505161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643936, 37.945946, 39.254452>,  <32.717579, 38.117844, 39.104027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643936, 37.945946, 39.254452>,  <32.521198, 37.659447, 39.505161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643936, 37.945946, 39.254452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742556, 0.231784, 0.628401,
		0.595364, -0.658233, -0.460730,
		0.306844, 0.716245, -0.626770,
		32.735989, 38.160820, 39.066422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281471, 37.559566, 39.323242>,  <32.521198, 37.659447, 39.505161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281471, 37.559566, 39.323242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194450, 37.939777, 39.234547>,  <33.142239, 38.167904, 39.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194450, 37.939777, 39.234547>,  <33.281471, 37.559566, 39.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194450, 37.939777, 39.234547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744119, 0.308538, 0.592529,
		0.631630, -0.036091, -0.774430,
		-0.217557, 0.950527, -0.221738,
		33.129185, 38.224934, 39.168026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819389, 37.855793, 38.985977>,  <33.281471, 37.559566, 39.323242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819389, 37.855793, 38.985977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622623, 38.149014, 39.173874>,  <33.504562, 38.324944, 39.286613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622623, 38.149014, 39.173874>,  <33.819389, 37.855793, 38.985977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622623, 38.149014, 39.173874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805579, 0.178576, 0.564937,
		0.330242, 0.656316, -0.678373,
		-0.491918, 0.733049, 0.469741,
		33.475048, 38.368927, 39.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426323, 38.277431, 39.116386>,  <33.819389, 37.855793, 38.985977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426323, 38.277431, 39.116386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140305, 38.443233, 39.341557>,  <33.968693, 38.542713, 39.476658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140305, 38.443233, 39.341557>,  <34.426323, 38.277431, 39.116386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140305, 38.443233, 39.341557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642167, 0.071235, 0.763248,
		0.276269, 0.907255, -0.317117,
		-0.715050, 0.414504, 0.562930,
		33.925789, 38.567585, 39.510437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800861, 38.728512, 39.513783>,  <34.426323, 38.277431, 39.116386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800861, 38.728512, 39.513783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451118, 38.683285, 39.702549>,  <34.241272, 38.656147, 39.815811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451118, 38.683285, 39.702549>,  <34.800861, 38.728512, 39.513783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451118, 38.683285, 39.702549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475823, -0.008736, 0.879498,
		-0.095324, 0.993548, 0.061441,
		-0.874360, -0.113072, 0.471920,
		34.188808, 38.649364, 39.844124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726299, 39.318069, 40.109699>,  <34.800861, 38.728512, 39.513783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726299, 39.318069, 40.109699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485508, 39.018173, 40.219612>,  <34.341034, 38.838234, 40.285561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485508, 39.018173, 40.219612>,  <34.726299, 39.318069, 40.109699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485508, 39.018173, 40.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538004, -0.126524, 0.833392,
		-0.590065, 0.649518, 0.479530,
		-0.601976, -0.749745, 0.274786,
		34.304916, 38.793251, 40.302048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470818, 39.439445, 40.784195>,  <34.726299, 39.318069, 40.109699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470818, 39.439445, 40.784195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464470, 39.041817, 40.741180>,  <34.460663, 38.803238, 40.715370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464470, 39.041817, 40.741180>,  <34.470818, 39.439445, 40.784195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464470, 39.041817, 40.741180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506990, -0.100699, 0.856049,
		-0.861806, -0.040939, 0.505584,
		-0.015865, -0.994074, -0.107539,
		34.459709, 38.743595, 40.708920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310501, 39.216484, 41.447582>,  <34.470818, 39.439445, 40.784195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310501, 39.216484, 41.447582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471966, 38.891449, 41.279415>,  <34.568844, 38.696426, 41.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471966, 38.891449, 41.279415>,  <34.310501, 39.216484, 41.447582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471966, 38.891449, 41.279415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393581, -0.260599, 0.881579,
		-0.825925, -0.521328, 0.214627,
		0.403660, -0.812592, -0.420420,
		34.593063, 38.647671, 41.153290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341408, 38.739208, 42.020794>,  <34.310501, 39.216484, 41.447582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341408, 38.739208, 42.020794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589832, 38.583580, 41.748642>,  <34.738888, 38.490204, 41.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589832, 38.583580, 41.748642>,  <34.341408, 38.739208, 42.020794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589832, 38.583580, 41.748642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553082, -0.397513, 0.732178,
		-0.555328, -0.831027, -0.031689,
		0.621056, -0.389072, -0.680376,
		34.776150, 38.466858, 41.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357250, 38.025021, 42.185829>,  <34.341408, 38.739208, 42.020794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357250, 38.025021, 42.185829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683121, 38.117249, 41.972984>,  <34.878643, 38.172585, 41.845280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683121, 38.117249, 41.972984>,  <34.357250, 38.025021, 42.185829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683121, 38.117249, 41.972984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578275, -0.391963, 0.715516,
		-0.043588, -0.890618, -0.452657,
		0.814676, 0.230572, -0.532107,
		34.927525, 38.186420, 41.813351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673870, 37.424492, 41.985950>,  <34.357250, 38.025021, 42.185829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673870, 37.424492, 41.985950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935787, 37.726608, 41.997150>,  <35.092937, 37.907879, 42.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935787, 37.726608, 41.997150>,  <34.673870, 37.424492, 41.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935787, 37.726608, 41.997150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547184, -0.499276, 0.671798,
		0.521383, -0.424566, -0.740205,
		0.654790, 0.755293, 0.027998,
		35.132225, 37.953197, 42.005550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275101, 37.052986, 41.921757>,  <34.673870, 37.424492, 41.985950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275101, 37.052986, 41.921757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377632, 37.409119, 42.072277>,  <35.439152, 37.622799, 42.162590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377632, 37.409119, 42.072277>,  <35.275101, 37.052986, 41.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377632, 37.409119, 42.072277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486406, -0.455235, 0.745768,
		0.835286, -0.008132, -0.549755,
		0.256332, 0.890334, 0.376296,
		35.454533, 37.676220, 42.185165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052547, 37.001591, 42.010418>,  <35.275101, 37.052986, 41.921757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052547, 37.001591, 42.010418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953968, 37.308475, 42.247280>,  <35.894821, 37.492607, 42.389397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953968, 37.308475, 42.247280>,  <36.052547, 37.001591, 42.010418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953968, 37.308475, 42.247280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509849, -0.416984, 0.752449,
		0.824207, 0.487350, -0.288397,
		-0.246449, 0.767212, 0.592156,
		35.880032, 37.538639, 42.424927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670090, 37.072201, 42.371281>,  <36.052547, 37.001591, 42.010418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670090, 37.072201, 42.371281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379967, 37.250931, 42.580765>,  <36.205891, 37.358170, 42.706455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379967, 37.250931, 42.580765>,  <36.670090, 37.072201, 42.371281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379967, 37.250931, 42.580765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416363, -0.321115, 0.850604,
		0.548241, 0.835006, 0.046867,
		-0.725309, 0.446823, 0.523714,
		36.162373, 37.384979, 42.737881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948742, 37.517235, 42.832546>,  <36.670090, 37.072201, 42.371281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948742, 37.517235, 42.832546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584854, 37.463852, 42.989826>,  <36.366524, 37.431824, 43.084194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584854, 37.463852, 42.989826>,  <36.948742, 37.517235, 42.832546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584854, 37.463852, 42.989826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415173, -0.276859, 0.866591,
		-0.006789, 0.951598, 0.307270,
		-0.909717, -0.133454, 0.393198,
		36.311939, 37.423817, 43.107784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966335, 37.815842, 43.420147>,  <36.948742, 37.517235, 42.832546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966335, 37.815842, 43.420147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641880, 37.592529, 43.489853>,  <36.447205, 37.458542, 43.531677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641880, 37.592529, 43.489853>,  <36.966335, 37.815842, 43.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641880, 37.592529, 43.489853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286594, -0.119690, 0.950546,
		-0.509816, 0.820972, 0.257086,
		-0.811142, -0.558283, 0.174266,
		36.398537, 37.425045, 43.542133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637817, 38.148777, 43.916138>,  <36.966335, 37.815842, 43.420147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637817, 38.148777, 43.916138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512276, 37.769249, 43.930153>,  <36.436951, 37.541531, 43.938560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512276, 37.769249, 43.930153>,  <36.637817, 38.148777, 43.916138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512276, 37.769249, 43.930153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311896, -0.068176, 0.947667,
		-0.896781, 0.308357, 0.317332,
		-0.313855, -0.948824, 0.035036,
		36.418118, 37.484600, 43.940662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123707, 38.075531, 44.558807>,  <36.637817, 38.148777, 43.916138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123707, 38.075531, 44.558807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256805, 37.711506, 44.459969>,  <36.336666, 37.493092, 44.400665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256805, 37.711506, 44.459969>,  <36.123707, 38.075531, 44.558807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256805, 37.711506, 44.459969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302668, -0.145104, 0.941986,
		-0.893125, -0.388231, 0.227166,
		0.332746, -0.910067, -0.247102,
		36.356628, 37.438484, 44.385838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831654, 37.686489, 45.098644>,  <36.123707, 38.075531, 44.558807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831654, 37.686489, 45.098644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134808, 37.467976, 44.955990>,  <36.316700, 37.336868, 44.870396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134808, 37.467976, 44.955990>,  <35.831654, 37.686489, 45.098644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134808, 37.467976, 44.955990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191275, -0.336574, 0.922026,
		-0.623721, -0.767003, -0.150594,
		0.757883, -0.546282, -0.356637,
		36.362171, 37.304092, 44.848999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728451, 37.082993, 45.474861>,  <35.831654, 37.686489, 45.098644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728451, 37.082993, 45.474861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099983, 37.050140, 45.330349>,  <36.322903, 37.030430, 45.243641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099983, 37.050140, 45.330349>,  <35.728451, 37.082993, 45.474861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099983, 37.050140, 45.330349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323590, -0.295058, 0.899016,
		-0.180437, -0.951942, -0.247483,
		0.928834, -0.082133, -0.361278,
		36.378632, 37.025501, 45.221966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949154, 36.357460, 45.632889>,  <35.728451, 37.082993, 45.474861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949154, 36.357460, 45.632889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271046, 36.588364, 45.577473>,  <36.464180, 36.726906, 45.544224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271046, 36.588364, 45.577473>,  <35.949154, 36.357460, 45.632889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271046, 36.588364, 45.577473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444649, -0.431486, 0.784924,
		0.393324, -0.693250, -0.603904,
		0.804725, 0.577255, -0.138539,
		36.512463, 36.761539, 45.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537991, 35.868977, 45.779037>,  <35.949154, 36.357460, 45.632889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537991, 35.868977, 45.779037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686817, 36.238987, 45.809723>,  <36.776112, 36.460995, 45.828133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686817, 36.238987, 45.809723>,  <36.537991, 35.868977, 45.779037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686817, 36.238987, 45.809723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458338, -0.254959, 0.851423,
		0.807150, -0.281628, -0.518839,
		0.372068, 0.925031, 0.076709,
		36.798439, 36.516495, 45.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229988, 35.755959, 45.934517>,  <36.537991, 35.868977, 45.779037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229988, 35.755959, 45.934517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153591, 36.136002, 46.033161>,  <37.107754, 36.364029, 46.092350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153591, 36.136002, 46.033161>,  <37.229988, 35.755959, 45.934517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153591, 36.136002, 46.033161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387242, -0.157931, 0.908351,
		0.901978, 0.268991, -0.337757,
		-0.190995, 0.950106, 0.246615,
		37.096294, 36.421032, 46.107147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871468, 36.076050, 46.298584>,  <37.229988, 35.755959, 45.934517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871468, 36.076050, 46.298584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543037, 36.277035, 46.406933>,  <37.345978, 36.397625, 46.471943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543037, 36.277035, 46.406933>,  <37.871468, 36.076050, 46.298584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543037, 36.277035, 46.406933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282034, -0.055462, 0.957800,
		0.496279, 0.862820, -0.096172,
		-0.821075, 0.502460, 0.270869,
		37.296715, 36.427773, 46.488194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093681, 36.596149, 46.725231>,  <37.871468, 36.076050, 46.298584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093681, 36.596149, 46.725231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707634, 36.553127, 46.820705>,  <37.476006, 36.527313, 46.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707634, 36.553127, 46.820705>,  <38.093681, 36.596149, 46.725231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707634, 36.553127, 46.820705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231062, 0.078720, 0.969749,
		-0.123094, 0.991077, -0.051121,
		-0.965121, -0.107558, 0.238690,
		37.418098, 36.520859, 46.892311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913666, 37.146908, 47.156944>,  <38.093681, 36.596149, 46.725231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913666, 37.146908, 47.156944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679131, 36.830139, 47.225147>,  <37.538410, 36.640079, 47.266068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679131, 36.830139, 47.225147>,  <37.913666, 37.146908, 47.156944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679131, 36.830139, 47.225147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301824, -0.018243, 0.953189,
		-0.751739, 0.610352, 0.249717,
		-0.586337, -0.791920, 0.170505,
		37.503231, 36.592564, 47.276299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597523, 37.335079, 47.787079>,  <37.913666, 37.146908, 47.156944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597523, 37.335079, 47.787079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560879, 36.937420, 47.764160>,  <37.538891, 36.698826, 47.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560879, 36.937420, 47.764160>,  <37.597523, 37.335079, 47.787079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560879, 36.937420, 47.764160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071859, -0.063990, 0.995360,
		-0.993199, 0.087068, 0.077300,
		-0.091610, -0.994145, -0.057298,
		37.533394, 36.639175, 47.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483341, 37.146656, 48.482910>,  <37.597523, 37.335079, 47.787079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483341, 37.146656, 48.482910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535069, 36.800465, 48.289322>,  <37.566105, 36.592751, 48.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535069, 36.800465, 48.289322>,  <37.483341, 37.146656, 48.482910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535069, 36.800465, 48.289322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013774, -0.486455, 0.873597,
		-0.991507, -0.119638, -0.050987,
		0.129318, -0.865475, -0.483972,
		37.573864, 36.540821, 48.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989166, 36.646301, 48.815727>,  <37.483341, 37.146656, 48.482910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989166, 36.646301, 48.815727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293091, 36.449333, 48.645920>,  <37.475445, 36.331154, 48.544037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293091, 36.449333, 48.645920>,  <36.989166, 36.646301, 48.815727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293091, 36.449333, 48.645920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217145, -0.423253, 0.879605,
		-0.612811, -0.760514, -0.214666,
		0.759809, -0.492418, -0.424515,
		37.521034, 36.301609, 48.518566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899879, 36.012218, 49.054813>,  <36.989166, 36.646301, 48.815727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899879, 36.012218, 49.054813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281559, 36.010487, 48.935158>,  <37.510567, 36.009449, 48.863365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281559, 36.010487, 48.935158>,  <36.899879, 36.012218, 49.054813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281559, 36.010487, 48.935158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244789, -0.563552, 0.788979,
		-0.172000, -0.826069, -0.536680,
		0.954198, -0.004331, -0.299143,
		37.567818, 36.009186, 48.845413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106033, 35.373173, 49.129757>,  <36.899879, 36.012218, 49.054813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106033, 35.373173, 49.129757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455238, 35.568230, 49.132881>,  <37.664761, 35.685265, 49.134758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455238, 35.568230, 49.132881>,  <37.106033, 35.373173, 49.129757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455238, 35.568230, 49.132881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374877, -0.681203, 0.628832,
		0.311969, -0.546046, -0.777502,
		0.873008, 0.487643, 0.007814,
		37.717140, 35.714523, 49.135227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681927, 34.903591, 49.139294>,  <37.106033, 35.373173, 49.129757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681927, 34.903591, 49.139294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857677, 35.220303, 49.309017>,  <37.963127, 35.410328, 49.410851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857677, 35.220303, 49.309017>,  <37.681927, 34.903591, 49.139294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857677, 35.220303, 49.309017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187925, -0.542914, 0.818492,
		0.878426, -0.279886, -0.387338,
		0.439376, 0.791775, 0.424312,
		37.989491, 35.457836, 49.436310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286701, 34.720657, 49.324688>,  <37.681927, 34.903591, 49.139294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286701, 34.720657, 49.324688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230289, 35.043629, 49.553833>,  <38.196442, 35.237411, 49.691319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230289, 35.043629, 49.553833>,  <38.286701, 34.720657, 49.324688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230289, 35.043629, 49.553833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044186, -0.583202, 0.811124,
		0.989019, 0.089081, 0.117926,
		-0.141030, 0.807428, 0.572862,
		38.187981, 35.285858, 49.725693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817421, 34.563038, 49.862839>,  <38.286701, 34.720657, 49.324688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817421, 34.563038, 49.862839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569309, 34.848465, 49.993118>,  <38.420444, 35.019722, 50.071285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569309, 34.848465, 49.993118>,  <38.817421, 34.563038, 49.862839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569309, 34.848465, 49.993118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064291, -0.367576, 0.927768,
		0.781745, 0.596411, 0.182122,
		-0.620275, 0.713569, 0.325695,
		38.383228, 35.062534, 50.090828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100803, 34.793011, 50.446846>,  <38.817421, 34.563038, 49.862839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100803, 34.793011, 50.446846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727371, 34.925140, 50.502426>,  <38.503311, 35.004417, 50.535774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727371, 34.925140, 50.502426>,  <39.100803, 34.793011, 50.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727371, 34.925140, 50.502426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005306, -0.400437, 0.916309,
		0.358324, 0.854712, 0.375594,
		-0.933582, 0.330329, 0.138951,
		38.447296, 35.024239, 50.544113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043362, 35.131260, 51.113079>,  <39.100803, 34.793011, 50.446846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043362, 35.131260, 51.113079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661118, 35.054420, 51.023724>,  <38.431770, 35.008316, 50.970112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661118, 35.054420, 51.023724>,  <39.043362, 35.131260, 51.113079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661118, 35.054420, 51.023724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130581, -0.403516, 0.905607,
		-0.264109, 0.894579, 0.360520,
		-0.955613, -0.192101, -0.223387,
		38.374435, 34.996792, 50.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905396, 35.400623, 51.712299>,  <39.043362, 35.131260, 51.113079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905396, 35.400623, 51.712299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618664, 35.169506, 51.556187>,  <38.446625, 35.030838, 51.462521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618664, 35.169506, 51.556187>,  <38.905396, 35.400623, 51.712299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618664, 35.169506, 51.556187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211734, -0.352927, 0.911379,
		-0.664327, 0.735935, 0.130649,
		-0.716825, -0.577791, -0.390281,
		38.403618, 34.996170, 51.439102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477104, 35.191097, 52.301647>,  <38.905396, 35.400623, 51.712299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477104, 35.191097, 52.301647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323105, 34.955315, 52.017586>,  <38.230705, 34.813847, 51.847149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323105, 34.955315, 52.017586>,  <38.477104, 35.191097, 52.301647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323105, 34.955315, 52.017586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317386, -0.637974, 0.701609,
		-0.866628, 0.495509, 0.058532,
		-0.384996, -0.589457, -0.710154,
		38.207607, 34.778477, 51.804539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053070, 34.818855, 52.609009>,  <38.477104, 35.191097, 52.301647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053070, 34.818855, 52.609009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984432, 34.624813, 52.266026>,  <37.943249, 34.508389, 52.060238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984432, 34.624813, 52.266026>,  <38.053070, 34.818855, 52.609009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984432, 34.624813, 52.266026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500082, -0.707002, 0.500066,
		-0.848807, 0.514606, -0.121275,
		-0.171596, -0.485106, -0.857453,
		37.932953, 34.479282, 52.008789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304592, 34.603260, 52.761723>,  <38.053070, 34.818855, 52.609009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304592, 34.603260, 52.761723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493717, 34.383907, 52.485832>,  <37.607193, 34.252296, 52.320297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493717, 34.383907, 52.485832>,  <37.304592, 34.603260, 52.761723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493717, 34.383907, 52.485832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218279, -0.831240, 0.511267,
		-0.853700, -0.091181, -0.512721,
		0.472813, -0.548384, -0.689727,
		37.635563, 34.219391, 52.278915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038177, 33.955296, 52.935658>,  <37.304592, 34.603260, 52.761723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038177, 33.955296, 52.935658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330750, 33.912151, 52.666325>,  <37.506294, 33.886265, 52.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330750, 33.912151, 52.666325>,  <37.038177, 33.955296, 52.935658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330750, 33.912151, 52.666325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148773, -0.938385, 0.311930,
		-0.665490, -0.328329, -0.670316,
		0.731430, -0.107862, -0.673332,
		37.550179, 33.879791, 52.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982098, 33.255962, 52.506088>,  <37.038177, 33.955296, 52.935658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982098, 33.255962, 52.506088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354385, 33.400341, 52.529671>,  <37.577759, 33.486969, 52.543819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354385, 33.400341, 52.529671>,  <36.982098, 33.255962, 52.506088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354385, 33.400341, 52.529671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316208, -0.875174, 0.366174,
		0.183770, -0.322162, -0.928677,
		0.930721, 0.360947, 0.058960,
		37.633602, 33.508625, 52.547359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736004, 32.575981, 52.311119>,  <36.982098, 33.255962, 52.506088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736004, 32.575981, 52.311119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564392, 32.815605, 52.581543>,  <36.461426, 32.959377, 52.743797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564392, 32.815605, 52.581543>,  <36.736004, 32.575981, 52.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564392, 32.815605, 52.581543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240739, 0.797208, -0.553628,
		-0.870618, -0.074769, -0.486244,
		-0.429032, 0.599057, 0.676064,
		36.435684, 32.995323, 52.784363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054520, 32.339783, 52.927334>,  <36.736004, 32.575981, 52.311119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054520, 32.339783, 52.927334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363934, 32.144169, 53.088577>,  <37.549583, 32.026802, 53.185322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363934, 32.144169, 53.088577>,  <37.054520, 32.339783, 52.927334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363934, 32.144169, 53.088577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430177, -0.061933, -0.900618,
		0.465394, 0.870066, 0.162462,
		0.773535, -0.489030, 0.403106,
		37.595993, 31.997459, 53.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768715, 32.716473, 52.947369>,  <37.054520, 32.339783, 52.927334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768715, 32.716473, 52.947369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759136, 32.323540, 52.873116>,  <37.753387, 32.087780, 52.828564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759136, 32.323540, 52.873116>,  <37.768715, 32.716473, 52.947369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759136, 32.323540, 52.873116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472510, 0.152512, -0.868029,
		0.881000, -0.108498, 0.460507,
		-0.023947, -0.982328, -0.185629,
		37.751953, 32.028843, 52.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508904, 32.458927, 52.724770>,  <37.768715, 32.716473, 52.947369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508904, 32.458927, 52.724770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222427, 32.219219, 52.581696>,  <38.050541, 32.075394, 52.495850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222427, 32.219219, 52.581696>,  <38.508904, 32.458927, 52.724770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222427, 32.219219, 52.581696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459477, -0.019111, -0.887984,
		0.525305, -0.800320, 0.289038,
		-0.716195, -0.599269, -0.357689,
		38.007568, 32.039440, 52.474388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842316, 31.977232, 52.298962>,  <38.508904, 32.458927, 52.724770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842316, 31.977232, 52.298962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454556, 32.009026, 52.206062>,  <38.221897, 32.028103, 52.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454556, 32.009026, 52.206062>,  <38.842316, 31.977232, 52.298962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454556, 32.009026, 52.206062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218890, -0.148353, -0.964406,
		-0.111103, -0.985736, 0.126417,
		-0.969404, 0.079477, -0.232250,
		38.163734, 32.032871, 52.136387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789482, 31.380222, 51.964516>,  <38.842316, 31.977232, 52.298962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789482, 31.380222, 51.964516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544144, 31.679558, 51.863487>,  <38.396938, 31.859159, 51.802872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544144, 31.679558, 51.863487>,  <38.789482, 31.380222, 51.964516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544144, 31.679558, 51.863487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069062, -0.267743, -0.961012,
		-0.786787, -0.606878, 0.112538,
		-0.613348, 0.748340, -0.252569,
		38.360138, 31.904060, 51.787716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123367, 31.206860, 51.675457>,  <38.789482, 31.380222, 51.964516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123367, 31.206860, 51.675457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221603, 31.560255, 51.515892>,  <38.280544, 31.772293, 51.420151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221603, 31.560255, 51.515892>,  <38.123367, 31.206860, 51.675457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221603, 31.560255, 51.515892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058980, -0.397137, -0.915863,
		-0.967579, 0.248452, -0.045424,
		0.245588, 0.883490, -0.398915,
		38.295280, 31.825302, 51.396217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694656, 31.331198, 51.035950>,  <38.123367, 31.206860, 51.675457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694656, 31.331198, 51.035950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965111, 31.619215, 50.973503>,  <38.127384, 31.792025, 50.936035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965111, 31.619215, 50.973503>,  <37.694656, 31.331198, 51.035950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965111, 31.619215, 50.973503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078544, -0.140244, -0.986997,
		-0.732575, 0.679610, -0.038270,
		0.676140, 0.720043, -0.156119,
		38.167953, 31.835228, 50.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343681, 31.846689, 50.743832>,  <37.694656, 31.331198, 51.035950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343681, 31.846689, 50.743832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729790, 31.873756, 50.642899>,  <37.961456, 31.889996, 50.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729790, 31.873756, 50.642899>,  <37.343681, 31.846689, 50.743832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729790, 31.873756, 50.642899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251122, -0.025934, -0.967608,
		-0.072018, 0.997371, -0.008041,
		0.965273, 0.067666, -0.252329,
		38.019371, 31.894056, 50.567200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322441, 32.214478, 50.170052>,  <37.343681, 31.846689, 50.743832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322441, 32.214478, 50.170052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700844, 32.086159, 50.151459>,  <37.927887, 32.009167, 50.140301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700844, 32.086159, 50.151459>,  <37.322441, 32.214478, 50.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700844, 32.086159, 50.151459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090468, -0.123586, -0.988201,
		0.311266, 0.939051, -0.145934,
		0.946007, -0.320796, -0.046486,
		37.984646, 31.989920, 50.137512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642143, 32.608807, 49.690037>,  <37.322441, 32.214478, 50.170052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642143, 32.608807, 49.690037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884285, 32.293003, 49.730461>,  <38.029572, 32.103519, 49.754715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884285, 32.293003, 49.730461>,  <37.642143, 32.608807, 49.690037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884285, 32.293003, 49.730461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134491, -0.023690, -0.990632,
		0.784511, 0.613276, 0.091842,
		0.605355, -0.789513, 0.101065,
		38.065891, 32.056149, 49.760780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136738, 32.824852, 49.326271>,  <37.642143, 32.608807, 49.690037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136738, 32.824852, 49.326271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160793, 32.425701, 49.336224>,  <38.175224, 32.186211, 49.342194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160793, 32.425701, 49.336224>,  <38.136738, 32.824852, 49.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160793, 32.425701, 49.336224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254106, -0.008798, -0.967136,
		0.965305, 0.064480, 0.253038,
		0.060135, -0.997880, 0.024877,
		38.178833, 32.126335, 49.343685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771088, 32.600456, 48.923660>,  <38.136738, 32.824852, 49.326271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771088, 32.600456, 48.923660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559479, 32.261375, 48.939339>,  <38.432514, 32.057926, 48.948746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559479, 32.261375, 48.939339>,  <38.771088, 32.600456, 48.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559479, 32.261375, 48.939339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318305, -0.241039, -0.916832,
		0.786647, -0.472551, 0.397343,
		-0.529026, -0.847700, 0.039197,
		38.400772, 32.007065, 48.951099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137890, 31.975460, 48.591358>,  <38.771088, 32.600456, 48.923660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137890, 31.975460, 48.591358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759438, 31.846081, 48.585442>,  <38.532368, 31.768454, 48.581890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759438, 31.846081, 48.585442>,  <39.137890, 31.975460, 48.591358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759438, 31.846081, 48.585442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042802, -0.079646, -0.995904,
		0.320944, -0.942888, 0.089200,
		-0.946131, -0.323447, -0.014795,
		38.475597, 31.749046, 48.581001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200237, 31.356482, 48.103924>,  <39.137890, 31.975460, 48.591358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200237, 31.356482, 48.103924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818520, 31.475801, 48.111214>,  <38.589489, 31.547394, 48.115585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818520, 31.475801, 48.111214>,  <39.200237, 31.356482, 48.103924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818520, 31.475801, 48.111214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027833, -0.028008, -0.999220,
		-0.297556, -0.954061, 0.035030,
		-0.954299, 0.298299, 0.018221,
		38.532230, 31.565290, 48.116680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948097, 31.051456, 47.653709>,  <39.200237, 31.356482, 48.103924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948097, 31.051456, 47.653709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687187, 31.350531, 47.703510>,  <38.530640, 31.529976, 47.733391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687187, 31.350531, 47.703510>,  <38.948097, 31.051456, 47.653709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687187, 31.350531, 47.703510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041435, 0.128838, -0.990800,
		-0.756849, -0.651432, -0.053057,
		-0.652275, 0.747687, 0.124503,
		38.491505, 31.574837, 47.740860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471813, 30.929909, 47.157120>,  <38.948097, 31.051456, 47.653709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471813, 30.929909, 47.157120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416225, 31.316559, 47.243210>,  <38.382874, 31.548550, 47.294865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416225, 31.316559, 47.243210>,  <38.471813, 30.929909, 47.157120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416225, 31.316559, 47.243210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107373, 0.201347, -0.973617,
		-0.984459, -0.158411, 0.075809,
		-0.138967, 0.966626, 0.215227,
		38.374535, 31.606546, 47.307777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782024, 31.159876, 46.979019>,  <38.471813, 30.929909, 47.157120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782024, 31.159876, 46.979019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996941, 31.496941, 46.993114>,  <38.125889, 31.699179, 47.001572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996941, 31.496941, 46.993114>,  <37.782024, 31.159876, 46.979019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996941, 31.496941, 46.993114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132628, 0.125683, -0.983165,
		-0.832906, 0.523568, 0.179289,
		0.537288, 0.842662, 0.035242,
		38.158127, 31.749739, 47.003689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467648, 31.517563, 46.510044>,  <37.782024, 31.159876, 46.979019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467648, 31.517563, 46.510044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794884, 31.740505, 46.566738>,  <37.991226, 31.874271, 46.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794884, 31.740505, 46.566738>,  <37.467648, 31.517563, 46.510044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794884, 31.740505, 46.566738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131697, 0.421464, -0.897231,
		-0.559813, 0.715347, 0.418196,
		0.818087, 0.557356, 0.141732,
		38.040310, 31.907713, 46.609257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261311, 32.262436, 46.397949>,  <37.467648, 31.517563, 46.510044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261311, 32.262436, 46.397949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659470, 32.261246, 46.359650>,  <37.898365, 32.260532, 46.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659470, 32.261246, 46.359650>,  <37.261311, 32.262436, 46.397949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659470, 32.261246, 46.359650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083744, 0.458367, -0.884809,
		0.046520, 0.888758, 0.456010,
		0.995401, -0.002973, -0.095752,
		37.958092, 32.260353, 46.330925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365658, 32.969601, 46.144421>,  <37.261311, 32.262436, 46.397949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365658, 32.969601, 46.144421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680786, 32.739193, 46.057201>,  <37.869862, 32.600948, 46.004871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680786, 32.739193, 46.057201>,  <37.365658, 32.969601, 46.144421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680786, 32.739193, 46.057201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075791, 0.441999, -0.893808,
		0.611227, 0.687632, 0.391872,
		0.787818, -0.576019, -0.218046,
		37.917133, 32.566387, 45.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885616, 33.442291, 45.914631>,  <37.365658, 32.969601, 46.144421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885616, 33.442291, 45.914631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947727, 33.082714, 45.750778>,  <37.984993, 32.866970, 45.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947727, 33.082714, 45.750778>,  <37.885616, 33.442291, 45.914631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947727, 33.082714, 45.750778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124908, 0.393466, -0.910814,
		0.979943, 0.192592, -0.051190,
		0.155274, -0.898940, -0.409630,
		37.994308, 32.813030, 45.627888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527565, 33.476711, 45.426655>,  <37.885616, 33.442291, 45.914631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527565, 33.476711, 45.426655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316948, 33.160084, 45.302616>,  <38.190578, 32.970108, 45.228191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316948, 33.160084, 45.302616>,  <38.527565, 33.476711, 45.426655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316948, 33.160084, 45.302616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154227, 0.447647, -0.880810,
		0.836040, -0.415962, -0.357789,
		-0.526547, -0.791573, -0.310098,
		38.158985, 32.922611, 45.209587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665192, 33.452591, 44.674171>,  <38.527565, 33.476711, 45.426655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665192, 33.452591, 44.674171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331604, 33.244553, 44.747921>,  <38.131451, 33.119732, 44.792171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331604, 33.244553, 44.747921>,  <38.665192, 33.452591, 44.674171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331604, 33.244553, 44.747921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356674, 0.253128, -0.899283,
		0.421039, -0.815739, -0.396605,
		-0.833972, -0.520093, 0.184377,
		38.081413, 33.088524, 44.803234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502743, 33.095295, 44.029556>,  <38.665192, 33.452591, 44.674171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502743, 33.095295, 44.029556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161804, 33.081760, 44.238308>,  <37.957241, 33.073639, 44.363560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161804, 33.081760, 44.238308>,  <38.502743, 33.095295, 44.029556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161804, 33.081760, 44.238308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520210, -0.047681, -0.852706,
		0.053738, -0.998289, 0.023037,
		-0.852346, -0.033839, 0.521882,
		37.906101, 33.071609, 44.394871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146568, 32.546906, 43.733242>,  <38.502743, 33.095295, 44.029556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146568, 32.546906, 43.733242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872932, 32.771366, 43.919628>,  <37.708752, 32.906040, 44.031460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872932, 32.771366, 43.919628>,  <38.146568, 32.546906, 43.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872932, 32.771366, 43.919628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434828, 0.199159, -0.878214,
		-0.585612, -0.803397, 0.107760,
		-0.684093, 0.561150, 0.465970,
		37.667706, 32.939713, 44.059418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407143, 32.335945, 43.509483>,  <38.146568, 32.546906, 43.733242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407143, 32.335945, 43.509483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372314, 32.708191, 43.651684>,  <37.351418, 32.931538, 43.737003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372314, 32.708191, 43.651684>,  <37.407143, 32.335945, 43.509483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372314, 32.708191, 43.651684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651118, 0.216920, -0.727318,
		-0.753965, -0.294804, 0.587050,
		-0.087074, 0.930611, 0.355502,
		37.346191, 32.987373, 43.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698376, 32.498325, 43.492893>,  <37.407143, 32.335945, 43.509483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698376, 32.498325, 43.492893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828781, 32.872154, 43.549866>,  <36.907024, 33.096451, 43.584049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828781, 32.872154, 43.549866>,  <36.698376, 32.498325, 43.492893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828781, 32.872154, 43.549866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697291, 0.339456, -0.631312,
		-0.638358, 0.106496, 0.762337,
		0.326012, 0.934574, 0.142435,
		36.926586, 33.152527, 43.592598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121975, 32.861328, 43.501690>,  <36.698376, 32.498325, 43.492893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121975, 32.861328, 43.501690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403442, 33.141373, 43.453209>,  <36.572323, 33.309399, 43.424122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403442, 33.141373, 43.453209>,  <36.121975, 32.861328, 43.501690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403442, 33.141373, 43.453209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620085, 0.521820, -0.585832,
		-0.346902, 0.487389, 0.801318,
		0.703672, 0.700112, -0.121203,
		36.614544, 33.351406, 43.416847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830944, 33.599342, 43.521717>,  <36.121975, 32.861328, 43.501690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830944, 33.599342, 43.521717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167278, 33.626007, 43.306850>,  <36.369080, 33.642006, 43.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167278, 33.626007, 43.306850>,  <35.830944, 33.599342, 43.521717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167278, 33.626007, 43.306850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499467, 0.478046, -0.722499,
		0.208625, 0.875801, 0.435256,
		0.840838, 0.066665, -0.537167,
		36.419529, 33.646008, 43.145702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717159, 34.220165, 43.276794>,  <35.830944, 33.599342, 43.521717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717159, 34.220165, 43.276794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007668, 34.046429, 43.063675>,  <36.181973, 33.942188, 42.935802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007668, 34.046429, 43.063675>,  <35.717159, 34.220165, 43.276794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007668, 34.046429, 43.063675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339183, 0.447732, -0.827340,
		0.597900, 0.781591, 0.177854,
		0.726272, -0.434341, -0.532800,
		36.225548, 33.916126, 42.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996288, 34.739429, 42.703300>,  <35.717159, 34.220165, 43.276794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996288, 34.739429, 42.703300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150936, 34.392376, 42.578243>,  <36.243725, 34.184143, 42.503208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150936, 34.392376, 42.578243>,  <35.996288, 34.739429, 42.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150936, 34.392376, 42.578243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250331, 0.227545, -0.941041,
		0.887616, 0.442086, -0.129222,
		0.386617, -0.867631, -0.312640,
		36.266922, 34.132088, 42.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436535, 34.922794, 42.251068>,  <35.996288, 34.739429, 42.703300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436535, 34.922794, 42.251068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352051, 34.547104, 42.142815>,  <36.301361, 34.321690, 42.077862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352051, 34.547104, 42.142815>,  <36.436535, 34.922794, 42.251068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352051, 34.547104, 42.142815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245864, 0.319031, -0.915298,
		0.946014, -0.126776, -0.298304,
		-0.211206, -0.939227, -0.270638,
		36.288689, 34.265335, 42.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740959, 34.770355, 41.578251>,  <36.436535, 34.922794, 42.251068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740959, 34.770355, 41.578251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452221, 34.496075, 41.615662>,  <36.278976, 34.331505, 41.638107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452221, 34.496075, 41.615662>,  <36.740959, 34.770355, 41.578251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452221, 34.496075, 41.615662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295883, 0.183625, -0.937409,
		0.625611, -0.704338, -0.335437,
		-0.721847, -0.685704, 0.093524,
		36.235668, 34.290363, 41.643719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757477, 34.407299, 40.941124>,  <36.740959, 34.770355, 41.578251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757477, 34.407299, 40.941124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398346, 34.333752, 41.101173>,  <36.182869, 34.289623, 41.197205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398346, 34.333752, 41.101173>,  <36.757477, 34.407299, 40.941124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398346, 34.333752, 41.101173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420169, 0.085803, -0.903380,
		0.131766, -0.979200, -0.154290,
		-0.897828, -0.183863, 0.400124,
		36.128998, 34.278591, 41.221210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394344, 33.861565, 40.552219>,  <36.757477, 34.407299, 40.941124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394344, 33.861565, 40.552219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115570, 34.083481, 40.733982>,  <35.948303, 34.216629, 40.843040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115570, 34.083481, 40.733982>,  <36.394344, 33.861565, 40.552219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115570, 34.083481, 40.733982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436609, 0.174417, -0.882582,
		-0.568902, -0.813505, 0.120666,
		-0.696938, 0.554787, 0.454410,
		35.906487, 34.249916, 40.870304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903461, 33.710285, 40.105686>,  <36.394344, 33.861565, 40.552219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903461, 33.710285, 40.105686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750504, 34.014709, 40.315281>,  <35.658730, 34.197365, 40.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750504, 34.014709, 40.315281>,  <35.903461, 33.710285, 40.105686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750504, 34.014709, 40.315281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499943, 0.306490, -0.810013,
		-0.777067, -0.571704, 0.263289,
		-0.382392, 0.761064, 0.523983,
		35.635784, 34.243027, 40.472477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167084, 33.759007, 39.822952>,  <35.903461, 33.710285, 40.105686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167084, 33.759007, 39.822952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287670, 34.102192, 39.989330>,  <35.360020, 34.308105, 40.089157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287670, 34.102192, 39.989330>,  <35.167084, 33.759007, 39.822952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287670, 34.102192, 39.989330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495599, 0.513682, -0.700366,
		-0.814556, 0.004990, 0.580063,
		0.301463, 0.857966, 0.415950,
		35.378109, 34.359581, 40.114117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557972, 34.077473, 39.944771>,  <35.167084, 33.759007, 39.822952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557972, 34.077473, 39.944771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847546, 34.353405, 39.941795>,  <35.021290, 34.518963, 39.940010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847546, 34.353405, 39.941795>,  <34.557972, 34.077473, 39.944771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847546, 34.353405, 39.941795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456786, 0.471230, -0.754512,
		-0.516979, 0.549615, 0.656244,
		0.723933, 0.689830, -0.007441,
		35.064724, 34.560352, 39.939564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176991, 34.779472, 39.856827>,  <34.557972, 34.077473, 39.944771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176991, 34.779472, 39.856827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564011, 34.815796, 39.762501>,  <34.796223, 34.837589, 39.705906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564011, 34.815796, 39.762501>,  <34.176991, 34.779472, 39.856827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564011, 34.815796, 39.762501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248204, 0.516671, -0.819418,
		0.047432, 0.851355, 0.522441,
		0.967546, 0.090805, -0.235817,
		34.854275, 34.843037, 39.691757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171436, 35.428875, 39.887836>,  <34.176991, 34.779472, 39.856827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171436, 35.428875, 39.887836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491970, 35.309322, 39.680557>,  <34.684292, 35.237591, 39.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491970, 35.309322, 39.680557>,  <34.171436, 35.428875, 39.887836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491970, 35.309322, 39.680557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238082, 0.635340, -0.734616,
		0.548799, 0.712047, 0.437960,
		0.801334, -0.298886, -0.518199,
		34.732368, 35.219658, 39.525097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499050, 36.067688, 39.649845>,  <34.171436, 35.428875, 39.887836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499050, 36.067688, 39.649845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606056, 35.767822, 39.407707>,  <34.670261, 35.587902, 39.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606056, 35.767822, 39.407707>,  <34.499050, 36.067688, 39.649845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606056, 35.767822, 39.407707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162468, 0.584150, -0.795219,
		0.949758, 0.311082, 0.034472,
		0.267515, -0.749664, -0.605342,
		34.686310, 35.542923, 39.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648113, 36.389370, 38.972923>,  <34.499050, 36.067688, 39.649845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648113, 36.389370, 38.972923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587193, 36.000195, 38.903408>,  <34.550640, 35.766689, 38.861698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587193, 36.000195, 38.903408>,  <34.648113, 36.389370, 38.972923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587193, 36.000195, 38.903408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433043, 0.223754, -0.873160,
		0.888414, -0.057723, -0.455400,
		-0.152299, -0.972935, -0.173789,
		34.541504, 35.708313, 38.851273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029903, 36.254368, 38.431377>,  <34.648113, 36.389370, 38.972923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029903, 36.254368, 38.431377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735634, 35.983952, 38.448139>,  <34.559074, 35.821701, 38.458195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735634, 35.983952, 38.448139>,  <35.029903, 36.254368, 38.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735634, 35.983952, 38.448139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283170, 0.250767, -0.925706,
		0.615308, -0.692880, -0.375916,
		-0.735670, -0.676042, 0.041904,
		34.514935, 35.781139, 38.460709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066193, 35.750763, 37.853985>,  <35.029903, 36.254368, 38.431377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066193, 35.750763, 37.853985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682724, 35.723873, 37.964573>,  <34.452644, 35.707741, 38.030926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682724, 35.723873, 37.964573>,  <35.066193, 35.750763, 37.853985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682724, 35.723873, 37.964573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284377, 0.257671, -0.923437,
		-0.009166, -0.963892, -0.266137,
		-0.958669, -0.067219, 0.276470,
		34.395123, 35.703709, 38.047512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692524, 35.312710, 37.438244>,  <35.066193, 35.750763, 37.853985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692524, 35.312710, 37.438244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414658, 35.576591, 37.552948>,  <34.247940, 35.734921, 37.621769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414658, 35.576591, 37.552948>,  <34.692524, 35.312710, 37.438244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414658, 35.576591, 37.552948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264419, 0.136548, -0.954692,
		-0.668974, -0.739013, 0.079584,
		-0.694663, 0.659708, 0.286756,
		34.206257, 35.774506, 37.638973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365395, 35.068077, 37.744049>,  <34.692524, 35.312710, 37.438244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365395, 35.068077, 37.744049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689610, 35.210762, 37.558243>,  <35.884140, 35.296375, 37.446758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689610, 35.210762, 37.558243>,  <35.365395, 35.068077, 37.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689610, 35.210762, 37.558243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563346, -0.691786, 0.451745,
		-0.160201, -0.627842, -0.761676,
		0.810542, 0.356716, -0.464517,
		35.932774, 35.317776, 37.418888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744469, 34.458023, 37.562546>,  <35.365395, 35.068077, 37.744049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744469, 34.458023, 37.562546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002804, 34.763390, 37.558720>,  <36.157803, 34.946609, 37.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002804, 34.763390, 37.558720>,  <35.744469, 34.458023, 37.562546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002804, 34.763390, 37.558720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697114, -0.584543, 0.415141,
		0.311333, -0.274782, -0.909707,
		0.645836, 0.763416, -0.009567,
		36.196556, 34.992413, 37.555851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344761, 34.205498, 37.193066>,  <35.744469, 34.458023, 37.562546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344761, 34.205498, 37.193066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462933, 34.501656, 37.434570>,  <36.533836, 34.679352, 37.579475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462933, 34.501656, 37.434570>,  <36.344761, 34.205498, 37.193066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462933, 34.501656, 37.434570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744029, -0.574736, 0.340733,
		0.599283, 0.348556, -0.720672,
		0.295432, 0.740397, 0.603766,
		36.551563, 34.723774, 37.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133347, 34.370453, 37.104748>,  <36.344761, 34.205498, 37.193066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133347, 34.370453, 37.104748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012337, 34.494839, 37.465145>,  <36.939732, 34.569469, 37.681381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012337, 34.494839, 37.465145>,  <37.133347, 34.370453, 37.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012337, 34.494839, 37.465145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737648, -0.522256, 0.427929,
		0.603619, 0.794071, -0.071390,
		-0.302522, 0.310966, 0.900989,
		36.921581, 34.588127, 37.735443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753765, 34.216343, 37.460373>,  <37.133347, 34.370453, 37.104748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753765, 34.216343, 37.460373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477940, 34.282196, 37.742477>,  <37.312447, 34.321709, 37.911739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477940, 34.282196, 37.742477>,  <37.753765, 34.216343, 37.460373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477940, 34.282196, 37.742477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559414, -0.497390, 0.663068,
		0.459957, 0.851762, 0.250881,
		-0.689562, 0.164636, 0.705265,
		37.271072, 34.331589, 37.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176613, 34.277672, 38.074429>,  <37.753765, 34.216343, 37.460373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176613, 34.277672, 38.074429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806404, 34.185181, 38.194393>,  <37.584278, 34.129684, 38.266373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806404, 34.185181, 38.194393>,  <38.176613, 34.277672, 38.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806404, 34.185181, 38.194393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376619, -0.479071, 0.792874,
		-0.039660, 0.846772, 0.530476,
		-0.925519, -0.231232, 0.299910,
		37.528748, 34.115810, 38.284367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011826, 34.591251, 38.789356>,  <38.176613, 34.277672, 38.074429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011826, 34.591251, 38.789356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796051, 34.262180, 38.717556>,  <37.666588, 34.064739, 38.674477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796051, 34.262180, 38.717556>,  <38.011826, 34.591251, 38.789356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796051, 34.262180, 38.717556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440273, -0.457283, 0.772691,
		-0.717754, 0.337788, 0.608875,
		-0.539434, -0.822673, -0.179498,
		37.634220, 34.015377, 38.663708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708187, 34.483654, 39.436489>,  <38.011826, 34.591251, 38.789356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708187, 34.483654, 39.436489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649498, 34.151413, 39.221615>,  <37.614285, 33.952068, 39.092690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649498, 34.151413, 39.221615>,  <37.708187, 34.483654, 39.436489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649498, 34.151413, 39.221615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428729, -0.542799, 0.722191,
		-0.891439, -0.124344, 0.435747,
		-0.146723, -0.830606, -0.537182,
		37.605480, 33.902229, 39.060459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498138, 33.985703, 39.913258>,  <37.708187, 34.483654, 39.436489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498138, 33.985703, 39.913258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617107, 33.747730, 39.614567>,  <37.688488, 33.604946, 39.435352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617107, 33.747730, 39.614567>,  <37.498138, 33.985703, 39.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617107, 33.747730, 39.614567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360805, -0.654080, 0.664830,
		-0.883946, -0.467157, 0.020117,
		0.297422, -0.594932, -0.746724,
		37.706333, 33.569252, 39.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301411, 33.325550, 40.114548>,  <37.498138, 33.985703, 39.913258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301411, 33.325550, 40.114548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609932, 33.289635, 39.862507>,  <37.795044, 33.268085, 39.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609932, 33.289635, 39.862507>,  <37.301411, 33.325550, 40.114548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609932, 33.289635, 39.862507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352825, -0.763647, 0.540702,
		-0.529726, -0.639361, -0.557322,
		0.771301, -0.089786, -0.630106,
		37.841324, 33.262699, 39.673473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377811, 32.535683, 40.007603>,  <37.301411, 33.325550, 40.114548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377811, 32.535683, 40.007603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714699, 32.713913, 39.886189>,  <37.916832, 32.820850, 39.813339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714699, 32.713913, 39.886189>,  <37.377811, 32.535683, 40.007603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714699, 32.713913, 39.886189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516906, -0.507318, 0.689519,
		0.153246, -0.737622, -0.657593,
		0.842214, 0.445580, -0.303537,
		37.967361, 32.847588, 39.795128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896843, 32.026070, 40.030964>,  <37.377811, 32.535683, 40.007603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896843, 32.026070, 40.030964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129921, 32.350967, 40.020199>,  <38.269768, 32.545906, 40.013741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129921, 32.350967, 40.020199>,  <37.896843, 32.026070, 40.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129921, 32.350967, 40.020199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662158, -0.455297, 0.595190,
		0.471186, -0.364636, -0.803134,
		0.582692, 0.812247, -0.026917,
		38.304729, 32.594643, 40.012123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615353, 31.806816, 39.865101>,  <37.896843, 32.026070, 40.030964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615353, 31.806816, 39.865101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631603, 32.162262, 40.047844>,  <38.641354, 32.375530, 40.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631603, 32.162262, 40.047844>,  <38.615353, 31.806816, 39.865101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631603, 32.162262, 40.047844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638920, -0.374642, 0.671881,
		0.768200, 0.264596, -0.582974,
		0.040630, 0.888612, 0.456856,
		38.643791, 32.428844, 40.184902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299660, 31.943928, 39.940784>,  <38.615353, 31.806816, 39.865101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299660, 31.943928, 39.940784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117260, 32.168858, 40.216713>,  <39.007820, 32.303814, 40.382271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117260, 32.168858, 40.216713>,  <39.299660, 31.943928, 39.940784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117260, 32.168858, 40.216713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602974, -0.374885, 0.704190,
		0.654587, 0.737057, -0.168119,
		-0.456003, 0.562325, 0.689821,
		38.980457, 32.337555, 40.423660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788208, 31.967680, 40.371895>,  <39.299660, 31.943928, 39.940784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788208, 31.967680, 40.371895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507053, 32.138020, 40.599792>,  <39.338360, 32.240223, 40.736530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507053, 32.138020, 40.599792>,  <39.788208, 31.967680, 40.371895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507053, 32.138020, 40.599792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630140, 0.001225, 0.776481,
		0.329964, 0.904794, -0.269204,
		-0.702885, 0.425847, 0.569743,
		39.296188, 32.265774, 40.770714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253555, 32.356209, 40.827995>,  <39.788208, 31.967680, 40.371895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253555, 32.356209, 40.827995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905899, 32.350468, 41.025742>,  <39.697308, 32.347023, 41.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905899, 32.350468, 41.025742>,  <40.253555, 32.356209, 40.827995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905899, 32.350468, 41.025742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492612, -0.114016, 0.862748,
		0.043982, 0.993375, 0.106165,
		-0.869137, -0.014353, 0.494364,
		39.645157, 32.346161, 41.174049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291889, 32.829811, 41.460152>,  <40.253555, 32.356209, 40.827995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291889, 32.829811, 41.460152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996788, 32.564426, 41.510017>,  <39.819729, 32.405197, 41.539936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996788, 32.564426, 41.510017>,  <40.291889, 32.829811, 41.460152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996788, 32.564426, 41.510017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345026, -0.211855, 0.914371,
		-0.580241, 0.717590, 0.385208,
		-0.737752, -0.663462, 0.124660,
		39.775463, 32.365387, 41.547417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794426, 33.023010, 41.908085>,  <40.291889, 32.829811, 41.460152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794426, 33.023010, 41.908085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783009, 32.624588, 41.941669>,  <39.776157, 32.385532, 41.961819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783009, 32.624588, 41.941669>,  <39.794426, 33.023010, 41.908085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783009, 32.624588, 41.941669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006082, 0.084168, 0.996433,
		-0.999574, 0.027935, -0.008461,
		-0.028548, -0.996060, 0.083963,
		39.774445, 32.325771, 41.966858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461315, 32.950039, 42.521984>,  <39.794426, 33.023010, 41.908085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461315, 32.950039, 42.521984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610489, 32.584229, 42.459290>,  <39.699993, 32.364742, 42.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610489, 32.584229, 42.459290>,  <39.461315, 32.950039, 42.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610489, 32.584229, 42.459290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037208, -0.154050, 0.987362,
		-0.927112, -0.374051, -0.023423,
		0.372932, -0.914524, -0.156740,
		39.722370, 32.309872, 42.412266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108509, 32.508842, 42.958412>,  <39.461315, 32.950039, 42.521984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108509, 32.508842, 42.958412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455173, 32.325352, 42.879955>,  <39.663170, 32.215256, 42.832882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455173, 32.325352, 42.879955>,  <39.108509, 32.508842, 42.958412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455173, 32.325352, 42.879955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221042, 0.000613, 0.975264,
		-0.447262, -0.888576, 0.101929,
		0.866658, -0.458729, -0.196139,
		39.715172, 32.187733, 42.821114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963463, 31.860250, 43.331280>,  <39.108509, 32.508842, 42.958412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963463, 31.860250, 43.331280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353729, 31.913507, 43.261608>,  <39.587891, 31.945461, 43.219803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353729, 31.913507, 43.261608>,  <38.963463, 31.860250, 43.331280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353729, 31.913507, 43.261608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186846, -0.089330, 0.978319,
		0.114698, -0.987063, -0.112034,
		0.975671, 0.133144, -0.174183,
		39.646431, 31.953451, 43.209354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243420, 31.488432, 43.877544>,  <38.963463, 31.860250, 43.331280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243420, 31.488432, 43.877544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542511, 31.724058, 43.754967>,  <39.721966, 31.865433, 43.681419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542511, 31.724058, 43.754967>,  <39.243420, 31.488432, 43.877544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542511, 31.724058, 43.754967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354998, 0.035366, 0.934198,
		0.561140, -0.807312, -0.182673,
		0.747729, 0.589064, -0.306440,
		39.766830, 31.900778, 43.663036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814129, 31.212711, 44.144054>,  <39.243420, 31.488432, 43.877544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814129, 31.212711, 44.144054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920925, 31.589037, 44.060543>,  <39.985004, 31.814833, 44.010437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920925, 31.589037, 44.060543>,  <39.814129, 31.212711, 44.144054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920925, 31.589037, 44.060543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535438, 0.035305, 0.843837,
		0.801262, -0.337085, -0.494320,
		0.266993, 0.940812, -0.208776,
		40.001022, 31.871281, 43.997910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452763, 31.273762, 44.319393>,  <39.814129, 31.212711, 44.144054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452763, 31.273762, 44.319393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342194, 31.658175, 44.318279>,  <40.275852, 31.888823, 44.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342194, 31.658175, 44.318279>,  <40.452763, 31.273762, 44.319393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342194, 31.658175, 44.318279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421657, 0.123887, 0.898252,
		0.863595, 0.247122, -0.439471,
		-0.276423, 0.961032, -0.002788,
		40.259266, 31.946484, 44.317444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072269, 31.714645, 44.431427>,  <40.452763, 31.273762, 44.319393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072269, 31.714645, 44.431427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738899, 31.878784, 44.579491>,  <40.538876, 31.977268, 44.668327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738899, 31.878784, 44.579491>,  <41.072269, 31.714645, 44.431427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738899, 31.878784, 44.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466018, 0.161841, 0.869848,
		0.297035, 0.897453, -0.326112,
		-0.833425, 0.410349, 0.370157,
		40.488873, 32.001888, 44.690536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262249, 32.159286, 44.957928>,  <41.072269, 31.714645, 44.431427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262249, 32.159286, 44.957928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869244, 32.190109, 45.025734>,  <40.633442, 32.208603, 45.066418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869244, 32.190109, 45.025734>,  <41.262249, 32.159286, 44.957928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869244, 32.190109, 45.025734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179485, 0.149460, 0.972341,
		0.049588, 0.985761, -0.160676,
		-0.982510, 0.077056, 0.169518,
		40.574490, 32.213226, 45.076588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089684, 32.774422, 45.364037>,  <41.262249, 32.159286, 44.957928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089684, 32.774422, 45.364037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769405, 32.547222, 45.440205>,  <40.577240, 32.410904, 45.485905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769405, 32.547222, 45.440205>,  <41.089684, 32.774422, 45.364037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769405, 32.547222, 45.440205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049859, 0.379943, 0.923665,
		-0.596991, 0.730082, -0.332539,
		-0.800697, -0.568000, 0.190422,
		40.529198, 32.376823, 45.497330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548908, 33.209183, 45.753124>,  <41.089684, 32.774422, 45.364037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548908, 33.209183, 45.753124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464577, 32.827793, 45.839317>,  <40.413979, 32.598957, 45.891033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464577, 32.827793, 45.839317>,  <40.548908, 33.209183, 45.753124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464577, 32.827793, 45.839317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056201, 0.231900, 0.971115,
		-0.975906, 0.192627, -0.102478,
		-0.210828, -0.953476, 0.215487,
		40.401329, 32.541752, 45.903965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030586, 33.214035, 46.223110>,  <40.548908, 33.209183, 45.753124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030586, 33.214035, 46.223110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194611, 32.854050, 46.282326>,  <40.293026, 32.638058, 46.317856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194611, 32.854050, 46.282326>,  <40.030586, 33.214035, 46.223110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194611, 32.854050, 46.282326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020445, 0.153198, 0.987984,
		-0.911830, -0.408157, 0.044420,
		0.410058, -0.899965, 0.148035,
		40.317627, 32.584061, 46.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712170, 32.944988, 46.798374>,  <40.030586, 33.214035, 46.223110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712170, 32.944988, 46.798374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054150, 32.739098, 46.772690>,  <40.259338, 32.615562, 46.757278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054150, 32.739098, 46.772690>,  <39.712170, 32.944988, 46.798374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054150, 32.739098, 46.772690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071052, -0.006407, 0.997452,
		-0.513824, -0.857332, 0.031095,
		0.854949, -0.514724, -0.064207,
		40.310635, 32.584682, 46.753429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696014, 32.397243, 47.366909>,  <39.712170, 32.944988, 46.798374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696014, 32.397243, 47.366909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090229, 32.413719, 47.301167>,  <40.326759, 32.423607, 47.261723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090229, 32.413719, 47.301167>,  <39.696014, 32.397243, 47.366909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090229, 32.413719, 47.301167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165533, -0.026968, 0.985835,
		0.036181, -0.998787, -0.033398,
		0.985541, 0.041197, -0.164357,
		40.385891, 32.426079, 47.251858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016464, 31.857443, 47.686153>,  <39.696014, 32.397243, 47.366909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016464, 31.857443, 47.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313808, 32.121059, 47.640423>,  <40.492214, 32.279228, 47.612984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313808, 32.121059, 47.640423>,  <40.016464, 31.857443, 47.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313808, 32.121059, 47.640423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096343, 0.063642, 0.993312,
		0.661912, -0.749407, -0.016185,
		0.743365, 0.659044, -0.114326,
		40.536819, 32.318771, 47.606125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510891, 31.728642, 48.303604>,  <40.016464, 31.857443, 47.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510891, 31.728642, 48.303604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628059, 32.088764, 48.174828>,  <40.698360, 32.304836, 48.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628059, 32.088764, 48.174828>,  <40.510891, 31.728642, 48.303604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628059, 32.088764, 48.174828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264079, 0.247439, 0.932221,
		0.918946, -0.358081, -0.165273,
		0.292916, 0.900306, -0.321945,
		40.715935, 32.358856, 48.078243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145325, 31.874371, 48.660065>,  <40.510891, 31.728642, 48.303604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145325, 31.874371, 48.660065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003422, 32.220245, 48.517818>,  <40.918278, 32.427769, 48.432472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003422, 32.220245, 48.517818>,  <41.145325, 31.874371, 48.660065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003422, 32.220245, 48.517818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207393, 0.443658, 0.871869,
		0.911664, 0.235554, -0.336723,
		-0.354762, 0.864686, -0.355615,
		40.896992, 32.479652, 48.411133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580433, 32.381378, 48.892090>,  <41.145325, 31.874371, 48.660065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580433, 32.381378, 48.892090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247700, 32.579910, 48.792721>,  <41.048061, 32.699028, 48.733101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247700, 32.579910, 48.792721>,  <41.580433, 32.381378, 48.892090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247700, 32.579910, 48.792721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000744, 0.446590, 0.894739,
		0.555029, 0.744456, -0.371118,
		-0.831831, 0.496329, -0.248424,
		40.998150, 32.728809, 48.718193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706932, 33.105064, 49.173901>,  <41.580433, 32.381378, 48.892090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706932, 33.105064, 49.173901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312283, 33.048309, 49.141792>,  <41.075493, 33.014256, 49.122528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312283, 33.048309, 49.141792>,  <41.706932, 33.105064, 49.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312283, 33.048309, 49.141792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132485, 0.410966, 0.901973,
		-0.094990, 0.900542, -0.424266,
		-0.986623, -0.141887, -0.080270,
		41.016296, 33.005745, 49.117710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516857, 33.631172, 49.470039>,  <41.706932, 33.105064, 49.173901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516857, 33.631172, 49.470039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184593, 33.408470, 49.472206>,  <40.985237, 33.274849, 49.473507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184593, 33.408470, 49.472206>,  <41.516857, 33.631172, 49.470039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184593, 33.408470, 49.472206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238437, 0.364489, 0.900164,
		-0.503146, 0.746437, -0.435518,
		-0.830658, -0.556757, 0.005413,
		40.935394, 33.241444, 49.473831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931229, 33.920589, 49.615875>,  <41.516857, 33.631172, 49.470039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931229, 33.920589, 49.615875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893627, 33.548317, 49.757290>,  <40.871067, 33.324951, 49.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893627, 33.548317, 49.757290>,  <40.931229, 33.920589, 49.615875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893627, 33.548317, 49.757290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055117, 0.359430, 0.931543,
		-0.994045, 0.068084, -0.085085,
		-0.094005, -0.930685, 0.353537,
		40.865425, 33.269112, 49.863350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362461, 34.269466, 50.156742>,  <40.931229, 33.920589, 49.615875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362461, 34.269466, 50.156742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711529, 34.462280, 50.125500>,  <41.920967, 34.577969, 50.106754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711529, 34.462280, 50.125500>,  <41.362461, 34.269466, 50.156742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711529, 34.462280, 50.125500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240911, 0.285860, -0.927495,
		-0.424756, 0.828208, 0.365587,
		0.872665, 0.482033, -0.078104,
		41.973328, 34.606892, 50.102070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259911, 34.896687, 49.820610>,  <41.362461, 34.269466, 50.156742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259911, 34.896687, 49.820610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646320, 34.811234, 49.762436>,  <41.878166, 34.759960, 49.727531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646320, 34.811234, 49.762436>,  <41.259911, 34.896687, 49.820610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646320, 34.811234, 49.762436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092034, 0.241497, -0.966027,
		0.241497, 0.946595, 0.213631,
		0.966027, -0.213631, -0.145439,
		41.936127, 34.747143, 49.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649620, 35.478516, 49.443459>,  <41.259911, 34.896687, 49.820610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649620, 35.478516, 49.443459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851990, 35.138885, 49.382633>,  <41.973412, 34.935108, 49.346138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851990, 35.138885, 49.382633>,  <41.649620, 35.478516, 49.443459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851990, 35.138885, 49.382633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018145, 0.165776, -0.985997,
		0.862389, 0.501595, 0.068463,
		0.505920, -0.849071, -0.152065,
		42.003765, 34.884163, 49.337013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189178, 35.776791, 49.123566>,  <41.649620, 35.478516, 49.443459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189178, 35.776791, 49.123566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231922, 35.386345, 49.047905>,  <42.257568, 35.152077, 49.002506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231922, 35.386345, 49.047905>,  <42.189178, 35.776791, 49.123566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231922, 35.386345, 49.047905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116463, 0.201223, -0.972597,
		0.987429, 0.081904, 0.135184,
		0.106861, -0.976115, -0.189155,
		42.263981, 35.093510, 48.991158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523956, 35.748318, 48.568695>,  <42.189178, 35.776791, 49.123566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523956, 35.748318, 48.568695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372375, 35.378193, 48.563267>,  <42.281425, 35.156116, 48.560009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372375, 35.378193, 48.563267>,  <42.523956, 35.748318, 48.568695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372375, 35.378193, 48.563267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065101, 0.041289, -0.997024,
		0.923122, -0.376945, -0.075885,
		-0.378956, -0.925315, -0.013575,
		42.258690, 35.100597, 48.559193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764359, 35.539970, 48.009995>,  <42.523956, 35.748318, 48.568695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764359, 35.539970, 48.009995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456429, 35.292767, 48.073788>,  <42.271671, 35.144444, 48.112064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456429, 35.292767, 48.073788>,  <42.764359, 35.539970, 48.009995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456429, 35.292767, 48.073788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139697, -0.080669, -0.986903,
		0.622784, -0.782019, -0.024234,
		-0.769822, -0.618013, 0.159486,
		42.225483, 35.107365, 48.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901451, 34.964684, 47.473919>,  <42.764359, 35.539970, 48.009995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901451, 34.964684, 47.473919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515648, 34.946148, 47.577896>,  <42.284164, 34.935028, 47.640282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515648, 34.946148, 47.577896>,  <42.901451, 34.964684, 47.473919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515648, 34.946148, 47.577896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255394, -0.086107, -0.962995,
		0.067010, -0.995207, 0.071216,
		-0.964512, -0.046342, 0.259940,
		42.226295, 34.932247, 47.655876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613800, 34.457230, 46.985435>,  <42.901451, 34.964684, 47.473919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613800, 34.457230, 46.985435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291683, 34.601425, 47.173714>,  <42.098412, 34.687943, 47.286682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291683, 34.601425, 47.173714>,  <42.613800, 34.457230, 46.985435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291683, 34.601425, 47.173714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557006, -0.188039, -0.808941,
		-0.203129, -0.913603, 0.352234,
		-0.805285, 0.360515, 0.470686,
		42.050095, 34.709572, 47.314922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147743, 33.930862, 47.038998>,  <42.613800, 34.457230, 46.985435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147743, 33.930862, 47.038998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963760, 34.285896, 47.049141>,  <41.853371, 34.498917, 47.055225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963760, 34.285896, 47.049141>,  <42.147743, 33.930862, 47.038998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963760, 34.285896, 47.049141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445578, -0.206015, -0.871216,
		-0.768051, -0.412017, 0.490244,
		-0.459954, 0.887581, 0.025356,
		41.825775, 34.552170, 47.056747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560146, 33.772980, 46.870609>,  <42.147743, 33.930862, 47.038998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560146, 33.772980, 46.870609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509983, 34.164776, 46.807522>,  <41.479885, 34.399853, 46.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509983, 34.164776, 46.807522>,  <41.560146, 33.772980, 46.870609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509983, 34.164776, 46.807522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471293, -0.198707, -0.859302,
		-0.873016, -0.033428, 0.486544,
		-0.125404, 0.979489, -0.157720,
		41.472363, 34.458622, 46.760204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863255, 33.845028, 46.623756>,  <41.560146, 33.772980, 46.870609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863255, 33.845028, 46.623756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061371, 34.177979, 46.524292>,  <41.180241, 34.377750, 46.464611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061371, 34.177979, 46.524292>,  <40.863255, 33.845028, 46.623756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061371, 34.177979, 46.524292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488609, 0.030247, -0.871978,
		-0.718293, 0.553385, 0.421687,
		0.495295, 0.832376, -0.248663,
		41.209961, 34.427692, 46.449692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411060, 34.286251, 46.371101>,  <40.863255, 33.845028, 46.623756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411060, 34.286251, 46.371101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749977, 34.429604, 46.214302>,  <40.953327, 34.515614, 46.120224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749977, 34.429604, 46.214302>,  <40.411060, 34.286251, 46.371101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749977, 34.429604, 46.214302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404178, -0.043762, -0.913633,
		-0.344584, 0.932549, 0.107771,
		0.847291, 0.358382, -0.391995,
		41.004166, 34.537117, 46.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276371, 34.714005, 45.820915>,  <40.411060, 34.286251, 46.371101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276371, 34.714005, 45.820915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661968, 34.632702, 45.752319>,  <40.893326, 34.583920, 45.711163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661968, 34.632702, 45.752319>,  <40.276371, 34.714005, 45.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661968, 34.632702, 45.752319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162454, 0.060471, -0.984861,
		0.210549, 0.977257, 0.025274,
		0.963991, -0.203256, -0.171491,
		40.951164, 34.571724, 45.700871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678970, 35.244530, 45.346889>,  <40.276371, 34.714005, 45.820915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678970, 35.244530, 45.346889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889915, 34.904980, 45.332527>,  <41.016483, 34.701248, 45.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889915, 34.904980, 45.332527>,  <40.678970, 35.244530, 45.346889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889915, 34.904980, 45.332527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005802, 0.038665, -0.999235,
		0.849618, 0.527171, 0.015465,
		0.527366, -0.848879, -0.035909,
		41.048126, 34.650314, 45.321754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390316, 35.323677, 45.031677>,  <40.678970, 35.244530, 45.346889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390316, 35.323677, 45.031677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229931, 34.967163, 44.946983>,  <41.133701, 34.753254, 44.896168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229931, 34.967163, 44.946983>,  <41.390316, 35.323677, 45.031677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229931, 34.967163, 44.946983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002897, 0.229897, -0.973211,
		0.916091, -0.390833, -0.089598,
		-0.400961, -0.891290, -0.211739,
		41.109642, 34.699776, 44.883461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343288, 35.322731, 44.373074>,  <41.390316, 35.323677, 45.031677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343288, 35.322731, 44.373074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166370, 34.970104, 44.439060>,  <41.060219, 34.758530, 44.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166370, 34.970104, 44.439060>,  <41.343288, 35.322731, 44.373074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166370, 34.970104, 44.439060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252767, -0.053952, -0.966022,
		0.860512, -0.468969, -0.198968,
		-0.442299, -0.881565, 0.164966,
		41.033680, 34.705635, 44.488548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689243, 34.836163, 44.028961>,  <41.343288, 35.322731, 44.373074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689243, 34.836163, 44.028961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310871, 34.714500, 44.074055>,  <41.083847, 34.641502, 44.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310871, 34.714500, 44.074055>,  <41.689243, 34.836163, 44.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310871, 34.714500, 44.074055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152810, 0.111283, -0.981970,
		0.286124, -0.946101, -0.151743,
		-0.945930, -0.304153, 0.112733,
		41.027092, 34.623253, 44.107876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499447, 34.545784, 43.456722>,  <41.689243, 34.836163, 44.028961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499447, 34.545784, 43.456722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130535, 34.598560, 43.602047>,  <40.909187, 34.630226, 43.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130535, 34.598560, 43.602047>,  <41.499447, 34.545784, 43.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130535, 34.598560, 43.602047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361784, 0.036225, -0.931558,
		-0.136068, -0.990596, 0.014323,
		-0.922279, 0.131937, 0.363311,
		40.853851, 34.638142, 43.711040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099064, 34.038441, 43.175137>,  <41.499447, 34.545784, 43.456722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099064, 34.038441, 43.175137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857967, 34.346546, 43.258469>,  <40.713310, 34.531410, 43.308468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857967, 34.346546, 43.258469>,  <41.099064, 34.038441, 43.175137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857967, 34.346546, 43.258469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329244, -0.002247, -0.944242,
		-0.726844, -0.637727, 0.254957,
		-0.602741, 0.770260, 0.208335,
		40.677147, 34.577625, 43.320969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445568, 33.764179, 42.911266>,  <41.099064, 34.038441, 43.175137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445568, 33.764179, 42.911266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431664, 34.160599, 42.962822>,  <40.423321, 34.398449, 42.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431664, 34.160599, 42.962822>,  <40.445568, 33.764179, 42.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431664, 34.160599, 42.962822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376689, 0.106462, -0.920202,
		-0.925687, -0.080542, 0.369617,
		-0.034765, 0.991049, 0.128890,
		40.421234, 34.457912, 43.001488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869141, 33.922554, 42.657734>,  <40.445568, 33.764179, 42.911266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869141, 33.922554, 42.657734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062187, 34.272789, 42.649422>,  <40.178013, 34.482929, 42.644432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062187, 34.272789, 42.649422>,  <39.869141, 33.922554, 42.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062187, 34.272789, 42.649422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335339, 0.162808, -0.927923,
		-0.809093, 0.454798, 0.372192,
		0.482613, 0.875587, -0.020785,
		40.206970, 34.535465, 42.643185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392818, 34.323383, 42.288071>,  <39.869141, 33.922554, 42.657734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392818, 34.323383, 42.288071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741760, 34.517803, 42.267059>,  <39.951126, 34.634457, 42.254452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741760, 34.517803, 42.267059>,  <39.392818, 34.323383, 42.288071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741760, 34.517803, 42.267059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145856, 0.156196, -0.976898,
		-0.466616, 0.859859, 0.207151,
		0.872350, 0.486051, -0.052532,
		40.003464, 34.663620, 42.251301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187534, 34.999710, 42.066425>,  <39.392818, 34.323383, 42.288071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187534, 34.999710, 42.066425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578011, 34.947784, 41.996918>,  <39.812298, 34.916630, 41.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578011, 34.947784, 41.996918>,  <39.187534, 34.999710, 42.066425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578011, 34.947784, 41.996918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123667, 0.325074, -0.937568,
		0.178193, 0.936737, 0.301282,
		0.976193, -0.129810, -0.173769,
		39.870869, 34.908840, 41.944786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228245, 35.536957, 41.544556>,  <39.187534, 34.999710, 42.066425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228245, 35.536957, 41.544556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560268, 35.314735, 41.525120>,  <39.759483, 35.181404, 41.513458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560268, 35.314735, 41.525120>,  <39.228245, 35.536957, 41.544556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560268, 35.314735, 41.525120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127060, 0.273246, -0.953516,
		0.543003, 0.785303, 0.297400,
		0.830062, -0.555549, -0.048593,
		39.809288, 35.148071, 41.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642151, 35.923595, 41.146172>,  <39.228245, 35.536957, 41.544556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642151, 35.923595, 41.146172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775993, 35.546711, 41.152737>,  <39.856300, 35.320580, 41.156673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775993, 35.546711, 41.152737>,  <39.642151, 35.923595, 41.146172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775993, 35.546711, 41.152737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029377, -0.006977, -0.999544,
		0.941900, 0.334935, 0.025345,
		0.334606, -0.942215, 0.016410,
		39.876373, 35.264046, 41.157661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217571, 35.900238, 40.647682>,  <39.642151, 35.923595, 41.146172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217571, 35.900238, 40.647682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091042, 35.522526, 40.684086>,  <40.015125, 35.295898, 40.705929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091042, 35.522526, 40.684086>,  <40.217571, 35.900238, 40.647682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091042, 35.522526, 40.684086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030746, -0.085681, -0.995848,
		0.948154, -0.317806, -0.001930,
		-0.316321, -0.944276, 0.091010,
		39.996143, 35.239243, 40.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744587, 35.552418, 40.302341>,  <40.217571, 35.900238, 40.647682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744587, 35.552418, 40.302341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435177, 35.298992, 40.308773>,  <40.249531, 35.146938, 40.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435177, 35.298992, 40.308773>,  <40.744587, 35.552418, 40.302341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435177, 35.298992, 40.308773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244795, -0.322077, -0.914518,
		0.584583, -0.703465, 0.404227,
		-0.773524, -0.633564, 0.016076,
		40.203121, 35.108925, 40.313595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993023, 34.920750, 39.968384>,  <40.744587, 35.552418, 40.302341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993023, 34.920750, 39.968384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600403, 34.849201, 39.941338>,  <40.364830, 34.806274, 39.925110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600403, 34.849201, 39.941338>,  <40.993023, 34.920750, 39.968384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600403, 34.849201, 39.941338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111722, -0.249479, -0.961914,
		0.155187, -0.951718, 0.264859,
		-0.981547, -0.178867, -0.067612,
		40.305939, 34.795540, 39.921055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832989, 34.156281, 39.776104>,  <40.993023, 34.920750, 39.968384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832989, 34.156281, 39.776104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551567, 34.410488, 39.648907>,  <40.382713, 34.563015, 39.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551567, 34.410488, 39.648907>,  <40.832989, 34.156281, 39.776104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551567, 34.410488, 39.648907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251034, -0.196366, -0.947851,
		-0.664825, -0.746693, -0.021384,
		-0.703555, 0.635523, -0.317994,
		40.340500, 34.601147, 39.553509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514694, 33.900162, 39.190670>,  <40.832989, 34.156281, 39.776104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514694, 33.900162, 39.190670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396114, 34.280796, 39.158180>,  <40.324966, 34.509178, 39.138687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396114, 34.280796, 39.158180>,  <40.514694, 33.900162, 39.190670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396114, 34.280796, 39.158180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185170, -0.026168, -0.982358,
		-0.936926, -0.306259, -0.168448,
		-0.296448, 0.951588, -0.081228,
		40.307178, 34.566273, 39.133812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160400, 33.944023, 38.483074>,  <40.514694, 33.900162, 39.190670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160400, 33.944023, 38.483074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226486, 34.328011, 38.573547>,  <40.266136, 34.558403, 38.627831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226486, 34.328011, 38.573547>,  <40.160400, 33.944023, 38.483074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226486, 34.328011, 38.573547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319590, 0.164852, -0.933106,
		-0.933042, 0.226447, -0.279562,
		0.165212, 0.959972, 0.226184,
		40.276051, 34.616001, 38.641403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746296, 34.339355, 38.024837>,  <40.160400, 33.944023, 38.483074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746296, 34.339355, 38.024837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042809, 34.576862, 38.150021>,  <40.220715, 34.719368, 38.225132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042809, 34.576862, 38.150021>,  <39.746296, 34.339355, 38.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042809, 34.576862, 38.150021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199071, 0.250795, -0.947350,
		-0.640993, 0.764554, 0.067708,
		0.741282, 0.593767, 0.312958,
		40.265194, 34.754993, 38.243908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632294, 34.883270, 37.598133>,  <39.746296, 34.339355, 38.024837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632294, 34.883270, 37.598133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010334, 34.909298, 37.726227>,  <40.237160, 34.924915, 37.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010334, 34.909298, 37.726227>,  <39.632294, 34.883270, 37.598133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010334, 34.909298, 37.726227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255394, 0.464269, -0.848073,
		-0.203857, 0.883301, 0.422163,
		0.945101, 0.065067, 0.320234,
		40.293865, 34.928818, 37.822296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809261, 35.526138, 37.596664>,  <39.632294, 34.883270, 37.598133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809261, 35.526138, 37.596664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172215, 35.358604, 37.610695>,  <40.389988, 35.258083, 37.619114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172215, 35.358604, 37.610695>,  <39.809261, 35.526138, 37.596664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172215, 35.358604, 37.610695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264950, 0.505207, -0.821321,
		0.326276, 0.754548, 0.569387,
		0.907384, -0.418837, 0.035081,
		40.444431, 35.232952, 37.621220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269875, 36.082325, 37.420719>,  <39.809261, 35.526138, 37.596664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269875, 36.082325, 37.420719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481342, 35.745632, 37.376926>,  <40.608223, 35.543617, 37.350651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481342, 35.745632, 37.376926>,  <40.269875, 36.082325, 37.420719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481342, 35.745632, 37.376926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399056, 0.360301, -0.843171,
		0.749172, 0.402075, 0.526381,
		0.528673, -0.841736, -0.109477,
		40.639946, 35.493111, 37.344082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913216, 36.267994, 37.318645>,  <40.269875, 36.082325, 37.420719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913216, 36.267994, 37.318645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913769, 35.908432, 37.143391>,  <40.914101, 35.692696, 37.038239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913769, 35.908432, 37.143391>,  <40.913216, 36.267994, 37.318645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913769, 35.908432, 37.143391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245377, 0.425046, -0.871278,
		0.969427, -0.106305, 0.221159,
		0.001382, -0.898907, -0.438136,
		40.914185, 35.638760, 37.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403435, 36.285889, 36.789528>,  <40.913216, 36.267994, 37.318645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403435, 36.285889, 36.789528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180965, 35.963165, 36.709797>,  <41.047485, 35.769531, 36.661957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180965, 35.963165, 36.709797>,  <41.403435, 36.285889, 36.789528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180965, 35.963165, 36.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077192, 0.288959, -0.954224,
		0.827475, -0.515325, -0.222990,
		-0.556171, -0.806810, -0.199328,
		41.014114, 35.721123, 36.649998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604424, 36.110428, 36.179363>,  <41.403435, 36.285889, 36.789528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604424, 36.110428, 36.179363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250835, 35.924057, 36.194885>,  <41.038681, 35.812233, 36.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250835, 35.924057, 36.194885>,  <41.604424, 36.110428, 36.179363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250835, 35.924057, 36.194885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171085, 0.245111, -0.954280,
		0.435115, -0.850195, -0.296384,
		-0.883971, -0.465928, 0.038805,
		40.985645, 35.784279, 36.206528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671101, 35.577843, 35.583839>,  <41.604424, 36.110428, 36.179363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671101, 35.577843, 35.583839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288891, 35.652176, 35.675430>,  <41.059563, 35.696774, 35.730385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288891, 35.652176, 35.675430>,  <41.671101, 35.577843, 35.583839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288891, 35.652176, 35.675430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179345, 0.250190, -0.951441,
		-0.234094, -0.950196, -0.205736,
		-0.955529, 0.185829, 0.228981,
		41.002232, 35.707924, 35.744125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270149, 35.180271, 35.118496>,  <41.671101, 35.577843, 35.583839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270149, 35.180271, 35.118496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013954, 35.456314, 35.253265>,  <40.860237, 35.621941, 35.334129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013954, 35.456314, 35.253265>,  <41.270149, 35.180271, 35.118496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013954, 35.456314, 35.253265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187490, 0.284933, -0.940032,
		-0.744728, -0.665252, -0.053108,
		-0.640490, 0.690111, 0.336926,
		40.821808, 35.663349, 35.354343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538433, 35.055290, 34.765892>,  <41.270149, 35.180271, 35.118496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538433, 35.055290, 34.765892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634953, 35.436432, 34.839481>,  <40.692863, 35.665115, 34.883636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634953, 35.436432, 34.839481>,  <40.538433, 35.055290, 34.765892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634953, 35.436432, 34.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014525, 0.186011, -0.982440,
		-0.970342, 0.239735, 0.031044,
		0.241300, 0.952852, 0.183976,
		40.707344, 35.722286, 34.894672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185135, 35.418903, 34.324730>,  <40.538433, 35.055290, 34.765892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185135, 35.418903, 34.324730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435249, 35.704735, 34.450203>,  <40.585316, 35.876236, 34.525486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435249, 35.704735, 34.450203>,  <40.185135, 35.418903, 34.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435249, 35.704735, 34.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041815, 0.370697, -0.927812,
		-0.779278, 0.593261, 0.201910,
		0.625282, 0.714581, 0.313683,
		40.622833, 35.919109, 34.544308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006786, 35.888729, 33.845596>,  <40.185135, 35.418903, 34.324730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006786, 35.888729, 33.845596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355515, 35.966923, 34.025246>,  <40.564751, 36.013840, 34.133038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355515, 35.966923, 34.025246>,  <40.006786, 35.888729, 33.845596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355515, 35.966923, 34.025246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354406, 0.381184, -0.853871,
		-0.338119, 0.903595, 0.263043,
		0.871821, 0.195486, 0.449125,
		40.617062, 36.025570, 34.159985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244694, 36.629391, 33.852192>,  <40.006786, 35.888729, 33.845596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244694, 36.629391, 33.852192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546757, 36.378033, 33.777515>,  <40.727993, 36.227219, 33.732708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546757, 36.378033, 33.777515>,  <40.244694, 36.629391, 33.852192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546757, 36.378033, 33.777515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143487, 0.436333, -0.888271,
		0.639646, 0.643997, 0.419667,
		0.755158, -0.628396, -0.186693,
		40.773304, 36.189514, 33.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844315, 36.935009, 33.662273>,  <40.244694, 36.629391, 33.852192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844315, 36.935009, 33.662273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785713, 36.574215, 33.499817>,  <40.750553, 36.357738, 33.402344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785713, 36.574215, 33.499817>,  <40.844315, 36.935009, 33.662273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785713, 36.574215, 33.499817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034529, 0.405660, -0.913372,
		0.988608, -0.147833, -0.028284,
		-0.146501, -0.901990, -0.406143,
		40.741764, 36.303619, 33.377975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439308, 36.620979, 33.163464>,  <40.844315, 36.935009, 33.662273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439308, 36.620979, 33.163464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097939, 36.464592, 33.025589>,  <40.893116, 36.370758, 32.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097939, 36.464592, 33.025589>,  <41.439308, 36.620979, 33.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097939, 36.464592, 33.025589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211436, 0.344769, -0.914565,
		0.476406, -0.853391, -0.211568,
		-0.853424, -0.390971, -0.344688,
		40.841911, 36.347301, 32.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883995, 35.940651, 33.261982>,  <41.439308, 36.620979, 33.163464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883995, 35.940651, 33.261982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788818, 36.255310, 33.489864>,  <41.731712, 36.444107, 33.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788818, 36.255310, 33.489864>,  <41.883995, 35.940651, 33.261982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788818, 36.255310, 33.489864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088069, -0.566666, 0.819227,
		0.967278, 0.245102, 0.065555,
		-0.237942, 0.786647, 0.569710,
		41.717434, 36.491302, 33.660778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268513, 36.527390, 32.983295>,  <41.883995, 35.940651, 33.261982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268513, 36.527390, 32.983295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463684, 36.590122, 33.326767>,  <42.580788, 36.627762, 33.532848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463684, 36.590122, 33.326767>,  <42.268513, 36.527390, 32.983295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463684, 36.590122, 33.326767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141169, 0.956599, -0.254931,
		-0.861392, 0.245607, 0.444613,
		0.487929, 0.156831, 0.858679,
		42.610062, 36.637173, 33.584370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968014, 37.083706, 33.148373>,  <42.268513, 36.527390, 32.983295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968014, 37.083706, 33.148373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308563, 37.063885, 33.357258>,  <42.512894, 37.051991, 33.482590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308563, 37.063885, 33.357258>,  <41.968014, 37.083706, 33.148373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308563, 37.063885, 33.357258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167050, 0.969311, -0.180360,
		-0.497254, 0.240790, 0.833522,
		0.851371, -0.049555, 0.522218,
		42.563976, 37.049019, 33.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879753, 37.591084, 33.691242>,  <41.968014, 37.083706, 33.148373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879753, 37.591084, 33.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273819, 37.534149, 33.652885>,  <42.510258, 37.499989, 33.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273819, 37.534149, 33.652885>,  <41.879753, 37.591084, 33.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273819, 37.534149, 33.652885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142206, 0.989803, -0.008240,
		0.096086, -0.005519, 0.995358,
		0.985162, -0.142338, -0.095891,
		42.569366, 37.491447, 33.624119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178616, 38.033642, 34.215843>,  <41.879753, 37.591084, 33.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178616, 38.033642, 34.215843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425045, 37.945930, 33.913223>,  <42.572903, 37.893303, 33.731651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425045, 37.945930, 33.913223>,  <42.178616, 38.033642, 34.215843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425045, 37.945930, 33.913223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230842, 0.968561, -0.092745,
		0.753100, -0.117505, 0.647328,
		0.616078, -0.219277, -0.756548,
		42.609867, 37.880146, 33.686260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540932, 38.616047, 34.309666>,  <42.178616, 38.033642, 34.215843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540932, 38.616047, 34.309666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650833, 38.486839, 33.947414>,  <42.716774, 38.409313, 33.730064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650833, 38.486839, 33.947414>,  <42.540932, 38.616047, 34.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650833, 38.486839, 33.947414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135242, 0.945499, -0.296212,
		0.951957, -0.041095, 0.303462,
		0.274750, -0.323022, -0.905632,
		42.733257, 38.389935, 33.675724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277588, 38.860058, 34.100895>,  <42.540932, 38.616047, 34.309666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277588, 38.860058, 34.100895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062817, 38.789028, 33.771004>,  <42.933952, 38.746410, 33.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062817, 38.789028, 33.771004>,  <43.277588, 38.860058, 34.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062817, 38.789028, 33.771004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207103, 0.919934, -0.332910,
		0.817810, -0.349553, -0.457165,
		-0.536931, -0.177577, -0.824725,
		42.901737, 38.735756, 33.523586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603252, 39.174976, 33.570244>,  <43.277588, 38.860058, 34.100895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603252, 39.174976, 33.570244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243595, 39.108383, 33.408340>,  <43.027802, 39.068428, 33.311199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243595, 39.108383, 33.408340>,  <43.603252, 39.174976, 33.570244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243595, 39.108383, 33.408340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059043, 0.870232, -0.489091,
		0.433660, -0.463660, -0.772631,
		-0.899140, -0.166481, -0.404761,
		42.973854, 39.058437, 33.286911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785660, 39.405586, 33.023750>,  <43.603252, 39.174976, 33.570244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785660, 39.405586, 33.023750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386215, 39.388557, 33.036106>,  <43.146549, 39.378342, 33.043518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386215, 39.388557, 33.036106>,  <43.785660, 39.405586, 33.023750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386215, 39.388557, 33.036106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052132, 0.878805, -0.474325,
		-0.006952, -0.475278, -0.879808,
		-0.998616, -0.042569, 0.030887,
		43.086632, 39.375786, 33.045372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504238, 39.589600, 32.349857>,  <43.785660, 39.405586, 33.023750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504238, 39.589600, 32.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208656, 39.663528, 32.609020>,  <43.031307, 39.707886, 32.764519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208656, 39.663528, 32.609020>,  <43.504238, 39.589600, 32.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208656, 39.663528, 32.609020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174029, 0.876647, -0.448558,
		-0.650887, -0.444220, -0.615642,
		-0.738959, 0.184821, 0.647905,
		42.986969, 39.718975, 32.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916252, 39.849354, 31.929207>,  <43.504238, 39.589600, 32.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916252, 39.849354, 31.929207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852203, 39.964119, 32.306999>,  <42.813774, 40.032978, 32.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852203, 39.964119, 32.306999>,  <42.916252, 39.849354, 31.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852203, 39.964119, 32.306999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202834, 0.926845, -0.315938,
		-0.966034, -0.242160, -0.090209,
		-0.160117, 0.286909, 0.944482,
		42.804169, 40.050190, 32.590343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333790, 40.222473, 31.878645>,  <42.916252, 39.849354, 31.929207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333790, 40.222473, 31.878645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475666, 40.342056, 32.233006>,  <42.560791, 40.413807, 32.445621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475666, 40.342056, 32.233006>,  <42.333790, 40.222473, 31.878645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475666, 40.342056, 32.233006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314981, 0.930325, -0.187836,
		-0.880329, -0.212417, 0.424146,
		0.354694, 0.298955, 0.885899,
		42.582073, 40.431744, 32.498775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895435, 40.868053, 32.068657>,  <42.333790, 40.222473, 31.878645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895435, 40.868053, 32.068657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217999, 40.892643, 32.303921>,  <42.411537, 40.907398, 32.445080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217999, 40.892643, 32.303921>,  <41.895435, 40.868053, 32.068657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217999, 40.892643, 32.303921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041192, 0.998005, -0.047841,
		-0.589925, 0.014352, 0.807331,
		0.806407, 0.061478, 0.588157,
		42.459919, 40.911087, 32.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738472, 41.415451, 32.403362>,  <41.895435, 40.868053, 32.068657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738472, 41.415451, 32.403362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132511, 41.384556, 32.464840>,  <42.368935, 41.366016, 32.501728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132511, 41.384556, 32.464840>,  <41.738472, 41.415451, 32.403362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132511, 41.384556, 32.464840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071680, 0.996568, 0.041412,
		-0.156364, -0.029778, 0.987251,
		0.985095, -0.077242, 0.153693,
		42.428040, 41.361382, 32.510948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925674, 41.853352, 32.964638>,  <41.738472, 41.415451, 32.403362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925674, 41.853352, 32.964638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248711, 41.808975, 32.732952>,  <42.442532, 41.782349, 32.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248711, 41.808975, 32.732952>,  <41.925674, 41.853352, 32.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248711, 41.808975, 32.732952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160907, 0.986333, 0.035435,
		0.567363, -0.121816, 0.814408,
		0.807594, -0.110940, -0.579210,
		42.490990, 41.775692, 32.559189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481815, 42.347939, 33.222038>,  <41.925674, 41.853352, 32.964638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481815, 42.347939, 33.222038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644466, 42.240955, 32.872612>,  <42.742058, 42.176765, 32.662956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644466, 42.240955, 32.872612>,  <42.481815, 42.347939, 33.222038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644466, 42.240955, 32.872612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253380, 0.951693, -0.173433,
		0.877754, -0.150821, 0.454755,
		0.406630, -0.267457, -0.873567,
		42.766457, 42.160717, 32.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191765, 42.515438, 33.216530>,  <42.481815, 42.347939, 33.222038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191765, 42.515438, 33.216530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063110, 42.536362, 32.838364>,  <42.985920, 42.548916, 32.611462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063110, 42.536362, 32.838364>,  <43.191765, 42.515438, 33.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063110, 42.536362, 32.838364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230329, 0.972803, -0.024531,
		0.918423, -0.225648, -0.324935,
		-0.321633, 0.052312, -0.945418,
		42.966621, 42.552055, 32.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572399, 42.996220, 32.951912>,  <43.191765, 42.515438, 33.216530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572399, 42.996220, 32.951912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344135, 42.959427, 32.625504>,  <43.207176, 42.937351, 32.429661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344135, 42.959427, 32.625504>,  <43.572399, 42.996220, 32.951912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344135, 42.959427, 32.625504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352399, 0.870127, -0.344519,
		0.741727, -0.484168, -0.464137,
		-0.570664, -0.091978, -0.816017,
		43.172935, 42.931835, 32.380699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993774, 43.117611, 32.422913>,  <43.572399, 42.996220, 32.951912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993774, 43.117611, 32.422913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619228, 43.177784, 32.296043>,  <43.394501, 43.213886, 32.219921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619228, 43.177784, 32.296043>,  <43.993774, 43.117611, 32.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619228, 43.177784, 32.296043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261986, 0.900844, -0.346185,
		0.233648, -0.407249, -0.882925,
		-0.936361, 0.150429, -0.317174,
		43.338322, 43.222912, 32.200890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055229, 43.187504, 31.719164>,  <43.993774, 43.117611, 32.422913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055229, 43.187504, 31.719164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702080, 43.356014, 31.802174>,  <43.490189, 43.457119, 31.851978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702080, 43.356014, 31.802174>,  <44.055229, 43.187504, 31.719164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702080, 43.356014, 31.802174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324909, 0.867017, -0.377778,
		-0.339073, -0.266103, -0.902340,
		-0.882872, 0.421273, 0.207523,
		43.437218, 43.482395, 31.864431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780018, 43.429039, 31.169506>,  <44.055229, 43.187504, 31.719164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780018, 43.429039, 31.169506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604248, 43.670425, 31.435659>,  <43.498787, 43.815258, 31.595352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604248, 43.670425, 31.435659>,  <43.780018, 43.429039, 31.169506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604248, 43.670425, 31.435659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398529, 0.794811, -0.457658,
		-0.805036, 0.064069, -0.589756,
		-0.439423, 0.603466, 0.665384,
		43.472420, 43.851463, 31.635275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461884, 43.904140, 30.780329>,  <43.780018, 43.429039, 31.169506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461884, 43.904140, 30.780329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492878, 44.053249, 31.150202>,  <43.511475, 44.142715, 31.372126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492878, 44.053249, 31.150202>,  <43.461884, 43.904140, 30.780329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492878, 44.053249, 31.150202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367651, 0.851423, -0.374049,
		-0.926730, 0.368944, -0.071076,
		0.077487, 0.372773, 0.924681,
		43.516125, 44.165081, 31.427607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086552, 44.542858, 30.743464>,  <43.461884, 43.904140, 30.780329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086552, 44.542858, 30.743464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383934, 44.526917, 31.010504>,  <43.562363, 44.517353, 31.170729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383934, 44.526917, 31.010504>,  <43.086552, 44.542858, 30.743464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383934, 44.526917, 31.010504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447445, 0.771549, -0.452222,
		-0.497064, 0.634920, 0.591443,
		0.743452, -0.039855, 0.667601,
		43.606968, 44.514961, 31.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159012, 45.140213, 31.036316>,  <43.086552, 44.542858, 30.743464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159012, 45.140213, 31.036316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525597, 44.980286, 31.042566>,  <43.745548, 44.884327, 31.046316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525597, 44.980286, 31.042566>,  <43.159012, 45.140213, 31.036316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525597, 44.980286, 31.042566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362313, 0.812644, -0.456442,
		0.169798, 0.423972, 0.889616,
		0.916459, -0.399822, 0.015625,
		43.800533, 44.860340, 31.047255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623669, 45.672962, 31.314548>,  <43.159012, 45.140213, 31.036316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623669, 45.672962, 31.314548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822025, 45.431129, 31.065208>,  <43.941040, 45.286030, 30.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822025, 45.431129, 31.065208>,  <43.623669, 45.672962, 31.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822025, 45.431129, 31.065208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566132, 0.769392, -0.295857,
		0.658471, -0.206185, 0.723812,
		0.495894, -0.604586, -0.623350,
		43.970795, 45.249752, 30.878204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507484, 45.630047, 31.319201>,  <43.623669, 45.672962, 31.314548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507484, 45.630047, 31.319201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323780, 45.569317, 30.969109>,  <44.213558, 45.532879, 30.759054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323780, 45.569317, 30.969109>,  <44.507484, 45.630047, 31.319201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323780, 45.569317, 30.969109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514552, 0.757684, -0.401436,
		0.724093, -0.634717, -0.269860,
		-0.459267, -0.151819, -0.875228,
		44.186001, 45.523769, 30.706539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063126, 45.136578, 31.082487>,  <44.507484, 45.630047, 31.319201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063126, 45.136578, 31.082487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043152, 45.264690, 30.704084>,  <45.031166, 45.341557, 30.477043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043152, 45.264690, 30.704084>,  <45.063126, 45.136578, 31.082487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043152, 45.264690, 30.704084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385997, -0.867400, -0.314043,
		-0.921148, -0.380837, -0.080315,
		-0.049934, 0.320282, -0.946006,
		45.028172, 45.360775, 30.420282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602745, 44.800636, 30.659893>,  <45.063126, 45.136578, 31.082487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602745, 44.800636, 30.659893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925140, 44.859356, 30.430519>,  <45.118580, 44.894588, 30.292894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925140, 44.859356, 30.430519>,  <44.602745, 44.800636, 30.659893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925140, 44.859356, 30.430519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172949, -0.984889, -0.009039,
		-0.566096, -0.091890, -0.819202,
		0.805992, 0.146797, -0.573434,
		45.166939, 44.903397, 30.258490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574017, 44.463352, 30.052818>,  <44.602745, 44.800636, 30.659893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574017, 44.463352, 30.052818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966595, 44.491409, 30.124195>,  <45.202141, 44.508244, 30.167021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966595, 44.491409, 30.124195>,  <44.574017, 44.463352, 30.052818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966595, 44.491409, 30.124195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091044, -0.989553, -0.111784,
		0.168737, 0.125956, -0.977580,
		0.981447, 0.070140, 0.178442,
		45.261028, 44.512451, 30.177727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928020, 43.974632, 29.510752>,  <44.574017, 44.463352, 30.052818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928020, 43.974632, 29.510752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162346, 44.027466, 29.830595>,  <45.302940, 44.059166, 30.022501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162346, 44.027466, 29.830595>,  <44.928020, 43.974632, 29.510752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162346, 44.027466, 29.830595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100118, -0.990867, 0.090322,
		0.804236, 0.027143, -0.593690,
		0.585816, 0.132080, 0.799609,
		45.338089, 44.067089, 30.070478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563190, 43.544926, 29.456100>,  <44.928020, 43.974632, 29.510752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563190, 43.544926, 29.456100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475609, 43.603355, 29.841997>,  <45.423061, 43.638412, 30.073534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475609, 43.603355, 29.841997>,  <45.563190, 43.544926, 29.456100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475609, 43.603355, 29.841997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105218, -0.986500, 0.125485,
		0.970046, -0.074033, 0.231364,
		-0.218950, 0.146070, 0.964741,
		45.409924, 43.647175, 30.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925240, 43.032627, 29.868921>,  <45.563190, 43.544926, 29.456100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925240, 43.032627, 29.868921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587357, 43.185268, 30.019043>,  <45.384628, 43.276852, 30.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587357, 43.185268, 30.019043>,  <45.925240, 43.032627, 29.868921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587357, 43.185268, 30.019043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246089, -0.899587, 0.360809,
		0.475306, 0.212418, 0.853793,
		-0.844704, 0.381604, 0.375306,
		45.333946, 43.299751, 30.131636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931942, 43.014175, 30.662264>,  <45.925240, 43.032627, 29.868921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931942, 43.014175, 30.662264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579220, 43.003548, 30.473915>,  <45.367588, 42.997169, 30.360907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579220, 43.003548, 30.473915>,  <45.931942, 43.014175, 30.662264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579220, 43.003548, 30.473915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265671, -0.796941, 0.542498,
		-0.389671, 0.603472, 0.695685,
		-0.881802, -0.026572, -0.470870,
		45.314678, 42.995575, 30.332655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424541, 43.075806, 31.183144>,  <45.931942, 43.014175, 30.662264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424541, 43.075806, 31.183144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280636, 42.895653, 30.856285>,  <45.194294, 42.787560, 30.660170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280636, 42.895653, 30.856285>,  <45.424541, 43.075806, 31.183144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280636, 42.895653, 30.856285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538315, -0.615134, 0.576044,
		-0.762095, 0.647120, -0.021147,
		-0.359761, -0.450384, -0.817145,
		45.172707, 42.760536, 30.611141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686638, 42.945965, 31.349461>,  <45.424541, 43.075806, 31.183144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686638, 42.945965, 31.349461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816284, 42.687717, 31.072876>,  <44.894073, 42.532768, 30.906925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816284, 42.687717, 31.072876>,  <44.686638, 42.945965, 31.349461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816284, 42.687717, 31.072876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311521, -0.762995, 0.566386,
		-0.893253, 0.031828, -0.448427,
		0.324120, -0.645620, -0.691463,
		44.913521, 42.494030, 30.865437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066311, 42.449314, 31.294712>,  <44.686638, 42.945965, 31.349461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066311, 42.449314, 31.294712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397327, 42.290371, 31.136080>,  <44.595936, 42.195004, 31.040899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397327, 42.290371, 31.136080>,  <44.066311, 42.449314, 31.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397327, 42.290371, 31.136080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160282, -0.844239, 0.511439,
		-0.538036, -0.359672, -0.762334,
		0.827542, -0.397361, -0.396582,
		44.645592, 42.171162, 31.017105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886822, 41.653118, 31.213394>,  <44.066311, 42.449314, 31.294712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886822, 41.653118, 31.213394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277416, 41.739243, 31.209097>,  <44.511772, 41.790916, 31.206518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277416, 41.739243, 31.209097>,  <43.886822, 41.653118, 31.213394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277416, 41.739243, 31.209097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177491, -0.774678, 0.606936,
		0.122356, -0.594572, -0.794679,
		0.976487, 0.215310, -0.010744,
		44.570362, 41.803837, 31.205873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241730, 41.076031, 30.967602>,  <43.886822, 41.653118, 31.213394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241730, 41.076031, 30.967602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543533, 41.240761, 31.172005>,  <44.724613, 41.339600, 31.294645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543533, 41.240761, 31.172005>,  <44.241730, 41.076031, 30.967602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543533, 41.240761, 31.172005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139406, -0.861420, 0.488387,
		0.641318, -0.297253, -0.707355,
		0.754505, 0.411821, 0.511005,
		44.769886, 41.364307, 31.325306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836166, 40.621075, 30.919243>,  <44.241730, 41.076031, 30.967602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836166, 40.621075, 30.919243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925667, 40.826088, 31.250843>,  <44.979366, 40.949097, 31.449804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925667, 40.826088, 31.250843>,  <44.836166, 40.621075, 30.919243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925667, 40.826088, 31.250843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406190, -0.822219, 0.398705,
		0.885971, 0.247520, -0.392161,
		0.223755, 0.512532, 0.829002,
		44.992794, 40.979847, 31.499544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550274, 40.379208, 31.108696>,  <44.836166, 40.621075, 30.919243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550274, 40.379208, 31.108696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391560, 40.523151, 31.446466>,  <45.296329, 40.609520, 31.649128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391560, 40.523151, 31.446466>,  <45.550274, 40.379208, 31.108696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391560, 40.523151, 31.446466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338096, -0.797970, 0.498933,
		0.853375, 0.483469, 0.194958,
		-0.396790, 0.359862, 0.844427,
		45.272522, 40.631111, 31.699795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.002182, 40.033916, 31.556496>,  <45.550274, 40.379208, 31.108696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.002182, 40.033916, 31.556496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707375, 40.170593, 31.789751>,  <45.530491, 40.252598, 31.929705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707375, 40.170593, 31.789751>,  <46.002182, 40.033916, 31.556496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707375, 40.170593, 31.789751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099529, -0.798518, 0.593686,
		0.668502, 0.495597, 0.554516,
		-0.737020, 0.341690, 0.583137,
		45.486267, 40.273102, 31.964693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014740, 39.578571, 31.996723>,  <46.002182, 40.033916, 31.556496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014740, 39.578571, 31.996723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734642, 39.795551, 32.182369>,  <45.566586, 39.925739, 32.293758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734642, 39.795551, 32.182369>,  <46.014740, 39.578571, 31.996723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734642, 39.795551, 32.182369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071444, -0.700093, 0.710469,
		0.710321, 0.464343, 0.528990,
		-0.700243, 0.542454, 0.464116,
		45.524570, 39.958286, 32.321606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306000, 39.853855, 32.645329>,  <46.014740, 39.578571, 31.996723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306000, 39.853855, 32.645329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916920, 39.765026, 32.618366>,  <45.683472, 39.711731, 32.602188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916920, 39.765026, 32.618366>,  <46.306000, 39.853855, 32.645329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916920, 39.765026, 32.618366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128816, -0.758228, 0.639137,
		-0.193041, 0.613004, 0.766133,
		-0.972698, -0.222070, -0.067404,
		45.625111, 39.698406, 32.598145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091763, 39.965042, 33.318813>,  <46.306000, 39.853855, 32.645329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091763, 39.965042, 33.318813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845783, 39.722385, 33.117290>,  <45.698196, 39.576790, 32.996376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845783, 39.722385, 33.117290>,  <46.091763, 39.965042, 33.318813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845783, 39.722385, 33.117290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096738, -0.692097, 0.715292,
		-0.782608, 0.391134, 0.484292,
		-0.614952, -0.606643, -0.503804,
		45.661297, 39.540394, 32.966148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663052, 39.740593, 33.784031>,  <46.091763, 39.965042, 33.318813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663052, 39.740593, 33.784031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571705, 39.468979, 33.504959>,  <45.516895, 39.306011, 33.337517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571705, 39.468979, 33.504959>,  <45.663052, 39.740593, 33.784031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571705, 39.468979, 33.504959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190991, -0.671446, 0.716019,
		-0.954656, 0.296769, 0.023649,
		-0.228371, -0.679035, -0.697680,
		45.503193, 39.265270, 33.295654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142586, 39.451153, 34.130890>,  <45.663052, 39.740593, 33.784031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142586, 39.451153, 34.130890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244854, 39.197178, 33.839275>,  <45.306213, 39.044792, 33.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244854, 39.197178, 33.839275>,  <45.142586, 39.451153, 34.130890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244854, 39.197178, 33.839275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222515, -0.772499, 0.594754,
		-0.940809, 0.010162, -0.338786,
		0.255668, -0.634935, -0.729035,
		45.321556, 39.006699, 33.620564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541412, 39.048946, 33.911507>,  <45.142586, 39.451153, 34.130890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541412, 39.048946, 33.911507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890209, 38.871094, 33.829594>,  <45.099487, 38.764381, 33.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890209, 38.871094, 33.829594>,  <44.541412, 39.048946, 33.911507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890209, 38.871094, 33.829594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288607, -0.804850, 0.518577,
		-0.395397, -0.393092, -0.830145,
		0.871991, -0.444629, -0.204786,
		45.151806, 38.737705, 33.768158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382759, 38.415363, 33.595795>,  <44.541412, 39.048946, 33.911507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382759, 38.415363, 33.595795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755726, 38.390026, 33.738117>,  <44.979504, 38.374825, 33.823509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755726, 38.390026, 33.738117>,  <44.382759, 38.415363, 33.595795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755726, 38.390026, 33.738117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245717, -0.833056, 0.495622,
		0.265010, -0.549551, -0.792315,
		0.932412, -0.063340, 0.355802,
		45.035450, 38.371025, 33.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461178, 37.713322, 33.688042>,  <44.382759, 38.415363, 33.595795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461178, 37.713322, 33.688042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775589, 37.848381, 33.895176>,  <44.964237, 37.929417, 34.019455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775589, 37.848381, 33.895176>,  <44.461178, 37.713322, 33.688042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775589, 37.848381, 33.895176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073635, -0.780566, 0.620721,
		0.613789, -0.526035, -0.588685,
		0.786029, 0.337644, 0.517837,
		45.011398, 37.949673, 34.050526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749008, 37.153847, 33.649067>,  <44.461178, 37.713322, 33.688042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749008, 37.153847, 33.649067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882614, 37.368832, 33.958794>,  <44.962776, 37.497822, 34.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882614, 37.368832, 33.958794>,  <44.749008, 37.153847, 33.649067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882614, 37.368832, 33.958794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017612, -0.824914, 0.564985,
		0.942403, -0.175077, -0.285000,
		0.334016, 0.537463, 0.774318,
		44.982819, 37.530071, 34.191090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276382, 36.697025, 34.065449>,  <44.749008, 37.153847, 33.649067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276382, 36.697025, 34.065449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162094, 36.994217, 34.307552>,  <45.093521, 37.172531, 34.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162094, 36.994217, 34.307552>,  <45.276382, 36.697025, 34.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162094, 36.994217, 34.307552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064627, -0.645092, 0.761367,
		0.956131, 0.178423, 0.232333,
		-0.285722, 0.742981, 0.605262,
		45.076378, 37.217110, 34.489132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794174, 36.693569, 34.678268>,  <45.276382, 36.697025, 34.065449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794174, 36.693569, 34.678268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459099, 36.873074, 34.802780>,  <45.258053, 36.980774, 34.877487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459099, 36.873074, 34.802780>,  <45.794174, 36.693569, 34.678268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459099, 36.873074, 34.802780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007544, -0.579410, 0.815001,
		0.546099, 0.680367, 0.488750,
		-0.837687, 0.448758, 0.311283,
		45.207794, 37.007702, 34.896164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765266, 36.854900, 35.367104>,  <45.794174, 36.693569, 34.678268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765266, 36.854900, 35.367104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373440, 36.862560, 35.287022>,  <45.138344, 36.867157, 35.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373440, 36.862560, 35.287022>,  <45.765266, 36.854900, 35.367104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373440, 36.862560, 35.287022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187518, -0.446880, 0.874720,
		-0.072717, 0.894389, 0.441340,
		-0.979566, 0.019152, -0.200209,
		45.079571, 36.868305, 35.226959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554985, 36.764488, 35.152336>,  <45.765266, 36.854900, 35.367104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554985, 36.764488, 35.152336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545242, 36.487648, 34.863781>,  <46.539398, 36.321545, 34.690647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545242, 36.487648, 34.863781>,  <46.554985, 36.764488, 35.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545242, 36.487648, 34.863781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995502, -0.082881, 0.045907,
		-0.091562, -0.717022, 0.691011,
		-0.024355, -0.692105, -0.721385,
		46.537937, 36.280018, 34.647366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080265, 36.292343, 35.299713>,  <46.554985, 36.764488, 35.152336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080265, 36.292343, 35.299713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030655, 36.252197, 34.904839>,  <47.000889, 36.228107, 34.667912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030655, 36.252197, 34.904839>,  <47.080265, 36.292343, 35.299713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030655, 36.252197, 34.904839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991220, 0.033426, -0.127925,
		0.045838, -0.994389, 0.095341,
		-0.124021, -0.100367, -0.987191,
		46.993450, 36.222088, 34.608681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770706, 36.295719, 35.247524>,  <47.080265, 36.292343, 35.299713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770706, 36.295719, 35.247524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642170, 36.276073, 34.869247>,  <47.565048, 36.264286, 34.642281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642170, 36.276073, 34.869247>,  <47.770706, 36.295719, 35.247524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.642170, 36.276073, 34.869247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944329, -0.091085, -0.316143,
		-0.070609, -0.994631, 0.075653,
		-0.321337, -0.049119, -0.945690,
		47.545769, 36.261337, 34.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.830803, 35.539448, 35.087990>,  <47.770706, 36.295719, 35.247524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.830803, 35.539448, 35.087990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.980888, 35.173019, 35.031391>,  <48.070942, 34.953163, 34.997433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.980888, 35.173019, 35.031391>,  <47.830803, 35.539448, 35.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.980888, 35.173019, 35.031391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390726, -0.294736, 0.872046,
		-0.840563, -0.271918, -0.468524,
		0.375215, -0.916074, -0.141499,
		48.093452, 34.898197, 34.988941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.053089, 40.197285, 44.361908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708458, 40.052887, 44.504665>,  <38.501678, 39.966248, 44.590321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708458, 40.052887, 44.504665>,  <39.053089, 40.197285, 44.361908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708458, 40.052887, 44.504665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369042, -0.037334, -0.928663,
		0.348566, -0.931820, -0.101056,
		-0.861574, -0.360994, 0.356894,
		38.449986, 39.944588, 44.611732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883743, 39.556702, 44.065758>,  <39.053089, 40.197285, 44.361908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883743, 39.556702, 44.065758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520447, 39.663162, 44.194920>,  <38.302467, 39.727039, 44.272415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520447, 39.663162, 44.194920>,  <38.883743, 39.556702, 44.065758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520447, 39.663162, 44.194920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, -0.341429, -0.849558,
		-0.115859, -0.901439, 0.417114,
		-0.908240, 0.266147, 0.322903,
		38.247974, 39.743008, 44.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346916, 39.045467, 43.835205>,  <38.883743, 39.556702, 44.065758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346916, 39.045467, 43.835205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116199, 39.366943, 43.893715>,  <37.977768, 39.559830, 43.928822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116199, 39.366943, 43.893715>,  <38.346916, 39.045467, 43.835205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116199, 39.366943, 43.893715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564665, -0.262861, -0.782341,
		-0.590309, -0.533844, 0.605431,
		-0.576792, 0.803688, 0.146274,
		37.943161, 39.608051, 43.937595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562435, 38.867168, 43.751106>,  <38.346916, 39.045467, 43.835205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562435, 38.867168, 43.751106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577644, 39.265144, 43.713905>,  <37.586769, 39.503929, 43.691586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577644, 39.265144, 43.713905>,  <37.562435, 38.867168, 43.751106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577644, 39.265144, 43.713905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575465, -0.054288, -0.816022,
		-0.816942, 0.084546, 0.570489,
		0.038020, 0.994939, -0.093003,
		37.589050, 39.563625, 43.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874279, 39.099319, 43.602337>,  <37.562435, 38.867168, 43.751106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874279, 39.099319, 43.602337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092464, 39.413010, 43.484039>,  <37.223373, 39.601223, 43.413063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092464, 39.413010, 43.484039>,  <36.874279, 39.099319, 43.602337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092464, 39.413010, 43.484039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542152, 0.061047, -0.838060,
		-0.639176, 0.617464, 0.458469,
		0.545460, 0.784227, -0.295739,
		37.256104, 39.648277, 43.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489208, 39.553123, 43.296314>,  <36.874279, 39.099319, 43.602337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489208, 39.553123, 43.296314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836391, 39.662170, 43.130260>,  <37.044701, 39.727596, 43.030628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836391, 39.662170, 43.130260>,  <36.489208, 39.553123, 43.296314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836391, 39.662170, 43.130260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468219, 0.170443, -0.867018,
		-0.165603, 0.946907, 0.275579,
		0.867955, 0.272613, -0.415134,
		37.096779, 39.743954, 43.005722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250977, 39.852104, 42.739258>,  <36.489208, 39.553123, 43.296314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250977, 39.852104, 42.739258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635712, 39.824699, 42.633293>,  <36.866550, 39.808254, 42.569714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635712, 39.824699, 42.633293>,  <36.250977, 39.852104, 42.739258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635712, 39.824699, 42.633293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268389, -0.047639, -0.962132,
		0.053300, 0.996512, -0.064210,
		0.961835, -0.068515, -0.264913,
		36.924263, 39.804146, 42.553818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240604, 40.318077, 42.107952>,  <36.250977, 39.852104, 42.739258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240604, 40.318077, 42.107952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564632, 40.083748, 42.098217>,  <36.759048, 39.943150, 42.092377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564632, 40.083748, 42.098217>,  <36.240604, 40.318077, 42.107952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564632, 40.083748, 42.098217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093452, -0.088021, -0.991725,
		0.578832, 0.805645, -0.126050,
		0.810074, -0.585822, -0.024340,
		36.807655, 39.908001, 42.090916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629463, 40.637764, 41.607956>,  <36.240604, 40.318077, 42.107952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629463, 40.637764, 41.607956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755806, 40.259068, 41.632965>,  <36.831612, 40.031849, 41.647972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755806, 40.259068, 41.632965>,  <36.629463, 40.637764, 41.607956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755806, 40.259068, 41.632965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143668, -0.017417, -0.989473,
		0.937866, 0.321516, 0.130516,
		0.315859, -0.946744, 0.062526,
		36.850563, 39.975044, 41.651722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205143, 40.662010, 41.266212>,  <36.629463, 40.637764, 41.607956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205143, 40.662010, 41.266212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108555, 40.273911, 41.273251>,  <37.050602, 40.041050, 41.277473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108555, 40.273911, 41.273251>,  <37.205143, 40.662010, 41.266212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108555, 40.273911, 41.273251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119685, -0.047770, -0.991662,
		0.962999, -0.237352, 0.127659,
		-0.241472, -0.970249, 0.017595,
		37.036114, 39.982838, 41.278530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775730, 40.212917, 40.882481>,  <37.205143, 40.662010, 41.266212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775730, 40.212917, 40.882481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412426, 40.045555, 40.882477>,  <37.194443, 39.945137, 40.882477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412426, 40.045555, 40.882477>,  <37.775730, 40.212917, 40.882481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412426, 40.045555, 40.882477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095401, -0.207077, -0.973662,
		0.407381, -0.884340, 0.227996,
		-0.908261, -0.418403, -0.000007,
		37.139946, 39.920033, 40.882473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809517, 39.532978, 40.460625>,  <37.775730, 40.212917, 40.882481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809517, 39.532978, 40.460625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421410, 39.622986, 40.496296>,  <37.188545, 39.676991, 40.517700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421410, 39.622986, 40.496296>,  <37.809517, 39.532978, 40.460625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421410, 39.622986, 40.496296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109528, -0.079600, -0.990791,
		-0.215850, -0.971097, 0.101879,
		-0.970264, 0.225021, 0.089181,
		37.130329, 39.690491, 40.523048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522808, 39.117760, 40.028072>,  <37.809517, 39.532978, 40.460625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522808, 39.117760, 40.028072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218254, 39.369492, 40.090336>,  <37.035522, 39.520531, 40.127693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218254, 39.369492, 40.090336>,  <37.522808, 39.117760, 40.028072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218254, 39.369492, 40.090336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245216, -0.057308, -0.967773,
		-0.600130, -0.775021, 0.197955,
		-0.761389, 0.629332, 0.155655,
		36.989838, 39.558292, 40.137032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854958, 38.806282, 39.800385>,  <37.522808, 39.117760, 40.028072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854958, 38.806282, 39.800385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769192, 39.196693, 39.785484>,  <36.717731, 39.430943, 39.776543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769192, 39.196693, 39.785484>,  <36.854958, 38.806282, 39.800385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769192, 39.196693, 39.785484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294143, -0.100889, -0.950422,
		-0.931401, -0.192826, 0.308725,
		-0.214413, 0.976033, -0.037249,
		36.704868, 39.489502, 39.774311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214600, 38.859394, 39.510654>,  <36.854958, 38.806282, 39.800385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214600, 38.859394, 39.510654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402966, 39.209660, 39.467827>,  <36.515984, 39.419819, 39.442131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402966, 39.209660, 39.467827>,  <36.214600, 38.859394, 39.510654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402966, 39.209660, 39.467827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348406, 0.073107, -0.934488,
		-0.810466, 0.477363, 0.339512,
		0.470911, 0.875659, -0.107065,
		36.544239, 39.472359, 39.435707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735847, 39.454636, 39.151264>,  <36.214600, 38.859394, 39.510654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735847, 39.454636, 39.151264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105530, 39.594521, 39.089897>,  <36.327339, 39.678452, 39.053078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105530, 39.594521, 39.089897>,  <35.735847, 39.454636, 39.151264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105530, 39.594521, 39.089897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207392, 0.122296, -0.970583,
		-0.320662, 0.928841, 0.185554,
		0.924210, 0.349711, -0.153418,
		36.382793, 39.699432, 39.043873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663879, 39.899498, 38.561222>,  <35.735847, 39.454636, 39.151264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663879, 39.899498, 38.561222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058216, 39.833336, 38.572296>,  <36.294819, 39.793640, 38.578941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058216, 39.833336, 38.572296>,  <35.663879, 39.899498, 38.561222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058216, 39.833336, 38.572296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041906, 0.083094, -0.995660,
		0.162383, 0.982720, 0.088848,
		0.985838, -0.165401, 0.027689,
		36.353966, 39.783714, 38.580605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014088, 40.433064, 38.026264>,  <35.663879, 39.899498, 38.561222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014088, 40.433064, 38.026264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254749, 40.120903, 38.094368>,  <36.399147, 39.933605, 38.135231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254749, 40.120903, 38.094368>,  <36.014088, 40.433064, 38.026264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254749, 40.120903, 38.094368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084406, -0.149848, -0.985100,
		0.794286, 0.607058, -0.024286,
		0.601652, -0.780401, 0.170261,
		36.435246, 39.886784, 38.145447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597332, 40.509941, 37.507366>,  <36.014088, 40.433064, 38.026264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597332, 40.509941, 37.507366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609360, 40.129135, 37.629200>,  <36.616577, 39.900654, 37.702301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609360, 40.129135, 37.629200>,  <36.597332, 40.509941, 37.507366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609360, 40.129135, 37.629200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221360, -0.290816, -0.930820,
		0.974728, 0.095408, 0.201994,
		0.030065, -0.952010, 0.304586,
		36.618378, 39.843533, 37.720577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287098, 40.273239, 37.205585>,  <36.597332, 40.509941, 37.507366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287098, 40.273239, 37.205585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006355, 39.996071, 37.271626>,  <36.837910, 39.829769, 37.311249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006355, 39.996071, 37.271626>,  <37.287098, 40.273239, 37.205585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006355, 39.996071, 37.271626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114052, -0.338100, -0.934174,
		0.703128, -0.636827, 0.316327,
		-0.701857, -0.692921, 0.165096,
		36.795799, 39.788193, 37.321156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636444, 39.623920, 36.916634>,  <37.287098, 40.273239, 37.205585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636444, 39.623920, 36.916634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244263, 39.547501, 36.935406>,  <37.008953, 39.501648, 36.946671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244263, 39.547501, 36.935406>,  <37.636444, 39.623920, 36.916634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244263, 39.547501, 36.935406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020552, -0.336729, -0.941377,
		0.195651, -0.922017, 0.334075,
		-0.980459, -0.191047, 0.046932,
		36.950127, 39.490185, 36.949486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501534, 38.893070, 36.842857>,  <37.636444, 39.623920, 36.916634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501534, 38.893070, 36.842857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160526, 39.070942, 36.732975>,  <36.955921, 39.177666, 36.667046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160526, 39.070942, 36.732975>,  <37.501534, 38.893070, 36.842857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160526, 39.070942, 36.732975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026779, -0.562031, -0.826683,
		-0.522004, -0.697409, 0.491052,
		-0.852523, 0.444682, -0.274707,
		36.904770, 39.204346, 36.650562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191429, 38.417824, 36.453152>,  <37.501534, 38.893070, 36.842857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191429, 38.417824, 36.453152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993000, 38.753117, 36.362576>,  <36.873943, 38.954292, 36.308231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993000, 38.753117, 36.362576>,  <37.191429, 38.417824, 36.453152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993000, 38.753117, 36.362576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270929, -0.397204, -0.876827,
		-0.824930, -0.373620, 0.424144,
		-0.496072, 0.838234, -0.226441,
		36.844177, 39.004585, 36.294643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854832, 38.133369, 36.671730>,  <37.191429, 38.417824, 36.453152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854832, 38.133369, 36.671730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202938, 38.279842, 36.539940>,  <38.411800, 38.367725, 36.460865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202938, 38.279842, 36.539940>,  <37.854832, 38.133369, 36.671730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202938, 38.279842, 36.539940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451628, -0.326121, 0.830468,
		0.196653, -0.871526, -0.449189,
		0.870264, 0.366180, -0.329473,
		38.464016, 38.389698, 36.441097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321785, 37.677944, 37.027580>,  <37.854832, 38.133369, 36.671730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321785, 37.677944, 37.027580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520794, 38.012272, 36.934727>,  <38.640198, 38.212868, 36.879017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520794, 38.012272, 36.934727>,  <38.321785, 37.677944, 37.027580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520794, 38.012272, 36.934727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607601, -0.144787, 0.780934,
		0.619109, -0.529572, -0.579878,
		0.497520, 0.835817, -0.232129,
		38.670052, 38.263016, 36.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036606, 37.485039, 37.037422>,  <38.321785, 37.677944, 37.027580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036606, 37.485039, 37.037422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991116, 37.877857, 37.097614>,  <38.963821, 38.113548, 37.133728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991116, 37.877857, 37.097614>,  <39.036606, 37.485039, 37.037422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991116, 37.877857, 37.097614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599140, -0.053030, 0.798886,
		0.792526, 0.181013, -0.582355,
		-0.113727, 0.982050, 0.150479,
		38.956997, 38.172474, 37.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655140, 37.676971, 37.250031>,  <39.036606, 37.485039, 37.037422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655140, 37.676971, 37.250031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434601, 37.979874, 37.390076>,  <39.302277, 38.161613, 37.474102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.434601, 37.979874, 37.390076>,  <39.655140, 37.676971, 37.250031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434601, 37.979874, 37.390076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592902, 0.060421, 0.803005,
		0.586925, 0.650319, -0.482291,
		-0.551350, 0.757254, 0.350113,
		39.269196, 38.207050, 37.495110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094040, 38.236366, 37.247196>,  <39.655140, 37.676971, 37.250031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094040, 38.236366, 37.247196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803898, 38.327843, 37.506908>,  <39.629814, 38.382729, 37.662735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803898, 38.327843, 37.506908>,  <40.094040, 38.236366, 37.247196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803898, 38.327843, 37.506908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688204, 0.262192, 0.676484,
		-0.015528, 0.937526, -0.347569,
		-0.725351, 0.228694, 0.649280,
		39.586292, 38.396450, 37.701691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248322, 38.846104, 37.584229>,  <40.094040, 38.236366, 37.247196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248322, 38.846104, 37.584229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966858, 38.720329, 37.839100>,  <39.797981, 38.644863, 37.992023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966858, 38.720329, 37.839100>,  <40.248322, 38.846104, 37.584229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966858, 38.720329, 37.839100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578040, 0.268169, 0.770685,
		-0.413206, 0.910611, -0.006939,
		-0.703655, -0.314441, 0.637179,
		39.755760, 38.625996, 38.030254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273384, 39.405064, 38.112160>,  <40.248322, 38.846104, 37.584229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273384, 39.405064, 38.112160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110317, 39.071392, 38.260727>,  <40.012478, 38.871189, 38.349869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110317, 39.071392, 38.260727>,  <40.273384, 39.405064, 38.112160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110317, 39.071392, 38.260727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334806, 0.241876, 0.910714,
		-0.849535, 0.495626, 0.180681,
		-0.407671, -0.834177, 0.371421,
		39.988014, 38.821140, 38.372154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028046, 39.675423, 38.708488>,  <40.273384, 39.405064, 38.112160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028046, 39.675423, 38.708488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020535, 39.276417, 38.735645>,  <40.016026, 39.037014, 38.751938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020535, 39.276417, 38.735645>,  <40.028046, 39.675423, 38.708488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020535, 39.276417, 38.735645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335683, 0.057670, 0.940208,
		-0.941788, 0.040449, 0.333766,
		-0.018782, -0.997516, 0.067891,
		40.014900, 38.977161, 38.756012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735046, 39.581314, 39.344334>,  <40.028046, 39.675423, 38.708488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735046, 39.581314, 39.344334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913437, 39.228615, 39.282848>,  <40.020473, 39.016994, 39.245956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913437, 39.228615, 39.282848>,  <39.735046, 39.581314, 39.344334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913437, 39.228615, 39.282848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337227, 0.006450, 0.941401,
		-0.829084, -0.471684, 0.300225,
		0.445980, -0.881744, -0.153717,
		40.047230, 38.964092, 39.236732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411797, 39.098347, 39.775555>,  <39.735046, 39.581314, 39.344334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411797, 39.098347, 39.775555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782078, 38.965893, 39.702423>,  <40.004246, 38.886421, 39.658546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782078, 38.965893, 39.702423>,  <39.411797, 39.098347, 39.775555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782078, 38.965893, 39.702423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225266, 0.094338, 0.969719,
		-0.303857, -0.938857, 0.161922,
		0.925703, -0.331132, -0.182827,
		40.059788, 38.866554, 39.647575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573399, 38.685986, 40.338367>,  <39.411797, 39.098347, 39.775555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573399, 38.685986, 40.338367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934185, 38.771084, 40.188065>,  <40.150658, 38.822144, 40.097881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934185, 38.771084, 40.188065>,  <39.573399, 38.685986, 40.338367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934185, 38.771084, 40.188065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351284, 0.144538, 0.925045,
		0.251114, -0.966357, 0.055633,
		0.901965, 0.212749, -0.375761,
		40.204773, 38.834908, 40.075336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934799, 38.228500, 40.709236>,  <39.573399, 38.685986, 40.338367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934799, 38.228500, 40.709236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187965, 38.509865, 40.579849>,  <40.339867, 38.678684, 40.502216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187965, 38.509865, 40.579849>,  <39.934799, 38.228500, 40.709236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187965, 38.509865, 40.579849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407064, 0.053056, 0.911857,
		0.658573, -0.708800, -0.252754,
		0.632914, 0.703412, -0.323468,
		40.377838, 38.720890, 40.482807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564556, 38.118210, 41.114250>,  <39.934799, 38.228500, 40.709236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564556, 38.118210, 41.114250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.608299, 38.490852, 40.975597>,  <40.634544, 38.714439, 40.892406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.608299, 38.490852, 40.975597>,  <40.564556, 38.118210, 41.114250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608299, 38.490852, 40.975597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188962, 0.322876, 0.927386,
		0.975877, -0.166913, -0.140730,
		0.109354, 0.931606, -0.346628,
		40.641106, 38.770336, 40.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196983, 38.373432, 41.364506>,  <40.564556, 38.118210, 41.114250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196983, 38.373432, 41.364506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009514, 38.719234, 41.291874>,  <40.897030, 38.926716, 41.248295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009514, 38.719234, 41.291874>,  <41.196983, 38.373432, 41.364506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009514, 38.719234, 41.291874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269400, 0.335646, 0.902644,
		0.841288, 0.374131, -0.390207,
		-0.468678, 0.864505, -0.181584,
		40.868912, 38.978584, 41.237400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670311, 38.836716, 41.606499>,  <41.196983, 38.373432, 41.364506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670311, 38.836716, 41.606499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314251, 39.017807, 41.585815>,  <41.100616, 39.126461, 41.573406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314251, 39.017807, 41.585815>,  <41.670311, 38.836716, 41.606499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314251, 39.017807, 41.585815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189289, 0.470606, 0.861801,
		0.414497, 0.757341, -0.504605,
		-0.890147, 0.452730, -0.051708,
		41.047207, 39.153625, 41.570301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758003, 39.562908, 41.878742>,  <41.670311, 38.836716, 41.606499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758003, 39.562908, 41.878742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.367043, 39.482063, 41.903530>,  <41.132465, 39.433556, 41.918404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.367043, 39.482063, 41.903530>,  <41.758003, 39.562908, 41.878742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367043, 39.482063, 41.903530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006932, 0.262337, 0.964951,
		-0.211283, 0.943573, -0.255007,
		-0.977400, -0.202111, 0.061968,
		41.073822, 39.421429, 41.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523792, 40.116817, 42.295860>,  <41.758003, 39.562908, 41.878742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523792, 40.116817, 42.295860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248013, 39.828941, 42.328621>,  <41.082546, 39.656216, 42.348278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248013, 39.828941, 42.328621>,  <41.523792, 40.116817, 42.295860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248013, 39.828941, 42.328621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054897, 0.164658, 0.984822,
		-0.722255, 0.674484, -0.153032,
		-0.689445, -0.719694, 0.081897,
		41.041180, 39.613033, 42.353191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.956203, 40.427364, 42.811413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935692, 40.027954, 42.818596>,  <40.923386, 39.788307, 42.822906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935692, 40.027954, 42.818596>,  <40.956203, 40.427364, 42.811413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935692, 40.027954, 42.818596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051022, 0.015337, 0.998580,
		-0.997380, 0.052119, 0.050160,
		-0.051276, -0.998523, 0.017956,
		40.920311, 39.728397, 42.823982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526402, 40.253555, 43.331646>,  <40.956203, 40.427364, 42.811413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526402, 40.253555, 43.331646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698105, 39.896767, 43.274910>,  <40.801128, 39.682693, 43.240868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698105, 39.896767, 43.274910>,  <40.526402, 40.253555, 43.331646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698105, 39.896767, 43.274910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218607, -0.254984, 0.941910,
		-0.876326, -0.373316, -0.304446,
		0.429259, -0.891975, -0.141839,
		40.826881, 39.629173, 43.232357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054050, 39.816635, 43.676407>,  <40.526402, 40.253555, 43.331646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054050, 39.816635, 43.676407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409389, 39.634571, 43.652153>,  <40.622593, 39.525333, 43.637600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409389, 39.634571, 43.652153>,  <40.054050, 39.816635, 43.676407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409389, 39.634571, 43.652153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138470, -0.391445, 0.909723,
		-0.437804, -0.799751, -0.410763,
		0.888343, -0.455159, -0.060635,
		40.675892, 39.498024, 43.633965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997219, 38.996201, 43.726688>,  <40.054050, 39.816635, 43.676407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997219, 38.996201, 43.726688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.367683, 39.106335, 43.829769>,  <40.589962, 39.172417, 43.891617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.367683, 39.106335, 43.829769>,  <39.997219, 38.996201, 43.726688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367683, 39.106335, 43.829769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068924, -0.548247, 0.833472,
		0.370771, -0.789693, -0.488788,
		0.926163, 0.275338, 0.257703,
		40.645531, 39.188934, 43.907082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327877, 38.497192, 43.884098>,  <39.997219, 38.996201, 43.726688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327877, 38.497192, 43.884098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574787, 38.742638, 44.081055>,  <40.722935, 38.889904, 44.199230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574787, 38.742638, 44.081055>,  <40.327877, 38.497192, 43.884098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574787, 38.742638, 44.081055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077633, -0.670310, 0.738010,
		0.782908, -0.417329, -0.461402,
		0.617275, 0.613613, 0.492392,
		40.759972, 38.926723, 44.228771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672504, 38.055252, 44.448376>,  <40.327877, 38.497192, 43.884098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672504, 38.055252, 44.448376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827858, 38.406075, 44.561466>,  <40.921070, 38.616570, 44.629322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827858, 38.406075, 44.561466>,  <40.672504, 38.055252, 44.448376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827858, 38.406075, 44.561466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355080, -0.425556, 0.832358,
		0.850340, -0.222882, -0.476703,
		0.388381, 0.877055, 0.282726,
		40.944374, 38.669189, 44.646282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214977, 37.780659, 44.831535>,  <40.672504, 38.055252, 44.448376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214977, 37.780659, 44.831535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.171772, 38.161362, 44.946419>,  <41.145847, 38.389782, 45.015350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.171772, 38.161362, 44.946419>,  <41.214977, 37.780659, 44.831535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171772, 38.161362, 44.946419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198349, -0.262462, 0.944337,
		0.974162, 0.158970, -0.160431,
		-0.108014, 0.951758, 0.287211,
		41.139366, 38.446888, 45.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866905, 37.913147, 45.266232>,  <41.214977, 37.780659, 44.831535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866905, 37.913147, 45.266232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580173, 38.178459, 45.352219>,  <41.408134, 38.337646, 45.403812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580173, 38.178459, 45.352219>,  <41.866905, 37.913147, 45.266232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580173, 38.178459, 45.352219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211824, -0.086574, 0.973466,
		0.664289, 0.743348, -0.078439,
		-0.716834, 0.663278, 0.214969,
		41.365124, 38.377441, 45.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170952, 38.445843, 45.664421>,  <41.866905, 37.913147, 45.266232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170952, 38.445843, 45.664421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.788803, 38.500145, 45.769367>,  <41.559513, 38.532726, 45.832336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.788803, 38.500145, 45.769367>,  <42.170952, 38.445843, 45.664421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788803, 38.500145, 45.769367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268412, 0.028002, 0.962897,
		0.123376, 0.990346, -0.063192,
		-0.955371, 0.135760, 0.262366,
		41.502193, 38.540874, 45.848076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123684, 39.067875, 46.121655>,  <42.170952, 38.445843, 45.664421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123684, 39.067875, 46.121655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786942, 38.858154, 46.172871>,  <41.584896, 38.732323, 46.203602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786942, 38.858154, 46.172871>,  <42.123684, 39.067875, 46.121655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786942, 38.858154, 46.172871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098569, 0.083892, 0.991588,
		-0.530632, 0.847391, -0.018945,
		-0.841852, -0.524301, 0.128043,
		41.534386, 38.700863, 46.211285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749973, 39.337326, 46.711712>,  <42.123684, 39.067875, 46.121655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749973, 39.337326, 46.711712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566654, 38.983124, 46.681133>,  <41.456661, 38.770603, 46.662785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.566654, 38.983124, 46.681133>,  <41.749973, 39.337326, 46.711712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566654, 38.983124, 46.681133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088053, -0.130825, 0.987487,
		-0.884427, 0.445831, 0.137928,
		-0.458297, -0.885505, -0.076449,
		41.429165, 38.717472, 46.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419319, 39.295303, 47.334122>,  <41.749973, 39.337326, 46.711712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419319, 39.295303, 47.334122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457260, 38.927181, 47.182308>,  <41.480026, 38.706310, 47.091221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457260, 38.927181, 47.182308>,  <41.419319, 39.295303, 47.334122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457260, 38.927181, 47.182308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190586, -0.357413, 0.914294,
		-0.977077, -0.159058, 0.141494,
		0.094854, -0.920303, -0.379534,
		41.485718, 38.651089, 47.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082195, 38.963173, 47.725815>,  <41.419319, 39.295303, 47.334122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082195, 38.963173, 47.725815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278336, 38.655338, 47.562214>,  <41.396019, 38.470638, 47.464054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278336, 38.655338, 47.562214>,  <41.082195, 38.963173, 47.725815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278336, 38.655338, 47.562214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054361, -0.441375, 0.895675,
		-0.869827, -0.461430, -0.174594,
		0.490353, -0.769591, -0.409004,
		41.425442, 38.424461, 47.439514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766441, 38.330929, 47.904751>,  <41.082195, 38.963173, 47.725815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766441, 38.330929, 47.904751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.141823, 38.223579, 47.817772>,  <41.367050, 38.159172, 47.765583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.141823, 38.223579, 47.817772>,  <40.766441, 38.330929, 47.904751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141823, 38.223579, 47.817772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059763, -0.493892, 0.867467,
		-0.340197, -0.827073, -0.447456,
		0.938453, -0.268369, -0.217449,
		41.423359, 38.143070, 47.752537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884117, 37.693417, 48.234459>,  <40.766441, 38.330929, 47.904751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884117, 37.693417, 48.234459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268658, 37.778904, 48.165031>,  <41.499382, 37.830196, 48.123375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.268658, 37.778904, 48.165031>,  <40.884117, 37.693417, 48.234459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268658, 37.778904, 48.165031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247535, -0.394982, 0.884712,
		0.120521, -0.893485, -0.432619,
		0.961354, 0.213715, -0.173565,
		41.557064, 37.843018, 48.112961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205555, 37.179485, 48.571892>,  <40.884117, 37.693417, 48.234459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205555, 37.179485, 48.571892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490559, 37.458050, 48.537632>,  <41.661560, 37.625191, 48.517075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490559, 37.458050, 48.537632>,  <41.205555, 37.179485, 48.571892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490559, 37.458050, 48.537632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501445, -0.420011, 0.756402,
		0.490795, -0.581892, -0.648476,
		0.712511, 0.696414, -0.085648,
		41.704311, 37.666973, 48.511936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849697, 36.809578, 48.684235>,  <41.205555, 37.179485, 48.571892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849697, 36.809578, 48.684235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953327, 37.191452, 48.742825>,  <42.015507, 37.420578, 48.777981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953327, 37.191452, 48.742825>,  <41.849697, 36.809578, 48.684235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953327, 37.191452, 48.742825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624044, -0.281209, 0.729034,
		0.737188, -0.097468, -0.668621,
		0.259079, 0.954684, 0.146479,
		42.031052, 37.477856, 48.786770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555565, 36.817768, 48.694489>,  <41.849697, 36.809578, 48.684235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555565, 36.817768, 48.694489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439995, 37.154682, 48.876514>,  <42.370651, 37.356831, 48.985729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439995, 37.154682, 48.876514>,  <42.555565, 36.817768, 48.694489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439995, 37.154682, 48.876514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489343, -0.278619, 0.826386,
		0.822840, 0.461447, -0.331665,
		-0.288925, 0.842281, 0.455065,
		42.353317, 37.407368, 49.013035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152504, 37.092896, 49.069580>,  <42.555565, 36.817768, 48.694489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152504, 37.092896, 49.069580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.798035, 37.189461, 49.227783>,  <42.585354, 37.247398, 49.322704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.798035, 37.189461, 49.227783>,  <43.152504, 37.092896, 49.069580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798035, 37.189461, 49.227783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238221, -0.494753, 0.835745,
		0.397437, 0.834829, 0.380925,
		-0.886168, 0.241412, 0.395507,
		42.532185, 37.261883, 49.346436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405060, 37.142769, 49.765560>,  <43.152504, 37.092896, 49.069580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405060, 37.142769, 49.765560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.007172, 37.172333, 49.794029>,  <42.768436, 37.190071, 49.811111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.007172, 37.172333, 49.794029>,  <43.405060, 37.142769, 49.765560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007172, 37.172333, 49.794029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048470, -0.272893, 0.960823,
		0.090434, 0.959201, 0.267870,
		-0.994722, 0.073908, 0.071171,
		42.708755, 37.194504, 49.815380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287342, 37.656384, 50.334774>,  <43.405060, 37.142769, 49.765560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287342, 37.656384, 50.334774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.979389, 37.407299, 50.278904>,  <42.794617, 37.257851, 50.245380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.979389, 37.407299, 50.278904>,  <43.287342, 37.656384, 50.334774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979389, 37.407299, 50.278904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047243, -0.162659, 0.985551,
		-0.636431, 0.765360, 0.095810,
		-0.769885, -0.622709, -0.139679,
		42.748425, 37.220486, 50.237000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920143, 37.768631, 50.890186>,  <43.287342, 37.656384, 50.334774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920143, 37.768631, 50.890186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801891, 37.418797, 50.736454>,  <42.730938, 37.208897, 50.644215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801891, 37.418797, 50.736454>,  <42.920143, 37.768631, 50.890186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801891, 37.418797, 50.736454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020579, -0.408046, 0.912729,
		-0.955080, 0.261923, 0.138630,
		-0.295632, -0.874582, -0.384327,
		42.713203, 37.156422, 50.621155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384758, 37.609680, 51.271381>,  <42.920143, 37.768631, 50.890186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384758, 37.609680, 51.271381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573509, 37.282642, 51.139397>,  <42.686760, 37.086418, 51.060207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573509, 37.282642, 51.139397>,  <42.384758, 37.609680, 51.271381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573509, 37.282642, 51.139397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049462, -0.398205, 0.915962,
		-0.880276, -0.415901, -0.228343,
		0.471877, -0.817594, -0.329959,
		42.715073, 37.037365, 51.040409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898342, 37.086052, 51.445980>,  <42.384758, 37.609680, 51.271381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898342, 37.086052, 51.445980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287624, 36.998020, 51.419338>,  <42.521194, 36.945202, 51.403351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287624, 36.998020, 51.419338>,  <41.898342, 37.086052, 51.445980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287624, 36.998020, 51.419338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010252, -0.330921, 0.943603,
		-0.229706, -0.917637, -0.324311,
		0.973206, -0.220076, -0.066607,
		42.579586, 36.931995, 51.399357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320911, 36.626743, 51.511997>,  <41.898342, 37.086052, 51.445980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320911, 36.626743, 51.511997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052849, 36.877110, 51.671555>,  <40.892010, 37.027328, 51.767288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052849, 36.877110, 51.671555>,  <41.320911, 36.626743, 51.511997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052849, 36.877110, 51.671555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329943, 0.230185, -0.915506,
		-0.664848, -0.745149, 0.052255,
		-0.670160, 0.625914, 0.398895,
		40.851799, 37.064884, 51.791222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701702, 36.503147, 51.187172>,  <41.320911, 36.626743, 51.511997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701702, 36.503147, 51.187172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605686, 36.861153, 51.337547>,  <40.548077, 37.075954, 51.427773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.605686, 36.861153, 51.337547>,  <40.701702, 36.503147, 51.187172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605686, 36.861153, 51.337547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511647, 0.212463, -0.832512,
		-0.824984, -0.392183, 0.406932,
		-0.240039, 0.895015, 0.375938,
		40.533676, 37.129658, 51.450329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004620, 36.478352, 51.123257>,  <40.701702, 36.503147, 51.187172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004620, 36.478352, 51.123257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102634, 36.865875, 51.138023>,  <40.161442, 37.098389, 51.146885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.102634, 36.865875, 51.138023>,  <40.004620, 36.478352, 51.123257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102634, 36.865875, 51.138023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553760, 0.171113, -0.814905,
		-0.795806, 0.179238, 0.578417,
		0.245036, 0.968810, 0.036918,
		40.176144, 37.156517, 51.149097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361767, 36.847145, 51.125004>,  <40.004620, 36.478352, 51.123257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361767, 36.847145, 51.125004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646435, 37.094631, 50.991909>,  <39.817234, 37.243122, 50.912052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646435, 37.094631, 50.991909>,  <39.361767, 36.847145, 51.125004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646435, 37.094631, 50.991909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510720, 0.130440, -0.849794,
		-0.482382, 0.774707, 0.408823,
		0.711669, 0.618720, -0.332737,
		39.859936, 37.280247, 50.892090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009876, 37.285149, 50.789436>,  <39.361767, 36.847145, 51.125004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009876, 37.285149, 50.789436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360210, 37.422192, 50.653473>,  <39.570412, 37.504417, 50.571896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360210, 37.422192, 50.653473>,  <39.009876, 37.285149, 50.789436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360210, 37.422192, 50.653473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432864, 0.246227, -0.867180,
		-0.213404, 0.906640, 0.363954,
		0.875835, 0.342603, -0.339906,
		39.622959, 37.524971, 50.551502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943703, 38.011963, 50.617599>,  <39.009876, 37.285149, 50.789436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943703, 38.011963, 50.617599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247536, 37.852139, 50.412315>,  <39.429836, 37.756245, 50.289146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247536, 37.852139, 50.412315>,  <38.943703, 38.011963, 50.617599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247536, 37.852139, 50.412315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442952, 0.259995, -0.858019,
		0.476262, 0.879064, 0.020502,
		0.759584, -0.399560, -0.513209,
		39.475410, 37.732269, 50.258354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955395, 38.389984, 49.950203>,  <38.943703, 38.011963, 50.617599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955395, 38.389984, 49.950203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167301, 38.063484, 49.858040>,  <39.294445, 37.867584, 49.802742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167301, 38.063484, 49.858040>,  <38.955395, 38.389984, 49.950203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167301, 38.063484, 49.858040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211165, 0.136169, -0.967919,
		0.821434, 0.561428, -0.100224,
		0.529770, -0.816245, -0.230408,
		39.326233, 37.818611, 49.788918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262032, 38.617744, 49.408306>,  <38.955395, 38.389984, 49.950203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262032, 38.617744, 49.408306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291069, 38.221386, 49.362949>,  <39.308491, 37.983570, 49.335735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291069, 38.221386, 49.362949>,  <39.262032, 38.617744, 49.408306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291069, 38.221386, 49.362949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044583, 0.116798, -0.992154,
		0.996364, 0.066970, 0.052656,
		0.072595, -0.990895, -0.113388,
		39.312847, 37.924118, 49.328934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784779, 38.514145, 48.920097>,  <39.262032, 38.617744, 49.408306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784779, 38.514145, 48.920097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578018, 38.172588, 48.895813>,  <39.453960, 37.967655, 48.881241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578018, 38.172588, 48.895813>,  <39.784779, 38.514145, 48.920097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578018, 38.172588, 48.895813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061973, 0.033407, -0.997519,
		0.853797, -0.519383, 0.035650,
		-0.516904, -0.853888, -0.060710,
		39.422947, 37.916424, 48.877602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148174, 38.240715, 48.476814>,  <39.784779, 38.514145, 48.920097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148174, 38.240715, 48.476814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800072, 38.043823, 48.484402>,  <39.591209, 37.925690, 48.488956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800072, 38.043823, 48.484402>,  <40.148174, 38.240715, 48.476814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800072, 38.043823, 48.484402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116408, 0.168082, -0.978876,
		0.478643, -0.854083, -0.203575,
		-0.870258, -0.492230, 0.018971,
		39.538994, 37.896152, 48.490093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099850, 37.883881, 47.833138>,  <40.148174, 38.240715, 48.476814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099850, 37.883881, 47.833138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714535, 37.886959, 47.940491>,  <39.483345, 37.888805, 48.004902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714535, 37.886959, 47.940491>,  <40.099850, 37.883881, 47.833138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714535, 37.886959, 47.940491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257649, 0.254661, -0.932076,
		-0.075523, -0.967000, -0.243326,
		-0.963283, 0.007700, 0.268379,
		39.425549, 37.889271, 48.021004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769749, 37.507717, 47.295815>,  <40.099850, 37.883881, 47.833138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769749, 37.507717, 47.295815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.511738, 37.759731, 47.468788>,  <39.356934, 37.910942, 47.572571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.511738, 37.759731, 47.468788>,  <39.769749, 37.507717, 47.295815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511738, 37.759731, 47.468788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261509, 0.349724, -0.899614,
		-0.718024, -0.693356, -0.060819,
		-0.645023, 0.630040, 0.432429,
		39.318230, 37.948742, 47.598518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373116, 37.651024, 46.708538>,  <39.769749, 37.507717, 47.295815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373116, 37.651024, 46.708538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226387, 37.900898, 46.984280>,  <39.138351, 38.050823, 47.149727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226387, 37.900898, 46.984280>,  <39.373116, 37.651024, 46.708538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226387, 37.900898, 46.984280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334028, 0.603155, -0.724313,
		-0.868258, -0.495954, -0.012584,
		-0.366816, 0.624687, 0.689356,
		39.116341, 38.088303, 47.191086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572639, 37.771313, 46.528358>,  <39.373116, 37.651024, 46.708538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572639, 37.771313, 46.528358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747875, 38.065514, 46.735088>,  <38.853016, 38.242035, 46.859127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747875, 38.065514, 46.735088>,  <38.572639, 37.771313, 46.528358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747875, 38.065514, 46.735088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215443, 0.644088, -0.733986,
		-0.872731, 0.210206, 0.440628,
		0.438092, 0.735503, 0.516829,
		38.879303, 38.286163, 46.890137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130264, 38.311047, 46.317978>,  <38.572639, 37.771313, 46.528358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130264, 38.311047, 46.317978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456669, 38.493301, 46.460255>,  <38.652512, 38.602654, 46.545620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456669, 38.493301, 46.460255>,  <38.130264, 38.311047, 46.317978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456669, 38.493301, 46.460255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155151, 0.765423, -0.624544,
		-0.556819, 0.454452, 0.695289,
		0.816016, 0.455633, 0.355693,
		38.701473, 38.629990, 46.566963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974865, 39.041794, 46.345211>,  <38.130264, 38.311047, 46.317978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974865, 39.041794, 46.345211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370094, 39.017872, 46.401966>,  <38.607231, 39.003517, 46.436020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370094, 39.017872, 46.401966>,  <37.974865, 39.041794, 46.345211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370094, 39.017872, 46.401966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149423, 0.594891, -0.789796,
		-0.037174, 0.801579, 0.596733,
		0.988074, -0.059806, 0.141889,
		38.666515, 38.999931, 46.444534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208927, 39.609421, 46.622890>,  <37.974865, 39.041794, 46.345211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208927, 39.609421, 46.622890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525032, 39.477005, 46.416630>,  <38.714695, 39.397556, 46.292873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525032, 39.477005, 46.416630>,  <38.208927, 39.609421, 46.622890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525032, 39.477005, 46.416630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195856, 0.660915, -0.724453,
		0.580628, 0.673500, 0.457458,
		0.790260, -0.331042, -0.515655,
		38.762112, 39.377693, 46.261932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644299, 40.273678, 46.352146>,  <38.208927, 39.609421, 46.622890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644299, 40.273678, 46.352146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706573, 39.951862, 46.122890>,  <38.743938, 39.758774, 45.985336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706573, 39.951862, 46.122890>,  <38.644299, 40.273678, 46.352146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706573, 39.951862, 46.122890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125532, 0.559391, -0.819343,
		0.979798, 0.199508, -0.013905,
		0.155687, -0.804536, -0.573135,
		38.753281, 39.710503, 45.950951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916664, 40.593067, 45.779900>,  <38.644299, 40.273678, 46.352146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916664, 40.593067, 45.779900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805866, 40.237450, 45.634094>,  <38.739388, 40.024078, 45.546612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805866, 40.237450, 45.634094>,  <38.916664, 40.593067, 45.779900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805866, 40.237450, 45.634094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202990, 0.424936, -0.882170,
		0.939185, -0.170365, -0.298173,
		-0.276995, -0.889047, -0.364511,
		38.722767, 39.970734, 45.524742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027363, 40.597580, 45.093960>,  <38.916664, 40.593067, 45.779900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027363, 40.597580, 45.093960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786625, 40.278942, 45.116680>,  <38.642181, 40.087761, 45.130310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786625, 40.278942, 45.116680>,  <39.027363, 40.597580, 45.093960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786625, 40.278942, 45.116680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272866, 0.138273, -0.952063,
		0.750553, -0.588491, -0.300582,
		-0.601843, -0.796592, 0.056798,
		38.606071, 40.039963, 45.133720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.346405, 44.678192, 32.603340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380497, 44.540276, 32.229420>,  <43.400951, 44.457527, 32.005066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380497, 44.540276, 32.229420>,  <43.346405, 44.678192, 32.603340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380497, 44.540276, 32.229420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527924, -0.811319, 0.251114,
		-0.845005, 0.472103, -0.251170,
		0.085227, -0.344791, -0.934802,
		43.406067, 44.436840, 31.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712780, 44.516556, 32.446537>,  <43.346405, 44.678192, 32.603340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712780, 44.516556, 32.446537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962177, 44.305138, 32.216095>,  <43.111816, 44.178288, 32.077827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962177, 44.305138, 32.216095>,  <42.712780, 44.516556, 32.446537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962177, 44.305138, 32.216095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553318, -0.818897, 0.152469,
		-0.552359, 0.223708, -0.803028,
		0.623489, -0.528547, -0.576107,
		43.149223, 44.146572, 32.043262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277866, 43.936714, 32.261948>,  <42.712780, 44.516556, 32.446537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277866, 43.936714, 32.261948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630009, 43.803185, 32.127167>,  <42.841293, 43.723068, 32.046299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630009, 43.803185, 32.127167>,  <42.277866, 43.936714, 32.261948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630009, 43.803185, 32.127167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296579, -0.941814, 0.158203,
		-0.370161, -0.039340, -0.928134,
		0.880353, -0.333826, -0.336956,
		42.894115, 43.703037, 32.026081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067951, 43.400963, 31.749409>,  <42.277866, 43.936714, 32.261948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067951, 43.400963, 31.749409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444874, 43.358624, 31.876434>,  <42.671028, 43.333221, 31.952650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444874, 43.358624, 31.876434>,  <42.067951, 43.400963, 31.749409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444874, 43.358624, 31.876434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144629, -0.984308, 0.101091,
		0.301882, -0.141188, -0.942832,
		0.942311, -0.105844, 0.317565,
		42.727566, 43.326870, 31.971704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290264, 42.835804, 31.337494>,  <42.067951, 43.400963, 31.749409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290264, 42.835804, 31.337494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552448, 42.858746, 31.638712>,  <42.709759, 42.872513, 31.819443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552448, 42.858746, 31.638712>,  <42.290264, 42.835804, 31.337494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552448, 42.858746, 31.638712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070030, -0.988200, 0.136224,
		0.751973, -0.142025, -0.643712,
		0.655463, 0.057358, 0.753046,
		42.749088, 42.875954, 31.864626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757809, 42.369980, 31.311731>,  <42.290264, 42.835804, 31.337494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757809, 42.369980, 31.311731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809677, 42.437592, 31.702549>,  <42.840797, 42.478161, 31.937038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809677, 42.437592, 31.702549>,  <42.757809, 42.369980, 31.311731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809677, 42.437592, 31.702549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128912, -0.979873, 0.152414,
		0.983141, 0.106189, -0.148852,
		0.129671, 0.169034, 0.977043,
		42.848579, 42.488300, 31.995663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256046, 41.952667, 31.433052>,  <42.757809, 42.369980, 31.311731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256046, 41.952667, 31.433052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093441, 42.003323, 31.794983>,  <42.995876, 42.033718, 32.012142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093441, 42.003323, 31.794983>,  <43.256046, 41.952667, 31.433052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093441, 42.003323, 31.794983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037661, -0.991828, 0.121897,
		0.912868, 0.015476, 0.407961,
		-0.406514, 0.126640, 0.904825,
		42.971485, 42.041313, 32.066429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669273, 41.532547, 31.941936>,  <43.256046, 41.952667, 31.433052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669273, 41.532547, 31.941936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321091, 41.600376, 32.126781>,  <43.112183, 41.641075, 32.237690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321091, 41.600376, 32.126781>,  <43.669273, 41.532547, 31.941936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321091, 41.600376, 32.126781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128923, -0.984556, 0.118438,
		0.475060, 0.043518, 0.878876,
		-0.870458, 0.169572, 0.462113,
		43.059952, 41.651249, 32.265415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654160, 41.239128, 32.662823>,  <43.669273, 41.532547, 31.941936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654160, 41.239128, 32.662823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259495, 41.286205, 32.617844>,  <43.022697, 41.314453, 32.590855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259495, 41.286205, 32.617844>,  <43.654160, 41.239128, 32.662823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259495, 41.286205, 32.617844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142153, -0.959557, 0.242986,
		-0.079301, 0.255730, 0.963490,
		-0.986663, 0.117694, -0.112446,
		42.963497, 41.321514, 32.584110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463871, 40.932049, 33.300632>,  <43.654160, 41.239128, 32.662823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463871, 40.932049, 33.300632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157997, 40.920620, 33.043125>,  <42.974472, 40.913761, 32.888622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157997, 40.920620, 33.043125>,  <43.463871, 40.932049, 33.300632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157997, 40.920620, 33.043125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193246, -0.942868, 0.271397,
		-0.614742, 0.331939, 0.715478,
		-0.764688, -0.028576, -0.643766,
		42.928589, 40.912048, 32.849995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948288, 40.789265, 33.685623>,  <43.463871, 40.932049, 33.300632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948288, 40.789265, 33.685623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836151, 40.681435, 33.317116>,  <42.768867, 40.616737, 33.096012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836151, 40.681435, 33.317116>,  <42.948288, 40.789265, 33.685623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836151, 40.681435, 33.317116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160502, -0.933080, 0.321870,
		-0.946387, 0.238098, 0.218313,
		-0.280341, -0.269574, -0.921270,
		42.752048, 40.600563, 33.040733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432301, 40.344116, 33.798401>,  <42.948288, 40.789265, 33.685623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432301, 40.344116, 33.798401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538174, 40.252735, 33.423649>,  <42.601700, 40.197906, 33.198795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538174, 40.252735, 33.423649>,  <42.432301, 40.344116, 33.798401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538174, 40.252735, 33.423649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126516, -0.971364, 0.201113,
		-0.955999, 0.065299, -0.286009,
		0.264687, -0.228448, -0.936885,
		42.617580, 40.184200, 33.142582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955574, 39.889503, 33.585896>,  <42.432301, 40.344116, 33.798401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955574, 39.889503, 33.585896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261570, 39.835178, 33.334068>,  <42.445168, 39.802582, 33.182972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261570, 39.835178, 33.334068>,  <41.955574, 39.889503, 33.585896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261570, 39.835178, 33.334068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130466, -0.989925, 0.055024,
		-0.630694, 0.040044, -0.774998,
		0.764986, -0.135814, -0.629564,
		42.491066, 39.794434, 33.145199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730011, 39.384892, 33.223698>,  <41.955574, 39.889503, 33.585896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730011, 39.384892, 33.223698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120079, 39.387329, 33.135143>,  <42.354118, 39.388790, 33.082008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120079, 39.387329, 33.135143>,  <41.730011, 39.384892, 33.223698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120079, 39.387329, 33.135143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023502, -0.996824, 0.076094,
		-0.220224, -0.079407, -0.972212,
		0.975166, 0.006091, -0.221390,
		42.412628, 39.389156, 33.068726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854774, 38.901192, 32.717648>,  <41.730011, 39.384892, 33.223698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854774, 38.901192, 32.717648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185871, 38.963284, 32.933334>,  <42.384529, 39.000538, 33.062744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185871, 38.963284, 32.933334>,  <41.854774, 38.901192, 32.717648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185871, 38.963284, 32.933334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125704, -0.987847, 0.091412,
		0.546850, -0.007884, -0.837193,
		0.827740, 0.155227, 0.539213,
		42.434193, 39.009853, 33.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259113, 38.413971, 32.457375>,  <41.854774, 38.901192, 32.717648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259113, 38.413971, 32.457375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463276, 38.515381, 32.786060>,  <42.585773, 38.576225, 32.983273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463276, 38.515381, 32.786060>,  <42.259113, 38.413971, 32.457375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463276, 38.515381, 32.786060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232626, -0.960633, 0.151885,
		0.827871, 0.113629, -0.549288,
		0.510406, 0.253520, 0.821713,
		42.616398, 38.591438, 33.032574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715294, 37.868023, 32.456234>,  <42.259113, 38.413971, 32.457375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715294, 37.868023, 32.456234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744034, 38.025478, 32.822815>,  <42.761280, 38.119953, 33.042763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744034, 38.025478, 32.822815>,  <42.715294, 37.868023, 32.456234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744034, 38.025478, 32.822815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136588, -0.914054, 0.381902,
		0.988019, 0.097735, -0.119445,
		0.071854, 0.393641, 0.916452,
		42.765591, 38.143570, 33.097752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297081, 37.478046, 32.713535>,  <42.715294, 37.868023, 32.456234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297081, 37.478046, 32.713535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069267, 37.599140, 33.019211>,  <42.932579, 37.671795, 33.202614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069267, 37.599140, 33.019211>,  <43.297081, 37.478046, 32.713535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069267, 37.599140, 33.019211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090856, -0.900823, 0.424575,
		0.816930, 0.311242, 0.485545,
		-0.569535, 0.302733, 0.764187,
		42.898407, 37.689960, 33.248466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776947, 37.384392, 33.271046>,  <43.297081, 37.478046, 32.713535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776947, 37.384392, 33.271046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394489, 37.424156, 33.381256>,  <43.165016, 37.448013, 33.447384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394489, 37.424156, 33.381256>,  <43.776947, 37.384392, 33.271046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394489, 37.424156, 33.381256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058720, -0.856502, 0.512792,
		0.286963, 0.506480, 0.813099,
		-0.956140, 0.099408, 0.275525,
		43.107647, 37.453979, 33.463913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704136, 37.214485, 34.040390>,  <43.776947, 37.384392, 33.271046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704136, 37.214485, 34.040390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354816, 37.136738, 33.861694>,  <43.145226, 37.090088, 33.754478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354816, 37.136738, 33.861694>,  <43.704136, 37.214485, 34.040390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354816, 37.136738, 33.861694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089778, -0.837060, 0.539696,
		-0.478848, 0.511421, 0.713550,
		-0.873295, -0.194371, -0.446739,
		43.092827, 37.078426, 33.727673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218433, 37.090054, 34.640579>,  <43.704136, 37.214485, 34.040390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218433, 37.090054, 34.640579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068439, 36.923088, 34.309486>,  <42.978443, 36.822906, 34.110828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068439, 36.923088, 34.309486>,  <43.218433, 37.090054, 34.640579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068439, 36.923088, 34.309486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294398, -0.793048, 0.533296,
		-0.879041, 0.443664, 0.174497,
		-0.374989, -0.417418, -0.827735,
		42.955944, 36.797863, 34.061165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880749, 37.161808, 35.039349>,  <43.218433, 37.090054, 34.640579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880749, 37.161808, 35.039349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245556, 37.072083, 35.176697>,  <44.464439, 37.018250, 35.259106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245556, 37.072083, 35.176697>,  <43.880749, 37.161808, 35.039349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245556, 37.072083, 35.176697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344872, 0.872552, -0.346000,
		-0.222001, 0.433979, 0.873142,
		0.912019, -0.224310, 0.343375,
		44.519161, 37.004791, 35.279709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174984, 37.662075, 35.470970>,  <43.880749, 37.161808, 35.039349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174984, 37.662075, 35.470970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459290, 37.471905, 35.263588>,  <44.629871, 37.357803, 35.139160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459290, 37.471905, 35.263588>,  <44.174984, 37.662075, 35.470970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459290, 37.471905, 35.263588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332846, 0.876600, -0.347542,
		0.619705, 0.074455, 0.781296,
		0.710760, -0.475425, -0.518451,
		44.672516, 37.329277, 35.108051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671364, 38.098587, 35.377396>,  <44.174984, 37.662075, 35.470970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671364, 38.098587, 35.377396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778378, 37.834522, 35.096649>,  <44.842587, 37.676083, 34.928204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778378, 37.834522, 35.096649>,  <44.671364, 38.098587, 35.377396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778378, 37.834522, 35.096649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483841, 0.721963, -0.494639,
		0.833261, -0.207256, 0.512564,
		0.267535, -0.660162, -0.701862,
		44.858639, 37.636475, 34.886089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379318, 38.287457, 35.208580>,  <44.671364, 38.098587, 35.377396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379318, 38.287457, 35.208580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279537, 38.062061, 34.893555>,  <45.219669, 37.926823, 34.704540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.279537, 38.062061, 34.893555>,  <45.379318, 38.287457, 35.208580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279537, 38.062061, 34.893555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421694, 0.668909, -0.612156,
		0.871751, -0.484812, 0.070762,
		-0.249448, -0.563487, -0.787564,
		45.204704, 37.893017, 34.657284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995739, 38.361256, 34.761936>,  <45.379318, 38.287457, 35.208580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995739, 38.361256, 34.761936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696976, 38.223869, 34.534195>,  <45.517719, 38.141438, 34.397549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696976, 38.223869, 34.534195>,  <45.995739, 38.361256, 34.761936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696976, 38.223869, 34.534195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365125, 0.503761, -0.782885,
		0.555708, -0.792628, -0.250858,
		-0.746909, -0.343461, -0.569352,
		45.472904, 38.120831, 34.363388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297447, 38.106064, 34.155987>,  <45.995739, 38.361256, 34.761936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297447, 38.106064, 34.155987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918491, 38.201675, 34.070827>,  <45.691120, 38.259041, 34.019733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.918491, 38.201675, 34.070827>,  <46.297447, 38.106064, 34.155987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918491, 38.201675, 34.070827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315754, 0.588713, -0.744121,
		-0.052529, -0.772193, -0.633212,
		-0.947386, 0.239028, -0.212899,
		45.634277, 38.273384, 34.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286919, 38.132652, 33.408684>,  <46.297447, 38.106064, 34.155987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286919, 38.132652, 33.408684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942944, 38.301830, 33.522961>,  <45.736557, 38.403336, 33.591526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942944, 38.301830, 33.522961>,  <46.286919, 38.132652, 33.408684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942944, 38.301830, 33.522961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008174, 0.571085, -0.820850,
		-0.510326, -0.703548, -0.494557,
		-0.859942, 0.422944, 0.285689,
		45.684959, 38.428715, 33.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892086, 38.151562, 32.817348>,  <46.286919, 38.132652, 33.408684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892086, 38.151562, 32.817348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.713852, 38.422302, 33.051727>,  <45.606911, 38.584747, 33.192352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.713852, 38.422302, 33.051727>,  <45.892086, 38.151562, 32.817348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713852, 38.422302, 33.051727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164923, 0.581245, -0.796841,
		-0.879917, -0.451695, -0.147365,
		-0.445585, 0.676850, 0.585943,
		45.580177, 38.625359, 33.227509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279869, 38.335873, 32.404854>,  <45.892086, 38.151562, 32.817348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279869, 38.335873, 32.404854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342625, 38.616737, 32.682663>,  <45.380276, 38.785255, 32.849350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342625, 38.616737, 32.682663>,  <45.279869, 38.335873, 32.404854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342625, 38.616737, 32.682663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199287, 0.711271, -0.674076,
		-0.967301, -0.032657, 0.251519,
		0.156885, 0.702159, 0.694522,
		45.389690, 38.827385, 32.891018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652306, 38.753254, 32.505802>,  <45.279869, 38.335873, 32.404854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652306, 38.753254, 32.505802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975281, 38.963314, 32.613331>,  <45.169067, 39.089348, 32.677849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975281, 38.963314, 32.613331>,  <44.652306, 38.753254, 32.505802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975281, 38.963314, 32.613331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261760, 0.727260, -0.634487,
		-0.528702, 0.441942, 0.724680,
		0.807438, 0.525147, 0.268821,
		45.217514, 39.120857, 32.693977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363220, 39.445587, 32.295109>,  <44.652306, 38.753254, 32.505802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363220, 39.445587, 32.295109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739746, 39.514423, 32.411259>,  <44.965660, 39.555725, 32.480949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739746, 39.514423, 32.411259>,  <44.363220, 39.445587, 32.295109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739746, 39.514423, 32.411259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043146, 0.914557, -0.402149,
		-0.334771, 0.366019, 0.868308,
		0.941311, 0.172092, 0.290375,
		45.022141, 39.566051, 32.498371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371544, 39.974747, 32.768017>,  <44.363220, 39.445587, 32.295109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371544, 39.974747, 32.768017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705994, 39.946690, 32.550404>,  <44.906666, 39.929855, 32.419838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705994, 39.946690, 32.550404>,  <44.371544, 39.974747, 32.768017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705994, 39.946690, 32.550404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070455, 0.969841, -0.233333,
		0.543991, 0.233426, 0.805969,
		0.836128, -0.070147, -0.544031,
		44.956833, 39.925644, 32.387196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473076, 40.633266, 32.679604>,  <44.371544, 39.974747, 32.768017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473076, 40.633266, 32.679604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784466, 40.528893, 32.451256>,  <44.971298, 40.466267, 32.314247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784466, 40.528893, 32.451256>,  <44.473076, 40.633266, 32.679604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784466, 40.528893, 32.451256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044779, 0.930263, -0.364151,
		0.626077, 0.257920, 0.735870,
		0.778474, -0.260938, -0.570867,
		45.018009, 40.450611, 32.279995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997463, 41.033920, 32.859543>,  <44.473076, 40.633266, 32.679604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997463, 41.033920, 32.859543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043621, 40.915077, 32.480404>,  <45.071316, 40.843769, 32.252922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043621, 40.915077, 32.480404>,  <44.997463, 41.033920, 32.859543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043621, 40.915077, 32.480404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031725, 0.952631, -0.302472,
		0.992813, 0.064974, 0.100501,
		0.115393, -0.297110, -0.947845,
		45.078239, 40.825943, 32.196049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308140, 41.691181, 32.502632>,  <44.997463, 41.033920, 32.859543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308140, 41.691181, 32.502632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183800, 41.477562, 32.188137>,  <45.109196, 41.349392, 31.999441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183800, 41.477562, 32.188137>,  <45.308140, 41.691181, 32.502632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183800, 41.477562, 32.188137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060597, 0.836670, -0.544345,
		0.948525, -0.121566, -0.292441,
		-0.310850, -0.534046, -0.786236,
		45.090546, 41.317348, 31.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654354, 42.029339, 31.942745>,  <45.308140, 41.691181, 32.502632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654354, 42.029339, 31.942745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397556, 41.808205, 31.730247>,  <45.243477, 41.675526, 31.602749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397556, 41.808205, 31.730247>,  <45.654354, 42.029339, 31.942745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397556, 41.808205, 31.730247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113288, 0.616885, -0.778858,
		0.758296, -0.560204, -0.333406,
		-0.641992, -0.552834, -0.531245,
		45.204960, 41.642353, 31.570873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882950, 41.699261, 31.313446>,  <45.654354, 42.029339, 31.942745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882950, 41.699261, 31.313446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490784, 41.738369, 31.245068>,  <45.255482, 41.761833, 31.204041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490784, 41.738369, 31.245068>,  <45.882950, 41.699261, 31.313446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490784, 41.738369, 31.245068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196796, 0.454346, -0.868816,
		-0.007277, -0.885444, -0.464690,
		-0.980417, 0.097771, -0.170946,
		45.196659, 41.767700, 31.193783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727848, 41.581841, 30.546637>,  <45.882950, 41.699261, 31.313446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727848, 41.581841, 30.546637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395447, 41.762177, 30.676979>,  <45.196007, 41.870377, 30.755184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395447, 41.762177, 30.676979>,  <45.727848, 41.581841, 30.546637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395447, 41.762177, 30.676979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052165, 0.646362, -0.761246,
		-0.553823, -0.615596, -0.560644,
		-0.830999, 0.450841, 0.325857,
		45.146149, 41.897430, 30.774736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300362, 41.707336, 29.953325>,  <45.727848, 41.581841, 30.546637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300362, 41.707336, 29.953325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183411, 41.949520, 30.249416>,  <45.113239, 42.094830, 30.427071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183411, 41.949520, 30.249416>,  <45.300362, 41.707336, 29.953325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183411, 41.949520, 30.249416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161807, 0.731571, -0.662285,
		-0.942514, -0.313414, -0.115930,
		-0.292381, 0.605455, 0.740228,
		45.095695, 42.131157, 30.471485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620926, 42.017986, 29.678846>,  <45.300362, 41.707336, 29.953325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620926, 42.017986, 29.678846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805454, 42.255402, 29.942633>,  <44.916172, 42.397850, 30.100904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805454, 42.255402, 29.942633>,  <44.620926, 42.017986, 29.678846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805454, 42.255402, 29.942633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085862, 0.709928, -0.699021,
		-0.883067, 0.379098, 0.276544,
		0.461324, 0.593538, 0.659464,
		44.943851, 42.433464, 30.140472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331779, 42.688820, 29.612289>,  <44.620926, 42.017986, 29.678846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331779, 42.688820, 29.612289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701462, 42.690414, 29.765038>,  <44.923271, 42.691372, 29.856686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701462, 42.690414, 29.765038>,  <44.331779, 42.688820, 29.612289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701462, 42.690414, 29.765038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286682, 0.653370, -0.700658,
		-0.252299, 0.757028, 0.602705,
		0.924207, 0.003990, 0.381871,
		44.978725, 42.691612, 29.879599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.291233, 39.188103, 39.521412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947624, 39.080227, 39.695473>,  <40.741459, 39.015503, 39.799908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947624, 39.080227, 39.695473>,  <41.291233, 39.188103, 39.521412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947624, 39.080227, 39.695473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360943, -0.283739, -0.888376,
		0.363053, -0.920196, 0.146395,
		-0.859018, -0.269687, 0.435151,
		40.689919, 38.999321, 39.826019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215328, 38.492260, 39.243153>,  <41.291233, 39.188103, 39.521412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215328, 38.492260, 39.243153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869442, 38.639721, 39.379601>,  <40.661911, 38.728199, 39.461472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869442, 38.639721, 39.379601>,  <41.215328, 38.492260, 39.243153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869442, 38.639721, 39.379601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453517, -0.281211, -0.845720,
		-0.215849, -0.886011, 0.410357,
		-0.864715, 0.368652, 0.341122,
		40.610027, 38.750317, 39.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758945, 37.952557, 39.033226>,  <41.215328, 38.492260, 39.243153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758945, 37.952557, 39.033226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517643, 38.263924, 39.102665>,  <40.372860, 38.450745, 39.144329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517643, 38.263924, 39.102665>,  <40.758945, 37.952557, 39.033226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517643, 38.263924, 39.102665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501287, -0.200782, -0.841664,
		-0.620314, -0.594765, 0.511336,
		-0.603259, 0.778422, 0.173600,
		40.336666, 38.497452, 39.154743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140293, 37.697655, 38.976112>,  <40.758945, 37.952557, 39.033226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140293, 37.697655, 38.976112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093235, 38.089867, 38.913212>,  <40.065002, 38.325191, 38.875473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093235, 38.089867, 38.913212>,  <40.140293, 37.697655, 38.976112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093235, 38.089867, 38.913212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659694, -0.195525, -0.725654,
		-0.742270, 0.018369, 0.669850,
		-0.117643, 0.980526, -0.157250,
		40.057941, 38.384026, 38.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427376, 37.843258, 38.976761>,  <40.140293, 37.697655, 38.976112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427376, 37.843258, 38.976761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576637, 38.152771, 38.772011>,  <39.666195, 38.338478, 38.649162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576637, 38.152771, 38.772011>,  <39.427376, 37.843258, 38.976761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576637, 38.152771, 38.772011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730026, -0.095601, -0.676700,
		-0.572555, 0.626195, 0.529208,
		0.373153, 0.773783, -0.511875,
		39.688583, 38.384907, 38.618446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875305, 38.263599, 38.870831>,  <39.427376, 37.843258, 38.976761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875305, 38.263599, 38.870831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138988, 38.376659, 38.592106>,  <39.297199, 38.444496, 38.424870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138988, 38.376659, 38.592106>,  <38.875305, 38.263599, 38.870831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138988, 38.376659, 38.592106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738024, 0.065624, -0.671576,
		-0.144096, 0.956975, 0.251866,
		0.659210, 0.282654, -0.696814,
		39.336750, 38.461456, 38.383060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533611, 38.766014, 38.506027>,  <38.875305, 38.263599, 38.870831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533611, 38.766014, 38.506027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840466, 38.656876, 38.273800>,  <39.024578, 38.591393, 38.134464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840466, 38.656876, 38.273800>,  <38.533611, 38.766014, 38.506027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840466, 38.656876, 38.273800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581977, 0.084674, -0.808785,
		0.269834, 0.958324, -0.093835,
		0.767132, -0.272847, -0.580570,
		39.070606, 38.575020, 38.099628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529461, 39.217434, 37.927994>,  <38.533611, 38.766014, 38.506027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529461, 39.217434, 37.927994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776268, 38.935516, 37.787964>,  <38.924351, 38.766365, 37.703945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776268, 38.935516, 37.787964>,  <38.529461, 39.217434, 37.927994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776268, 38.935516, 37.787964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394213, 0.108188, -0.912629,
		0.681091, 0.701112, -0.211086,
		0.617018, -0.704796, -0.350073,
		38.961372, 38.724079, 37.682941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978920, 39.441452, 37.439743>,  <38.529461, 39.217434, 37.927994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978920, 39.441452, 37.439743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994633, 39.054657, 37.339035>,  <39.004059, 38.822578, 37.278610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994633, 39.054657, 37.339035>,  <38.978920, 39.441452, 37.439743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994633, 39.054657, 37.339035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209873, 0.238363, -0.948228,
		0.976939, 0.090089, -0.193581,
		0.039282, -0.966989, -0.251773,
		39.006416, 38.764561, 37.263504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228462, 39.442272, 36.793442>,  <38.978920, 39.441452, 37.439743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228462, 39.442272, 36.793442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053940, 39.082367, 36.796547>,  <38.949226, 38.866425, 36.798409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053940, 39.082367, 36.796547>,  <39.228462, 39.442272, 36.793442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053940, 39.082367, 36.796547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433747, 0.202753, -0.877926,
		0.788354, -0.386409, -0.478733,
		-0.436303, -0.899766, 0.007763,
		38.923050, 38.812439, 36.798874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465271, 39.055401, 36.176018>,  <39.228462, 39.442272, 36.793442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465271, 39.055401, 36.176018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105293, 38.912891, 36.276546>,  <38.889305, 38.827385, 36.336864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105293, 38.912891, 36.276546>,  <39.465271, 39.055401, 36.176018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105293, 38.912891, 36.276546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230514, -0.100485, -0.967867,
		0.370078, -0.928964, 0.008305,
		-0.899948, -0.356272, 0.251327,
		38.835308, 38.806011, 36.351944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329678, 38.469093, 35.762779>,  <39.465271, 39.055401, 36.176018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329678, 38.469093, 35.762779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988312, 38.651634, 35.863514>,  <38.783493, 38.761158, 35.923954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988312, 38.651634, 35.863514>,  <39.329678, 38.469093, 35.762779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988312, 38.651634, 35.863514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350998, -0.145976, -0.924928,
		-0.385331, -0.877744, 0.284757,
		-0.853417, 0.456352, 0.251837,
		38.732288, 38.788540, 35.939064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563850, 37.738132, 35.887146>,  <39.329678, 38.469093, 35.762779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563850, 37.738132, 35.887146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264969, 37.488956, 35.979778>,  <39.085640, 37.339451, 36.035358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264969, 37.488956, 35.979778>,  <39.563850, 37.738132, 35.887146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264969, 37.488956, 35.979778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664014, -0.714347, 0.220893,
		0.027826, 0.318826, 0.947405,
		-0.747202, -0.622944, 0.231582,
		39.040810, 37.302074, 36.049252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091114, 37.205612, 35.653343>,  <39.563850, 37.738132, 35.887146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091114, 37.205612, 35.653343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486191, 37.255291, 35.691364>,  <40.723236, 37.285099, 35.714176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486191, 37.255291, 35.691364>,  <40.091114, 37.205612, 35.653343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486191, 37.255291, 35.691364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142934, -0.470212, -0.870902,
		-0.063467, 0.873772, -0.482178,
		0.987695, 0.124193, 0.095049,
		40.782501, 37.292549, 35.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121620, 36.556744, 35.894238>,  <40.091114, 37.205612, 35.653343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121620, 36.556744, 35.894238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309238, 36.265812, 35.693840>,  <40.421810, 36.091251, 35.573601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309238, 36.265812, 35.693840>,  <40.121620, 36.556744, 35.894238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309238, 36.265812, 35.693840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059160, -0.591860, 0.803867,
		-0.881193, -0.347409, -0.320635,
		0.469041, -0.727330, -0.500990,
		40.449951, 36.047611, 35.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767017, 35.978813, 36.067387>,  <40.121620, 36.556744, 35.894238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767017, 35.978813, 36.067387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127296, 35.850788, 35.949879>,  <40.343464, 35.773972, 35.879372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127296, 35.850788, 35.949879>,  <39.767017, 35.978813, 36.067387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127296, 35.850788, 35.949879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053549, -0.589259, 0.806167,
		-0.431133, -0.741845, -0.513606,
		0.900698, -0.320062, -0.293774,
		40.397507, 35.754768, 35.861748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823914, 35.279160, 36.317451>,  <39.767017, 35.978813, 36.067387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823914, 35.279160, 36.317451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189838, 35.427399, 36.253227>,  <40.409393, 35.516342, 36.214695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189838, 35.427399, 36.253227>,  <39.823914, 35.279160, 36.317451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189838, 35.427399, 36.253227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313573, -0.401184, 0.860653,
		0.254542, -0.837681, -0.483217,
		0.914811, 0.370596, -0.160556,
		40.464283, 35.538578, 36.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322765, 34.731628, 36.194683>,  <39.823914, 35.279160, 36.317451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322765, 34.731628, 36.194683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528191, 35.035950, 36.353394>,  <40.651447, 35.218544, 36.448620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528191, 35.035950, 36.353394>,  <40.322765, 34.731628, 36.194683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528191, 35.035950, 36.353394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049784, -0.488052, 0.871394,
		0.856607, -0.427762, -0.288521,
		0.513562, 0.760805, 0.396774,
		40.682259, 35.264191, 36.472427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914421, 34.390652, 36.495346>,  <40.322765, 34.731628, 36.194683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914421, 34.390652, 36.495346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903202, 34.759995, 36.648514>,  <40.896473, 34.981602, 36.740414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903202, 34.759995, 36.648514>,  <40.914421, 34.390652, 36.495346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903202, 34.759995, 36.648514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158088, -0.374151, 0.913794,
		0.987027, 0.086163, -0.135478,
		-0.028046, 0.923356, 0.382919,
		40.894787, 35.037003, 36.763390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454834, 34.515045, 37.072659>,  <40.914421, 34.390652, 36.495346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454834, 34.515045, 37.072659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182156, 34.792606, 37.165421>,  <41.018547, 34.959145, 37.221077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182156, 34.792606, 37.165421>,  <41.454834, 34.515045, 37.072659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182156, 34.792606, 37.165421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015610, -0.330689, 0.943611,
		0.731466, 0.639639, 0.236262,
		-0.681700, 0.693907, 0.231903,
		40.977646, 35.000778, 37.234993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507252, 34.469265, 37.736923>,  <41.454834, 34.515045, 37.072659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507252, 34.469265, 37.736923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205673, 34.727264, 37.687054>,  <41.024727, 34.882065, 37.657131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205673, 34.727264, 37.687054>,  <41.507252, 34.469265, 37.736923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205673, 34.727264, 37.687054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166486, -0.004013, 0.986036,
		0.635496, 0.764170, 0.110410,
		-0.753942, 0.645003, -0.124673,
		40.979492, 34.920765, 37.649651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490299, 35.007244, 38.291553>,  <41.507252, 34.469265, 37.736923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490299, 35.007244, 38.291553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115993, 35.012531, 38.150608>,  <40.891411, 35.015701, 38.066040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115993, 35.012531, 38.150608>,  <41.490299, 35.007244, 38.291553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115993, 35.012531, 38.150608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352407, -0.000688, 0.935847,
		0.012125, 0.999913, 0.005301,
		-0.935768, 0.013216, -0.352368,
		40.835262, 35.016495, 38.044899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207417, 35.618954, 38.593689>,  <41.490299, 35.007244, 38.291553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207417, 35.618954, 38.593689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893856, 35.392639, 38.491409>,  <40.705719, 35.256851, 38.430042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893856, 35.392639, 38.491409>,  <41.207417, 35.618954, 38.593689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893856, 35.392639, 38.491409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377893, 0.108008, 0.919527,
		-0.492635, 0.817449, -0.298474,
		-0.783905, -0.565783, -0.255700,
		40.658684, 35.222904, 38.414700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508915, 35.885571, 38.781364>,  <41.207417, 35.618954, 38.593689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508915, 35.885571, 38.781364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441307, 35.492916, 38.745960>,  <40.400742, 35.257324, 38.724720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441307, 35.492916, 38.745960>,  <40.508915, 35.885571, 38.781364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441307, 35.492916, 38.745960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515873, 0.011590, 0.856587,
		-0.839827, 0.190435, -0.508355,
		-0.169016, -0.981631, -0.088507,
		40.390602, 35.198425, 38.719410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888924, 35.773235, 38.947937>,  <40.508915, 35.885571, 38.781364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888924, 35.773235, 38.947937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009895, 35.399139, 39.021534>,  <40.082478, 35.174683, 39.065693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009895, 35.399139, 39.021534>,  <39.888924, 35.773235, 38.947937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009895, 35.399139, 39.021534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622626, -0.047680, 0.781066,
		-0.721714, -0.350780, -0.596727,
		0.302434, -0.935244, 0.183993,
		40.100624, 35.118565, 39.076733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317070, 35.346386, 39.190910>,  <39.888924, 35.773235, 38.947937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317070, 35.346386, 39.190910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633652, 35.127895, 39.300629>,  <39.823601, 34.996803, 39.366459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633652, 35.127895, 39.300629>,  <39.317070, 35.346386, 39.190910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633652, 35.127895, 39.300629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454149, -0.225171, 0.862002,
		-0.409082, -0.806807, -0.426280,
		0.791455, -0.546224, 0.274297,
		39.871090, 34.964027, 39.382919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042328, 34.819565, 39.691849>,  <39.317070, 35.346386, 39.190910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042328, 34.819565, 39.691849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435940, 34.825314, 39.762821>,  <39.672108, 34.828762, 39.805405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435940, 34.825314, 39.762821>,  <39.042328, 34.819565, 39.691849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435940, 34.825314, 39.762821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175017, -0.103906, 0.979067,
		0.032505, -0.994483, -0.099732,
		0.984029, 0.014370, 0.177429,
		39.731148, 34.829624, 39.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162224, 34.281765, 40.124992>,  <39.042328, 34.819565, 39.691849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162224, 34.281765, 40.124992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477768, 34.519512, 40.187523>,  <39.667095, 34.662159, 40.225040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477768, 34.519512, 40.187523>,  <39.162224, 34.281765, 40.124992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477768, 34.519512, 40.187523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129836, -0.087444, 0.987672,
		0.600707, -0.799427, 0.008189,
		0.788856, 0.594365, 0.156322,
		39.714424, 34.697823, 40.234421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090431, 33.584713, 39.954922>,  <39.162224, 34.281765, 40.124992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090431, 33.584713, 39.954922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834896, 33.277252, 39.967968>,  <38.681576, 33.092777, 39.975796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834896, 33.277252, 39.967968>,  <39.090431, 33.584713, 39.954922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834896, 33.277252, 39.967968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458424, 0.346271, -0.818501,
		0.617844, -0.537844, -0.573578,
		-0.638839, -0.768648, 0.032620,
		38.643246, 33.046658, 39.977753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079601, 33.449169, 39.299587>,  <39.090431, 33.584713, 39.954922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079601, 33.449169, 39.299587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748859, 33.291843, 39.460392>,  <38.550415, 33.197449, 39.556873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748859, 33.291843, 39.460392>,  <39.079601, 33.449169, 39.299587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748859, 33.291843, 39.460392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555511, 0.459527, -0.692995,
		0.087832, -0.796328, -0.598454,
		-0.826857, -0.393315, 0.402008,
		38.500801, 33.173847, 39.580994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730183, 33.101986, 38.700317>,  <39.079601, 33.449169, 39.299587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730183, 33.101986, 38.700317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441544, 33.156681, 38.971786>,  <38.268360, 33.189499, 39.134666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441544, 33.156681, 38.971786>,  <38.730183, 33.101986, 38.700317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441544, 33.156681, 38.971786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595310, 0.377863, -0.709102,
		-0.353408, -0.915708, -0.191263,
		-0.721602, 0.136741, 0.678670,
		38.225063, 33.197704, 39.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117329, 32.775372, 38.454548>,  <38.730183, 33.101986, 38.700317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117329, 32.775372, 38.454548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999161, 33.040024, 38.730225>,  <37.928261, 33.198814, 38.895630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999161, 33.040024, 38.730225>,  <38.117329, 32.775372, 38.454548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999161, 33.040024, 38.730225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741957, 0.295565, -0.601782,
		-0.601854, -0.689124, 0.403583,
		-0.295417, 0.661626, 0.689188,
		37.910534, 33.238510, 38.936981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373516, 32.819870, 38.357891>,  <38.117329, 32.775372, 38.454548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373516, 32.819870, 38.357891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449913, 33.141869, 38.582573>,  <37.495750, 33.335068, 38.717381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449913, 33.141869, 38.582573>,  <37.373516, 32.819870, 38.357891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449913, 33.141869, 38.582573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702870, 0.511604, -0.494202,
		-0.685198, -0.300415, 0.663517,
		0.190992, 0.804992, 0.561703,
		37.507210, 33.383366, 38.751083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723831, 33.099888, 38.616425>,  <37.373516, 32.819870, 38.357891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723831, 33.099888, 38.616425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985245, 33.402637, 38.613918>,  <37.142094, 33.584286, 38.612415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985245, 33.402637, 38.613918>,  <36.723831, 33.099888, 38.616425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985245, 33.402637, 38.613918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703100, 0.603998, -0.375281,
		-0.280255, 0.249665, 0.926890,
		0.653535, 0.756871, -0.006266,
		37.181305, 33.629700, 38.612038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347481, 33.739143, 38.769615>,  <36.723831, 33.099888, 38.616425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347481, 33.739143, 38.769615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692379, 33.852184, 38.601486>,  <36.899319, 33.920010, 38.500607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692379, 33.852184, 38.601486>,  <36.347481, 33.739143, 38.769615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692379, 33.852184, 38.601486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464212, 0.772871, -0.432641,
		0.202591, 0.568162, 0.797590,
		0.862243, 0.282602, -0.420325,
		36.951054, 33.936966, 38.475388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282505, 34.365353, 38.794189>,  <36.347481, 33.739143, 38.769615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282505, 34.365353, 38.794189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612286, 34.369843, 38.567860>,  <36.810154, 34.372536, 38.432064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612286, 34.369843, 38.567860>,  <36.282505, 34.365353, 38.794189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612286, 34.369843, 38.567860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319272, 0.834734, -0.448648,
		0.467272, 0.550540, 0.691783,
		0.824453, 0.011226, -0.565820,
		36.859623, 34.373211, 38.398113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712002, 35.018353, 38.934933>,  <36.282505, 34.365353, 38.794189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712002, 35.018353, 38.934933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775898, 34.884037, 38.563614>,  <36.814236, 34.803448, 38.340824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775898, 34.884037, 38.563614>,  <36.712002, 35.018353, 38.934933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775898, 34.884037, 38.563614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402896, 0.836306, -0.371844,
		0.901198, 0.433404, -0.001698,
		0.159738, -0.335789, -0.928294,
		36.823818, 34.783298, 38.285126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950264, 35.657841, 38.507099>,  <36.712002, 35.018353, 38.934933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950264, 35.657841, 38.507099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810337, 35.376015, 38.260124>,  <36.726383, 35.206921, 38.111938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810337, 35.376015, 38.260124>,  <36.950264, 35.657841, 38.507099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810337, 35.376015, 38.260124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460188, 0.703310, -0.541832,
		0.816001, 0.094595, -0.570258,
		-0.349814, -0.704561, -0.617433,
		36.705391, 35.164646, 38.074894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034039, 35.968136, 37.795574>,  <36.950264, 35.657841, 38.507099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034039, 35.968136, 37.795574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773022, 35.676041, 37.714634>,  <36.616413, 35.500782, 37.666069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773022, 35.676041, 37.714634>,  <37.034039, 35.968136, 37.795574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773022, 35.676041, 37.714634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453301, 0.590169, -0.667996,
		0.607221, -0.344163, -0.716124,
		-0.652534, -0.730242, -0.202354,
		36.577259, 35.456970, 37.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005627, 35.910042, 37.023560>,  <37.034039, 35.968136, 37.795574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005627, 35.910042, 37.023560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667309, 35.740089, 37.152618>,  <36.464317, 35.638119, 37.230053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667309, 35.740089, 37.152618>,  <37.005627, 35.910042, 37.023560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667309, 35.740089, 37.152618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509774, 0.465273, -0.723638,
		0.157338, -0.776530, -0.610119,
		-0.845799, -0.424878, 0.322650,
		36.413570, 35.612625, 37.249413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.916653, 31.983717, 42.958660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524357, 31.998833, 43.035309>,  <40.288979, 32.007904, 43.081299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524357, 31.998833, 43.035309>,  <40.916653, 31.983717, 42.958660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524357, 31.998833, 43.035309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194931, -0.250850, -0.948196,
		0.012236, -0.967288, 0.253385,
		-0.980741, 0.037790, 0.191624,
		40.230133, 32.010170, 43.092796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738235, 31.496450, 42.559669>,  <40.916653, 31.983717, 42.958660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738235, 31.496450, 42.559669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415833, 31.721968, 42.631775>,  <40.222393, 31.857277, 42.675037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415833, 31.721968, 42.631775>,  <40.738235, 31.496450, 42.559669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415833, 31.721968, 42.631775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291316, -0.112726, -0.949962,
		-0.515260, -0.818188, 0.255100,
		-0.806004, 0.563792, 0.180268,
		40.174030, 31.891106, 42.685856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108879, 31.124397, 42.283501>,  <40.738235, 31.496450, 42.559669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108879, 31.124397, 42.283501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986069, 31.504173, 42.309715>,  <39.912384, 31.732038, 42.325443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986069, 31.504173, 42.309715>,  <40.108879, 31.124397, 42.283501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986069, 31.504173, 42.309715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450890, -0.084469, -0.888574,
		-0.838113, -0.302367, 0.454028,
		-0.307027, 0.949441, 0.065540,
		39.893959, 31.789005, 42.329376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435265, 31.127453, 42.048676>,  <40.108879, 31.124397, 42.283501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435265, 31.127453, 42.048676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575077, 31.500450, 42.012260>,  <39.658962, 31.724249, 41.990414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575077, 31.500450, 42.012260>,  <39.435265, 31.127453, 42.048676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575077, 31.500450, 42.012260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321108, 0.027948, -0.946630,
		-0.880182, 0.360105, 0.309199,
		0.349528, 0.932493, -0.091034,
		39.679935, 31.780197, 41.984951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914993, 31.397840, 41.712933>,  <39.435265, 31.127453, 42.048676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914993, 31.397840, 41.712933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172821, 31.702002, 41.681137>,  <39.327518, 31.884499, 41.662060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172821, 31.702002, 41.681137>,  <38.914993, 31.397840, 41.712933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172821, 31.702002, 41.681137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520119, 0.359917, -0.774555,
		-0.560366, 0.540597, 0.627492,
		0.644567, 0.760405, -0.079490,
		39.366192, 31.930122, 41.657291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510159, 32.037598, 41.656326>,  <38.914993, 31.397840, 41.712933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510159, 32.037598, 41.656326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866558, 32.160343, 41.522484>,  <39.080399, 32.233990, 41.442177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866558, 32.160343, 41.522484>,  <38.510159, 32.037598, 41.656326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866558, 32.160343, 41.522484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440528, 0.406052, -0.800660,
		-0.109823, 0.860789, 0.496971,
		0.890996, 0.306860, -0.334608,
		39.133858, 32.252399, 41.422100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483658, 32.841225, 41.615063>,  <38.510159, 32.037598, 41.656326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483658, 32.841225, 41.615063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723816, 32.658894, 41.352230>,  <38.867908, 32.549496, 41.194530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723816, 32.658894, 41.352230>,  <38.483658, 32.841225, 41.615063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723816, 32.658894, 41.352230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525941, 0.393890, -0.753815,
		0.602425, 0.798169, -0.003249,
		0.600391, -0.455826, -0.657079,
		38.903934, 32.522144, 41.155106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362541, 33.211006, 41.100105>,  <38.483658, 32.841225, 41.615063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362541, 33.211006, 41.100105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600250, 32.951874, 40.909458>,  <38.742874, 32.796394, 40.795071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600250, 32.951874, 40.909458>,  <38.362541, 33.211006, 41.100105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600250, 32.951874, 40.909458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372812, 0.303205, -0.876971,
		0.712637, 0.698847, -0.061331,
		0.594272, -0.647827, -0.476613,
		38.778530, 32.757526, 40.766476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861328, 33.640453, 40.683857>,  <38.362541, 33.211006, 41.100105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861328, 33.640453, 40.683857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801170, 33.277435, 40.527020>,  <38.765076, 33.059624, 40.432919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801170, 33.277435, 40.527020>,  <38.861328, 33.640453, 40.683857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801170, 33.277435, 40.527020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423361, 0.417519, -0.804017,
		0.893390, 0.045074, -0.447014,
		-0.150397, -0.907550, -0.392090,
		38.756050, 33.005169, 40.409393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469273, 34.090179, 40.835415>,  <38.861328, 33.640453, 40.683857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469273, 34.090179, 40.835415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665714, 34.434204, 40.780121>,  <39.783581, 34.640617, 40.746944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665714, 34.434204, 40.780121>,  <39.469273, 34.090179, 40.835415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665714, 34.434204, 40.780121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327701, -0.035377, 0.944119,
		0.807111, -0.508960, -0.299217,
		0.491104, 0.860063, -0.138234,
		39.813046, 34.692223, 40.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126831, 33.980476, 41.039463>,  <39.469273, 34.090179, 40.835415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126831, 33.980476, 41.039463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.076450, 34.376167, 41.069309>,  <40.046223, 34.613583, 41.087219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.076450, 34.376167, 41.069309>,  <40.126831, 33.980476, 41.039463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076450, 34.376167, 41.069309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466156, -0.007379, 0.884672,
		0.875691, 0.146207, -0.460205,
		-0.125950, 0.989227, 0.074617,
		40.038666, 34.672935, 41.091694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824055, 34.301315, 41.352215>,  <40.126831, 33.980476, 41.039463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824055, 34.301315, 41.352215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.551643, 34.587891, 41.412754>,  <40.388195, 34.759838, 41.449078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.551643, 34.587891, 41.412754>,  <40.824055, 34.301315, 41.352215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551643, 34.587891, 41.412754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203188, -0.013673, 0.979044,
		0.703499, 0.697512, -0.136261,
		-0.681032, 0.716443, 0.151345,
		40.347332, 34.802822, 41.458157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166363, 34.830399, 41.727551>,  <40.824055, 34.301315, 41.352215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166363, 34.830399, 41.727551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.773640, 34.860214, 41.797398>,  <40.538006, 34.878101, 41.839306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.773640, 34.860214, 41.797398>,  <41.166363, 34.830399, 41.727551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773640, 34.860214, 41.797398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172703, -0.031417, 0.984473,
		0.078864, 0.996723, 0.017973,
		-0.981812, 0.074535, 0.174615,
		40.479095, 34.882576, 41.849781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152287, 35.340584, 42.260334>,  <41.166363, 34.830399, 41.727551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152287, 35.340584, 42.260334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799435, 35.153122, 42.241550>,  <40.587723, 35.040646, 42.230278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799435, 35.153122, 42.241550>,  <41.152287, 35.340584, 42.260334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799435, 35.153122, 42.241550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015940, -0.069945, 0.997424,
		-0.470734, 0.880607, 0.054230,
		-0.882131, -0.468657, -0.046962,
		40.534794, 35.012524, 42.227463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703239, 35.791031, 42.633804>,  <41.152287, 35.340584, 42.260334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703239, 35.791031, 42.633804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.537960, 35.426800, 42.638126>,  <40.438793, 35.208263, 42.640720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.537960, 35.426800, 42.638126>,  <40.703239, 35.791031, 42.633804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537960, 35.426800, 42.638126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153937, 0.081539, 0.984711,
		-0.897534, 0.405221, -0.173863,
		-0.413202, -0.910575, 0.010806,
		40.413998, 35.153625, 42.641369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321148, 35.764500, 43.227139>,  <40.703239, 35.791031, 42.633804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321148, 35.764500, 43.227139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324726, 35.374516, 43.138252>,  <40.326874, 35.140526, 43.084923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324726, 35.374516, 43.138252>,  <40.321148, 35.764500, 43.227139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324726, 35.374516, 43.138252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065734, -0.222314, 0.972757,
		-0.997797, 0.005906, -0.066076,
		0.008945, -0.974957, -0.222213,
		40.327408, 35.082027, 43.071587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801159, 35.430737, 43.592407>,  <40.321148, 35.764500, 43.227139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801159, 35.430737, 43.592407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.092232, 35.166306, 43.519245>,  <40.266876, 35.007645, 43.475349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.092232, 35.166306, 43.519245>,  <39.801159, 35.430737, 43.592407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092232, 35.166306, 43.519245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130829, -0.127992, 0.983108,
		-0.673325, -0.739317, -0.006648,
		0.727679, -0.661082, -0.182904,
		40.310535, 34.967979, 43.464375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739746, 35.021236, 44.215302>,  <39.801159, 35.430737, 43.592407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739746, 35.021236, 44.215302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065624, 34.870487, 44.039005>,  <40.261150, 34.780037, 43.933228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065624, 34.870487, 44.039005>,  <39.739746, 35.021236, 44.215302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065624, 34.870487, 44.039005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321046, -0.339801, 0.884005,
		-0.482919, -0.861686, -0.155840,
		0.814690, -0.376870, -0.440737,
		40.310032, 34.757427, 43.906784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804131, 34.332840, 44.448914>,  <39.739746, 35.021236, 44.215302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804131, 34.332840, 44.448914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176636, 34.437885, 44.347893>,  <40.400139, 34.500912, 44.287281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176636, 34.437885, 44.347893>,  <39.804131, 34.332840, 44.448914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176636, 34.437885, 44.347893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310081, -0.207300, 0.927834,
		0.191310, -0.942369, -0.274483,
		0.931263, 0.262616, -0.252553,
		40.456013, 34.516670, 44.272125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217434, 33.775345, 44.693489>,  <39.804131, 34.332840, 44.448914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217434, 33.775345, 44.693489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484493, 34.065777, 44.627705>,  <40.644730, 34.240036, 44.588234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484493, 34.065777, 44.627705>,  <40.217434, 33.775345, 44.693489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484493, 34.065777, 44.627705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568261, -0.354308, 0.742661,
		0.480962, -0.589296, -0.649158,
		0.667649, 0.726083, -0.164465,
		40.684788, 34.283600, 44.578365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859505, 33.455654, 44.720741>,  <40.217434, 33.775345, 44.693489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859505, 33.455654, 44.720741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898418, 33.842316, 44.815498>,  <40.921768, 34.074314, 44.872353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898418, 33.842316, 44.815498>,  <40.859505, 33.455654, 44.720741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898418, 33.842316, 44.815498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627548, -0.244318, 0.739251,
		0.772476, 0.076740, -0.630390,
		0.097286, 0.966654, 0.236888,
		40.927605, 34.132313, 44.886566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480328, 33.414158, 45.064617>,  <40.859505, 33.455654, 44.720741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480328, 33.414158, 45.064617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341496, 33.781166, 45.142284>,  <41.258198, 34.001369, 45.188885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341496, 33.781166, 45.142284>,  <41.480328, 33.414158, 45.064617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341496, 33.781166, 45.142284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574028, 0.044113, 0.817647,
		0.741639, 0.395243, -0.541991,
		-0.347079, 0.917517, 0.194165,
		41.237373, 34.056419, 45.200535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065186, 34.027451, 45.303379>,  <41.480328, 33.414158, 45.064617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065186, 34.027451, 45.303379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726330, 34.207722, 45.415974>,  <41.523014, 34.315884, 45.483532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.726330, 34.207722, 45.415974>,  <42.065186, 34.027451, 45.303379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726330, 34.207722, 45.415974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396732, 0.184050, 0.899294,
		0.353483, 0.873508, -0.334715,
		-0.847144, 0.450677, 0.281490,
		41.472187, 34.342926, 45.500420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.380360, 37.161095, 46.953480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656380, 36.919453, 46.794033>,  <36.821991, 36.774467, 46.698364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656380, 36.919453, 46.794033>,  <36.380360, 37.161095, 46.953480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656380, 36.919453, 46.794033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150082, 0.419353, -0.895332,
		0.708032, 0.677647, 0.198709,
		0.690048, -0.604100, -0.398618,
		36.863396, 36.738224, 46.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646950, 37.570644, 46.437317>,  <36.380360, 37.161095, 46.953480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646950, 37.570644, 46.437317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797283, 37.212536, 46.341618>,  <36.887482, 36.997669, 46.284199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797283, 37.212536, 46.341618>,  <36.646950, 37.570644, 46.437317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797283, 37.212536, 46.341618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079406, 0.288340, -0.954230,
		0.923280, 0.339632, 0.179457,
		0.375832, -0.895271, -0.239249,
		36.910034, 36.943954, 46.269844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251377, 37.728924, 46.140301>,  <36.646950, 37.570644, 46.437317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251377, 37.728924, 46.140301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103817, 37.376549, 46.021729>,  <37.015282, 37.165123, 45.950584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103817, 37.376549, 46.021729>,  <37.251377, 37.728924, 46.140301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103817, 37.376549, 46.021729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012523, 0.323605, -0.946110,
		0.929385, -0.345306, -0.130409,
		-0.368899, -0.880933, -0.296429,
		36.993149, 37.112270, 45.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562485, 37.532600, 45.436783>,  <37.251377, 37.728924, 46.140301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562485, 37.532600, 45.436783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230293, 37.312733, 45.472942>,  <37.030979, 37.180813, 45.494637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230293, 37.312733, 45.472942>,  <37.562485, 37.532600, 45.436783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230293, 37.312733, 45.472942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170789, 0.096784, -0.980543,
		0.530227, -0.829756, -0.174255,
		-0.830477, -0.549670, 0.090396,
		36.981152, 37.147831, 45.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612652, 37.066692, 44.798580>,  <37.562485, 37.532600, 45.436783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612652, 37.066692, 44.798580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232983, 37.040897, 44.921810>,  <37.005180, 37.025421, 44.995747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232983, 37.040897, 44.921810>,  <37.612652, 37.066692, 44.798580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232983, 37.040897, 44.921810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302639, -0.081917, -0.949579,
		0.086477, -0.994550, 0.058236,
		-0.949174, -0.064492, 0.308073,
		36.948231, 37.021549, 45.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347538, 36.589878, 44.403034>,  <37.612652, 37.066692, 44.798580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347538, 36.589878, 44.403034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028828, 36.796982, 44.527657>,  <36.837601, 36.921246, 44.602428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028828, 36.796982, 44.527657>,  <37.347538, 36.589878, 44.403034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028828, 36.796982, 44.527657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393605, -0.053488, -0.917722,
		-0.458497, -0.853851, 0.246412,
		-0.796778, 0.517762, 0.311556,
		36.789795, 36.952309, 44.621124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691357, 36.230293, 44.080868>,  <37.347538, 36.589878, 44.403034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691357, 36.230293, 44.080868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601025, 36.605808, 44.184933>,  <36.546825, 36.831116, 44.247372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.601025, 36.605808, 44.184933>,  <36.691357, 36.230293, 44.080868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601025, 36.605808, 44.184933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509754, 0.113698, -0.852774,
		-0.830150, -0.325203, 0.452872,
		-0.225834, 0.938784, 0.260160,
		36.533276, 36.887444, 44.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896530, 36.276752, 44.033424>,  <36.691357, 36.230293, 44.080868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896530, 36.276752, 44.033424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048054, 36.644783, 43.993492>,  <36.138966, 36.865601, 43.969532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048054, 36.644783, 43.993492>,  <35.896530, 36.276752, 44.033424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048054, 36.644783, 43.993492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503484, 0.114371, -0.856401,
		-0.776537, 0.374672, 0.506568,
		0.378806, 0.920076, -0.099828,
		36.161697, 36.920807, 43.963543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360577, 36.680328, 43.867973>,  <35.896530, 36.276752, 44.033424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360577, 36.680328, 43.867973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678535, 36.899250, 43.763203>,  <35.869308, 37.030602, 43.700340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678535, 36.899250, 43.763203>,  <35.360577, 36.680328, 43.867973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678535, 36.899250, 43.763203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491399, 0.327481, -0.807022,
		-0.355912, 0.770204, 0.529257,
		0.794893, 0.547304, -0.261923,
		35.917004, 37.063442, 43.684628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137005, 37.223167, 43.502464>,  <35.360577, 36.680328, 43.867973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137005, 37.223167, 43.502464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507973, 37.322506, 43.390598>,  <35.730553, 37.382107, 43.323479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507973, 37.322506, 43.390598>,  <35.137005, 37.223167, 43.502464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507973, 37.322506, 43.390598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360580, 0.395079, -0.844923,
		-0.099341, 0.884443, 0.455953,
		0.927423, 0.248343, -0.279665,
		35.786201, 37.397011, 43.306698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140194, 37.924789, 43.334278>,  <35.137005, 37.223167, 43.502464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140194, 37.924789, 43.334278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453331, 37.769714, 43.139606>,  <35.641212, 37.676670, 43.022804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453331, 37.769714, 43.139606>,  <35.140194, 37.924789, 43.334278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453331, 37.769714, 43.139606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226004, 0.551582, -0.802919,
		0.579724, 0.738551, 0.344183,
		0.782842, -0.387685, -0.486681,
		35.688183, 37.653408, 42.993603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462387, 38.529793, 43.155499>,  <35.140194, 37.924789, 43.334278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462387, 38.529793, 43.155499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587948, 38.230003, 42.922344>,  <35.663284, 38.050129, 42.782452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587948, 38.230003, 42.922344>,  <35.462387, 38.529793, 43.155499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587948, 38.230003, 42.922344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202895, 0.546788, -0.812315,
		0.927523, 0.373254, 0.019575,
		0.313903, -0.749469, -0.582890,
		35.682117, 38.005161, 42.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916458, 38.746170, 42.627731>,  <35.462387, 38.529793, 43.155499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916458, 38.746170, 42.627731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755299, 38.409065, 42.484943>,  <35.658604, 38.206802, 42.399273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755299, 38.409065, 42.484943>,  <35.916458, 38.746170, 42.627731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755299, 38.409065, 42.484943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179815, 0.455311, -0.871985,
		0.897406, -0.287135, -0.334986,
		-0.402901, -0.842761, -0.356968,
		35.634430, 38.156239, 42.377853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112724, 38.738125, 41.844620>,  <35.916458, 38.746170, 42.627731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112724, 38.738125, 41.844620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803291, 38.496628, 41.921623>,  <35.617630, 38.351730, 41.967823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803291, 38.496628, 41.921623>,  <36.112724, 38.738125, 41.844620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803291, 38.496628, 41.921623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468576, 0.340471, -0.815179,
		0.426616, -0.720815, -0.546283,
		-0.773586, -0.603743, 0.192506,
		35.571217, 38.315506, 41.979374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712513, 38.729362, 41.291557>,  <36.112724, 38.738125, 41.844620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712513, 38.729362, 41.291557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828156, 39.112225, 41.284992>,  <36.897541, 39.341942, 41.281052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828156, 39.112225, 41.284992>,  <36.712513, 38.729362, 41.291557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828156, 39.112225, 41.284992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082577, -0.007852, 0.996554,
		0.953728, -0.289470, -0.081309,
		0.289110, 0.957155, -0.016415,
		36.914890, 39.399372, 41.280067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277225, 38.708229, 41.652431>,  <36.712513, 38.729362, 41.291557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277225, 38.708229, 41.652431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150379, 39.087570, 41.655685>,  <37.074272, 39.315174, 41.657639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.150379, 39.087570, 41.655685>,  <37.277225, 38.708229, 41.652431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150379, 39.087570, 41.655685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201928, 0.059137, 0.977613,
		0.926639, 0.311663, -0.210252,
		-0.317119, 0.948351, 0.008135,
		37.055244, 39.372074, 41.658127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663898, 38.959335, 42.244255>,  <37.277225, 38.708229, 41.652431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663898, 38.959335, 42.244255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435471, 39.277252, 42.162109>,  <37.298412, 39.468002, 42.112823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435471, 39.277252, 42.162109>,  <37.663898, 38.959335, 42.244255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435471, 39.277252, 42.162109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339598, 0.456495, 0.822366,
		0.747361, 0.399890, -0.530603,
		-0.571073, 0.794796, -0.205365,
		37.264149, 39.515690, 42.100498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198643, 39.557663, 42.292633>,  <37.663898, 38.959335, 42.244255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198643, 39.557663, 42.292633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817150, 39.642712, 42.377659>,  <37.588253, 39.693741, 42.428673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817150, 39.642712, 42.377659>,  <38.198643, 39.557663, 42.292633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817150, 39.642712, 42.377659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282840, 0.394823, 0.874137,
		0.101933, 0.893817, -0.436694,
		-0.953735, 0.212618, 0.212561,
		37.531029, 39.706497, 42.441425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062000, 40.306355, 42.444237>,  <38.198643, 39.557663, 42.292633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062000, 40.306355, 42.444237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.774868, 40.088150, 42.617275>,  <37.602589, 39.957230, 42.721100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.774868, 40.088150, 42.617275>,  <38.062000, 40.306355, 42.444237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774868, 40.088150, 42.617275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190455, 0.443797, 0.875655,
		-0.669664, 0.710961, -0.214675,
		-0.717828, -0.545509, 0.432600,
		37.559521, 39.924496, 42.747055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951538, 40.657249, 43.073185>,  <38.062000, 40.306355, 42.444237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951538, 40.657249, 43.073185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739662, 40.330349, 43.163986>,  <37.612537, 40.134209, 43.218468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739662, 40.330349, 43.163986>,  <37.951538, 40.657249, 43.073185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739662, 40.330349, 43.163986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254901, 0.101881, 0.961585,
		-0.808986, 0.567200, 0.154354,
		-0.529686, -0.817254, 0.227001,
		37.580757, 40.085175, 43.232086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464470, 40.849060, 43.603329>,  <37.951538, 40.657249, 43.073185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464470, 40.849060, 43.603329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522186, 40.453381, 43.613663>,  <37.556816, 40.215973, 43.619862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522186, 40.453381, 43.613663>,  <37.464470, 40.849060, 43.603329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522186, 40.453381, 43.613663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253699, 0.062216, 0.965280,
		-0.956461, -0.132729, 0.259935,
		0.144292, -0.989198, 0.025834,
		37.565475, 40.156620, 43.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414478, 40.721176, 44.308319>,  <37.464470, 40.849060, 43.603329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414478, 40.721176, 44.308319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557880, 40.370079, 44.181171>,  <37.643921, 40.159420, 44.104881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557880, 40.370079, 44.181171>,  <37.414478, 40.721176, 44.308319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557880, 40.370079, 44.181171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468288, -0.125474, 0.874622,
		-0.807576, -0.462414, 0.366053,
		0.358507, -0.877741, -0.317872,
		37.665432, 40.106758, 44.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086781, 40.164886, 44.753708>,  <37.414478, 40.721176, 44.308319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086781, 40.164886, 44.753708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.432289, 40.026585, 44.607086>,  <37.639595, 39.943604, 44.519115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.432289, 40.026585, 44.607086>,  <37.086781, 40.164886, 44.753708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432289, 40.026585, 44.607086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290035, -0.253707, 0.922774,
		-0.412053, -0.903374, -0.118862,
		0.863767, -0.345758, -0.366551,
		37.691418, 39.922859, 44.497120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293034, 39.593075, 45.129902>,  <37.086781, 40.164886, 44.753708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293034, 39.593075, 45.129902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644451, 39.701355, 44.972481>,  <37.855301, 39.766323, 44.878029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644451, 39.701355, 44.972481>,  <37.293034, 39.593075, 45.129902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644451, 39.701355, 44.972481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465344, -0.299108, 0.833060,
		0.107792, -0.915017, -0.388747,
		0.878542, 0.270698, -0.393557,
		37.908012, 39.782566, 44.854412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759991, 39.109112, 45.291706>,  <37.293034, 39.593075, 45.129902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759991, 39.109112, 45.291706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041805, 39.384415, 45.222511>,  <38.210896, 39.549595, 45.180996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041805, 39.384415, 45.222511>,  <37.759991, 39.109112, 45.291706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041805, 39.384415, 45.222511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496763, -0.304221, 0.812820,
		0.506803, -0.658599, -0.556236,
		0.704541, 0.688257, -0.172987,
		38.253166, 39.590893, 45.170616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307865, 38.696354, 45.173370>,  <37.759991, 39.109112, 45.291706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307865, 38.696354, 45.173370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406410, 39.065659, 45.291283>,  <38.465538, 39.287239, 45.362030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.406410, 39.065659, 45.291283>,  <38.307865, 38.696354, 45.173370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406410, 39.065659, 45.291283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594986, -0.384175, 0.705976,
		0.765046, 0.001462, -0.643974,
		0.246366, 0.923259, 0.294782,
		38.480320, 39.342636, 45.379719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060497, 38.638905, 45.264359>,  <38.307865, 38.696354, 45.173370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060497, 38.638905, 45.264359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 38.966106, 45.470394>,  <38.896626, 39.162426, 45.594013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 38.966106, 45.470394>,  <39.060497, 38.638905, 45.264359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958076, 38.966106, 45.470394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574405, -0.299824, 0.761685,
		0.777495, 0.490895, -0.393095,
		-0.256048, 0.818002, 0.515085,
		38.881264, 39.211506, 45.624920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718575, 38.912819, 45.510849>,  <39.060497, 38.638905, 45.264359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718575, 38.912819, 45.510849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.424717, 39.062908, 45.736946>,  <39.248402, 39.152962, 45.872604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.424717, 39.062908, 45.736946>,  <39.718575, 38.912819, 45.510849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424717, 39.062908, 45.736946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435742, -0.377636, 0.817019,
		0.520021, 0.846521, 0.113928,
		-0.734647, 0.375224, 0.565244,
		39.204323, 39.175476, 45.906521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395039, 39.215733, 45.695656>,  <39.718575, 38.912819, 45.510849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395039, 39.215733, 45.695656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703369, 38.974586, 45.613308>,  <40.888367, 38.829899, 45.563900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703369, 38.974586, 45.613308>,  <40.395039, 39.215733, 45.695656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703369, 38.974586, 45.613308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044343, 0.271605, -0.961387,
		0.635499, 0.750192, 0.182628,
		0.770828, -0.602862, -0.205870,
		40.934616, 38.793728, 45.551548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752453, 39.672211, 45.332142>,  <40.395039, 39.215733, 45.695656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752453, 39.672211, 45.332142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.890068, 39.305393, 45.251472>,  <40.972637, 39.085304, 45.203072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.890068, 39.305393, 45.251472>,  <40.752453, 39.672211, 45.332142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890068, 39.305393, 45.251472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002498, 0.213892, -0.976854,
		0.938953, 0.336578, 0.071296,
		0.344037, -0.917042, -0.201675,
		40.993279, 39.030281, 45.190971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363342, 39.831764, 44.954258>,  <40.752453, 39.672211, 45.332142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363342, 39.831764, 44.954258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234032, 39.464668, 44.861961>,  <41.156445, 39.244411, 44.806583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.234032, 39.464668, 44.861961>,  <41.363342, 39.831764, 44.954258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234032, 39.464668, 44.861961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017195, 0.238098, -0.971089,
		0.946149, -0.317896, -0.061191,
		-0.323275, -0.917742, -0.230743,
		41.137051, 39.189346, 44.792740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884926, 39.507534, 44.555363>,  <41.363342, 39.831764, 44.954258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884926, 39.507534, 44.555363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.529041, 39.349697, 44.463524>,  <41.315510, 39.254997, 44.408421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.529041, 39.349697, 44.463524>,  <41.884926, 39.507534, 44.555363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529041, 39.349697, 44.463524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097479, 0.327131, -0.939938,
		0.446001, -0.858652, -0.252587,
		-0.889708, -0.394591, -0.229602,
		41.262127, 39.231319, 44.394642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894421, 39.291420, 43.993271>,  <41.884926, 39.507534, 44.555363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894421, 39.291420, 43.993271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494705, 39.276623, 43.990273>,  <41.254875, 39.267746, 43.988472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494705, 39.276623, 43.990273>,  <41.894421, 39.291420, 43.993271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494705, 39.276623, 43.990273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008285, -0.021215, -0.999741,
		0.036829, -0.999090, 0.021506,
		-0.999287, -0.036998, -0.007496,
		41.194920, 39.265526, 43.988022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757885, 38.783596, 43.491123>,  <41.894421, 39.291420, 43.993271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757885, 38.783596, 43.491123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.416691, 38.986343, 43.540928>,  <41.211975, 39.107994, 43.570812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.416691, 38.986343, 43.540928>,  <41.757885, 38.783596, 43.491123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416691, 38.986343, 43.540928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116387, 0.047843, -0.992051,
		-0.508800, -0.860693, 0.018183,
		-0.852981, 0.506872, 0.124516,
		41.160797, 39.138405, 43.578281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290016, 38.449520, 43.026405>,  <41.757885, 38.783596, 43.491123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290016, 38.449520, 43.026405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161339, 38.822479, 43.092323>,  <41.084133, 39.046253, 43.131874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.161339, 38.822479, 43.092323>,  <41.290016, 38.449520, 43.026405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161339, 38.822479, 43.092323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183041, 0.109522, -0.976986,
		-0.928984, -0.344450, 0.135435,
		-0.321689, 0.932395, 0.164793,
		41.064831, 39.102196, 43.141762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724148, 38.415867, 42.706665>,  <41.290016, 38.449520, 43.026405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724148, 38.415867, 42.706665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796783, 38.806763, 42.750523>,  <40.840366, 39.041302, 42.776836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796783, 38.806763, 42.750523>,  <40.724148, 38.415867, 42.706665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796783, 38.806763, 42.750523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197056, 0.145397, -0.969551,
		-0.963428, 0.154458, 0.218974,
		0.181593, 0.977242, 0.109643,
		40.851261, 39.099934, 42.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161808, 38.691380, 42.504253>,  <40.724148, 38.415867, 42.706665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161808, 38.691380, 42.504253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440639, 38.974216, 42.456741>,  <40.607937, 39.143917, 42.428234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440639, 38.974216, 42.456741>,  <40.161808, 38.691380, 42.504253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440639, 38.974216, 42.456741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121302, -0.046968, -0.991504,
		-0.706663, 0.705560, 0.053031,
		0.697074, 0.707092, -0.118776,
		40.649761, 39.186344, 42.421108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822639, 39.189606, 42.034790>,  <40.161808, 38.691380, 42.504253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822639, 39.189606, 42.034790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209484, 39.288853, 42.012371>,  <40.441589, 39.348400, 41.998920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209484, 39.288853, 42.012371>,  <39.822639, 39.189606, 42.034790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209484, 39.288853, 42.012371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092623, 0.138304, -0.986049,
		-0.236901, 0.958807, 0.156736,
		0.967108, 0.248114, -0.056044,
		40.499619, 39.363285, 41.995560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905212, 39.716385, 41.576443>,  <39.822639, 39.189606, 42.034790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905212, 39.716385, 41.576443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276611, 39.569889, 41.551937>,  <40.499451, 39.481991, 41.537231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276611, 39.569889, 41.551937>,  <39.905212, 39.716385, 41.576443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276611, 39.569889, 41.551937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050321, 0.039369, -0.997957,
		0.367906, 0.929686, 0.018125,
		0.928501, -0.366242, -0.061267,
		40.555161, 39.460018, 41.533558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252075, 40.096676, 41.033714>,  <39.905212, 39.716385, 41.576443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252075, 40.096676, 41.033714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.409286, 39.732216, 41.083237>,  <40.503613, 39.513538, 41.112949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.409286, 39.732216, 41.083237>,  <40.252075, 40.096676, 41.033714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409286, 39.732216, 41.083237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079083, -0.100644, -0.991774,
		0.916120, 0.399586, 0.032500,
		0.393028, -0.911154, 0.123803,
		40.527195, 39.458870, 41.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642891, 39.996117, 40.451653>,  <40.252075, 40.096676, 41.033714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642891, 39.996117, 40.451653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622601, 39.622738, 40.593697>,  <40.610428, 39.398712, 40.678925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622601, 39.622738, 40.593697>,  <40.642891, 39.996117, 40.451653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622601, 39.622738, 40.593697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183087, -0.340853, -0.922116,
		0.981787, -0.111793, -0.153611,
		-0.050727, -0.933446, 0.355113,
		40.607384, 39.342705, 40.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208660, 39.664211, 40.118053>,  <40.642891, 39.996117, 40.451653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208660, 39.664211, 40.118053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959190, 39.367718, 40.217339>,  <40.809509, 39.189823, 40.276909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959190, 39.367718, 40.217339>,  <41.208660, 39.664211, 40.118053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959190, 39.367718, 40.217339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223884, -0.134846, -0.965242,
		0.748938, -0.657565, -0.081850,
		-0.623672, -0.741232, 0.248210,
		40.772087, 39.145348, 40.291801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.128180, 35.006096, 43.407986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816423, 35.256580, 43.416161>,  <28.629370, 35.406872, 43.421066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816423, 35.256580, 43.416161>,  <29.128180, 35.006096, 43.407986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816423, 35.256580, 43.416161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226525, -0.251223, -0.941049,
		-0.584157, -0.738073, 0.337652,
		-0.779389, 0.626207, 0.020438,
		28.582607, 35.444443, 43.422291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360140, 34.773563, 43.300606>,  <29.128180, 35.006096, 43.407986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360140, 34.773563, 43.300606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360718, 35.150341, 43.166302>,  <28.361065, 35.376408, 43.085720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360718, 35.150341, 43.166302>,  <28.360140, 34.773563, 43.300606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360718, 35.150341, 43.166302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415649, -0.304814, -0.856927,
		-0.909524, 0.140796, 0.391079,
		0.001446, 0.941947, -0.335757,
		28.361151, 35.432926, 43.065575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690649, 34.877480, 42.915115>,  <28.360140, 34.773563, 43.300606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690649, 34.877480, 42.915115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954004, 35.141418, 42.770267>,  <28.112017, 35.299782, 42.683357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954004, 35.141418, 42.770267>,  <27.690649, 34.877480, 42.915115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954004, 35.141418, 42.770267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303452, -0.207575, -0.929962,
		-0.688799, 0.722161, 0.063567,
		0.658387, 0.659846, -0.362119,
		28.151520, 35.339371, 42.661633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260218, 35.210403, 42.448315>,  <27.690649, 34.877480, 42.915115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260218, 35.210403, 42.448315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635414, 35.329918, 42.377998>,  <27.860531, 35.401627, 42.335808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635414, 35.329918, 42.377998>,  <27.260218, 35.210403, 42.448315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635414, 35.329918, 42.377998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190494, 0.020567, -0.981473,
		-0.289634, 0.954099, 0.076208,
		0.937990, 0.298785, -0.175793,
		27.916811, 35.419552, 42.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154091, 35.738049, 41.995739>,  <27.260218, 35.210403, 42.448315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154091, 35.738049, 41.995739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513041, 35.570881, 41.939079>,  <27.728411, 35.470581, 41.905083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513041, 35.570881, 41.939079>,  <27.154091, 35.738049, 41.995739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513041, 35.570881, 41.939079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123332, 0.070662, -0.989846,
		0.423687, 0.905731, 0.011867,
		0.897373, -0.417921, -0.141645,
		27.782253, 35.445503, 41.896587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441479, 36.128242, 41.457802>,  <27.154091, 35.738049, 41.995739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441479, 36.128242, 41.457802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659227, 35.794510, 41.492565>,  <27.789877, 35.594273, 41.513424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659227, 35.794510, 41.492565>,  <27.441479, 36.128242, 41.457802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659227, 35.794510, 41.492565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097753, -0.039806, -0.994414,
		0.833129, 0.549827, 0.059889,
		0.544372, -0.834329, 0.086910,
		27.822538, 35.544212, 41.518639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907625, 36.209038, 41.031982>,  <27.441479, 36.128242, 41.457802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907625, 36.209038, 41.031982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915882, 35.810356, 41.063377>,  <27.920835, 35.571148, 41.082214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915882, 35.810356, 41.063377>,  <27.907625, 36.209038, 41.031982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915882, 35.810356, 41.063377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043016, -0.079316, -0.995921,
		0.998861, 0.017180, -0.044512,
		0.020640, -0.996701, 0.078486,
		27.922073, 35.511345, 41.086922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342255, 35.941685, 40.500378>,  <27.907625, 36.209038, 41.031982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342255, 35.941685, 40.500378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165823, 35.594021, 40.589825>,  <28.059963, 35.385422, 40.643494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165823, 35.594021, 40.589825>,  <28.342255, 35.941685, 40.500378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165823, 35.594021, 40.589825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016413, -0.256934, -0.966290,
		0.897318, -0.422540, 0.127594,
		-0.441080, -0.869163, 0.223616,
		28.033499, 35.333271, 40.656910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664564, 35.361961, 40.168461>,  <28.342255, 35.941685, 40.500378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664564, 35.361961, 40.168461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297041, 35.218151, 40.233616>,  <28.076527, 35.131863, 40.272709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297041, 35.218151, 40.233616>,  <28.664564, 35.361961, 40.168461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297041, 35.218151, 40.233616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054679, -0.292768, -0.954619,
		0.390901, -0.886017, 0.249339,
		-0.918807, -0.359528, 0.162890,
		28.021399, 35.110294, 40.282482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584658, 34.736618, 39.837414>,  <28.664564, 35.361961, 40.168461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584658, 34.736618, 39.837414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201820, 34.825958, 39.911266>,  <27.972118, 34.879562, 39.955578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201820, 34.825958, 39.911266>,  <28.584658, 34.736618, 39.837414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201820, 34.825958, 39.911266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267264, -0.434132, -0.860291,
		-0.111991, -0.872723, 0.475197,
		-0.957094, 0.223347, 0.184628,
		27.914692, 34.892963, 39.966656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120001, 34.147419, 39.660892>,  <28.584658, 34.736618, 39.837414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120001, 34.147419, 39.660892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917486, 34.490387, 39.624016>,  <27.795977, 34.696167, 39.601891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917486, 34.490387, 39.624016>,  <28.120001, 34.147419, 39.660892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917486, 34.490387, 39.624016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189774, -0.215057, -0.957986,
		-0.841225, -0.467521, 0.271597,
		-0.506287, 0.857423, -0.092188,
		27.765600, 34.747616, 39.596359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420145, 33.971066, 39.272137>,  <28.120001, 34.147419, 39.660892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420145, 33.971066, 39.272137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488199, 34.363224, 39.232384>,  <27.529032, 34.598518, 39.208530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488199, 34.363224, 39.232384>,  <27.420145, 33.971066, 39.272137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488199, 34.363224, 39.232384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242697, -0.056058, -0.968481,
		-0.955067, 0.188892, 0.228402,
		0.170135, 0.980396, -0.099383,
		27.539240, 34.657345, 39.202568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296263, 34.045521, 38.532078>,  <27.420145, 33.971066, 39.272137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296263, 34.045521, 38.532078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425667, 34.415382, 38.612438>,  <27.503309, 34.637299, 38.660656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425667, 34.415382, 38.612438>,  <27.296263, 34.045521, 38.532078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425667, 34.415382, 38.612438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016802, 0.217902, -0.975826,
		-0.946076, 0.312313, 0.086029,
		0.323509, 0.924651, 0.200904,
		27.522720, 34.692780, 38.672710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784613, 34.532455, 38.233662>,  <27.296263, 34.045521, 38.532078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784613, 34.532455, 38.233662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.146915, 34.692612, 38.289215>,  <27.364298, 34.788708, 38.322548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.146915, 34.692612, 38.289215>,  <26.784613, 34.532455, 38.233662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146915, 34.692612, 38.289215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018420, 0.290207, -0.956787,
		-0.423396, 0.869175, 0.255482,
		0.905757, 0.400394, 0.138883,
		27.418642, 34.812729, 38.330879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741138, 35.095078, 37.668076>,  <26.784613, 34.532455, 38.233662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741138, 35.095078, 37.668076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128670, 35.107166, 37.766426>,  <27.361189, 35.114418, 37.825436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128670, 35.107166, 37.766426>,  <26.741138, 35.095078, 37.668076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128670, 35.107166, 37.766426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220941, 0.343511, -0.912790,
		-0.112048, 0.938662, 0.326126,
		0.968829, 0.030222, 0.245879,
		27.419319, 35.116234, 37.840191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018959, 35.704556, 37.437111>,  <26.741138, 35.095078, 37.668076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018959, 35.704556, 37.437111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340740, 35.470596, 37.478588>,  <27.533810, 35.330219, 37.503475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340740, 35.470596, 37.478588>,  <27.018959, 35.704556, 37.437111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340740, 35.470596, 37.478588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340197, 0.310548, -0.887596,
		0.486951, 0.749304, 0.448801,
		0.804453, -0.584896, 0.103689,
		27.582077, 35.295128, 37.509693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679899, 36.108963, 37.306160>,  <27.018959, 35.704556, 37.437111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679899, 36.108963, 37.306160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735159, 35.720238, 37.229744>,  <27.768314, 35.487003, 37.183895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735159, 35.720238, 37.229744>,  <27.679899, 36.108963, 37.306160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735159, 35.720238, 37.229744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434884, 0.232822, -0.869868,
		0.889826, 0.037090, 0.454790,
		0.138148, -0.971812, -0.191041,
		27.776604, 35.428696, 37.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326351, 36.047546, 37.140625>,  <27.679899, 36.108963, 37.306160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326351, 36.047546, 37.140625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123674, 35.735195, 36.994476>,  <28.002068, 35.547787, 36.906788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123674, 35.735195, 36.994476>,  <28.326351, 36.047546, 37.140625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123674, 35.735195, 36.994476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417089, 0.148878, -0.896589,
		0.754520, -0.606687, 0.250260,
		-0.506691, -0.780875, -0.365374,
		27.971666, 35.500931, 36.884865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769241, 35.690472, 36.607319>,  <28.326351, 36.047546, 37.140625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769241, 35.690472, 36.607319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430780, 35.508991, 36.495476>,  <28.227703, 35.400105, 36.428368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430780, 35.508991, 36.495476>,  <28.769241, 35.690472, 36.607319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430780, 35.508991, 36.495476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209872, 0.198589, -0.957348,
		0.489878, -0.868744, -0.072817,
		-0.846152, -0.453702, -0.279610,
		28.176935, 35.372879, 36.411594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949133, 35.262596, 36.071087>,  <28.769241, 35.690472, 36.607319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949133, 35.262596, 36.071087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554010, 35.311520, 36.032558>,  <28.316936, 35.340874, 36.009441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554010, 35.311520, 36.032558>,  <28.949133, 35.262596, 36.071087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554010, 35.311520, 36.032558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102853, 0.048252, -0.993526,
		-0.116868, -0.991318, -0.060244,
		-0.987807, 0.122308, -0.096321,
		28.257668, 35.348213, 36.003662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360449, 34.569195, 35.778999>,  <28.949133, 35.262596, 36.071087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360449, 34.569195, 35.778999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556114, 34.859982, 35.971764>,  <29.673513, 35.034454, 36.087421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556114, 34.859982, 35.971764>,  <29.360449, 34.569195, 35.778999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556114, 34.859982, 35.971764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272082, -0.652139, 0.707592,
		0.828668, -0.215010, -0.516798,
		0.489163, 0.726970, 0.481906,
		29.702864, 35.078072, 36.116337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071918, 34.274513, 35.969025>,  <29.360449, 34.569195, 35.778999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071918, 34.274513, 35.969025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.019859, 34.593983, 36.204029>,  <29.988623, 34.785664, 36.345032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.019859, 34.593983, 36.204029>,  <30.071918, 34.274513, 35.969025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019859, 34.593983, 36.204029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436519, -0.485880, 0.757213,
		0.890232, 0.355012, -0.285401,
		-0.130149, 0.798678, 0.587515,
		29.980814, 34.833588, 36.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743341, 34.393032, 36.298393>,  <30.071918, 34.274513, 35.969025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743341, 34.393032, 36.298393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485117, 34.605808, 36.517590>,  <30.330183, 34.733475, 36.649105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485117, 34.605808, 36.517590>,  <30.743341, 34.393032, 36.298393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485117, 34.605808, 36.517590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558581, -0.160444, 0.813784,
		0.520806, 0.831443, -0.193555,
		-0.645560, 0.531940, 0.547989,
		30.291449, 34.765388, 36.681988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153257, 34.798134, 36.701736>,  <30.743341, 34.393032, 36.298393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153257, 34.798134, 36.701736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798714, 34.760490, 36.883068>,  <30.585987, 34.737904, 36.991867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798714, 34.760490, 36.883068>,  <31.153257, 34.798134, 36.701736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798714, 34.760490, 36.883068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462990, -0.186179, 0.866590,
		0.002850, 0.977999, 0.208592,
		-0.886359, -0.094106, 0.453334,
		30.532806, 34.732258, 37.019070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195906, 35.241650, 37.312756>,  <31.153257, 34.798134, 36.701736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195906, 35.241650, 37.312756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887985, 34.999775, 37.394501>,  <30.703232, 34.854652, 37.443546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887985, 34.999775, 37.394501>,  <31.195906, 35.241650, 37.312756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887985, 34.999775, 37.394501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270220, -0.018677, 0.962617,
		-0.578261, 0.796248, 0.177775,
		-0.769802, -0.604682, 0.204362,
		30.657045, 34.818371, 37.455811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951296, 35.498333, 37.960979>,  <31.195906, 35.241650, 37.312756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951296, 35.498333, 37.960979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830046, 35.120560, 37.910141>,  <30.757296, 34.893894, 37.879639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830046, 35.120560, 37.910141>,  <30.951296, 35.498333, 37.960979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830046, 35.120560, 37.910141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164534, -0.183239, 0.969202,
		-0.938639, 0.272879, 0.210937,
		-0.303127, -0.944436, -0.127097,
		30.739107, 34.837227, 37.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450205, 35.485241, 38.470997>,  <30.951296, 35.498333, 37.960979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450205, 35.485241, 38.470997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576141, 35.117466, 38.376759>,  <30.651703, 34.896801, 38.320217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576141, 35.117466, 38.376759>,  <30.450205, 35.485241, 38.470997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576141, 35.117466, 38.376759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026197, -0.256541, 0.966179,
		-0.948783, -0.298021, -0.104856,
		0.314842, -0.919440, -0.235594,
		30.670593, 34.841633, 38.306080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967867, 35.023888, 38.768082>,  <30.450205, 35.485241, 38.470997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967867, 35.023888, 38.768082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282467, 34.781380, 38.721001>,  <30.471226, 34.635876, 38.692753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282467, 34.781380, 38.721001>,  <29.967867, 35.023888, 38.768082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282467, 34.781380, 38.721001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048083, -0.250121, 0.967020,
		-0.615719, -0.754899, -0.225871,
		0.786497, -0.606273, -0.117706,
		30.518415, 34.599499, 38.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841806, 34.344757, 39.045216>,  <29.967867, 35.023888, 38.768082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841806, 34.344757, 39.045216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241398, 34.360909, 39.053322>,  <30.481153, 34.370602, 39.058186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241398, 34.360909, 39.053322>,  <29.841806, 34.344757, 39.045216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241398, 34.360909, 39.053322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013318, -0.165472, 0.986124,
		0.043177, -0.985387, -0.164765,
		0.998978, 0.040383, 0.020268,
		30.541092, 34.373024, 39.059402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193027, 33.632160, 39.400799>,  <29.841806, 34.344757, 39.045216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193027, 33.632160, 39.400799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495949, 33.893314, 39.406906>,  <30.677702, 34.050007, 39.410572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495949, 33.893314, 39.406906>,  <30.193027, 33.632160, 39.400799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495949, 33.893314, 39.406906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207408, -0.262617, 0.942345,
		0.619253, -0.710474, -0.334294,
		0.757303, 0.652886, 0.015268,
		30.723139, 34.089180, 39.411488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797640, 33.272278, 39.566231>,  <30.193027, 33.632160, 39.400799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797640, 33.272278, 39.566231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872654, 33.656807, 39.646908>,  <30.917662, 33.887524, 39.695316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872654, 33.656807, 39.646908>,  <30.797640, 33.272278, 39.566231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872654, 33.656807, 39.646908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383822, -0.260733, 0.885832,
		0.904163, -0.088708, -0.417875,
		0.187535, 0.961327, 0.201697,
		30.928915, 33.945206, 39.707417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430492, 33.274834, 39.773445>,  <30.797640, 33.272278, 39.566231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430492, 33.274834, 39.773445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266003, 33.613159, 39.909378>,  <31.167309, 33.816154, 39.990940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266003, 33.613159, 39.909378>,  <31.430492, 33.274834, 39.773445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266003, 33.613159, 39.909378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369931, -0.185879, 0.910275,
		0.833094, 0.500043, -0.236456,
		-0.411225, 0.845817, 0.339836,
		31.142635, 33.866905, 40.011330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001465, 33.555996, 40.204197>,  <31.430492, 33.274834, 39.773445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001465, 33.555996, 40.204197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649181, 33.726780, 40.286224>,  <31.437811, 33.829250, 40.335442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649181, 33.726780, 40.286224>,  <32.001465, 33.555996, 40.204197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649181, 33.726780, 40.286224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199475, -0.058341, 0.978165,
		0.429602, 0.902386, -0.033787,
		-0.880711, 0.426961, 0.205067,
		31.384968, 33.854870, 40.347744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162239, 33.949608, 40.770588>,  <32.001465, 33.555996, 40.204197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162239, 33.949608, 40.770588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763613, 33.921860, 40.788712>,  <31.524439, 33.905212, 40.799587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763613, 33.921860, 40.788712>,  <32.162239, 33.949608, 40.770588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763613, 33.921860, 40.788712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050704, -0.078092, 0.995656,
		-0.065528, 0.994530, 0.081341,
		-0.996562, -0.069368, 0.045310,
		31.464643, 33.901051, 40.802303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921753, 34.387108, 41.253532>,  <32.162239, 33.949608, 40.770588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921753, 34.387108, 41.253532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604446, 34.145969, 41.219337>,  <31.414062, 34.001286, 41.198822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604446, 34.145969, 41.219337>,  <31.921753, 34.387108, 41.253532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604446, 34.145969, 41.219337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099146, -0.010636, 0.995016,
		-0.600748, 0.797789, -0.051332,
		-0.793267, -0.602843, -0.085487,
		31.366467, 33.965115, 41.193691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374088, 34.593983, 41.758305>,  <31.921753, 34.387108, 41.253532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374088, 34.593983, 41.758305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239899, 34.231186, 41.656467>,  <31.159386, 34.013508, 41.595367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239899, 34.231186, 41.656467>,  <31.374088, 34.593983, 41.758305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239899, 34.231186, 41.656467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305372, -0.150960, 0.940191,
		-0.891182, 0.393154, -0.226328,
		-0.335473, -0.906996, -0.254591,
		31.139257, 33.959087, 41.580090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818546, 34.597710, 42.214470>,  <31.374088, 34.593983, 41.758305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818546, 34.597710, 42.214470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928116, 34.228905, 42.105034>,  <30.993858, 34.007622, 42.039371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928116, 34.228905, 42.105034>,  <30.818546, 34.597710, 42.214470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928116, 34.228905, 42.105034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301902, -0.352527, 0.885765,
		-0.913138, -0.160034, -0.374924,
		0.273923, -0.922016, -0.273591,
		31.010292, 33.952301, 42.022957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302189, 34.188198, 42.449123>,  <30.818546, 34.597710, 42.214470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302189, 34.188198, 42.449123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602482, 33.934498, 42.375229>,  <30.782658, 33.782276, 42.330891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602482, 33.934498, 42.375229>,  <30.302189, 34.188198, 42.449123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602482, 33.934498, 42.375229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268919, -0.548844, 0.791488,
		-0.603395, -0.544515, -0.582596,
		0.750731, -0.634251, -0.184739,
		30.827702, 33.744225, 42.319809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050972, 33.491756, 42.595959>,  <30.302189, 34.188198, 42.449123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050972, 33.491756, 42.595959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448059, 33.490555, 42.644131>,  <30.686312, 33.489834, 42.673035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448059, 33.490555, 42.644131>,  <30.050972, 33.491756, 42.595959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448059, 33.490555, 42.644131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113558, -0.357019, 0.927169,
		0.040214, -0.934092, -0.354760,
		0.992717, -0.003001, 0.120430,
		30.745874, 33.489655, 42.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270756, 32.839432, 42.946030>,  <30.050972, 33.491756, 42.595959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270756, 32.839432, 42.946030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576876, 33.090527, 43.002972>,  <30.760548, 33.241184, 43.037136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576876, 33.090527, 43.002972>,  <30.270756, 32.839432, 42.946030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576876, 33.090527, 43.002972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022614, -0.247244, 0.968689,
		0.643277, -0.738119, -0.203412,
		0.765300, 0.627735, 0.142355,
		30.806465, 33.278847, 43.045677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796108, 32.471004, 43.365948>,  <30.270756, 32.839432, 42.946030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796108, 32.471004, 43.365948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.908833, 32.852276, 43.409809>,  <30.976467, 33.081039, 43.436127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.908833, 32.852276, 43.409809>,  <30.796108, 32.471004, 43.365948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908833, 32.852276, 43.409809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230982, -0.178323, 0.956477,
		0.931251, -0.244219, -0.270422,
		0.281813, 0.953183, 0.109653,
		30.993376, 33.138229, 43.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273048, 32.427525, 43.810108>,  <30.796108, 32.471004, 43.365948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273048, 32.427525, 43.810108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189203, 32.818157, 43.829510>,  <31.138895, 33.052536, 43.841152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189203, 32.818157, 43.829510>,  <31.273048, 32.427525, 43.810108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189203, 32.818157, 43.829510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248014, 0.005118, 0.968743,
		0.945807, 0.215092, -0.243279,
		-0.209614, 0.976580, 0.048505,
		31.126320, 33.111130, 43.844063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.181000, 34.940655, 45.736431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.801392, 34.860703, 45.833931>,  <41.573627, 34.812729, 45.892429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.801392, 34.860703, 45.833931>,  <42.181000, 34.940655, 45.736431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801392, 34.860703, 45.833931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163933, 0.347510, 0.923235,
		-0.269245, 0.916124, -0.297025,
		-0.949017, -0.199884, 0.243748,
		41.516685, 34.800735, 45.907055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973495, 35.512909, 46.008141>,  <42.181000, 34.940655, 45.736431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973495, 35.512909, 46.008141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.737648, 35.222172, 46.149021>,  <41.596142, 35.047729, 46.233551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.737648, 35.222172, 46.149021>,  <41.973495, 35.512909, 46.008141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737648, 35.222172, 46.149021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228844, 0.267861, 0.935885,
		-0.774587, 0.632412, 0.008400,
		-0.589615, -0.726847, 0.352205,
		41.560764, 35.004116, 46.254684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656082, 35.714523, 46.565868>,  <41.973495, 35.512909, 46.008141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656082, 35.714523, 46.565868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.613350, 35.321491, 46.626694>,  <41.587711, 35.085670, 46.663189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.613350, 35.321491, 46.626694>,  <41.656082, 35.714523, 46.565868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613350, 35.321491, 46.626694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135866, 0.137079, 0.981198,
		-0.984950, 0.125484, 0.118855,
		-0.106833, -0.982580, 0.152065,
		41.581299, 35.026718, 46.672314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128471, 35.649426, 47.075287>,  <41.656082, 35.714523, 46.565868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128471, 35.649426, 47.075287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.351658, 35.317482, 47.076469>,  <41.485569, 35.118317, 47.077179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.351658, 35.317482, 47.076469>,  <41.128471, 35.649426, 47.075287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351658, 35.317482, 47.076469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142670, 0.099433, 0.984763,
		-0.817511, -0.549038, 0.173876,
		0.557961, -0.829862, 0.002956,
		41.519047, 35.068523, 47.077354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053154, 35.480141, 47.725117>,  <41.128471, 35.649426, 47.075287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053154, 35.480141, 47.725117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350304, 35.240925, 47.604790>,  <41.528595, 35.097397, 47.532593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350304, 35.240925, 47.604790>,  <41.053154, 35.480141, 47.725117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350304, 35.240925, 47.604790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155494, -0.282916, 0.946457,
		-0.651122, -0.749873, -0.117180,
		0.742874, -0.598038, -0.300814,
		41.573166, 35.061512, 47.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004852, 34.847912, 48.152714>,  <41.053154, 35.480141, 47.725117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004852, 34.847912, 48.152714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368267, 34.855682, 47.985771>,  <41.586315, 34.860344, 47.885605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368267, 34.855682, 47.985771>,  <41.004852, 34.847912, 48.152714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368267, 34.855682, 47.985771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401457, -0.317314, 0.859153,
		-0.115744, -0.948121, -0.296090,
		0.908535, 0.019425, -0.417357,
		41.640827, 34.861511, 47.860565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267651, 34.218307, 48.220222>,  <41.004852, 34.847912, 48.152714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267651, 34.218307, 48.220222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566231, 34.482796, 48.190285>,  <41.745380, 34.641487, 48.172321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566231, 34.482796, 48.190285>,  <41.267651, 34.218307, 48.220222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566231, 34.482796, 48.190285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381908, -0.333582, 0.861899,
		0.544938, -0.671947, -0.501527,
		0.746451, 0.661219, -0.074841,
		41.790165, 34.681160, 48.167831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783844, 33.877926, 48.481052>,  <41.267651, 34.218307, 48.220222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783844, 33.877926, 48.481052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904335, 34.257473, 48.518803>,  <41.976631, 34.485203, 48.541454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904335, 34.257473, 48.518803>,  <41.783844, 33.877926, 48.481052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904335, 34.257473, 48.518803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330334, -0.196685, 0.923144,
		0.894505, -0.246904, -0.372691,
		0.301231, 0.948870, 0.094375,
		41.994705, 34.542133, 48.547115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344952, 33.772961, 48.831337>,  <41.783844, 33.877926, 48.481052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344952, 33.772961, 48.831337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.284996, 34.165386, 48.880402>,  <42.249023, 34.400841, 48.909840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.284996, 34.165386, 48.880402>,  <42.344952, 33.772961, 48.831337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284996, 34.165386, 48.880402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250765, -0.082282, 0.964545,
		0.956373, 0.175337, -0.233683,
		-0.149892, 0.981064, 0.122661,
		42.240028, 34.459705, 48.917198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935249, 34.042942, 49.145264>,  <42.344952, 33.772961, 48.831337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935249, 34.042942, 49.145264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.629158, 34.292168, 49.210033>,  <42.445503, 34.441704, 49.248898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.629158, 34.292168, 49.210033>,  <42.935249, 34.042942, 49.145264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629158, 34.292168, 49.210033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339149, 0.176380, 0.924050,
		0.547182, 0.762024, -0.346283,
		-0.765225, 0.623065, 0.161928,
		42.399590, 34.479088, 49.258614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230400, 34.651226, 49.424671>,  <42.935249, 34.042942, 49.145264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230400, 34.651226, 49.424671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.842529, 34.642326, 49.522026>,  <42.609806, 34.636986, 49.580437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.842529, 34.642326, 49.522026>,  <43.230400, 34.651226, 49.424671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842529, 34.642326, 49.522026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244216, -0.049754, 0.968444,
		-0.009442, 0.998514, 0.053680,
		-0.969675, -0.022254, 0.243384,
		42.551628, 34.635651, 49.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184086, 35.040123, 49.945419>,  <43.230400, 34.651226, 49.424671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184086, 35.040123, 49.945419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.831791, 34.855061, 49.985909>,  <42.620415, 34.744022, 50.010201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.831791, 34.855061, 49.985909>,  <43.184086, 35.040123, 49.945419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831791, 34.855061, 49.985909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113273, 0.001734, 0.993562,
		-0.459851, 0.886537, 0.050879,
		-0.880742, -0.462654, 0.101218,
		42.567570, 34.716263, 50.016273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710949, 35.256584, 50.543129>,  <43.184086, 35.040123, 49.945419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710949, 35.256584, 50.543129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.591331, 34.887707, 50.445042>,  <42.519562, 34.666382, 50.386189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.591331, 34.887707, 50.445042>,  <42.710949, 35.256584, 50.543129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591331, 34.887707, 50.445042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076398, -0.279288, 0.957163,
		-0.951177, 0.267497, 0.153972,
		-0.299041, -0.922195, -0.245216,
		42.501617, 34.611050, 50.371475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883438, 35.958389, 50.496132>,  <42.710949, 35.256584, 50.543129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883438, 35.958389, 50.496132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.697742, 36.268948, 50.666634>,  <42.586323, 36.455280, 50.768936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.697742, 36.268948, 50.666634>,  <42.883438, 35.958389, 50.496132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697742, 36.268948, 50.666634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251057, 0.346172, -0.903956,
		-0.849382, -0.526669, 0.034211,
		-0.464243, 0.776392, 0.426256,
		42.558468, 36.501865, 50.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219379, 36.014889, 50.149879>,  <42.883438, 35.958389, 50.496132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219379, 36.014889, 50.149879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311943, 36.373535, 50.300892>,  <42.367481, 36.588722, 50.391499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.311943, 36.373535, 50.300892>,  <42.219379, 36.014889, 50.149879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311943, 36.373535, 50.300892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246792, 0.429474, -0.868704,
		-0.941032, 0.107858, 0.320663,
		0.231413, 0.896615, 0.377530,
		42.381367, 36.642521, 50.414150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740398, 36.445652, 49.963051>,  <42.219379, 36.014889, 50.149879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740398, 36.445652, 49.963051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041836, 36.694355, 50.048382>,  <42.222698, 36.843578, 50.099579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041836, 36.694355, 50.048382>,  <41.740398, 36.445652, 49.963051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041836, 36.694355, 50.048382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150495, 0.479104, -0.864761,
		-0.639877, 0.619577, 0.454623,
		0.753597, 0.621759, 0.213324,
		42.267914, 36.880882, 50.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415840, 37.142864, 49.981884>,  <41.740398, 36.445652, 49.963051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415840, 37.142864, 49.981884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.808598, 37.168713, 49.910664>,  <42.044254, 37.184219, 49.867931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.808598, 37.168713, 49.910664>,  <41.415840, 37.142864, 49.981884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808598, 37.168713, 49.910664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180409, 0.605450, -0.775167,
		0.057710, 0.793256, 0.606147,
		0.981897, 0.064619, -0.178051,
		42.103168, 37.188099, 49.857250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596828, 37.847668, 49.975540>,  <41.415840, 37.142864, 49.981884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596828, 37.847668, 49.975540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.893024, 37.670696, 49.773178>,  <42.070740, 37.564514, 49.651760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.893024, 37.670696, 49.773178>,  <41.596828, 37.847668, 49.975540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893024, 37.670696, 49.773178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139307, 0.635364, -0.759543,
		0.657476, 0.632907, 0.408845,
		0.740486, -0.442426, -0.505905,
		42.115170, 37.537968, 49.621407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909580, 38.419334, 49.748653>,  <41.596828, 37.847668, 49.975540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909580, 38.419334, 49.748653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.023754, 38.123669, 49.504635>,  <42.092258, 37.946270, 49.358223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.023754, 38.123669, 49.504635>,  <41.909580, 38.419334, 49.748653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023754, 38.123669, 49.504635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117999, 0.604580, -0.787755,
		0.951106, 0.296839, 0.085348,
		0.285436, -0.739168, -0.610047,
		42.109386, 37.901917, 49.321621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256683, 38.790009, 49.054409>,  <41.909580, 38.419334, 49.748653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256683, 38.790009, 49.054409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.179688, 38.404011, 48.983158>,  <42.133488, 38.172413, 48.940407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.179688, 38.404011, 48.983158>,  <42.256683, 38.790009, 49.054409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179688, 38.404011, 48.983158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101003, 0.200047, -0.974567,
		0.976086, -0.169606, -0.135975,
		-0.192493, -0.964995, -0.178132,
		42.121941, 38.114513, 48.929718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584774, 38.649998, 48.364967>,  <42.256683, 38.790009, 49.054409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584774, 38.649998, 48.364967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.342979, 38.333084, 48.398144>,  <42.197903, 38.142937, 48.418049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.342979, 38.333084, 48.398144>,  <42.584774, 38.649998, 48.364967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342979, 38.333084, 48.398144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264357, 0.101287, -0.959091,
		0.751475, -0.601682, -0.270673,
		-0.604483, -0.792288, 0.082944,
		42.161633, 38.095398, 48.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792931, 38.156673, 47.873947>,  <42.584774, 38.649998, 48.364967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792931, 38.156673, 47.873947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408947, 38.091164, 47.964867>,  <42.178558, 38.051857, 48.019417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.408947, 38.091164, 47.964867>,  <42.792931, 38.156673, 47.873947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408947, 38.091164, 47.964867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256610, 0.188468, -0.947962,
		0.112414, -0.968327, -0.222947,
		-0.959955, -0.163774, 0.227296,
		42.120960, 38.042030, 48.033054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582981, 37.820683, 47.273689>,  <42.792931, 38.156673, 47.873947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582981, 37.820683, 47.273689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233479, 37.921188, 47.440262>,  <42.023777, 37.981491, 47.540207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.233479, 37.921188, 47.440262>,  <42.582981, 37.820683, 47.273689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233479, 37.921188, 47.440262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426568, 0.015417, -0.904324,
		-0.233651, -0.967794, 0.093713,
		-0.873755, 0.251271, 0.416432,
		41.971352, 37.996571, 47.565193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115452, 37.450150, 46.951035>,  <42.582981, 37.820683, 47.273689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115452, 37.450150, 46.951035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904419, 37.758450, 47.093918>,  <41.777798, 37.943428, 47.179649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904419, 37.758450, 47.093918>,  <42.115452, 37.450150, 46.951035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904419, 37.758450, 47.093918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426540, 0.123303, -0.896025,
		-0.734657, -0.625091, 0.263704,
		-0.527582, 0.770751, 0.357211,
		41.746143, 37.989674, 47.201080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527069, 37.418690, 46.550495>,  <42.115452, 37.450150, 46.951035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527069, 37.418690, 46.550495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521034, 37.784061, 46.713184>,  <41.517414, 38.003284, 46.810799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521034, 37.784061, 46.713184>,  <41.527069, 37.418690, 46.550495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521034, 37.784061, 46.713184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629786, 0.307259, -0.713415,
		-0.776622, -0.266908, 0.570630,
		-0.015085, 0.913429, 0.406719,
		41.516510, 38.058090, 46.835201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827347, 37.598728, 46.574051>,  <41.527069, 37.418690, 46.550495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827347, 37.598728, 46.574051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047295, 37.932495, 46.588955>,  <41.179264, 38.132755, 46.597897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.047295, 37.932495, 46.588955>,  <40.827347, 37.598728, 46.574051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047295, 37.932495, 46.588955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392525, 0.297527, -0.870288,
		-0.737271, 0.463920, 0.491132,
		0.549869, 0.834419, 0.037258,
		41.212254, 38.182819, 46.600132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398533, 38.230438, 46.664959>,  <40.827347, 37.598728, 46.574051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398533, 38.230438, 46.664959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.745441, 38.333202, 46.494389>,  <40.953587, 38.394859, 46.392044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.745441, 38.333202, 46.494389>,  <40.398533, 38.230438, 46.664959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745441, 38.333202, 46.494389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487578, 0.265325, -0.831787,
		-0.100553, 0.929301, 0.355373,
		0.867269, 0.256911, -0.426428,
		41.005623, 38.410275, 46.366459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266930, 38.654072, 46.126404>,  <40.398533, 38.230438, 46.664959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266930, 38.654072, 46.126404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.655075, 38.619110, 46.036289>,  <40.887962, 38.598133, 45.982220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.655075, 38.619110, 46.036289>,  <40.266930, 38.654072, 46.126404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655075, 38.619110, 46.036289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198292, 0.244792, -0.949082,
		0.138105, 0.965627, 0.220205,
		0.970364, -0.087408, -0.225284,
		40.946186, 38.592888, 45.968704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971710, 39.299961, 46.308849>,  <40.266930, 38.654072, 46.126404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971710, 39.299961, 46.308849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591938, 39.177071, 46.334770>,  <39.364075, 39.103336, 46.350323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591938, 39.177071, 46.334770>,  <39.971710, 39.299961, 46.308849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591938, 39.177071, 46.334770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219354, -0.501315, 0.836999,
		-0.224662, 0.808885, 0.543353,
		-0.949427, -0.307229, 0.064806,
		39.307110, 39.084904, 46.354214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846798, 39.242729, 47.003883>,  <39.971710, 39.299961, 46.308849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846798, 39.242729, 47.003883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517853, 39.055790, 46.874073>,  <39.320488, 38.943626, 46.796188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.517853, 39.055790, 46.874073>,  <39.846798, 39.242729, 47.003883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517853, 39.055790, 46.874073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018604, -0.547978, 0.836286,
		-0.568664, 0.693765, 0.441941,
		-0.822360, -0.467344, -0.324522,
		39.271145, 38.915588, 46.776718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286110, 39.360847, 47.493900>,  <39.846798, 39.242729, 47.003883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286110, 39.360847, 47.493900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182743, 39.020798, 47.310371>,  <39.120724, 38.816769, 47.200256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182743, 39.020798, 47.310371>,  <39.286110, 39.360847, 47.493900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182743, 39.020798, 47.310371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057703, -0.460519, 0.885773,
		-0.964309, 0.255371, 0.069950,
		-0.258414, -0.850123, -0.458818,
		39.105217, 38.765762, 47.172726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762253, 39.138233, 47.873055>,  <39.286110, 39.360847, 47.493900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762253, 39.138233, 47.873055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879440, 38.809040, 47.678379>,  <38.949753, 38.611523, 47.561573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879440, 38.809040, 47.678379>,  <38.762253, 39.138233, 47.873055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879440, 38.809040, 47.678379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015937, -0.513154, 0.858148,
		-0.955988, -0.243658, -0.163456,
		0.292973, -0.822985, -0.486686,
		38.967331, 38.562145, 47.532372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301876, 38.552299, 48.130672>,  <38.762253, 39.138233, 47.873055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301876, 38.552299, 48.130672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616764, 38.368206, 47.966492>,  <38.805698, 38.257751, 47.867985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616764, 38.368206, 47.966492>,  <38.301876, 38.552299, 48.130672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616764, 38.368206, 47.966492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098562, -0.563134, 0.820467,
		-0.608747, -0.686342, -0.397948,
		0.787218, -0.460234, -0.410453,
		38.852928, 38.230137, 47.843357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169186, 37.899292, 48.233093>,  <38.301876, 38.552299, 48.130672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169186, 37.899292, 48.233093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564648, 37.902412, 48.173084>,  <38.801926, 37.904285, 48.137077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564648, 37.902412, 48.173084>,  <38.169186, 37.899292, 48.233093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564648, 37.902412, 48.173084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135694, -0.474876, 0.869528,
		-0.064457, -0.880018, -0.470546,
		0.988652, 0.007803, -0.150022,
		38.861244, 37.904755, 48.128078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408455, 37.296814, 48.510159>,  <38.169186, 37.899292, 48.233093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408455, 37.296814, 48.510159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.757462, 37.492199, 48.505707>,  <38.966866, 37.609432, 48.503036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.757462, 37.492199, 48.505707>,  <38.408455, 37.296814, 48.510159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757462, 37.492199, 48.505707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272685, -0.467933, 0.840644,
		0.405419, -0.736506, -0.541474,
		0.872513, 0.488465, -0.011125,
		39.019215, 37.638737, 48.502369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984364, 36.747532, 48.633457>,  <38.408455, 37.296814, 48.510159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984364, 36.747532, 48.633457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.073486, 37.119045, 48.751923>,  <39.126961, 37.341953, 48.823002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.073486, 37.119045, 48.751923>,  <38.984364, 36.747532, 48.633457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073486, 37.119045, 48.751923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203631, -0.341441, 0.917580,
		0.953358, -0.144135, -0.265205,
		0.222807, 0.928786, 0.296165,
		39.140327, 37.397682, 48.840771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824245, 35.995491, 48.466274>,  <38.984364, 36.747532, 48.633457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824245, 35.995491, 48.466274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443462, 36.017345, 48.586796>,  <38.214993, 36.030460, 48.659107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443462, 36.017345, 48.586796>,  <38.824245, 35.995491, 48.466274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443462, 36.017345, 48.586796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273381, 0.291643, -0.916628,
		-0.137959, -0.954965, -0.262694,
		-0.951961, 0.054641, 0.301304,
		38.157875, 36.033737, 48.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435062, 35.568504, 47.969532>,  <38.824245, 35.995491, 48.466274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435062, 35.568504, 47.969532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169376, 35.814400, 48.139668>,  <38.009964, 35.961937, 48.241749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.169376, 35.814400, 48.139668>,  <38.435062, 35.568504, 47.969532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169376, 35.814400, 48.139668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473335, 0.094540, -0.875795,
		-0.578600, -0.783041, 0.228185,
		-0.664211, 0.614743, 0.425341,
		37.970112, 35.998821, 48.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839447, 35.344757, 47.667290>,  <38.435062, 35.568504, 47.969532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839447, 35.344757, 47.667290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.747433, 35.704964, 47.814884>,  <37.692223, 35.921089, 47.903442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.747433, 35.704964, 47.814884>,  <37.839447, 35.344757, 47.667290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747433, 35.704964, 47.814884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530008, 0.202064, -0.823566,
		-0.816195, -0.385015, 0.430800,
		-0.230036, 0.900518, 0.368985,
		37.678421, 35.975121, 47.925579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130466, 35.347023, 47.655186>,  <37.839447, 35.344757, 47.667290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130466, 35.347023, 47.655186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243259, 35.730015, 47.679615>,  <37.310936, 35.959808, 47.694271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.243259, 35.730015, 47.679615>,  <37.130466, 35.347023, 47.655186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243259, 35.730015, 47.679615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448474, 0.187812, -0.873841,
		-0.848151, 0.219015, 0.482362,
		0.281978, 0.957475, 0.061071,
		37.327854, 36.017258, 47.697937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507805, 35.805008, 47.421932>,  <37.130466, 35.347023, 47.655186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507805, 35.805008, 47.421932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834824, 36.032261, 47.384327>,  <37.031036, 36.168613, 47.361763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834824, 36.032261, 47.384327>,  <36.507805, 35.805008, 47.421932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834824, 36.032261, 47.384327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395832, 0.435855, -0.808299,
		-0.418245, 0.698038, 0.581218,
		0.817550, 0.568132, -0.094012,
		37.080090, 36.202702, 47.356125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177418, 36.446087, 47.184719>,  <36.507805, 35.805008, 47.421932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177418, 36.446087, 47.184719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566513, 36.455704, 47.092453>,  <36.799969, 36.461475, 47.037094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566513, 36.455704, 47.092453>,  <36.177418, 36.446087, 47.184719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566513, 36.455704, 47.092453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219222, 0.419866, -0.880712,
		0.075673, 0.907268, 0.413689,
		0.972736, 0.024044, -0.230666,
		36.858334, 36.462917, 47.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.846199, 32.997604, 50.119686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.976929, 33.129654, 49.765465>,  <40.055367, 33.208881, 49.552933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.976929, 33.129654, 49.765465>,  <39.846199, 32.997604, 50.119686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976929, 33.129654, 49.765465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777054, -0.439473, -0.450611,
		-0.537932, 0.835395, 0.112889,
		0.326827, 0.330119, -0.885554,
		40.074978, 33.228691, 49.499798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903744, 32.431034, 49.466785>,  <39.846199, 32.997604, 50.119686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903744, 32.431034, 49.466785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.177750, 32.721813, 49.447609>,  <40.342155, 32.896282, 49.436104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.177750, 32.721813, 49.447609>,  <39.903744, 32.431034, 49.466785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177750, 32.721813, 49.447609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011511, -0.076591, -0.996996,
		-0.728436, 0.682407, -0.060834,
		0.685017, 0.726948, -0.047937,
		40.383255, 32.939899, 49.433228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731472, 32.964211, 48.963646>,  <39.903744, 32.431034, 49.466785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731472, 32.964211, 48.963646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.128651, 32.964310, 49.011070>,  <40.366959, 32.964371, 49.039524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.128651, 32.964310, 49.011070>,  <39.731472, 32.964211, 48.963646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128651, 32.964310, 49.011070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116704, -0.178159, -0.977057,
		0.020877, 0.984002, -0.176931,
		0.992947, 0.000250, 0.118557,
		40.426537, 32.964386, 49.046638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987888, 33.513256, 48.542648>,  <39.731472, 32.964211, 48.963646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987888, 33.513256, 48.542648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.306377, 33.276390, 48.592232>,  <40.497471, 33.134270, 48.621983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.306377, 33.276390, 48.592232>,  <39.987888, 33.513256, 48.542648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306377, 33.276390, 48.592232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029002, -0.167292, -0.985481,
		0.604302, 0.788262, -0.116029,
		0.796227, -0.592163, 0.123956,
		40.545246, 33.098740, 48.629417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441376, 33.574959, 48.002743>,  <39.987888, 33.513256, 48.542648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441376, 33.574959, 48.002743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.630188, 33.244656, 48.126236>,  <40.743473, 33.046474, 48.200333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.630188, 33.244656, 48.126236>,  <40.441376, 33.574959, 48.002743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630188, 33.244656, 48.126236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195751, -0.243284, -0.949997,
		0.859577, 0.508858, 0.046807,
		0.472026, -0.825758, 0.308730,
		40.771797, 32.996929, 48.218857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150139, 33.544994, 47.628357>,  <40.441376, 33.574959, 48.002743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150139, 33.544994, 47.628357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.998142, 33.188759, 47.728317>,  <40.906944, 32.975018, 47.788292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.998142, 33.188759, 47.728317>,  <41.150139, 33.544994, 47.628357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998142, 33.188759, 47.728317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228217, -0.352081, -0.907720,
		0.896394, -0.287895, 0.337036,
		-0.379992, -0.890593, 0.249901,
		40.884144, 32.921581, 47.803288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517582, 33.074791, 47.328293>,  <41.150139, 33.544994, 47.628357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517582, 33.074791, 47.328293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.190498, 32.862698, 47.417923>,  <40.994247, 32.735443, 47.471699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.190498, 32.862698, 47.417923>,  <41.517582, 33.074791, 47.328293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190498, 32.862698, 47.417923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094612, -0.507768, -0.856283,
		0.567808, -0.678988, 0.465371,
		-0.817706, -0.530234, 0.224074,
		40.945187, 32.703629, 47.485146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645859, 32.397705, 47.085091>,  <41.517582, 33.074791, 47.328293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645859, 32.397705, 47.085091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.248199, 32.436661, 47.103783>,  <41.009605, 32.460033, 47.114998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.248199, 32.436661, 47.103783>,  <41.645859, 32.397705, 47.085091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248199, 32.436661, 47.103783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097325, -0.619916, -0.778609,
		-0.046864, -0.778601, 0.625767,
		-0.994149, 0.097392, 0.046726,
		40.949955, 32.465878, 47.117802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357395, 31.865557, 46.804596>,  <41.645859, 32.397705, 47.085091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357395, 31.865557, 46.804596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.031525, 32.097034, 46.789513>,  <40.836002, 32.235920, 46.780464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.031525, 32.097034, 46.789513>,  <41.357395, 31.865557, 46.804596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031525, 32.097034, 46.789513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292576, -0.466285, -0.834852,
		-0.500713, -0.669094, 0.549181,
		-0.814670, 0.578699, -0.037714,
		40.787125, 32.270641, 46.778198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905689, 31.440250, 46.507000>,  <41.357395, 31.865557, 46.804596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905689, 31.440250, 46.507000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.743595, 31.801294, 46.448925>,  <40.646339, 32.017921, 46.414082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.743595, 31.801294, 46.448925>,  <40.905689, 31.440250, 46.507000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743595, 31.801294, 46.448925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320391, -0.288948, -0.902141,
		-0.856234, -0.319062, 0.406280,
		-0.405232, 0.902612, -0.145183,
		40.622025, 32.072079, 46.405369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273930, 31.318838, 46.127438>,  <40.905689, 31.440250, 46.507000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273930, 31.318838, 46.127438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.298759, 31.708971, 46.042702>,  <40.313656, 31.943050, 45.991859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.298759, 31.708971, 46.042702>,  <40.273930, 31.318838, 46.127438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298759, 31.708971, 46.042702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225113, -0.193101, -0.955006,
		-0.972354, 0.106967, 0.207573,
		0.062071, 0.975331, -0.211842,
		40.317379, 32.001572, 45.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571678, 31.559738, 45.714615>,  <40.273930, 31.318838, 46.127438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571678, 31.559738, 45.714615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.884037, 31.802679, 45.656212>,  <40.071453, 31.948444, 45.621170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.884037, 31.802679, 45.656212>,  <39.571678, 31.559738, 45.714615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884037, 31.802679, 45.656212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234040, 0.067753, -0.969863,
		-0.579157, 0.791537, 0.195053,
		0.780898, 0.607353, -0.146012,
		40.118305, 31.984884, 45.612408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141266, 32.123753, 45.967220>,  <39.571678, 31.559738, 45.714615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141266, 32.123753, 45.967220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.761909, 32.146240, 46.092052>,  <38.534294, 32.159733, 46.166950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.761909, 32.146240, 46.092052>,  <39.141266, 32.123753, 45.967220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761909, 32.146240, 46.092052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300069, -0.159084, 0.940559,
		0.102522, 0.985663, 0.134005,
		-0.948392, 0.056217, 0.312076,
		38.477390, 32.163105, 46.185677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153378, 32.516937, 46.583523>,  <39.141266, 32.123753, 45.967220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153378, 32.516937, 46.583523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.808617, 32.316917, 46.617168>,  <38.601761, 32.196907, 46.637356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.808617, 32.316917, 46.617168>,  <39.153378, 32.516937, 46.583523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808617, 32.316917, 46.617168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125176, -0.049077, 0.990920,
		-0.491377, 0.864608, 0.104893,
		-0.861905, -0.500045, 0.084113,
		38.550045, 32.166904, 46.642403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743309, 32.870872, 47.151619>,  <39.153378, 32.516937, 46.583523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743309, 32.870872, 47.151619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.561394, 32.519581, 47.092449>,  <38.452244, 32.308807, 47.056946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.561394, 32.519581, 47.092449>,  <38.743309, 32.870872, 47.151619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561394, 32.519581, 47.092449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378230, 0.040090, 0.924843,
		-0.806295, 0.476554, -0.350405,
		-0.454786, -0.878230, -0.147923,
		38.424957, 32.256111, 47.048073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184921, 32.817017, 47.616611>,  <38.743309, 32.870872, 47.151619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184921, 32.817017, 47.616611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.239841, 32.438213, 47.500454>,  <38.272793, 32.210934, 47.430759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.239841, 32.438213, 47.500454>,  <38.184921, 32.817017, 47.616611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239841, 32.438213, 47.500454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187537, -0.312720, 0.931148,
		-0.972614, -0.073388, -0.220535,
		0.137301, -0.947006, -0.290393,
		38.281033, 32.154110, 47.413338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659966, 32.507175, 48.005135>,  <38.184921, 32.817017, 47.616611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659966, 32.507175, 48.005135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888603, 32.197380, 47.896732>,  <38.025784, 32.011501, 47.831692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888603, 32.197380, 47.896732>,  <37.659966, 32.507175, 48.005135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888603, 32.197380, 47.896732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122802, -0.407302, 0.905000,
		-0.811297, -0.484011, -0.327920,
		0.571593, -0.774492, -0.271006,
		38.060081, 31.965033, 47.815430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332508, 31.957170, 48.209663>,  <37.659966, 32.507175, 48.005135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332508, 31.957170, 48.209663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.706524, 31.820707, 48.171043>,  <37.930931, 31.738831, 48.147873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.706524, 31.820707, 48.171043>,  <37.332508, 31.957170, 48.209663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706524, 31.820707, 48.171043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005014, -0.259562, 0.965713,
		-0.354522, -0.903459, -0.240989,
		0.935034, -0.341158, -0.096550,
		37.987034, 31.718361, 48.142078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303642, 31.271341, 48.534618>,  <37.332508, 31.957170, 48.209663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303642, 31.271341, 48.534618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.672009, 31.427160, 48.539635>,  <37.893028, 31.520653, 48.542645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.672009, 31.427160, 48.539635>,  <37.303642, 31.271341, 48.534618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672009, 31.427160, 48.539635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062107, -0.178447, 0.981988,
		0.384771, -0.903553, -0.188529,
		0.920920, 0.389549, 0.012544,
		37.948284, 31.544025, 48.543396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651520, 30.928469, 49.003769>,  <37.303642, 31.271341, 48.534618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651520, 30.928469, 49.003769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883675, 31.254082, 48.994801>,  <38.022968, 31.449450, 48.989418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883675, 31.254082, 48.994801>,  <37.651520, 30.928469, 49.003769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883675, 31.254082, 48.994801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170206, -0.094336, 0.980883,
		0.796354, -0.573109, -0.193305,
		0.580388, 0.814032, -0.022422,
		38.057793, 31.498291, 48.988075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251835, 30.846771, 49.421963>,  <37.651520, 30.928469, 49.003769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251835, 30.846771, 49.421963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240646, 31.245081, 49.386974>,  <38.233932, 31.484066, 49.365982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240646, 31.245081, 49.386974>,  <38.251835, 30.846771, 49.421963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240646, 31.245081, 49.386974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284146, 0.091813, 0.954375,
		0.958373, 0.001843, -0.285514,
		-0.027973, 0.995775, -0.087467,
		38.232254, 31.543814, 49.360733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688591, 30.962582, 49.857265>,  <38.251835, 30.846771, 49.421963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688591, 30.962582, 49.857265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.506626, 31.314589, 49.802673>,  <38.397446, 31.525793, 49.769920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.506626, 31.314589, 49.802673>,  <38.688591, 30.962582, 49.857265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506626, 31.314589, 49.802673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286696, 0.289818, 0.913132,
		0.843125, 0.376267, -0.384139,
		-0.454912, 0.880016, -0.136479,
		38.370152, 31.578594, 49.761730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139576, 31.462639, 50.047516>,  <38.688591, 30.962582, 49.857265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139576, 31.462639, 50.047516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.782761, 31.642260, 50.067989>,  <38.568672, 31.750032, 50.080273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.782761, 31.642260, 50.067989>,  <39.139576, 31.462639, 50.047516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782761, 31.642260, 50.067989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208865, 0.309158, 0.927791,
		0.400802, 0.838316, -0.369572,
		-0.892039, 0.449051, 0.051184,
		38.515148, 31.776976, 50.083344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238018, 32.216099, 50.267014>,  <39.139576, 31.462639, 50.047516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238018, 32.216099, 50.267014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.866570, 32.100914, 50.360596>,  <38.643700, 32.031803, 50.416744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.866570, 32.100914, 50.360596>,  <39.238018, 32.216099, 50.267014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866570, 32.100914, 50.360596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142770, 0.304676, 0.941695,
		-0.342450, 0.907883, -0.241817,
		-0.928625, -0.287959, 0.233955,
		38.587982, 32.014526, 50.430782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144043, 32.689213, 50.815739>,  <39.238018, 32.216099, 50.267014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144043, 32.689213, 50.815739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831429, 32.441635, 50.847008>,  <38.643860, 32.293087, 50.865768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831429, 32.441635, 50.847008>,  <39.144043, 32.689213, 50.815739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831429, 32.441635, 50.847008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105574, 0.254705, 0.961239,
		-0.614864, 0.742989, -0.264405,
		-0.781535, -0.618945, 0.078169,
		38.596970, 32.255951, 50.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616722, 33.076717, 51.209076>,  <39.144043, 32.689213, 50.815739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616722, 33.076717, 51.209076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.519314, 32.691105, 51.251671>,  <38.460869, 32.459736, 51.277229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.519314, 32.691105, 51.251671>,  <38.616722, 33.076717, 51.209076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519314, 32.691105, 51.251671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288539, 0.176832, 0.940997,
		-0.925982, 0.198425, -0.321223,
		-0.243520, -0.964032, 0.106490,
		38.446259, 32.401894, 51.283619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187943, 33.741791, 51.193340>,  <38.616722, 33.076717, 51.209076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187943, 33.741791, 51.193340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.131569, 34.101036, 51.359966>,  <38.097744, 34.316582, 51.459942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.131569, 34.101036, 51.359966>,  <38.187943, 33.741791, 51.193340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131569, 34.101036, 51.359966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307087, 0.360355, -0.880819,
		-0.941188, -0.252064, 0.225011,
		-0.140939, 0.898114, 0.416567,
		38.089287, 34.370472, 51.484936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512718, 34.018452, 50.919022>,  <38.187943, 33.741791, 51.193340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512718, 34.018452, 50.919022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742695, 34.315617, 51.056149>,  <37.880680, 34.493916, 51.138424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.742695, 34.315617, 51.056149>,  <37.512718, 34.018452, 50.919022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742695, 34.315617, 51.056149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156940, 0.511346, -0.844923,
		-0.803005, 0.431975, 0.410585,
		0.574937, 0.742915, 0.342819,
		37.915176, 34.538490, 51.158993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187874, 34.631653, 50.789391>,  <37.512718, 34.018452, 50.919022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187874, 34.631653, 50.789391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.571644, 34.736252, 50.831573>,  <37.801907, 34.799011, 50.856884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.571644, 34.736252, 50.831573>,  <37.187874, 34.631653, 50.789391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571644, 34.736252, 50.831573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070598, 0.584883, -0.808039,
		-0.272978, 0.767809, 0.579613,
		0.959426, 0.261497, 0.105455,
		37.859470, 34.814701, 50.863209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172455, 35.366478, 50.588020>,  <37.187874, 34.631653, 50.789391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172455, 35.366478, 50.588020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.561401, 35.274109, 50.574242>,  <37.794769, 35.218689, 50.565975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.561401, 35.274109, 50.574242>,  <37.172455, 35.366478, 50.588020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561401, 35.274109, 50.574242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117444, 0.611283, -0.782649,
		0.201784, 0.756974, 0.621510,
		0.972363, -0.230919, -0.034445,
		37.853111, 35.204834, 50.563908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555737, 36.002323, 50.595554>,  <37.172455, 35.366478, 50.588020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555737, 36.002323, 50.595554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.812862, 35.731670, 50.451908>,  <37.967136, 35.569279, 50.365719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.812862, 35.731670, 50.451908>,  <37.555737, 36.002323, 50.595554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812862, 35.731670, 50.451908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299554, 0.653508, -0.695122,
		0.705026, 0.339257, 0.622770,
		0.642810, -0.676632, -0.359115,
		38.005707, 35.528679, 50.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265305, 36.283997, 50.506050>,  <37.555737, 36.002323, 50.595554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265305, 36.283997, 50.506050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219238, 35.969360, 50.263397>,  <38.191597, 35.780579, 50.117805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219238, 35.969360, 50.263397>,  <38.265305, 36.283997, 50.506050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219238, 35.969360, 50.263397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093193, 0.599449, -0.794969,
		0.988965, -0.148088, 0.004269,
		-0.115167, -0.786594, -0.606635,
		38.184689, 35.733383, 50.081406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688419, 36.426563, 49.927879>,  <38.265305, 36.283997, 50.506050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688419, 36.426563, 49.927879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450352, 36.141296, 49.779739>,  <38.307510, 35.970135, 49.690857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450352, 36.141296, 49.779739>,  <38.688419, 36.426563, 49.927879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450352, 36.141296, 49.779739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047506, 0.491283, -0.869703,
		0.802193, -0.500029, -0.326277,
		-0.595171, -0.713171, -0.370350,
		38.271801, 35.927345, 49.668636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866177, 36.248692, 49.187527>,  <38.688419, 36.426563, 49.927879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866177, 36.248692, 49.187527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476906, 36.157192, 49.197350>,  <38.243343, 36.102291, 49.203243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.476906, 36.157192, 49.197350>,  <38.866177, 36.248692, 49.187527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476906, 36.157192, 49.197350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076688, 0.221909, -0.972047,
		0.216840, -0.947871, -0.233497,
		-0.973190, -0.228685, 0.024572,
		38.184952, 36.088566, 49.204716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543510, 36.610130, 49.260750>,  <38.866177, 36.248692, 49.187527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543510, 36.610130, 49.260750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.466133, 37.002541, 49.266041>,  <39.419708, 37.237988, 49.269215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.466133, 37.002541, 49.266041>,  <39.543510, 36.610130, 49.260750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466133, 37.002541, 49.266041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347513, 0.055905, 0.936007,
		0.917506, 0.185656, -0.351732,
		-0.193439, 0.981023, 0.013225,
		39.408100, 37.296848, 49.270008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107777, 36.822979, 49.392490>,  <39.543510, 36.610130, 49.260750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107777, 36.822979, 49.392490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849136, 37.096256, 49.528229>,  <39.693951, 37.260223, 49.609673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.849136, 37.096256, 49.528229>,  <40.107777, 36.822979, 49.392490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849136, 37.096256, 49.528229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399230, -0.075987, 0.913697,
		0.650015, 0.726276, -0.223616,
		-0.646604, 0.683190, 0.339344,
		39.655155, 37.301212, 49.630032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556091, 37.387127, 49.592422>,  <40.107777, 36.822979, 49.392490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556091, 37.387127, 49.592422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223759, 37.488823, 49.790447>,  <40.024361, 37.549839, 49.909260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.223759, 37.488823, 49.790447>,  <40.556091, 37.387127, 49.592422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223759, 37.488823, 49.790447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486648, -0.099653, 0.867896,
		0.269986, 0.961994, -0.040929,
		-0.830832, 0.254238, 0.495057,
		39.974510, 37.565094, 49.938965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823502, 37.723797, 50.030476>,  <40.556091, 37.387127, 49.592422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823502, 37.723797, 50.030476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.463783, 37.694481, 50.202938>,  <40.247952, 37.676891, 50.306416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.463783, 37.694481, 50.202938>,  <40.823502, 37.723797, 50.030476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463783, 37.694481, 50.202938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424101, 0.094579, 0.900662,
		-0.106791, 0.992816, -0.053970,
		-0.899296, -0.073294, 0.431155,
		40.193993, 37.672493, 50.332283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806557, 38.180923, 50.563427>,  <40.823502, 37.723797, 50.030476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806557, 38.180923, 50.563427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.516151, 37.929958, 50.676041>,  <40.341908, 37.779381, 50.743610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.516151, 37.929958, 50.676041>,  <40.806557, 38.180923, 50.563427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516151, 37.929958, 50.676041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239099, 0.153558, 0.958776,
		-0.644777, 0.763399, 0.038527,
		-0.726012, -0.627409, 0.281538,
		40.298347, 37.741737, 50.760502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506702, 38.406590, 51.178940>,  <40.806557, 38.180923, 50.563427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506702, 38.406590, 51.178940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.407299, 38.019207, 51.171570>,  <40.347656, 37.786777, 51.167149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.407299, 38.019207, 51.171570>,  <40.506702, 38.406590, 51.178940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407299, 38.019207, 51.171570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246601, -0.081645, 0.965672,
		-0.936714, 0.235431, 0.259111,
		-0.248505, -0.968455, -0.018421,
		40.332748, 37.728672, 51.166042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189545, 38.310623, 51.850651>,  <40.506702, 38.406590, 51.178940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189545, 38.310623, 51.850651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.294498, 37.941723, 51.737087>,  <40.357471, 37.720383, 51.668949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.294498, 37.941723, 51.737087>,  <40.189545, 38.310623, 51.850651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294498, 37.941723, 51.737087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278377, -0.209362, 0.937376,
		-0.923938, -0.324984, 0.201801,
		0.262383, -0.922254, -0.283906,
		40.373215, 37.665047, 51.651917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972527, 37.883732, 52.381344>,  <40.189545, 38.310623, 51.850651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972527, 37.883732, 52.381344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.229618, 37.633923, 52.203865>,  <40.383873, 37.484035, 52.097378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.229618, 37.633923, 52.203865>,  <39.972527, 37.883732, 52.381344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229618, 37.633923, 52.203865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284806, -0.342876, 0.895166,
		-0.711187, -0.701716, -0.042507,
		0.642727, -0.624524, -0.443702,
		40.422436, 37.446564, 52.070755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.651459, 39.532166, 36.562572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023312, 39.393280, 36.611931>,  <36.246426, 39.309948, 36.641544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023312, 39.393280, 36.611931>,  <35.651459, 39.532166, 36.562572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023312, 39.393280, 36.611931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028771, 0.265452, 0.963695,
		-0.367359, -0.899434, 0.236784,
		0.929634, -0.347210, 0.123394,
		36.302200, 39.289116, 36.648949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667797, 39.217903, 37.131783>,  <35.651459, 39.532166, 36.562572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667797, 39.217903, 37.131783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056614, 39.293568, 37.076153>,  <36.289906, 39.338966, 37.042774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056614, 39.293568, 37.076153>,  <35.667797, 39.217903, 37.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056614, 39.293568, 37.076153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126553, 0.076811, 0.988981,
		0.197765, -0.978936, 0.050724,
		0.972046, 0.189167, -0.139078,
		36.348228, 39.350319, 37.034428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031017, 38.764496, 37.538044>,  <35.667797, 39.217903, 37.131783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031017, 38.764496, 37.538044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292389, 39.062687, 37.485432>,  <36.449211, 39.241600, 37.453865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292389, 39.062687, 37.485432>,  <36.031017, 38.764496, 37.538044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292389, 39.062687, 37.485432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121148, 0.068532, 0.990266,
		0.747235, -0.662999, -0.045533,
		0.653425, 0.745477, -0.131530,
		36.488415, 39.286331, 37.445972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562176, 38.631134, 38.034813>,  <36.031017, 38.764496, 37.538044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562176, 38.631134, 38.034813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606758, 39.019230, 37.948830>,  <36.633507, 39.252087, 37.897240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606758, 39.019230, 37.948830>,  <36.562176, 38.631134, 38.034813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606758, 39.019230, 37.948830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228640, 0.185465, 0.955681,
		0.967110, -0.155663, -0.201165,
		0.111455, 0.970243, -0.214956,
		36.640194, 39.310303, 37.884342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265099, 38.941093, 38.328926>,  <36.562176, 38.631134, 38.034813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265099, 38.941093, 38.328926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015419, 39.248158, 38.270863>,  <36.865612, 39.432396, 38.236023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015419, 39.248158, 38.270863>,  <37.265099, 38.941093, 38.328926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015419, 39.248158, 38.270863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185637, 0.326212, 0.926890,
		0.758891, 0.551616, -0.346128,
		-0.624199, 0.767662, -0.145159,
		36.828159, 39.478455, 38.227314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617664, 39.622868, 38.646503>,  <37.265099, 38.941093, 38.328926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617664, 39.622868, 38.646503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221512, 39.670841, 38.618889>,  <36.983822, 39.699627, 38.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221512, 39.670841, 38.618889>,  <37.617664, 39.622868, 38.646503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221512, 39.670841, 38.618889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046648, 0.180342, 0.982497,
		0.130285, 0.976265, -0.173012,
		-0.990379, 0.119934, -0.069037,
		36.924397, 39.706821, 38.598179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520050, 40.284977, 38.894936>,  <37.617664, 39.622868, 38.646503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520050, 40.284977, 38.894936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175350, 40.089821, 38.950588>,  <36.968533, 39.972729, 38.983982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175350, 40.089821, 38.950588>,  <37.520050, 40.284977, 38.894936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175350, 40.089821, 38.950588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068795, 0.159338, 0.984824,
		-0.502655, 0.858239, -0.103744,
		-0.861745, -0.487890, 0.139134,
		36.916828, 39.943455, 38.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119389, 40.665958, 39.421467>,  <37.520050, 40.284977, 38.894936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119389, 40.665958, 39.421467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950554, 40.303493, 39.410774>,  <36.849255, 40.086014, 39.404358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950554, 40.303493, 39.410774>,  <37.119389, 40.665958, 39.421467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950554, 40.303493, 39.410774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048938, -0.006672, 0.998780,
		-0.905234, 0.422879, -0.041530,
		-0.422086, -0.906161, -0.026734,
		36.823929, 40.031647, 39.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491581, 40.730659, 39.882542>,  <37.119389, 40.665958, 39.421467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491581, 40.730659, 39.882542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567024, 40.339222, 39.849590>,  <36.612289, 40.104359, 39.829819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567024, 40.339222, 39.849590>,  <36.491581, 40.730659, 39.882542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567024, 40.339222, 39.849590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025276, -0.088696, 0.995738,
		-0.981728, -0.185719, -0.041463,
		0.188605, -0.978592, -0.082382,
		36.623604, 40.045643, 39.824875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035603, 40.392124, 40.353905>,  <36.491581, 40.730659, 39.882542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035603, 40.392124, 40.353905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323593, 40.122334, 40.288540>,  <36.496387, 39.960457, 40.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323593, 40.122334, 40.288540>,  <36.035603, 40.392124, 40.353905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323593, 40.122334, 40.288540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023992, -0.259520, 0.965440,
		-0.693580, -0.691177, -0.203032,
		0.719980, -0.674480, -0.163415,
		36.539589, 39.919991, 40.239517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857368, 39.791611, 40.662357>,  <36.035603, 40.392124, 40.353905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857368, 39.791611, 40.662357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253784, 39.761909, 40.617950>,  <36.491634, 39.744087, 40.591309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253784, 39.761909, 40.617950>,  <35.857368, 39.791611, 40.662357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253784, 39.761909, 40.617950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086890, -0.272781, 0.958144,
		-0.101431, -0.959206, -0.263885,
		0.991041, -0.074257, -0.111014,
		36.551098, 39.739632, 40.584644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017540, 39.152782, 40.989410>,  <35.857368, 39.791611, 40.662357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017540, 39.152782, 40.989410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332142, 39.399376, 40.974678>,  <36.520905, 39.547333, 40.965839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332142, 39.399376, 40.974678>,  <36.017540, 39.152782, 40.989410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332142, 39.399376, 40.974678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104588, -0.074188, 0.991745,
		0.608658, -0.783868, -0.122826,
		0.786509, 0.616480, -0.036828,
		36.568096, 39.584320, 40.963631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032295, 38.371166, 41.163902>,  <36.017540, 39.152782, 40.989410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032295, 38.371166, 41.163902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686443, 38.332912, 41.361195>,  <35.478931, 38.309959, 41.479568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686443, 38.332912, 41.361195>,  <36.032295, 38.371166, 41.163902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686443, 38.332912, 41.361195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497225, 0.022174, -0.867338,
		0.072010, -0.995170, -0.066723,
		-0.864629, -0.095634, 0.493226,
		35.427055, 38.304222, 41.509163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584854, 37.925148, 40.674526>,  <36.032295, 38.371166, 41.163902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584854, 37.925148, 40.674526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335018, 38.086452, 40.942039>,  <35.185116, 38.183235, 41.102547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335018, 38.086452, 40.942039>,  <35.584854, 37.925148, 40.674526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335018, 38.086452, 40.942039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692487, 0.109914, -0.713008,
		-0.361038, -0.908459, 0.210603,
		-0.624591, 0.403263, 0.668779,
		35.147640, 38.207432, 41.142673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011398, 37.709362, 40.395348>,  <35.584854, 37.925148, 40.674526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011398, 37.709362, 40.395348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875454, 37.988033, 40.648056>,  <34.793888, 38.155235, 40.799683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875454, 37.988033, 40.648056>,  <35.011398, 37.709362, 40.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875454, 37.988033, 40.648056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776499, 0.171140, -0.606432,
		-0.530609, -0.696672, 0.482807,
		-0.339857, 0.696678, 0.631774,
		34.773499, 38.197037, 40.837589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264523, 37.517548, 40.473412>,  <35.011398, 37.709362, 40.395348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264523, 37.517548, 40.473412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321953, 37.899101, 40.578857>,  <34.356411, 38.128033, 40.642124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321953, 37.899101, 40.578857>,  <34.264523, 37.517548, 40.473412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321953, 37.899101, 40.578857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856988, 0.253057, -0.448925,
		-0.494931, -0.161458, 0.853800,
		0.143578, 0.953883, 0.263613,
		34.365025, 38.185265, 40.657940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596279, 37.818451, 40.667580>,  <34.264523, 37.517548, 40.473412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596279, 37.818451, 40.667580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828201, 38.115246, 40.532944>,  <33.967354, 38.293324, 40.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828201, 38.115246, 40.532944>,  <33.596279, 37.818451, 40.667580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828201, 38.115246, 40.532944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728919, 0.287817, -0.621158,
		-0.364013, 0.605494, 0.707722,
		0.579802, 0.741982, -0.336587,
		34.002144, 38.337841, 40.431969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133343, 38.374279, 40.495052>,  <33.596279, 37.818451, 40.667580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133343, 38.374279, 40.495052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465145, 38.502544, 40.312145>,  <33.664227, 38.579502, 40.202400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465145, 38.502544, 40.312145>,  <33.133343, 38.374279, 40.495052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465145, 38.502544, 40.312145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544926, 0.285296, -0.788455,
		-0.122372, 0.903206, 0.411394,
		0.829506, 0.320664, -0.457268,
		33.713997, 38.598743, 40.174965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935318, 39.050076, 40.204109>,  <33.133343, 38.374279, 40.495052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935318, 39.050076, 40.204109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244492, 38.901318, 39.998482>,  <33.429996, 38.812065, 39.875107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244492, 38.901318, 39.998482>,  <32.935318, 39.050076, 40.204109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244492, 38.901318, 39.998482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519068, 0.095298, -0.849403,
		0.364875, 0.923371, -0.119378,
		0.772938, -0.371892, -0.514065,
		33.476372, 38.789749, 39.844261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988991, 39.525452, 39.667938>,  <32.935318, 39.050076, 40.204109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988991, 39.525452, 39.667938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134605, 39.165627, 39.571396>,  <33.221973, 38.949730, 39.513470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134605, 39.165627, 39.571396>,  <32.988991, 39.525452, 39.667938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134605, 39.165627, 39.571396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613442, -0.036585, -0.788892,
		0.700831, 0.435247, -0.565151,
		0.364039, -0.899567, -0.241359,
		33.243816, 38.895756, 39.498989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868923, 39.476940, 38.953411>,  <32.988991, 39.525452, 39.667938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868923, 39.476940, 38.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948421, 39.089573, 39.013645>,  <32.996120, 38.857155, 39.049786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948421, 39.089573, 39.013645>,  <32.868923, 39.476940, 38.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948421, 39.089573, 39.013645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482029, -0.230369, -0.845328,
		0.853317, 0.095416, -0.512587,
		0.198742, -0.968414, 0.150584,
		33.008045, 38.799049, 39.058819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055279, 39.238724, 38.322044>,  <32.868923, 39.476940, 38.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055279, 39.238724, 38.322044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984303, 38.904736, 38.530407>,  <32.941715, 38.704342, 38.655426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984303, 38.904736, 38.530407>,  <33.055279, 39.238724, 38.322044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984303, 38.904736, 38.530407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472224, -0.392152, -0.789443,
		0.863434, -0.386065, -0.324708,
		-0.177441, -0.834968, 0.520907,
		32.931068, 38.654243, 38.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190536, 38.614079, 37.935940>,  <33.055279, 39.238724, 38.322044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190536, 38.614079, 37.935940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955700, 38.458530, 38.219940>,  <32.814800, 38.365200, 38.390343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955700, 38.458530, 38.219940>,  <33.190536, 38.614079, 37.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955700, 38.458530, 38.219940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619496, -0.348767, -0.703268,
		0.521106, -0.852726, -0.036146,
		-0.587089, -0.388869, 0.710006,
		32.779572, 38.341869, 38.432941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080280, 37.880806, 37.762268>,  <33.190536, 38.614079, 37.935940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080280, 37.880806, 37.762268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777889, 37.996578, 37.997120>,  <32.596455, 38.066040, 38.138031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777889, 37.996578, 37.997120>,  <33.080280, 37.880806, 37.762268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777889, 37.996578, 37.997120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649990, -0.225677, -0.725660,
		-0.077525, -0.930215, 0.358734,
		-0.755978, 0.289430, 0.587135,
		32.551094, 38.083408, 38.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654079, 37.316086, 37.667133>,  <33.080280, 37.880806, 37.762268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654079, 37.316086, 37.667133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446423, 37.623158, 37.817417>,  <32.321827, 37.807400, 37.907585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446423, 37.623158, 37.817417>,  <32.654079, 37.316086, 37.667133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446423, 37.623158, 37.817417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785522, -0.255330, -0.563704,
		-0.336818, -0.587765, 0.735586,
		-0.519142, 0.767684, 0.375702,
		32.290680, 37.853462, 37.930130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027897, 36.992622, 37.902790>,  <32.654079, 37.316086, 37.667133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027897, 36.992622, 37.902790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972368, 37.380360, 37.821686>,  <31.939053, 37.613003, 37.773022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972368, 37.380360, 37.821686>,  <32.027897, 36.992622, 37.902790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972368, 37.380360, 37.821686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737144, -0.237865, -0.632487,
		-0.661324, 0.061663, 0.747562,
		-0.138818, 0.969339, -0.202760,
		31.930723, 37.671162, 37.760857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045437, 36.211170, 37.598598>,  <32.027897, 36.992622, 37.902790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045437, 36.211170, 37.598598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410561, 36.054150, 37.643650>,  <32.629635, 35.959938, 37.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410561, 36.054150, 37.643650>,  <32.045437, 36.211170, 37.598598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410561, 36.054150, 37.643650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070898, 0.423929, 0.902916,
		-0.402185, -0.816205, 0.414797,
		0.912809, -0.392548, 0.112631,
		32.684402, 35.936386, 37.677441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048042, 35.891918, 38.250267>,  <32.045437, 36.211170, 37.598598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048042, 35.891918, 38.250267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411350, 36.022171, 38.145191>,  <32.629337, 36.100323, 38.082146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411350, 36.022171, 38.145191>,  <32.048042, 35.891918, 38.250267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411350, 36.022171, 38.145191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077786, 0.485487, 0.870776,
		0.411081, -0.811337, 0.415626,
		0.908274, 0.325630, -0.262686,
		32.683830, 36.119862, 38.066383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674847, 35.756035, 38.693695>,  <32.048042, 35.891918, 38.250267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674847, 35.756035, 38.693695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742424, 36.097530, 38.496681>,  <32.782970, 36.302429, 38.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742424, 36.097530, 38.496681>,  <32.674847, 35.756035, 38.693695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742424, 36.097530, 38.496681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025003, 0.503266, 0.863770,
		0.985308, -0.133617, 0.106372,
		0.168947, 0.853739, -0.492531,
		32.793110, 36.353653, 38.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228489, 35.296715, 38.467983>,  <32.674847, 35.756035, 38.693695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228489, 35.296715, 38.467983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579617, 35.431816, 38.332127>,  <33.790295, 35.512875, 38.250614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579617, 35.431816, 38.332127>,  <33.228489, 35.296715, 38.467983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579617, 35.431816, 38.332127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428228, -0.235701, 0.872391,
		0.214597, -0.911246, -0.351537,
		0.877821, 0.337750, -0.339640,
		33.842964, 35.533142, 38.230236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604393, 34.857113, 38.770882>,  <33.228489, 35.296715, 38.467983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604393, 34.857113, 38.770882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884590, 35.112247, 38.642834>,  <34.052708, 35.265327, 38.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884590, 35.112247, 38.642834>,  <33.604393, 34.857113, 38.770882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884590, 35.112247, 38.642834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612239, -0.306600, 0.728807,
		0.366715, -0.706510, -0.605281,
		0.700489, 0.637840, -0.320118,
		34.094738, 35.303600, 38.546799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276161, 34.522346, 38.565533>,  <33.604393, 34.857113, 38.770882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276161, 34.522346, 38.565533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386051, 34.902111, 38.626381>,  <34.451984, 35.129971, 38.662891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386051, 34.902111, 38.626381>,  <34.276161, 34.522346, 38.565533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386051, 34.902111, 38.626381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830294, -0.314030, 0.460432,
		0.484912, -0.000183, -0.874563,
		0.274723, 0.949413, 0.152125,
		34.468468, 35.186935, 38.672020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980293, 34.517933, 38.412521>,  <34.276161, 34.522346, 38.565533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980293, 34.517933, 38.412521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889107, 34.823788, 38.653641>,  <34.834396, 35.007301, 38.798313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889107, 34.823788, 38.653641>,  <34.980293, 34.517933, 38.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889107, 34.823788, 38.653641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649982, -0.341443, 0.678925,
		0.724951, 0.546580, -0.419161,
		-0.227967, 0.764635, 0.602797,
		34.820717, 35.053177, 38.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659397, 34.741146, 38.790108>,  <34.980293, 34.517933, 38.412521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659397, 34.741146, 38.790108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383076, 34.904102, 39.029045>,  <35.217281, 35.001877, 39.172409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383076, 34.904102, 39.029045>,  <35.659397, 34.741146, 38.790108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383076, 34.904102, 39.029045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431952, -0.430000, 0.792791,
		0.579836, 0.805688, 0.121071,
		-0.690802, 0.407392, 0.597348,
		35.175835, 35.026321, 39.208248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076870, 34.951046, 39.311760>,  <35.659397, 34.741146, 38.790108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076870, 34.951046, 39.311760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696796, 34.923618, 39.433376>,  <35.468750, 34.907162, 39.506348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696796, 34.923618, 39.433376>,  <36.076870, 34.951046, 39.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696796, 34.923618, 39.433376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306217, -0.387267, 0.869629,
		0.058114, 0.919414, 0.388974,
		-0.950186, -0.068572, 0.304046,
		35.411739, 34.903046, 39.524590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042252, 35.402802, 39.957176>,  <36.076870, 34.951046, 39.311760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042252, 35.402802, 39.957176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731457, 35.151093, 39.950115>,  <35.544979, 35.000069, 39.945877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731457, 35.151093, 39.950115>,  <36.042252, 35.402802, 39.957176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731457, 35.151093, 39.950115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137087, -0.196507, 0.970872,
		-0.614412, 0.751933, 0.238948,
		-0.776985, -0.629272, -0.017656,
		35.498360, 34.962311, 39.944820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704197, 35.517723, 40.639568>,  <36.042252, 35.402802, 39.957176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704197, 35.517723, 40.639568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594872, 35.159901, 40.498108>,  <35.529278, 34.945206, 40.413231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594872, 35.159901, 40.498108>,  <35.704197, 35.517723, 40.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594872, 35.159901, 40.498108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109812, -0.394263, 0.912413,
		-0.955637, 0.210539, 0.205990,
		-0.273313, -0.894556, -0.353652,
		35.512878, 34.891533, 40.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209591, 35.282505, 41.058590>,  <35.704197, 35.517723, 40.639568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209591, 35.282505, 41.058590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350422, 34.956356, 40.874760>,  <35.434921, 34.760666, 40.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350422, 34.956356, 40.874760>,  <35.209591, 35.282505, 41.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350422, 34.956356, 40.874760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138421, -0.440257, 0.887138,
		-0.925678, -0.375959, -0.042142,
		0.352080, -0.815371, -0.459577,
		35.456047, 34.711746, 40.736885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911106, 34.738110, 41.527668>,  <35.209591, 35.282505, 41.058590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911106, 34.738110, 41.527668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230354, 34.614086, 41.321030>,  <35.421902, 34.539673, 41.197048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230354, 34.614086, 41.321030>,  <34.911106, 34.738110, 41.527668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230354, 34.614086, 41.321030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294805, -0.546792, 0.783651,
		-0.525444, -0.777743, -0.345001,
		0.798122, -0.310056, -0.516591,
		35.469791, 34.521069, 41.166050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960178, 33.994934, 41.642002>,  <34.911106, 34.738110, 41.527668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960178, 33.994934, 41.642002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326756, 34.111305, 41.532097>,  <35.546703, 34.181129, 41.466152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326756, 34.111305, 41.532097>,  <34.960178, 33.994934, 41.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326756, 34.111305, 41.532097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395515, -0.554149, 0.732453,
		0.060832, -0.779923, -0.622912,
		0.916443, 0.290928, -0.274762,
		35.601688, 34.198582, 41.449669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339878, 33.337204, 41.799229>,  <34.960178, 33.994934, 41.642002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339878, 33.337204, 41.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617275, 33.619942, 41.743458>,  <35.783714, 33.789585, 41.709995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617275, 33.619942, 41.743458>,  <35.339878, 33.337204, 41.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617275, 33.619942, 41.743458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555327, -0.401141, 0.728490,
		0.459003, -0.582626, -0.670719,
		0.693490, 0.706848, -0.139423,
		35.825321, 33.831997, 41.701630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974827, 32.995411, 41.874081>,  <35.339878, 33.337204, 41.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974827, 32.995411, 41.874081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064404, 33.380741, 41.933201>,  <36.118149, 33.611938, 41.968674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064404, 33.380741, 41.933201>,  <35.974827, 32.995411, 41.874081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064404, 33.380741, 41.933201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657132, -0.261247, 0.707056,
		0.719741, -0.061214, -0.691539,
		0.223945, 0.963329, 0.147804,
		36.131588, 33.669739, 41.977543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735973, 33.066452, 41.903484>,  <35.974827, 32.995411, 41.874081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735973, 33.066452, 41.903484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551586, 33.361263, 42.101189>,  <36.440956, 33.538151, 42.219810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551586, 33.361263, 42.101189>,  <36.735973, 33.066452, 41.903484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551586, 33.361263, 42.101189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610660, -0.140681, 0.779296,
		0.643900, 0.661055, -0.385227,
		-0.460964, 0.737032, 0.494264,
		36.413296, 33.582375, 42.249470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244835, 33.346539, 42.250584>,  <36.735973, 33.066452, 41.903484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244835, 33.346539, 42.250584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934704, 33.513477, 42.440189>,  <36.748627, 33.613640, 42.553955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934704, 33.513477, 42.440189>,  <37.244835, 33.346539, 42.250584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934704, 33.513477, 42.440189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491903, -0.071681, 0.867694,
		0.396107, 0.905916, -0.149718,
		-0.775326, 0.417346, 0.474017,
		36.702106, 33.638680, 42.582394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606827, 33.791054, 42.619221>,  <37.244835, 33.346539, 42.250584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606827, 33.791054, 42.619221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246250, 33.723747, 42.778763>,  <37.029903, 33.683365, 42.874489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246250, 33.723747, 42.778763>,  <37.606827, 33.791054, 42.619221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246250, 33.723747, 42.778763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402691, 0.012174, 0.915255,
		-0.158863, 0.985666, 0.056785,
		-0.901445, -0.168267, 0.398853,
		36.975819, 33.673267, 42.898418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562080, 34.246655, 43.151245>,  <37.606827, 33.791054, 42.619221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562080, 34.246655, 43.151245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264702, 33.984203, 43.203064>,  <37.086273, 33.826733, 43.234158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264702, 33.984203, 43.203064>,  <37.562080, 34.246655, 43.151245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264702, 33.984203, 43.203064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303089, -0.157863, 0.939796,
		-0.596175, 0.737953, 0.316228,
		-0.743446, -0.656128, 0.129551,
		37.041668, 33.787365, 43.241928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316265, 34.400040, 43.735779>,  <37.562080, 34.246655, 43.151245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316265, 34.400040, 43.735779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214680, 34.016354, 43.686134>,  <37.153728, 33.786140, 43.656349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214680, 34.016354, 43.686134>,  <37.316265, 34.400040, 43.735779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214680, 34.016354, 43.686134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314607, -0.203266, 0.927203,
		-0.914616, 0.196434, 0.353399,
		-0.253968, -0.959217, -0.124111,
		37.138489, 33.728588, 43.648903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250076, 34.134048, 44.323227>,  <37.316265, 34.400040, 43.735779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250076, 34.134048, 44.323227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228539, 33.772499, 44.153465>,  <37.215618, 33.555569, 44.051609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228539, 33.772499, 44.153465>,  <37.250076, 34.134048, 44.323227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228539, 33.772499, 44.153465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284321, -0.421305, 0.861199,
		-0.957216, -0.074300, 0.279673,
		-0.053841, -0.903870, -0.424405,
		37.212387, 33.501339, 44.026142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850006, 33.720009, 44.732975>,  <37.250076, 34.134048, 44.323227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850006, 33.720009, 44.732975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080025, 33.472820, 44.518524>,  <37.218037, 33.324505, 44.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080025, 33.472820, 44.518524>,  <36.850006, 33.720009, 44.732975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080025, 33.472820, 44.518524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394109, -0.365019, 0.843469,
		-0.716939, -0.696323, 0.033647,
		0.575045, -0.617976, -0.536124,
		37.252537, 33.287426, 44.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725010, 33.064976, 44.927704>,  <36.850006, 33.720009, 44.732975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725010, 33.064976, 44.927704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096844, 33.063320, 44.780270>,  <37.319942, 33.062328, 44.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096844, 33.063320, 44.780270>,  <36.725010, 33.064976, 44.927704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096844, 33.063320, 44.780270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346721, -0.329657, 0.878129,
		-0.125137, -0.944092, -0.305011,
		0.929584, -0.004133, -0.368589,
		37.375717, 33.062080, 44.669693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981117, 32.441498, 45.075142>,  <36.725010, 33.064976, 44.927704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981117, 32.441498, 45.075142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314358, 32.635612, 44.968983>,  <37.514301, 32.752083, 44.905289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314358, 32.635612, 44.968983>,  <36.981117, 32.441498, 45.075142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314358, 32.635612, 44.968983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511569, -0.493585, 0.703328,
		0.210320, -0.721714, -0.659465,
		0.833104, 0.485286, -0.265396,
		37.564289, 32.781197, 44.889362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473385, 31.849012, 44.899254>,  <36.981117, 32.441498, 45.075142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473385, 31.849012, 44.899254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692432, 32.170517, 44.992271>,  <37.823860, 32.363419, 45.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692432, 32.170517, 44.992271>,  <37.473385, 31.849012, 44.899254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692432, 32.170517, 44.992271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234538, -0.414235, 0.879433,
		0.803184, -0.427054, -0.415355,
		0.547619, 0.803763, 0.232547,
		37.856720, 32.411648, 45.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136391, 31.615627, 45.130322>,  <37.473385, 31.849012, 44.899254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136391, 31.615627, 45.130322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107082, 31.986580, 45.277073>,  <38.089497, 32.209152, 45.365124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107082, 31.986580, 45.277073>,  <38.136391, 31.615627, 45.130322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107082, 31.986580, 45.277073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393786, -0.311076, 0.864965,
		0.916277, 0.207845, -0.342398,
		-0.073267, 0.927379, 0.366878,
		38.085102, 32.264793, 45.387135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825302, 31.784563, 45.428017>,  <38.136391, 31.615627, 45.130322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825302, 31.784563, 45.428017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553158, 32.020943, 45.601398>,  <38.389870, 32.162769, 45.705429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553158, 32.020943, 45.601398>,  <38.825302, 31.784563, 45.428017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553158, 32.020943, 45.601398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206894, -0.412513, 0.887146,
		0.703065, 0.693261, 0.158394,
		-0.680363, 0.590951, 0.433455,
		38.349049, 32.198227, 45.731434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309036, 32.237759, 45.272697>,  <38.825302, 31.784563, 45.428017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309036, 32.237759, 45.272697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702168, 32.224583, 45.200081>,  <39.938046, 32.216679, 45.156509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702168, 32.224583, 45.200081>,  <39.309036, 32.237759, 45.272697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702168, 32.224583, 45.200081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181130, 0.015073, -0.983344,
		0.035125, 0.999344, 0.008848,
		0.982832, -0.032938, -0.181541,
		39.997017, 32.214703, 45.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445797, 32.804401, 44.892063>,  <39.309036, 32.237759, 45.272697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445797, 32.804401, 44.892063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770580, 32.583492, 44.816463>,  <39.965450, 32.450947, 44.771103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770580, 32.583492, 44.816463>,  <39.445797, 32.804401, 44.892063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770580, 32.583492, 44.816463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088957, 0.202929, -0.975144,
		0.576902, 0.808586, 0.115641,
		0.811955, -0.552275, -0.189000,
		40.014168, 32.417809, 44.759762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699520, 33.091969, 44.343307>,  <39.445797, 32.804401, 44.892063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699520, 33.091969, 44.343307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893379, 32.742355, 44.329575>,  <40.009693, 32.532585, 44.321335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893379, 32.742355, 44.329575>,  <39.699520, 33.091969, 44.343307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893379, 32.742355, 44.329575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167311, -0.054105, -0.984418,
		0.858560, 0.482838, -0.172458,
		0.484646, -0.874037, -0.034331,
		40.038773, 32.480145, 44.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138294, 33.128723, 43.747101>,  <39.699520, 33.091969, 44.343307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138294, 33.128723, 43.747101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075405, 32.746967, 43.848625>,  <40.037674, 32.517914, 43.909538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075405, 32.746967, 43.848625>,  <40.138294, 33.128723, 43.747101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075405, 32.746967, 43.848625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076688, -0.268029, -0.960354,
		0.984582, -0.131523, 0.115330,
		-0.157220, -0.954391, 0.253810,
		40.028240, 32.460651, 43.924767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716652, 32.818371, 43.438038>,  <40.138294, 33.128723, 43.747101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716652, 32.818371, 43.438038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430473, 32.541279, 43.474380>,  <40.258766, 32.375023, 43.496185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430473, 32.541279, 43.474380>,  <40.716652, 32.818371, 43.438038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430473, 32.541279, 43.474380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082123, -0.045759, -0.995571,
		0.693820, -0.719743, -0.024150,
		-0.715451, -0.692731, 0.090856,
		40.215839, 32.333458, 43.501637>
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
