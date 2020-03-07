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
	<35.830669, 53.476189, 49.540268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566067, 53.184891, 49.611912>,  <35.407307, 53.010113, 49.654900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566067, 53.184891, 49.611912>,  <35.830669, 53.476189, 49.540268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566067, 53.184891, 49.611912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463049, -0.584490, -0.666301,
		0.589916, -0.357823, 0.723853,
		-0.661502, -0.728241, 0.179111,
		35.367615, 52.966419, 49.665646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170135, 52.798576, 49.668953>,  <35.830669, 53.476189, 49.540268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170135, 52.798576, 49.668953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272430, 53.150051, 49.507706>,  <36.333805, 53.360935, 49.410957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272430, 53.150051, 49.507706>,  <36.170135, 52.798576, 49.668953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272430, 53.150051, 49.507706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966471, -0.222414, 0.128320,
		0.023094, -0.422417, -0.906107,
		0.255735, 0.878690, -0.403118,
		36.349152, 53.413658, 49.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644436, 52.630741, 49.220398>,  <36.170135, 52.798576, 49.668953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644436, 52.630741, 49.220398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675621, 53.016136, 49.322853>,  <36.694332, 53.247375, 49.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675621, 53.016136, 49.322853>,  <36.644436, 52.630741, 49.220398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675621, 53.016136, 49.322853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981057, -0.119842, 0.152197,
		0.177336, 0.239421, -0.954583,
		0.077960, 0.963491, 0.256139,
		36.699009, 53.305183, 49.399696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315254, 52.734241, 48.881676>,  <36.644436, 52.630741, 49.220398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315254, 52.734241, 48.881676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246063, 53.036118, 49.134823>,  <37.204548, 53.217243, 49.286713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246063, 53.036118, 49.134823>,  <37.315254, 52.734241, 48.881676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246063, 53.036118, 49.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984170, 0.157608, 0.081050,
		-0.038577, 0.636871, -0.770004,
		-0.172977, 0.754689, 0.632870,
		37.194172, 53.262524, 49.324684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858532, 52.960659, 48.750542>,  <37.315254, 52.734241, 48.881676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858532, 52.960659, 48.750542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818710, 53.089226, 49.127216>,  <37.794819, 53.166367, 49.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818710, 53.089226, 49.127216>,  <37.858532, 52.960659, 48.750542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818710, 53.089226, 49.127216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992064, -0.040982, 0.118869,
		0.076798, 0.946051, -0.314784,
		-0.099556, 0.321414, 0.941691,
		37.788845, 53.185650, 49.409725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307053, 53.626598, 48.866531>,  <37.858532, 52.960659, 48.750542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307053, 53.626598, 48.866531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286289, 53.425575, 49.211723>,  <38.273830, 53.304962, 49.418839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286289, 53.425575, 49.211723>,  <38.307053, 53.626598, 48.866531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286289, 53.425575, 49.211723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980890, 0.136594, 0.138552,
		-0.187509, 0.853684, 0.485864,
		-0.051913, -0.502559, 0.862983,
		38.270714, 53.274807, 49.470619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365082, 53.995567, 49.387505>,  <38.307053, 53.626598, 48.866531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365082, 53.995567, 49.387505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 53.631069, 49.412914>,  <38.625526, 53.412373, 49.428162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527859, 53.631069, 49.412914>,  <38.365082, 53.995567, 49.387505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527859, 53.631069, 49.412914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912848, 0.403156, -0.064599,
		0.033255, 0.084278, 0.995887,
		0.406942, -0.911242, 0.063526,
		38.649940, 53.357697, 49.431973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483238, 53.933025, 50.051243>,  <38.365082, 53.995567, 49.387505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483238, 53.933025, 50.051243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822929, 53.983879, 49.846245>,  <39.026745, 54.014393, 49.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822929, 53.983879, 49.846245>,  <38.483238, 53.933025, 50.051243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822929, 53.983879, 49.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303621, 0.676511, 0.670930,
		0.432010, -0.725375, 0.535909,
		0.849224, 0.127135, -0.512499,
		39.077698, 54.022018, 49.692493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067490, 53.593334, 50.298904>,  <38.483238, 53.933025, 50.051243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067490, 53.593334, 50.298904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100563, 53.946819, 50.114639>,  <39.120407, 54.158913, 50.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100563, 53.946819, 50.114639>,  <39.067490, 53.593334, 50.298904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100563, 53.946819, 50.114639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183704, 0.440805, 0.878603,
		0.979498, -0.157270, -0.125895,
		0.082683, 0.883718, -0.460659,
		39.125366, 54.211933, 49.976440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253014, 54.069359, 50.858677>,  <39.067490, 53.593334, 50.298904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253014, 54.069359, 50.858677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305801, 54.302525, 50.537979>,  <39.337475, 54.442425, 50.345558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305801, 54.302525, 50.537979>,  <39.253014, 54.069359, 50.858677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305801, 54.302525, 50.537979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418249, 0.700552, 0.578182,
		0.898694, -0.411634, -0.151349,
		0.131972, 0.582911, -0.801748,
		39.345394, 54.477398, 50.297455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928043, 54.266796, 50.878757>,  <39.253014, 54.069359, 50.858677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928043, 54.266796, 50.878757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724205, 54.558895, 50.696743>,  <39.601902, 54.734154, 50.587536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724205, 54.558895, 50.696743>,  <39.928043, 54.266796, 50.878757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724205, 54.558895, 50.696743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412202, 0.671415, 0.615866,
		0.755251, 0.126274, -0.643157,
		-0.509593, 0.730244, -0.455036,
		39.571327, 54.777969, 50.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299877, 54.832794, 51.122379>,  <39.928043, 54.266796, 50.878757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299877, 54.832794, 51.122379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951031, 54.998154, 51.017673>,  <39.741722, 55.097370, 50.954849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951031, 54.998154, 51.017673>,  <40.299877, 54.832794, 51.122379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951031, 54.998154, 51.017673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061331, 0.623104, 0.779730,
		0.485444, 0.663959, -0.568772,
		-0.872114, 0.413399, -0.261761,
		39.689396, 55.122173, 50.939144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829086, 54.847309, 51.687847>,  <40.299877, 54.832794, 51.122379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829086, 54.847309, 51.687847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119507, 54.878647, 51.414581>,  <41.293758, 54.897449, 51.250622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119507, 54.878647, 51.414581>,  <40.829086, 54.847309, 51.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119507, 54.878647, 51.414581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498145, -0.744784, 0.444014,
		-0.474022, -0.662691, -0.579779,
		0.726054, 0.078342, -0.683160,
		41.337322, 54.902149, 51.209633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859417, 54.213623, 51.282013>,  <40.829086, 54.847309, 51.687847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859417, 54.213623, 51.282013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190281, 54.433357, 51.329407>,  <41.388798, 54.565197, 51.357841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190281, 54.433357, 51.329407>,  <40.859417, 54.213623, 51.282013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190281, 54.433357, 51.329407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428297, -0.752741, 0.499944,
		0.363824, -0.362787, -0.857915,
		0.827160, 0.549333, 0.118485,
		41.438431, 54.598156, 51.364952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415634, 53.777683, 51.079525>,  <40.859417, 54.213623, 51.282013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415634, 53.777683, 51.079525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529099, 54.063103, 51.335770>,  <41.597179, 54.234356, 51.489517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529099, 54.063103, 51.335770>,  <41.415634, 53.777683, 51.079525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529099, 54.063103, 51.335770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426744, -0.692186, 0.582038,
		0.858735, 0.108274, -0.500851,
		0.283662, 0.713552, 0.640609,
		41.614197, 54.277168, 51.527954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109409, 53.695484, 51.237720>,  <41.415634, 53.777683, 51.079525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109409, 53.695484, 51.237720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937256, 53.893944, 51.539345>,  <41.833965, 54.013020, 51.720318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937256, 53.893944, 51.539345>,  <42.109409, 53.695484, 51.237720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937256, 53.893944, 51.539345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453620, -0.603347, 0.655897,
		0.780383, 0.624343, 0.034607,
		-0.430385, 0.496153, 0.754057,
		41.808140, 54.042789, 51.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660820, 53.685600, 51.794117>,  <42.109409, 53.695484, 51.237720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660820, 53.685600, 51.794117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282345, 53.693836, 51.923302>,  <42.055260, 53.698776, 52.000813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282345, 53.693836, 51.923302>,  <42.660820, 53.685600, 51.794117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282345, 53.693836, 51.923302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169474, -0.818670, 0.548688,
		0.275698, 0.573896, 0.771125,
		-0.946187, 0.020586, 0.322966,
		41.998489, 53.700012, 52.020191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504906, 53.792984, 51.517483>,  <42.660820, 53.685600, 51.794117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504906, 53.792984, 51.517483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678207, 54.061897, 51.277374>,  <43.782188, 54.223248, 51.133308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678207, 54.061897, 51.277374>,  <43.504906, 53.792984, 51.517483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678207, 54.061897, 51.277374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341734, 0.738829, 0.580818,
		0.833971, -0.046510, 0.549845,
		0.433255, 0.672286, -0.600268,
		43.808186, 54.263584, 51.097294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133034, 54.116421, 51.804539>,  <43.504906, 53.792984, 51.517483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133034, 54.116421, 51.804539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959679, 54.374424, 51.552780>,  <43.855663, 54.529224, 51.401726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959679, 54.374424, 51.552780>,  <44.133034, 54.116421, 51.804539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959679, 54.374424, 51.552780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298375, 0.556307, 0.775561,
		0.850379, 0.523917, -0.048644,
		-0.433390, 0.645007, -0.629396,
		43.829662, 54.567924, 51.363960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919617, 54.563900, 52.185585>,  <44.133034, 54.116421, 51.804539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919617, 54.563900, 52.185585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781605, 54.765953, 51.869156>,  <43.698795, 54.887184, 51.679298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781605, 54.765953, 51.869156>,  <43.919617, 54.563900, 52.185585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781605, 54.765953, 51.869156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295992, 0.741265, 0.602424,
		0.890697, 0.442008, -0.106248,
		-0.345034, 0.505129, -0.791073,
		43.678093, 54.917492, 51.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286465, 55.290920, 52.238743>,  <43.919617, 54.563900, 52.185585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286465, 55.290920, 52.238743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941372, 55.292694, 52.036484>,  <43.734318, 55.293758, 51.915131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941372, 55.292694, 52.036484>,  <44.286465, 55.290920, 52.238743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941372, 55.292694, 52.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299051, 0.801867, 0.517280,
		0.407754, 0.597487, -0.690469,
		-0.862731, 0.004438, -0.505643,
		43.682552, 55.294025, 51.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117531, 55.964851, 52.309059>,  <44.286465, 55.290920, 52.238743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117531, 55.964851, 52.309059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790916, 55.778778, 52.172306>,  <43.594948, 55.667133, 52.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790916, 55.778778, 52.172306>,  <44.117531, 55.964851, 52.309059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790916, 55.778778, 52.172306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577272, 0.663876, 0.475423,
		0.005808, 0.585555, -0.810612,
		-0.816532, -0.465182, -0.341880,
		43.545956, 55.639225, 52.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689598, 56.285244, 51.871422>,  <44.117531, 55.964851, 52.309059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689598, 56.285244, 51.871422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509964, 56.496010, 52.160057>,  <44.402184, 56.622467, 52.333237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509964, 56.496010, 52.160057>,  <44.689598, 56.285244, 51.871422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509964, 56.496010, 52.160057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602698, -0.417554, 0.680002,
		0.659602, 0.740278, -0.130050,
		-0.449088, 0.526912, 0.721584,
		44.375237, 56.654083, 52.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840027, 56.969463, 51.627991>,  <44.689598, 56.285244, 51.871422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840027, 56.969463, 51.627991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061344, 57.039913, 51.953651>,  <45.194134, 57.082184, 52.149048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061344, 57.039913, 51.953651>,  <44.840027, 56.969463, 51.627991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061344, 57.039913, 51.953651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831234, -0.180111, -0.525937,
		0.054006, 0.967749, -0.246058,
		0.553293, 0.176129, 0.814153,
		45.227333, 57.092751, 52.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462471, 56.849991, 51.471233>,  <44.840027, 56.969463, 51.627991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462471, 56.849991, 51.471233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570251, 56.950508, 51.843094>,  <45.634918, 57.010818, 52.066212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570251, 56.950508, 51.843094>,  <45.462471, 56.849991, 51.471233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570251, 56.950508, 51.843094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957002, -0.177575, -0.229379,
		0.107442, 0.951483, -0.288333,
		0.269451, 0.251290, 0.929650,
		45.651089, 57.025894, 52.121990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986481, 57.371262, 51.580738>,  <45.462471, 56.849991, 51.471233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986481, 57.371262, 51.580738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021114, 57.129997, 51.897900>,  <46.041893, 56.985237, 52.088196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021114, 57.129997, 51.897900>,  <45.986481, 57.371262, 51.580738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021114, 57.129997, 51.897900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939303, -0.215795, -0.266723,
		0.331983, 0.767870, 0.547871,
		0.086581, -0.603165, 0.792904,
		46.047089, 56.949047, 52.135769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649609, 57.462345, 51.735939>,  <45.986481, 57.371262, 51.580738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649609, 57.462345, 51.735939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530384, 57.157303, 51.965580>,  <46.458851, 56.974277, 52.103367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530384, 57.157303, 51.965580>,  <46.649609, 57.462345, 51.735939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530384, 57.157303, 51.965580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945449, -0.318699, 0.067508,
		0.131485, 0.562909, 0.815993,
		-0.298058, -0.762604, 0.574106,
		46.440968, 56.928520, 52.137814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949482, 57.415462, 52.455795>,  <46.649609, 57.462345, 51.735939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949482, 57.415462, 52.455795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849548, 57.069031, 52.282593>,  <46.789589, 56.861172, 52.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849548, 57.069031, 52.282593>,  <46.949482, 57.415462, 52.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849548, 57.069031, 52.282593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960530, -0.165181, -0.223825,
		0.122326, -0.471831, 0.873162,
		-0.249838, -0.866078, -0.433002,
		46.774597, 56.809208, 52.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514454, 57.079151, 52.505062>,  <46.949482, 57.415462, 52.455795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514454, 57.079151, 52.505062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357738, 56.850391, 52.216774>,  <47.263710, 56.713135, 52.043800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357738, 56.850391, 52.216774>,  <47.514454, 57.079151, 52.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.357738, 56.850391, 52.216774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916590, -0.310544, -0.251845,
		-0.079785, -0.759272, 0.645864,
		-0.391788, -0.571899, -0.720717,
		47.240204, 56.678822, 52.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.755795, 56.336067, 52.517254>,  <47.514454, 57.079151, 52.505062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.755795, 56.336067, 52.517254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660725, 56.444801, 52.144241>,  <47.603683, 56.510040, 51.920433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660725, 56.444801, 52.144241>,  <47.755795, 56.336067, 52.517254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660725, 56.444801, 52.144241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911842, -0.268414, -0.310641,
		-0.334747, -0.924155, -0.184072,
		-0.237673, 0.271831, -0.932534,
		47.589424, 56.526352, 51.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.838783, 55.851074, 53.086807>,  <47.755795, 56.336067, 52.517254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.838783, 55.851074, 53.086807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.235291, 55.804054, 53.062889>,  <48.473194, 55.775841, 53.048538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.235291, 55.804054, 53.062889>,  <47.838783, 55.851074, 53.086807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.235291, 55.804054, 53.062889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128031, 0.748814, 0.650297,
		-0.031668, -0.652272, 0.757323,
		0.991264, -0.117555, -0.059797,
		48.532669, 55.768787, 53.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.173138, 55.788128, 53.734489>,  <47.838783, 55.851074, 53.086807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.173138, 55.788128, 53.734489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417122, 55.956684, 53.466049>,  <48.563515, 56.057819, 53.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417122, 55.956684, 53.466049>,  <48.173138, 55.788128, 53.734489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.417122, 55.956684, 53.466049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227413, 0.718176, 0.657653,
		0.759097, -0.553760, 0.342230,
		0.609964, 0.421395, -0.671097,
		48.600113, 56.083103, 53.264721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.870708, 55.991043, 54.065510>,  <48.173138, 55.788128, 53.734489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.870708, 55.991043, 54.065510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.740257, 56.222328, 53.766361>,  <48.661987, 56.361099, 53.586872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.740257, 56.222328, 53.766361>,  <48.870708, 55.991043, 54.065510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.740257, 56.222328, 53.766361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221335, 0.815843, 0.534239,
		0.919051, 0.008697, -0.394044,
		-0.326124, 0.578208, -0.747876,
		48.642422, 56.395790, 53.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.340816, 56.466419, 54.109283>,  <48.870708, 55.991043, 54.065510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.340816, 56.466419, 54.109283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.999355, 56.586006, 53.938690>,  <48.794479, 56.657761, 53.836334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.999355, 56.586006, 53.938690>,  <49.340816, 56.466419, 54.109283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.999355, 56.586006, 53.938690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174467, 0.935679, 0.306702,
		0.490748, 0.187410, -0.850908,
		-0.853655, 0.298969, -0.426485,
		48.743259, 56.675697, 53.810745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.469460, 56.902718, 53.522755>,  <49.340816, 56.466419, 54.109283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.469460, 56.902718, 53.522755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.121632, 56.979256, 53.704845>,  <48.912933, 57.025181, 53.814102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.121632, 56.979256, 53.704845>,  <49.469460, 56.902718, 53.522755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.121632, 56.979256, 53.704845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287573, 0.945648, 0.151828,
		-0.401436, 0.262937, -0.877333,
		-0.869569, 0.191348, 0.455231,
		48.860760, 57.036659, 53.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.093040, 57.490509, 53.213314>,  <49.469460, 56.902718, 53.522755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.093040, 57.490509, 53.213314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.958714, 57.455441, 53.588448>,  <48.878117, 57.434399, 53.813530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.958714, 57.455441, 53.588448>,  <49.093040, 57.490509, 53.213314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.958714, 57.455441, 53.588448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122899, 0.983070, 0.135904,
		-0.933873, 0.160899, -0.319362,
		-0.335822, -0.087668, 0.937837,
		48.857967, 57.429142, 53.869801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.514458, 58.008026, 53.365017>,  <49.093040, 57.490509, 53.213314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.514458, 58.008026, 53.365017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.692699, 57.900948, 53.706726>,  <48.799644, 57.836700, 53.911751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.692699, 57.900948, 53.706726>,  <48.514458, 58.008026, 53.365017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.692699, 57.900948, 53.706726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309807, 0.941396, 0.133392,
		-0.839914, 0.205218, 0.502424,
		0.445606, -0.267693, 0.854269,
		48.826382, 57.820641, 53.963005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.636044, 58.635189, 53.599976>,  <48.514458, 58.008026, 53.365017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.636044, 58.635189, 53.599976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856647, 58.386284, 53.822197>,  <48.989010, 58.236942, 53.955528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856647, 58.386284, 53.822197>,  <48.636044, 58.635189, 53.599976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.856647, 58.386284, 53.822197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581349, 0.764329, 0.278991,
		-0.598226, 0.169103, 0.783281,
		0.551506, -0.622259, 0.555549,
		49.022099, 58.199608, 53.988861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.782642, 58.968330, 54.193626>,  <48.636044, 58.635189, 53.599976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.782642, 58.968330, 54.193626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.070332, 58.692986, 54.155945>,  <49.242943, 58.527779, 54.133335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.070332, 58.692986, 54.155945>,  <48.782642, 58.968330, 54.193626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.070332, 58.692986, 54.155945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680150, 0.669889, 0.297733,
		-0.141840, -0.278211, 0.949990,
		0.719220, -0.688366, -0.094208,
		49.286098, 58.486477, 54.127682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.134022, 58.974220, 54.816475>,  <48.782642, 58.968330, 54.193626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.134022, 58.974220, 54.816475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.358582, 58.861809, 54.505131>,  <49.493317, 58.794361, 54.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.358582, 58.861809, 54.505131>,  <49.134022, 58.974220, 54.816475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.358582, 58.861809, 54.505131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670582, 0.705640, 0.228895,
		0.484918, -0.650459, 0.584600,
		0.561404, -0.281027, -0.778363,
		49.527004, 58.777500, 54.271622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.769672, 58.869194, 55.064705>,  <49.134022, 58.974220, 54.816475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.769672, 58.869194, 55.064705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.815880, 58.979073, 54.682877>,  <49.843605, 59.044998, 54.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.815880, 58.979073, 54.682877>,  <49.769672, 58.869194, 55.064705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.815880, 58.979073, 54.682877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571172, 0.767863, 0.290085,
		0.812661, -0.578732, -0.068195,
		0.115517, 0.274692, -0.954568,
		49.850536, 59.061481, 54.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.267616, 59.296722, 55.068489>,  <49.769672, 58.869194, 55.064705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.267616, 59.296722, 55.068489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.155876, 59.366898, 54.690880>,  <50.088833, 59.409004, 54.464314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.155876, 59.366898, 54.690880>,  <50.267616, 59.296722, 55.068489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.155876, 59.366898, 54.690880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669509, 0.740333, -0.060533,
		0.688274, -0.648943, -0.324272,
		-0.279351, 0.175440, -0.944025,
		50.072071, 59.419529, 54.407673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.450188, 59.551750, 55.597427>,  <50.267616, 59.296722, 55.068489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.450188, 59.551750, 55.597427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409969, 59.173817, 55.472733>,  <50.385838, 58.947056, 55.397915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409969, 59.173817, 55.472733>,  <50.450188, 59.551750, 55.597427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.409969, 59.173817, 55.472733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994541, -0.086662, -0.058112,
		0.027890, -0.315880, 0.948389,
		-0.100546, -0.944833, -0.311739,
		50.379807, 58.890366, 55.379211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.902576, 59.015541, 55.902508>,  <50.450188, 59.551750, 55.597427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.902576, 59.015541, 55.902508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.847488, 58.856586, 55.539604>,  <50.814434, 58.761215, 55.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.847488, 58.856586, 55.539604>,  <50.902576, 59.015541, 55.902508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.847488, 58.856586, 55.539604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945822, -0.324684, -0.001363,
		-0.294031, -0.858291, 0.420574,
		-0.137724, -0.397387, -0.907257,
		50.806171, 58.737370, 55.267426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.233368, 58.372650, 55.979229>,  <50.902576, 59.015541, 55.902508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.233368, 58.372650, 55.979229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.225132, 58.508835, 55.603218>,  <51.220192, 58.590546, 55.377609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.225132, 58.508835, 55.603218>,  <51.233368, 58.372650, 55.979229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.225132, 58.508835, 55.603218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936842, -0.321779, -0.137060,
		-0.349146, -0.883483, -0.312337,
		-0.020586, 0.340465, -0.940032,
		51.218956, 58.610973, 55.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.521469, 57.892372, 55.424377>,  <51.233368, 58.372650, 55.979229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.521469, 57.892372, 55.424377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.585144, 58.278603, 55.342094>,  <51.623348, 58.510342, 55.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.585144, 58.278603, 55.342094>,  <51.521469, 57.892372, 55.424377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.585144, 58.278603, 55.342094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984299, -0.139136, 0.108615,
		0.076255, -0.219766, -0.972568,
		0.159189, 0.965580, -0.205705,
		51.632900, 58.568275, 55.280384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.948154, 58.008839, 54.856670>,  <51.521469, 57.892372, 55.424377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.948154, 58.008839, 54.856670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.994438, 58.322140, 55.101006>,  <52.022209, 58.510120, 55.247608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.994438, 58.322140, 55.101006>,  <51.948154, 58.008839, 54.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.994438, 58.322140, 55.101006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960418, -0.245107, 0.132366,
		0.253397, 0.571348, -0.780610,
		0.115706, 0.783252, 0.610842,
		52.029148, 58.557114, 55.284260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.559834, 58.569901, 54.722412>,  <51.948154, 58.008839, 54.856670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.559834, 58.569901, 54.722412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.486423, 58.554375, 55.115311>,  <52.442379, 58.545059, 55.351051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.486423, 58.554375, 55.115311>,  <52.559834, 58.569901, 54.722412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.486423, 58.554375, 55.115311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921726, -0.354100, 0.158221,
		0.341673, 0.934402, 0.100759,
		-0.183520, -0.038812, 0.982249,
		52.431366, 58.542732, 55.409985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.082298, 59.126713, 54.918350>,  <52.559834, 58.569901, 54.722412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.082298, 59.126713, 54.918350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945396, 58.844051, 55.166061>,  <52.863255, 58.674454, 55.314686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.945396, 58.844051, 55.166061>,  <53.082298, 59.126713, 54.918350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.945396, 58.844051, 55.166061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935684, -0.316485, 0.155987,
		0.085763, 0.632834, 0.769523,
		-0.342256, -0.706653, 0.619276,
		52.842720, 58.632057, 55.351845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.497517, 59.241734, 55.479424>,  <53.082298, 59.126713, 54.918350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.497517, 59.241734, 55.479424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.402294, 58.856014, 55.433014>,  <53.345161, 58.624584, 55.405167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.402294, 58.856014, 55.433014>,  <53.497517, 59.241734, 55.479424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.402294, 58.856014, 55.433014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958567, -0.252510, 0.131866,
		-0.156455, -0.079827, 0.984454,
		-0.238058, -0.964296, -0.116026,
		53.330875, 58.566727, 55.398205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.727108, 58.767208, 56.049702>,  <53.497517, 59.241734, 55.479424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.727108, 58.767208, 56.049702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.702366, 58.552299, 55.713249>,  <53.687523, 58.423355, 55.511375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.702366, 58.552299, 55.713249>,  <53.727108, 58.767208, 56.049702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.702366, 58.552299, 55.713249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978636, -0.198205, 0.054642,
		-0.196075, -0.819786, 0.538057,
		-0.061851, -0.537276, -0.841136,
		53.683811, 58.391117, 55.460907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.870197, 58.052113, 56.120438>,  <53.727108, 58.767208, 56.049702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.870197, 58.052113, 56.120438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.990791, 58.213959, 55.775093>,  <54.063148, 58.311066, 55.567886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.990791, 58.213959, 55.775093>,  <53.870197, 58.052113, 56.120438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.990791, 58.213959, 55.775093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941417, -0.269849, 0.202274,
		-0.151133, -0.873765, -0.462269,
		0.301483, 0.404618, -0.863361,
		54.081238, 58.335342, 55.516087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.328121, 57.533146, 55.696228>,  <53.870197, 58.052113, 56.120438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.328121, 57.533146, 55.696228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.422417, 57.910843, 55.604294>,  <54.478996, 58.137463, 55.549133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.422417, 57.910843, 55.604294>,  <54.328121, 57.533146, 55.696228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.422417, 57.910843, 55.604294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947675, -0.170979, 0.269588,
		0.215260, -0.281365, -0.935145,
		0.235743, 0.944246, -0.229838,
		54.493141, 58.194118, 55.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.048504, 57.609127, 55.362873>,  <54.328121, 57.533146, 55.696228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.048504, 57.609127, 55.362873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.931877, 57.944061, 55.547852>,  <54.861900, 58.145023, 55.658840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.931877, 57.944061, 55.547852>,  <55.048504, 57.609127, 55.362873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.931877, 57.944061, 55.547852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873921, 0.036618, 0.484686,
		0.388911, 0.545462, -0.742442,
		-0.291564, 0.837335, 0.462449,
		54.844406, 58.195263, 55.686584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.623135, 57.788559, 55.483929>,  <55.048504, 57.609127, 55.362873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.623135, 57.788559, 55.483929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421616, 58.071075, 55.682861>,  <55.300705, 58.240585, 55.802219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421616, 58.071075, 55.682861>,  <55.623135, 57.788559, 55.483929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.421616, 58.071075, 55.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788299, 0.140483, 0.599040,
		0.353233, 0.693839, -0.627546,
		-0.503797, 0.706295, 0.497329,
		55.270477, 58.282963, 55.832062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.956646, 58.387993, 55.437038>,  <55.623135, 57.788559, 55.483929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.956646, 58.387993, 55.437038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.775024, 58.330299, 55.788727>,  <55.666050, 58.295685, 55.999741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.775024, 58.330299, 55.788727>,  <55.956646, 58.387993, 55.437038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.775024, 58.330299, 55.788727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886775, 0.022522, 0.461652,
		-0.086387, 0.989287, 0.117675,
		-0.454056, -0.144232, 0.879221,
		55.638809, 58.287029, 56.052494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.243710, 58.910324, 55.970219>,  <55.956646, 58.387993, 55.437038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.243710, 58.910324, 55.970219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074989, 58.599472, 56.157043>,  <55.973759, 58.412960, 56.269138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074989, 58.599472, 56.157043>,  <56.243710, 58.910324, 55.970219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.074989, 58.599472, 56.157043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768947, -0.033656, 0.638427,
		-0.480423, 0.628436, 0.611769,
		-0.421800, -0.777133, 0.467065,
		55.948448, 58.366333, 56.297161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.973843, 59.016857, 56.692089>,  <56.243710, 58.910324, 55.970219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.973843, 59.016857, 56.692089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.101349, 58.641624, 56.637840>,  <56.177853, 58.416485, 56.605289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.101349, 58.641624, 56.637840>,  <55.973843, 59.016857, 56.692089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.101349, 58.641624, 56.637840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763267, 0.169214, 0.623531,
		-0.561972, -0.302279, 0.769945,
		0.318766, -0.938080, -0.135625,
		56.196980, 58.360199, 56.597153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.186230, 58.676701, 57.343033>,  <55.973843, 59.016857, 56.692089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.186230, 58.676701, 57.343033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.362228, 58.483574, 57.040169>,  <56.467827, 58.367699, 56.858452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.362228, 58.483574, 57.040169>,  <56.186230, 58.676701, 57.343033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.362228, 58.483574, 57.040169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835447, -0.089088, 0.542302,
		-0.329284, -0.871181, 0.364165,
		0.440001, -0.482812, -0.757160,
		56.494228, 58.338730, 56.813019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.461529, 57.940689, 57.532921>,  <56.186230, 58.676701, 57.343033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.461529, 57.940689, 57.532921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.699013, 58.117722, 57.264107>,  <56.841503, 58.223942, 57.102818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.699013, 58.117722, 57.264107>,  <56.461529, 57.940689, 57.532921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.699013, 58.117722, 57.264107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770042, -0.070086, 0.634132,
		0.233552, -0.893987, -0.382413,
		0.593708, 0.442577, -0.672039,
		56.877125, 58.250496, 57.062496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.009899, 57.536198, 57.452927>,  <56.461529, 57.940689, 57.532921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.009899, 57.536198, 57.452927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.086853, 57.923195, 57.387268>,  <57.133026, 58.155396, 57.347874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.086853, 57.923195, 57.387268>,  <57.009899, 57.536198, 57.452927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.086853, 57.923195, 57.387268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787709, -0.052495, 0.613806,
		0.585238, -0.247382, -0.772204,
		0.192381, 0.967495, -0.164143,
		57.144566, 58.213444, 57.338024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.712982, 57.506535, 57.406761>,  <57.009899, 57.536198, 57.452927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.712982, 57.506535, 57.406761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.604050, 57.882263, 57.490204>,  <57.538692, 58.107700, 57.540268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.604050, 57.882263, 57.490204>,  <57.712982, 57.506535, 57.406761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.604050, 57.882263, 57.490204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780451, 0.088830, 0.618874,
		0.562791, 0.331342, -0.757284,
		-0.272328, 0.939320, 0.208603,
		57.522350, 58.164059, 57.552784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.262516, 57.960419, 57.316803>,  <57.712982, 57.506535, 57.406761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.262516, 57.960419, 57.316803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.025833, 58.082977, 57.615067>,  <57.883823, 58.156513, 57.794025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.025833, 58.082977, 57.615067>,  <58.262516, 57.960419, 57.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.025833, 58.082977, 57.615067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765598, -0.076103, 0.638802,
		0.252474, 0.948856, -0.189547,
		-0.591706, 0.306398, 0.745657,
		57.848320, 58.174896, 57.838764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.762501, 57.959118, 57.751907>,  <58.262516, 57.960419, 57.316803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.762501, 57.959118, 57.751907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.431480, 58.048473, 57.957924>,  <58.232868, 58.102085, 58.081532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.431480, 58.048473, 57.957924>,  <58.762501, 57.959118, 57.751907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.431480, 58.048473, 57.957924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534325, 0.031958, 0.844674,
		0.172228, 0.974206, -0.145808,
		-0.827547, 0.223386, 0.515039,
		58.183216, 58.115490, 58.112434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.852047, 58.562000, 58.152489>,  <58.762501, 57.959118, 57.751907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.852047, 58.562000, 58.152489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566734, 58.331154, 58.311569>,  <58.395546, 58.192646, 58.407017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.566734, 58.331154, 58.311569>,  <58.852047, 58.562000, 58.152489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.566734, 58.331154, 58.311569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569799, -0.147080, 0.808515,
		-0.408115, 0.803307, 0.433751,
		-0.713282, -0.577118, 0.397698,
		58.352749, 58.158020, 58.430878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.476421, 58.810368, 58.798092>,  <58.852047, 58.562000, 58.152489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.476421, 58.810368, 58.798092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.508568, 58.412067, 58.780067>,  <58.527855, 58.173088, 58.769253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.508568, 58.412067, 58.780067>,  <58.476421, 58.810368, 58.798092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.508568, 58.412067, 58.780067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418849, -0.007285, 0.908027,
		-0.904492, -0.091850, 0.416482,
		0.080368, -0.995746, -0.045060,
		58.532677, 58.113342, 58.766548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.017437, 58.486115, 59.321724>,  <58.476421, 58.810368, 58.798092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.017437, 58.486115, 59.321724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.370239, 58.328499, 59.218346>,  <58.581921, 58.233929, 59.156319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.370239, 58.328499, 59.218346>,  <58.017437, 58.486115, 59.321724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.370239, 58.328499, 59.218346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404282, 0.350970, 0.844616,
		-0.242103, -0.849444, 0.468861,
		0.882010, -0.394036, -0.258444,
		58.634842, 58.210289, 59.140812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.389725, 58.083397, 59.853806>,  <58.017437, 58.486115, 59.321724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.389725, 58.083397, 59.853806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.676788, 58.212379, 59.606911>,  <58.849026, 58.289768, 59.458775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.676788, 58.212379, 59.606911>,  <58.389725, 58.083397, 59.853806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.676788, 58.212379, 59.606911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499175, 0.379827, 0.778817,
		0.485578, -0.867038, 0.111626,
		0.717662, 0.322455, -0.617239,
		58.892086, 58.309116, 59.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.151672, 58.126579, 60.109898>,  <58.389725, 58.083397, 59.853806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.151672, 58.126579, 60.109898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.536011, 58.034485, 60.171570>,  <59.766613, 57.979229, 60.208572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.536011, 58.034485, 60.171570>,  <59.151672, 58.126579, 60.109898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.536011, 58.034485, 60.171570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264556, 0.927726, -0.263314,
		-0.082412, 0.293792, 0.952310,
		0.960842, -0.230239, 0.154181,
		59.824265, 57.965412, 60.217823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.147324, 58.350811, 60.832054>,  <59.151672, 58.126579, 60.109898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.147324, 58.350811, 60.832054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.510094, 58.182823, 60.845337>,  <59.727757, 58.082031, 60.853306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.510094, 58.182823, 60.845337>,  <59.147324, 58.350811, 60.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.510094, 58.182823, 60.845337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255414, -0.485451, 0.836123,
		-0.335028, -0.766786, -0.547536,
		0.906929, -0.419973, 0.033209,
		59.782173, 58.056831, 60.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.168365, 57.546268, 60.756802>,  <59.147324, 58.350811, 60.832054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.168365, 57.546268, 60.756802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.449821, 57.687576, 61.003410>,  <59.618694, 57.772362, 61.151375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.449821, 57.687576, 61.003410>,  <59.168365, 57.546268, 60.756802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.449821, 57.687576, 61.003410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375688, -0.551503, 0.744784,
		0.603121, -0.755677, -0.255340,
		0.703637, 0.353267, 0.616521,
		59.660912, 57.793556, 61.188366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.325489, 56.999672, 60.263546>,  <59.168365, 57.546268, 60.756802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.325489, 56.999672, 60.263546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.573746, 56.701427, 60.360596>,  <59.722698, 56.522480, 60.418823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.573746, 56.701427, 60.360596>,  <59.325489, 56.999672, 60.263546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.573746, 56.701427, 60.360596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783945, 0.596118, -0.173418,
		-0.015329, 0.297833, 0.954495,
		0.620641, -0.745613, 0.242623,
		59.759937, 56.477745, 60.433384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.756470, 57.158962, 60.873600>,  <59.325489, 56.999672, 60.263546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.756470, 57.158962, 60.873600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940033, 56.929317, 60.602364>,  <60.050171, 56.791531, 60.439621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940033, 56.929317, 60.602364>,  <59.756470, 57.158962, 60.873600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.940033, 56.929317, 60.602364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658958, 0.731854, -0.173678,
		0.595972, -0.367130, 0.714166,
		0.458903, -0.574113, -0.678087,
		60.077705, 56.757084, 60.398937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.411484, 57.290924, 61.064014>,  <59.756470, 57.158962, 60.873600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.411484, 57.290924, 61.064014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.418571, 57.155281, 60.687782>,  <60.422825, 57.073895, 60.462044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.418571, 57.155281, 60.687782>,  <60.411484, 57.290924, 61.064014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.418571, 57.155281, 60.687782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652763, 0.716501, -0.246020,
		0.757355, -0.609617, 0.234053,
		0.017721, -0.339106, -0.940581,
		60.423889, 57.053551, 60.405609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.200760, 57.227165, 60.947655>,  <60.411484, 57.290924, 61.064014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.200760, 57.227165, 60.947655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.943420, 57.289070, 60.647751>,  <60.789017, 57.326214, 60.467808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.943420, 57.289070, 60.647751>,  <61.200760, 57.227165, 60.947655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.943420, 57.289070, 60.647751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558325, 0.764926, -0.321188,
		0.523803, -0.625248, -0.578528,
		-0.643354, 0.154767, -0.749762,
		60.750416, 57.335499, 60.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.694500, 56.747150, 61.350040>,  <61.200760, 57.227165, 60.947655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.694500, 56.747150, 61.350040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951363, 56.957508, 61.573135>,  <62.105480, 57.083721, 61.706993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951363, 56.957508, 61.573135>,  <61.694500, 56.747150, 61.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.951363, 56.957508, 61.573135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305112, -0.492116, 0.815309,
		0.703235, -0.693730, -0.155561,
		0.642158, 0.525890, 0.557738,
		62.144009, 57.115276, 61.740456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.029446, 56.215168, 61.889763>,  <61.694500, 56.747150, 61.350040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.029446, 56.215168, 61.889763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.944824, 56.588142, 62.006935>,  <61.894051, 56.811928, 62.077236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.944824, 56.588142, 62.006935>,  <62.029446, 56.215168, 61.889763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.944824, 56.588142, 62.006935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450023, -0.358980, 0.817687,
		0.867597, 0.041158, 0.495561,
		-0.211551, 0.932437, 0.292928,
		61.881359, 56.867874, 62.094814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.429157, 56.425934, 62.480640>,  <62.029446, 56.215168, 61.889763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.429157, 56.425934, 62.480640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.061562, 56.583504, 62.473869>,  <61.841003, 56.678043, 62.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.061562, 56.583504, 62.473869>,  <62.429157, 56.425934, 62.480640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.061562, 56.583504, 62.473869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215118, -0.464937, 0.858812,
		0.330433, 0.792880, 0.512011,
		-0.918988, 0.393922, -0.016932,
		61.785866, 56.701679, 62.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.076714, 56.439339, 62.920914>,  <62.429157, 56.425934, 62.480640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.076714, 56.439339, 62.920914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.445938, 56.496094, 63.063927>,  <63.667473, 56.530148, 63.149734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.445938, 56.496094, 63.063927>,  <63.076714, 56.439339, 62.920914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.445938, 56.496094, 63.063927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242308, -0.936368, -0.253973,
		0.298747, 0.321065, -0.898703,
		0.923059, 0.141889, 0.357534,
		63.722855, 56.538662, 63.171188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.687744, 56.206074, 62.462696>,  <63.076714, 56.439339, 62.920914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.687744, 56.206074, 62.462696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.798988, 56.156139, 62.843658>,  <63.865734, 56.126179, 63.072235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.798988, 56.156139, 62.843658>,  <63.687744, 56.206074, 62.462696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.798988, 56.156139, 62.843658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237981, -0.951651, -0.194232,
		0.930601, 0.280672, -0.234956,
		0.278112, -0.124837, 0.952402,
		63.882423, 56.118687, 63.129379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.272331, 56.488392, 62.783356>,  <63.687744, 56.206074, 62.462696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.272331, 56.488392, 62.783356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.611931, 56.616734, 62.951286>,  <64.815689, 56.693741, 63.052044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.611931, 56.616734, 62.951286>,  <64.272331, 56.488392, 62.783356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.611931, 56.616734, 62.951286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527321, -0.565177, -0.634435,
		0.033714, 0.760017, -0.649029,
		0.848997, 0.320857, 0.419827,
		64.866631, 56.712990, 63.077236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.747993, 56.889397, 62.392479>,  <64.272331, 56.488392, 62.783356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.747993, 56.889397, 62.392479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.939987, 56.659634, 62.657715>,  <65.055183, 56.521778, 62.816856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.939987, 56.659634, 62.657715>,  <64.747993, 56.889397, 62.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.939987, 56.659634, 62.657715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554977, -0.386568, -0.736591,
		0.679429, 0.721543, 0.133237,
		0.479977, -0.574404, 0.663085,
		65.083977, 56.487312, 62.856640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.452782, 57.016949, 62.371372>,  <64.747993, 56.889397, 62.392479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.452782, 57.016949, 62.371372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417648, 56.641975, 62.506134>,  <65.396568, 56.416992, 62.586990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417648, 56.641975, 62.506134>,  <65.452782, 57.016949, 62.371372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.417648, 56.641975, 62.506134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519151, -0.331728, -0.787680,
		0.850157, 0.105719, 0.515806,
		-0.087834, -0.937433, 0.336905,
		65.391296, 56.360744, 62.607204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.080551, 56.672909, 62.341564>,  <65.452782, 57.016949, 62.371372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.080551, 56.672909, 62.341564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774757, 56.418243, 62.301086>,  <65.591286, 56.265446, 62.276798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.774757, 56.418243, 62.301086>,  <66.080551, 56.672909, 62.341564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.774757, 56.418243, 62.301086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405681, -0.353122, -0.843047,
		0.500998, -0.685544, 0.528234,
		-0.764476, -0.636659, -0.101199,
		65.545418, 56.227245, 62.270725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.347664, 55.941746, 62.148518>,  <66.080551, 56.672909, 62.341564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.347664, 55.941746, 62.148518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.963875, 55.955486, 62.036636>,  <65.733604, 55.963730, 61.969509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.963875, 55.955486, 62.036636>,  <66.347664, 55.941746, 62.148518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.963875, 55.955486, 62.036636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238807, -0.427850, -0.871731,
		-0.149617, -0.903196, 0.402307,
		-0.959472, 0.034353, -0.279703,
		65.676033, 55.965794, 61.952724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.174751, 55.301601, 61.934895>,  <66.347664, 55.941746, 62.148518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.174751, 55.301601, 61.934895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.983261, 55.598389, 61.747147>,  <65.868370, 55.776463, 61.634499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.983261, 55.598389, 61.747147>,  <66.174751, 55.301601, 61.934895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.983261, 55.598389, 61.747147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289160, -0.371533, -0.882242,
		-0.828982, -0.558071, -0.036686,
		-0.478723, 0.741970, -0.469366,
		65.839645, 55.820980, 61.606339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.848984, 54.940029, 62.018066>,  <66.174751, 55.301601, 61.934895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.848984, 54.940029, 62.018066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.884987, 55.225231, 62.296211>,  <66.906586, 55.396351, 62.463097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.884987, 55.225231, 62.296211>,  <66.848984, 54.940029, 62.018066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.884987, 55.225231, 62.296211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578496, -0.530908, 0.619258,
		0.810705, -0.457997, 0.364686,
		0.090004, 0.713005, 0.695359,
		66.911987, 55.439133, 62.504818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.434502, 55.167618, 61.538017>,  <66.848984, 54.940029, 62.018066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.434502, 55.167618, 61.538017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.400360, 55.528152, 61.368164>,  <67.379875, 55.744473, 61.266251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.400360, 55.528152, 61.368164>,  <67.434502, 55.167618, 61.538017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.400360, 55.528152, 61.368164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956539, -0.045138, -0.288091,
		-0.278833, -0.430768, -0.858307,
		-0.085358, 0.901333, -0.424632,
		67.374756, 55.798553, 61.240776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.536972, 55.142029, 60.778461>,  <67.434502, 55.167618, 61.538017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.536972, 55.142029, 60.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.693100, 55.466377, 60.952881>,  <67.786781, 55.660984, 61.057533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.693100, 55.466377, 60.952881>,  <67.536972, 55.142029, 60.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.693100, 55.466377, 60.952881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906000, -0.254053, -0.338559,
		-0.163745, 0.527211, -0.833808,
		0.390323, 0.810867, 0.436053,
		67.810196, 55.709637, 61.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.064369, 55.352444, 60.369194>,  <67.536972, 55.142029, 60.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.064369, 55.352444, 60.369194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.156624, 55.535271, 60.712799>,  <68.211975, 55.644966, 60.918961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.156624, 55.535271, 60.712799>,  <68.064369, 55.352444, 60.369194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.156624, 55.535271, 60.712799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962208, -0.238494, -0.131439,
		0.144792, 0.856860, -0.494799,
		0.230631, 0.457068, 0.859010,
		68.225815, 55.672390, 60.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.590279, 55.973103, 60.256386>,  <68.064369, 55.352444, 60.369194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.590279, 55.973103, 60.256386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.628006, 55.820469, 60.624191>,  <68.650642, 55.728889, 60.844875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.628006, 55.820469, 60.624191>,  <68.590279, 55.973103, 60.256386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.628006, 55.820469, 60.624191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979393, -0.130115, -0.154462,
		0.178581, 0.915132, 0.361444,
		0.094324, -0.381580, 0.919511,
		68.656303, 55.705994, 60.900043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.262573, 56.282986, 60.404121>,  <68.590279, 55.973103, 60.256386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.262573, 56.282986, 60.404121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.523338, 55.981323, 60.372467>,  <69.679794, 55.800327, 60.353474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.523338, 55.981323, 60.372467>,  <69.262573, 56.282986, 60.404121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.523338, 55.981323, 60.372467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690219, 0.633361, -0.349930,
		0.314026, 0.173499, 0.933427,
		0.651909, -0.754156, -0.079140,
		69.718910, 55.755077, 60.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.944756, 56.384647, 60.646587>,  <69.262573, 56.282986, 60.404121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.944756, 56.384647, 60.646587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.986237, 56.099838, 60.368805>,  <70.011124, 55.928951, 60.202137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.986237, 56.099838, 60.368805>,  <69.944756, 56.384647, 60.646587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.986237, 56.099838, 60.368805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749298, 0.515082, -0.416224,
		0.654062, -0.477188, 0.586936,
		0.103703, -0.712026, -0.694452,
		70.017349, 55.886230, 60.160469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.594765, 56.475388, 60.501957>,  <69.944756, 56.384647, 60.646587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.594765, 56.475388, 60.501957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487724, 56.217804, 60.215263>,  <70.423500, 56.063255, 60.043247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487724, 56.217804, 60.215263>,  <70.594765, 56.475388, 60.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.487724, 56.217804, 60.215263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800481, 0.265445, -0.537372,
		0.536299, -0.717533, 0.444443,
		-0.267607, -0.643961, -0.716730,
		70.407440, 56.024616, 60.000244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.981194, 56.362797, 59.839859>,  <70.594765, 56.475388, 60.501957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.981194, 56.362797, 59.839859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.155029, 56.415333, 60.196259>,  <71.259331, 56.446854, 60.410099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.155029, 56.415333, 60.196259>,  <70.981194, 56.362797, 59.839859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.155029, 56.415333, 60.196259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848140, -0.392477, -0.355836,
		0.302960, 0.910336, -0.281964,
		0.434595, 0.131341, 0.890998,
		71.285408, 56.454735, 60.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.564011, 56.821083, 59.821995>,  <70.981194, 56.362797, 59.839859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.564011, 56.821083, 59.821995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.624313, 56.618439, 60.161552>,  <71.660492, 56.496853, 60.365288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.624313, 56.618439, 60.161552>,  <71.564011, 56.821083, 59.821995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.624313, 56.618439, 60.161552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946925, -0.172615, -0.271178,
		0.283914, 0.844717, 0.453703,
		0.150753, -0.506614, 0.848891,
		71.669540, 56.466454, 60.416222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.135437, 57.093254, 60.141808>,  <71.564011, 56.821083, 59.821995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.135437, 57.093254, 60.141808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.094917, 56.721134, 60.282822>,  <72.070610, 56.497864, 60.367428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.094917, 56.721134, 60.282822>,  <72.135437, 57.093254, 60.141808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.094917, 56.721134, 60.282822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958764, -0.185867, -0.214998,
		0.265537, 0.316218, 0.910767,
		-0.101295, -0.930301, 0.352533,
		72.064529, 56.442043, 60.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.727379, 56.932705, 59.990528>,  <72.135437, 57.093254, 60.141808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.727379, 56.932705, 59.990528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.559837, 56.613079, 60.163063>,  <72.459312, 56.421303, 60.266582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.559837, 56.613079, 60.163063>,  <72.727379, 56.932705, 59.990528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.559837, 56.613079, 60.163063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873098, -0.484923, -0.050490,
		0.249508, 0.355449, 0.900778,
		-0.418861, -0.799065, 0.431335,
		72.434181, 56.373360, 60.292465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.169540, 56.543011, 60.525333>,  <72.727379, 56.932705, 59.990528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.169540, 56.543011, 60.525333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.926048, 56.268524, 60.366058>,  <72.779953, 56.103832, 60.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.926048, 56.268524, 60.366058>,  <73.169540, 56.543011, 60.525333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.926048, 56.268524, 60.366058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788721, -0.577712, -0.210159,
		-0.085822, -0.441987, 0.892906,
		-0.608731, -0.686218, -0.398185,
		72.743431, 56.062660, 60.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.113518, 57.315708, 60.643196>,  <73.169540, 56.543011, 60.525333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.113518, 57.315708, 60.643196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.272293, 57.600849, 60.411926>,  <73.367561, 57.771935, 60.273163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.272293, 57.600849, 60.411926>,  <73.113518, 57.315708, 60.643196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.272293, 57.600849, 60.411926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220736, 0.537297, 0.813994,
		0.890907, -0.450730, 0.055922,
		0.396939, 0.712849, -0.578175,
		73.391373, 57.814705, 60.238472>
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
