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
	<24.266596, 35.400269, 35.061340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213783, 35.004902, 35.091267>,  <24.182095, 34.767681, 35.109222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213783, 35.004902, 35.091267>,  <24.266596, 35.400269, 35.061340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213783, 35.004902, 35.091267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435366, -0.125634, -0.891444,
		0.890519, -0.085127, 0.446911,
		-0.132033, -0.988418, 0.074818,
		24.174173, 34.708378, 35.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546671, 35.144409, 34.461411>,  <24.266596, 35.400269, 35.061340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546671, 35.144409, 34.461411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423180, 34.795364, 34.612801>,  <24.349085, 34.585938, 34.703632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423180, 34.795364, 34.612801>,  <24.546671, 35.144409, 34.461411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423180, 34.795364, 34.612801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349481, -0.474146, -0.808114,
		0.884618, -0.117220, 0.451343,
		-0.308729, -0.872608, 0.378472,
		24.330561, 34.533581, 34.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187950, 35.119991, 34.522175>,  <24.546671, 35.144409, 34.461411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187950, 35.119991, 34.522175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996017, 35.035183, 34.181633>,  <24.880857, 34.984299, 33.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996017, 35.035183, 34.181633>,  <25.187950, 35.119991, 34.522175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996017, 35.035183, 34.181633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254499, -0.962275, 0.096210,
		-0.839638, -0.170505, 0.515691,
		-0.479832, -0.212024, -0.851356,
		24.852068, 34.971577, 33.926228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741400, 34.858818, 34.071758>,  <25.187950, 35.119991, 34.522175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741400, 34.858818, 34.071758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741266, 35.208370, 33.877304>,  <25.741186, 35.418102, 33.760632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741266, 35.208370, 33.877304>,  <25.741400, 34.858818, 34.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741266, 35.208370, 33.877304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452541, -0.433375, -0.779354,
		-0.891743, -0.220254, -0.395325,
		-0.000332, 0.873884, -0.486134,
		25.741167, 35.470535, 33.731464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236853, 34.951626, 33.543930>,  <25.741400, 34.858818, 34.071758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236853, 34.951626, 33.543930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545385, 35.178574, 33.428596>,  <25.730505, 35.314743, 33.359398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545385, 35.178574, 33.428596>,  <25.236853, 34.951626, 33.543930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545385, 35.178574, 33.428596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070828, -0.526753, -0.847062,
		-0.632480, 0.632944, -0.446487,
		0.771332, 0.567374, -0.288331,
		25.776785, 35.348785, 33.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154593, 35.118229, 32.837646>,  <25.236853, 34.951626, 33.543930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154593, 35.118229, 32.837646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546896, 35.155781, 32.906116>,  <25.782278, 35.178310, 32.947197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546896, 35.155781, 32.906116>,  <25.154593, 35.118229, 32.837646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546896, 35.155781, 32.906116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195216, -0.464461, -0.863809,
		-0.001589, 0.880604, -0.473850,
		0.980759, 0.093876, 0.171170,
		25.841124, 35.183945, 32.957466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500511, 35.563499, 32.322224>,  <25.154593, 35.118229, 32.837646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500511, 35.563499, 32.322224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769686, 35.308277, 32.471912>,  <25.931190, 35.155144, 32.561726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769686, 35.308277, 32.471912>,  <25.500511, 35.563499, 32.322224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769686, 35.308277, 32.471912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141936, -0.385124, -0.911885,
		0.725956, 0.666754, -0.168600,
		0.672935, -0.638058, 0.374220,
		25.971567, 35.116859, 32.584179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875866, 35.359444, 31.729279>,  <25.500511, 35.563499, 32.322224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875866, 35.359444, 31.729279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014090, 35.090645, 31.991272>,  <26.097025, 34.929367, 32.148468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014090, 35.090645, 31.991272>,  <25.875866, 35.359444, 31.729279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014090, 35.090645, 31.991272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444129, -0.497741, -0.744985,
		0.826642, 0.548336, 0.126455,
		0.345560, -0.671998, 0.654986,
		26.117758, 34.889046, 32.187767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489029, 35.197765, 31.453989>,  <25.875866, 35.359444, 31.729279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489029, 35.197765, 31.453989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391472, 34.904598, 31.708027>,  <26.332937, 34.728699, 31.860449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391472, 34.904598, 31.708027>,  <26.489029, 35.197765, 31.453989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391472, 34.904598, 31.708027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450299, -0.665580, -0.595175,
		0.858921, 0.140822, 0.492365,
		-0.243894, -0.732921, 0.635093,
		26.318304, 34.684723, 31.898554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144001, 34.835846, 31.700792>,  <26.489029, 35.197765, 31.453989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144001, 34.835846, 31.700792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848864, 34.572311, 31.759481>,  <26.671782, 34.414192, 31.794695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848864, 34.572311, 31.759481>,  <27.144001, 34.835846, 31.700792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848864, 34.572311, 31.759481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501989, -0.680940, -0.533224,
		0.451215, -0.319782, 0.833153,
		-0.737843, -0.658832, 0.146723,
		26.627510, 34.374660, 31.803499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570208, 34.304535, 31.657404>,  <27.144001, 34.835846, 31.700792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570208, 34.304535, 31.657404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201069, 34.152603, 31.631824>,  <26.979586, 34.061443, 31.616476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201069, 34.152603, 31.631824>,  <27.570208, 34.304535, 31.657404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201069, 34.152603, 31.631824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382066, -0.881664, -0.276938,
		0.048806, -0.280004, 0.958758,
		-0.922845, -0.379825, -0.063949,
		26.924215, 34.038654, 31.612640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641138, 33.575939, 31.924385>,  <27.570208, 34.304535, 31.657404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641138, 33.575939, 31.924385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310572, 33.611870, 31.702045>,  <27.112232, 33.633427, 31.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310572, 33.611870, 31.702045>,  <27.641138, 33.575939, 31.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310572, 33.611870, 31.702045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313744, -0.746271, -0.587063,
		-0.467547, -0.659553, 0.588549,
		-0.826417, 0.089826, -0.555848,
		27.062647, 33.638817, 31.535292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328249, 32.845257, 31.651026>,  <27.641138, 33.575939, 31.924385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328249, 32.845257, 31.651026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213970, 33.132801, 31.397532>,  <27.145403, 33.305328, 31.245434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213970, 33.132801, 31.397532>,  <27.328249, 32.845257, 31.651026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213970, 33.132801, 31.397532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169298, -0.613039, -0.771701,
		-0.943247, -0.327763, 0.053442,
		-0.285697, 0.718857, -0.633736,
		27.128262, 33.348457, 31.207411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247478, 32.507717, 31.048809>,  <27.328249, 32.845257, 31.651026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247478, 32.507717, 31.048809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178694, 32.869293, 30.892183>,  <27.137423, 33.086239, 30.798208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178694, 32.869293, 30.892183>,  <27.247478, 32.507717, 31.048809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178694, 32.869293, 30.892183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, -0.384140, -0.920147,
		-0.982173, -0.187963, -0.002579,
		-0.171963, 0.903939, -0.391564,
		27.127106, 33.140476, 30.774714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692404, 32.393265, 30.638929>,  <27.247478, 32.507717, 31.048809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692404, 32.393265, 30.638929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909224, 32.708553, 30.522387>,  <27.039316, 32.897728, 30.452461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909224, 32.708553, 30.522387>,  <26.692404, 32.393265, 30.638929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909224, 32.708553, 30.522387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085445, -0.396610, -0.914002,
		-0.835991, 0.470540, -0.282332,
		0.542050, 0.788221, -0.291357,
		27.071838, 32.945019, 30.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563210, 32.354889, 29.968517>,  <26.692404, 32.393265, 30.638929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563210, 32.354889, 29.968517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871511, 32.609604, 29.960207>,  <27.056494, 32.762432, 29.955221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871511, 32.609604, 29.960207>,  <26.563210, 32.354889, 29.968517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871511, 32.609604, 29.960207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345986, -0.445709, -0.825613,
		-0.535004, 0.629158, -0.563854,
		0.770756, 0.636792, -0.020776,
		27.102737, 32.800640, 29.953974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612286, 32.698303, 29.269117>,  <26.563210, 32.354889, 29.968517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612286, 32.698303, 29.269117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967398, 32.703819, 29.453142>,  <27.180466, 32.707127, 29.563557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967398, 32.703819, 29.453142>,  <26.612286, 32.698303, 29.269117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967398, 32.703819, 29.453142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404410, -0.500637, -0.765386,
		0.219772, 0.865547, -0.450031,
		0.887780, 0.013786, 0.460062,
		27.233732, 32.707954, 29.591160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166761, 32.772461, 28.798588>,  <26.612286, 32.698303, 29.269117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166761, 32.772461, 28.798588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388023, 32.629951, 29.099810>,  <27.520781, 32.544445, 29.280542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388023, 32.629951, 29.099810>,  <27.166761, 32.772461, 28.798588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388023, 32.629951, 29.099810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421958, -0.659591, -0.622006,
		0.718311, 0.661822, -0.214524,
		0.553155, -0.356274, 0.753053,
		27.553970, 32.523071, 29.325726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584965, 32.436943, 28.412804>,  <27.166761, 32.772461, 28.798588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584965, 32.436943, 28.412804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705921, 32.285427, 28.762678>,  <27.778496, 32.194519, 28.972603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705921, 32.285427, 28.762678>,  <27.584965, 32.436943, 28.412804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705921, 32.285427, 28.762678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524814, -0.699866, -0.484517,
		0.795695, 0.605562, -0.012839,
		0.302391, -0.378790, 0.874687,
		27.796638, 32.171791, 29.025084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284582, 32.314503, 28.392448>,  <27.584965, 32.436943, 28.412804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284582, 32.314503, 28.392448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151979, 32.067200, 28.677507>,  <28.072418, 31.918819, 28.848543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151979, 32.067200, 28.677507>,  <28.284582, 32.314503, 28.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151979, 32.067200, 28.677507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619912, -0.712156, -0.329458,
		0.711204, 0.332560, 0.619348,
		-0.331508, -0.618253, 0.712647,
		28.052526, 31.881723, 28.891302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849525, 32.027641, 28.646267>,  <28.284582, 32.314503, 28.392448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849525, 32.027641, 28.646267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564909, 31.779289, 28.777851>,  <28.394138, 31.630278, 28.856802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564909, 31.779289, 28.777851>,  <28.849525, 32.027641, 28.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564909, 31.779289, 28.777851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578548, -0.783380, -0.227153,
		0.398735, 0.028690, 0.916617,
		-0.711542, -0.620881, 0.328959,
		28.351446, 31.593025, 28.876539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216953, 31.497076, 29.099613>,  <28.849525, 32.027641, 28.646267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216953, 31.497076, 29.099613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869682, 31.336393, 28.983063>,  <28.661320, 31.239985, 28.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869682, 31.336393, 28.983063>,  <29.216953, 31.497076, 29.099613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869682, 31.336393, 28.983063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463259, -0.866566, -0.185617,
		-0.177935, -0.296132, 0.938427,
		-0.868176, -0.401707, -0.291378,
		28.609230, 31.215881, 28.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173754, 30.783453, 29.484825>,  <29.216953, 31.497076, 29.099613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173754, 30.783453, 29.484825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938620, 30.761002, 29.162012>,  <28.797539, 30.747530, 28.968325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938620, 30.761002, 29.162012>,  <29.173754, 30.783453, 29.484825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938620, 30.761002, 29.162012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446854, -0.854121, -0.266080,
		-0.674369, -0.517036, 0.527162,
		-0.587833, -0.056128, -0.807033,
		28.762270, 30.744164, 28.919903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152620, 30.120672, 29.397709>,  <29.173754, 30.783453, 29.484825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152620, 30.120672, 29.397709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040478, 30.251747, 29.036818>,  <28.973192, 30.330393, 28.820282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040478, 30.251747, 29.036818>,  <29.152620, 30.120672, 29.397709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040478, 30.251747, 29.036818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560467, -0.707184, -0.431007,
		-0.779279, -0.626507, 0.014606,
		-0.280359, 0.327689, -0.902230,
		28.956369, 30.350054, 28.766148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005255, 29.479156, 29.004953>,  <29.152620, 30.120672, 29.397709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005255, 29.479156, 29.004953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068050, 29.782579, 28.751989>,  <29.105728, 29.964634, 28.600210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068050, 29.782579, 28.751989>,  <29.005255, 29.479156, 29.004953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068050, 29.782579, 28.751989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602094, -0.581098, -0.547547,
		-0.782839, -0.294812, -0.547950,
		0.156989, 0.758559, -0.632411,
		29.115147, 30.010147, 28.562265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656681, 29.330366, 28.336084>,  <29.005255, 29.479156, 29.004953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656681, 29.330366, 28.336084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000479, 29.532314, 28.368013>,  <29.206758, 29.653482, 28.387171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000479, 29.532314, 28.368013>,  <28.656681, 29.330366, 28.336084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000479, 29.532314, 28.368013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502564, -0.806211, -0.312174,
		-0.093252, 0.308430, -0.946665,
		0.859496, 0.504870, 0.079825,
		29.258327, 29.683775, 28.391960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990335, 29.184437, 27.715797>,  <28.656681, 29.330366, 28.336084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990335, 29.184437, 27.715797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263834, 29.258589, 27.998110>,  <29.427933, 29.303080, 28.167498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263834, 29.258589, 27.998110>,  <28.990335, 29.184437, 27.715797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263834, 29.258589, 27.998110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462686, -0.858051, -0.222867,
		0.564283, 0.478940, -0.672460,
		0.683744, 0.185378, 0.705782,
		29.468958, 29.314201, 28.209845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547779, 28.656542, 27.652466>,  <28.990335, 29.184437, 27.715797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547779, 28.656542, 27.652466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678072, 28.808752, 27.998667>,  <29.756248, 28.900078, 28.206388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678072, 28.808752, 27.998667>,  <29.547779, 28.656542, 27.652466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678072, 28.808752, 27.998667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570770, -0.808939, 0.140850,
		0.753737, 0.448124, -0.480692,
		0.325732, 0.380528, 0.865504,
		29.775791, 28.922911, 28.258318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279461, 28.534771, 27.674303>,  <29.547779, 28.656542, 27.652466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279461, 28.534771, 27.674303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130384, 28.542572, 28.045404>,  <30.040939, 28.547253, 28.268064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130384, 28.542572, 28.045404>,  <30.279461, 28.534771, 27.674303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130384, 28.542572, 28.045404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454628, -0.867736, 0.200869,
		0.808960, 0.496643, 0.314531,
		-0.372690, 0.019500, 0.927751,
		30.018578, 28.548422, 28.323730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803320, 28.490767, 28.155447>,  <30.279461, 28.534771, 27.674303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803320, 28.490767, 28.155447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475266, 28.323923, 28.312109>,  <30.278433, 28.223816, 28.406105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475266, 28.323923, 28.312109>,  <30.803320, 28.490767, 28.155447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475266, 28.323923, 28.312109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532079, -0.807698, 0.253998,
		0.210392, 0.416704, 0.884360,
		-0.820138, -0.417111, 0.391653,
		30.229223, 28.198790, 28.429605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991623, 28.247864, 28.865490>,  <30.803320, 28.490767, 28.155447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991623, 28.247864, 28.865490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686474, 28.034374, 28.719524>,  <30.503386, 27.906281, 28.631945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686474, 28.034374, 28.719524>,  <30.991623, 28.247864, 28.865490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686474, 28.034374, 28.719524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497963, -0.845012, 0.194902,
		-0.412382, -0.033029, 0.910412,
		-0.762872, -0.533726, -0.364915,
		30.457613, 27.874256, 28.610050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504717, 28.650314, 29.145515>,  <30.991623, 28.247864, 28.865490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504717, 28.650314, 29.145515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591158, 28.514709, 29.511766>,  <30.643023, 28.433346, 29.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591158, 28.514709, 29.511766>,  <30.504717, 28.650314, 29.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591158, 28.514709, 29.511766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806068, 0.591130, 0.028624,
		-0.550958, 0.731871, 0.401011,
		0.216101, -0.339013, 0.915626,
		30.655989, 28.413006, 29.786453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530880, 29.145367, 29.628582>,  <30.504717, 28.650314, 29.145515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530880, 29.145367, 29.628582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781351, 28.834658, 29.655489>,  <30.931635, 28.648233, 29.671633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781351, 28.834658, 29.655489>,  <30.530880, 29.145367, 29.628582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781351, 28.834658, 29.655489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764759, 0.595109, -0.246960,
		0.151799, 0.206085, 0.966688,
		0.626180, -0.776772, 0.067269,
		30.969206, 28.601625, 29.675669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119919, 29.572199, 29.653263>,  <30.530880, 29.145367, 29.628582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119919, 29.572199, 29.653263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459679, 29.619886, 29.447620>,  <31.663534, 29.648499, 29.324236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459679, 29.619886, 29.447620>,  <31.119919, 29.572199, 29.653263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459679, 29.619886, 29.447620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305936, 0.904999, -0.295603,
		0.430024, 0.408369, 0.805180,
		0.849402, 0.119217, -0.514105,
		31.714499, 29.655651, 29.293388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645639, 30.154207, 29.805527>,  <31.119919, 29.572199, 29.653263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645639, 30.154207, 29.805527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669456, 30.110481, 29.408638>,  <31.683746, 30.084246, 29.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669456, 30.110481, 29.408638>,  <31.645639, 30.154207, 29.805527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669456, 30.110481, 29.408638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274672, 0.953822, -0.121569,
		0.959693, 0.279774, 0.026766,
		0.059542, -0.109317, -0.992222,
		31.687319, 30.077686, 29.110971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148132, 30.681450, 29.488695>,  <31.645639, 30.154207, 29.805527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148132, 30.681450, 29.488695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886940, 30.597267, 29.197676>,  <31.730225, 30.546757, 29.023064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886940, 30.597267, 29.197676>,  <32.148132, 30.681450, 29.488695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886940, 30.597267, 29.197676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199299, 0.974508, -0.103026,
		0.730685, 0.077726, -0.678276,
		-0.652977, -0.210459, -0.727549,
		31.691048, 30.534130, 28.979410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269768, 31.091419, 28.830374>,  <32.148132, 30.681450, 29.488695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269768, 31.091419, 28.830374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885914, 30.980516, 28.811502>,  <31.655602, 30.913975, 28.800180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885914, 30.980516, 28.811502>,  <32.269768, 31.091419, 28.830374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885914, 30.980516, 28.811502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272490, 0.958124, -0.088020,
		0.069606, -0.071612, -0.995001,
		-0.959638, -0.277255, -0.047178,
		31.598022, 30.897341, 28.797350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975990, 31.404425, 28.259418>,  <32.269768, 31.091419, 28.830374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975990, 31.404425, 28.259418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646891, 31.302835, 28.462820>,  <31.449430, 31.241882, 28.584862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646891, 31.302835, 28.462820>,  <31.975990, 31.404425, 28.259418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646891, 31.302835, 28.462820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278303, 0.960049, 0.029210,
		-0.495610, -0.117487, -0.860563,
		-0.822751, -0.253974, 0.508506,
		31.400066, 31.226643, 28.615372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473429, 31.878048, 27.955442>,  <31.975990, 31.404425, 28.259418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473429, 31.878048, 27.955442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320255, 31.738972, 28.297781>,  <31.228352, 31.655525, 28.503183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320255, 31.738972, 28.297781>,  <31.473429, 31.878048, 27.955442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320255, 31.738972, 28.297781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431135, 0.886642, 0.167300,
		-0.816998, -0.304921, -0.489426,
		-0.382932, -0.347692, 0.855847,
		31.205376, 31.634665, 28.554535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832146, 32.087242, 27.894880>,  <31.473429, 31.878048, 27.955442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832146, 32.087242, 27.894880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860939, 32.003635, 28.284985>,  <30.878216, 31.953472, 28.519047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860939, 32.003635, 28.284985>,  <30.832146, 32.087242, 27.894880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860939, 32.003635, 28.284985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549589, 0.807652, 0.213660,
		-0.832328, -0.551371, -0.056736,
		0.071983, -0.209016, 0.975259,
		30.882534, 31.940931, 28.577562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162266, 32.236233, 28.199207>,  <30.832146, 32.087242, 27.894880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162266, 32.236233, 28.199207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420134, 32.239109, 28.504978>,  <30.574854, 32.240837, 28.688440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420134, 32.239109, 28.504978>,  <30.162266, 32.236233, 28.199207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420134, 32.239109, 28.504978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444461, 0.817106, 0.367140,
		-0.621977, -0.576442, 0.529961,
		0.644670, 0.007194, 0.764427,
		30.613535, 32.241268, 28.734306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782930, 32.362263, 28.824968>,  <30.162266, 32.236233, 28.199207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782930, 32.362263, 28.824968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158909, 32.470478, 28.908213>,  <30.384497, 32.535408, 28.958160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158909, 32.470478, 28.908213>,  <29.782930, 32.362263, 28.824968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158909, 32.470478, 28.908213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341247, 0.757726, 0.556239,
		-0.007208, -0.593853, 0.804541,
		0.939946, 0.270538, 0.208112,
		30.440893, 32.551640, 28.970646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805368, 32.483322, 29.570475>,  <29.782930, 32.362263, 28.824968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805368, 32.483322, 29.570475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132521, 32.681042, 29.452667>,  <30.328812, 32.799671, 29.381983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132521, 32.681042, 29.452667>,  <29.805368, 32.483322, 29.570475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132521, 32.681042, 29.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154095, 0.681332, 0.715571,
		0.554365, -0.539870, 0.633419,
		0.817884, 0.494294, -0.294516,
		30.377886, 32.829330, 29.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232761, 32.589870, 30.208744>,  <29.805368, 32.483322, 29.570475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232761, 32.589870, 30.208744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316969, 32.859474, 29.925508>,  <30.367493, 33.021236, 29.755568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316969, 32.859474, 29.925508>,  <30.232761, 32.589870, 30.208744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316969, 32.859474, 29.925508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126814, 0.737031, 0.663855,
		0.969330, -0.049957, 0.240632,
		0.210518, 0.674010, -0.708091,
		30.380125, 33.061676, 29.713081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530867, 32.971001, 30.626400>,  <30.232761, 32.589870, 30.208744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530867, 32.971001, 30.626400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488304, 33.215366, 30.312595>,  <30.462767, 33.361988, 30.124313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488304, 33.215366, 30.312595>,  <30.530867, 32.971001, 30.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488304, 33.215366, 30.312595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125270, 0.774468, 0.620087,
		0.986400, 0.164259, -0.005880,
		-0.106408, 0.610917, -0.784511,
		30.456381, 33.398640, 30.077242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045227, 33.503517, 30.729031>,  <30.530867, 32.971001, 30.626400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045227, 33.503517, 30.729031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758768, 33.641998, 30.486618>,  <30.586893, 33.725086, 30.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758768, 33.641998, 30.486618>,  <31.045227, 33.503517, 30.729031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758768, 33.641998, 30.486618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179853, 0.747440, 0.639521,
		0.674378, 0.566988, -0.473011,
		-0.716148, 0.346206, -0.606031,
		30.543924, 33.745861, 30.304810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109583, 34.136875, 30.733711>,  <31.045227, 33.503517, 30.729031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109583, 34.136875, 30.733711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738911, 34.097340, 30.588665>,  <30.516506, 34.073616, 30.501637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738911, 34.097340, 30.588665>,  <31.109583, 34.136875, 30.733711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738911, 34.097340, 30.588665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327114, 0.687218, 0.648635,
		0.185083, 0.719695, -0.669166,
		-0.926683, -0.098842, -0.362615,
		30.460905, 34.067688, 30.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798260, 34.740993, 30.704414>,  <31.109583, 34.136875, 30.733711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798260, 34.740993, 30.704414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458563, 34.530407, 30.688316>,  <30.254745, 34.404057, 30.678658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458563, 34.530407, 30.688316>,  <30.798260, 34.740993, 30.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458563, 34.530407, 30.688316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424509, 0.635469, 0.644958,
		-0.313974, 0.564811, -0.763157,
		-0.849242, -0.526468, -0.040247,
		30.203791, 34.372467, 30.676243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339439, 35.244251, 30.454638>,  <30.798260, 34.740993, 30.704414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339439, 35.244251, 30.454638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161741, 34.936623, 30.638453>,  <30.055122, 34.752045, 30.748741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161741, 34.936623, 30.638453>,  <30.339439, 35.244251, 30.454638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161741, 34.936623, 30.638453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342078, 0.619680, 0.706385,
		-0.828028, 0.156609, -0.538371,
		-0.444244, -0.769071, 0.459539,
		30.028467, 34.705902, 30.776314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667833, 35.549698, 30.528589>,  <30.339439, 35.244251, 30.454638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667833, 35.549698, 30.528589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679892, 35.242973, 30.785057>,  <29.687126, 35.058941, 30.938938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679892, 35.242973, 30.785057>,  <29.667833, 35.549698, 30.528589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679892, 35.242973, 30.785057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407862, 0.576190, 0.708275,
		-0.912546, -0.282861, -0.295381,
		0.030148, -0.766808, 0.641168,
		29.688936, 35.012932, 30.977407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968693, 35.485943, 30.892611>,  <29.667833, 35.549698, 30.528589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968693, 35.485943, 30.892611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210474, 35.269779, 31.126740>,  <29.355543, 35.140083, 31.267216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210474, 35.269779, 31.126740>,  <28.968693, 35.485943, 30.892611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210474, 35.269779, 31.126740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491204, 0.325622, 0.807892,
		-0.627182, -0.775844, -0.068626,
		0.604451, -0.540404, 0.585321,
		29.391809, 35.107658, 31.302336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500288, 35.109264, 31.369658>,  <28.968693, 35.485943, 30.892611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500288, 35.109264, 31.369658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858616, 35.133240, 31.545799>,  <29.073612, 35.147625, 31.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858616, 35.133240, 31.545799>,  <28.500288, 35.109264, 31.369658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858616, 35.133240, 31.545799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444251, 0.147744, 0.883636,
		-0.012099, -0.987208, 0.158978,
		0.895821, 0.059935, 0.440356,
		29.127361, 35.151222, 31.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405535, 34.614887, 31.891636>,  <28.500288, 35.109264, 31.369658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405535, 34.614887, 31.891636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693485, 34.885406, 31.954121>,  <28.866257, 35.047718, 31.991611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693485, 34.885406, 31.954121>,  <28.405535, 34.614887, 31.891636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693485, 34.885406, 31.954121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430320, 0.258265, 0.864942,
		0.544612, -0.689873, 0.476942,
		0.719877, 0.676295, 0.156212,
		28.909449, 35.088295, 32.000984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591356, 34.441978, 32.516399>,  <28.405535, 34.614887, 31.891636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591356, 34.441978, 32.516399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776325, 34.795948, 32.494232>,  <28.887306, 35.008331, 32.480930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776325, 34.795948, 32.494232>,  <28.591356, 34.441978, 32.516399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776325, 34.795948, 32.494232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316787, 0.223268, 0.921845,
		0.828138, -0.408725, 0.383577,
		0.462421, 0.884927, -0.055418,
		28.915052, 35.061424, 32.477608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977661, 34.435776, 33.093243>,  <28.591356, 34.441978, 32.516399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977661, 34.435776, 33.093243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945137, 34.826145, 33.012283>,  <28.925623, 35.060368, 32.963707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945137, 34.826145, 33.012283>,  <28.977661, 34.435776, 33.093243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945137, 34.826145, 33.012283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099548, 0.194101, 0.975918,
		0.991705, 0.099502, 0.081368,
		-0.081312, 0.975922, -0.202396,
		28.920744, 35.118923, 32.951565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211416, 34.753654, 33.669582>,  <28.977661, 34.435776, 33.093243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211416, 34.753654, 33.669582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997364, 35.052956, 33.512737>,  <28.868933, 35.232536, 33.418629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997364, 35.052956, 33.512737>,  <29.211416, 34.753654, 33.669582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997364, 35.052956, 33.512737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328711, 0.243147, 0.912594,
		0.778195, 0.617246, 0.115845,
		-0.535128, 0.748255, -0.392112,
		28.836826, 35.277431, 33.395103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337957, 35.271172, 34.185608>,  <29.211416, 34.753654, 33.669582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337957, 35.271172, 34.185608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026169, 35.396156, 33.968430>,  <28.839096, 35.471149, 33.838123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026169, 35.396156, 33.968430>,  <29.337957, 35.271172, 34.185608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026169, 35.396156, 33.968430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463463, 0.295470, 0.835404,
		0.421460, 0.902808, -0.085493,
		-0.779470, 0.312466, -0.542947,
		28.792328, 35.489895, 33.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237154, 35.990974, 33.964634>,  <29.337957, 35.271172, 34.185608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237154, 35.990974, 33.964634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902233, 35.790249, 34.051453>,  <28.701281, 35.669815, 34.103542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902233, 35.790249, 34.051453>,  <29.237154, 35.990974, 33.964634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902233, 35.790249, 34.051453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074183, 0.289042, 0.954438,
		-0.541685, 0.815254, -0.204789,
		-0.837302, -0.501813, 0.217048,
		28.651043, 35.639706, 34.116566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738209, 36.415390, 34.377945>,  <29.237154, 35.990974, 33.964634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738209, 36.415390, 34.377945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692097, 36.030663, 34.477234>,  <28.664431, 35.799828, 34.536808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692097, 36.030663, 34.477234>,  <28.738209, 36.415390, 34.377945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692097, 36.030663, 34.477234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005753, 0.250529, 0.968092,
		-0.993317, 0.110172, -0.034414,
		-0.115278, -0.961820, 0.248221,
		28.657513, 35.742115, 34.551701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242039, 36.446793, 34.939514>,  <28.738209, 36.415390, 34.377945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242039, 36.446793, 34.939514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437141, 36.097805, 34.927559>,  <28.554203, 35.888412, 34.920387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437141, 36.097805, 34.927559>,  <28.242039, 36.446793, 34.939514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437141, 36.097805, 34.927559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041339, -0.057281, 0.997502,
		-0.872001, -0.485301, -0.064006,
		0.487755, -0.872468, -0.029887,
		28.583467, 35.836063, 34.918594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798559, 36.040806, 35.315395>,  <28.242039, 36.446793, 34.939514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798559, 36.040806, 35.315395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170094, 35.892609, 35.314671>,  <28.393013, 35.803692, 35.314236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170094, 35.892609, 35.314671>,  <27.798559, 36.040806, 35.315395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170094, 35.892609, 35.314671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084882, -0.217552, 0.972351,
		-0.360644, -0.902998, -0.233518,
		0.928833, -0.370494, -0.001811,
		28.448744, 35.781460, 35.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070017, 35.850914, 36.052212>,  <27.798559, 36.040806, 35.315395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070017, 35.850914, 36.052212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169762, 36.220951, 35.937653>,  <28.229609, 36.442974, 35.868916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169762, 36.220951, 35.937653>,  <28.070017, 35.850914, 36.052212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169762, 36.220951, 35.937653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044528, 0.284476, 0.957648,
		0.967386, -0.251554, 0.029745,
		0.249362, 0.925091, -0.286399,
		28.244570, 36.498478, 35.851734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765364, 36.001808, 35.782669>,  <28.070017, 35.850914, 36.052212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765364, 36.001808, 35.782669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927654, 35.740681, 36.038551>,  <29.025028, 35.584003, 36.192081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927654, 35.740681, 36.038551>,  <28.765364, 36.001808, 35.782669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927654, 35.740681, 36.038551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608933, -0.328877, -0.721831,
		0.681605, 0.682403, 0.264086,
		0.405728, -0.652814, 0.639702,
		29.049372, 35.544838, 36.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410387, 36.175381, 35.720562>,  <28.765364, 36.001808, 35.782669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410387, 36.175381, 35.720562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438494, 35.797199, 35.847801>,  <29.455359, 35.570290, 35.924145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438494, 35.797199, 35.847801>,  <29.410387, 36.175381, 35.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438494, 35.797199, 35.847801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552977, -0.228483, -0.801257,
		0.830228, 0.232203, 0.506757,
		0.070269, -0.945451, 0.318096,
		29.459574, 35.513565, 35.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660952, 35.934307, 36.355755>,  <29.410387, 36.175381, 35.720562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660952, 35.934307, 36.355755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735542, 36.274124, 36.553139>,  <29.780296, 36.478016, 36.671570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735542, 36.274124, 36.553139>,  <29.660952, 35.934307, 36.355755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735542, 36.274124, 36.553139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174932, -0.465529, 0.867572,
		0.966760, -0.248102, 0.061803,
		0.186476, 0.849546, 0.493456,
		29.791485, 36.528988, 36.701176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272455, 35.593502, 36.913292>,  <29.660952, 35.934307, 36.355755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272455, 35.593502, 36.913292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616135, 35.525883, 36.720131>,  <29.822342, 35.485310, 36.604233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616135, 35.525883, 36.720131>,  <29.272455, 35.593502, 36.913292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616135, 35.525883, 36.720131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331548, -0.534896, 0.777150,
		-0.389681, -0.827833, -0.403535,
		0.859200, -0.169049, -0.482905,
		29.873896, 35.475166, 36.575260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299740, 34.895393, 36.872047>,  <29.272455, 35.593502, 36.913292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299740, 34.895393, 36.872047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678154, 35.018154, 36.830425>,  <29.905203, 35.091808, 36.805450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678154, 35.018154, 36.830425>,  <29.299740, 34.895393, 36.872047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678154, 35.018154, 36.830425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281253, -0.618084, 0.734077,
		0.160970, -0.723731, -0.671046,
		0.946037, 0.306898, -0.104058,
		29.961966, 35.110222, 36.799210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625011, 34.298958, 36.658382>,  <29.299740, 34.895393, 36.872047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625011, 34.298958, 36.658382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931938, 34.513393, 36.799145>,  <30.116095, 34.642056, 36.883602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931938, 34.513393, 36.799145>,  <29.625011, 34.298958, 36.658382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931938, 34.513393, 36.799145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300256, -0.785241, 0.541519,
		0.566634, -0.309852, -0.763490,
		0.767315, 0.536086, 0.351909,
		30.162132, 34.674221, 36.904716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178631, 33.847370, 36.659775>,  <29.625011, 34.298958, 36.658382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178631, 33.847370, 36.659775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285498, 34.130360, 36.921490>,  <30.349617, 34.300156, 37.078518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285498, 34.130360, 36.921490>,  <30.178631, 33.847370, 36.659775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285498, 34.130360, 36.921490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428462, -0.695377, 0.576950,
		0.863158, 0.126196, -0.488909,
		0.267168, 0.707478, 0.654291,
		30.365648, 34.342602, 37.117779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778460, 33.597355, 37.002335>,  <30.178631, 33.847370, 36.659775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778460, 33.597355, 37.002335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673838, 33.899689, 37.242435>,  <30.611065, 34.081089, 37.386497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673838, 33.899689, 37.242435>,  <30.778460, 33.597355, 37.002335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673838, 33.899689, 37.242435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255352, -0.545554, 0.798226,
		0.930798, 0.362055, -0.050312,
		-0.261554, 0.755835, 0.600253,
		30.595371, 34.126438, 37.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278522, 33.596653, 37.509918>,  <30.778460, 33.597355, 37.002335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278522, 33.596653, 37.509918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964212, 33.776852, 37.679440>,  <30.775627, 33.884972, 37.781151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964212, 33.776852, 37.679440>,  <31.278522, 33.596653, 37.509918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964212, 33.776852, 37.679440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114856, -0.566997, 0.815673,
		0.607755, 0.689611, 0.393789,
		-0.785775, 0.450500, 0.423802,
		30.728479, 33.912003, 37.806580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491442, 33.848598, 38.282631>,  <31.278522, 33.596653, 37.509918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491442, 33.848598, 38.282631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091877, 33.830833, 38.276924>,  <30.852139, 33.820175, 38.273499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091877, 33.830833, 38.276924>,  <31.491442, 33.848598, 38.282631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091877, 33.830833, 38.276924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006424, -0.433955, 0.900912,
		-0.046201, 0.899839, 0.433768,
		-0.998911, -0.044409, -0.014268,
		30.792204, 33.817513, 38.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193384, 34.041603, 39.025478>,  <31.491442, 33.848598, 38.282631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193384, 34.041603, 39.025478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861229, 33.887257, 38.864700>,  <30.661936, 33.794647, 38.768234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861229, 33.887257, 38.864700>,  <31.193384, 34.041603, 39.025478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861229, 33.887257, 38.864700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296873, -0.304063, 0.905214,
		-0.471510, 0.871006, 0.137937,
		-0.830389, -0.385867, -0.401947,
		30.612112, 33.771496, 38.744118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612368, 34.214981, 39.513016>,  <31.193384, 34.041603, 39.025478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612368, 34.214981, 39.513016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523554, 33.900803, 39.281925>,  <30.470266, 33.712296, 39.143269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523554, 33.900803, 39.281925>,  <30.612368, 34.214981, 39.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523554, 33.900803, 39.281925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285529, -0.514167, 0.808768,
		-0.932295, 0.344532, -0.110106,
		-0.222034, -0.785449, -0.577729,
		30.456944, 33.665169, 39.108608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175304, 33.918198, 39.874050>,  <30.612368, 34.214981, 39.513016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175304, 33.918198, 39.874050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311804, 33.631161, 39.631195>,  <30.393703, 33.458939, 39.485481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311804, 33.631161, 39.631195>,  <30.175304, 33.918198, 39.874050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311804, 33.631161, 39.631195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128571, -0.675472, 0.726090,
		-0.931138, -0.169717, -0.322765,
		0.341249, -0.717589, -0.607137,
		30.414179, 33.415886, 39.449055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673441, 33.321640, 39.894306>,  <30.175304, 33.918198, 39.874050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673441, 33.321640, 39.894306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020218, 33.174576, 39.759701>,  <30.228285, 33.086338, 39.678940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020218, 33.174576, 39.759701>,  <29.673441, 33.321640, 39.894306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020218, 33.174576, 39.759701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051661, -0.737817, 0.673021,
		-0.495723, -0.566086, -0.658639,
		0.866942, -0.367658, -0.336509,
		30.280300, 33.064278, 39.658749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591778, 32.581806, 39.869328>,  <29.673441, 33.321640, 39.894306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591778, 32.581806, 39.869328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987768, 32.632805, 39.893627>,  <30.225363, 32.663403, 39.908207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987768, 32.632805, 39.893627>,  <29.591778, 32.581806, 39.869328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987768, 32.632805, 39.893627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048323, -0.710005, 0.702536,
		0.132704, -0.692559, -0.709050,
		0.989977, 0.127493, 0.060754,
		30.284761, 32.671051, 39.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851204, 31.856659, 39.869297>,  <29.591778, 32.581806, 39.869328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851204, 31.856659, 39.869297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137650, 32.070301, 40.049038>,  <30.309517, 32.198486, 40.156883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137650, 32.070301, 40.049038>,  <29.851204, 31.856659, 39.869297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137650, 32.070301, 40.049038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038167, -0.672785, 0.738853,
		0.696941, -0.511951, -0.502174,
		0.716112, 0.534104, 0.449352,
		30.352484, 32.230534, 40.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234413, 31.363583, 40.158913>,  <29.851204, 31.856659, 39.869297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234413, 31.363583, 40.158913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342606, 31.696239, 40.352909>,  <30.407522, 31.895834, 40.469307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342606, 31.696239, 40.352909>,  <30.234413, 31.363583, 40.158913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342606, 31.696239, 40.352909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116076, -0.528262, 0.841110,
		0.955702, -0.171210, -0.239420,
		0.270482, 0.831641, 0.484988,
		30.423750, 31.945732, 40.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777514, 31.094923, 40.613235>,  <30.234413, 31.363583, 40.158913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777514, 31.094923, 40.613235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707470, 31.460777, 40.758991>,  <30.665443, 31.680290, 40.846443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707470, 31.460777, 40.758991>,  <30.777514, 31.094923, 40.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707470, 31.460777, 40.758991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157093, -0.391323, 0.906745,
		0.971935, 0.101538, 0.212208,
		-0.175111, 0.914634, 0.364390,
		30.654936, 31.735168, 40.868309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219255, 31.175356, 41.117680>,  <30.777514, 31.094923, 40.613235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219255, 31.175356, 41.117680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936611, 31.445992, 41.200558>,  <30.767025, 31.608372, 41.250286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936611, 31.445992, 41.200558>,  <31.219255, 31.175356, 41.117680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936611, 31.445992, 41.200558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008615, -0.301017, 0.953580,
		0.707549, 0.672026, 0.218531,
		-0.706612, 0.676587, 0.207195,
		30.724628, 31.648968, 41.262714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400063, 31.356110, 41.737453>,  <31.219255, 31.175356, 41.117680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400063, 31.356110, 41.737453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020639, 31.480566, 41.714031>,  <30.792986, 31.555241, 41.699978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020639, 31.480566, 41.714031>,  <31.400063, 31.356110, 41.737453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020639, 31.480566, 41.714031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129970, -0.214037, 0.968141,
		0.288696, 0.925948, 0.243465,
		-0.948558, 0.311142, -0.058554,
		30.736073, 31.573908, 41.696465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360430, 31.799528, 42.303967>,  <31.400063, 31.356110, 41.737453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360430, 31.799528, 42.303967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979277, 31.715822, 42.216125>,  <30.750586, 31.665600, 42.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979277, 31.715822, 42.216125>,  <31.360430, 31.799528, 42.303967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979277, 31.715822, 42.216125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212346, -0.056806, 0.975542,
		-0.216619, 0.976208, 0.009693,
		-0.952883, -0.209263, -0.219599,
		30.693413, 31.653044, 42.150246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921619, 32.122829, 42.726940>,  <31.360430, 31.799528, 42.303967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921619, 32.122829, 42.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671463, 31.823532, 42.638374>,  <30.521370, 31.643953, 42.585236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671463, 31.823532, 42.638374>,  <30.921619, 32.122829, 42.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671463, 31.823532, 42.638374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111897, -0.194819, 0.974436,
		-0.772248, 0.634177, 0.038112,
		-0.625390, -0.748241, -0.221411,
		30.483847, 31.599060, 42.571953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583225, 32.124023, 43.321533>,  <30.921619, 32.122829, 42.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583225, 32.124023, 43.321533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454094, 31.789747, 43.143814>,  <30.376616, 31.589182, 43.037182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454094, 31.789747, 43.143814>,  <30.583225, 32.124023, 43.321533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454094, 31.789747, 43.143814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186621, -0.404013, 0.895514,
		-0.927877, 0.372011, -0.025531,
		-0.322827, -0.835692, -0.444300,
		30.357246, 31.539040, 43.010525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924719, 31.999249, 43.617031>,  <30.583225, 32.124023, 43.321533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924719, 31.999249, 43.617031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074278, 31.660065, 43.466743>,  <30.164013, 31.456554, 43.376572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074278, 31.660065, 43.466743>,  <29.924719, 31.999249, 43.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074278, 31.660065, 43.466743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187400, -0.465818, 0.864809,
		-0.908341, -0.252938, -0.333076,
		0.373896, -0.847960, -0.375721,
		30.186447, 31.405676, 43.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458845, 31.409174, 43.830235>,  <29.924719, 31.999249, 43.617031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458845, 31.409174, 43.830235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817181, 31.253450, 43.744530>,  <30.032183, 31.160017, 43.693108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817181, 31.253450, 43.744530>,  <29.458845, 31.409174, 43.830235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817181, 31.253450, 43.744530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093558, -0.636602, 0.765496,
		-0.434415, -0.665716, -0.606717,
		0.895841, -0.389307, -0.214266,
		30.085934, 31.136658, 43.680248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419815, 30.576391, 43.698463>,  <29.458845, 31.409174, 43.830235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419815, 30.576391, 43.698463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788185, 30.676291, 43.818146>,  <30.009207, 30.736231, 43.889954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788185, 30.676291, 43.818146>,  <29.419815, 30.576391, 43.698463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788185, 30.676291, 43.818146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051562, -0.682873, 0.728715,
		0.386314, -0.686519, -0.615998,
		0.920925, 0.249751, 0.299201,
		30.064463, 30.751215, 43.907906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737310, 29.968340, 43.626080>,  <29.419815, 30.576391, 43.698463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737310, 29.968340, 43.626080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952282, 30.194302, 43.876534>,  <30.081264, 30.329880, 44.026806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952282, 30.194302, 43.876534>,  <29.737310, 29.968340, 43.626080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952282, 30.194302, 43.876534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046367, -0.761151, 0.646915,
		0.842032, -0.318639, -0.435259,
		0.537430, 0.564905, 0.626139,
		30.113510, 30.363773, 44.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075607, 29.427248, 43.940151>,  <29.737310, 29.968340, 43.626080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075607, 29.427248, 43.940151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142384, 29.756775, 44.156837>,  <30.182449, 29.954491, 44.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142384, 29.756775, 44.156837>,  <30.075607, 29.427248, 43.940151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142384, 29.756775, 44.156837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057292, -0.556603, 0.828801,
		0.984301, -0.107324, -0.140118,
		0.166940, 0.823817, 0.541716,
		30.192465, 30.003920, 44.319351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743969, 29.416409, 44.178642>,  <30.075607, 29.427248, 43.940151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743969, 29.416409, 44.178642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541939, 29.648756, 44.433983>,  <30.420721, 29.788164, 44.587189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541939, 29.648756, 44.433983>,  <30.743969, 29.416409, 44.178642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541939, 29.648756, 44.433983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157431, -0.665211, 0.729870,
		0.848596, 0.469135, 0.244535,
		-0.505075, 0.580868, 0.638351,
		30.390417, 29.823017, 44.625488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042938, 29.310791, 44.762379>,  <30.743969, 29.416409, 44.178642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042938, 29.310791, 44.762379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696476, 29.481565, 44.866302>,  <30.488600, 29.584030, 44.928658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696476, 29.481565, 44.866302>,  <31.042938, 29.310791, 44.762379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696476, 29.481565, 44.866302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008675, -0.506937, 0.861939,
		0.499702, 0.748826, 0.435382,
		-0.866154, 0.426935, 0.259814,
		30.436630, 29.609646, 44.944248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114439, 29.664295, 45.341072>,  <31.042938, 29.310791, 44.762379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114439, 29.664295, 45.341072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722002, 29.587593, 45.330551>,  <30.486540, 29.541573, 45.324238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722002, 29.587593, 45.330551>,  <31.114439, 29.664295, 45.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722002, 29.587593, 45.330551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052024, -0.392152, 0.918428,
		-0.186429, 0.899693, 0.394712,
		-0.981090, -0.191756, -0.026303,
		30.427675, 29.530066, 45.322659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960463, 29.893454, 45.959583>,  <31.114439, 29.664295, 45.341072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960463, 29.893454, 45.959583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641073, 29.675371, 45.857452>,  <30.449440, 29.544521, 45.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641073, 29.675371, 45.857452>,  <30.960463, 29.893454, 45.959583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641073, 29.675371, 45.857452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016451, -0.443703, 0.896023,
		-0.601806, 0.711250, 0.363254,
		-0.798473, -0.545208, -0.255323,
		30.401531, 29.511808, 45.780857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443899, 29.992279, 46.500504>,  <30.960463, 29.893454, 45.959583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443899, 29.992279, 46.500504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349848, 29.653873, 46.309097>,  <30.293417, 29.450830, 46.194256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349848, 29.653873, 46.309097>,  <30.443899, 29.992279, 46.500504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349848, 29.653873, 46.309097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033602, -0.484945, 0.873899,
		-0.971383, 0.221560, 0.085598,
		-0.235131, -0.846014, -0.478512,
		30.279308, 29.400070, 46.165543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749622, 29.765310, 46.762756>,  <30.443899, 29.992279, 46.500504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749622, 29.765310, 46.762756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939238, 29.445004, 46.616299>,  <30.053007, 29.252819, 46.528423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939238, 29.445004, 46.616299>,  <29.749622, 29.765310, 46.762756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939238, 29.445004, 46.616299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268038, -0.527331, 0.806274,
		-0.838716, -0.284064, -0.464611,
		0.474037, -0.800768, -0.366140,
		30.081450, 29.204773, 46.506458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386980, 29.181992, 47.028893>,  <29.749622, 29.765310, 46.762756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386980, 29.181992, 47.028893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722960, 29.002842, 46.906326>,  <29.924547, 28.895351, 46.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722960, 29.002842, 46.906326>,  <29.386980, 29.181992, 47.028893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722960, 29.002842, 46.906326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002296, -0.561719, 0.827325,
		-0.542651, -0.695619, -0.470791,
		0.839955, -0.447868, -0.306414,
		29.974945, 28.868479, 46.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356106, 28.545609, 47.270679>,  <29.386980, 29.181992, 47.028893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356106, 28.545609, 47.270679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742266, 28.525486, 47.168327>,  <29.973961, 28.513412, 47.106915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742266, 28.525486, 47.168327>,  <29.356106, 28.545609, 47.270679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742266, 28.525486, 47.168327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163181, -0.648842, 0.743220,
		-0.203416, -0.759258, -0.618182,
		0.965398, -0.050308, -0.255881,
		30.031885, 28.510393, 47.091564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540586, 27.789705, 47.223907>,  <29.356106, 28.545609, 47.270679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540586, 27.789705, 47.223907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850622, 28.030008, 47.302219>,  <30.036644, 28.174191, 47.349205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850622, 28.030008, 47.302219>,  <29.540586, 27.789705, 47.223907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850622, 28.030008, 47.302219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347799, -0.664329, 0.661591,
		0.527518, -0.444700, -0.723856,
		0.775088, 0.600757, 0.195780,
		30.083149, 28.210236, 47.360954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228296, 27.444395, 47.121716>,  <29.540586, 27.789705, 47.223907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228296, 27.444395, 47.121716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309538, 27.743992, 47.373989>,  <30.358282, 27.923750, 47.525352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309538, 27.743992, 47.373989>,  <30.228296, 27.444395, 47.121716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309538, 27.743992, 47.373989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421920, -0.648188, 0.633905,
		0.883591, 0.137351, -0.447662,
		0.203102, 0.748990, 0.630684,
		30.370468, 27.968689, 47.563194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991730, 27.386698, 47.193455>,  <30.228296, 27.444395, 47.121716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991730, 27.386698, 47.193455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803722, 27.555166, 47.503731>,  <30.690918, 27.656246, 47.689896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803722, 27.555166, 47.503731>,  <30.991730, 27.386698, 47.193455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803722, 27.555166, 47.503731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549186, -0.548448, 0.630555,
		0.690997, 0.722372, 0.026480,
		-0.470019, 0.421169, 0.775692,
		30.662716, 27.681517, 47.736439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565353, 27.526978, 47.638237>,  <30.991730, 27.386698, 47.193455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565353, 27.526978, 47.638237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253572, 27.552885, 47.887478>,  <31.066504, 27.568430, 48.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253572, 27.552885, 47.887478>,  <31.565353, 27.526978, 47.638237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253572, 27.552885, 47.887478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458188, -0.619362, 0.637538,
		0.427218, 0.782429, 0.453089,
		-0.779454, 0.064767, 0.623102,
		31.019735, 27.572315, 48.074409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829077, 27.649107, 48.342758>,  <31.565353, 27.526978, 47.638237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829077, 27.649107, 48.342758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454376, 27.516462, 48.387539>,  <31.229557, 27.436876, 48.414406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454376, 27.516462, 48.387539>,  <31.829077, 27.649107, 48.342758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454376, 27.516462, 48.387539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297679, -0.586628, 0.753163,
		-0.184084, 0.738851, 0.648238,
		-0.936750, -0.331612, 0.111951,
		31.173351, 27.416979, 48.421124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722387, 27.667543, 49.024254>,  <31.829077, 27.649107, 48.342758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722387, 27.667543, 49.024254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447874, 27.401789, 48.905857>,  <31.283167, 27.242336, 48.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447874, 27.401789, 48.905857>,  <31.722387, 27.667543, 49.024254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447874, 27.401789, 48.905857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255171, -0.601012, 0.757412,
		-0.681106, 0.444270, 0.581995,
		-0.686282, -0.664386, -0.295988,
		31.241989, 27.202473, 48.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479927, 27.370846, 49.622646>,  <31.722387, 27.667543, 49.024254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479927, 27.370846, 49.622646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390333, 27.113018, 49.330246>,  <31.336576, 26.958321, 49.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390333, 27.113018, 49.330246>,  <31.479927, 27.370846, 49.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390333, 27.113018, 49.330246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236017, -0.763604, 0.601004,
		-0.945582, -0.037911, 0.323167,
		-0.223987, -0.644571, -0.730998,
		31.323137, 26.919647, 49.110947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964279, 27.002625, 49.928623>,  <31.479927, 27.370846, 49.622646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964279, 27.002625, 49.928623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147913, 26.771866, 49.658386>,  <31.258093, 26.633411, 49.496243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147913, 26.771866, 49.658386>,  <30.964279, 27.002625, 49.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147913, 26.771866, 49.658386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060420, -0.738434, 0.671613,
		-0.886335, -0.349148, -0.304149,
		0.459086, -0.576897, -0.675596,
		31.285639, 26.598797, 49.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620296, 26.361919, 50.040585>,  <30.964279, 27.002625, 49.928623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620296, 26.361919, 50.040585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985647, 26.307026, 49.887272>,  <31.204859, 26.274090, 49.795284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985647, 26.307026, 49.887272>,  <30.620296, 26.361919, 50.040585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985647, 26.307026, 49.887272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103965, -0.831626, 0.545518,
		-0.393612, -0.538112, -0.745322,
		0.913379, -0.137235, -0.383283,
		31.259661, 26.265856, 49.772285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633575, 25.722521, 49.964226>,  <30.620296, 26.361919, 50.040585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633575, 25.722521, 49.964226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009232, 25.838152, 50.038467>,  <31.234625, 25.907530, 50.083012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009232, 25.838152, 50.038467>,  <30.633575, 25.722521, 49.964226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009232, 25.838152, 50.038467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107398, -0.760264, 0.640675,
		0.326314, -0.581750, -0.745041,
		0.939140, 0.289077, 0.185605,
		31.290974, 25.924875, 50.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173918, 25.281319, 49.889252>,  <30.633575, 25.722521, 49.964226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173918, 25.281319, 49.889252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246639, 25.532784, 50.191704>,  <31.290272, 25.683662, 50.373173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246639, 25.532784, 50.191704>,  <31.173918, 25.281319, 49.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246639, 25.532784, 50.191704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212254, -0.725727, 0.654422,
		0.960154, -0.279467, 0.001498,
		0.181802, 0.628664, 0.756128,
		31.301180, 25.721382, 50.418541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621368, 24.962523, 49.613831>,  <31.173918, 25.281319, 49.889252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621368, 24.962523, 49.613831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508869, 25.283604, 49.403473>,  <30.441370, 25.476252, 49.277256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508869, 25.283604, 49.403473>,  <30.621368, 24.962523, 49.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508869, 25.283604, 49.403473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416262, -0.595822, -0.686820,
		-0.864653, 0.025743, 0.501709,
		-0.281249, 0.802703, -0.525896,
		30.424494, 25.524414, 49.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940981, 24.775038, 49.365261>,  <30.621368, 24.962523, 49.613831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940981, 24.775038, 49.365261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134291, 25.023569, 49.118557>,  <30.250277, 25.172688, 48.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134291, 25.023569, 49.118557>,  <29.940981, 24.775038, 49.365261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134291, 25.023569, 49.118557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227466, -0.591183, -0.773797,
		-0.845402, 0.514249, -0.144373,
		0.483275, 0.621330, -0.616761,
		30.279274, 25.209969, 48.933529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495146, 24.705269, 48.739136>,  <29.940981, 24.775038, 49.365261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495146, 24.705269, 48.739136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857517, 24.838860, 48.635017>,  <30.074940, 24.919014, 48.572544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857517, 24.838860, 48.635017>,  <29.495146, 24.705269, 48.739136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857517, 24.838860, 48.635017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203894, -0.194703, -0.959436,
		-0.371112, 0.922252, -0.108291,
		0.905927, 0.333979, -0.260298,
		30.129295, 24.939053, 48.556927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248652, 25.090006, 48.174282>,  <29.495146, 24.705269, 48.739136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248652, 25.090006, 48.174282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621017, 24.946903, 48.144867>,  <29.844437, 24.861042, 48.127216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621017, 24.946903, 48.144867>,  <29.248652, 25.090006, 48.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621017, 24.946903, 48.144867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141564, -0.167819, -0.975601,
		0.336686, 0.918612, -0.206870,
		0.930915, -0.357756, -0.073540,
		29.900291, 24.839577, 48.122807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768837, 25.442865, 47.620918>,  <29.248652, 25.090006, 48.174282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768837, 25.442865, 47.620918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842247, 25.057951, 47.701241>,  <29.886293, 24.827002, 47.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842247, 25.057951, 47.701241>,  <29.768837, 25.442865, 47.620918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842247, 25.057951, 47.701241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256467, -0.244073, -0.935229,
		0.948970, 0.120136, -0.291588,
		0.183523, -0.962287, 0.200807,
		29.897305, 24.769264, 47.761482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302334, 25.056650, 47.176434>,  <29.768837, 25.442865, 47.620918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302334, 25.056650, 47.176434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006226, 24.836172, 47.330414>,  <29.828562, 24.703884, 47.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006226, 24.836172, 47.330414>,  <30.302334, 25.056650, 47.176434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006226, 24.836172, 47.330414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426962, -0.056860, -0.902480,
		0.519332, -0.832436, -0.193248,
		-0.740268, -0.551197, 0.384948,
		29.784145, 24.670813, 47.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512104, 24.609468, 46.516033>,  <30.302334, 25.056650, 47.176434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512104, 24.609468, 46.516033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700127, 24.758699, 46.835999>,  <30.812941, 24.848238, 47.027977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700127, 24.758699, 46.835999>,  <30.512104, 24.609468, 46.516033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700127, 24.758699, 46.835999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479960, 0.652531, -0.586380,
		-0.740731, 0.659559, 0.127666,
		0.470059, 0.373076, 0.799912,
		30.841145, 24.870623, 47.075974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518089, 25.334362, 46.468327>,  <30.512104, 24.609468, 46.516033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518089, 25.334362, 46.468327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810526, 25.257969, 46.730328>,  <30.985987, 25.212133, 46.887527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810526, 25.257969, 46.730328>,  <30.518089, 25.334362, 46.468327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810526, 25.257969, 46.730328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633513, 0.546452, -0.547769,
		-0.253314, 0.815423, 0.520497,
		0.731090, -0.190984, 0.655006,
		31.029854, 25.200674, 46.926830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933640, 25.899403, 46.348682>,  <30.518089, 25.334362, 46.468327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933640, 25.899403, 46.348682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193855, 25.687416, 46.566280>,  <31.349985, 25.560225, 46.696838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193855, 25.687416, 46.566280>,  <30.933640, 25.899403, 46.348682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193855, 25.687416, 46.566280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755290, 0.526521, -0.390272,
		-0.079595, 0.664763, 0.742802,
		0.650539, -0.529968, 0.543997,
		31.389017, 25.528425, 46.729481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455605, 26.345053, 46.721008>,  <30.933640, 25.899403, 46.348682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455605, 26.345053, 46.721008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608389, 25.978994, 46.669449>,  <31.700060, 25.759359, 46.638515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608389, 25.978994, 46.669449>,  <31.455605, 26.345053, 46.721008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608389, 25.978994, 46.669449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748996, 0.388238, -0.536914,
		0.541396, 0.108540, 0.833732,
		0.381963, -0.915145, -0.128895,
		31.722979, 25.704451, 46.630779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178276, 26.506763, 46.735508>,  <31.455605, 26.345053, 46.721008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178276, 26.506763, 46.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137127, 26.145645, 46.568474>,  <32.112438, 25.928974, 46.468254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137127, 26.145645, 46.568474>,  <32.178276, 26.506763, 46.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137127, 26.145645, 46.568474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781622, 0.186278, -0.595287,
		0.615210, -0.387633, 0.686482,
		-0.102877, -0.902796, -0.417583,
		32.106262, 25.874805, 46.443199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820576, 26.412806, 46.657364>,  <32.178276, 26.506763, 46.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820576, 26.412806, 46.657364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647141, 26.144480, 46.416695>,  <32.543079, 25.983484, 46.272293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647141, 26.144480, 46.416695>,  <32.820576, 26.412806, 46.657364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647141, 26.144480, 46.416695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683508, 0.190274, -0.704707,
		0.587210, -0.716800, 0.376007,
		-0.433590, -0.670815, -0.601670,
		32.517063, 25.943235, 46.236195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388283, 26.049414, 46.365177>,  <32.820576, 26.412806, 46.657364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388283, 26.049414, 46.365177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078358, 25.988943, 46.119637>,  <32.892403, 25.952662, 45.972313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078358, 25.988943, 46.119637>,  <33.388283, 26.049414, 46.365177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078358, 25.988943, 46.119637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547955, 0.323667, -0.771353,
		0.315292, -0.934016, -0.167944,
		-0.774813, -0.151176, -0.613848,
		32.845913, 25.943590, 45.935482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606281, 25.564445, 45.960266>,  <33.388283, 26.049414, 46.365177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606281, 25.564445, 45.960266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322464, 25.754967, 45.752544>,  <33.152172, 25.869280, 45.627911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322464, 25.754967, 45.752544>,  <33.606281, 25.564445, 45.960266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322464, 25.754967, 45.752544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658678, 0.186469, -0.728953,
		-0.250371, -0.859280, -0.446041,
		-0.709547, 0.476306, -0.519303,
		33.109600, 25.897858, 45.596752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668083, 25.398695, 45.212391>,  <33.606281, 25.564445, 45.960266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668083, 25.398695, 45.212391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394493, 25.681059, 45.138767>,  <33.230339, 25.850477, 45.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394493, 25.681059, 45.138767>,  <33.668083, 25.398695, 45.212391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394493, 25.681059, 45.138767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583219, 0.377562, -0.719237,
		-0.438223, -0.599283, -0.669940,
		-0.683971, 0.705909, -0.184056,
		33.189301, 25.892832, 45.083549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547569, 25.463091, 44.487450>,  <33.668083, 25.398695, 45.212391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547569, 25.463091, 44.487450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454300, 25.808167, 44.666958>,  <33.398338, 26.015211, 44.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454300, 25.808167, 44.666958>,  <33.547569, 25.463091, 44.487450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454300, 25.808167, 44.666958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529634, 0.499705, -0.685407,
		-0.815547, 0.077865, -0.573429,
		-0.233176, 0.862688, 0.448773,
		33.384346, 26.066973, 44.801590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313225, 25.912664, 43.923260>,  <33.547569, 25.463091, 44.487450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313225, 25.912664, 43.923260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398357, 26.157564, 44.227852>,  <33.449436, 26.304504, 44.410606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398357, 26.157564, 44.227852>,  <33.313225, 25.912664, 43.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398357, 26.157564, 44.227852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481020, 0.612701, -0.627071,
		-0.850484, 0.499747, -0.164104,
		0.212830, 0.612251, 0.761481,
		33.462208, 26.341240, 44.456295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094212, 26.621206, 43.709332>,  <33.313225, 25.912664, 43.923260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094212, 26.621206, 43.709332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360836, 26.681656, 44.001320>,  <33.520809, 26.717926, 44.176514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360836, 26.681656, 44.001320>,  <33.094212, 26.621206, 43.709332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360836, 26.681656, 44.001320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389507, 0.764321, -0.513904,
		-0.635599, 0.626877, 0.450599,
		0.666557, 0.151126, 0.729975,
		33.560802, 26.726994, 44.220314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109402, 27.291250, 43.812897>,  <33.094212, 26.621206, 43.709332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109402, 27.291250, 43.812897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472984, 27.200457, 43.952766>,  <33.691135, 27.145981, 44.036690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472984, 27.200457, 43.952766>,  <33.109402, 27.291250, 43.812897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472984, 27.200457, 43.952766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388771, 0.764339, -0.514435,
		-0.150503, 0.603544, 0.782997,
		0.908959, -0.226983, 0.349676,
		33.745670, 27.132362, 44.057671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319927, 27.815630, 44.178722>,  <33.109402, 27.291250, 43.812897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319927, 27.815630, 44.178722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669735, 27.656713, 44.067463>,  <33.879620, 27.561363, 44.000706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669735, 27.656713, 44.067463>,  <33.319927, 27.815630, 44.178722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669735, 27.656713, 44.067463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216630, 0.833130, -0.508887,
		0.433915, 0.384777, 0.814656,
		0.874522, -0.397293, -0.278153,
		33.932091, 27.537525, 43.984016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747089, 28.381996, 44.193184>,  <33.319927, 27.815630, 44.178722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747089, 28.381996, 44.193184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900791, 28.111237, 43.942059>,  <33.993011, 27.948780, 43.791382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900791, 28.111237, 43.942059>,  <33.747089, 28.381996, 44.193184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900791, 28.111237, 43.942059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250551, 0.730961, -0.634760,
		0.888577, 0.086612, 0.450476,
		0.384258, -0.676900, -0.627815,
		34.016068, 27.908167, 43.753716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459522, 28.606833, 43.977970>,  <33.747089, 28.381996, 44.193184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459522, 28.606833, 43.977970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280762, 28.392498, 43.691429>,  <34.173504, 28.263897, 43.519505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280762, 28.392498, 43.691429>,  <34.459522, 28.606833, 43.977970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280762, 28.392498, 43.691429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275598, 0.679351, -0.680094,
		0.851073, -0.501360, -0.155928,
		-0.446902, -0.535836, -0.716351,
		34.146690, 28.231747, 43.476524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934757, 28.747536, 43.517685>,  <34.459522, 28.606833, 43.977970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934757, 28.747536, 43.517685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619469, 28.578247, 43.338985>,  <34.430294, 28.476673, 43.231766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619469, 28.578247, 43.338985>,  <34.934757, 28.747536, 43.517685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619469, 28.578247, 43.338985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003009, 0.723307, -0.690520,
		0.615381, -0.545628, -0.568854,
		-0.788224, -0.423222, -0.446751,
		34.383003, 28.451281, 43.204960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138412, 28.704813, 42.850098>,  <34.934757, 28.747536, 43.517685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138412, 28.704813, 42.850098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738712, 28.702349, 42.865353>,  <34.498890, 28.700871, 42.874508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738712, 28.702349, 42.865353>,  <35.138412, 28.704813, 42.850098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738712, 28.702349, 42.865353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034849, 0.569971, -0.820925,
		-0.016682, -0.821642, -0.569760,
		-0.999253, -0.006161, 0.038141,
		34.438938, 28.700500, 42.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041161, 28.720457, 42.139854>,  <35.138412, 28.704813, 42.850098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041161, 28.720457, 42.139854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698956, 28.819035, 42.321999>,  <34.493633, 28.878181, 42.431286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698956, 28.819035, 42.321999>,  <35.041161, 28.720457, 42.139854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698956, 28.819035, 42.321999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296730, 0.487354, -0.821241,
		-0.424314, -0.837706, -0.343812,
		-0.855517, 0.246445, 0.455363,
		34.442299, 28.892967, 42.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494904, 28.548428, 41.659187>,  <35.041161, 28.720457, 42.139854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494904, 28.548428, 41.659187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363388, 28.844215, 41.894161>,  <34.284477, 29.021688, 42.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363388, 28.844215, 41.894161>,  <34.494904, 28.548428, 41.659187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363388, 28.844215, 41.894161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322879, 0.496523, -0.805738,
		-0.887494, -0.454591, 0.075506,
		-0.328790, 0.739468, 0.587439,
		34.264751, 29.066055, 42.070393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817444, 28.711592, 41.438095>,  <34.494904, 28.548428, 41.659187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817444, 28.711592, 41.438095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929558, 29.030867, 41.651390>,  <33.996826, 29.222431, 41.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929558, 29.030867, 41.651390>,  <33.817444, 28.711592, 41.438095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929558, 29.030867, 41.651390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493859, 0.596248, -0.632923,
		-0.823131, -0.085946, 0.561309,
		0.280282, 0.798186, 0.533236,
		34.013641, 29.270323, 41.811359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280079, 29.213528, 41.329819>,  <33.817444, 28.711592, 41.438095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280079, 29.213528, 41.329819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628410, 29.384590, 41.426785>,  <33.837410, 29.487228, 41.484966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628410, 29.384590, 41.426785>,  <33.280079, 29.213528, 41.329819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628410, 29.384590, 41.426785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180260, 0.736580, -0.651886,
		-0.457343, 0.523984, 0.718525,
		0.870830, 0.427657, 0.242417,
		33.889660, 29.512888, 41.499508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126556, 29.875484, 41.657631>,  <33.280079, 29.213528, 41.329819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126556, 29.875484, 41.657631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503304, 29.888388, 41.523853>,  <33.729351, 29.896130, 41.443588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503304, 29.888388, 41.523853>,  <33.126556, 29.875484, 41.657631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503304, 29.888388, 41.523853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274406, 0.648244, -0.710269,
		0.193889, 0.760750, 0.619409,
		0.941864, 0.032256, -0.334442,
		33.785862, 29.898064, 41.423519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228214, 30.612324, 41.548183>,  <33.126556, 29.875484, 41.657631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228214, 30.612324, 41.548183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498096, 30.402428, 41.340561>,  <33.660027, 30.276489, 41.215988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498096, 30.402428, 41.340561>,  <33.228214, 30.612324, 41.548183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498096, 30.402428, 41.340561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004471, 0.706136, -0.708062,
		0.738071, 0.475415, 0.478783,
		0.674709, -0.524740, -0.519053,
		33.700508, 30.245005, 41.184845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652138, 31.149067, 41.399811>,  <33.228214, 30.612324, 41.548183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652138, 31.149067, 41.399811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737202, 30.854795, 41.142578>,  <33.788242, 30.678232, 40.988239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737202, 30.854795, 41.142578>,  <33.652138, 31.149067, 41.399811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737202, 30.854795, 41.142578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051069, 0.665601, -0.744558,
		0.975790, 0.125498, 0.179119,
		0.212662, -0.735680, -0.643078,
		33.800999, 30.634092, 40.949654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179413, 31.417208, 40.965591>,  <33.652138, 31.149067, 41.399811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179413, 31.417208, 40.965591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040054, 31.108885, 40.752247>,  <33.956440, 30.923891, 40.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040054, 31.108885, 40.752247>,  <34.179413, 31.417208, 40.965591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040054, 31.108885, 40.752247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004048, 0.570243, -0.821466,
		0.937339, -0.284036, -0.201790,
		-0.348396, -0.770809, -0.533361,
		33.935535, 30.877642, 40.592239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440632, 31.532597, 40.322491>,  <34.179413, 31.417208, 40.965591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440632, 31.532597, 40.322491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154583, 31.260406, 40.258541>,  <33.982956, 31.097094, 40.220173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154583, 31.260406, 40.258541>,  <34.440632, 31.532597, 40.322491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154583, 31.260406, 40.258541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240664, 0.454419, -0.857662,
		0.656264, -0.574857, -0.488730,
		-0.715121, -0.680473, -0.159871,
		33.940048, 31.056265, 40.210579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562847, 31.164408, 39.571468>,  <34.440632, 31.532597, 40.322491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562847, 31.164408, 39.571468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175510, 31.113844, 39.657562>,  <33.943108, 31.083506, 39.709217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175510, 31.113844, 39.657562>,  <34.562847, 31.164408, 39.571468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175510, 31.113844, 39.657562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244520, 0.307097, -0.919729,
		0.050164, -0.943245, -0.328286,
		-0.968346, -0.126410, 0.215237,
		33.885006, 31.075920, 39.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171608, 30.740210, 38.975010>,  <34.562847, 31.164408, 39.571468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171608, 30.740210, 38.975010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884640, 30.928364, 39.180553>,  <33.712460, 31.041256, 39.303879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884640, 30.928364, 39.180553>,  <34.171608, 30.740210, 38.975010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884640, 30.928364, 39.180553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515249, 0.138164, -0.845830,
		-0.468863, -0.871578, 0.143244,
		-0.717416, 0.470385, 0.513860,
		33.669415, 31.069479, 39.334713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559685, 30.377325, 38.800854>,  <34.171608, 30.740210, 38.975010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559685, 30.377325, 38.800854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454422, 30.738480, 38.936821>,  <33.391266, 30.955173, 39.018402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454422, 30.738480, 38.936821>,  <33.559685, 30.377325, 38.800854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454422, 30.738480, 38.936821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520993, 0.163548, -0.837746,
		-0.811983, -0.397551, 0.427360,
		-0.263153, 0.902887, 0.339919,
		33.375477, 31.009346, 39.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896267, 30.384914, 38.587929>,  <33.559685, 30.377325, 38.800854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896267, 30.384914, 38.587929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945419, 30.766735, 38.696545>,  <32.974911, 30.995827, 38.761715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945419, 30.766735, 38.696545>,  <32.896267, 30.384914, 38.587929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945419, 30.766735, 38.696545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505126, 0.295677, -0.810816,
		-0.854253, -0.037525, 0.518502,
		0.122883, 0.954551, 0.271538,
		32.982285, 31.053101, 38.778008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247040, 30.730742, 38.595646>,  <32.896267, 30.384914, 38.587929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247040, 30.730742, 38.595646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523430, 31.017103, 38.555576>,  <32.689262, 31.188921, 38.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523430, 31.017103, 38.555576>,  <32.247040, 30.730742, 38.595646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523430, 31.017103, 38.555576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409501, 0.273449, -0.870365,
		-0.595706, 0.642421, 0.482110,
		0.690973, 0.715905, -0.100177,
		32.730721, 31.231874, 38.525524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854458, 31.365814, 38.245167>,  <32.247040, 30.730742, 38.595646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854458, 31.365814, 38.245167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246052, 31.436182, 38.203903>,  <32.481007, 31.478403, 38.179146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246052, 31.436182, 38.203903>,  <31.854458, 31.365814, 38.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246052, 31.436182, 38.203903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151184, 0.286543, -0.946064,
		-0.136870, 0.941778, 0.307117,
		0.978984, 0.175919, -0.103162,
		32.539745, 31.488958, 38.172955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923317, 32.043118, 37.981289>,  <31.854458, 31.365814, 38.245167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923317, 32.043118, 37.981289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246407, 31.830462, 37.879349>,  <32.440262, 31.702869, 37.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246407, 31.830462, 37.879349>,  <31.923317, 32.043118, 37.981289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246407, 31.830462, 37.879349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111729, 0.286398, -0.951574,
		0.578879, 0.797082, 0.171931,
		0.807723, -0.531636, -0.254847,
		32.488724, 31.670971, 37.802895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349903, 32.509171, 37.509609>,  <31.923317, 32.043118, 37.981289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349903, 32.509171, 37.509609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464237, 32.130829, 37.448082>,  <32.532837, 31.903824, 37.411167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464237, 32.130829, 37.448082>,  <32.349903, 32.509171, 37.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464237, 32.130829, 37.448082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043959, 0.173287, -0.983890,
		0.957269, 0.274472, 0.091111,
		0.285838, -0.945852, -0.153817,
		32.549988, 31.847073, 37.401936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878517, 32.585812, 36.927761>,  <32.349903, 32.509171, 37.509609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878517, 32.585812, 36.927761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730061, 32.214397, 36.924423>,  <32.640987, 31.991549, 36.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730061, 32.214397, 36.924423>,  <32.878517, 32.585812, 36.927761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730061, 32.214397, 36.924423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252578, -0.092297, -0.963165,
		0.893565, -0.359579, 0.268784,
		-0.371142, -0.928539, -0.008348,
		32.618717, 31.935835, 36.921921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397785, 32.295135, 36.493538>,  <32.878517, 32.585812, 36.927761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397785, 32.295135, 36.493538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110668, 32.016743, 36.501259>,  <32.938396, 31.849707, 36.505890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110668, 32.016743, 36.501259>,  <33.397785, 32.295135, 36.493538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110668, 32.016743, 36.501259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113539, -0.144354, -0.982991,
		0.686933, -0.703396, 0.182638,
		-0.717796, -0.695985, 0.019298,
		32.895329, 31.807947, 36.507050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637524, 31.741676, 36.066067>,  <33.397785, 32.295135, 36.493538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637524, 31.741676, 36.066067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240879, 31.690350, 36.072346>,  <33.002892, 31.659554, 36.076115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240879, 31.690350, 36.072346>,  <33.637524, 31.741676, 36.066067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240879, 31.690350, 36.072346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004317, -0.088517, -0.996065,
		0.129204, -0.987775, 0.087220,
		-0.991609, -0.128319, 0.015701,
		32.943398, 31.651854, 36.077057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514244, 31.289070, 35.486034>,  <33.637524, 31.741676, 36.066067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514244, 31.289070, 35.486034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156796, 31.450024, 35.565567>,  <32.942326, 31.546597, 35.613285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156796, 31.450024, 35.565567>,  <33.514244, 31.289070, 35.486034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156796, 31.450024, 35.565567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237981, -0.049187, -0.970024,
		-0.380542, -0.914149, 0.139714,
		-0.893618, 0.402384, 0.198833,
		32.888710, 31.570740, 35.625217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661293, 30.492455, 35.499599>,  <33.514244, 31.289070, 35.486034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661293, 30.492455, 35.499599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002628, 30.661943, 35.378094>,  <34.207428, 30.763638, 35.305191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002628, 30.661943, 35.378094>,  <33.661293, 30.492455, 35.499599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002628, 30.661943, 35.378094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521194, -0.678750, 0.517354,
		0.013035, -0.599798, -0.800045,
		0.853339, 0.423723, -0.303763,
		34.258629, 30.789061, 35.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081554, 29.919420, 35.301540>,  <33.661293, 30.492455, 35.499599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081554, 29.919420, 35.301540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306858, 30.238825, 35.386505>,  <34.442039, 30.430468, 35.437485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306858, 30.238825, 35.386505>,  <34.081554, 29.919420, 35.301540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306858, 30.238825, 35.386505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710036, -0.599226, 0.369833,
		0.422600, -0.057490, -0.904491,
		0.563256, 0.798513, 0.212413,
		34.475834, 30.478378, 35.450230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771446, 29.835287, 35.031174>,  <34.081554, 29.919420, 35.301540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771446, 29.835287, 35.031174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800632, 30.110884, 35.319607>,  <34.818146, 30.276241, 35.492668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800632, 30.110884, 35.319607>,  <34.771446, 29.835287, 35.031174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800632, 30.110884, 35.319607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732485, -0.527709, 0.430103,
		0.676861, 0.496801, -0.543183,
		0.072968, 0.688993, 0.721085,
		34.822521, 30.317581, 35.535931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534210, 29.975431, 35.154583>,  <34.771446, 29.835287, 35.031174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534210, 29.975431, 35.154583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336380, 30.073833, 35.488022>,  <35.217682, 30.132875, 35.688084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336380, 30.073833, 35.488022>,  <35.534210, 29.975431, 35.154583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336380, 30.073833, 35.488022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705407, -0.446680, 0.550343,
		0.507737, 0.860208, 0.047381,
		-0.494574, 0.246007, 0.833593,
		35.188007, 30.147635, 35.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978104, 30.287689, 35.545242>,  <35.534210, 29.975431, 35.154583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978104, 30.287689, 35.545242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710995, 30.149786, 35.809124>,  <35.550728, 30.067043, 35.967453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710995, 30.149786, 35.809124>,  <35.978104, 30.287689, 35.545242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710995, 30.149786, 35.809124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738874, -0.199593, 0.643605,
		-0.090215, 0.917227, 0.388016,
		-0.667777, -0.344758, 0.659709,
		35.510662, 30.046358, 36.007038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196186, 30.641495, 36.140491>,  <35.978104, 30.287689, 35.545242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196186, 30.641495, 36.140491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977913, 30.328047, 36.259270>,  <35.846951, 30.139978, 36.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977913, 30.328047, 36.259270>,  <36.196186, 30.641495, 36.140491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977913, 30.328047, 36.259270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646844, -0.168596, 0.743753,
		-0.532754, 0.597928, 0.598878,
		-0.545679, -0.783618, 0.296946,
		35.814209, 30.092962, 36.348354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253334, 30.653305, 36.851326>,  <36.196186, 30.641495, 36.140491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253334, 30.653305, 36.851326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099060, 30.287888, 36.799648>,  <36.006496, 30.068638, 36.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099060, 30.287888, 36.799648>,  <36.253334, 30.653305, 36.851326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099060, 30.287888, 36.799648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537282, -0.336218, 0.773489,
		-0.750051, 0.228910, 0.620503,
		-0.385683, -0.913541, -0.129191,
		35.983356, 30.013824, 36.760891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963394, 30.412655, 37.538750>,  <36.253334, 30.653305, 36.851326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963394, 30.412655, 37.538750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043903, 30.086790, 37.321194>,  <36.092209, 29.891272, 37.190659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043903, 30.086790, 37.321194>,  <35.963394, 30.412655, 37.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043903, 30.086790, 37.321194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403787, -0.436878, 0.803800,
		-0.892438, -0.381400, 0.241017,
		0.201274, -0.814661, -0.543890,
		36.104286, 29.842392, 37.158028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838661, 29.939686, 38.038754>,  <35.963394, 30.412655, 37.538750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838661, 29.939686, 38.038754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050098, 29.787996, 37.734970>,  <36.176960, 29.696981, 37.552700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050098, 29.787996, 37.734970>,  <35.838661, 29.939686, 38.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050098, 29.787996, 37.734970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581023, -0.490618, 0.649389,
		-0.618868, -0.784526, -0.039000,
		0.528597, -0.379226, -0.759456,
		36.208679, 29.674229, 37.507133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824429, 29.169441, 38.088745>,  <35.838661, 29.939686, 38.038754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824429, 29.169441, 38.088745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139851, 29.260361, 37.860176>,  <36.329102, 29.314913, 37.723034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139851, 29.260361, 37.860176>,  <35.824429, 29.169441, 38.088745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139851, 29.260361, 37.860176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582235, -0.575049, 0.574735,
		-0.197957, -0.785909, -0.585799,
		0.788553, 0.227300, -0.571419,
		36.376415, 29.328550, 37.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207470, 28.561396, 38.108345>,  <35.824429, 29.169441, 38.088745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207470, 28.561396, 38.108345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477287, 28.823933, 37.973164>,  <36.639175, 28.981455, 37.892056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477287, 28.823933, 37.973164>,  <36.207470, 28.561396, 38.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477287, 28.823933, 37.973164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681637, -0.377940, 0.626524,
		0.283490, -0.652975, -0.702323,
		0.674541, 0.656342, -0.337949,
		36.679649, 29.020836, 37.871780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919102, 28.167631, 37.911316>,  <36.207470, 28.561396, 38.108345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919102, 28.167631, 37.911316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981415, 28.552778, 37.999516>,  <37.018803, 28.783867, 38.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981415, 28.552778, 37.999516>,  <36.919102, 28.167631, 37.911316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981415, 28.552778, 37.999516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811105, -0.252090, 0.527786,
		0.563773, 0.096627, -0.820258,
		0.155780, 0.962867, 0.220497,
		37.028149, 28.841639, 38.065666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630222, 28.275045, 37.684296>,  <36.919102, 28.167631, 37.911316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630222, 28.275045, 37.684296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515392, 28.561901, 37.938316>,  <37.446495, 28.734015, 38.090729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515392, 28.561901, 37.938316>,  <37.630222, 28.275045, 37.684296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515392, 28.561901, 37.938316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765676, -0.226582, 0.601997,
		0.575609, 0.659068, -0.484050,
		-0.287080, 0.717140, 0.635055,
		37.429268, 28.777042, 38.128834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395405, 27.846296, 38.420605>,  <37.630222, 28.275045, 37.684296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395405, 27.846296, 38.420605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552280, 28.122669, 38.663521>,  <37.646404, 28.288494, 38.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552280, 28.122669, 38.663521>,  <37.395405, 27.846296, 38.420605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552280, 28.122669, 38.663521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009598, -0.657068, 0.753770,
		0.919835, -0.301448, -0.251062,
		0.392188, 0.690935, 0.607288,
		37.669937, 28.329950, 38.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887447, 27.474987, 38.843872>,  <37.395405, 27.846296, 38.420605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887447, 27.474987, 38.843872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797356, 27.809734, 39.043442>,  <37.743301, 28.010584, 39.163181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797356, 27.809734, 39.043442>,  <37.887447, 27.474987, 38.843872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797356, 27.809734, 39.043442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007695, -0.510533, 0.859824,
		0.974276, 0.197496, 0.108546,
		-0.225228, 0.836870, 0.498920,
		37.729786, 28.060795, 39.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218544, 27.516291, 39.500195>,  <37.887447, 27.474987, 38.843872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218544, 27.516291, 39.500195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897186, 27.750322, 39.544468>,  <37.704372, 27.890741, 39.571030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897186, 27.750322, 39.544468>,  <38.218544, 27.516291, 39.500195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897186, 27.750322, 39.544468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259239, -0.511004, 0.819555,
		0.536060, 0.629729, 0.562210,
		-0.803390, 0.585077, 0.110679,
		37.656170, 27.925846, 39.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238533, 27.933235, 40.179222>,  <38.218544, 27.516291, 39.500195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238533, 27.933235, 40.179222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852211, 27.892235, 40.083965>,  <37.620419, 27.867636, 40.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852211, 27.892235, 40.083965>,  <38.238533, 27.933235, 40.179222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852211, 27.892235, 40.083965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208976, -0.235883, 0.949046,
		-0.153450, 0.966361, 0.206397,
		-0.965806, -0.102499, -0.238142,
		37.562469, 27.861485, 40.012524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983597, 28.079256, 40.743019>,  <38.238533, 27.933235, 40.179222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983597, 28.079256, 40.743019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675945, 27.906221, 40.554848>,  <37.491352, 27.802401, 40.441944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675945, 27.906221, 40.554848>,  <37.983597, 28.079256, 40.743019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675945, 27.906221, 40.554848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467819, -0.120412, 0.875584,
		-0.435413, 0.893515, -0.109761,
		-0.769130, -0.432588, -0.470431,
		37.445206, 27.776445, 40.413719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372280, 28.348246, 41.091000>,  <37.983597, 28.079256, 40.743019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372280, 28.348246, 41.091000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229237, 28.046484, 40.870819>,  <37.143410, 27.865427, 40.738712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229237, 28.046484, 40.870819>,  <37.372280, 28.348246, 41.091000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229237, 28.046484, 40.870819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618986, -0.249875, 0.744593,
		-0.699267, 0.606990, -0.377609,
		-0.357606, -0.754404, -0.550448,
		37.121956, 27.820164, 40.705685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708523, 28.303078, 41.165394>,  <37.372280, 28.348246, 41.091000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708523, 28.303078, 41.165394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797352, 27.921631, 41.084103>,  <36.850651, 27.692762, 41.035328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797352, 27.921631, 41.084103>,  <36.708523, 28.303078, 41.165394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797352, 27.921631, 41.084103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537668, -0.293645, 0.790370,
		-0.813386, -0.066251, -0.577939,
		0.222072, -0.953616, -0.203226,
		36.863972, 27.635546, 41.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050224, 27.864622, 41.133099>,  <36.708523, 28.303078, 41.165394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050224, 27.864622, 41.133099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331638, 27.583832, 41.177395>,  <36.500488, 27.415358, 41.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331638, 27.583832, 41.177395>,  <36.050224, 27.864622, 41.133099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331638, 27.583832, 41.177395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607080, -0.512649, 0.607161,
		-0.369441, -0.494390, -0.786824,
		0.703539, -0.701975, 0.110741,
		36.542702, 27.373240, 41.210617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659096, 27.255459, 41.266033>,  <36.050224, 27.864622, 41.133099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659096, 27.255459, 41.266033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035847, 27.171282, 41.370792>,  <36.261898, 27.120775, 41.433647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035847, 27.171282, 41.370792>,  <35.659096, 27.255459, 41.266033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035847, 27.171282, 41.370792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333519, -0.491707, 0.804357,
		-0.040495, -0.844949, -0.533312,
		0.941873, -0.210442, 0.261895,
		36.318409, 27.108149, 41.449360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641552, 26.658020, 41.426598>,  <35.659096, 27.255459, 41.266033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641552, 26.658020, 41.426598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951866, 26.801029, 41.634575>,  <36.138054, 26.886835, 41.759361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951866, 26.801029, 41.634575>,  <35.641552, 26.658020, 41.426598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951866, 26.801029, 41.634575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310733, -0.500701, 0.807926,
		0.549189, -0.788337, -0.277340,
		0.775782, 0.357525, 0.519941,
		36.184601, 26.908287, 41.790558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847584, 26.128126, 41.966785>,  <35.641552, 26.658020, 41.426598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847584, 26.128126, 41.966785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053383, 26.440683, 42.108047>,  <36.176861, 26.628218, 42.192806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053383, 26.440683, 42.108047>,  <35.847584, 26.128126, 41.966785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053383, 26.440683, 42.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157843, -0.318510, 0.934685,
		0.842840, -0.536636, -0.040536,
		0.514497, 0.781392, 0.353157,
		36.207733, 26.675100, 42.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371635, 25.860212, 42.455482>,  <35.847584, 26.128126, 41.966785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371635, 25.860212, 42.455482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 26.243298, 42.548325>,  <36.262802, 26.473148, 42.604031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 26.243298, 42.548325>,  <36.371635, 25.860212, 42.455482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303616, 26.243298, 42.548325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199032, -0.264057, 0.943748,
		0.965126, 0.114291, 0.235519,
		-0.170052, 0.957712, 0.232101,
		36.252602, 26.530611, 42.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620693, 25.946356, 43.172493>,  <36.371635, 25.860212, 42.455482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620693, 25.946356, 43.172493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402451, 26.276300, 43.113281>,  <36.271503, 26.474268, 43.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402451, 26.276300, 43.113281>,  <36.620693, 25.946356, 43.172493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402451, 26.276300, 43.113281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163572, 0.068417, 0.984156,
		0.821921, 0.561178, 0.097596,
		-0.545609, 0.824863, -0.148026,
		36.238770, 26.523760, 43.068874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799049, 26.410105, 43.574753>,  <36.620693, 25.946356, 43.172493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799049, 26.410105, 43.574753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437908, 26.574234, 43.523399>,  <36.221222, 26.672712, 43.492588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437908, 26.574234, 43.523399>,  <36.799049, 26.410105, 43.574753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437908, 26.574234, 43.523399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109078, 0.070237, 0.991549,
		0.415875, 0.909231, -0.018657,
		-0.902857, 0.410325, -0.128387,
		36.167049, 26.697332, 43.484882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759064, 27.061556, 44.016914>,  <36.799049, 26.410105, 43.574753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759064, 27.061556, 44.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371117, 26.993198, 43.947468>,  <36.138348, 26.952185, 43.905800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371117, 26.993198, 43.947468>,  <36.759064, 27.061556, 44.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371117, 26.993198, 43.947468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199737, 0.149796, 0.968332,
		-0.139475, 0.973836, -0.179417,
		-0.969872, -0.170894, -0.173619,
		36.080154, 26.941931, 43.895382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353661, 27.732285, 44.276512>,  <36.759064, 27.061556, 44.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353661, 27.732285, 44.276512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127682, 27.402470, 44.264065>,  <35.992096, 27.204580, 44.256596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127682, 27.402470, 44.264065>,  <36.353661, 27.732285, 44.276512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127682, 27.402470, 44.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290716, 0.163612, 0.942717,
		-0.772216, 0.541633, -0.332139,
		-0.564949, -0.824539, -0.031118,
		35.958199, 27.155107, 44.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806774, 27.969303, 44.625729>,  <36.353661, 27.732285, 44.276512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806774, 27.969303, 44.625729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760742, 27.572227, 44.611179>,  <35.733124, 27.333982, 44.602451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760742, 27.572227, 44.611179>,  <35.806774, 27.969303, 44.625729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760742, 27.572227, 44.611179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208649, -0.011645, 0.977921,
		-0.971197, 0.120126, -0.205783,
		-0.115078, -0.992690, -0.036374,
		35.726219, 27.274420, 44.600266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255787, 27.807028, 45.074173>,  <35.806774, 27.969303, 44.625729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255787, 27.807028, 45.074173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478241, 27.476347, 45.040051>,  <35.611713, 27.277939, 45.019577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478241, 27.476347, 45.040051>,  <35.255787, 27.807028, 45.074173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478241, 27.476347, 45.040051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036651, -0.078146, 0.996268,
		-0.830283, -0.557187, -0.013161,
		0.556136, -0.826702, -0.085305,
		35.645081, 27.228336, 45.014458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920818, 27.388893, 45.546131>,  <35.255787, 27.807028, 45.074173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920818, 27.388893, 45.546131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280487, 27.226297, 45.481312>,  <35.496288, 27.128740, 45.442421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280487, 27.226297, 45.481312>,  <34.920818, 27.388893, 45.546131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280487, 27.226297, 45.481312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048320, -0.275812, 0.959996,
		-0.434924, -0.871030, -0.228360,
		0.899170, -0.406491, -0.162045,
		35.550240, 27.104351, 45.432697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896774, 26.761711, 45.854214>,  <34.920818, 27.388893, 45.546131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896774, 26.761711, 45.854214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289448, 26.825333, 45.812263>,  <35.525051, 26.863506, 45.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289448, 26.825333, 45.812263>,  <34.896774, 26.761711, 45.854214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289448, 26.825333, 45.812263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157465, -0.367472, 0.916607,
		0.107250, -0.916333, -0.385786,
		0.981683, 0.159054, -0.104879,
		35.583954, 26.873049, 45.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308197, 26.063091, 46.003853>,  <34.896774, 26.761711, 45.854214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308197, 26.063091, 46.003853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563595, 26.367706, 46.048374>,  <35.716835, 26.550474, 46.075085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563595, 26.367706, 46.048374>,  <35.308197, 26.063091, 46.003853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563595, 26.367706, 46.048374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267287, -0.355027, 0.895831,
		0.721721, -0.542235, -0.430232,
		0.638495, 0.761536, 0.111299,
		35.755142, 26.596167, 46.081764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865753, 25.726233, 46.380325>,  <35.308197, 26.063091, 46.003853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865753, 25.726233, 46.380325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917206, 26.121620, 46.412285>,  <35.948078, 26.358852, 46.431461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917206, 26.121620, 46.412285>,  <35.865753, 25.726233, 46.380325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917206, 26.121620, 46.412285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315995, -0.117222, 0.941492,
		0.940001, -0.095856, -0.327429,
		0.128630, 0.988469, 0.079898,
		35.955795, 26.418161, 46.436253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510075, 25.801479, 46.567463>,  <35.865753, 25.726233, 46.380325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510075, 25.801479, 46.567463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389740, 26.151676, 46.718735>,  <36.317539, 26.361794, 46.809498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389740, 26.151676, 46.718735>,  <36.510075, 25.801479, 46.567463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389740, 26.151676, 46.718735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238900, -0.314720, 0.918628,
		0.923269, 0.366700, -0.114476,
		-0.300833, 0.875490, 0.378176,
		36.299492, 26.414324, 46.832188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002216, 26.043381, 46.943787>,  <36.510075, 25.801479, 46.567463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002216, 26.043381, 46.943787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676640, 26.218819, 47.096172>,  <36.481293, 26.324081, 47.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676640, 26.218819, 47.096172>,  <37.002216, 26.043381, 46.943787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676640, 26.218819, 47.096172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224722, -0.367011, 0.902664,
		0.535721, 0.820328, 0.200164,
		-0.813943, 0.438594, 0.380962,
		36.432457, 26.350397, 47.210461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184353, 26.367792, 47.567253>,  <37.002216, 26.043381, 46.943787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184353, 26.367792, 47.567253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788651, 26.314259, 47.590771>,  <36.551228, 26.282139, 47.604881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788651, 26.314259, 47.590771>,  <37.184353, 26.367792, 47.567253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788651, 26.314259, 47.590771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090997, -0.249069, 0.964201,
		-0.114399, 0.959194, 0.258572,
		-0.989258, -0.133833, 0.058790,
		36.491875, 26.274109, 47.608406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650333, 26.892458, 47.893494>,  <37.184353, 26.367792, 47.567253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650333, 26.892458, 47.893494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544579, 26.973934, 48.270557>,  <36.481125, 27.022820, 48.496796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544579, 26.973934, 48.270557>,  <36.650333, 26.892458, 47.893494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544579, 26.973934, 48.270557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398992, 0.866769, -0.299194,
		-0.878012, -0.455217, -0.147889,
		-0.264384, 0.203689, 0.942662,
		36.465263, 27.035042, 48.553356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277931, 27.159475, 48.127575>,  <36.650333, 26.892458, 47.893494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277931, 27.159475, 48.127575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341728, 27.429644, 48.415565>,  <37.380005, 27.591743, 48.588360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341728, 27.429644, 48.415565>,  <37.277931, 27.159475, 48.127575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341728, 27.429644, 48.415565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183640, 0.696288, -0.693873,
		-0.969969, 0.242884, -0.012982,
		0.159492, 0.675419, 0.719981,
		37.389576, 27.632269, 48.631561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957760, 27.739460, 47.862431>,  <37.277931, 27.159475, 48.127575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957760, 27.739460, 47.862431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211906, 27.873499, 48.140717>,  <37.364395, 27.953922, 48.307690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211906, 27.873499, 48.140717>,  <36.957760, 27.739460, 47.862431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211906, 27.873499, 48.140717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204785, 0.795566, -0.570208,
		-0.744563, 0.504763, 0.436852,
		0.635365, 0.335096, 0.695717,
		37.402515, 27.974028, 48.349430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820793, 28.445799, 48.045643>,  <36.957760, 27.739460, 47.862431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820793, 28.445799, 48.045643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205189, 28.395807, 48.144344>,  <37.435825, 28.365812, 48.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205189, 28.395807, 48.144344>,  <36.820793, 28.445799, 48.045643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205189, 28.395807, 48.144344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243615, 0.804913, -0.541079,
		-0.130991, 0.580082, 0.803957,
		0.960985, -0.124980, 0.246753,
		37.493484, 28.358313, 48.218369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998955, 29.104486, 48.148155>,  <36.820793, 28.445799, 48.045643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998955, 29.104486, 48.148155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322258, 28.897377, 48.035988>,  <37.516239, 28.773111, 47.968689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322258, 28.897377, 48.035988>,  <36.998955, 29.104486, 48.148155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322258, 28.897377, 48.035988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234630, 0.719984, -0.653125,
		0.540063, 0.462100, 0.703417,
		0.808258, -0.517772, -0.280414,
		37.564735, 28.742046, 47.951862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337921, 29.667177, 47.808090>,  <36.998955, 29.104486, 48.148155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337921, 29.667177, 47.808090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592697, 29.366674, 47.738907>,  <37.745564, 29.186373, 47.697395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592697, 29.366674, 47.738907>,  <37.337921, 29.667177, 47.808090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592697, 29.366674, 47.738907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453107, 0.546338, -0.704421,
		0.623697, 0.370305, 0.688386,
		0.636942, -0.751258, -0.172962,
		37.783779, 29.141296, 47.687019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024403, 29.892195, 47.969116>,  <37.337921, 29.667177, 47.808090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024403, 29.892195, 47.969116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046612, 29.597244, 47.699837>,  <38.059937, 29.420275, 47.538269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046612, 29.597244, 47.699837>,  <38.024403, 29.892195, 47.969116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046612, 29.597244, 47.699837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439140, 0.623557, -0.646787,
		0.896701, -0.259716, 0.358433,
		0.055522, -0.737377, -0.673196,
		38.063267, 29.376032, 47.497879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617374, 29.909344, 47.628212>,  <38.024403, 29.892195, 47.969116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617374, 29.909344, 47.628212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411049, 29.693048, 47.362419>,  <38.287254, 29.563271, 47.202942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411049, 29.693048, 47.362419>,  <38.617374, 29.909344, 47.628212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411049, 29.693048, 47.362419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326080, 0.593327, -0.735958,
		0.792218, -0.596291, -0.129721,
		-0.515813, -0.540740, -0.664483,
		38.256306, 29.530827, 47.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073738, 29.792021, 46.987854>,  <38.617374, 29.909344, 47.628212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073738, 29.792021, 46.987854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697418, 29.722065, 46.871716>,  <38.471626, 29.680092, 46.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697418, 29.722065, 46.871716>,  <39.073738, 29.792021, 46.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697418, 29.722065, 46.871716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181550, 0.463369, -0.867369,
		0.286231, -0.868736, -0.404189,
		-0.940803, -0.174888, -0.290350,
		38.415176, 29.669598, 46.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192303, 29.766708, 46.295250>,  <39.073738, 29.792021, 46.987854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192303, 29.766708, 46.295250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794891, 29.794695, 46.331043>,  <38.556446, 29.811487, 46.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794891, 29.794695, 46.331043>,  <39.192303, 29.766708, 46.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794891, 29.794695, 46.331043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077373, 0.159877, -0.984100,
		-0.083162, -0.984654, -0.153429,
		-0.993528, 0.069968, 0.089482,
		38.496834, 29.815685, 46.357887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944191, 29.376677, 45.805927>,  <39.192303, 29.766708, 46.295250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944191, 29.376677, 45.805927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664852, 29.651419, 45.886467>,  <38.497250, 29.816263, 45.934792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664852, 29.651419, 45.886467>,  <38.944191, 29.376677, 45.805927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664852, 29.651419, 45.886467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046737, 0.236951, -0.970397,
		-0.714230, -0.687086, -0.133373,
		-0.698349, 0.686853, 0.201350,
		38.455349, 29.857475, 45.946873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305950, 29.248474, 45.383877>,  <38.944191, 29.376677, 45.805927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305950, 29.248474, 45.383877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262161, 29.626741, 45.506336>,  <38.235889, 29.853703, 45.579811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262161, 29.626741, 45.506336>,  <38.305950, 29.248474, 45.383877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262161, 29.626741, 45.506336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266762, 0.268751, -0.925533,
		-0.957525, -0.182988, 0.222848,
		-0.109471, 0.945669, 0.306150,
		38.229321, 29.910442, 45.598183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789139, 29.408100, 45.012802>,  <38.305950, 29.248474, 45.383877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789139, 29.408100, 45.012802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938370, 29.756176, 45.141541>,  <38.027908, 29.965021, 45.218784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938370, 29.756176, 45.141541>,  <37.789139, 29.408100, 45.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938370, 29.756176, 45.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048830, 0.364823, -0.929796,
		-0.926513, 0.331172, 0.178599,
		0.373080, 0.870189, 0.321842,
		38.050293, 30.017233, 45.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216526, 29.954187, 44.969105>,  <37.789139, 29.408100, 45.012802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216526, 29.954187, 44.969105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595417, 30.077597, 44.934277>,  <37.822750, 30.151642, 44.913380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595417, 30.077597, 44.934277>,  <37.216526, 29.954187, 44.969105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595417, 30.077597, 44.934277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216215, 0.414308, -0.884082,
		-0.236686, 0.856248, 0.459149,
		0.947223, 0.308525, -0.087073,
		37.879585, 30.170155, 44.908154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099350, 30.518131, 44.615604>,  <37.216526, 29.954187, 44.969105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099350, 30.518131, 44.615604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492519, 30.444601, 44.618816>,  <37.728420, 30.400482, 44.620743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492519, 30.444601, 44.618816>,  <37.099350, 30.518131, 44.615604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492519, 30.444601, 44.618816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090238, 0.443556, -0.891692,
		0.160354, 0.877192, 0.452571,
		0.982926, -0.183825, 0.008030,
		37.787395, 30.389454, 44.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356041, 31.028494, 44.267780>,  <37.099350, 30.518131, 44.615604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356041, 31.028494, 44.267780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648251, 30.756010, 44.248653>,  <37.823578, 30.592520, 44.237179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648251, 30.756010, 44.248653>,  <37.356041, 31.028494, 44.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648251, 30.756010, 44.248653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135282, 0.213002, -0.967641,
		0.669349, 0.700419, 0.247759,
		0.730527, -0.681207, -0.047818,
		37.867409, 30.551647, 44.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837421, 31.271080, 43.743191>,  <37.356041, 31.028494, 44.267780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837421, 31.271080, 43.743191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915459, 30.878767, 43.743732>,  <37.962280, 30.643379, 43.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915459, 30.878767, 43.743732>,  <37.837421, 31.271080, 43.743191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915459, 30.878767, 43.743732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116993, -0.024639, -0.992827,
		0.973782, 0.193537, -0.119552,
		0.195094, -0.980784, 0.001351,
		37.973988, 30.584532, 43.744137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362156, 31.216558, 43.212578>,  <37.837421, 31.271080, 43.743191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362156, 31.216558, 43.212578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202950, 30.854372, 43.271530>,  <38.107426, 30.637060, 43.306900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202950, 30.854372, 43.271530>,  <38.362156, 31.216558, 43.212578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202950, 30.854372, 43.271530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165847, -0.086987, -0.982307,
		0.902265, -0.415412, -0.115547,
		-0.398011, -0.905465, 0.147380,
		38.083546, 30.582733, 43.315742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845833, 30.736528, 42.910046>,  <38.362156, 31.216558, 43.212578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845833, 30.736528, 42.910046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472271, 30.596109, 42.937122>,  <38.248135, 30.511858, 42.953369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472271, 30.596109, 42.937122>,  <38.845833, 30.736528, 42.910046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472271, 30.596109, 42.937122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126022, 0.146050, -0.981218,
		0.334566, -0.924898, -0.180637,
		-0.933908, -0.351047, 0.067694,
		38.192097, 30.490795, 42.957432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795059, 30.271582, 42.339439>,  <38.845833, 30.736528, 42.910046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795059, 30.271582, 42.339439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402618, 30.295248, 42.413139>,  <38.167156, 30.309448, 42.457359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402618, 30.295248, 42.413139>,  <38.795059, 30.271582, 42.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402618, 30.295248, 42.413139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193455, -0.276231, -0.941420,
		-0.004807, -0.959268, 0.282455,
		-0.981097, 0.059167, 0.184247,
		38.108288, 30.312998, 42.468414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439606, 29.587225, 41.989162>,  <38.795059, 30.271582, 42.339439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439606, 29.587225, 41.989162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180973, 29.886543, 42.048466>,  <38.025791, 30.066135, 42.084049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180973, 29.886543, 42.048466>,  <38.439606, 29.587225, 41.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180973, 29.886543, 42.048466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256764, -0.030475, -0.965994,
		-0.718332, -0.662663, 0.211840,
		-0.646584, 0.748297, 0.148257,
		37.987000, 30.111032, 42.092941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783806, 29.397459, 41.567493>,  <38.439606, 29.587225, 41.989162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783806, 29.397459, 41.567493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759541, 29.790495, 41.637737>,  <37.744980, 30.026316, 41.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759541, 29.790495, 41.637737>,  <37.783806, 29.397459, 41.567493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759541, 29.790495, 41.637737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301083, 0.149725, -0.941770,
		-0.951667, -0.110005, 0.286757,
		-0.060664, 0.982589, 0.175609,
		37.741341, 30.085272, 41.690418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188496, 29.529518, 41.203598>,  <37.783806, 29.397459, 41.567493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188496, 29.529518, 41.203598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323051, 29.901842, 41.260784>,  <37.403786, 30.125237, 41.295094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323051, 29.901842, 41.260784>,  <37.188496, 29.529518, 41.203598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323051, 29.901842, 41.260784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055251, 0.132040, -0.989703,
		-0.940101, 0.340823, -0.007011,
		0.336388, 0.930809, 0.142962,
		37.423969, 30.181086, 41.303673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788898, 29.856150, 40.767376>,  <37.188496, 29.529518, 41.203598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788898, 29.856150, 40.767376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125607, 30.062506, 40.830982>,  <37.327633, 30.186319, 40.869144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125607, 30.062506, 40.830982>,  <36.788898, 29.856150, 40.767376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125607, 30.062506, 40.830982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008008, 0.282592, -0.959207,
		-0.539779, 0.808703, 0.233746,
		0.841769, 0.515888, 0.159013,
		37.378136, 30.217272, 40.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712406, 30.595116, 40.483200>,  <36.788898, 29.856150, 40.767376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712406, 30.595116, 40.483200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106384, 30.537245, 40.521030>,  <37.342773, 30.502522, 40.543728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106384, 30.537245, 40.521030>,  <36.712406, 30.595116, 40.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106384, 30.537245, 40.521030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152052, 0.465010, -0.872150,
		0.082201, 0.873404, 0.480010,
		0.984948, -0.144678, 0.094579,
		37.401867, 30.493841, 40.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007957, 31.263777, 40.341053>,  <36.712406, 30.595116, 40.483200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007957, 31.263777, 40.341053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306469, 31.001307, 40.296314>,  <37.485577, 30.843824, 40.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306469, 31.001307, 40.296314>,  <37.007957, 31.263777, 40.341053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306469, 31.001307, 40.296314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166803, 0.347020, -0.922905,
		0.644399, 0.670085, 0.368424,
		0.746275, -0.656174, -0.111847,
		37.530350, 30.804455, 40.262760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659706, 31.668743, 40.138832>,  <37.007957, 31.263777, 40.341053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659706, 31.668743, 40.138832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754128, 31.300997, 40.012947>,  <37.810780, 31.080349, 39.937416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754128, 31.300997, 40.012947>,  <37.659706, 31.668743, 40.138832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754128, 31.300997, 40.012947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339777, 0.381513, -0.859650,
		0.910401, 0.095991, 0.402438,
		0.236054, -0.919366, -0.314715,
		37.824944, 31.025187, 39.918533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271679, 31.697823, 40.001270>,  <37.659706, 31.668743, 40.138832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271679, 31.697823, 40.001270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158073, 31.380621, 39.785683>,  <38.089912, 31.190300, 39.656330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158073, 31.380621, 39.785683>,  <38.271679, 31.697823, 40.001270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158073, 31.380621, 39.785683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275241, 0.471026, -0.838079,
		0.918467, -0.386368, 0.084492,
		-0.284009, -0.793003, -0.538966,
		38.072872, 31.142719, 39.623993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905064, 31.610310, 39.605190>,  <38.271679, 31.697823, 40.001270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905064, 31.610310, 39.605190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614502, 31.413059, 39.413708>,  <38.440166, 31.294708, 39.298817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614502, 31.413059, 39.413708>,  <38.905064, 31.610310, 39.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614502, 31.413059, 39.413708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408140, 0.250893, -0.877767,
		0.552958, -0.832992, 0.019016,
		-0.726402, -0.493129, -0.478711,
		38.396580, 31.265121, 39.270096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183186, 31.064848, 39.152813>,  <38.905064, 31.610310, 39.605190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183186, 31.064848, 39.152813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821423, 31.181803, 39.028515>,  <38.604366, 31.251976, 38.953934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821423, 31.181803, 39.028515>,  <39.183186, 31.064848, 39.152813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821423, 31.181803, 39.028515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412225, 0.410808, -0.813208,
		-0.110115, -0.863566, -0.492066,
		-0.904403, 0.292388, -0.310747,
		38.550102, 31.269520, 38.935291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244751, 31.091431, 38.453751>,  <39.183186, 31.064848, 39.152813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244751, 31.091431, 38.453751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907040, 31.302794, 38.489471>,  <38.704411, 31.429611, 38.510902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907040, 31.302794, 38.489471>,  <39.244751, 31.091431, 38.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907040, 31.302794, 38.489471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323887, 0.635894, -0.700525,
		-0.426949, -0.562516, -0.708018,
		-0.844282, 0.528406, 0.089303,
		38.653755, 31.461315, 38.516262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160728, 31.289982, 37.794609>,  <39.244751, 31.091431, 38.453751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160728, 31.289982, 37.794609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885262, 31.523991, 37.965950>,  <38.719982, 31.664396, 38.068756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885262, 31.523991, 37.965950>,  <39.160728, 31.289982, 37.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885262, 31.523991, 37.965950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085220, 0.651980, -0.753431,
		-0.720051, -0.482360, -0.498853,
		-0.688668, 0.585021, 0.428353,
		38.678661, 31.699497, 38.094456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604828, 31.432957, 37.266460>,  <39.160728, 31.289982, 37.794609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604828, 31.432957, 37.266460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582592, 31.725515, 37.538334>,  <38.569248, 31.901051, 37.701458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582592, 31.725515, 37.538334>,  <38.604828, 31.432957, 37.266460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582592, 31.725515, 37.538334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023191, 0.681497, -0.731453,
		-0.998184, -0.024902, -0.054849,
		-0.055594, 0.731397, 0.679682,
		38.565914, 31.944935, 37.742237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192413, 31.976795, 37.001915>,  <38.604828, 31.432957, 37.266460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192413, 31.976795, 37.001915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369717, 32.161152, 37.309448>,  <38.476097, 32.271767, 37.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369717, 32.161152, 37.309448>,  <38.192413, 31.976795, 37.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369717, 32.161152, 37.309448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019328, 0.852581, -0.522237,
		-0.896187, 0.246344, 0.369002,
		0.443255, 0.460890, 0.768834,
		38.502693, 32.299419, 37.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701756, 32.537193, 37.248383>,  <38.192413, 31.976795, 37.001915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701756, 32.537193, 37.248383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087429, 32.598392, 37.335041>,  <38.318832, 32.635113, 37.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087429, 32.598392, 37.335041>,  <37.701756, 32.537193, 37.248383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087429, 32.598392, 37.335041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056150, 0.916080, -0.397044,
		-0.259209, 0.370661, 0.891864,
		0.964188, 0.152996, 0.216643,
		38.376686, 32.644291, 37.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757931, 33.236305, 37.511471>,  <37.701756, 32.537193, 37.248383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757931, 33.236305, 37.511471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125221, 33.120617, 37.403236>,  <38.345596, 33.051205, 37.338295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125221, 33.120617, 37.403236>,  <37.757931, 33.236305, 37.511471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125221, 33.120617, 37.403236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122419, 0.856995, -0.500572,
		0.376668, 0.426511, 0.822319,
		0.918224, -0.289217, -0.270590,
		38.400688, 33.033852, 37.322060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066048, 33.878040, 37.351383>,  <37.757931, 33.236305, 37.511471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066048, 33.878040, 37.351383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344872, 33.612484, 37.243046>,  <38.512165, 33.453152, 37.178043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344872, 33.612484, 37.243046>,  <38.066048, 33.878040, 37.351383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344872, 33.612484, 37.243046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405429, 0.676503, -0.614793,
		0.591383, 0.318739, 0.740724,
		0.697061, -0.663889, -0.270846,
		38.553989, 33.413319, 37.161793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667904, 34.239304, 37.577103>,  <38.066048, 33.878040, 37.351383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667904, 34.239304, 37.577103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731262, 33.974770, 37.283833>,  <38.769279, 33.816048, 37.107872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731262, 33.974770, 37.283833>,  <38.667904, 34.239304, 37.577103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731262, 33.974770, 37.283833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338633, 0.733897, -0.588832,
		0.927490, -0.155005, 0.340201,
		0.158400, -0.661339, -0.733171,
		38.778782, 33.776367, 37.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294445, 34.449257, 37.333279>,  <38.667904, 34.239304, 37.577103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294445, 34.449257, 37.333279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112698, 34.252853, 37.035969>,  <39.003651, 34.135010, 36.857582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112698, 34.252853, 37.035969>,  <39.294445, 34.449257, 37.333279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112698, 34.252853, 37.035969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245295, 0.733160, -0.634277,
		0.856378, -0.470515, -0.212679,
		-0.454365, -0.491012, -0.743277,
		38.976387, 34.105549, 36.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789791, 34.530025, 36.839745>,  <39.294445, 34.449257, 37.333279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789791, 34.530025, 36.839745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464817, 34.415569, 36.636543>,  <39.269833, 34.346897, 36.514622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464817, 34.415569, 36.636543>,  <39.789791, 34.530025, 36.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464817, 34.415569, 36.636543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173671, 0.712979, -0.679337,
		0.556580, -0.640146, -0.529559,
		-0.812439, -0.286136, -0.508004,
		39.221085, 34.329727, 36.484142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022717, 34.593517, 36.177784>,  <39.789791, 34.530025, 36.839745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022717, 34.593517, 36.177784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622822, 34.586803, 36.171444>,  <39.382885, 34.582775, 36.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622822, 34.586803, 36.171444>,  <40.022717, 34.593517, 36.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622822, 34.586803, 36.171444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001168, 0.722601, -0.691265,
		0.023057, -0.691062, -0.722428,
		-0.999733, -0.016783, -0.015854,
		39.322903, 34.581768, 36.166687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225182, 34.493919, 35.503746>,  <40.022717, 34.593517, 36.177784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225182, 34.493919, 35.503746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571674, 34.685497, 35.446823>,  <40.779572, 34.800446, 35.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571674, 34.685497, 35.446823>,  <40.225182, 34.493919, 35.503746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571674, 34.685497, 35.446823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498298, 0.848996, -0.175797,
		0.036618, 0.223191, 0.974087,
		0.866232, 0.478948, -0.142305,
		40.831543, 34.829182, 35.404133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086510, 35.192043, 35.759533>,  <40.225182, 34.493919, 35.503746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086510, 35.192043, 35.759533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437378, 35.217552, 35.569164>,  <40.647900, 35.232857, 35.454941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437378, 35.217552, 35.569164>,  <40.086510, 35.192043, 35.759533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437378, 35.217552, 35.569164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181768, 0.961483, -0.206181,
		0.444446, 0.267364, 0.854976,
		0.877171, 0.063771, -0.475926,
		40.700531, 35.236683, 35.426388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695755, 35.751682, 35.937233>,  <40.086510, 35.192043, 35.759533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695755, 35.751682, 35.937233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649052, 35.636715, 35.556969>,  <40.621029, 35.567734, 35.328808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649052, 35.636715, 35.556969>,  <40.695755, 35.751682, 35.937233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649052, 35.636715, 35.556969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110633, 0.955017, -0.275143,
		0.986979, 0.073050, -0.143303,
		-0.116757, -0.287414, -0.950663,
		40.614025, 35.550491, 35.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299423, 36.029202, 35.596458>,  <40.695755, 35.751682, 35.937233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299423, 36.029202, 35.596458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943592, 35.989254, 35.418163>,  <40.730095, 35.965286, 35.311184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943592, 35.989254, 35.418163>,  <41.299423, 36.029202, 35.596458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943592, 35.989254, 35.418163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020257, 0.983474, -0.179914,
		0.456342, -0.151018, -0.876896,
		-0.889574, -0.099865, -0.445741,
		40.676720, 35.959293, 35.284439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029049, 36.098064, 35.512104>,  <41.299423, 36.029202, 35.596458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029049, 36.098064, 35.512104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834545, 36.397671, 35.332088>,  <41.717842, 36.577435, 35.224079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834545, 36.397671, 35.332088>,  <42.029049, 36.098064, 35.512104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834545, 36.397671, 35.332088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701164, -0.641802, -0.310580,
		-0.521462, 0.164525, 0.837263,
		-0.486259, 0.749014, -0.450034,
		41.688667, 36.622375, 35.197079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652763, 35.778229, 35.169304>,  <42.029049, 36.098064, 35.512104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652763, 35.778229, 35.169304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732372, 35.474712, 34.921230>,  <42.780140, 35.292603, 34.772388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732372, 35.474712, 34.921230>,  <42.652763, 35.778229, 35.169304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732372, 35.474712, 34.921230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495954, -0.623804, 0.604067,
		-0.845232, 0.187355, -0.500480,
		0.199026, -0.758793, -0.620180,
		42.792080, 35.247074, 34.735176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122810, 35.181377, 35.104939>,  <42.652763, 35.778229, 35.169304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122810, 35.181377, 35.104939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477978, 35.018948, 35.018494>,  <42.691078, 34.921490, 34.966629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477978, 35.018948, 35.018494>,  <42.122810, 35.181377, 35.104939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477978, 35.018948, 35.018494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223534, -0.791502, 0.568820,
		-0.402034, -0.456759, -0.793562,
		0.887919, -0.406074, -0.216110,
		42.744354, 34.897125, 34.953659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988907, 34.482189, 34.771709>,  <42.122810, 35.181377, 35.104939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988907, 34.482189, 34.771709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318146, 34.529488, 34.993893>,  <42.515690, 34.557865, 35.127201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318146, 34.529488, 34.993893>,  <41.988907, 34.482189, 34.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318146, 34.529488, 34.993893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300158, -0.739722, 0.602260,
		0.482097, -0.662442, -0.573369,
		0.823096, 0.118246, 0.555456,
		42.565075, 34.564960, 35.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241005, 33.764172, 34.941597>,  <41.988907, 34.482189, 34.771709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241005, 33.764172, 34.941597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412796, 33.994789, 35.219631>,  <42.515869, 34.133160, 35.386452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412796, 33.994789, 35.219631>,  <42.241005, 33.764172, 34.941597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412796, 33.994789, 35.219631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097265, -0.735682, 0.670307,
		0.897824, -0.355490, -0.259882,
		0.429478, 0.576540, 0.695090,
		42.541641, 34.167751, 35.428158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667515, 33.294643, 35.246826>,  <42.241005, 33.764172, 34.941597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667515, 33.294643, 35.246826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587921, 33.606831, 35.483898>,  <42.540165, 33.794144, 35.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587921, 33.606831, 35.483898>,  <42.667515, 33.294643, 35.246826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587921, 33.606831, 35.483898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084204, -0.616157, 0.783109,
		0.976379, 0.105918, 0.188323,
		-0.198982, 0.780469, 0.592684,
		42.528225, 33.840973, 35.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969070, 33.157932, 35.913315>,  <42.667515, 33.294643, 35.246826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969070, 33.157932, 35.913315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707180, 33.442596, 36.015202>,  <42.550045, 33.613396, 36.076332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707180, 33.442596, 36.015202>,  <42.969070, 33.157932, 35.913315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707180, 33.442596, 36.015202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207670, -0.493373, 0.844663,
		0.726783, 0.500123, 0.470813,
		-0.654721, 0.711660, 0.254715,
		42.510765, 33.656094, 36.091618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187721, 33.371380, 36.461971>,  <42.969070, 33.157932, 35.913315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187721, 33.371380, 36.461971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805462, 33.488926, 36.469833>,  <42.576107, 33.559452, 36.474552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805462, 33.488926, 36.469833>,  <43.187721, 33.371380, 36.461971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805462, 33.488926, 36.469833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125453, -0.466547, 0.875554,
		0.266463, 0.834254, 0.482720,
		-0.955646, 0.293861, 0.019658,
		42.518768, 33.577084, 36.475731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186840, 33.665630, 37.027637>,  <43.187721, 33.371380, 36.461971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186840, 33.665630, 37.027637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805779, 33.575455, 36.946026>,  <42.577141, 33.521351, 36.897057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805779, 33.575455, 36.946026>,  <43.186840, 33.665630, 37.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805779, 33.575455, 36.946026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094391, -0.418608, 0.903248,
		-0.289034, 0.879742, 0.377510,
		-0.952654, -0.225436, -0.204032,
		42.519981, 33.507824, 36.884815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897667, 33.698700, 37.682308>,  <43.186840, 33.665630, 37.027637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897667, 33.698700, 37.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614380, 33.497948, 37.483696>,  <42.444408, 33.377495, 37.364529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614380, 33.497948, 37.483696>,  <42.897667, 33.698700, 37.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614380, 33.497948, 37.483696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147096, -0.582973, 0.799066,
		-0.690497, 0.638953, 0.339049,
		-0.708221, -0.501879, -0.496528,
		42.401913, 33.347385, 37.334736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292946, 33.731155, 38.089264>,  <42.897667, 33.698700, 37.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292946, 33.731155, 38.089264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255093, 33.411919, 37.851238>,  <42.232380, 33.220379, 37.708424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255093, 33.411919, 37.851238>,  <42.292946, 33.731155, 38.089264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255093, 33.411919, 37.851238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523493, -0.468532, 0.711641,
		-0.846758, 0.378856, -0.373455,
		-0.094634, -0.798089, -0.595062,
		42.226704, 33.172493, 37.672718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522568, 33.526833, 38.177925>,  <42.292946, 33.731155, 38.089264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522568, 33.526833, 38.177925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673222, 33.192455, 38.018257>,  <41.763615, 32.991829, 37.922455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673222, 33.192455, 38.018257>,  <41.522568, 33.526833, 38.177925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673222, 33.192455, 38.018257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420573, -0.538238, 0.730355,
		-0.825387, -0.107199, -0.554297,
		0.376636, -0.835948, -0.399170,
		41.786213, 32.941669, 37.898506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980328, 33.096161, 38.311863>,  <41.522568, 33.526833, 38.177925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980328, 33.096161, 38.311863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297554, 32.858112, 38.259892>,  <41.487888, 32.715282, 38.228710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297554, 32.858112, 38.259892>,  <40.980328, 33.096161, 38.311863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297554, 32.858112, 38.259892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335452, -0.604732, 0.722337,
		-0.508445, -0.529277, -0.679226,
		0.793067, -0.595117, -0.129926,
		41.535473, 32.679577, 38.220913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731682, 32.494892, 38.491711>,  <40.980328, 33.096161, 38.311863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731682, 32.494892, 38.491711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128883, 32.451485, 38.510338>,  <41.367203, 32.425442, 38.521515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128883, 32.451485, 38.510338>,  <40.731682, 32.494892, 38.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128883, 32.451485, 38.510338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101779, -0.586536, 0.803503,
		-0.059880, -0.802621, -0.593477,
		0.993003, -0.108517, 0.046568,
		41.426785, 32.418930, 38.524307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866859, 31.767868, 38.377453>,  <40.731682, 32.494892, 38.491711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866859, 31.767868, 38.377453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178604, 31.897556, 38.591919>,  <41.365650, 31.975368, 38.720596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178604, 31.897556, 38.591919>,  <40.866859, 31.767868, 38.377453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178604, 31.897556, 38.591919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198779, -0.683564, 0.702301,
		0.594202, -0.653927, -0.468298,
		0.779366, 0.324221, 0.536162,
		41.412415, 31.994822, 38.752769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284374, 31.096405, 38.570953>,  <40.866859, 31.767868, 38.377453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284374, 31.096405, 38.570953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386597, 31.391289, 38.821140>,  <41.447929, 31.568220, 38.971252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386597, 31.391289, 38.821140>,  <41.284374, 31.096405, 38.570953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386597, 31.391289, 38.821140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100350, -0.623230, 0.775574,
		0.961572, -0.260970, -0.085292,
		0.255558, 0.737211, 0.625468,
		41.463264, 31.612452, 39.008781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565174, 30.730579, 39.199501>,  <41.284374, 31.096405, 38.570953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565174, 30.730579, 39.199501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508442, 31.108629, 39.317230>,  <41.474403, 31.335459, 39.387867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508442, 31.108629, 39.317230>,  <41.565174, 30.730579, 39.199501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508442, 31.108629, 39.317230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259405, -0.322424, 0.910358,
		0.955298, 0.052764, 0.290898,
		-0.141827, 0.945124, 0.294324,
		41.465893, 31.392166, 39.405529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014668, 30.872263, 39.718803>,  <41.565174, 30.730579, 39.199501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014668, 30.872263, 39.718803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725353, 31.143957, 39.768608>,  <41.551765, 31.306974, 39.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725353, 31.143957, 39.768608>,  <42.014668, 30.872263, 39.718803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725353, 31.143957, 39.768608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052228, -0.233604, 0.970928,
		0.688576, 0.695751, 0.204436,
		-0.723281, 0.679235, 0.124517,
		41.508369, 31.347727, 39.805962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222855, 31.187456, 40.299175>,  <42.014668, 30.872263, 39.718803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222855, 31.187456, 40.299175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840866, 31.300465, 40.262913>,  <41.611675, 31.368271, 40.241158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840866, 31.300465, 40.262913>,  <42.222855, 31.187456, 40.299175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840866, 31.300465, 40.262913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107267, -0.043866, 0.993262,
		0.276642, 0.958257, 0.072196,
		-0.954967, 0.282523, -0.090654,
		41.554375, 31.385221, 40.235718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168022, 31.665361, 40.852905>,  <42.222855, 31.187456, 40.299175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168022, 31.665361, 40.852905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803444, 31.528624, 40.761326>,  <41.584698, 31.446581, 40.706379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803444, 31.528624, 40.761326>,  <42.168022, 31.665361, 40.852905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803444, 31.528624, 40.761326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201525, -0.114208, 0.972802,
		-0.358693, 0.932792, 0.035205,
		-0.911442, -0.341843, -0.228946,
		41.530010, 31.426071, 40.692642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670235, 32.091255, 41.239853>,  <42.168022, 31.665361, 40.852905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670235, 32.091255, 41.239853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493248, 31.749006, 41.132427>,  <41.387054, 31.543657, 41.067970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493248, 31.749006, 41.132427>,  <41.670235, 32.091255, 41.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493248, 31.749006, 41.132427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390740, -0.085611, 0.916511,
		-0.807181, 0.510468, -0.296447,
		-0.442471, -0.855624, -0.268564,
		41.360508, 31.492319, 41.051857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996792, 32.049953, 41.591854>,  <41.670235, 32.091255, 41.239853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996792, 32.049953, 41.591854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037052, 31.672770, 41.464916>,  <41.061207, 31.446461, 41.388756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037052, 31.672770, 41.464916>,  <40.996792, 32.049953, 41.591854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037052, 31.672770, 41.464916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416225, -0.329614, 0.847415,
		-0.903674, 0.046792, -0.425657,
		0.100650, -0.942955, -0.317340,
		41.067245, 31.389883, 41.369713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377819, 31.760334, 41.728313>,  <40.996792, 32.049953, 41.591854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377819, 31.760334, 41.728313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592602, 31.423666, 41.705452>,  <40.721474, 31.221664, 41.691734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592602, 31.423666, 41.705452>,  <40.377819, 31.760334, 41.728313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592602, 31.423666, 41.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594275, -0.425477, 0.682500,
		-0.598760, -0.332506, -0.728647,
		0.536958, -0.841670, -0.057159,
		40.753689, 31.171165, 41.688305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955334, 31.160543, 41.674137>,  <40.377819, 31.760334, 41.728313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955334, 31.160543, 41.674137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297192, 31.036682, 41.840843>,  <40.502308, 30.962366, 41.940868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297192, 31.036682, 41.840843>,  <39.955334, 31.160543, 41.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297192, 31.036682, 41.840843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501537, -0.284719, 0.816943,
		-0.134307, -0.907221, -0.398637,
		0.854648, -0.309652, 0.416765,
		40.553585, 30.943787, 41.965874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233162, 30.930973, 41.914196>,  <39.955334, 31.160543, 41.674137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233162, 30.930973, 41.914196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916920, 30.874126, 42.152439>,  <38.727173, 30.840019, 42.295383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916920, 30.874126, 42.152439>,  <39.233162, 30.930973, 41.914196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916920, 30.874126, 42.152439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331429, -0.917212, 0.221083,
		0.514879, 0.372191, 0.772253,
		-0.790604, -0.142116, 0.595608,
		38.679737, 30.831491, 42.331120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319622, 31.725733, 41.826134>,  <39.233162, 30.930973, 41.914196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319622, 31.725733, 41.826134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118671, 31.928093, 42.106613>,  <38.998100, 32.049511, 42.274902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118671, 31.928093, 42.106613>,  <39.319622, 31.725733, 41.826134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118671, 31.928093, 42.106613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073222, -0.832944, 0.548492,
		0.861543, 0.224207, 0.455494,
		-0.502376, 0.505902, 0.701200,
		38.967960, 32.079865, 42.316975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629761, 31.782261, 42.560230>,  <39.319622, 31.725733, 41.826134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629761, 31.782261, 42.560230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230019, 31.776281, 42.547215>,  <38.990173, 31.772694, 42.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230019, 31.776281, 42.547215>,  <39.629761, 31.782261, 42.560230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230019, 31.776281, 42.547215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008006, -0.792395, 0.609955,
		-0.034898, 0.609825, 0.791767,
		-0.999359, -0.014948, -0.032535,
		38.930210, 31.771797, 42.537453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747604, 31.954243, 43.362366>,  <39.629761, 31.782261, 42.560230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747604, 31.954243, 43.362366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084423, 31.738985, 43.347591>,  <40.286514, 31.609831, 43.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084423, 31.738985, 43.347591>,  <39.747604, 31.954243, 43.362366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084423, 31.738985, 43.347591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518127, 0.787881, 0.332849,
		-0.150021, -0.299409, 0.942257,
		0.842044, -0.538143, -0.036933,
		40.337036, 31.577541, 43.336510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475468, 32.494663, 43.909653>,  <39.747604, 31.954243, 43.362366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475468, 32.494663, 43.909653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256165, 32.790169, 43.752865>,  <39.124584, 32.967472, 43.658791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256165, 32.790169, 43.752865>,  <39.475468, 32.494663, 43.909653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256165, 32.790169, 43.752865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697186, 0.144883, -0.702097,
		-0.461896, -0.658204, -0.594491,
		-0.548255, 0.738767, -0.391970,
		39.091686, 33.011799, 43.635273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282104, 32.538628, 43.158035>,  <39.475468, 32.494663, 43.909653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282104, 32.538628, 43.158035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345318, 32.884464, 43.348824>,  <39.383244, 33.091969, 43.463295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345318, 32.884464, 43.348824>,  <39.282104, 32.538628, 43.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345318, 32.884464, 43.348824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843371, 0.133048, -0.520600,
		-0.513568, 0.484533, -0.708149,
		0.158030, 0.864596, 0.476970,
		39.392727, 33.143845, 43.491913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128838, 33.234093, 42.725338>,  <39.282104, 32.538628, 43.158035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128838, 33.234093, 42.725338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439777, 33.209381, 42.975746>,  <39.626343, 33.194553, 43.125992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439777, 33.209381, 42.975746>,  <39.128838, 33.234093, 42.725338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439777, 33.209381, 42.975746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624424, 0.196441, -0.755980,
		-0.076271, 0.978567, 0.191281,
		0.777353, -0.061781, 0.626024,
		39.672981, 33.190845, 43.163555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545448, 33.861420, 42.796715>,  <39.128838, 33.234093, 42.725338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545448, 33.861420, 42.796715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813305, 33.567871, 42.842350>,  <39.974018, 33.391743, 42.869732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813305, 33.567871, 42.842350>,  <39.545448, 33.861420, 42.796715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813305, 33.567871, 42.842350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546610, 0.383011, -0.744661,
		0.502787, 0.561018, 0.657620,
		0.669644, -0.733868, 0.114085,
		40.014198, 33.347710, 42.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183136, 34.195374, 42.827312>,  <39.545448, 33.861420, 42.796715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183136, 34.195374, 42.827312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250004, 33.852310, 42.632797>,  <40.290127, 33.646473, 42.516087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250004, 33.852310, 42.632797>,  <40.183136, 34.195374, 42.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250004, 33.852310, 42.632797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680212, 0.457370, -0.572821,
		0.713698, -0.235019, 0.659849,
		0.167172, -0.857659, -0.486287,
		40.300156, 33.595013, 42.486912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812588, 33.820396, 42.848923>,  <40.183136, 34.195374, 42.827312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812588, 33.820396, 42.848923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703251, 33.735558, 42.473625>,  <40.637650, 33.684654, 42.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703251, 33.735558, 42.473625>,  <40.812588, 33.820396, 42.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703251, 33.735558, 42.473625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816977, 0.463698, -0.342832,
		0.507775, -0.860232, 0.046534,
		-0.273337, -0.212099, -0.938244,
		40.621250, 33.671928, 42.192154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405842, 33.683376, 42.478745>,  <40.812588, 33.820396, 42.848923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405842, 33.683376, 42.478745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124981, 33.819740, 42.228699>,  <40.956463, 33.901558, 42.078671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124981, 33.819740, 42.228699>,  <41.405842, 33.683376, 42.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124981, 33.819740, 42.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700650, 0.487125, -0.521343,
		0.126777, -0.804046, -0.580894,
		-0.702151, 0.340909, -0.625112,
		40.914337, 33.922012, 42.041164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788025, 33.671577, 41.862400>,  <41.405842, 33.683376, 42.478745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788025, 33.671577, 41.862400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461716, 33.877689, 41.757332>,  <41.265930, 34.001354, 41.694290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461716, 33.877689, 41.757332>,  <41.788025, 33.671577, 41.862400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461716, 33.877689, 41.757332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470102, 0.326176, -0.820130,
		-0.336917, -0.792526, -0.508320,
		-0.815776, 0.515278, -0.262674,
		41.216984, 34.032272, 41.678528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752380, 33.643147, 41.227238>,  <41.788025, 33.671577, 41.862400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752380, 33.643147, 41.227238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553146, 33.981464, 41.303699>,  <41.433605, 34.184456, 41.349575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553146, 33.981464, 41.303699>,  <41.752380, 33.643147, 41.227238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553146, 33.981464, 41.303699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284444, 0.367612, -0.885411,
		-0.819148, -0.386637, -0.423683,
		-0.498084, 0.845797, 0.191152,
		41.403721, 34.235203, 41.361046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503525, 33.778244, 40.612602>,  <41.752380, 33.643147, 41.227238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503525, 33.778244, 40.612602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510494, 34.114563, 40.829033>,  <41.514675, 34.316353, 40.958889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510494, 34.114563, 40.829033>,  <41.503525, 33.778244, 40.612602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510494, 34.114563, 40.829033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387155, 0.493265, -0.778974,
		-0.921850, 0.223054, -0.316922,
		0.017427, 0.840796, 0.541072,
		41.515724, 34.366802, 40.991356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182583, 34.134560, 40.126785>,  <41.503525, 33.778244, 40.612602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182583, 34.134560, 40.126785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376732, 34.350075, 40.402210>,  <41.493221, 34.479385, 40.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376732, 34.350075, 40.402210>,  <41.182583, 34.134560, 40.126785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376732, 34.350075, 40.402210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626508, 0.334993, -0.703752,
		-0.609840, 0.772970, -0.174962,
		0.485368, 0.538791, 0.688565,
		41.522343, 34.511711, 40.608780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358749, 34.752834, 39.809242>,  <41.182583, 34.134560, 40.126785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358749, 34.752834, 39.809242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608231, 34.750183, 40.121895>,  <41.757919, 34.748592, 40.309486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608231, 34.750183, 40.121895>,  <41.358749, 34.752834, 39.809242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608231, 34.750183, 40.121895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742997, 0.315620, -0.590204,
		-0.242786, 0.948863, 0.201779,
		0.623708, -0.006628, 0.781630,
		41.795341, 34.748196, 40.356384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761936, 35.315369, 39.751858>,  <41.358749, 34.752834, 39.809242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761936, 35.315369, 39.751858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960190, 35.047615, 39.973228>,  <42.079140, 34.886963, 40.106049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960190, 35.047615, 39.973228>,  <41.761936, 35.315369, 39.751858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960190, 35.047615, 39.973228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818423, 0.146640, -0.555591,
		0.290748, 0.728303, 0.620517,
		0.495631, -0.669382, 0.553424,
		42.108879, 34.846802, 40.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304527, 35.813454, 40.040718>,  <41.761936, 35.315369, 39.751858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304527, 35.813454, 40.040718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399330, 35.424953, 40.049679>,  <42.456211, 35.191853, 40.055054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399330, 35.424953, 40.049679>,  <42.304527, 35.813454, 40.040718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399330, 35.424953, 40.049679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774078, 0.174861, -0.608463,
		0.587052, 0.161554, 0.793266,
		0.237010, -0.971249, 0.022403,
		42.470432, 35.133579, 40.056400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016148, 35.790325, 40.265949>,  <42.304527, 35.813454, 40.040718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016148, 35.790325, 40.265949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916885, 35.453598, 40.074215>,  <42.857327, 35.251564, 39.959175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916885, 35.453598, 40.074215>,  <43.016148, 35.790325, 40.265949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916885, 35.453598, 40.074215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837841, 0.061859, -0.542398,
		0.486251, -0.536208, 0.689957,
		-0.248159, -0.841816, -0.479336,
		42.842438, 35.201054, 39.930412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607872, 35.582237, 40.117104>,  <43.016148, 35.790325, 40.265949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607872, 35.582237, 40.117104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373611, 35.355278, 39.885563>,  <43.233055, 35.219101, 39.746639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373611, 35.355278, 39.885563>,  <43.607872, 35.582237, 40.117104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373611, 35.355278, 39.885563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720646, -0.037567, -0.692284,
		0.371057, -0.822584, 0.430897,
		-0.585649, -0.567401, -0.578853,
		43.197918, 35.185059, 39.711906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067043, 35.118038, 39.821972>,  <43.607872, 35.582237, 40.117104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067043, 35.118038, 39.821972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750561, 35.097786, 39.578194>,  <43.560673, 35.085636, 39.431927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750561, 35.097786, 39.578194>,  <44.067043, 35.118038, 39.821972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750561, 35.097786, 39.578194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606335, -0.194803, -0.770980,
		-0.079689, -0.979535, 0.184827,
		-0.791206, -0.050629, -0.609450,
		43.513199, 35.082596, 39.395359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161396, 34.511547, 39.416599>,  <44.067043, 35.118038, 39.821972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161396, 34.511547, 39.416599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898151, 34.733177, 39.212677>,  <43.740204, 34.866154, 39.090324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898151, 34.733177, 39.212677>,  <44.161396, 34.511547, 39.416599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898151, 34.733177, 39.212677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523229, -0.150331, -0.838828,
		-0.541409, -0.818783, -0.190972,
		-0.658109, 0.554071, -0.509802,
		43.700718, 34.899399, 39.059738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980949, 34.093399, 38.751102>,  <44.161396, 34.511547, 39.416599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980949, 34.093399, 38.751102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907017, 34.482632, 38.696045>,  <43.862659, 34.716171, 38.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907017, 34.482632, 38.696045>,  <43.980949, 34.093399, 38.751102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907017, 34.482632, 38.696045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432947, -0.045117, -0.900290,
		-0.882268, -0.225992, -0.412955,
		-0.184827, 0.973084, -0.137648,
		43.851570, 34.774555, 38.654751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571106, 34.080620, 38.167198>,  <43.980949, 34.093399, 38.751102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571106, 34.080620, 38.167198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749508, 34.433231, 38.229156>,  <43.856548, 34.644798, 38.266331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749508, 34.433231, 38.229156>,  <43.571106, 34.080620, 38.167198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749508, 34.433231, 38.229156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240714, 0.048546, -0.969381,
		-0.862056, 0.469630, -0.190544,
		0.446000, 0.881527, 0.154896,
		43.883308, 34.697689, 38.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680355, 34.120472, 37.509186>,  <43.571106, 34.080620, 38.167198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680355, 34.120472, 37.509186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855118, 34.447380, 37.659485>,  <43.959976, 34.643524, 37.749664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855118, 34.447380, 37.659485>,  <43.680355, 34.120472, 37.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855118, 34.447380, 37.659485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499258, 0.127149, -0.857073,
		-0.748235, 0.562055, -0.352476,
		0.436905, 0.817268, 0.375748,
		43.986191, 34.692562, 37.772209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534698, 34.708340, 37.043499>,  <43.680355, 34.120472, 37.509186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534698, 34.708340, 37.043499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882885, 34.767265, 37.231369>,  <44.091797, 34.802620, 37.344090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882885, 34.767265, 37.231369>,  <43.534698, 34.708340, 37.043499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882885, 34.767265, 37.231369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432694, 0.225900, -0.872780,
		-0.234675, 0.962947, 0.132894,
		0.870462, 0.147317, 0.469675,
		44.144024, 34.811462, 37.372272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784126, 35.260662, 36.877090>,  <43.534698, 34.708340, 37.043499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784126, 35.260662, 36.877090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122307, 35.088039, 37.002930>,  <44.325214, 34.984467, 37.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122307, 35.088039, 37.002930>,  <43.784126, 35.260662, 36.877090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122307, 35.088039, 37.002930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460810, 0.291725, -0.838183,
		0.269948, 0.853612, 0.445505,
		0.845448, -0.431559, 0.314602,
		44.375942, 34.958572, 37.097309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345463, 35.793835, 36.843067>,  <43.784126, 35.260662, 36.877090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345463, 35.793835, 36.843067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572079, 35.464649, 36.859856>,  <44.708050, 35.267139, 36.869926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572079, 35.464649, 36.859856>,  <44.345463, 35.793835, 36.843067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572079, 35.464649, 36.859856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582605, 0.364017, -0.726680,
		0.582754, 0.436145, 0.685693,
		0.566542, -0.822964, 0.041968,
		44.742043, 35.217758, 36.872444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025223, 36.001762, 36.851280>,  <44.345463, 35.793835, 36.843067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025223, 36.001762, 36.851280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010223, 35.637089, 36.687611>,  <45.001225, 35.418285, 36.589409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010223, 35.637089, 36.687611>,  <45.025223, 36.001762, 36.851280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010223, 35.637089, 36.687611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509754, 0.334731, -0.792531,
		0.859503, -0.238299, 0.452182,
		-0.037501, -0.911685, -0.409176,
		44.998974, 35.363583, 36.564857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592831, 35.961632, 36.429260>,  <45.025223, 36.001762, 36.851280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592831, 35.961632, 36.429260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395775, 35.629051, 36.326511>,  <45.277542, 35.429501, 36.264862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395775, 35.629051, 36.326511>,  <45.592831, 35.961632, 36.429260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395775, 35.629051, 36.326511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535851, -0.057248, -0.842370,
		0.685687, -0.552634, 0.473739,
		-0.492643, -0.831455, -0.256875,
		45.247982, 35.379616, 36.249451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094868, 35.501884, 36.117977>,  <45.592831, 35.961632, 36.429260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094868, 35.501884, 36.117977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746601, 35.359592, 35.982098>,  <45.537640, 35.274220, 35.900570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746601, 35.359592, 35.982098>,  <46.094868, 35.501884, 36.117977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746601, 35.359592, 35.982098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348387, 0.041525, -0.936431,
		0.347219, -0.933667, 0.087776,
		-0.870670, -0.355727, -0.339695,
		45.485401, 35.252876, 35.880188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030998, 35.123249, 35.511440>,  <46.094868, 35.501884, 36.117977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030998, 35.123249, 35.511440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257309, 35.178726, 35.186317>,  <46.393097, 35.212013, 34.991241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257309, 35.178726, 35.186317>,  <46.030998, 35.123249, 35.511440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257309, 35.178726, 35.186317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824546, -0.100553, 0.556788,
		-0.004506, -0.985217, -0.171252,
		0.565777, 0.138696, -0.812810,
		46.427040, 35.220333, 34.942474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610294, 34.606251, 35.261707>,  <46.030998, 35.123249, 35.511440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610294, 34.606251, 35.261707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731541, 34.969070, 35.144829>,  <46.804291, 35.186764, 35.074699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731541, 34.969070, 35.144829>,  <46.610294, 34.606251, 35.261707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731541, 34.969070, 35.144829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927571, -0.210535, 0.308686,
		0.218475, -0.364603, -0.905170,
		0.303118, 0.907050, -0.292199,
		46.822475, 35.241184, 35.057171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181046, 34.560780, 34.714748>,  <46.610294, 34.606251, 35.261707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181046, 34.560780, 34.714748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212860, 34.853924, 34.985035>,  <47.231949, 35.029808, 35.147205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212860, 34.853924, 34.985035>,  <47.181046, 34.560780, 34.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212860, 34.853924, 34.985035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967032, -0.221234, 0.126112,
		0.241914, 0.643408, -0.726294,
		0.079540, 0.732858, 0.675716,
		47.236721, 35.073780, 35.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665619, 35.077854, 34.524963>,  <47.181046, 34.560780, 34.714748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665619, 35.077854, 34.524963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638294, 35.013763, 34.918850>,  <47.621899, 34.975311, 35.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638294, 35.013763, 34.918850>,  <47.665619, 35.077854, 34.524963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638294, 35.013763, 34.918850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968012, -0.249492, 0.026562,
		0.241423, 0.955030, 0.172142,
		-0.068315, -0.160223, 0.984714,
		47.617798, 34.965698, 35.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.416599, 32.925507, 44.334335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.055725, 32.753139, 44.342056>,  <32.839199, 32.649719, 44.346687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.055725, 32.753139, 44.342056>,  <33.416599, 32.925507, 44.334335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055725, 32.753139, 44.342056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165167, 0.303770, -0.938320,
		0.398481, -0.849723, -0.345230,
		-0.902183, -0.430923, 0.019300,
		32.785069, 32.623863, 44.347847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432842, 32.647484, 43.752373>,  <33.416599, 32.925507, 44.334335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432842, 32.647484, 43.752373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040787, 32.655159, 43.831329>,  <32.805553, 32.659763, 43.878704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040787, 32.655159, 43.831329>,  <33.432842, 32.647484, 43.752373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040787, 32.655159, 43.831329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190695, 0.182175, -0.964597,
		-0.054474, -0.983079, -0.174897,
		-0.980137, 0.019193, 0.197392,
		32.746746, 32.660915, 43.890549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086514, 32.277836, 43.256302>,  <33.432842, 32.647484, 43.752373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086514, 32.277836, 43.256302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808041, 32.538414, 43.376934>,  <32.640957, 32.694759, 43.449314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808041, 32.538414, 43.376934>,  <33.086514, 32.277836, 43.256302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808041, 32.538414, 43.376934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251512, 0.172131, -0.952425,
		-0.672364, -0.738912, 0.044012,
		-0.696181, 0.651445, 0.301580,
		32.599186, 32.733849, 43.467407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500408, 32.098930, 42.723644>,  <33.086514, 32.277836, 43.256302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500408, 32.098930, 42.723644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402496, 32.439274, 42.909599>,  <32.343750, 32.643482, 43.021172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402496, 32.439274, 42.909599>,  <32.500408, 32.098930, 42.723644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402496, 32.439274, 42.909599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153852, 0.439312, -0.885062,
		-0.957295, -0.288166, 0.023374,
		-0.244776, 0.850861, 0.464886,
		32.329063, 32.694530, 43.049065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797514, 32.363842, 42.351345>,  <32.500408, 32.098930, 42.723644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797514, 32.363842, 42.351345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977085, 32.673622, 42.529644>,  <32.084827, 32.859489, 42.636623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977085, 32.673622, 42.529644>,  <31.797514, 32.363842, 42.351345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977085, 32.673622, 42.529644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139046, 0.553309, -0.821289,
		-0.882683, 0.306720, 0.356080,
		0.448928, 0.774449, 0.445749,
		32.111763, 32.905956, 42.663368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397636, 32.932537, 42.277321>,  <31.797514, 32.363842, 42.351345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397636, 32.932537, 42.277321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.755919, 33.092804, 42.354450>,  <31.970888, 33.188965, 42.400726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.755919, 33.092804, 42.354450>,  <31.397636, 32.932537, 42.277321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755919, 33.092804, 42.354450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134492, 0.657465, -0.741385,
		-0.423820, 0.638129, 0.642781,
		0.895705, 0.400663, 0.192824,
		32.024632, 33.213001, 42.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373680, 33.596272, 42.149723>,  <31.397636, 32.932537, 42.277321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373680, 33.596272, 42.149723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764191, 33.512917, 42.126198>,  <31.998497, 33.462902, 42.112083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.764191, 33.512917, 42.126198>,  <31.373680, 33.596272, 42.149723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764191, 33.512917, 42.126198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059345, 0.518742, -0.852869,
		0.208238, 0.829145, 0.518802,
		0.976276, -0.208388, -0.058817,
		32.057072, 33.450401, 42.108551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717628, 34.205029, 41.870216>,  <31.373680, 33.596272, 42.149723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717628, 34.205029, 41.870216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.956228, 33.893696, 41.791847>,  <32.099388, 33.706894, 41.744827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.956228, 33.893696, 41.791847>,  <31.717628, 34.205029, 41.870216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956228, 33.893696, 41.791847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161824, 0.355720, -0.920476,
		0.786132, 0.517357, 0.338139,
		0.596497, -0.778335, -0.195923,
		32.135178, 33.660194, 41.733070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074436, 34.651615, 41.480495>,  <31.717628, 34.205029, 41.870216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074436, 34.651615, 41.480495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.215523, 34.283112, 41.414928>,  <32.300175, 34.062008, 41.375587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.215523, 34.283112, 41.414928>,  <32.074436, 34.651615, 41.480495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215523, 34.283112, 41.414928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166146, 0.234051, -0.957923,
		0.920863, 0.310639, 0.235617,
		0.352714, -0.921262, -0.163917,
		32.321339, 34.006733, 41.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893574, 34.628487, 41.360390>,  <32.074436, 34.651615, 41.480495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893574, 34.628487, 41.360390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743996, 34.291004, 41.206337>,  <32.654247, 34.088516, 41.113907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743996, 34.291004, 41.206337>,  <32.893574, 34.628487, 41.360390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743996, 34.291004, 41.206337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401880, 0.226839, -0.887150,
		0.835858, -0.486520, 0.254244,
		-0.373944, -0.843707, -0.385128,
		32.631813, 34.037891, 41.090797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430969, 34.299786, 40.951859>,  <32.893574, 34.628487, 41.360390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430969, 34.299786, 40.951859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096832, 34.143372, 40.797302>,  <32.896351, 34.049522, 40.704567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096832, 34.143372, 40.797302>,  <33.430969, 34.299786, 40.951859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096832, 34.143372, 40.797302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310417, 0.244567, -0.918601,
		0.453700, -0.887289, -0.082914,
		-0.835343, -0.391031, -0.386389,
		32.846230, 34.026062, 40.681385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676510, 34.034710, 40.369915>,  <33.430969, 34.299786, 40.951859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676510, 34.034710, 40.369915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280487, 34.057667, 40.318554>,  <33.042873, 34.071442, 40.287739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280487, 34.057667, 40.318554>,  <33.676510, 34.034710, 40.369915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280487, 34.057667, 40.318554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138609, 0.243388, -0.959974,
		-0.023841, -0.968230, -0.248923,
		-0.990060, 0.057389, -0.128402,
		32.983467, 34.074883, 40.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470547, 33.513599, 39.808815>,  <33.676510, 34.034710, 40.369915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470547, 33.513599, 39.808815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.182297, 33.790451, 39.825127>,  <33.009346, 33.956562, 39.834911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.182297, 33.790451, 39.825127>,  <33.470547, 33.513599, 39.808815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182297, 33.790451, 39.825127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194240, 0.257996, -0.946419,
		-0.665562, -0.674091, -0.320357,
		-0.720623, 0.692127, 0.040777,
		32.966110, 33.998089, 39.837360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140404, 33.375031, 39.216965>,  <33.470547, 33.513599, 39.808815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140404, 33.375031, 39.216965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048409, 33.747871, 39.328884>,  <32.993210, 33.971577, 39.396034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048409, 33.747871, 39.328884>,  <33.140404, 33.375031, 39.216965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048409, 33.747871, 39.328884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, 0.285978, -0.958213,
		-0.973170, -0.222257, -0.059509,
		-0.229987, 0.932104, 0.279798,
		32.979412, 34.027504, 39.412823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641460, 33.536198, 38.724815>,  <33.140404, 33.375031, 39.216965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641460, 33.536198, 38.724815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.777615, 33.880245, 38.876778>,  <32.859306, 34.086674, 38.967957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.777615, 33.880245, 38.876778>,  <32.641460, 33.536198, 38.724815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777615, 33.880245, 38.876778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023019, 0.396289, -0.917837,
		-0.940006, 0.321161, 0.115090,
		0.340382, 0.860123, 0.379906,
		32.879730, 34.138283, 38.990749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478580, 34.038151, 38.147152>,  <32.641460, 33.536198, 38.724815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478580, 34.038151, 38.147152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743076, 34.223461, 38.383163>,  <32.901772, 34.334648, 38.524773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743076, 34.223461, 38.383163>,  <32.478580, 34.038151, 38.147152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743076, 34.223461, 38.383163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239825, 0.614701, -0.751417,
		-0.710809, 0.638369, 0.295358,
		0.661238, 0.463279, 0.590031,
		32.941448, 34.362446, 38.560173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564472, 34.781662, 37.919407>,  <32.478580, 34.038151, 38.147152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564472, 34.781662, 37.919407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.907360, 34.737251, 38.120541>,  <33.113094, 34.710606, 38.241222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.907360, 34.737251, 38.120541>,  <32.564472, 34.781662, 37.919407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907360, 34.737251, 38.120541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482433, 0.514652, -0.708796,
		-0.180088, 0.850180, 0.494735,
		0.857220, -0.111031, 0.502837,
		33.164528, 34.703941, 38.271393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811035, 35.372330, 37.802944>,  <32.564472, 34.781662, 37.919407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811035, 35.372330, 37.802944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119274, 35.130283, 37.882965>,  <33.304218, 34.985054, 37.930977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119274, 35.130283, 37.882965>,  <32.811035, 35.372330, 37.802944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119274, 35.130283, 37.882965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492746, 0.366588, -0.789186,
		0.404211, 0.706717, 0.580659,
		0.770594, -0.605115, 0.200053,
		33.350452, 34.948750, 37.942982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395031, 35.823128, 37.699314>,  <32.811035, 35.372330, 37.802944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395031, 35.823128, 37.699314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524620, 35.444725, 37.703651>,  <33.602371, 35.217686, 37.706253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524620, 35.444725, 37.703651>,  <33.395031, 35.823128, 37.699314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524620, 35.444725, 37.703651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614304, 0.201631, -0.762874,
		0.719496, 0.253810, 0.646457,
		0.323971, -0.946005, 0.010843,
		33.621811, 35.160923, 37.706905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151981, 35.878201, 37.665611>,  <33.395031, 35.823128, 37.699314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151981, 35.878201, 37.665611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034286, 35.522804, 37.524754>,  <33.963669, 35.309566, 37.440239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034286, 35.522804, 37.524754>,  <34.151981, 35.878201, 37.665611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034286, 35.522804, 37.524754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671730, 0.069844, -0.737496,
		0.679857, -0.453539, 0.576279,
		-0.294234, -0.888496, -0.352140,
		33.946018, 35.256256, 37.419113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816795, 35.489830, 37.460602>,  <34.151981, 35.878201, 37.665611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816795, 35.489830, 37.460602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514412, 35.311470, 37.268890>,  <34.332981, 35.204453, 37.153862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514412, 35.311470, 37.268890>,  <34.816795, 35.489830, 37.460602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514412, 35.311470, 37.268890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569979, -0.088257, -0.816906,
		0.321960, -0.890721, 0.320872,
		-0.755954, -0.445901, -0.479277,
		34.287624, 35.177700, 37.125107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138004, 35.030205, 37.076614>,  <34.816795, 35.489830, 37.460602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138004, 35.030205, 37.076614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782021, 35.087914, 36.903568>,  <34.568432, 35.122540, 36.799740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782021, 35.087914, 36.903568>,  <35.138004, 35.030205, 37.076614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782021, 35.087914, 36.903568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447439, 0.092848, -0.889482,
		-0.088164, -0.985172, -0.147186,
		-0.889958, 0.144277, -0.432619,
		34.515034, 35.131195, 36.773781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760082, 35.048046, 36.663261>,  <35.138004, 35.030205, 37.076614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760082, 35.048046, 36.663261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124336, 35.178204, 36.765137>,  <36.342888, 35.256298, 36.826260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124336, 35.178204, 36.765137>,  <35.760082, 35.048046, 36.663261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124336, 35.178204, 36.765137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078676, -0.741619, 0.666192,
		0.405652, -0.586620, -0.700945,
		0.910635, 0.325389, 0.254686,
		36.397526, 35.275822, 36.841541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251656, 34.372051, 36.760887>,  <35.760082, 35.048046, 36.663261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251656, 34.372051, 36.760887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447365, 34.673141, 36.937080>,  <36.564789, 34.853794, 37.042797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447365, 34.673141, 36.937080>,  <36.251656, 34.372051, 36.760887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447365, 34.673141, 36.937080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249005, -0.604607, 0.756602,
		0.835829, -0.260502, -0.483248,
		0.489272, 0.752721, 0.440482,
		36.594147, 34.898956, 37.069225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882748, 34.099815, 37.032745>,  <36.251656, 34.372051, 36.760887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882748, 34.099815, 37.032745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827034, 34.431271, 37.249615>,  <36.793606, 34.630146, 37.379738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827034, 34.431271, 37.249615>,  <36.882748, 34.099815, 37.032745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827034, 34.431271, 37.249615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138766, -0.525774, 0.839229,
		0.980481, 0.192129, -0.041754,
		-0.139287, 0.828642, 0.542172,
		36.785248, 34.679863, 37.412266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262749, 33.996300, 37.555435>,  <36.882748, 34.099815, 37.032745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262749, 33.996300, 37.555435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.041981, 34.301033, 37.691078>,  <36.909519, 34.483871, 37.772465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.041981, 34.301033, 37.691078>,  <37.262749, 33.996300, 37.555435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041981, 34.301033, 37.691078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025587, -0.390987, 0.920040,
		0.833503, 0.516468, 0.196302,
		-0.551923, 0.761833, 0.339104,
		36.876404, 34.529583, 37.792809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614544, 34.146595, 38.093014>,  <37.262749, 33.996300, 37.555435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614544, 34.146595, 38.093014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252323, 34.303516, 38.157604>,  <37.034992, 34.397671, 38.196358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252323, 34.303516, 38.157604>,  <37.614544, 34.146595, 38.093014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252323, 34.303516, 38.157604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015826, -0.411600, 0.911227,
		0.423940, 0.822608, 0.378934,
		-0.905552, 0.392302, 0.161475,
		36.980656, 34.421207, 38.206047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693764, 34.619087, 38.726212>,  <37.614544, 34.146595, 38.093014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693764, 34.619087, 38.726212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305473, 34.525822, 38.703110>,  <37.072498, 34.469864, 38.689247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305473, 34.525822, 38.703110>,  <37.693764, 34.619087, 38.726212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305473, 34.525822, 38.703110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006778, -0.213756, 0.976864,
		-0.240111, 0.948654, 0.205917,
		-0.970722, -0.233160, -0.057755,
		37.014256, 34.455875, 38.685783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421459, 35.027760, 39.271904>,  <37.693764, 34.619087, 38.726212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421459, 35.027760, 39.271904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123791, 34.776955, 39.179764>,  <36.945190, 34.626472, 39.124481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123791, 34.776955, 39.179764>,  <37.421459, 35.027760, 39.271904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123791, 34.776955, 39.179764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249222, -0.059324, 0.966628,
		-0.619756, 0.776744, -0.112119,
		-0.744171, -0.627016, -0.230348,
		36.900539, 34.588848, 39.110661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817474, 35.354977, 39.577732>,  <37.421459, 35.027760, 39.271904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817474, 35.354977, 39.577732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751022, 34.963432, 39.530025>,  <36.711151, 34.728504, 39.501404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751022, 34.963432, 39.530025>,  <36.817474, 35.354977, 39.577732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751022, 34.963432, 39.530025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295992, -0.065867, 0.952916,
		-0.940633, 0.193608, -0.278794,
		-0.166129, -0.978865, -0.119264,
		36.701183, 34.669773, 39.494247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182510, 35.210167, 39.959042>,  <36.817474, 35.354977, 39.577732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182510, 35.210167, 39.959042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326481, 34.840069, 39.911095>,  <36.412865, 34.618008, 39.882328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326481, 34.840069, 39.911095>,  <36.182510, 35.210167, 39.959042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326481, 34.840069, 39.911095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298897, -0.236059, 0.924628,
		-0.883806, -0.296971, -0.361518,
		0.359927, -0.925248, -0.119866,
		36.434460, 34.562496, 39.875134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690495, 34.682182, 40.297928>,  <36.182510, 35.210167, 39.959042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690495, 34.682182, 40.297928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.039070, 34.489033, 40.263477>,  <36.248215, 34.373142, 40.242805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.039070, 34.489033, 40.263477>,  <35.690495, 34.682182, 40.297928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039070, 34.489033, 40.263477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096382, -0.340748, 0.935201,
		-0.480936, -0.806672, -0.343483,
		0.871442, -0.482877, -0.086129,
		36.300503, 34.344170, 40.237640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501854, 34.017628, 40.471752>,  <35.690495, 34.682182, 40.297928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501854, 34.017628, 40.471752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889439, 34.078857, 40.549408>,  <36.121990, 34.115597, 40.596001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889439, 34.078857, 40.549408>,  <35.501854, 34.017628, 40.471752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889439, 34.078857, 40.549408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114556, -0.417877, 0.901252,
		0.219084, -0.895515, -0.387370,
		0.968958, 0.153074, 0.194137,
		36.180126, 34.124779, 40.607651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569221, 33.451767, 40.792343>,  <35.501854, 34.017628, 40.471752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569221, 33.451767, 40.792343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904480, 33.649544, 40.884464>,  <36.105633, 33.768211, 40.939735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904480, 33.649544, 40.884464>,  <35.569221, 33.451767, 40.792343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904480, 33.649544, 40.884464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088275, -0.293702, 0.951812,
		0.538261, -0.818085, -0.202517,
		0.838143, 0.494446, 0.230304,
		36.155922, 33.797878, 40.953556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963181, 33.004341, 41.208244>,  <35.569221, 33.451767, 40.792343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963181, 33.004341, 41.208244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055542, 33.388287, 41.271923>,  <36.110958, 33.618652, 41.310131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055542, 33.388287, 41.271923>,  <35.963181, 33.004341, 41.208244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055542, 33.388287, 41.271923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046778, -0.152475, 0.987200,
		0.971851, -0.235398, 0.009693,
		0.230907, 0.959864, 0.159195,
		36.124813, 33.676247, 41.319683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549847, 33.071320, 41.594803>,  <35.963181, 33.004341, 41.208244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549847, 33.071320, 41.594803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399906, 33.427788, 41.697021>,  <36.309944, 33.641670, 41.758350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.399906, 33.427788, 41.697021>,  <36.549847, 33.071320, 41.594803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399906, 33.427788, 41.697021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020815, -0.267482, 0.963338,
		0.926853, 0.366424, 0.081716,
		-0.374848, 0.891171, 0.255544,
		36.287453, 33.695141, 41.773685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900696, 33.232109, 42.221161>,  <36.549847, 33.071320, 41.594803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900696, 33.232109, 42.221161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600498, 33.496387, 42.227234>,  <36.420380, 33.654957, 42.230877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600498, 33.496387, 42.227234>,  <36.900696, 33.232109, 42.221161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600498, 33.496387, 42.227234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132600, -0.173047, 0.975947,
		0.647435, 0.730431, 0.217481,
		-0.750497, 0.660700, 0.015181,
		36.375351, 33.694599, 42.231789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942204, 33.743069, 42.696663>,  <36.900696, 33.232109, 42.221161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942204, 33.743069, 42.696663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549873, 33.685013, 42.644650>,  <36.314476, 33.650181, 42.613441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549873, 33.685013, 42.644650>,  <36.942204, 33.743069, 42.696663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549873, 33.685013, 42.644650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100871, -0.192779, 0.976044,
		-0.166727, 0.970449, 0.174443,
		-0.980830, -0.145137, -0.130032,
		36.255623, 33.641472, 42.605640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739197, 33.795597, 43.456108>,  <36.942204, 33.743069, 42.696663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739197, 33.795597, 43.456108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397896, 33.705338, 43.268047>,  <36.193115, 33.651184, 43.155212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397896, 33.705338, 43.268047>,  <36.739197, 33.795597, 43.456108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397896, 33.705338, 43.268047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328192, -0.468284, 0.820366,
		-0.405276, 0.854280, 0.325510,
		-0.853253, -0.225645, -0.470152,
		36.141918, 33.637646, 43.127003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257504, 33.789852, 44.022385>,  <36.739197, 33.795597, 43.456108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257504, 33.789852, 44.022385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125767, 33.574966, 43.711788>,  <36.046726, 33.446037, 43.525429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125767, 33.574966, 43.711788>,  <36.257504, 33.789852, 44.022385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125767, 33.574966, 43.711788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263404, -0.737451, 0.621921,
		-0.906726, 0.409356, 0.101371,
		-0.329343, -0.537210, -0.776491,
		36.026962, 33.413803, 43.478840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.528511, 33.684063, 44.160583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620537, 33.377590, 43.920570>,  <35.675751, 33.193707, 43.776562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620537, 33.377590, 43.920570>,  <35.528511, 33.684063, 44.160583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620537, 33.377590, 43.920570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334629, -0.641254, 0.690520,
		-0.913836, 0.041925, -0.403914,
		0.230062, -0.766183, -0.600029,
		35.689556, 33.147736, 43.740562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865189, 33.325153, 43.978527>,  <35.528511, 33.684063, 44.160583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865189, 33.325153, 43.978527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180401, 33.082153, 43.938637>,  <35.369530, 32.936352, 43.914703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180401, 33.082153, 43.938637>,  <34.865189, 33.325153, 43.978527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180401, 33.082153, 43.938637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401854, -0.630311, 0.664245,
		-0.466388, -0.483372, -0.740833,
		0.788032, -0.607503, -0.099725,
		35.416809, 32.899902, 43.908718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590275, 32.617359, 43.832672>,  <34.865189, 33.325153, 43.978527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590275, 32.617359, 43.832672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967445, 32.556530, 43.951172>,  <35.193748, 32.520031, 44.022274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967445, 32.556530, 43.951172>,  <34.590275, 32.617359, 43.832672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967445, 32.556530, 43.951172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322346, -0.640111, 0.697388,
		0.083578, -0.753081, -0.652598,
		0.942925, -0.152076, 0.296252,
		35.250324, 32.510906, 44.040047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641853, 31.973753, 43.979900>,  <34.590275, 32.617359, 43.832672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641853, 31.973753, 43.979900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972942, 32.099308, 44.165955>,  <35.171597, 32.174641, 44.277588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972942, 32.099308, 44.165955>,  <34.641853, 31.973753, 43.979900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972942, 32.099308, 44.165955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101125, -0.731898, 0.673868,
		0.551949, -0.604813, -0.574068,
		0.827724, 0.313888, 0.465132,
		35.221260, 32.193474, 44.305496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001350, 31.352310, 44.163078>,  <34.641853, 31.973753, 43.979900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001350, 31.352310, 44.163078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168064, 31.654568, 44.365185>,  <35.268093, 31.835922, 44.486446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168064, 31.654568, 44.365185>,  <35.001350, 31.352310, 44.163078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168064, 31.654568, 44.365185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155408, -0.606894, 0.779441,
		0.895620, -0.246340, -0.370380,
		0.416789, 0.755643, 0.505263,
		35.293102, 31.881260, 44.516762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651997, 31.025911, 44.468124>,  <35.001350, 31.352310, 44.163078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651997, 31.025911, 44.468124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531452, 31.337826, 44.687618>,  <35.459126, 31.524975, 44.819317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531452, 31.337826, 44.687618>,  <35.651997, 31.025911, 44.468124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531452, 31.337826, 44.687618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071760, -0.555313, 0.828539,
		0.950804, 0.289071, 0.111395,
		-0.301366, 0.779785, 0.548738,
		35.441044, 31.571762, 44.852242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069324, 31.040638, 45.003300>,  <35.651997, 31.025911, 44.468124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069324, 31.040638, 45.003300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770069, 31.263960, 45.146732>,  <35.590515, 31.397953, 45.232792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770069, 31.263960, 45.146732>,  <36.069324, 31.040638, 45.003300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770069, 31.263960, 45.146732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171973, -0.358798, 0.917436,
		0.640868, 0.748038, 0.172417,
		-0.748140, 0.558304, 0.358585,
		35.545628, 31.431452, 45.254307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306343, 31.345930, 45.626087>,  <36.069324, 31.040638, 45.003300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306343, 31.345930, 45.626087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907455, 31.349749, 45.655640>,  <35.668121, 31.352039, 45.673370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907455, 31.349749, 45.655640>,  <36.306343, 31.345930, 45.626087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907455, 31.349749, 45.655640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068344, -0.277386, 0.958325,
		0.029641, 0.960711, 0.275963,
		-0.997221, 0.009545, 0.073881,
		35.608288, 31.352612, 45.677803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181213, 31.659349, 46.254314>,  <36.306343, 31.345930, 45.626087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181213, 31.659349, 46.254314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865662, 31.436436, 46.150700>,  <35.676331, 31.302687, 46.088531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865662, 31.436436, 46.150700>,  <36.181213, 31.659349, 46.254314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865662, 31.436436, 46.150700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121022, -0.272374, 0.954550,
		-0.602511, 0.784376, 0.147427,
		-0.788881, -0.557285, -0.259035,
		35.628998, 31.269251, 46.072990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780083, 31.686840, 46.779396>,  <36.181213, 31.659349, 46.254314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780083, 31.686840, 46.779396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648933, 31.354807, 46.598969>,  <35.570244, 31.155586, 46.490711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648933, 31.354807, 46.598969>,  <35.780083, 31.686840, 46.779396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648933, 31.354807, 46.598969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045440, -0.463049, 0.885167,
		-0.943629, 0.310717, 0.114102,
		-0.327871, -0.830084, -0.451066,
		35.550571, 31.105782, 46.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173309, 31.492201, 47.146107>,  <35.780083, 31.686840, 46.779396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173309, 31.492201, 47.146107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266293, 31.165668, 46.934608>,  <35.322083, 30.969749, 46.807709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266293, 31.165668, 46.934608>,  <35.173309, 31.492201, 47.146107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266293, 31.165668, 46.934608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147486, -0.566933, 0.810453,
		-0.961358, -0.110417, -0.252187,
		0.232461, -0.816330, -0.528741,
		35.336029, 30.920769, 46.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570908, 31.094254, 47.217007>,  <35.173309, 31.492201, 47.146107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570908, 31.094254, 47.217007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882477, 30.854349, 47.143715>,  <35.069416, 30.710407, 47.099739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882477, 30.854349, 47.143715>,  <34.570908, 31.094254, 47.217007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882477, 30.854349, 47.143715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322153, -0.633346, 0.703626,
		-0.538051, -0.489043, -0.686541,
		0.778921, -0.599758, -0.183226,
		35.116154, 30.674421, 47.088745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353336, 30.430328, 47.196838>,  <34.570908, 31.094254, 47.217007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353336, 30.430328, 47.196838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742939, 30.351740, 47.241932>,  <34.976700, 30.304586, 47.268986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742939, 30.351740, 47.241932>,  <34.353336, 30.430328, 47.196838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742939, 30.351740, 47.241932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213180, -0.626853, 0.749406,
		-0.076569, -0.753960, -0.652443,
		0.974008, -0.196469, 0.112732,
		35.035141, 30.292799, 47.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428383, 29.748751, 47.482346>,  <34.353336, 30.430328, 47.196838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428383, 29.748751, 47.482346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811527, 29.850985, 47.534767>,  <35.041416, 29.912325, 47.566219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811527, 29.850985, 47.534767>,  <34.428383, 29.748751, 47.482346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811527, 29.850985, 47.534767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022217, -0.520832, 0.853370,
		0.286364, -0.814500, -0.504564,
		0.957863, 0.255584, 0.131052,
		35.098885, 29.927660, 47.574081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689213, 29.124041, 47.830723>,  <34.428383, 29.748751, 47.482346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689213, 29.124041, 47.830723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953266, 29.411837, 47.917034>,  <35.111698, 29.584515, 47.968822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953266, 29.411837, 47.917034>,  <34.689213, 29.124041, 47.830723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953266, 29.411837, 47.917034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142062, -0.401669, 0.904699,
		0.737596, -0.566564, -0.367366,
		0.660129, 0.719491, 0.215782,
		35.151306, 29.627684, 47.981770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262135, 28.847008, 48.112286>,  <34.689213, 29.124041, 47.830723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262135, 28.847008, 48.112286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290154, 29.220070, 48.253845>,  <35.306965, 29.443907, 48.338779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290154, 29.220070, 48.253845>,  <35.262135, 28.847008, 48.112286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290154, 29.220070, 48.253845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149713, -0.360579, 0.920635,
		0.986245, -0.011507, -0.164890,
		0.070050, 0.932658, 0.353897,
		35.311169, 29.499866, 48.360016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911816, 28.872120, 48.466087>,  <35.262135, 28.847008, 48.112286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911816, 28.872120, 48.466087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687572, 29.165321, 48.620190>,  <35.553024, 29.341242, 48.712650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687572, 29.165321, 48.620190>,  <35.911816, 28.872120, 48.466087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687572, 29.165321, 48.620190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291158, -0.261050, 0.920369,
		0.775205, 0.628139, -0.067072,
		-0.560611, 0.733003, 0.385255,
		35.519390, 29.385221, 48.735767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337196, 29.214125, 48.981949>,  <35.911816, 28.872120, 48.466087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337196, 29.214125, 48.981949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957027, 29.314825, 49.054970>,  <35.728928, 29.375246, 49.098782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957027, 29.314825, 49.054970>,  <36.337196, 29.214125, 48.981949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957027, 29.314825, 49.054970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132942, -0.201771, 0.970369,
		0.281126, 0.946525, 0.158298,
		-0.950418, 0.251752, 0.182556,
		35.671902, 29.390350, 49.109737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307133, 29.497587, 49.719398>,  <36.337196, 29.214125, 48.981949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307133, 29.497587, 49.719398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932617, 29.400711, 49.617653>,  <35.707909, 29.342587, 49.556606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932617, 29.400711, 49.617653>,  <36.307133, 29.497587, 49.719398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932617, 29.400711, 49.617653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160900, -0.347986, 0.923589,
		-0.312198, 0.905677, 0.286849,
		-0.936292, -0.242189, -0.254364,
		35.651730, 29.328054, 49.541344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976730, 29.582525, 50.340118>,  <36.307133, 29.497587, 49.719398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976730, 29.582525, 50.340118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724781, 29.339441, 50.146645>,  <35.573612, 29.193590, 50.030560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.724781, 29.339441, 50.146645>,  <35.976730, 29.582525, 50.340118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724781, 29.339441, 50.146645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321101, -0.363293, 0.874593,
		-0.707218, 0.706192, 0.033691,
		-0.629870, -0.607710, -0.483686,
		35.535820, 29.157129, 50.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334026, 29.489334, 50.826431>,  <35.976730, 29.582525, 50.340118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334026, 29.489334, 50.826431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383244, 29.185932, 50.570454>,  <35.412773, 29.003891, 50.416866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383244, 29.185932, 50.570454>,  <35.334026, 29.489334, 50.826431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383244, 29.185932, 50.570454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191091, -0.650884, 0.734734,
		-0.973830, 0.031883, -0.225031,
		0.123043, -0.758507, -0.639944,
		35.420158, 28.958380, 50.378471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695988, 29.088446, 50.905090>,  <35.334026, 29.489334, 50.826431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695988, 29.088446, 50.905090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990131, 28.868374, 50.746822>,  <35.166618, 28.736330, 50.651863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990131, 28.868374, 50.746822>,  <34.695988, 29.088446, 50.905090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990131, 28.868374, 50.746822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267030, -0.771860, 0.576999,
		-0.622851, -0.318646, -0.714508,
		0.735358, -0.550179, -0.395665,
		35.210739, 28.703320, 50.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424709, 28.458078, 50.758499>,  <34.695988, 29.088446, 50.905090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424709, 28.458078, 50.758499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815372, 28.438700, 50.842205>,  <35.049770, 28.427073, 50.892429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815372, 28.438700, 50.842205>,  <34.424709, 28.458078, 50.758499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815372, 28.438700, 50.842205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152554, -0.842290, 0.516987,
		0.151212, -0.536844, -0.830020,
		0.976659, -0.048448, 0.209262,
		35.108372, 28.424166, 50.904984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977993, 28.069887, 51.139885>,  <34.424709, 28.458078, 50.758499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977993, 28.069887, 51.139885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.581284, 28.018686, 51.139679>,  <33.343258, 27.987965, 51.139557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.581284, 28.018686, 51.139679>,  <33.977993, 28.069887, 51.139885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581284, 28.018686, 51.139679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021536, 0.170832, -0.985065,
		0.126174, -0.976951, -0.172183,
		-0.991774, -0.127998, -0.000515,
		33.283752, 27.980286, 51.139523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869286, 28.096901, 50.478451>,  <33.977993, 28.069887, 51.139885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869286, 28.096901, 50.478451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498207, 28.080105, 50.626839>,  <33.275558, 28.070028, 50.715870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498207, 28.080105, 50.626839>,  <33.869286, 28.096901, 50.478451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498207, 28.080105, 50.626839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367771, 0.273705, -0.888724,
		-0.064219, -0.960897, -0.269358,
		-0.927697, -0.041989, 0.370967,
		33.219898, 28.067509, 50.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485931, 27.720772, 50.109653>,  <33.869286, 28.096901, 50.478451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485931, 27.720772, 50.109653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239040, 27.972862, 50.298058>,  <33.090904, 28.124117, 50.411098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239040, 27.972862, 50.298058>,  <33.485931, 27.720772, 50.109653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239040, 27.972862, 50.298058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293938, 0.370593, -0.881057,
		-0.729817, -0.682258, -0.043493,
		-0.617226, 0.630226, 0.471007,
		33.053871, 28.161930, 50.439358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890602, 27.698811, 49.686588>,  <33.485931, 27.720772, 50.109653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890602, 27.698811, 49.686588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857689, 28.018343, 49.924950>,  <32.837940, 28.210062, 50.067966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857689, 28.018343, 49.924950>,  <32.890602, 27.698811, 49.686588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857689, 28.018343, 49.924950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487003, 0.489451, -0.723371,
		-0.869516, -0.349727, 0.348759,
		-0.082283, 0.798830, 0.595903,
		32.833004, 28.257992, 50.103722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178505, 27.911484, 49.667259>,  <32.890602, 27.698811, 49.686588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178505, 27.911484, 49.667259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.396839, 28.236553, 49.748863>,  <32.527840, 28.431595, 49.797825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.396839, 28.236553, 49.748863>,  <32.178505, 27.911484, 49.667259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396839, 28.236553, 49.748863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269425, 0.400784, -0.875661,
		-0.793393, 0.423002, 0.437718,
		0.545837, 0.812675, 0.204012,
		32.560589, 28.480356, 49.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705072, 28.519627, 49.440445>,  <32.178505, 27.911484, 49.667259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705072, 28.519627, 49.440445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090382, 28.627014, 49.438210>,  <32.321568, 28.691446, 49.436867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090382, 28.627014, 49.438210>,  <31.705072, 28.519627, 49.440445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090382, 28.627014, 49.438210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128318, 0.441927, -0.887826,
		-0.235882, 0.855936, 0.460145,
		0.963273, 0.268467, -0.005589,
		32.379364, 28.707554, 49.436531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665676, 29.285700, 49.476562>,  <31.705072, 28.519627, 49.440445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665676, 29.285700, 49.476562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018799, 29.170858, 49.327847>,  <32.230671, 29.101954, 49.238617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018799, 29.170858, 49.327847>,  <31.665676, 29.285700, 49.476562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018799, 29.170858, 49.327847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165614, 0.550419, -0.818297,
		0.439573, 0.783971, 0.438366,
		0.882806, -0.287102, -0.371786,
		32.283642, 29.084728, 49.216312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946346, 29.908133, 49.172531>,  <31.665676, 29.285700, 49.476562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946346, 29.908133, 49.172531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178543, 29.623812, 49.013641>,  <32.317860, 29.453220, 48.918308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178543, 29.623812, 49.013641>,  <31.946346, 29.908133, 49.172531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178543, 29.623812, 49.013641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025726, 0.503601, -0.863553,
		0.813858, 0.491068, 0.310623,
		0.580493, -0.710801, -0.397227,
		32.352692, 29.410572, 48.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462200, 30.251245, 48.875103>,  <31.946346, 29.908133, 49.172531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462200, 30.251245, 48.875103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458015, 29.908150, 48.669510>,  <32.455505, 29.702291, 48.546154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458015, 29.908150, 48.669510>,  <32.462200, 30.251245, 48.875103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458015, 29.908150, 48.669510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231418, 0.497977, -0.835742,
		0.972798, -0.127684, 0.193288,
		-0.010458, -0.857739, -0.513979,
		32.454880, 29.650827, 48.515316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900257, 30.291777, 48.306583>,  <32.462200, 30.251245, 48.875103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900257, 30.291777, 48.306583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717785, 29.965754, 48.163708>,  <32.608303, 29.770140, 48.077984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717785, 29.965754, 48.163708>,  <32.900257, 30.291777, 48.306583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717785, 29.965754, 48.163708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264056, 0.259331, -0.928990,
		0.849810, -0.518101, 0.096921,
		-0.456176, -0.815058, -0.357189,
		32.580933, 29.721237, 48.056549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315300, 30.024288, 47.874249>,  <32.900257, 30.291777, 48.306583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315300, 30.024288, 47.874249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954361, 29.902683, 47.752041>,  <32.737797, 29.829720, 47.678719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954361, 29.902683, 47.752041>,  <33.315300, 30.024288, 47.874249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954361, 29.902683, 47.752041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167998, 0.404690, -0.898890,
		0.396901, -0.862444, -0.314103,
		-0.902356, -0.304001, -0.305511,
		32.683655, 29.811480, 47.660385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376621, 29.675919, 47.169895>,  <33.315300, 30.024288, 47.874249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376621, 29.675919, 47.169895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001297, 29.806150, 47.216499>,  <32.776104, 29.884289, 47.244461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001297, 29.806150, 47.216499>,  <33.376621, 29.675919, 47.169895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001297, 29.806150, 47.216499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067734, 0.503456, -0.861362,
		-0.339099, -0.800332, -0.494450,
		-0.938309, 0.325578, 0.116511,
		32.719803, 29.903824, 47.251453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964405, 29.388231, 46.590191>,  <33.376621, 29.675919, 47.169895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964405, 29.388231, 46.590191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775230, 29.708853, 46.736526>,  <32.661724, 29.901226, 46.824326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775230, 29.708853, 46.736526>,  <32.964405, 29.388231, 46.590191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775230, 29.708853, 46.736526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121239, 0.470458, -0.874054,
		-0.872713, -0.369023, -0.319678,
		-0.472941, 0.801556, 0.365835,
		32.633347, 29.949320, 46.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618641, 29.742476, 46.061497>,  <32.964405, 29.388231, 46.590191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618641, 29.742476, 46.061497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563683, 30.052557, 46.308132>,  <32.530708, 30.238605, 46.456112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563683, 30.052557, 46.308132>,  <32.618641, 29.742476, 46.061497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563683, 30.052557, 46.308132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132203, 0.631273, -0.764210,
		-0.981654, -0.023482, -0.189217,
		-0.137393, 0.775205, 0.616587,
		32.522465, 30.285118, 46.493107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151909, 30.193527, 45.765484>,  <32.618641, 29.742476, 46.061497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151909, 30.193527, 45.765484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363262, 30.402925, 46.032845>,  <32.490074, 30.528564, 46.193260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363262, 30.402925, 46.032845>,  <32.151909, 30.193527, 45.765484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363262, 30.402925, 46.032845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006234, 0.784866, -0.619634,
		-0.848984, 0.331571, 0.411446,
		0.528383, 0.523494, 0.668406,
		32.521778, 30.559973, 46.233368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015205, 30.793074, 45.545513>,  <32.151909, 30.193527, 45.765484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015205, 30.793074, 45.545513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313080, 30.910574, 45.785229>,  <32.491806, 30.981075, 45.929058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313080, 30.910574, 45.785229>,  <32.015205, 30.793074, 45.545513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313080, 30.910574, 45.785229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049278, 0.871279, -0.488309,
		-0.665588, 0.393171, 0.634357,
		0.744690, 0.293753, 0.599288,
		32.536488, 30.998699, 45.965015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818064, 31.250982, 45.933556>,  <32.015205, 30.793074, 45.545513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818064, 31.250982, 45.933556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210926, 31.314875, 45.893845>,  <32.446644, 31.353210, 45.870018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210926, 31.314875, 45.893845>,  <31.818064, 31.250982, 45.933556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210926, 31.314875, 45.893845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186560, 0.894215, -0.406910,
		0.023784, 0.418171, 0.908057,
		0.982156, 0.159729, -0.099282,
		32.505573, 31.362793, 45.864059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888601, 31.983093, 45.933170>,  <31.818064, 31.250982, 45.933556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888601, 31.983093, 45.933170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259689, 31.876226, 45.828896>,  <32.482342, 31.812107, 45.766331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259689, 31.876226, 45.828896>,  <31.888601, 31.983093, 45.933170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259689, 31.876226, 45.828896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133701, 0.889872, -0.436179,
		0.348510, 0.369798, 0.861272,
		0.927720, -0.267166, -0.260686,
		32.538006, 31.796076, 45.750690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374512, 32.537815, 46.039894>,  <31.888601, 31.983093, 45.933170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374512, 32.537815, 46.039894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524738, 32.310398, 45.747128>,  <32.614876, 32.173946, 45.571468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524738, 32.310398, 45.747128>,  <32.374512, 32.537815, 46.039894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524738, 32.310398, 45.747128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078331, 0.806379, -0.586189,
		0.923478, 0.162822, 0.347385,
		0.375569, -0.568544, -0.731919,
		32.637409, 32.139835, 45.527554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522305, 33.048550, 45.497616>,  <32.374512, 32.537815, 46.039894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522305, 33.048550, 45.497616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568443, 32.696289, 45.313816>,  <32.596127, 32.484932, 45.203537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568443, 32.696289, 45.313816>,  <32.522305, 33.048550, 45.497616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568443, 32.696289, 45.313816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031745, 0.465621, -0.884415,
		0.992819, 0.087424, 0.081663,
		0.115343, -0.880656, -0.459502,
		32.603046, 32.432091, 45.175964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100498, 33.162659, 45.067650>,  <32.522305, 33.048550, 45.497616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100498, 33.162659, 45.067650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889389, 32.854668, 44.924217>,  <32.762722, 32.669872, 44.838158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889389, 32.854668, 44.924217>,  <33.100498, 33.162659, 45.067650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889389, 32.854668, 44.924217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105470, 0.359495, -0.927167,
		0.842810, -0.527157, -0.108523,
		-0.527776, -0.769980, -0.358586,
		32.731056, 32.623672, 44.816643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.698189, 30.337948, 42.355019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350067, 30.484694, 42.223576>,  <41.141193, 30.572741, 42.144711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350067, 30.484694, 42.223576>,  <41.698189, 30.337948, 42.355019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350067, 30.484694, 42.223576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468316, 0.409856, -0.782751,
		-0.152485, -0.835121, -0.528508,
		-0.870304, 0.366866, -0.328603,
		41.088978, 30.594753, 42.124996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538853, 30.154711, 41.660965>,  <41.698189, 30.337948, 42.355019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538853, 30.154711, 41.660965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299511, 30.475073, 41.651756>,  <41.155907, 30.667290, 41.646233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299511, 30.475073, 41.651756>,  <41.538853, 30.154711, 41.660965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299511, 30.475073, 41.651756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330431, 0.220483, -0.917716,
		-0.729927, -0.556723, -0.396569,
		-0.598350, 0.800904, -0.023022,
		41.120007, 30.715343, 41.644848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189926, 30.138376, 40.997925>,  <41.538853, 30.154711, 41.660965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189926, 30.138376, 40.997925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157581, 30.517794, 41.120380>,  <41.138172, 30.745445, 41.193855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157581, 30.517794, 41.120380>,  <41.189926, 30.138376, 40.997925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157581, 30.517794, 41.120380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099358, 0.313288, -0.944446,
		-0.991760, -0.045955, -0.119580,
		-0.080865, 0.948546, 0.306141,
		41.133320, 30.802357, 41.212223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719326, 30.451902, 40.604519>,  <41.189926, 30.138376, 40.997925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719326, 30.451902, 40.604519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926479, 30.763073, 40.746857>,  <41.050770, 30.949776, 40.832260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.926479, 30.763073, 40.746857>,  <40.719326, 30.451902, 40.604519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926479, 30.763073, 40.746857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105099, 0.354966, -0.928953,
		-0.848971, 0.518488, 0.102071,
		0.517883, 0.777926, 0.355848,
		41.081844, 30.996450, 40.853611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376175, 30.921661, 40.317871>,  <40.719326, 30.451902, 40.604519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376175, 30.921661, 40.317871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722366, 31.082073, 40.437954>,  <40.930080, 31.178320, 40.510002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722366, 31.082073, 40.437954>,  <40.376175, 30.921661, 40.317871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722366, 31.082073, 40.437954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019107, 0.572417, -0.819740,
		-0.500585, 0.715202, 0.487751,
		0.865477, 0.401030, 0.300209,
		40.982010, 31.202383, 40.528015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292114, 31.588541, 40.257713>,  <40.376175, 30.921661, 40.317871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292114, 31.588541, 40.257713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687347, 31.527147, 40.253204>,  <40.924488, 31.490311, 40.250500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687347, 31.527147, 40.253204>,  <40.292114, 31.588541, 40.257713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687347, 31.527147, 40.253204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078907, 0.568132, -0.819146,
		0.132127, 0.808498, 0.573475,
		0.988087, -0.153483, -0.011269,
		40.983772, 31.481102, 40.249825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469990, 32.211071, 40.002079>,  <40.292114, 31.588541, 40.257713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469990, 32.211071, 40.002079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809025, 32.002052, 39.965137>,  <41.012447, 31.876640, 39.942970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809025, 32.002052, 39.965137>,  <40.469990, 32.211071, 40.002079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809025, 32.002052, 39.965137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219955, 0.504357, -0.835011,
		0.482915, 0.687435, 0.542426,
		0.847592, -0.522549, -0.092357,
		41.063301, 31.845287, 39.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057434, 32.563900, 39.847260>,  <40.469990, 32.211071, 40.002079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057434, 32.563900, 39.847260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.179371, 32.215549, 39.693043>,  <41.252533, 32.006538, 39.600513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.179371, 32.215549, 39.693043>,  <41.057434, 32.563900, 39.847260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179371, 32.215549, 39.693043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514474, 0.491238, -0.702852,
		0.801491, 0.015909, 0.597794,
		0.304841, -0.870880, -0.385539,
		41.270824, 31.954285, 39.577381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712448, 32.710197, 39.749813>,  <41.057434, 32.563900, 39.847260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712448, 32.710197, 39.749813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651089, 32.373409, 39.542912>,  <41.614273, 32.171337, 39.418770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651089, 32.373409, 39.542912>,  <41.712448, 32.710197, 39.749813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651089, 32.373409, 39.542912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527354, 0.372922, -0.763431,
		0.835683, -0.389885, 0.386812,
		-0.153400, -0.841973, -0.517252,
		41.605068, 32.120819, 39.387737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380917, 32.370678, 39.540054>,  <41.712448, 32.710197, 39.749813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380917, 32.370678, 39.540054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093208, 32.256042, 39.286911>,  <41.920582, 32.187263, 39.135025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093208, 32.256042, 39.286911>,  <42.380917, 32.370678, 39.540054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093208, 32.256042, 39.286911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509693, 0.401321, -0.761022,
		0.472081, -0.869948, -0.142588,
		-0.719272, -0.286588, -0.632862,
		41.877426, 32.170067, 39.097054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631268, 32.083523, 38.745159>,  <42.380917, 32.370678, 39.540054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631268, 32.083523, 38.745159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263790, 32.206902, 38.646477>,  <42.043304, 32.280930, 38.587269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263790, 32.206902, 38.646477>,  <42.631268, 32.083523, 38.745159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263790, 32.206902, 38.646477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341080, 0.304586, -0.889321,
		-0.199165, -0.901159, -0.385026,
		-0.918694, 0.308446, -0.246705,
		41.988182, 32.299435, 38.572464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534988, 31.824104, 38.032967>,  <42.631268, 32.083523, 38.745159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534988, 31.824104, 38.032967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233307, 32.082920, 38.077724>,  <42.052299, 32.238209, 38.104580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233307, 32.082920, 38.077724>,  <42.534988, 31.824104, 38.032967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233307, 32.082920, 38.077724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229675, 0.419575, -0.878184,
		-0.615166, -0.636629, -0.465053,
		-0.754202, 0.647040, 0.111890,
		42.007046, 32.277031, 38.111290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411774, 31.964029, 37.411171>,  <42.534988, 31.824104, 38.032967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411774, 31.964029, 37.411171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201519, 32.275326, 37.548607>,  <42.075367, 32.462105, 37.631069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.201519, 32.275326, 37.548607>,  <42.411774, 31.964029, 37.411171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201519, 32.275326, 37.548607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103733, 0.459502, -0.882098,
		-0.844362, -0.428020, -0.322259,
		-0.525634, 0.778239, 0.343587,
		42.043827, 32.508797, 37.651684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158092, 32.244061, 36.841282>,  <42.411774, 31.964029, 37.411171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158092, 32.244061, 36.841282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140106, 32.535969, 37.114166>,  <42.129314, 32.711113, 37.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140106, 32.535969, 37.114166>,  <42.158092, 32.244061, 36.841282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140106, 32.535969, 37.114166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217672, 0.673652, -0.706266,
		-0.974986, 0.116742, -0.189141,
		-0.044964, 0.729770, 0.682212,
		42.126617, 32.754898, 37.318829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556019, 32.620567, 36.685799>,  <42.158092, 32.244061, 36.841282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556019, 32.620567, 36.685799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819721, 32.845554, 36.885403>,  <41.977943, 32.980549, 37.005165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819721, 32.845554, 36.885403>,  <41.556019, 32.620567, 36.685799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819721, 32.845554, 36.885403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010489, 0.670463, -0.741869,
		-0.751848, 0.483845, 0.447904,
		0.659253, 0.562470, 0.499012,
		42.017498, 33.014294, 37.035107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287388, 33.257515, 36.681488>,  <41.556019, 32.620567, 36.685799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287388, 33.257515, 36.681488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.672138, 33.349964, 36.739971>,  <41.902988, 33.405434, 36.775063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.672138, 33.349964, 36.739971>,  <41.287388, 33.257515, 36.681488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672138, 33.349964, 36.739971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041442, 0.651616, -0.757416,
		-0.270327, 0.722481, 0.636352,
		0.961876, 0.231121, 0.146208,
		41.960701, 33.419300, 36.783833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310825, 33.961044, 36.479607>,  <41.287388, 33.257515, 36.681488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310825, 33.961044, 36.479607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700073, 33.876656, 36.516541>,  <41.933624, 33.826023, 36.538700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700073, 33.876656, 36.516541>,  <41.310825, 33.961044, 36.479607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700073, 33.876656, 36.516541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213194, 0.673685, -0.707600,
		0.087076, 0.708266, 0.700555,
		0.973122, -0.210969, 0.092336,
		41.992008, 33.813366, 36.544243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745712, 34.588764, 36.566917>,  <41.310825, 33.961044, 36.479607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745712, 34.588764, 36.566917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010166, 34.318085, 36.437317>,  <42.168839, 34.155678, 36.359558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010166, 34.318085, 36.437317>,  <41.745712, 34.588764, 36.566917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010166, 34.318085, 36.437317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347829, 0.659087, -0.666798,
		0.664765, 0.328149, 0.671122,
		0.661137, -0.676700, -0.323998,
		42.208508, 34.115074, 36.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374802, 34.829998, 36.500549>,  <41.745712, 34.588764, 36.566917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374802, 34.829998, 36.500549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440937, 34.536644, 36.236790>,  <42.480618, 34.360630, 36.078533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440937, 34.536644, 36.236790>,  <42.374802, 34.829998, 36.500549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440937, 34.536644, 36.236790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375250, 0.665095, -0.645628,
		0.912059, -0.140696, 0.385166,
		0.165335, -0.733385, -0.659402,
		42.490536, 34.316628, 36.038971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059925, 34.922173, 36.271519>,  <42.374802, 34.829998, 36.500549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059925, 34.922173, 36.271519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903763, 34.685501, 35.989384>,  <42.810066, 34.543499, 35.820103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903763, 34.685501, 35.989384>,  <43.059925, 34.922173, 36.271519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903763, 34.685501, 35.989384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223228, 0.682440, -0.696021,
		0.893171, -0.429181, -0.134348,
		-0.390404, -0.591676, -0.705341,
		42.786640, 34.507999, 35.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613029, 34.769062, 35.874004>,  <43.059925, 34.922173, 36.271519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613029, 34.769062, 35.874004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279598, 34.730106, 35.656502>,  <43.079540, 34.706734, 35.526001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279598, 34.730106, 35.656502>,  <43.613029, 34.769062, 35.874004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279598, 34.730106, 35.656502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408710, 0.553487, -0.725678,
		0.371633, -0.827144, -0.421569,
		-0.833574, -0.097386, -0.543756,
		43.029526, 34.700890, 35.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284149, 34.992302, 35.466858>,  <43.613029, 34.769062, 35.874004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284149, 34.992302, 35.466858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658775, 35.048435, 35.595325>,  <44.883553, 35.082115, 35.672405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658775, 35.048435, 35.595325>,  <44.284149, 34.992302, 35.466858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658775, 35.048435, 35.595325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268123, -0.303308, 0.914393,
		0.225733, -0.942503, -0.246441,
		0.936566, 0.140332, 0.321173,
		44.939747, 35.090534, 35.691677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385445, 34.432442, 35.864399>,  <44.284149, 34.992302, 35.466858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385445, 34.432442, 35.864399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652851, 34.711861, 35.966480>,  <44.813293, 34.879509, 36.027729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652851, 34.711861, 35.966480>,  <44.385445, 34.432442, 35.864399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652851, 34.711861, 35.966480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021417, -0.324928, 0.945496,
		0.743392, -0.637542, -0.202258,
		0.668513, 0.698543, 0.255203,
		44.853405, 34.921425, 36.043041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891731, 34.125153, 36.292019>,  <44.385445, 34.432442, 35.864399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891731, 34.125153, 36.292019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.931221, 34.514297, 36.375729>,  <44.954914, 34.747784, 36.425957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.931221, 34.514297, 36.375729>,  <44.891731, 34.125153, 36.292019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931221, 34.514297, 36.375729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113098, -0.197973, 0.973661,
		0.988667, -0.119796, 0.090483,
		0.098727, 0.972860, 0.209278,
		44.960838, 34.806156, 36.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351204, 34.139240, 36.851135>,  <44.891731, 34.125153, 36.292019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351204, 34.139240, 36.851135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121227, 34.466446, 36.844227>,  <44.983242, 34.662769, 36.840080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121227, 34.466446, 36.844227>,  <45.351204, 34.139240, 36.851135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121227, 34.466446, 36.844227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268426, -0.168638, 0.948424,
		0.772912, 0.549922, 0.316533,
		-0.574939, 0.818014, -0.017271,
		44.948746, 34.711849, 36.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439461, 34.480663, 37.547810>,  <45.351204, 34.139240, 36.851135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439461, 34.480663, 37.547810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100651, 34.629066, 37.395542>,  <44.897366, 34.718109, 37.304180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100651, 34.629066, 37.395542>,  <45.439461, 34.480663, 37.547810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100651, 34.629066, 37.395542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357355, 0.132721, 0.924490,
		0.393513, 0.919098, 0.020163,
		-0.847021, 0.371004, -0.380672,
		44.846546, 34.740368, 37.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272747, 34.964359, 38.058479>,  <45.439461, 34.480663, 37.547810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272747, 34.964359, 38.058479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930584, 34.916443, 37.856911>,  <44.725288, 34.887691, 37.735970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930584, 34.916443, 37.856911>,  <45.272747, 34.964359, 38.058479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930584, 34.916443, 37.856911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517653, 0.164102, 0.839706,
		-0.017898, 0.979142, -0.202386,
		-0.855403, -0.119795, -0.503919,
		44.673962, 34.880505, 37.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802074, 35.431629, 38.470066>,  <45.272747, 34.964359, 38.058479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802074, 35.431629, 38.470066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543266, 35.226456, 38.244408>,  <44.387981, 35.103352, 38.109013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543266, 35.226456, 38.244408>,  <44.802074, 35.431629, 38.470066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543266, 35.226456, 38.244408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755963, 0.335104, 0.562338,
		-0.099398, 0.790317, -0.604582,
		-0.647023, -0.512937, -0.564142,
		44.349159, 35.072575, 38.075165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376991, 35.931129, 38.435577>,  <44.802074, 35.431629, 38.470066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376991, 35.931129, 38.435577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198177, 35.583309, 38.351635>,  <44.090889, 35.374615, 38.301270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198177, 35.583309, 38.351635>,  <44.376991, 35.931129, 38.435577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198177, 35.583309, 38.351635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748188, 0.234885, 0.620519,
		-0.490284, 0.434400, -0.755591,
		-0.447031, -0.869555, -0.209852,
		44.064068, 35.322441, 38.288681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640553, 35.998829, 38.441666>,  <44.376991, 35.931129, 38.435577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640553, 35.998829, 38.441666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675793, 35.602524, 38.482903>,  <43.696938, 35.364742, 38.507645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675793, 35.602524, 38.482903>,  <43.640553, 35.998829, 38.441666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675793, 35.602524, 38.482903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743030, 0.003563, 0.669248,
		-0.663433, -0.135565, -0.735852,
		0.088105, -0.990762, 0.103093,
		43.702225, 35.305294, 38.513832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925175, 35.677284, 38.367496>,  <43.640553, 35.998829, 38.441666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925175, 35.677284, 38.367496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172585, 35.452614, 38.587296>,  <43.321030, 35.317810, 38.719173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172585, 35.452614, 38.587296>,  <42.925175, 35.677284, 38.367496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172585, 35.452614, 38.587296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731556, -0.156393, 0.663602,
		-0.286793, -0.812441, -0.507631,
		0.618528, -0.561677, 0.549493,
		43.358143, 35.284111, 38.752144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478977, 35.219318, 38.658855>,  <42.925175, 35.677284, 38.367496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478977, 35.219318, 38.658855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807907, 35.167053, 38.880379>,  <43.005264, 35.135693, 39.013294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807907, 35.167053, 38.880379>,  <42.478977, 35.219318, 38.658855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807907, 35.167053, 38.880379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568981, -0.177583, 0.802948,
		-0.006569, -0.975393, -0.220376,
		0.822325, -0.130664, 0.553813,
		43.054604, 35.127853, 39.046524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459702, 34.515141, 38.946476>,  <42.478977, 35.219318, 38.658855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459702, 34.515141, 38.946476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.691479, 34.744331, 39.178322>,  <42.830544, 34.881844, 39.317429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.691479, 34.744331, 39.178322>,  <42.459702, 34.515141, 38.946476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691479, 34.744331, 39.178322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500621, -0.310975, 0.807882,
		0.643140, -0.758285, 0.106652,
		0.579438, 0.572974, 0.579614,
		42.865311, 34.916225, 39.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671082, 34.027039, 39.453640>,  <42.459702, 34.515141, 38.946476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671082, 34.027039, 39.453640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703075, 34.397144, 39.601963>,  <42.722271, 34.619205, 39.690956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703075, 34.397144, 39.601963>,  <42.671082, 34.027039, 39.453640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703075, 34.397144, 39.601963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472839, -0.292265, 0.831267,
		0.877512, -0.241817, 0.414124,
		0.079980, 0.925260, 0.370806,
		42.727070, 34.674721, 39.713203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962013, 33.925297, 40.172459>,  <42.671082, 34.027039, 39.453640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962013, 33.925297, 40.172459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783276, 34.280087, 40.125786>,  <42.676033, 34.492958, 40.097782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783276, 34.280087, 40.125786>,  <42.962013, 33.925297, 40.172459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783276, 34.280087, 40.125786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526701, -0.155399, 0.835725,
		0.723131, 0.434895, 0.536607,
		-0.446841, 0.886971, -0.116686,
		42.649223, 34.546177, 40.090778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824535, 34.147308, 40.911572>,  <42.962013, 33.925297, 40.172459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824535, 34.147308, 40.911572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599930, 34.391125, 40.687729>,  <42.465168, 34.537415, 40.553421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599930, 34.391125, 40.687729>,  <42.824535, 34.147308, 40.911572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599930, 34.391125, 40.687729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700564, 0.009706, 0.713523,
		0.440352, 0.792696, 0.421572,
		-0.561515, 0.609540, -0.559608,
		42.431477, 34.573986, 40.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675629, 34.757690, 41.278683>,  <42.824535, 34.147308, 40.911572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675629, 34.757690, 41.278683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383110, 34.762791, 41.005905>,  <42.207600, 34.765850, 40.842239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383110, 34.762791, 41.005905>,  <42.675629, 34.757690, 41.278683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383110, 34.762791, 41.005905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681654, 0.020987, 0.731374,
		0.023636, 0.999698, -0.006657,
		-0.731293, 0.012749, -0.681945,
		42.163723, 34.766617, 40.801323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153645, 35.195217, 41.521103>,  <42.675629, 34.757690, 41.278683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153645, 35.195217, 41.521103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952141, 34.984238, 41.247452>,  <41.831238, 34.857651, 41.083263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952141, 34.984238, 41.247452>,  <42.153645, 35.195217, 41.521103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952141, 34.984238, 41.247452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734774, -0.154808, 0.660410,
		-0.454237, 0.835366, -0.309566,
		-0.503761, -0.527444, -0.684125,
		41.801014, 34.826004, 41.042213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501732, 35.440578, 41.813663>,  <42.153645, 35.195217, 41.521103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501732, 35.440578, 41.813663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499428, 35.128551, 41.563393>,  <41.498047, 34.941338, 41.413231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499428, 35.128551, 41.563393>,  <41.501732, 35.440578, 41.813663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499428, 35.128551, 41.563393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588488, -0.503222, 0.632811,
		-0.808486, 0.371846, -0.456159,
		-0.005759, -0.780063, -0.625675,
		41.497700, 34.894531, 41.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772282, 35.306870, 41.620926>,  <41.501732, 35.440578, 41.813663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772282, 35.306870, 41.620926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984692, 34.979767, 41.532120>,  <41.112137, 34.783504, 41.478836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984692, 34.979767, 41.532120>,  <40.772282, 35.306870, 41.620926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984692, 34.979767, 41.532120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618394, -0.553127, 0.558247,
		-0.579311, -0.159151, -0.799419,
		0.531025, -0.817754, -0.222014,
		41.144001, 34.734440, 41.465515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260780, 34.841221, 41.359112>,  <40.772282, 35.306870, 41.620926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260780, 34.841221, 41.359112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554081, 34.594147, 41.472813>,  <40.730061, 34.445904, 41.541035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554081, 34.594147, 41.472813>,  <40.260780, 34.841221, 41.359112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554081, 34.594147, 41.472813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674210, -0.606266, 0.421761,
		-0.088182, -0.500906, -0.860997,
		0.733256, -0.617685, 0.284254,
		40.774059, 34.408840, 41.558090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961998, 34.150665, 41.173454>,  <40.260780, 34.841221, 41.359112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961998, 34.150665, 41.173454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256588, 34.093685, 41.437973>,  <40.433342, 34.059498, 41.596684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256588, 34.093685, 41.437973>,  <39.961998, 34.150665, 41.173454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256588, 34.093685, 41.437973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586453, -0.621691, 0.519205,
		0.337159, -0.770200, -0.541402,
		0.736476, -0.142452, 0.661295,
		40.477531, 34.050949, 41.636360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.176411, 34.546120, 41.350933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879604, 34.311508, 41.221073>,  <36.701519, 34.170742, 41.143158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879604, 34.311508, 41.221073>,  <37.176411, 34.546120, 41.350933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879604, 34.311508, 41.221073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313702, 0.124192, -0.941365,
		0.592455, -0.800351, 0.091842,
		-0.742016, -0.586527, -0.324650,
		36.656998, 34.135551, 41.123676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461212, 34.073872, 40.810791>,  <37.176411, 34.546120, 41.350933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461212, 34.073872, 40.810791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068176, 34.112705, 40.747437>,  <36.832355, 34.136005, 40.709423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068176, 34.112705, 40.747437>,  <37.461212, 34.073872, 40.810791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068176, 34.112705, 40.747437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171765, 0.150023, -0.973648,
		-0.070763, -0.983905, -0.164087,
		-0.982594, 0.097083, -0.158384,
		36.773399, 34.141830, 40.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454041, 33.725761, 40.135918>,  <37.461212, 34.073872, 40.810791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454041, 33.725761, 40.135918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098293, 33.906399, 40.164440>,  <36.884846, 34.014782, 40.181553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098293, 33.906399, 40.164440>,  <37.454041, 33.725761, 40.135918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098293, 33.906399, 40.164440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041512, 0.075551, -0.996277,
		-0.455297, -0.889021, -0.048447,
		-0.889371, 0.451591, 0.071303,
		36.831482, 34.041878, 40.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925224, 33.378174, 39.828068>,  <37.454041, 33.725761, 40.135918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925224, 33.378174, 39.828068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791214, 33.755051, 39.830521>,  <36.710808, 33.981174, 39.831993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791214, 33.755051, 39.830521>,  <36.925224, 33.378174, 39.828068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791214, 33.755051, 39.830521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090523, -0.025709, -0.995562,
		-0.937849, -0.334097, 0.093903,
		-0.335028, 0.942188, 0.006132,
		36.690704, 34.037708, 39.832359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553257, 33.358521, 39.187603>,  <36.925224, 33.378174, 39.828068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553257, 33.358521, 39.187603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553162, 33.746944, 39.283146>,  <36.553104, 33.980000, 39.340469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553162, 33.746944, 39.283146>,  <36.553257, 33.358521, 39.187603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553162, 33.746944, 39.283146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120301, 0.237090, -0.964010,
		-0.992737, -0.028965, 0.116762,
		-0.000240, 0.971056, 0.238853,
		36.553089, 34.038261, 39.354801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011486, 33.627628, 38.834263>,  <36.553257, 33.358521, 39.187603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011486, 33.627628, 38.834263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268208, 33.923958, 38.913536>,  <36.422241, 34.101753, 38.961102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268208, 33.923958, 38.913536>,  <36.011486, 33.627628, 38.834263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268208, 33.923958, 38.913536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118859, 0.351403, -0.928649,
		-0.757603, 0.572453, 0.313584,
		0.641802, 0.740820, 0.198183,
		36.460747, 34.146202, 38.972992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777870, 34.229542, 38.600716>,  <36.011486, 33.627628, 38.834263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777870, 34.229542, 38.600716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167454, 34.319717, 38.610359>,  <36.401203, 34.373821, 38.616146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167454, 34.319717, 38.610359>,  <35.777870, 34.229542, 38.600716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167454, 34.319717, 38.610359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075098, 0.421111, -0.903895,
		-0.213925, 0.878546, 0.427075,
		0.973959, 0.225439, 0.024109,
		36.459641, 34.387348, 38.617592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844448, 34.978901, 38.483620>,  <35.777870, 34.229542, 38.600716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844448, 34.978901, 38.483620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208172, 34.830288, 38.408657>,  <36.426407, 34.741119, 38.363678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208172, 34.830288, 38.408657>,  <35.844448, 34.978901, 38.483620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208172, 34.830288, 38.408657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039504, 0.525403, -0.849936,
		0.414244, 0.765450, 0.492431,
		0.909308, -0.371533, -0.187407,
		36.480965, 34.718826, 38.352436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305576, 35.500038, 38.474850>,  <35.844448, 34.978901, 38.483620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305576, 35.500038, 38.474850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449955, 35.208958, 38.241554>,  <36.536583, 35.034309, 38.101578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449955, 35.208958, 38.241554>,  <36.305576, 35.500038, 38.474850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449955, 35.208958, 38.241554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067131, 0.644048, -0.762034,
		0.930169, 0.235898, 0.281316,
		0.360943, -0.727705, -0.583237,
		36.558239, 34.990646, 38.066582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741528, 35.826584, 38.015583>,  <36.305576, 35.500038, 38.474850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741528, 35.826584, 38.015583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721348, 35.469360, 37.836739>,  <36.709240, 35.255028, 37.729431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721348, 35.469360, 37.836739>,  <36.741528, 35.826584, 38.015583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721348, 35.469360, 37.836739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093205, 0.449937, -0.888183,
		0.994368, -0.003134, -0.105936,
		-0.050448, -0.893055, -0.447111,
		36.706215, 35.201443, 37.702606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229641, 35.927467, 37.586109>,  <36.741528, 35.826584, 38.015583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229641, 35.927467, 37.586109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022415, 35.627972, 37.420704>,  <36.898079, 35.448273, 37.321461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022415, 35.627972, 37.420704>,  <37.229641, 35.927467, 37.586109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022415, 35.627972, 37.420704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040858, 0.461231, -0.886339,
		0.854364, -0.476078, -0.208356,
		-0.518067, -0.748743, -0.413510,
		36.866993, 35.403347, 37.296650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599689, 35.690399, 36.974533>,  <37.229641, 35.927467, 37.586109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599689, 35.690399, 36.974533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212570, 35.591022, 36.958321>,  <36.980297, 35.531399, 36.948593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212570, 35.591022, 36.958321>,  <37.599689, 35.690399, 36.974533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212570, 35.591022, 36.958321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088156, 0.485336, -0.869872,
		0.235782, -0.838288, -0.491609,
		-0.967799, -0.248438, -0.040534,
		36.922230, 35.516491, 36.946159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495918, 35.228905, 36.376789>,  <37.599689, 35.690399, 36.974533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495918, 35.228905, 36.376789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179665, 35.448704, 36.484818>,  <36.989910, 35.580585, 36.549633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179665, 35.448704, 36.484818>,  <37.495918, 35.228905, 36.376789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179665, 35.448704, 36.484818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091372, 0.330258, -0.939458,
		-0.605427, -0.767448, -0.210906,
		-0.790639, 0.549502, 0.270070,
		36.942474, 35.613556, 36.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209114, 35.318638, 36.401585>,  <37.495918, 35.228905, 36.376789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209114, 35.318638, 36.401585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447502, 35.114685, 36.153442>,  <38.590534, 34.992313, 36.004559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447502, 35.114685, 36.153442>,  <38.209114, 35.318638, 36.401585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447502, 35.114685, 36.153442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090028, -0.725244, 0.682580,
		-0.797945, -0.462646, -0.386319,
		0.595968, -0.509882, -0.620356,
		38.626293, 34.961720, 35.967335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965366, 34.625221, 36.187771>,  <38.209114, 35.318638, 36.401585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965366, 34.625221, 36.187771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363674, 34.597416, 36.163723>,  <38.602657, 34.580734, 36.149292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363674, 34.597416, 36.163723>,  <37.965366, 34.625221, 36.187771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363674, 34.597416, 36.163723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041121, -0.922025, 0.384940,
		-0.082190, -0.380839, -0.920981,
		0.995768, -0.069510, -0.060121,
		38.662403, 34.576565, 36.145687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162659, 34.060799, 35.800488>,  <37.965366, 34.625221, 36.187771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162659, 34.060799, 35.800488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493713, 34.124176, 36.015862>,  <38.692348, 34.162205, 36.145084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493713, 34.124176, 36.015862>,  <38.162659, 34.060799, 35.800488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493713, 34.124176, 36.015862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003596, -0.957808, 0.287385,
		0.561249, -0.239787, -0.792150,
		0.827639, 0.158446, 0.538432,
		38.742004, 34.171711, 36.177391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479912, 33.462917, 35.817669>,  <38.162659, 34.060799, 35.800488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479912, 33.462917, 35.817669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648182, 33.656677, 36.124496>,  <38.749146, 33.772934, 36.308594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648182, 33.656677, 36.124496>,  <38.479912, 33.462917, 35.817669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648182, 33.656677, 36.124496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109951, -0.866511, 0.486898,
		0.900524, -0.120486, -0.417780,
		0.420676, 0.484398, 0.767066,
		38.774384, 33.801998, 36.354618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071033, 32.993645, 36.014843>,  <38.479912, 33.462917, 35.817669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071033, 32.993645, 36.014843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976009, 33.229412, 36.323689>,  <38.918995, 33.370872, 36.508995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976009, 33.229412, 36.323689>,  <39.071033, 32.993645, 36.014843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976009, 33.229412, 36.323689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047945, -0.786782, 0.615366,
		0.970188, 0.183207, 0.158652,
		-0.237564, 0.589414, 0.772110,
		38.904739, 33.406235, 36.555321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366096, 32.624275, 36.560856>,  <39.071033, 32.993645, 36.014843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366096, 32.624275, 36.560856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125092, 32.875484, 36.757858>,  <38.980488, 33.026211, 36.876060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125092, 32.875484, 36.757858>,  <39.366096, 32.624275, 36.560856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125092, 32.875484, 36.757858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034835, -0.595809, 0.802370,
		0.797350, 0.500593, 0.337105,
		-0.602511, 0.628027, 0.492506,
		38.944340, 33.063892, 36.905609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692463, 32.711452, 37.182220>,  <39.366096, 32.624275, 36.560856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692463, 32.711452, 37.182220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305267, 32.802856, 37.223755>,  <39.072948, 32.857697, 37.248676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305267, 32.802856, 37.223755>,  <39.692463, 32.711452, 37.182220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305267, 32.802856, 37.223755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082383, -0.680047, 0.728526,
		0.237088, 0.696650, 0.677103,
		-0.967989, 0.228506, 0.103839,
		39.014870, 32.871407, 37.254906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659306, 32.834846, 37.854576>,  <39.692463, 32.711452, 37.182220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659306, 32.834846, 37.854576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283409, 32.798927, 37.722626>,  <39.057869, 32.777374, 37.643456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283409, 32.798927, 37.722626>,  <39.659306, 32.834846, 37.854576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283409, 32.798927, 37.722626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146562, -0.765905, 0.626026,
		-0.308873, 0.636651, 0.706593,
		-0.939743, -0.089803, -0.329877,
		39.001488, 32.771988, 37.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281830, 32.825817, 38.445259>,  <39.659306, 32.834846, 37.854576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281830, 32.825817, 38.445259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029545, 32.661297, 38.182037>,  <38.878174, 32.562584, 38.024105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029545, 32.661297, 38.182037>,  <39.281830, 32.825817, 38.445259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029545, 32.661297, 38.182037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395125, -0.559623, 0.728490,
		-0.667888, 0.719482, 0.190448,
		-0.630715, -0.411300, -0.658051,
		38.840332, 32.537907, 37.984623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611362, 32.819267, 38.702568>,  <39.281830, 32.825817, 38.445259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611362, 32.819267, 38.702568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596233, 32.529858, 38.426865>,  <38.587158, 32.356213, 38.261440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596233, 32.529858, 38.426865>,  <38.611362, 32.819267, 38.702568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596233, 32.529858, 38.426865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436471, -0.608521, 0.662718,
		-0.898923, 0.325907, -0.292783,
		-0.037820, -0.723523, -0.689263,
		38.584888, 32.312801, 38.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053787, 32.509853, 38.919834>,  <38.611362, 32.819267, 38.702568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053787, 32.509853, 38.919834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227345, 32.263615, 38.656693>,  <38.331478, 32.115871, 38.498806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227345, 32.263615, 38.656693>,  <38.053787, 32.509853, 38.919834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227345, 32.263615, 38.656693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278611, -0.786056, 0.551808,
		-0.856802, -0.056142, -0.512580,
		0.433896, -0.615601, -0.657852,
		38.357513, 32.078934, 38.459335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566040, 32.168159, 38.628998>,  <38.053787, 32.509853, 38.919834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566040, 32.168159, 38.628998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902199, 31.953791, 38.596676>,  <38.103893, 31.825171, 38.577282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902199, 31.953791, 38.596676>,  <37.566040, 32.168159, 38.628998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902199, 31.953791, 38.596676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397647, -0.711005, 0.579956,
		-0.368261, -0.455260, -0.810631,
		0.840393, -0.535920, -0.080803,
		38.154316, 31.793015, 38.572433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327080, 31.461636, 38.568222>,  <37.566040, 32.168159, 38.628998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327080, 31.461636, 38.568222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710491, 31.390055, 38.656937>,  <37.940540, 31.347107, 38.710167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710491, 31.390055, 38.656937>,  <37.327080, 31.461636, 38.568222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710491, 31.390055, 38.656937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276448, -0.772915, 0.571121,
		0.069222, -0.608752, -0.790335,
		0.958532, -0.178953, 0.221791,
		37.998051, 31.336369, 38.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402733, 30.708141, 38.578533>,  <37.327080, 31.461636, 38.568222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402733, 30.708141, 38.578533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708729, 30.853994, 38.790882>,  <37.892326, 30.941505, 38.918293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708729, 30.853994, 38.790882>,  <37.402733, 30.708141, 38.578533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708729, 30.853994, 38.790882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302294, -0.524558, 0.795900,
		0.568685, -0.769339, -0.291058,
		0.764993, 0.364632, 0.530875,
		37.938229, 30.963385, 38.950146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615452, 30.110411, 38.949650>,  <37.402733, 30.708141, 38.578533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615452, 30.110411, 38.949650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786312, 30.413454, 39.147060>,  <37.888828, 30.595280, 39.265507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786312, 30.413454, 39.147060>,  <37.615452, 30.110411, 38.949650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786312, 30.413454, 39.147060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226612, -0.438705, 0.869589,
		0.875320, -0.483288, -0.015711,
		0.427154, 0.757608, 0.493527,
		37.914459, 30.640736, 39.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063313, 29.699987, 38.885605>,  <37.615452, 30.110411, 38.949650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063313, 29.699987, 38.885605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230972, 29.426064, 38.647160>,  <37.331570, 29.261709, 38.504093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230972, 29.426064, 38.647160>,  <37.063313, 29.699987, 38.885605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230972, 29.426064, 38.647160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511752, 0.364133, -0.778149,
		0.749948, 0.631223, -0.197826,
		0.419151, -0.684810, -0.596111,
		37.356716, 29.220621, 38.468327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096958, 30.110901, 38.255314>,  <37.063313, 29.699987, 38.885605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096958, 30.110901, 38.255314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111225, 29.714346, 38.204918>,  <37.119785, 29.476412, 38.174679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111225, 29.714346, 38.204918>,  <37.096958, 30.110901, 38.255314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111225, 29.714346, 38.204918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631474, 0.075361, -0.771726,
		0.774576, 0.107084, -0.623349,
		0.035663, -0.991390, -0.125994,
		37.121925, 29.416929, 38.167118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526794, 29.943880, 37.569130>,  <37.096958, 30.110901, 38.255314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526794, 29.943880, 37.569130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260468, 29.661135, 37.664658>,  <37.100674, 29.491488, 37.721973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260468, 29.661135, 37.664658>,  <37.526794, 29.943880, 37.569130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260468, 29.661135, 37.664658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471875, 0.150995, -0.868639,
		0.577948, -0.691046, -0.434086,
		-0.665815, -0.706863, 0.238820,
		37.060722, 29.449076, 37.736305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386959, 29.512043, 36.938431>,  <37.526794, 29.943880, 37.569130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386959, 29.512043, 36.938431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064541, 29.438892, 37.163589>,  <36.871090, 29.395002, 37.298683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064541, 29.438892, 37.163589>,  <37.386959, 29.512043, 36.938431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064541, 29.438892, 37.163589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591784, 0.263676, -0.761752,
		-0.009115, -0.947117, -0.320758,
		-0.806045, -0.182876, 0.562893,
		36.822727, 29.384029, 37.332458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935627, 29.128466, 36.483795>,  <37.386959, 29.512043, 36.938431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935627, 29.128466, 36.483795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717640, 29.297876, 36.773247>,  <36.586849, 29.399523, 36.946918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717640, 29.297876, 36.773247>,  <36.935627, 29.128466, 36.483795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717640, 29.297876, 36.773247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698828, 0.247456, -0.671123,
		-0.463304, -0.871430, 0.161117,
		-0.544967, 0.423527, 0.723626,
		36.554150, 29.424934, 36.990334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205631, 28.748058, 36.508053>,  <36.935627, 29.128466, 36.483795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205631, 28.748058, 36.508053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179855, 29.099916, 36.696552>,  <36.164391, 29.311031, 36.809650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179855, 29.099916, 36.696552>,  <36.205631, 28.748058, 36.508053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179855, 29.099916, 36.696552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822742, 0.220411, -0.523941,
		-0.564750, -0.421478, 0.709517,
		-0.064444, 0.879645, 0.471245,
		36.160522, 29.363810, 36.837925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424660, 28.815851, 36.611183>,  <36.205631, 28.748058, 36.508053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424660, 28.815851, 36.611183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596840, 29.172932, 36.664551>,  <35.700150, 29.387180, 36.696571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596840, 29.172932, 36.664551>,  <35.424660, 28.815851, 36.611183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596840, 29.172932, 36.664551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768476, 0.439988, -0.464602,
		-0.473453, 0.097460, 0.875411,
		0.430450, 0.892699, 0.133418,
		35.725975, 29.440741, 36.704575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928043, 29.189899, 36.650719>,  <35.424660, 28.815851, 36.611183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928043, 29.189899, 36.650719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210289, 29.466278, 36.587845>,  <35.379635, 29.632105, 36.550121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210289, 29.466278, 36.587845>,  <34.928043, 29.189899, 36.650719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210289, 29.466278, 36.587845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656246, 0.553513, -0.512800,
		-0.267312, 0.464991, 0.843995,
		0.705610, 0.690946, -0.157188,
		35.421970, 29.673561, 36.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651711, 29.774693, 36.930519>,  <34.928043, 29.189899, 36.650719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651711, 29.774693, 36.930519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910614, 29.859030, 36.637508>,  <35.065956, 29.909632, 36.461700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910614, 29.859030, 36.637508>,  <34.651711, 29.774693, 36.930519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910614, 29.859030, 36.637508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660821, 0.634219, -0.401350,
		0.379963, 0.743849, 0.549834,
		0.647258, 0.210844, -0.732531,
		35.104790, 29.922283, 36.417747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568325, 30.512627, 36.802067>,  <34.651711, 29.774693, 36.930519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568325, 30.512627, 36.802067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763180, 30.405994, 36.469410>,  <34.880093, 30.342014, 36.269814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763180, 30.405994, 36.469410>,  <34.568325, 30.512627, 36.802067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763180, 30.405994, 36.469410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428652, 0.756692, -0.493635,
		0.760894, 0.596953, 0.254339,
		0.487133, -0.266581, -0.831647,
		34.909321, 30.326019, 36.219917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932762, 31.173119, 36.493919>,  <34.568325, 30.512627, 36.802067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932762, 31.173119, 36.493919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883507, 30.894251, 36.211418>,  <34.853954, 30.726931, 36.041916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883507, 30.894251, 36.211418>,  <34.932762, 31.173119, 36.493919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883507, 30.894251, 36.211418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459838, 0.670742, -0.581940,
		0.879424, 0.253103, -0.403177,
		-0.123137, -0.697168, -0.706253,
		34.846565, 30.685101, 35.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092693, 31.542252, 35.864033>,  <34.932762, 31.173119, 36.493919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092693, 31.542252, 35.864033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899910, 31.214371, 35.740227>,  <34.784241, 31.017641, 35.665943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899910, 31.214371, 35.740227>,  <35.092693, 31.542252, 35.864033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899910, 31.214371, 35.740227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629195, 0.569623, -0.528813,
		0.609778, -0.060119, -0.790289,
		-0.481959, -0.819704, -0.309517,
		34.755322, 30.968460, 35.647373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.523174, 26.798342, 41.758240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139732, 26.876680, 41.675568>,  <36.909668, 26.923683, 41.625965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139732, 26.876680, 41.675568>,  <37.523174, 26.798342, 41.758240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139732, 26.876680, 41.675568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248466, 0.220880, -0.943121,
		-0.139056, -0.955435, -0.260398,
		-0.958607, 0.195847, -0.206678,
		36.852150, 26.935434, 41.613564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471226, 26.439861, 41.197987>,  <37.523174, 26.798342, 41.758240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471226, 26.439861, 41.197987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186153, 26.720396, 41.203934>,  <37.015110, 26.888716, 41.207500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186153, 26.720396, 41.203934>,  <37.471226, 26.439861, 41.197987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186153, 26.720396, 41.203934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244600, 0.268303, -0.931764,
		-0.657468, -0.660410, -0.362760,
		-0.712676, 0.701336, 0.014865,
		36.972351, 26.930798, 41.208393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204136, 26.451218, 40.614170>,  <37.471226, 26.439861, 41.197987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204136, 26.451218, 40.614170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083233, 26.812630, 40.735676>,  <37.010693, 27.029478, 40.808578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083233, 26.812630, 40.735676>,  <37.204136, 26.451218, 40.614170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083233, 26.812630, 40.735676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176632, 0.366235, -0.913604,
		-0.936718, -0.222491, -0.270290,
		-0.302258, 0.903532, 0.303760,
		36.992554, 27.083689, 40.826805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683308, 26.779507, 40.135811>,  <37.204136, 26.451218, 40.614170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683308, 26.779507, 40.135811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819641, 27.108618, 40.317745>,  <36.901440, 27.306084, 40.426907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819641, 27.108618, 40.317745>,  <36.683308, 26.779507, 40.135811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819641, 27.108618, 40.317745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073776, 0.458899, -0.885420,
		-0.937225, 0.335335, 0.095706,
		0.340831, 0.822777, 0.454831,
		36.921890, 27.355452, 40.454193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384926, 27.290630, 39.692596>,  <36.683308, 26.779507, 40.135811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384926, 27.290630, 39.692596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702869, 27.440546, 39.883480>,  <36.893635, 27.530497, 39.998013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702869, 27.440546, 39.883480>,  <36.384926, 27.290630, 39.692596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702869, 27.440546, 39.883480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257814, 0.503337, -0.824733,
		-0.549300, 0.778578, 0.303456,
		0.794859, 0.374791, 0.477211,
		36.941326, 27.552982, 40.026642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364105, 27.977486, 39.551193>,  <36.384926, 27.290630, 39.692596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364105, 27.977486, 39.551193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724583, 27.937447, 39.719875>,  <36.940868, 27.913424, 39.821087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724583, 27.937447, 39.719875>,  <36.364105, 27.977486, 39.551193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724583, 27.937447, 39.719875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363788, 0.703604, -0.610409,
		-0.235617, 0.703507, 0.670495,
		0.901190, -0.100096, 0.421708,
		36.994938, 27.907417, 39.846390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648285, 28.637852, 39.572071>,  <36.364105, 27.977486, 39.551193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648285, 28.637852, 39.572071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985847, 28.430468, 39.627243>,  <37.188385, 28.306036, 39.660347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985847, 28.430468, 39.627243>,  <36.648285, 28.637852, 39.572071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985847, 28.430468, 39.627243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417203, 0.472568, -0.776287,
		0.337295, 0.712655, 0.615106,
		0.843904, -0.518462, 0.137927,
		37.239017, 28.274929, 39.668621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142101, 29.092854, 39.895596>,  <36.648285, 28.637852, 39.572071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142101, 29.092854, 39.895596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277794, 28.800623, 39.658554>,  <37.359207, 28.625284, 39.516327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277794, 28.800623, 39.658554>,  <37.142101, 29.092854, 39.895596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277794, 28.800623, 39.658554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411938, 0.681715, -0.604626,
		0.845714, -0.039011, 0.532208,
		0.339227, -0.730577, -0.592606,
		37.379562, 28.581450, 39.480774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879528, 29.109741, 39.824017>,  <37.142101, 29.092854, 39.895596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879528, 29.109741, 39.824017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709770, 28.981649, 39.485233>,  <37.607914, 28.904795, 39.281963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709770, 28.981649, 39.485233>,  <37.879528, 29.109741, 39.824017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709770, 28.981649, 39.485233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096781, 0.913973, -0.394065,
		0.900289, -0.249210, -0.356895,
		-0.424397, -0.320231, -0.846959,
		37.582451, 28.885580, 39.231144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973785, 29.780787, 39.494770>,  <37.879528, 29.109741, 39.824017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973785, 29.780787, 39.494770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944904, 30.155378, 39.632053>,  <37.927574, 30.380133, 39.714424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944904, 30.155378, 39.632053>,  <37.973785, 29.780787, 39.494770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944904, 30.155378, 39.632053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234422, -0.350404, 0.906787,
		0.969450, -0.014980, 0.244833,
		-0.072207, 0.936479, 0.343210,
		37.923241, 30.436321, 39.735016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438366, 29.873331, 40.099529>,  <37.973785, 29.780787, 39.494770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438366, 29.873331, 40.099529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155979, 30.154127, 40.137096>,  <37.986546, 30.322605, 40.159637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155979, 30.154127, 40.137096>,  <38.438366, 29.873331, 40.099529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155979, 30.154127, 40.137096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009455, -0.141938, 0.989830,
		0.708180, 0.697901, 0.106841,
		-0.705969, 0.701988, 0.093919,
		37.944187, 30.364723, 40.165272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664867, 30.358650, 40.573349>,  <38.438366, 29.873331, 40.099529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664867, 30.358650, 40.573349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265102, 30.369408, 40.581787>,  <38.025242, 30.375862, 40.586849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265102, 30.369408, 40.581787>,  <38.664867, 30.358650, 40.573349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265102, 30.369408, 40.581787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017651, -0.122296, 0.992337,
		0.029268, 0.992129, 0.121750,
		-0.999416, 0.026895, 0.021091,
		37.965279, 30.377476, 40.588116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485287, 30.867750, 41.137459>,  <38.664867, 30.358650, 40.573349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485287, 30.867750, 41.137459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150486, 30.665810, 41.053028>,  <37.949604, 30.544645, 41.002369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150486, 30.665810, 41.053028>,  <38.485287, 30.867750, 41.137459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150486, 30.665810, 41.053028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179402, -0.111240, 0.977466,
		-0.516956, 0.856008, 0.002537,
		-0.837001, -0.504852, -0.211076,
		37.899387, 30.514355, 40.989704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021587, 31.302197, 41.477249>,  <38.485287, 30.867750, 41.137459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021587, 31.302197, 41.477249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861290, 30.938787, 41.429935>,  <37.765114, 30.720741, 41.401546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861290, 30.938787, 41.429935>,  <38.021587, 31.302197, 41.477249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861290, 30.938787, 41.429935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065341, -0.100439, 0.992795,
		-0.913859, 0.405582, -0.019114,
		-0.400740, -0.908524, -0.118288,
		37.741066, 30.666231, 41.394447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492226, 31.337160, 41.893486>,  <38.021587, 31.302197, 41.477249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492226, 31.337160, 41.893486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581253, 30.953762, 41.822212>,  <37.634670, 30.723722, 41.779449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581253, 30.953762, 41.822212>,  <37.492226, 31.337160, 41.893486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581253, 30.953762, 41.822212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035009, -0.190507, 0.981062,
		-0.974289, -0.212115, -0.075957,
		0.222568, -0.958496, -0.178183,
		37.648022, 30.666214, 41.768757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159813, 31.060905, 42.436977>,  <37.492226, 31.337160, 41.893486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159813, 31.060905, 42.436977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401810, 30.763700, 42.322491>,  <37.547009, 30.585377, 42.253799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401810, 30.763700, 42.322491>,  <37.159813, 31.060905, 42.436977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401810, 30.763700, 42.322491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056003, -0.398275, 0.915555,
		-0.794262, -0.537872, -0.282563,
		0.604989, -0.743015, -0.286212,
		37.583305, 30.540796, 42.236626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866867, 30.389624, 42.680950>,  <37.159813, 31.060905, 42.436977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866867, 30.389624, 42.680950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265312, 30.378313, 42.647583>,  <37.504379, 30.371527, 42.627563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265312, 30.378313, 42.647583>,  <36.866867, 30.389624, 42.680950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265312, 30.378313, 42.647583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070477, -0.312180, 0.947405,
		-0.052830, -0.949602, -0.308974,
		0.996113, -0.028276, -0.083418,
		37.564148, 30.369831, 42.622559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018337, 29.835211, 43.061764>,  <36.866867, 30.389624, 42.680950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018337, 29.835211, 43.061764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375168, 30.013145, 43.029953>,  <37.589264, 30.119907, 43.010864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375168, 30.013145, 43.029953>,  <37.018337, 29.835211, 43.061764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375168, 30.013145, 43.029953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179245, -0.186762, 0.965915,
		0.414823, -0.875921, -0.246340,
		0.892072, 0.444839, -0.079531,
		37.642788, 30.146597, 43.006092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612782, 29.369816, 43.390610>,  <37.018337, 29.835211, 43.061764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612782, 29.369816, 43.390610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746441, 29.746803, 43.386696>,  <37.826637, 29.972996, 43.384346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746441, 29.746803, 43.386696>,  <37.612782, 29.369816, 43.390610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746441, 29.746803, 43.386696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271893, -0.086446, 0.958437,
		0.902451, -0.322923, -0.285136,
		0.334150, 0.942469, -0.009787,
		37.846687, 30.029545, 43.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138363, 29.294626, 43.822426>,  <37.612782, 29.369816, 43.390610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138363, 29.294626, 43.822426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074017, 29.689093, 43.806416>,  <38.035408, 29.925772, 43.796810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074017, 29.689093, 43.806416>,  <38.138363, 29.294626, 43.822426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074017, 29.689093, 43.806416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272342, 0.083334, 0.958585,
		0.948659, 0.143300, -0.281979,
		-0.160864, 0.986165, -0.040029,
		38.025757, 29.984941, 43.794407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687656, 29.584175, 44.225048>,  <38.138363, 29.294626, 43.822426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687656, 29.584175, 44.225048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452854, 29.907873, 44.215683>,  <38.311974, 30.102091, 44.210064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452854, 29.907873, 44.215683>,  <38.687656, 29.584175, 44.225048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452854, 29.907873, 44.215683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209211, 0.179565, 0.961243,
		0.782084, 0.559357, -0.274708,
		-0.587006, 0.809244, -0.023411,
		38.276752, 30.150646, 44.208660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059666, 30.212952, 44.517342>,  <38.687656, 29.584175, 44.225048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059666, 30.212952, 44.517342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666492, 30.277771, 44.552162>,  <38.430588, 30.316662, 44.573055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666492, 30.277771, 44.552162>,  <39.059666, 30.212952, 44.517342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666492, 30.277771, 44.552162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102961, 0.092513, 0.990374,
		0.152435, 0.982437, -0.107619,
		-0.982936, 0.162048, 0.087050,
		38.371613, 30.326385, 44.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950413, 30.914976, 44.950375>,  <39.059666, 30.212952, 44.517342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950413, 30.914976, 44.950375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626492, 30.680645, 44.937557>,  <38.432140, 30.540047, 44.929867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626492, 30.680645, 44.937557>,  <38.950413, 30.914976, 44.950375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626492, 30.680645, 44.937557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046582, 0.009752, 0.998867,
		-0.584853, 0.810376, -0.035187,
		-0.809801, -0.585829, -0.032046,
		38.383553, 30.504896, 44.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.766140, 30.647209, 45.397800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.953325, 30.383696, 45.162170>,  <30.065636, 30.225588, 45.020790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.953325, 30.383696, 45.162170>,  <29.766140, 30.647209, 45.397800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953325, 30.383696, 45.162170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219280, 0.732281, -0.644733,
		0.856111, 0.172538, 0.487139,
		0.467964, -0.658783, -0.589080,
		30.093714, 30.186060, 44.985447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410051, 31.001532, 45.142372>,  <29.766140, 30.647209, 45.397800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410051, 31.001532, 45.142372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359999, 30.685297, 44.902599>,  <30.329967, 30.495556, 44.758736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.359999, 30.685297, 44.902599>,  <30.410051, 31.001532, 45.142372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359999, 30.685297, 44.902599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297118, 0.546590, -0.782918,
		0.946606, -0.276067, 0.166503,
		-0.125129, -0.790586, -0.599430,
		30.322460, 30.448122, 44.722771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920595, 31.132999, 44.735439>,  <30.410051, 31.001532, 45.142372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920595, 31.132999, 44.735439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672876, 30.885675, 44.541878>,  <30.524244, 30.737280, 44.425743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672876, 30.885675, 44.541878>,  <30.920595, 31.132999, 44.735439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672876, 30.885675, 44.541878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089891, 0.556425, -0.826021,
		0.779992, -0.555053, -0.289013,
		-0.619299, -0.618311, -0.483901,
		30.487087, 30.700182, 44.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344297, 30.924170, 44.139198>,  <30.920595, 31.132999, 44.735439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344297, 30.924170, 44.139198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953114, 30.891598, 44.062298>,  <30.718403, 30.872055, 44.016155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953114, 30.891598, 44.062298>,  <31.344297, 30.924170, 44.139198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953114, 30.891598, 44.062298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140847, 0.422424, -0.895388,
		0.154123, -0.902733, -0.401645,
		-0.977961, -0.081430, -0.192253,
		30.659725, 30.867168, 44.004623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254011, 30.603954, 43.483986>,  <31.344297, 30.924170, 44.139198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254011, 30.603954, 43.483986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881155, 30.740507, 43.532276>,  <30.657442, 30.822439, 43.561249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881155, 30.740507, 43.532276>,  <31.254011, 30.603954, 43.483986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881155, 30.740507, 43.532276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025138, 0.271593, -0.962084,
		-0.361226, -0.899831, -0.244581,
		-0.932139, 0.341382, 0.120726,
		30.601513, 30.842922, 43.568493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688328, 30.264141, 43.005569>,  <31.254011, 30.603954, 43.483986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688328, 30.264141, 43.005569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539927, 30.621214, 43.107918>,  <30.450886, 30.835459, 43.169327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.539927, 30.621214, 43.107918>,  <30.688328, 30.264141, 43.005569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539927, 30.621214, 43.107918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084572, 0.241915, -0.966605,
		-0.924772, -0.380254, -0.014255,
		-0.371003, 0.892684, 0.255875,
		30.428625, 30.889019, 43.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918169, 30.346058, 42.802147>,  <30.688328, 30.264141, 43.005569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918169, 30.346058, 42.802147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.090242, 30.704073, 42.849228>,  <30.193487, 30.918882, 42.877476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.090242, 30.704073, 42.849228>,  <29.918169, 30.346058, 42.802147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090242, 30.704073, 42.849228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131855, 0.191277, -0.972639,
		-0.893059, 0.402896, 0.200299,
		0.430185, 0.895035, 0.117698,
		30.219297, 30.972584, 42.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658455, 30.701315, 42.214268>,  <29.918169, 30.346058, 42.802147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658455, 30.701315, 42.214268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.908230, 30.993551, 42.324768>,  <30.058094, 31.168894, 42.391068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.908230, 30.993551, 42.324768>,  <29.658455, 30.701315, 42.214268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908230, 30.993551, 42.324768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053022, 0.313216, -0.948201,
		-0.779273, 0.606740, 0.156846,
		0.624438, 0.730590, 0.276251,
		30.095562, 31.212729, 42.407642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450113, 31.283270, 41.884102>,  <29.658455, 30.701315, 42.214268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450113, 31.283270, 41.884102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.832869, 31.368389, 41.963181>,  <30.062521, 31.419460, 42.010628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.832869, 31.368389, 41.963181>,  <29.450113, 31.283270, 41.884102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832869, 31.368389, 41.963181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094695, 0.414890, -0.904930,
		-0.274588, 0.884637, 0.376853,
		0.956888, 0.212797, 0.197695,
		30.119934, 31.432228, 42.022488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539034, 32.046326, 41.906364>,  <29.450113, 31.283270, 41.884102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539034, 32.046326, 41.906364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877453, 31.860006, 41.802647>,  <30.080505, 31.748215, 41.740417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.877453, 31.860006, 41.802647>,  <29.539034, 32.046326, 41.906364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877453, 31.860006, 41.802647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103229, 0.620323, -0.777523,
		0.523015, 0.631056, 0.572908,
		0.846049, -0.465797, -0.259295,
		30.131268, 31.720266, 41.724857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725086, 32.481396, 41.490566>,  <29.539034, 32.046326, 41.906364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725086, 32.481396, 41.490566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.010489, 32.214222, 41.405926>,  <30.181730, 32.053917, 41.355141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.010489, 32.214222, 41.405926>,  <29.725086, 32.481396, 41.490566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010489, 32.214222, 41.405926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305718, 0.568529, -0.763748,
		0.630436, 0.480247, 0.609847,
		0.713504, -0.667936, -0.211601,
		30.224539, 32.013840, 41.342445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327118, 32.881527, 41.349499>,  <29.725086, 32.481396, 41.490566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327118, 32.881527, 41.349499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.440050, 32.528172, 41.199879>,  <30.507809, 32.316158, 41.110107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.440050, 32.528172, 41.199879>,  <30.327118, 32.881527, 41.349499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440050, 32.528172, 41.199879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457602, 0.466708, -0.756825,
		0.843143, 0.042509, 0.536007,
		0.282331, -0.883389, -0.374050,
		30.524750, 32.263153, 41.087666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969879, 32.938000, 41.134819>,  <30.327118, 32.881527, 41.349499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969879, 32.938000, 41.134819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.807796, 32.649204, 40.910484>,  <30.710546, 32.475929, 40.775883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.807796, 32.649204, 40.910484>,  <30.969879, 32.938000, 41.134819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807796, 32.649204, 40.910484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283564, 0.483951, -0.827878,
		0.869136, -0.494498, 0.008628,
		-0.405209, -0.721985, -0.560842,
		30.686234, 32.432610, 40.742233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357252, 32.956982, 40.565697>,  <30.969879, 32.938000, 41.134819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357252, 32.956982, 40.565697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031441, 32.749523, 40.461731>,  <30.835955, 32.625050, 40.399349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031441, 32.749523, 40.461731>,  <31.357252, 32.956982, 40.565697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031441, 32.749523, 40.461731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001048, 0.449350, -0.893355,
		0.580125, -0.727389, -0.366551,
		-0.814527, -0.518642, -0.259916,
		30.787083, 32.593929, 40.383755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091373, 32.936588, 40.599632>,  <31.357252, 32.956982, 40.565697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091373, 32.936588, 40.599632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280136, 33.269157, 40.716969>,  <32.393394, 33.468697, 40.787369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280136, 33.269157, 40.716969>,  <32.091373, 32.936588, 40.599632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280136, 33.269157, 40.716969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003843, -0.330771, 0.943703,
		0.881641, -0.446466, -0.152897,
		0.471905, 0.831420, 0.293337,
		32.421707, 33.518585, 40.804970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658810, 32.635059, 41.051739>,  <32.091373, 32.936588, 40.599632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658810, 32.635059, 41.051739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577946, 33.011089, 41.161564>,  <32.529427, 33.236710, 41.227459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577946, 33.011089, 41.161564>,  <32.658810, 32.635059, 41.051739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577946, 33.011089, 41.161564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089152, -0.296848, 0.950754,
		0.975287, 0.167724, 0.143820,
		-0.202157, 0.940080, 0.274559,
		32.517300, 33.293114, 41.243931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906826, 32.631351, 41.849007>,  <32.658810, 32.635059, 41.051739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906826, 32.631351, 41.849007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700821, 32.968475, 41.786469>,  <32.577217, 33.170750, 41.748947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700821, 32.968475, 41.786469>,  <32.906826, 32.631351, 41.849007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700821, 32.968475, 41.786469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150938, 0.090381, 0.984403,
		0.843791, 0.530575, 0.080664,
		-0.515009, 0.842806, -0.156347,
		32.546318, 33.221317, 41.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289261, 33.127750, 42.110111>,  <32.906826, 32.631351, 41.849007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289261, 33.127750, 42.110111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907619, 33.247501, 42.107075>,  <32.678635, 33.319351, 42.105251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907619, 33.247501, 42.107075>,  <33.289261, 33.127750, 42.110111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907619, 33.247501, 42.107075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020348, -0.039502, 0.999012,
		0.298783, 0.953316, 0.043781,
		-0.954104, 0.299379, -0.007595,
		32.621387, 33.337315, 42.104797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137466, 33.770470, 42.522896>,  <33.289261, 33.127750, 42.110111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137466, 33.770470, 42.522896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.788666, 33.575947, 42.500572>,  <32.579384, 33.459232, 42.487179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.788666, 33.575947, 42.500572>,  <33.137466, 33.770470, 42.522896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788666, 33.575947, 42.500572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075193, 0.020414, 0.996960,
		-0.483693, 0.873548, -0.054369,
		-0.872002, -0.486310, -0.055810,
		32.527065, 33.430054, 42.483829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695633, 33.975677, 43.044838>,  <33.137466, 33.770470, 42.522896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695633, 33.975677, 43.044838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533501, 33.627743, 42.932350>,  <32.436222, 33.418980, 42.864857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533501, 33.627743, 42.932350>,  <32.695633, 33.975677, 43.044838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533501, 33.627743, 42.932350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087330, -0.269374, 0.959068,
		-0.909990, 0.413297, 0.033222,
		-0.405329, -0.869841, -0.281221,
		32.411903, 33.366791, 42.847984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107204, 33.880070, 43.443573>,  <32.695633, 33.975677, 43.044838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107204, 33.880070, 43.443573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195038, 33.508446, 43.324482>,  <32.247738, 33.285473, 43.253029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195038, 33.508446, 43.324482>,  <32.107204, 33.880070, 43.443573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195038, 33.508446, 43.324482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146578, -0.333125, 0.931420,
		-0.964520, -0.160884, -0.209328,
		0.219583, -0.929055, -0.297724,
		32.260914, 33.229729, 43.235165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609238, 33.485374, 43.828190>,  <32.107204, 33.880070, 43.443573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609238, 33.485374, 43.828190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920826, 33.264053, 43.710163>,  <32.107777, 33.131260, 43.639347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920826, 33.264053, 43.710163>,  <31.609238, 33.485374, 43.828190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920826, 33.264053, 43.710163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069606, -0.391357, 0.917603,
		-0.623188, -0.735322, -0.266341,
		0.778968, -0.553300, -0.295071,
		32.154518, 33.098064, 43.621643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438732, 32.887512, 44.089813>,  <31.609238, 33.485374, 43.828190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438732, 32.887512, 44.089813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830181, 32.831142, 44.029896>,  <32.065052, 32.797321, 43.993946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830181, 32.831142, 44.029896>,  <31.438732, 32.887512, 44.089813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830181, 32.831142, 44.029896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060870, -0.497221, 0.865486,
		-0.196450, -0.856102, -0.478013,
		0.978622, -0.140928, -0.149790,
		32.123768, 32.788864, 43.984959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512697, 32.216743, 44.336983>,  <31.438732, 32.887512, 44.089813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512697, 32.216743, 44.336983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897381, 32.326214, 44.331161>,  <32.128193, 32.391895, 44.327671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897381, 32.326214, 44.331161>,  <31.512697, 32.216743, 44.336983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897381, 32.326214, 44.331161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128046, -0.401753, 0.906752,
		0.242314, -0.873896, -0.421413,
		0.961711, 0.273679, -0.014549,
		32.185894, 32.408318, 44.326797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919954, 31.634472, 44.527470>,  <31.512697, 32.216743, 44.336983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919954, 31.634472, 44.527470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146366, 31.954924, 44.605244>,  <32.282211, 32.147194, 44.651909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146366, 31.954924, 44.605244>,  <31.919954, 31.634472, 44.527470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146366, 31.954924, 44.605244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253114, -0.393348, 0.883861,
		0.784568, -0.451075, -0.425423,
		0.566027, 0.801129, 0.194434,
		32.316174, 32.195263, 44.663574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609493, 31.378626, 44.460888>,  <31.919954, 31.634472, 44.527470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609493, 31.378626, 44.460888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608013, 31.704321, 44.693096>,  <32.607124, 31.899738, 44.832420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608013, 31.704321, 44.693096>,  <32.609493, 31.378626, 44.460888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608013, 31.704321, 44.693096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396393, -0.531773, 0.748392,
		0.918073, 0.232887, -0.320788,
		-0.003704, 0.814237, 0.580521,
		32.606903, 31.948591, 44.867252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309605, 31.413748, 44.715508>,  <32.609493, 31.378626, 44.460888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309605, 31.413748, 44.715508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098568, 31.652004, 44.957783>,  <32.971947, 31.794958, 45.103146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098568, 31.652004, 44.957783>,  <33.309605, 31.413748, 44.715508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098568, 31.652004, 44.957783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328871, -0.514180, 0.792125,
		0.783254, 0.617114, 0.075390,
		-0.527596, 0.595642, 0.605685,
		32.940289, 31.830696, 45.139488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761719, 31.461985, 45.289917>,  <33.309605, 31.413748, 44.715508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761719, 31.461985, 45.289917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408058, 31.569160, 45.443008>,  <33.195862, 31.633467, 45.534863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408058, 31.569160, 45.443008>,  <33.761719, 31.461985, 45.289917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408058, 31.569160, 45.443008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165331, -0.586756, 0.792706,
		0.436969, 0.764150, 0.474482,
		-0.884152, 0.267941, 0.382732,
		33.142811, 31.649542, 45.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305935, 31.545073, 45.806309>,  <33.761719, 31.461985, 45.289917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305935, 31.545073, 45.806309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.692169, 31.471724, 45.732529>,  <34.923908, 31.427715, 45.688259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.692169, 31.471724, 45.732529>,  <34.305935, 31.545073, 45.806309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692169, 31.471724, 45.732529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015396, 0.667641, -0.744325,
		0.259634, 0.721548, 0.641840,
		0.965584, -0.183370, -0.184451,
		34.981846, 31.416712, 45.677193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608223, 32.214710, 45.699585>,  <34.305935, 31.545073, 45.806309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608223, 32.214710, 45.699585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917042, 31.988255, 45.584053>,  <35.102333, 31.852381, 45.514732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917042, 31.988255, 45.584053>,  <34.608223, 32.214710, 45.699585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917042, 31.988255, 45.584053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101453, 0.558404, -0.823342,
		0.627413, 0.606358, 0.488552,
		0.772049, -0.566141, -0.288833,
		35.148655, 31.818413, 45.497402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179996, 32.660252, 45.615475>,  <34.608223, 32.214710, 45.699585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179996, 32.660252, 45.615475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262024, 32.343895, 45.384846>,  <35.311241, 32.154079, 45.246468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262024, 32.343895, 45.384846>,  <35.179996, 32.660252, 45.615475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262024, 32.343895, 45.384846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152909, 0.607745, -0.779272,
		0.966730, 0.071640, 0.245564,
		0.205068, -0.790894, -0.576571,
		35.323544, 32.106628, 45.211876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767185, 32.787731, 45.394882>,  <35.179996, 32.660252, 45.615475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767185, 32.787731, 45.394882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635731, 32.511185, 45.137508>,  <35.556858, 32.345257, 44.983082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635731, 32.511185, 45.137508>,  <35.767185, 32.787731, 45.394882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635731, 32.511185, 45.137508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184258, 0.621252, -0.761639,
		0.926309, -0.368859, -0.076775,
		-0.328634, -0.691367, -0.643437,
		35.537140, 32.303776, 44.944477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288166, 32.631603, 44.881313>,  <35.767185, 32.787731, 45.394882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288166, 32.631603, 44.881313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965935, 32.477459, 44.701294>,  <35.772598, 32.384972, 44.593281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965935, 32.477459, 44.701294>,  <36.288166, 32.631603, 44.881313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965935, 32.477459, 44.701294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308391, 0.375864, -0.873854,
		0.505911, -0.842745, -0.183943,
		-0.805573, -0.385366, -0.450049,
		35.724262, 32.361851, 44.566280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523022, 32.296047, 44.304390>,  <36.288166, 32.631603, 44.881313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523022, 32.296047, 44.304390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136829, 32.366634, 44.227753>,  <35.905113, 32.408985, 44.181770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136829, 32.366634, 44.227753>,  <36.523022, 32.296047, 44.304390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136829, 32.366634, 44.227753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250679, 0.429666, -0.867495,
		-0.070767, -0.885577, -0.459071,
		-0.965480, 0.176469, -0.191590,
		35.847187, 32.419575, 44.170277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350815, 32.082195, 43.574772>,  <36.523022, 32.296047, 44.304390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350815, 32.082195, 43.574772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063007, 32.334122, 43.691818>,  <35.890324, 32.485279, 43.762047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063007, 32.334122, 43.691818>,  <36.350815, 32.082195, 43.574772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063007, 32.334122, 43.691818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011866, 0.432436, -0.901587,
		-0.694372, -0.645236, -0.318618,
		-0.719518, 0.629817, 0.292615,
		35.847153, 32.523067, 43.779602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134850, 32.219460, 42.987740>,  <36.350815, 32.082195, 43.574772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134850, 32.219460, 42.987740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987030, 32.500923, 43.230492>,  <35.898338, 32.669800, 43.376144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987030, 32.500923, 43.230492>,  <36.134850, 32.219460, 42.987740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987030, 32.500923, 43.230492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010294, 0.656172, -0.754541,
		-0.929154, -0.272593, -0.249731,
		-0.369549, 0.703655, 0.606879,
		35.876163, 32.712021, 43.412556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602798, 32.545509, 42.604050>,  <36.134850, 32.219460, 42.987740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602798, 32.545509, 42.604050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729385, 32.817970, 42.868137>,  <35.805336, 32.981445, 43.026588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729385, 32.817970, 42.868137>,  <35.602798, 32.545509, 42.604050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729385, 32.817970, 42.868137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009786, 0.693607, -0.720287,
		-0.948554, 0.234407, 0.212837,
		0.316465, 0.681148, 0.660218,
		35.824326, 33.022316, 43.066204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171391, 33.153503, 42.526386>,  <35.602798, 32.545509, 42.604050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171391, 33.153503, 42.526386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495350, 33.306583, 42.704201>,  <35.689724, 33.398430, 42.810890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495350, 33.306583, 42.704201>,  <35.171391, 33.153503, 42.526386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495350, 33.306583, 42.704201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060235, 0.699582, -0.712009,
		-0.583472, 0.603430, 0.543537,
		0.809896, 0.382697, 0.444535,
		35.738319, 33.421394, 42.837563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020115, 33.878696, 42.398834>,  <35.171391, 33.153503, 42.526386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020115, 33.878696, 42.398834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402916, 33.785591, 42.468075>,  <35.632595, 33.729729, 42.509621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402916, 33.785591, 42.468075>,  <35.020115, 33.878696, 42.398834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402916, 33.785591, 42.468075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258477, 0.413417, -0.873084,
		0.131659, 0.880288, 0.455806,
		0.957003, -0.232765, 0.173104,
		35.690018, 33.715763, 42.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359493, 34.457531, 42.166649>,  <35.020115, 33.878696, 42.398834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359493, 34.457531, 42.166649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678318, 34.219776, 42.209351>,  <35.869614, 34.077122, 42.234970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678318, 34.219776, 42.209351>,  <35.359493, 34.457531, 42.166649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678318, 34.219776, 42.209351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344116, 0.301759, -0.889115,
		0.496268, 0.745413, 0.445059,
		0.797058, -0.594392, 0.106755,
		35.917435, 34.041458, 42.241379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832237, 34.884636, 41.859276>,  <35.359493, 34.457531, 42.166649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832237, 34.884636, 41.859276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.984196, 34.514660, 41.854126>,  <36.075371, 34.292675, 41.851036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.984196, 34.514660, 41.854126>,  <35.832237, 34.884636, 41.859276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984196, 34.514660, 41.854126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189191, 0.091311, -0.977685,
		0.905477, 0.368981, 0.209679,
		0.379893, -0.924941, -0.012872,
		36.098164, 34.237179, 41.850266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568882, 34.919327, 41.649189>,  <35.832237, 34.884636, 41.859276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568882, 34.919327, 41.649189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424538, 34.559448, 41.550941>,  <36.337933, 34.343521, 41.491993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424538, 34.559448, 41.550941>,  <36.568882, 34.919327, 41.649189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424538, 34.559448, 41.550941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408425, 0.084316, -0.908890,
		0.838433, -0.428299, 0.337031,
		-0.360859, -0.899695, -0.245621,
		36.316280, 34.289539, 41.477257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.239613, 30.801006, 27.639273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130024, 30.529425, 27.911732>,  <29.064272, 30.366476, 28.075207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130024, 30.529425, 27.911732>,  <29.239613, 30.801006, 27.639273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130024, 30.529425, 27.911732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717644, 0.615823, 0.325191,
		-0.640256, -0.399728, -0.655965,
		-0.273970, -0.678955, 0.681147,
		29.047832, 30.325739, 28.116076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512928, 30.815483, 27.605032>,  <29.239613, 30.801006, 27.639273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512928, 30.815483, 27.605032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638151, 30.665857, 27.954218>,  <28.713285, 30.576082, 28.163731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.638151, 30.665857, 27.954218>,  <28.512928, 30.815483, 27.605032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638151, 30.665857, 27.954218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690646, 0.541276, 0.479613,
		-0.651922, -0.753058, -0.088894,
		0.313060, -0.374064, 0.872966,
		28.732069, 30.553638, 28.216108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882473, 30.652512, 27.957466>,  <28.512928, 30.815483, 27.605032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882473, 30.652512, 27.957466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181618, 30.705605, 28.217646>,  <28.361105, 30.737459, 28.373753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181618, 30.705605, 28.217646>,  <27.882473, 30.652512, 27.957466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181618, 30.705605, 28.217646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614932, 0.507668, 0.603434,
		-0.250117, -0.851267, 0.461287,
		0.747864, 0.132731, 0.650448,
		28.405977, 30.745424, 28.412781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497116, 30.571482, 28.565329>,  <27.882473, 30.652512, 27.957466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497116, 30.571482, 28.565329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833284, 30.769268, 28.654045>,  <28.034986, 30.887939, 28.707275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833284, 30.769268, 28.654045>,  <27.497116, 30.571482, 28.565329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833284, 30.769268, 28.654045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527262, 0.651480, 0.545499,
		0.125238, -0.575392, 0.808232,
		0.840422, 0.494467, 0.221792,
		28.085411, 30.917608, 28.720583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409847, 30.800499, 29.188879>,  <27.497116, 30.571482, 28.565329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409847, 30.800499, 29.188879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729261, 31.034090, 29.130487>,  <27.920910, 31.174244, 29.095453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729261, 31.034090, 29.130487>,  <27.409847, 30.800499, 29.188879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729261, 31.034090, 29.130487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431474, 0.724401, 0.537655,
		0.419724, -0.366352, 0.830432,
		0.798537, 0.583977, -0.145977,
		27.968822, 31.209284, 29.086695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679388, 31.065168, 29.827839>,  <27.409847, 30.800499, 29.188879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679388, 31.065168, 29.827839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801075, 31.313383, 29.538734>,  <27.874088, 31.462313, 29.365271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801075, 31.313383, 29.538734>,  <27.679388, 31.065168, 29.827839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801075, 31.313383, 29.538734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383839, 0.774256, 0.503185,
		0.871848, 0.124346, 0.473729,
		0.304218, 0.620537, -0.722763,
		27.892340, 31.499544, 29.321905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114496, 31.550474, 30.134474>,  <27.679388, 31.065168, 29.827839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114496, 31.550474, 30.134474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998783, 31.750799, 29.808161>,  <27.929356, 31.870995, 29.612373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998783, 31.750799, 29.808161>,  <28.114496, 31.550474, 30.134474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998783, 31.750799, 29.808161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187804, 0.805966, 0.561382,
		0.938640, 0.315605, -0.139097,
		-0.289282, 0.500812, -0.815784,
		27.911999, 31.901043, 29.563425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464870, 32.153175, 30.129335>,  <28.114496, 31.550474, 30.134474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464870, 32.153175, 30.129335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153255, 32.252457, 29.899035>,  <27.966286, 32.312027, 29.760855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153255, 32.252457, 29.899035>,  <28.464870, 32.153175, 30.129335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153255, 32.252457, 29.899035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196991, 0.774899, 0.600605,
		0.595225, 0.581313, -0.554782,
		-0.779039, 0.248208, -0.575753,
		27.919544, 32.326920, 29.726309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444296, 32.846676, 30.168776>,  <28.464870, 32.153175, 30.129335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444296, 32.846676, 30.168776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088039, 32.803963, 29.991980>,  <27.874285, 32.778336, 29.885902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088039, 32.803963, 29.991980>,  <28.444296, 32.846676, 30.168776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088039, 32.803963, 29.991980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374744, 0.722906, 0.580494,
		0.257532, 0.682646, -0.683866,
		-0.890642, -0.106779, -0.441989,
		27.820847, 32.771931, 29.859383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254749, 33.525379, 30.044863>,  <28.444296, 32.846676, 30.168776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254749, 33.525379, 30.044863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910290, 33.322067, 30.048391>,  <27.703615, 33.200081, 30.050508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.910290, 33.322067, 30.048391>,  <28.254749, 33.525379, 30.044863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910290, 33.322067, 30.048391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357874, 0.618462, 0.699593,
		-0.361044, 0.599296, -0.714487,
		-0.861146, -0.508280, 0.008819,
		27.651945, 33.169582, 30.051037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812607, 33.992687, 30.110649>,  <28.254749, 33.525379, 30.044863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812607, 33.992687, 30.110649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.578249, 33.678879, 30.191900>,  <27.437634, 33.490593, 30.240650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.578249, 33.678879, 30.191900>,  <27.812607, 33.992687, 30.110649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578249, 33.678879, 30.191900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489146, 0.542199, 0.683196,
		-0.646114, 0.300922, -0.701415,
		-0.585895, -0.784517, 0.203127,
		27.402481, 33.443523, 30.252838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071241, 34.255684, 30.210394>,  <27.812607, 33.992687, 30.110649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071241, 34.255684, 30.210394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071552, 33.895531, 30.384430>,  <27.071739, 33.679440, 30.488852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071552, 33.895531, 30.384430>,  <27.071241, 34.255684, 30.210394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071552, 33.895531, 30.384430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459465, 0.386123, 0.799876,
		-0.888196, -0.200531, -0.413395,
		0.000778, -0.900387, 0.435090,
		27.071785, 33.625416, 30.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380816, 34.201660, 30.451889>,  <27.071241, 34.255684, 30.210394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380816, 34.201660, 30.451889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611059, 33.949253, 30.659922>,  <26.749205, 33.797810, 30.784742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611059, 33.949253, 30.659922>,  <26.380816, 34.201660, 30.451889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611059, 33.949253, 30.659922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484833, 0.248802, 0.838471,
		-0.658491, -0.734785, -0.162727,
		0.575609, -0.631021, 0.520083,
		26.783743, 33.759945, 30.815947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952509, 33.631416, 30.749798>,  <26.380816, 34.201660, 30.451889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952509, 33.631416, 30.749798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288223, 33.669479, 30.963917>,  <26.489653, 33.692318, 31.092388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288223, 33.669479, 30.963917>,  <25.952509, 33.631416, 30.749798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288223, 33.669479, 30.963917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539493, 0.267874, 0.798242,
		-0.067435, -0.958743, 0.276159,
		0.839285, 0.095157, 0.535299,
		26.540009, 33.698025, 31.124506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713812, 33.608982, 31.457037>,  <25.952509, 33.631416, 30.749798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713812, 33.608982, 31.457037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091309, 33.718155, 31.531723>,  <26.317806, 33.783657, 31.576534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091309, 33.718155, 31.531723>,  <25.713812, 33.608982, 31.457037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091309, 33.718155, 31.531723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296063, 0.445836, 0.844735,
		0.147308, -0.852491, 0.501557,
		0.943741, 0.272929, 0.186716,
		26.374432, 33.800034, 31.587738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605543, 33.643631, 32.117298>,  <25.713812, 33.608982, 31.457037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605543, 33.643631, 32.117298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953825, 33.821667, 32.033611>,  <26.162794, 33.928490, 31.983400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953825, 33.821667, 32.033611>,  <25.605543, 33.643631, 32.117298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953825, 33.821667, 32.033611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041304, 0.490071, 0.870703,
		0.490071, -0.749483, 0.445091,
		-0.870703, -0.445091, 0.209213,
		26.215036, 33.955193, 31.970848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784931, 33.919903, 32.760300>,  <25.605543, 33.643631, 32.117298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784931, 33.919903, 32.760300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.044720, 34.086140, 32.505596>,  <26.200594, 34.185883, 32.352772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.044720, 34.086140, 32.505596>,  <25.784931, 33.919903, 32.760300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044720, 34.086140, 32.505596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222202, 0.697137, 0.681635,
		0.727196, -0.584192, 0.360424,
		0.649471, 0.415595, -0.636764,
		26.239561, 34.210819, 32.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474817, 33.997311, 33.034420>,  <25.784931, 33.919903, 32.760300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474817, 33.997311, 33.034420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369606, 34.287590, 32.780117>,  <26.306479, 34.461758, 32.627537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.369606, 34.287590, 32.780117>,  <26.474817, 33.997311, 33.034420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369606, 34.287590, 32.780117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188095, 0.684884, 0.703956,
		0.946275, 0.065580, -0.316644,
		-0.263030, 0.725695, -0.635753,
		26.290697, 34.505299, 32.589390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901133, 34.451698, 33.202400>,  <26.474817, 33.997311, 33.034420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901133, 34.451698, 33.202400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627047, 34.665836, 33.004864>,  <26.462595, 34.794319, 32.886341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627047, 34.665836, 33.004864>,  <26.901133, 34.451698, 33.202400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627047, 34.665836, 33.004864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061333, 0.718045, 0.693289,
		0.725754, 0.444764, -0.524850,
		-0.685215, 0.535348, -0.493845,
		26.421482, 34.826439, 32.856709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092447, 35.232201, 33.073235>,  <26.901133, 34.451698, 33.202400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092447, 35.232201, 33.073235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.698391, 35.166344, 33.092796>,  <26.461958, 35.126831, 33.104534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.698391, 35.166344, 33.092796>,  <27.092447, 35.232201, 33.073235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698391, 35.166344, 33.092796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081358, 0.698099, 0.711364,
		-0.151256, 0.696816, -0.701120,
		-0.985141, -0.164640, 0.048900,
		26.402849, 35.116951, 33.107468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727730, 35.749935, 33.075802>,  <27.092447, 35.232201, 33.073235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727730, 35.749935, 33.075802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061625, 35.747818, 33.296051>,  <28.261961, 35.746548, 33.428200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061625, 35.747818, 33.296051>,  <27.727730, 35.749935, 33.075802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061625, 35.747818, 33.296051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549904, -0.044027, -0.834066,
		0.028654, 0.999016, -0.033843,
		0.834736, -0.005289, 0.550625,
		28.312046, 35.746231, 33.461239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113203, 36.211308, 32.795235>,  <27.727730, 35.749935, 33.075802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113203, 36.211308, 32.795235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340607, 35.941784, 32.984032>,  <28.477049, 35.780071, 33.097309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340607, 35.941784, 32.984032>,  <28.113203, 36.211308, 32.795235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340607, 35.941784, 32.984032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618860, -0.027745, -0.785011,
		0.542042, 0.738386, 0.401219,
		0.568510, -0.673807, 0.471996,
		28.511160, 35.739643, 33.125629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744131, 36.405331, 32.545834>,  <28.113203, 36.211308, 32.795235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744131, 36.405331, 32.545834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784048, 36.027470, 32.670845>,  <28.807999, 35.800755, 32.745850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784048, 36.027470, 32.670845>,  <28.744131, 36.405331, 32.545834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784048, 36.027470, 32.670845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636206, -0.180920, -0.750007,
		0.765038, 0.273677, 0.582938,
		0.099795, -0.944653, 0.312526,
		28.813986, 35.744072, 32.764603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341927, 36.328114, 32.241364>,  <28.744131, 36.405331, 32.545834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341927, 36.328114, 32.241364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231930, 35.956230, 32.339359>,  <29.165932, 35.733101, 32.398155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231930, 35.956230, 32.339359>,  <29.341927, 36.328114, 32.241364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231930, 35.956230, 32.339359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513360, -0.357432, -0.780195,
		0.812921, -0.088779, 0.575567,
		-0.274991, -0.929710, 0.244989,
		29.149433, 35.677319, 32.412857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970791, 35.858875, 32.297775>,  <29.341927, 36.328114, 32.241364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970791, 35.858875, 32.297775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640621, 35.649384, 32.213505>,  <29.442520, 35.523689, 32.162941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640621, 35.649384, 32.213505>,  <29.970791, 35.858875, 32.297775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640621, 35.649384, 32.213505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468893, -0.428253, -0.772489,
		0.314348, -0.736417, 0.599062,
		-0.825424, -0.523726, -0.210680,
		29.392994, 35.492264, 32.150299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263071, 35.229618, 32.277027>,  <29.970791, 35.858875, 32.297775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263071, 35.229618, 32.277027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910440, 35.194061, 32.091587>,  <29.698862, 35.172729, 31.980324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910440, 35.194061, 32.091587>,  <30.263071, 35.229618, 32.277027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910440, 35.194061, 32.091587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447272, -0.471253, -0.760177,
		-0.150900, -0.877507, 0.455203,
		-0.881576, -0.088889, -0.463596,
		29.645967, 35.167397, 31.952509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168816, 34.525749, 32.120655>,  <30.263071, 35.229618, 32.277027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168816, 34.525749, 32.120655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918427, 34.695095, 31.858685>,  <29.768194, 34.796703, 31.701504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918427, 34.695095, 31.858685>,  <30.168816, 34.525749, 32.120655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918427, 34.695095, 31.858685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362671, -0.585430, -0.725080,
		-0.690385, -0.691400, 0.212920,
		-0.625970, 0.423364, -0.654923,
		29.730635, 34.822105, 31.662209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753769, 34.047768, 31.853436>,  <30.168816, 34.525749, 32.120655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753769, 34.047768, 31.853436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731558, 34.341980, 31.583351>,  <29.718231, 34.518509, 31.421301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731558, 34.341980, 31.583351>,  <29.753769, 34.047768, 31.853436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731558, 34.341980, 31.583351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214935, -0.651592, -0.727482,
		-0.975049, -0.185522, -0.121910,
		-0.055529, 0.735534, -0.675209,
		29.714899, 34.562641, 31.380789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196348, 33.845402, 31.324203>,  <29.753769, 34.047768, 31.853436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196348, 33.845402, 31.324203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469671, 34.097649, 31.177010>,  <29.633665, 34.248997, 31.088694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469671, 34.097649, 31.177010>,  <29.196348, 33.845402, 31.324203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469671, 34.097649, 31.177010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144744, -0.610995, -0.778289,
		-0.715641, 0.478546, -0.508775,
		0.683306, 0.630618, -0.367986,
		29.674664, 34.286835, 31.066614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197647, 33.614899, 30.671804>,  <29.196348, 33.845402, 31.324203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197647, 33.614899, 30.671804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529100, 33.837391, 30.697018>,  <29.727972, 33.970886, 30.712147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529100, 33.837391, 30.697018>,  <29.197647, 33.614899, 30.671804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529100, 33.837391, 30.697018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395720, -0.502399, -0.768766,
		-0.395941, 0.661971, -0.636416,
		0.828635, 0.556228, 0.063035,
		29.777691, 34.004261, 30.715929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195480, 34.008030, 30.038773>,  <29.197647, 33.614899, 30.671804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195480, 34.008030, 30.038773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569860, 34.005573, 30.179607>,  <29.794489, 34.004101, 30.264109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569860, 34.005573, 30.179607>,  <29.195480, 34.008030, 30.038773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569860, 34.005573, 30.179607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313368, -0.441569, -0.840724,
		0.160630, 0.897206, -0.411362,
		0.935948, -0.006138, 0.352085,
		29.850645, 34.003731, 30.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601114, 34.140705, 29.451675>,  <29.195480, 34.008030, 30.038773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601114, 34.140705, 29.451675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866402, 34.023060, 29.726963>,  <30.025574, 33.952473, 29.892136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866402, 34.023060, 29.726963>,  <29.601114, 34.140705, 29.451675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866402, 34.023060, 29.726963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377103, -0.662976, -0.646727,
		0.646480, 0.688449, -0.328788,
		0.663217, -0.294109, 0.688217,
		30.065367, 33.934826, 29.933428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191246, 34.283096, 29.126715>,  <29.601114, 34.140705, 29.451675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191246, 34.283096, 29.126715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265141, 34.016979, 29.416063>,  <30.309477, 33.857311, 29.589672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265141, 34.016979, 29.416063>,  <30.191246, 34.283096, 29.126715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265141, 34.016979, 29.416063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514112, -0.561879, -0.648059,
		0.837593, 0.491613, 0.238234,
		0.184736, -0.665289, 0.723370,
		30.320560, 33.817394, 29.633074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839119, 33.988884, 28.974329>,  <30.191246, 34.283096, 29.126715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839119, 33.988884, 28.974329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692913, 33.693123, 29.200489>,  <30.605190, 33.515667, 29.336185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692913, 33.693123, 29.200489>,  <30.839119, 33.988884, 28.974329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692913, 33.693123, 29.200489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425704, -0.672976, -0.604880,
		0.827753, 0.019602, 0.560750,
		-0.365514, -0.739405, 0.565402,
		30.583260, 33.471302, 29.370110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348965, 33.502785, 28.862446>,  <30.839119, 33.988884, 28.974329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348965, 33.502785, 28.862446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063627, 33.294315, 29.049860>,  <30.892426, 33.169235, 29.162308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.063627, 33.294315, 29.049860>,  <31.348965, 33.502785, 28.862446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063627, 33.294315, 29.049860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435967, -0.853453, -0.285572,
		0.548703, 0.000555, 0.836017,
		-0.713342, -0.521170, 0.468534,
		30.849625, 33.137962, 29.190420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632126, 32.889797, 29.315336>,  <31.348965, 33.502785, 28.862446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632126, 32.889797, 29.315336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267406, 32.799870, 29.177887>,  <31.048574, 32.745911, 29.095417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267406, 32.799870, 29.177887>,  <31.632126, 32.889797, 29.315336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267406, 32.799870, 29.177887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318879, -0.914896, -0.247551,
		-0.258725, -0.335292, 0.905893,
		-0.911799, -0.224823, -0.343624,
		30.993866, 32.732422, 29.074800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443623, 32.379128, 29.739561>,  <31.632126, 32.889797, 29.315336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443623, 32.379128, 29.739561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198219, 32.325626, 29.428249>,  <31.050978, 32.293526, 29.241463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198219, 32.325626, 29.428249>,  <31.443623, 32.379128, 29.739561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198219, 32.325626, 29.428249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176329, -0.983871, 0.030090,
		-0.769751, -0.118773, 0.627198,
		-0.613508, -0.133755, -0.778278,
		31.014168, 32.285500, 29.194765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958874, 31.878868, 29.860813>,  <31.443623, 32.379128, 29.739561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958874, 31.878868, 29.860813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953917, 31.886185, 29.460911>,  <30.950941, 31.890574, 29.220970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953917, 31.886185, 29.460911>,  <30.958874, 31.878868, 29.860813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953917, 31.886185, 29.460911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151086, -0.988320, -0.019954,
		-0.988443, -0.151297, 0.009498,
		-0.012406, 0.018289, -0.999756,
		30.950197, 31.891672, 29.160984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592329, 31.230724, 29.654943>,  <30.958874, 31.878868, 29.860813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592329, 31.230724, 29.654943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771955, 31.349016, 29.317688>,  <30.879732, 31.419991, 29.115335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771955, 31.349016, 29.317688>,  <30.592329, 31.230724, 29.654943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771955, 31.349016, 29.317688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324617, -0.933157, -0.154407,
		-0.832443, -0.204358, -0.515049,
		0.449068, 0.295729, -0.843139,
		30.906675, 31.437735, 29.064747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386644, 30.692087, 29.254704>,  <30.592329, 31.230724, 29.654943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386644, 30.692087, 29.254704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690317, 30.873175, 29.067648>,  <30.872520, 30.981827, 28.955416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690317, 30.873175, 29.067648>,  <30.386644, 30.692087, 29.254704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690317, 30.873175, 29.067648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351983, -0.889916, -0.290100,
		-0.547492, 0.055639, -0.834959,
		0.759184, 0.452719, -0.467638,
		30.918072, 31.008991, 28.927357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394863, 30.399693, 28.655701>,  <30.386644, 30.692087, 29.254704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394863, 30.399693, 28.655701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754387, 30.573008, 28.682249>,  <30.970100, 30.676996, 28.698177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754387, 30.573008, 28.682249>,  <30.394863, 30.399693, 28.655701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754387, 30.573008, 28.682249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437678, -0.878761, -0.190308,
		-0.024136, 0.200098, -0.979478,
		0.898808, 0.433290, 0.066369,
		31.024029, 30.702995, 28.702160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848896, 30.156984, 28.020878>,  <30.394863, 30.399693, 28.655701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848896, 30.156984, 28.020878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050812, 30.250135, 28.353373>,  <31.171961, 30.306026, 28.552870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050812, 30.250135, 28.353373>,  <30.848896, 30.156984, 28.020878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050812, 30.250135, 28.353373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358183, -0.932625, 0.043769,
		0.785425, 0.275641, -0.554193,
		0.504790, 0.232880, 0.831237,
		31.202250, 30.320000, 28.602743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.515678, 31.227270, 45.434307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364555, 30.858736, 45.397648>,  <38.273880, 30.637615, 45.375652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364555, 30.858736, 45.397648>,  <38.515678, 31.227270, 45.434307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364555, 30.858736, 45.397648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083728, -0.132572, 0.987631,
		-0.922090, 0.365463, 0.127229,
		-0.377810, -0.921337, -0.091643,
		38.251213, 30.582335, 45.370155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092102, 31.117926, 45.965015>,  <38.515678, 31.227270, 45.434307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092102, 31.117926, 45.965015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127747, 30.739668, 45.839916>,  <38.149132, 30.512712, 45.764854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127747, 30.739668, 45.839916>,  <38.092102, 31.117926, 45.965015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127747, 30.739668, 45.839916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109939, -0.321419, 0.940534,
		-0.989936, -0.049427, -0.132604,
		0.089109, -0.945647, -0.312750,
		38.154480, 30.455975, 45.746090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495396, 30.720205, 46.217560>,  <38.092102, 31.117926, 45.965015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495396, 30.720205, 46.217560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788399, 30.457506, 46.145878>,  <37.964199, 30.299887, 46.102867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788399, 30.457506, 46.145878>,  <37.495396, 30.720205, 46.217560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788399, 30.457506, 46.145878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216621, -0.474427, 0.853226,
		-0.645376, -0.586174, -0.489787,
		0.732507, -0.656749, -0.179206,
		38.008152, 30.260481, 46.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245853, 30.138302, 46.495464>,  <37.495396, 30.720205, 46.217560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245853, 30.138302, 46.495464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617935, 30.007713, 46.428360>,  <37.841183, 29.929359, 46.388100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617935, 30.007713, 46.428360>,  <37.245853, 30.138302, 46.495464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617935, 30.007713, 46.428360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140764, -0.739392, 0.658396,
		-0.338986, -0.588827, -0.733738,
		0.930201, -0.326471, -0.167758,
		37.896996, 29.909773, 46.378033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242363, 29.397146, 46.318382>,  <37.245853, 30.138302, 46.495464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242363, 29.397146, 46.318382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606026, 29.483631, 46.460751>,  <37.824223, 29.535522, 46.546173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.606026, 29.483631, 46.460751>,  <37.242363, 29.397146, 46.318382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606026, 29.483631, 46.460751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066292, -0.768627, 0.636253,
		0.411134, -0.602051, -0.684473,
		0.909161, 0.216210, 0.355919,
		37.878773, 29.548494, 46.567528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617455, 28.753962, 46.389416>,  <37.242363, 29.397146, 46.318382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617455, 28.753962, 46.389416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825462, 28.999994, 46.626484>,  <37.950268, 29.147614, 46.768723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825462, 28.999994, 46.626484>,  <37.617455, 28.753962, 46.389416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825462, 28.999994, 46.626484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144004, -0.747064, 0.648967,
		0.841929, -0.252129, -0.477061,
		0.520018, 0.615083, 0.592667,
		37.981468, 29.184519, 46.804283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979439, 28.304777, 46.701065>,  <37.617455, 28.753962, 46.389416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979439, 28.304777, 46.701065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042000, 28.614653, 46.946144>,  <38.079536, 28.800577, 47.093193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042000, 28.614653, 46.946144>,  <37.979439, 28.304777, 46.701065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042000, 28.614653, 46.946144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001063, -0.620198, 0.784444,
		0.987693, -0.123338, -0.096176,
		0.156400, 0.774688, 0.612696,
		38.088921, 28.847059, 47.129951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373619, 28.096317, 47.273037>,  <37.979439, 28.304777, 46.701065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373619, 28.096317, 47.273037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254971, 28.438696, 47.442444>,  <38.183781, 28.644123, 47.544090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254971, 28.438696, 47.442444>,  <38.373619, 28.096317, 47.273037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254971, 28.438696, 47.442444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054960, -0.458044, 0.887229,
		0.953412, 0.239894, 0.182909,
		-0.296621, 0.855948, 0.423520,
		38.165985, 28.695480, 47.569500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685463, 28.235783, 47.902313>,  <38.373619, 28.096317, 47.273037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685463, 28.235783, 47.902313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.328606, 28.408144, 47.956566>,  <38.114491, 28.511560, 47.989117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.328606, 28.408144, 47.956566>,  <38.685463, 28.235783, 47.902313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328606, 28.408144, 47.956566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075762, -0.438709, 0.895430,
		0.445348, 0.788579, 0.424039,
		-0.892146, 0.430904, 0.135634,
		38.060963, 28.537415, 47.997257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704937, 28.377335, 48.601082>,  <38.685463, 28.235783, 47.902313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704937, 28.377335, 48.601082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331303, 28.374041, 48.458302>,  <38.107121, 28.372065, 48.372635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.331303, 28.374041, 48.458302>,  <38.704937, 28.377335, 48.601082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331303, 28.374041, 48.458302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251104, -0.695563, 0.673156,
		-0.253821, 0.718418, 0.647650,
		-0.934089, -0.008234, -0.356946,
		38.051075, 28.371571, 48.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301262, 28.460058, 49.196522>,  <38.704937, 28.377335, 48.601082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301262, 28.460058, 49.196522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021442, 28.305456, 48.956108>,  <37.853550, 28.212694, 48.811859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021442, 28.305456, 48.956108>,  <38.301262, 28.460058, 49.196522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021442, 28.305456, 48.956108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296901, -0.607848, 0.736458,
		-0.649981, 0.693639, 0.310468,
		-0.699553, -0.386505, -0.601031,
		37.811577, 28.189505, 48.775799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737423, 28.409277, 49.664368>,  <38.301262, 28.460058, 49.196522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737423, 28.409277, 49.664368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659180, 28.185555, 49.342148>,  <37.612232, 28.051321, 49.148815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659180, 28.185555, 49.342148>,  <37.737423, 28.409277, 49.664368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659180, 28.185555, 49.342148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356807, -0.724530, 0.589699,
		-0.913468, 0.402778, -0.057838,
		-0.195612, -0.559308, -0.805550,
		37.600494, 28.017761, 49.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050095, 28.300749, 49.671173>,  <37.737423, 28.409277, 49.664368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050095, 28.300749, 49.671173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265774, 28.005880, 49.508278>,  <37.395180, 27.828959, 49.410542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265774, 28.005880, 49.508278>,  <37.050095, 28.300749, 49.671173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265774, 28.005880, 49.508278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376070, -0.643420, 0.666770,
		-0.753550, -0.206370, -0.624158,
		0.539197, -0.737172, -0.407240,
		37.427532, 27.784729, 49.386105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585838, 27.709732, 49.495975>,  <37.050095, 28.300749, 49.671173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585838, 27.709732, 49.495975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955418, 27.583614, 49.582611>,  <37.177166, 27.507944, 49.634594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955418, 27.583614, 49.582611>,  <36.585838, 27.709732, 49.495975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955418, 27.583614, 49.582611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380489, -0.699231, 0.605231,
		-0.039378, -0.641612, -0.766018,
		0.923947, -0.315294, 0.216591,
		37.232601, 27.489027, 49.647587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109795, 27.984249, 50.024357>,  <36.585838, 27.709732, 49.495975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109795, 27.984249, 50.024357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826164, 28.199146, 50.207039>,  <35.655987, 28.328085, 50.316647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826164, 28.199146, 50.207039>,  <36.109795, 27.984249, 50.024357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826164, 28.199146, 50.207039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048315, 0.683185, -0.728646,
		-0.703473, -0.494601, -0.510388,
		-0.709078, 0.537242, 0.456705,
		35.613441, 28.360319, 50.344051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548298, 28.041582, 49.485004>,  <36.109795, 27.984249, 50.024357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548298, 28.041582, 49.485004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505024, 28.323294, 49.765659>,  <35.479061, 28.492321, 49.934052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505024, 28.323294, 49.765659>,  <35.548298, 28.041582, 49.485004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505024, 28.323294, 49.765659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, 0.665812, -0.705679,
		-0.964150, -0.246349, 0.098621,
		-0.108180, 0.704277, 0.701635,
		35.472569, 28.534576, 49.976151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782352, 28.386574, 49.386616>,  <35.548298, 28.041582, 49.485004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782352, 28.386574, 49.386616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042759, 28.640295, 49.553391>,  <35.199001, 28.792528, 49.653458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042759, 28.640295, 49.553391>,  <34.782352, 28.386574, 49.386616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042759, 28.640295, 49.553391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270390, 0.707036, -0.653444,
		-0.709272, 0.312667, 0.631801,
		0.651017, 0.634302, 0.416939,
		35.238064, 28.830585, 49.678471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440029, 28.975561, 49.271431>,  <34.782352, 28.386574, 49.386616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440029, 28.975561, 49.271431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807392, 29.103611, 49.364426>,  <35.027809, 29.180441, 49.420223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807392, 29.103611, 49.364426>,  <34.440029, 28.975561, 49.271431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807392, 29.103611, 49.364426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019665, 0.623830, -0.781313,
		-0.395149, 0.712991, 0.579224,
		0.918407, 0.320126, 0.232484,
		35.082912, 29.199648, 49.434170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415020, 29.724974, 49.327324>,  <34.440029, 28.975561, 49.271431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415020, 29.724974, 49.327324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791546, 29.619068, 49.243580>,  <35.017460, 29.555525, 49.193333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791546, 29.619068, 49.243580>,  <34.415020, 29.724974, 49.327324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791546, 29.619068, 49.243580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031274, 0.549170, -0.835125,
		0.336082, 0.792662, 0.508660,
		0.941313, -0.264763, -0.209356,
		35.073940, 29.539639, 49.180775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826576, 30.405275, 49.199158>,  <34.415020, 29.724974, 49.327324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826576, 30.405275, 49.199158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004543, 30.082022, 49.044773>,  <35.111324, 29.888069, 48.952141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004543, 30.082022, 49.044773>,  <34.826576, 30.405275, 49.199158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004543, 30.082022, 49.044773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030039, 0.444190, -0.895429,
		0.895069, 0.386796, 0.221902,
		0.444915, -0.808136, -0.385961,
		35.138020, 29.839581, 48.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293060, 30.713135, 48.611507>,  <34.826576, 30.405275, 49.199158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293060, 30.713135, 48.611507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296604, 30.318064, 48.549007>,  <35.298733, 30.081020, 48.511509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296604, 30.318064, 48.549007>,  <35.293060, 30.713135, 48.611507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296604, 30.318064, 48.549007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237571, 0.153859, -0.959108,
		0.971330, -0.028618, 0.236008,
		0.008864, -0.987678, -0.156246,
		35.299263, 30.021761, 48.502132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995110, 30.543831, 48.384380>,  <35.293060, 30.713135, 48.611507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995110, 30.543831, 48.384380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732113, 30.276995, 48.244270>,  <35.574314, 30.116894, 48.160206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732113, 30.276995, 48.244270>,  <35.995110, 30.543831, 48.384380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732113, 30.276995, 48.244270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221529, 0.273189, -0.936105,
		0.720158, -0.693079, -0.031841,
		-0.657493, -0.667090, -0.350276,
		35.534866, 30.076868, 48.139187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292873, 30.340765, 47.833897>,  <35.995110, 30.543831, 48.384380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292873, 30.340765, 47.833897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928864, 30.199614, 47.746876>,  <35.710457, 30.114922, 47.694664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928864, 30.199614, 47.746876>,  <36.292873, 30.340765, 47.833897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928864, 30.199614, 47.746876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108355, 0.304064, -0.946469,
		0.400141, -0.884884, -0.238470,
		-0.910026, -0.352882, -0.217550,
		35.655857, 30.093750, 47.681610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295021, 29.990192, 47.225254>,  <36.292873, 30.340765, 47.833897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295021, 29.990192, 47.225254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908714, 30.092670, 47.241543>,  <35.676929, 30.154158, 47.251316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908714, 30.092670, 47.241543>,  <36.295021, 29.990192, 47.225254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908714, 30.092670, 47.241543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083726, 0.456409, -0.885822,
		-0.245531, -0.852088, -0.462235,
		-0.965767, 0.256198, 0.040721,
		35.618984, 30.169529, 47.253757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923141, 29.812580, 46.649002>,  <36.295021, 29.990192, 47.225254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923141, 29.812580, 46.649002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708900, 30.117903, 46.793495>,  <35.580357, 30.301096, 46.880192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708900, 30.117903, 46.793495>,  <35.923141, 29.812580, 46.649002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708900, 30.117903, 46.793495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020174, 0.439212, -0.898157,
		-0.844227, -0.473771, -0.250644,
		-0.535606, 0.763305, 0.361236,
		35.548218, 30.346893, 46.901867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418949, 29.838322, 46.110943>,  <35.923141, 29.812580, 46.649002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418949, 29.838322, 46.110943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437931, 30.180477, 46.317265>,  <35.449322, 30.385771, 46.441059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437931, 30.180477, 46.317265>,  <35.418949, 29.838322, 46.110943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437931, 30.180477, 46.317265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008091, 0.516044, -0.856524,
		-0.998841, 0.044822, 0.017570,
		0.047458, 0.855389, 0.515808,
		35.452168, 30.437094, 46.472008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932602, 30.250122, 45.810093>,  <35.418949, 29.838322, 46.110943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932602, 30.250122, 45.810093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148941, 30.527348, 46.000732>,  <35.278744, 30.693684, 46.115116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148941, 30.527348, 46.000732>,  <34.932602, 30.250122, 45.810093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148941, 30.527348, 46.000732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228641, 0.666429, -0.709645,
		-0.809451, 0.274836, 0.518897,
		0.540844, 0.693064, 0.476603,
		35.311195, 30.735268, 46.143715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447269, 30.833101, 45.812073>,  <34.932602, 30.250122, 45.810093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447269, 30.833101, 45.812073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814011, 30.969288, 45.895470>,  <35.034054, 31.050999, 45.945507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814011, 30.969288, 45.895470>,  <34.447269, 30.833101, 45.812073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814011, 30.969288, 45.895470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133952, 0.754307, -0.642711,
		-0.376088, 0.561342, 0.737193,
		0.916850, 0.340465, 0.208493,
		35.089066, 31.071426, 45.958019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681107, 31.045010, 45.960453>,  <34.447269, 30.833101, 45.812073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681107, 31.045010, 45.960453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329720, 31.228914, 45.908424>,  <33.118889, 31.339256, 45.877209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329720, 31.228914, 45.908424>,  <33.681107, 31.045010, 45.960453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329720, 31.228914, 45.908424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405963, -0.574631, 0.710628,
		0.251975, 0.677067, 0.691440,
		-0.878466, 0.459760, -0.130072,
		33.066181, 31.366842, 45.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565014, 31.208809, 46.680397>,  <33.681107, 31.045010, 45.960453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565014, 31.208809, 46.680397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222912, 31.146494, 46.482704>,  <33.017651, 31.109104, 46.364090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222912, 31.146494, 46.482704>,  <33.565014, 31.208809, 46.680397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222912, 31.146494, 46.482704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268022, -0.683276, 0.679189,
		-0.443504, 0.713347, 0.542623,
		-0.855259, -0.155788, -0.494229,
		32.966335, 31.099758, 46.334435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060642, 31.328072, 47.091480>,  <33.565014, 31.208809, 46.680397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060642, 31.328072, 47.091480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898495, 31.087225, 46.816341>,  <32.801205, 30.942717, 46.651260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898495, 31.087225, 46.816341>,  <33.060642, 31.328072, 47.091480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898495, 31.087225, 46.816341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327565, -0.606799, 0.724221,
		-0.853449, 0.518892, 0.048745,
		-0.405371, -0.602119, -0.687843,
		32.776882, 30.906590, 46.609989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409294, 31.166754, 47.391125>,  <33.060642, 31.328072, 47.091480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409294, 31.166754, 47.391125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417233, 30.900375, 47.092831>,  <32.421993, 30.740547, 46.913853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417233, 30.900375, 47.092831>,  <32.409294, 31.166754, 47.391125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417233, 30.900375, 47.092831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313657, -0.712373, 0.627809,
		-0.949329, 0.221446, -0.223015,
		0.019844, -0.665947, -0.745735,
		32.423187, 30.700592, 46.869110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766430, 30.802238, 47.325977>,  <32.409294, 31.166754, 47.391125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766430, 30.802238, 47.325977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042839, 30.552898, 47.179596>,  <32.208683, 30.403294, 47.091766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042839, 30.552898, 47.179596>,  <31.766430, 30.802238, 47.325977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042839, 30.552898, 47.179596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267600, -0.690918, 0.671582,
		-0.671473, -0.366150, -0.644249,
		0.691024, -0.623350, -0.365951,
		32.250145, 30.365892, 47.069809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460819, 30.219475, 47.385708>,  <31.766430, 30.802238, 47.325977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460819, 30.219475, 47.385708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839325, 30.109198, 47.318089>,  <32.066429, 30.043032, 47.277515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839325, 30.109198, 47.318089>,  <31.460819, 30.219475, 47.385708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839325, 30.109198, 47.318089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051965, -0.645559, 0.761941,
		-0.319194, -0.712212, -0.625195,
		0.946264, -0.275695, -0.169049,
		32.123203, 30.026489, 47.267372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485275, 29.505789, 47.328621>,  <31.460819, 30.219475, 47.385708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485275, 29.505789, 47.328621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866507, 29.571840, 47.430111>,  <32.095245, 29.611471, 47.491005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866507, 29.571840, 47.430111>,  <31.485275, 29.505789, 47.328621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866507, 29.571840, 47.430111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129363, -0.535589, 0.834511,
		0.273693, -0.828177, -0.489096,
		0.953078, 0.165129, 0.253723,
		32.152431, 29.621378, 47.506229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281090, 28.833809, 46.975945>,  <31.485275, 29.505789, 47.328621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281090, 28.833809, 46.975945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899876, 28.718143, 47.011959>,  <30.671146, 28.648745, 47.033566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899876, 28.718143, 47.011959>,  <31.281090, 28.833809, 46.975945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899876, 28.718143, 47.011959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149503, 0.190658, -0.970205,
		0.263383, -0.938101, -0.224935,
		-0.953036, -0.289164, 0.090033,
		30.613964, 28.631393, 47.038967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075104, 28.370342, 46.457840>,  <31.281090, 28.833809, 46.975945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075104, 28.370342, 46.457840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719904, 28.520378, 46.564247>,  <30.506784, 28.610399, 46.628090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719904, 28.520378, 46.564247>,  <31.075104, 28.370342, 46.457840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719904, 28.520378, 46.564247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156339, 0.297767, -0.941750,
		-0.432449, -0.877863, -0.205776,
		-0.888001, 0.375088, 0.266014,
		30.453503, 28.632904, 46.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611589, 28.096352, 46.027691>,  <31.075104, 28.370342, 46.457840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611589, 28.096352, 46.027691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448156, 28.439066, 46.153530>,  <30.350096, 28.644695, 46.229034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448156, 28.439066, 46.153530>,  <30.611589, 28.096352, 46.027691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448156, 28.439066, 46.153530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123551, 0.289595, -0.949142,
		-0.904320, -0.426673, -0.012467,
		-0.408584, 0.856787, 0.314603,
		30.325581, 28.696102, 46.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121469, 28.273462, 45.498547>,  <30.611589, 28.096352, 46.027691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121469, 28.273462, 45.498547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.146122, 28.615883, 45.703827>,  <30.160913, 28.821335, 45.826996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.146122, 28.615883, 45.703827>,  <30.121469, 28.273462, 45.498547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146122, 28.615883, 45.703827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127706, 0.516718, -0.846578,
		-0.989895, -0.013365, 0.141168,
		0.061629, 0.856051, 0.513204,
		30.164610, 28.872698, 45.857788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527685, 28.696848, 45.306160>,  <30.121469, 28.273462, 45.498547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527685, 28.696848, 45.306160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798475, 28.948402, 45.459110>,  <29.960949, 29.099335, 45.550880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798475, 28.948402, 45.459110>,  <29.527685, 28.696848, 45.306160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798475, 28.948402, 45.459110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099359, 0.592857, -0.799154,
		-0.729270, 0.503014, 0.463834,
		0.676973, 0.628886, 0.382374,
		30.001568, 29.137068, 45.573822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170671, 29.392553, 45.332653>,  <29.527685, 28.696848, 45.306160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170671, 29.392553, 45.332653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569139, 29.427485, 45.330902>,  <29.808220, 29.448444, 45.329853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569139, 29.427485, 45.330902>,  <29.170671, 29.392553, 45.332653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569139, 29.427485, 45.330902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057239, 0.613468, -0.787643,
		-0.066101, 0.784876, 0.616117,
		0.996170, 0.087330, -0.004375,
		29.867990, 29.453684, 45.329590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284206, 30.133955, 45.235214>,  <29.170671, 29.392553, 45.332653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284206, 30.133955, 45.235214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634628, 29.963856, 45.144268>,  <29.844881, 29.861795, 45.089699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634628, 29.963856, 45.144268>,  <29.284206, 30.133955, 45.235214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634628, 29.963856, 45.144268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236469, 0.789770, -0.565991,
		0.420255, 0.442072, 0.792438,
		0.876052, -0.425248, -0.227369,
		29.897444, 29.836281, 45.076057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.505463, 25.696741, 47.689232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747475, 25.949764, 47.882648>,  <35.892681, 26.101578, 47.998699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747475, 25.949764, 47.882648>,  <35.505463, 25.696741, 47.689232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747475, 25.949764, 47.882648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081532, 0.653335, -0.752666,
		-0.792019, 0.415959, 0.446859,
		0.605027, 0.632560, 0.483540,
		35.928982, 26.139532, 48.027710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235203, 26.385124, 47.769821>,  <35.505463, 25.696741, 47.689232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235203, 26.385124, 47.769821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634552, 26.399761, 47.752335>,  <35.874161, 26.408545, 47.741844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.634552, 26.399761, 47.752335>,  <35.235203, 26.385124, 47.769821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634552, 26.399761, 47.752335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056442, 0.526498, -0.848301,
		-0.008027, 0.849388, 0.527707,
		0.998374, 0.036594, -0.043715,
		35.934063, 26.410740, 47.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286968, 26.969252, 47.457664>,  <35.235203, 26.385124, 47.769821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286968, 26.969252, 47.457664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629925, 26.771717, 47.399696>,  <35.835701, 26.653196, 47.364914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629925, 26.771717, 47.399696>,  <35.286968, 26.969252, 47.457664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629925, 26.771717, 47.399696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093371, 0.426165, -0.899814,
		0.506121, 0.757963, 0.411501,
		0.857393, -0.493837, -0.144919,
		35.887142, 26.623566, 47.356220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757313, 27.544666, 47.217804>,  <35.286968, 26.969252, 47.457664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757313, 27.544666, 47.217804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898651, 27.195503, 47.083237>,  <35.983456, 26.986006, 47.002495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.898651, 27.195503, 47.083237>,  <35.757313, 27.544666, 47.217804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898651, 27.195503, 47.083237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000178, 0.359678, -0.933076,
		0.935492, 0.329641, 0.127247,
		0.353348, -0.872908, -0.336417,
		36.004654, 26.933630, 46.982311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147247, 27.660524, 46.570072>,  <35.757313, 27.544666, 47.217804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147247, 27.660524, 46.570072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.085449, 27.267143, 46.532227>,  <36.048370, 27.031115, 46.509518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.085449, 27.267143, 46.532227>,  <36.147247, 27.660524, 46.570072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085449, 27.267143, 46.532227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187882, 0.064773, -0.980053,
		0.969964, -0.169193, 0.174766,
		-0.154498, -0.983452, -0.094616,
		36.039101, 26.972107, 46.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766743, 27.473711, 46.275322>,  <36.147247, 27.660524, 46.570072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766743, 27.473711, 46.275322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477970, 27.203833, 46.213879>,  <36.304707, 27.041904, 46.177013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477970, 27.203833, 46.213879>,  <36.766743, 27.473711, 46.275322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477970, 27.203833, 46.213879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082874, 0.136080, -0.987225,
		0.686981, -0.725442, -0.042326,
		-0.721934, -0.674697, -0.153605,
		36.261391, 27.001423, 46.167797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772537, 27.341686, 45.640633>,  <36.766743, 27.473711, 46.275322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772537, 27.341686, 45.640633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.410954, 27.175484, 45.681068>,  <36.194004, 27.075762, 45.705330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.410954, 27.175484, 45.681068>,  <36.772537, 27.341686, 45.640633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410954, 27.175484, 45.681068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122068, 0.024164, -0.992228,
		0.409835, -0.909269, -0.072563,
		-0.903955, -0.415507, 0.101089,
		36.139767, 27.050833, 45.711395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799404, 26.666264, 45.208511>,  <36.772537, 27.341686, 45.640633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799404, 26.666264, 45.208511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417503, 26.768038, 45.270100>,  <36.188362, 26.829102, 45.307053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417503, 26.768038, 45.270100>,  <36.799404, 26.666264, 45.208511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417503, 26.768038, 45.270100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217906, -0.246155, -0.944417,
		-0.202391, -0.935238, 0.290461,
		-0.954753, 0.254435, 0.153975,
		36.131077, 26.844368, 45.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333065, 26.121181, 44.946362>,  <36.799404, 26.666264, 45.208511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333065, 26.121181, 44.946362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.113613, 26.454660, 44.971516>,  <35.981941, 26.654747, 44.986610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.113613, 26.454660, 44.971516>,  <36.333065, 26.121181, 44.946362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113613, 26.454660, 44.971516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317522, -0.138183, -0.938129,
		-0.773425, -0.534653, 0.340528,
		-0.548629, 0.833698, 0.062890,
		35.949024, 26.704769, 44.990383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775967, 25.977245, 44.669392>,  <36.333065, 26.121181, 44.946362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775967, 25.977245, 44.669392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730820, 26.374681, 44.666737>,  <35.703732, 26.613142, 44.665146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730820, 26.374681, 44.666737>,  <35.775967, 25.977245, 44.669392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730820, 26.374681, 44.666737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169660, -0.025849, -0.985164,
		-0.979019, -0.110063, 0.171490,
		-0.112863, 0.993588, -0.006633,
		35.696960, 26.672758, 44.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129902, 26.123896, 44.239346>,  <35.775967, 25.977245, 44.669392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129902, 26.123896, 44.239346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378090, 26.437571, 44.242561>,  <35.527004, 26.625776, 44.244492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378090, 26.437571, 44.242561>,  <35.129902, 26.123896, 44.239346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378090, 26.437571, 44.242561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018483, -0.004378, -0.999820,
		-0.784012, 0.620507, -0.017211,
		0.620470, 0.784189, 0.008037,
		35.564232, 26.672827, 44.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859867, 26.631178, 43.685970>,  <35.129902, 26.123896, 44.239346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859867, 26.631178, 43.685970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246449, 26.700825, 43.761494>,  <35.478397, 26.742613, 43.806808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246449, 26.700825, 43.761494>,  <34.859867, 26.631178, 43.685970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246449, 26.700825, 43.761494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174444, 0.094549, -0.980117,
		-0.188508, 0.980175, 0.061003,
		0.966454, 0.174119, 0.188808,
		35.536385, 26.753059, 43.818138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140663, 27.166899, 44.052383>,  <34.859867, 26.631178, 43.685970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140663, 27.166899, 44.052383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757591, 27.281057, 44.037441>,  <34.527748, 27.349552, 44.028477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757591, 27.281057, 44.037441>,  <35.140663, 27.166899, 44.052383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757591, 27.281057, 44.037441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222244, -0.650741, 0.726047,
		0.182907, 0.703622, 0.686630,
		-0.957681, 0.285398, -0.037351,
		34.470287, 27.366676, 44.026237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889282, 26.857664, 44.579868>,  <35.140663, 27.166899, 44.052383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889282, 26.857664, 44.579868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537949, 26.972551, 44.427013>,  <34.327148, 27.041483, 44.335300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537949, 26.972551, 44.427013>,  <34.889282, 26.857664, 44.579868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537949, 26.972551, 44.427013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466449, -0.689913, 0.553576,
		-0.104647, 0.664475, 0.739948,
		-0.878336, 0.287217, -0.382141,
		34.274448, 27.058716, 44.312370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486053, 26.819674, 45.099136>,  <34.889282, 26.857664, 44.579868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486053, 26.819674, 45.099136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.199345, 26.788406, 44.821972>,  <34.027317, 26.769646, 44.655674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.199345, 26.788406, 44.821972>,  <34.486053, 26.819674, 45.099136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199345, 26.788406, 44.821972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528036, -0.588161, 0.612572,
		-0.455426, 0.804958, 0.380303,
		-0.716774, -0.078168, -0.692911,
		33.984314, 26.764956, 44.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872147, 27.182505, 45.394905>,  <34.486053, 26.819674, 45.099136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872147, 27.182505, 45.394905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760654, 26.907654, 45.126526>,  <33.693760, 26.742743, 44.965500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760654, 26.907654, 45.126526>,  <33.872147, 27.182505, 45.394905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760654, 26.907654, 45.126526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547280, -0.460448, 0.698907,
		-0.789174, 0.561998, -0.247713,
		-0.278726, -0.687128, -0.670944,
		33.677036, 26.701515, 44.925243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155994, 27.195913, 45.403477>,  <33.872147, 27.182505, 45.394905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155994, 27.195913, 45.403477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.251286, 26.845648, 45.235447>,  <33.308460, 26.635489, 45.134628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.251286, 26.845648, 45.235447>,  <33.155994, 27.195913, 45.403477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251286, 26.845648, 45.235447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666184, -0.462068, 0.585400,
		-0.706716, 0.140389, -0.693429,
		0.238228, -0.875662, -0.420075,
		33.322754, 26.582949, 45.109425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517303, 26.959627, 45.157677>,  <33.155994, 27.195913, 45.403477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517303, 26.959627, 45.157677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740459, 26.628038, 45.141884>,  <32.874355, 26.429085, 45.132408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740459, 26.628038, 45.141884>,  <32.517303, 26.959627, 45.157677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740459, 26.628038, 45.141884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706501, -0.499356, 0.501498,
		-0.435444, -0.251887, -0.864258,
		0.557893, -0.828973, -0.039483,
		32.907825, 26.379347, 45.130039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016689, 26.504177, 45.082157>,  <32.517303, 26.959627, 45.157677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016689, 26.504177, 45.082157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353268, 26.329865, 45.209949>,  <32.555214, 26.225277, 45.286625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353268, 26.329865, 45.209949>,  <32.016689, 26.504177, 45.082157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353268, 26.329865, 45.209949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498914, -0.399527, 0.769067,
		-0.207504, -0.806519, -0.553597,
		0.841444, -0.435781, 0.319480,
		32.605701, 26.199131, 45.305794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875910, 25.806787, 45.094002>,  <32.016689, 26.504177, 45.082157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875910, 25.806787, 45.094002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.165745, 25.845139, 45.366997>,  <32.339645, 25.868149, 45.530792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.165745, 25.845139, 45.366997>,  <31.875910, 25.806787, 45.094002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165745, 25.845139, 45.366997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617152, -0.350504, 0.704464,
		0.306755, -0.931641, -0.194800,
		0.724586, 0.095877, 0.682483,
		32.383121, 25.873901, 45.571743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880186, 25.168489, 45.405437>,  <31.875910, 25.806787, 45.094002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880186, 25.168489, 45.405437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082275, 25.409189, 45.652870>,  <32.203529, 25.553608, 45.801331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082275, 25.409189, 45.652870>,  <31.880186, 25.168489, 45.405437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082275, 25.409189, 45.652870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479062, -0.400648, 0.781013,
		0.717808, -0.690927, 0.085857,
		0.505224, 0.601748, 0.618585,
		32.233841, 25.589714, 45.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173225, 24.714085, 45.920124>,  <31.880186, 25.168489, 45.405437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173225, 24.714085, 45.920124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.140419, 25.082573, 46.072243>,  <32.120735, 25.303667, 46.163513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.140419, 25.082573, 46.072243>,  <32.173225, 24.714085, 45.920124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140419, 25.082573, 46.072243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401898, -0.379749, 0.833228,
		0.912004, -0.084504, 0.401381,
		-0.082013, 0.921222, 0.380295,
		32.115814, 25.358940, 46.186333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473671, 24.624496, 46.562515>,  <32.173225, 24.714085, 45.920124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473671, 24.624496, 46.562515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232838, 24.940325, 46.609978>,  <32.088337, 25.129822, 46.638454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232838, 24.940325, 46.609978>,  <32.473671, 24.624496, 46.562515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232838, 24.940325, 46.609978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494168, -0.485229, 0.721353,
		0.627135, 0.375675, 0.682327,
		-0.602079, 0.789570, 0.118658,
		32.052216, 25.177197, 46.645576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254631, 24.694626, 47.328594>,  <32.473671, 24.624496, 46.562515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254631, 24.694626, 47.328594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983059, 24.938326, 47.164707>,  <31.820114, 25.084545, 47.066376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983059, 24.938326, 47.164707>,  <32.254631, 24.694626, 47.328594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983059, 24.938326, 47.164707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608004, -0.153742, 0.778906,
		0.411557, 0.777933, 0.474806,
		-0.678934, 0.609249, -0.409713,
		31.779379, 25.121101, 47.041794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043430, 25.101221, 47.811604>,  <32.254631, 24.694626, 47.328594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043430, 25.101221, 47.811604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733418, 25.112080, 47.559067>,  <31.547411, 25.118595, 47.407543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733418, 25.112080, 47.559067>,  <32.043430, 25.101221, 47.811604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733418, 25.112080, 47.559067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626029, -0.169161, 0.761231,
		-0.086135, 0.985214, 0.148099,
		-0.775028, 0.027146, -0.631343,
		31.500910, 25.120224, 47.369663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475643, 25.614632, 48.067951>,  <32.043430, 25.101221, 47.811604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475643, 25.614632, 48.067951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346443, 25.330595, 47.817692>,  <31.268923, 25.160173, 47.667534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.346443, 25.330595, 47.817692>,  <31.475643, 25.614632, 48.067951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346443, 25.330595, 47.817692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647294, -0.316522, 0.693415,
		-0.690421, 0.628955, -0.357402,
		-0.323001, -0.710092, -0.625651,
		31.249542, 25.117567, 47.629997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874559, 26.067717, 48.316566>,  <31.475643, 25.614632, 48.067951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874559, 26.067717, 48.316566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979767, 26.330671, 48.599030>,  <31.042891, 26.488445, 48.768509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979767, 26.330671, 48.599030>,  <30.874559, 26.067717, 48.316566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979767, 26.330671, 48.599030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351479, 0.746921, -0.564422,
		-0.898490, -0.099748, 0.427511,
		0.263017, 0.657388, 0.706160,
		31.058672, 26.527887, 48.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241377, 26.463669, 48.485546>,  <30.874559, 26.067717, 48.316566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241377, 26.463669, 48.485546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.546482, 26.693806, 48.603645>,  <30.729546, 26.831888, 48.674503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.546482, 26.693806, 48.603645>,  <30.241377, 26.463669, 48.485546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546482, 26.693806, 48.603645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360541, 0.757369, -0.544429,
		-0.536842, 0.308824, 0.785130,
		0.762765, 0.575343, 0.295244,
		30.775312, 26.866409, 48.692219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909330, 27.106730, 48.680614>,  <30.241377, 26.463669, 48.485546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909330, 27.106730, 48.680614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290419, 27.184048, 48.586838>,  <30.519072, 27.230438, 48.530571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290419, 27.184048, 48.586838>,  <29.909330, 27.106730, 48.680614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290419, 27.184048, 48.586838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281785, 0.850717, -0.443710,
		0.113675, 0.488792, 0.864962,
		0.952720, 0.193295, -0.234439,
		30.576235, 27.242037, 48.516506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818621, 27.737471, 48.618900>,  <29.909330, 27.106730, 48.680614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818621, 27.737471, 48.618900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197802, 27.705090, 48.495720>,  <30.425310, 27.685661, 48.421814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197802, 27.705090, 48.495720>,  <29.818621, 27.737471, 48.618900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197802, 27.705090, 48.495720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064318, 0.898525, -0.434184,
		0.311848, 0.431393, 0.846553,
		0.947953, -0.080951, -0.307949,
		30.482187, 27.680803, 48.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238249, 28.344496, 48.779888>,  <29.818621, 27.737471, 48.618900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238249, 28.344496, 48.779888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367226, 28.146570, 48.457104>,  <30.444611, 28.027815, 48.263432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367226, 28.146570, 48.457104>,  <30.238249, 28.344496, 48.779888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367226, 28.146570, 48.457104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043147, 0.843929, -0.534718,
		0.945606, 0.207233, 0.250767,
		0.322441, -0.494812, -0.806965,
		30.463959, 27.998127, 48.215015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691557, 28.864544, 48.440342>,  <30.238249, 28.344496, 48.779888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691557, 28.864544, 48.440342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.603928, 28.582724, 48.170345>,  <30.551350, 28.413631, 48.008347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.603928, 28.582724, 48.170345>,  <30.691557, 28.864544, 48.440342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603928, 28.582724, 48.170345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063147, 0.700583, -0.710771,
		0.973663, -0.113086, -0.197969,
		-0.219072, -0.704553, -0.674991,
		30.538206, 28.371357, 47.967850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035172, 29.014364, 47.794739>,  <30.691557, 28.864544, 48.440342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035172, 29.014364, 47.794739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.722303, 28.796543, 47.673634>,  <30.534582, 28.665850, 47.600971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.722303, 28.796543, 47.673634>,  <31.035172, 29.014364, 47.794739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722303, 28.796543, 47.673634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157947, 0.643356, -0.749096,
		0.602707, -0.538104, -0.589227,
		-0.782174, -0.544553, -0.302763,
		30.487652, 28.633177, 47.582806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813499, 28.813314, 47.661808>,  <31.035172, 29.014364, 47.794739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813499, 28.813314, 47.661808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.075500, 29.088741, 47.786289>,  <32.232700, 29.253998, 47.860977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.075500, 29.088741, 47.786289>,  <31.813499, 28.813314, 47.661808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075500, 29.088741, 47.786289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225530, -0.571217, 0.789207,
		0.721186, -0.446747, -0.529441,
		0.655002, 0.688569, 0.311199,
		32.271999, 29.295313, 47.879650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437695, 28.446247, 47.962944>,  <31.813499, 28.813314, 47.661808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437695, 28.446247, 47.962944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458908, 28.814470, 48.117737>,  <32.471638, 29.035404, 48.210613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458908, 28.814470, 48.117737>,  <32.437695, 28.446247, 47.962944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458908, 28.814470, 48.117737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089448, -0.390350, 0.916311,
		0.994579, -0.013980, -0.103043,
		0.053033, 0.920560, 0.386984,
		32.474819, 29.090639, 48.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071831, 28.547953, 48.251656>,  <32.437695, 28.446247, 47.962944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071831, 28.547953, 48.251656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842445, 28.815498, 48.440868>,  <32.704815, 28.976025, 48.554398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.842445, 28.815498, 48.440868>,  <33.071831, 28.547953, 48.251656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842445, 28.815498, 48.440868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260261, -0.398752, 0.879353,
		0.776788, 0.627391, 0.054592,
		-0.573467, 0.668863, 0.473031,
		32.670406, 29.016157, 48.582779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488949, 28.910158, 48.743877>,  <33.071831, 28.547953, 48.251656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488949, 28.910158, 48.743877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121853, 28.952824, 48.896919>,  <32.901596, 28.978422, 48.988743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121853, 28.952824, 48.896919>,  <33.488949, 28.910158, 48.743877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121853, 28.952824, 48.896919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329190, -0.334742, 0.882939,
		0.222250, 0.936254, 0.272092,
		-0.917736, 0.106663, 0.382602,
		32.846531, 28.984823, 49.011700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546360, 29.333084, 49.371548>,  <33.488949, 28.910158, 48.743877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546360, 29.333084, 49.371548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200184, 29.135355, 49.404194>,  <32.992477, 29.016718, 49.423782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200184, 29.135355, 49.404194>,  <33.546360, 29.333084, 49.371548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200184, 29.135355, 49.404194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203991, -0.198864, 0.958562,
		-0.457609, 0.846225, 0.272942,
		-0.865438, -0.494324, 0.081620,
		32.940552, 28.987059, 49.428680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269817, 29.541737, 50.018410>,  <33.546360, 29.333084, 49.371548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269817, 29.541737, 50.018410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.066418, 29.202288, 49.960075>,  <32.944378, 28.998619, 49.925076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.066418, 29.202288, 49.960075>,  <33.269817, 29.541737, 50.018410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066418, 29.202288, 49.960075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150203, -0.254189, 0.955420,
		-0.847858, 0.463930, 0.256721,
		-0.508504, -0.848621, -0.145832,
		32.913868, 28.947701, 49.916325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874622, 29.431828, 50.631229>,  <33.269817, 29.541737, 50.018410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874622, 29.431828, 50.631229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869053, 29.066299, 50.468880>,  <32.865711, 28.846983, 50.371468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869053, 29.066299, 50.468880>,  <32.874622, 29.431828, 50.631229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869053, 29.066299, 50.468880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037747, -0.405148, 0.913471,
		-0.999190, 0.028042, -0.028852,
		-0.013927, -0.913821, -0.405878,
		32.864876, 28.792152, 50.347115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454350, 29.037512, 51.156075>,  <32.874622, 29.431828, 50.631229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454350, 29.037512, 51.156075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620346, 28.756889, 50.924351>,  <32.719944, 28.588516, 50.785316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620346, 28.756889, 50.924351>,  <32.454350, 29.037512, 51.156075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620346, 28.756889, 50.924351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065498, -0.612038, 0.788111,
		-0.907466, -0.365000, -0.208038,
		0.414988, -0.701558, -0.579311,
		32.744843, 28.546421, 50.750557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096920, 28.357861, 51.266552>,  <32.454350, 29.037512, 51.156075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096920, 28.357861, 51.266552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.446419, 28.262272, 51.097103>,  <32.656120, 28.204918, 50.995434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.446419, 28.262272, 51.097103>,  <32.096920, 28.357861, 51.266552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446419, 28.262272, 51.097103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206815, -0.605763, 0.768296,
		-0.440214, -0.758909, -0.479862,
		0.873750, -0.238972, -0.423619,
		32.708542, 28.190580, 50.970016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.408466, 35.305542, 36.216461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757614, 35.220520, 36.392155>,  <33.967102, 35.169506, 36.497570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757614, 35.220520, 36.392155>,  <33.408466, 35.305542, 36.216461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757614, 35.220520, 36.392155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482298, -0.239080, 0.842751,
		-0.074118, -0.947450, -0.311198,
		0.872866, -0.212553, 0.439233,
		34.019474, 35.156754, 36.523926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312817, 34.510815, 36.560825>,  <33.408466, 35.305542, 36.216461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312817, 34.510815, 36.560825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633389, 34.682087, 36.727859>,  <33.825729, 34.784851, 36.828079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633389, 34.682087, 36.727859>,  <33.312817, 34.510815, 36.560825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633389, 34.682087, 36.727859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324420, -0.275347, 0.904950,
		0.502462, -0.860725, -0.081761,
		0.801426, 0.428179, 0.417588,
		33.873817, 34.810539, 36.853134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552979, 34.082790, 37.106926>,  <33.312817, 34.510815, 36.560825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552979, 34.082790, 37.106926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724945, 34.429573, 37.207775>,  <33.828125, 34.637642, 37.268284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724945, 34.429573, 37.207775>,  <33.552979, 34.082790, 37.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724945, 34.429573, 37.207775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364196, -0.089003, 0.927060,
		0.826157, -0.490378, 0.277477,
		0.429913, 0.866953, 0.252125,
		33.853920, 34.689659, 37.283413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194336, 34.024632, 37.522987>,  <33.552979, 34.082790, 37.106926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194336, 34.024632, 37.522987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015980, 34.378063, 37.580212>,  <33.908966, 34.590122, 37.614548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015980, 34.378063, 37.580212>,  <34.194336, 34.024632, 37.522987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015980, 34.378063, 37.580212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325292, -0.308863, 0.893750,
		0.833885, 0.351982, 0.425141,
		-0.445894, 0.883579, 0.143059,
		33.882210, 34.643135, 37.623131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225311, 34.035854, 38.235592>,  <34.194336, 34.024632, 37.522987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225311, 34.035854, 38.235592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981270, 34.340343, 38.147671>,  <33.834846, 34.523037, 38.094917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981270, 34.340343, 38.147671>,  <34.225311, 34.035854, 38.235592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981270, 34.340343, 38.147671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438191, -0.093048, 0.894053,
		0.660122, 0.641779, 0.390330,
		-0.610104, 0.761224, -0.219798,
		33.798237, 34.568710, 38.081730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236187, 34.440559, 38.920162>,  <34.225311, 34.035854, 38.235592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236187, 34.440559, 38.920162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908379, 34.537548, 38.712475>,  <33.711693, 34.595741, 38.587860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908379, 34.537548, 38.712475>,  <34.236187, 34.440559, 38.920162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908379, 34.537548, 38.712475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522028, 0.057849, 0.850964,
		0.236370, 0.968432, 0.079167,
		-0.819522, 0.242470, -0.519222,
		33.662521, 34.610291, 38.556709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892365, 35.037697, 39.252506>,  <34.236187, 34.440559, 38.920162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892365, 35.037697, 39.252506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613243, 34.845860, 39.039692>,  <33.445770, 34.730759, 38.912003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613243, 34.845860, 39.039692>,  <33.892365, 35.037697, 39.252506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613243, 34.845860, 39.039692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547101, -0.122569, 0.828044,
		-0.462334, 0.868890, -0.176855,
		-0.697802, -0.479591, -0.532039,
		33.403904, 34.701981, 38.880081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380909, 35.220932, 39.515331>,  <33.892365, 35.037697, 39.252506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380909, 35.220932, 39.515331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229267, 34.891705, 39.346180>,  <33.138283, 34.694168, 39.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229267, 34.891705, 39.346180>,  <33.380909, 35.220932, 39.515331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229267, 34.891705, 39.346180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623923, -0.110129, 0.773687,
		-0.683372, 0.557156, -0.471783,
		-0.379107, -0.823073, -0.422882,
		33.115536, 34.644783, 39.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606728, 35.216381, 39.568787>,  <33.380909, 35.220932, 39.515331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606728, 35.216381, 39.568787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741447, 34.841091, 39.537029>,  <32.822277, 34.615917, 39.517975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741447, 34.841091, 39.537029>,  <32.606728, 35.216381, 39.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741447, 34.841091, 39.537029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546353, -0.263405, 0.795057,
		-0.766854, -0.224397, -0.601315,
		0.336798, -0.938224, -0.079393,
		32.842487, 34.559624, 39.513210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016701, 34.893414, 39.853024>,  <32.606728, 35.216381, 39.568787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016701, 34.893414, 39.853024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302303, 34.613361, 39.852871>,  <32.473667, 34.445328, 39.852779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302303, 34.613361, 39.852871>,  <32.016701, 34.893414, 39.853024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302303, 34.613361, 39.852871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385815, -0.393913, 0.834254,
		-0.584239, -0.595520, -0.551381,
		0.714011, -0.700134, -0.000379,
		32.516506, 34.403320, 39.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721176, 34.170391, 39.959507>,  <32.016701, 34.893414, 39.853024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721176, 34.170391, 39.959507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101151, 34.140469, 40.080849>,  <32.329136, 34.122517, 40.153652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101151, 34.140469, 40.080849>,  <31.721176, 34.170391, 39.959507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101151, 34.140469, 40.080849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293884, -0.543526, 0.786264,
		0.106066, -0.836053, -0.538299,
		0.949939, -0.074802, 0.303352,
		32.386131, 34.118027, 40.171856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741364, 33.476921, 40.209183>,  <31.721176, 34.170391, 39.959507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741364, 33.476921, 40.209183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074089, 33.645676, 40.353458>,  <32.273724, 33.746929, 40.440022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074089, 33.645676, 40.353458>,  <31.741364, 33.476921, 40.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074089, 33.645676, 40.353458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016443, -0.630807, 0.775765,
		0.554809, -0.651224, -0.517778,
		0.831815, 0.421887, 0.360685,
		32.323635, 33.772243, 40.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537149, 32.914745, 39.839352>,  <31.741364, 33.476921, 40.209183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537149, 32.914745, 39.839352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144583, 32.857407, 39.890385>,  <30.909042, 32.823006, 39.921005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144583, 32.857407, 39.890385>,  <31.537149, 32.914745, 39.839352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144583, 32.857407, 39.890385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162929, 0.271155, -0.948646,
		0.101386, -0.951803, -0.289470,
		-0.981415, -0.143342, 0.127585,
		30.850159, 32.814404, 39.928661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322636, 32.405678, 39.305489>,  <31.537149, 32.914745, 39.839352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322636, 32.405678, 39.305489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993475, 32.611568, 39.401730>,  <30.795979, 32.735104, 39.459473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993475, 32.611568, 39.401730>,  <31.322636, 32.405678, 39.305489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993475, 32.611568, 39.401730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145004, 0.219186, -0.964848,
		-0.549370, -0.828863, -0.105731,
		-0.822901, 0.514727, 0.240603,
		30.746605, 32.765987, 39.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888599, 32.440502, 38.650284>,  <31.322636, 32.405678, 39.305489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888599, 32.440502, 38.650284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719938, 32.725502, 38.874622>,  <30.618742, 32.896503, 39.009228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719938, 32.725502, 38.874622>,  <30.888599, 32.440502, 38.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719938, 32.725502, 38.874622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211873, 0.523983, -0.824956,
		-0.881657, -0.466673, -0.069978,
		-0.421651, 0.712502, 0.560849,
		30.593443, 32.939251, 39.042877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285166, 32.660500, 38.315247>,  <30.888599, 32.440502, 38.650284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285166, 32.660500, 38.315247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354174, 32.967743, 38.561905>,  <30.395578, 33.152088, 38.709900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354174, 32.967743, 38.561905>,  <30.285166, 32.660500, 38.315247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354174, 32.967743, 38.561905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139997, 0.638796, -0.756532,
		-0.975007, 0.044189, 0.217738,
		0.172520, 0.768106, 0.616644,
		30.405930, 33.198174, 38.746899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715324, 33.110374, 38.128368>,  <30.285166, 32.660500, 38.315247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715324, 33.110374, 38.128368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998648, 33.314564, 38.323395>,  <30.168642, 33.437077, 38.440411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998648, 33.314564, 38.323395>,  <29.715324, 33.110374, 38.128368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998648, 33.314564, 38.323395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101263, 0.757030, -0.645485,
		-0.698601, 0.407831, 0.587903,
		0.708310, 0.510469, 0.487564,
		30.211140, 33.467705, 38.469666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486147, 33.858418, 38.220272>,  <29.715324, 33.110374, 38.128368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486147, 33.858418, 38.220272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886049, 33.853226, 38.227425>,  <30.125990, 33.850113, 38.231716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886049, 33.853226, 38.227425>,  <29.486147, 33.858418, 38.220272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886049, 33.853226, 38.227425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021395, 0.770338, -0.637277,
		-0.005504, 0.637504, 0.770427,
		0.999756, -0.012976, 0.017880,
		30.185976, 33.849335, 38.232788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709118, 34.509865, 38.348228>,  <29.486147, 33.858418, 38.220272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709118, 34.509865, 38.348228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028204, 34.331799, 38.185516>,  <30.219656, 34.224957, 38.087887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028204, 34.331799, 38.185516>,  <29.709118, 34.509865, 38.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028204, 34.331799, 38.185516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151042, 0.800559, -0.579907,
		0.583811, 0.401160, 0.705858,
		0.797716, -0.445170, -0.406784,
		30.267519, 34.198246, 38.063480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223862, 35.030300, 38.250912>,  <29.709118, 34.509865, 38.348228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223862, 35.030300, 38.250912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318859, 34.746460, 37.985565>,  <30.375858, 34.576157, 37.826355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318859, 34.746460, 37.985565>,  <30.223862, 35.030300, 38.250912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318859, 34.746460, 37.985565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163939, 0.702392, -0.692653,
		0.957455, 0.055748, 0.283146,
		0.237494, -0.709603, -0.663370,
		30.390108, 34.533581, 37.786552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805159, 35.228989, 37.931751>,  <30.223862, 35.030300, 38.250912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805159, 35.228989, 37.931751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636555, 34.969578, 37.678219>,  <30.535393, 34.813931, 37.526100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636555, 34.969578, 37.678219>,  <30.805159, 35.228989, 37.931751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636555, 34.969578, 37.678219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042315, 0.684132, -0.728130,
		0.905836, -0.333735, -0.260926,
		-0.421510, -0.648525, -0.633833,
		30.510101, 34.775021, 37.488068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167702, 35.377762, 37.295578>,  <30.805159, 35.228989, 37.931751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167702, 35.377762, 37.295578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844774, 35.170071, 37.183407>,  <30.651018, 35.045456, 37.116104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844774, 35.170071, 37.183407>,  <31.167702, 35.377762, 37.295578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844774, 35.170071, 37.183407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123459, 0.613300, -0.780142,
		0.577050, -0.595206, -0.559234,
		-0.807323, -0.519223, -0.280422,
		30.602577, 35.014301, 37.099281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219563, 35.519020, 36.588745>,  <31.167702, 35.377762, 37.295578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219563, 35.519020, 36.588745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843536, 35.401093, 36.657280>,  <30.617920, 35.330338, 36.698399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843536, 35.401093, 36.657280>,  <31.219563, 35.519020, 36.588745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843536, 35.401093, 36.657280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292928, 0.441025, -0.848345,
		0.174545, -0.847691, -0.500954,
		-0.940068, -0.294818, 0.171334,
		30.561516, 35.312649, 36.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965719, 35.182087, 35.934055>,  <31.219563, 35.519020, 36.588745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965719, 35.182087, 35.934055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640438, 35.286083, 36.142326>,  <30.445269, 35.348480, 36.267288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640438, 35.286083, 36.142326>,  <30.965719, 35.182087, 35.934055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640438, 35.286083, 36.142326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404287, 0.391190, -0.826754,
		-0.418629, -0.882823, -0.213008,
		-0.813205, 0.259987, 0.520677,
		30.396477, 35.364079, 36.298531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480217, 34.599445, 36.073238>,  <30.965719, 35.182087, 35.934055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480217, 34.599445, 36.073238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650711, 34.740662, 36.406387>,  <30.753008, 34.825394, 36.606277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650711, 34.740662, 36.406387>,  <30.480217, 34.599445, 36.073238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650711, 34.740662, 36.406387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875368, 0.393180, 0.281318,
		-0.228152, -0.848981, 0.476631,
		0.426236, 0.353044, 0.832876,
		30.778582, 34.846577, 36.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631878, 33.901356, 35.759911>,  <30.480217, 34.599445, 36.073238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631878, 33.901356, 35.759911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341442, 34.081417, 35.967819>,  <30.167181, 34.189453, 36.092564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341442, 34.081417, 35.967819>,  <30.631878, 33.901356, 35.759911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341442, 34.081417, 35.967819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202414, 0.582487, -0.787234,
		-0.657133, -0.676810, -0.331820,
		-0.726089, 0.450152, 0.519767,
		30.123615, 34.216461, 36.123749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362232, 33.629631, 35.608768>,  <30.631878, 33.901356, 35.759911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362232, 33.629631, 35.608768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047623, 33.494274, 35.815407>,  <30.858858, 33.413059, 35.939388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047623, 33.494274, 35.815407>,  <31.362232, 33.629631, 35.608768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047623, 33.494274, 35.815407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097704, 0.757789, 0.645143,
		-0.609783, 0.557893, -0.562956,
		-0.786523, -0.338394, 0.516596,
		30.811666, 33.392757, 35.970387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422073, 33.065670, 35.147236>,  <31.362232, 33.629631, 35.608768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422073, 33.065670, 35.147236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419300, 33.036606, 35.546169>,  <31.417637, 33.019169, 35.785530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419300, 33.036606, 35.546169>,  <31.422073, 33.065670, 35.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419300, 33.036606, 35.546169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488637, -0.869929, -0.066772,
		0.872460, -0.487796, -0.029475,
		-0.006930, -0.072658, 0.997333,
		31.417221, 33.014809, 35.845367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574242, 32.435261, 35.268299>,  <31.422073, 33.065670, 35.147236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574242, 32.435261, 35.268299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374737, 32.555008, 35.593658>,  <31.255033, 32.626858, 35.788872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374737, 32.555008, 35.593658>,  <31.574242, 32.435261, 35.268299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374737, 32.555008, 35.593658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448270, -0.892294, 0.053535,
		0.741815, -0.337920, 0.579241,
		-0.498763, 0.299369, 0.813396,
		31.225107, 32.644817, 35.837677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674036, 32.006306, 35.730801>,  <31.574242, 32.435261, 35.268299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674036, 32.006306, 35.730801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042015, 31.849522, 35.727669>,  <32.262802, 31.755451, 35.725788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042015, 31.849522, 35.727669>,  <31.674036, 32.006306, 35.730801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042015, 31.849522, 35.727669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047693, 0.092073, 0.994610,
		-0.389127, -0.915363, 0.103396,
		0.919949, -0.391960, -0.007829,
		32.318001, 31.731934, 35.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675528, 31.566671, 36.232048>,  <31.674036, 32.006306, 35.730801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675528, 31.566671, 36.232048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070156, 31.599026, 36.175289>,  <32.306934, 31.618439, 36.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070156, 31.599026, 36.175289>,  <31.675528, 31.566671, 36.232048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070156, 31.599026, 36.175289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142773, -0.005174, 0.989742,
		0.079325, -0.996710, -0.016653,
		0.986572, 0.080889, -0.141893,
		32.366127, 31.623291, 36.132721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887234, 30.971996, 36.589451>,  <31.675528, 31.566671, 36.232048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887234, 30.971996, 36.589451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181393, 31.241611, 36.561550>,  <32.357887, 31.403381, 36.544811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181393, 31.241611, 36.561550>,  <31.887234, 30.971996, 36.589451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181393, 31.241611, 36.561550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061900, 0.035683, 0.997444,
		0.674805, -0.737834, -0.015482,
		0.735396, 0.674039, -0.069751,
		32.402012, 31.443823, 36.540627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377110, 30.660862, 36.823097>,  <31.887234, 30.971996, 36.589451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377110, 30.660862, 36.823097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449059, 31.052406, 36.862030>,  <32.492229, 31.287333, 36.885391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449059, 31.052406, 36.862030>,  <32.377110, 30.660862, 36.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449059, 31.052406, 36.862030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302119, -0.149137, 0.941532,
		0.936146, -0.139953, -0.322559,
		0.179876, 0.978862, 0.097331,
		32.503021, 31.346066, 36.891228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989735, 30.624607, 37.216492>,  <32.377110, 30.660862, 36.823097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989735, 30.624607, 37.216492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843441, 30.993565, 37.266174>,  <32.755665, 31.214939, 37.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843441, 30.993565, 37.266174>,  <32.989735, 30.624607, 37.216492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843441, 30.993565, 37.266174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361706, 0.017904, 0.932120,
		0.857559, 0.385833, -0.340184,
		-0.365733, 0.922395, 0.124204,
		32.733723, 31.270283, 37.303436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503864, 30.945599, 37.486504>,  <32.989735, 30.624607, 37.216492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503864, 30.945599, 37.486504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184597, 31.163174, 37.590084>,  <32.993034, 31.293718, 37.652233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184597, 31.163174, 37.590084>,  <33.503864, 30.945599, 37.486504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184597, 31.163174, 37.590084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227147, -0.126386, 0.965624,
		0.557965, 0.829555, -0.022676,
		-0.798172, 0.543935, 0.258950,
		32.945145, 31.326355, 37.667770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771439, 31.587992, 37.889729>,  <33.503864, 30.945599, 37.486504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771439, 31.587992, 37.889729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385807, 31.528635, 37.977848>,  <33.154427, 31.493021, 38.030720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385807, 31.528635, 37.977848>,  <33.771439, 31.587992, 37.889729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385807, 31.528635, 37.977848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206019, 0.105733, 0.972819,
		-0.167650, 0.983260, -0.071364,
		-0.964080, -0.148391, 0.220296,
		33.096584, 31.484118, 38.043938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603157, 32.160503, 38.458488>,  <33.771439, 31.587992, 37.889729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603157, 32.160503, 38.458488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327385, 31.871233, 38.474960>,  <33.161922, 31.697670, 38.484844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327385, 31.871233, 38.474960>,  <33.603157, 32.160503, 38.458488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327385, 31.871233, 38.474960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171727, -0.107960, 0.979211,
		-0.703698, 0.682173, 0.198620,
		-0.689434, -0.723177, 0.041177,
		33.120556, 31.654280, 38.487312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255363, 32.257729, 39.084641>,  <33.603157, 32.160503, 38.458488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255363, 32.257729, 39.084641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178608, 31.875465, 38.995296>,  <33.132553, 31.646107, 38.941692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178608, 31.875465, 38.995296>,  <33.255363, 32.257729, 39.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178608, 31.875465, 38.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271916, -0.270446, 0.923537,
		-0.942996, 0.116482, 0.311755,
		-0.191888, -0.955663, -0.223356,
		33.121040, 31.588766, 38.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869629, 31.997299, 39.605949>,  <33.255363, 32.257729, 39.084641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869629, 31.997299, 39.605949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031399, 31.685646, 39.414368>,  <33.128460, 31.498655, 39.299419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031399, 31.685646, 39.414368>,  <32.869629, 31.997299, 39.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031399, 31.685646, 39.414368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327909, -0.365343, 0.871206,
		-0.853765, -0.509391, 0.107730,
		0.404426, -0.779131, -0.478952,
		33.152725, 31.451906, 39.270683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811001, 31.615219, 40.096279>,  <32.869629, 31.997299, 39.605949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811001, 31.615219, 40.096279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046146, 31.431444, 39.829945>,  <33.187233, 31.321180, 39.670143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046146, 31.431444, 39.829945>,  <32.811001, 31.615219, 40.096279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046146, 31.431444, 39.829945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449036, -0.499309, 0.740984,
		-0.672891, -0.734581, -0.087223,
		0.587864, -0.459436, -0.665834,
		33.222507, 31.293613, 39.630196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688873, 30.868887, 40.091763>,  <32.811001, 31.615219, 40.096279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688873, 30.868887, 40.091763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061954, 30.913319, 39.954514>,  <33.285801, 30.939978, 39.872166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061954, 30.913319, 39.954514>,  <32.688873, 30.868887, 40.091763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061954, 30.913319, 39.954514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319862, -0.694284, 0.644715,
		-0.166608, -0.711077, -0.683089,
		0.932700, 0.111079, -0.343120,
		33.341766, 30.946642, 39.851578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953854, 30.237959, 40.012718>,  <32.688873, 30.868887, 40.091763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953854, 30.237959, 40.012718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270340, 30.477114, 40.064117>,  <33.460232, 30.620607, 40.094959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270340, 30.477114, 40.064117>,  <32.953854, 30.237959, 40.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270340, 30.477114, 40.064117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425688, -0.689320, 0.586198,
		0.439060, -0.409105, -0.799912,
		0.791212, 0.597889, 0.128501,
		33.507702, 30.656481, 40.102669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550625, 29.791945, 39.971935>,  <32.953854, 30.237959, 40.012718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550625, 29.791945, 39.971935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677467, 30.131063, 40.141960>,  <33.753574, 30.334536, 40.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677467, 30.131063, 40.141960>,  <33.550625, 29.791945, 39.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677467, 30.131063, 40.141960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419197, -0.527334, 0.739048,
		0.850716, -0.056170, -0.522616,
		0.317105, 0.847799, 0.425065,
		33.772598, 30.385403, 40.269478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338146, 29.751190, 40.129463>,  <33.550625, 29.791945, 39.971935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338146, 29.751190, 40.129463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138622, 30.003538, 40.367184>,  <34.018906, 30.154947, 40.509815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138622, 30.003538, 40.367184>,  <34.338146, 29.751190, 40.129463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138622, 30.003538, 40.367184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279418, -0.532028, 0.799294,
		0.820433, 0.564756, 0.089107,
		-0.498814, 0.630869, 0.594296,
		33.988979, 30.192799, 40.545471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709633, 29.700644, 40.610497>,  <34.338146, 29.751190, 40.129463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709633, 29.700644, 40.610497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391495, 29.873806, 40.780209>,  <34.200611, 29.977703, 40.882034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391495, 29.873806, 40.780209>,  <34.709633, 29.700644, 40.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391495, 29.873806, 40.780209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280911, -0.357005, 0.890863,
		0.537130, 0.827731, 0.162335,
		-0.795349, 0.432908, 0.424277,
		34.152889, 30.003677, 40.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056026, 30.026752, 41.165783>,  <34.709633, 29.700644, 40.610497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056026, 30.026752, 41.165783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665932, 30.001980, 41.250710>,  <34.431873, 29.987116, 41.301666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665932, 30.001980, 41.250710>,  <35.056026, 30.026752, 41.165783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665932, 30.001980, 41.250710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219525, -0.387672, 0.895276,
		0.026865, 0.919715, 0.391667,
		-0.975237, -0.061930, 0.212315,
		34.373360, 29.983400, 41.314404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911884, 30.326290, 41.928848>,  <35.056026, 30.026752, 41.165783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911884, 30.326290, 41.928848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633327, 30.064732, 41.810558>,  <34.466194, 29.907797, 41.739586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633327, 30.064732, 41.810558>,  <34.911884, 30.326290, 41.928848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633327, 30.064732, 41.810558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099029, -0.495685, 0.862838,
		-0.710793, 0.571591, 0.409948,
		-0.696395, -0.653896, -0.295726,
		34.424408, 29.868563, 41.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479774, 30.269564, 42.491619>,  <34.911884, 30.326290, 41.928848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479774, 30.269564, 42.491619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342155, 29.977489, 42.255497>,  <34.259586, 29.802244, 42.113823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342155, 29.977489, 42.255497>,  <34.479774, 30.269564, 42.491619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342155, 29.977489, 42.255497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172286, -0.568918, 0.804145,
		-0.923012, 0.378363, 0.069933,
		-0.344045, -0.730187, -0.590305,
		34.238941, 29.758432, 42.078407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818840, 29.991280, 42.866779>,  <34.479774, 30.269564, 42.491619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818840, 29.991280, 42.866779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954456, 29.711428, 42.615200>,  <34.035828, 29.543518, 42.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954456, 29.711428, 42.615200>,  <33.818840, 29.991280, 42.866779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954456, 29.711428, 42.615200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011360, -0.665449, 0.746357,
		-0.940703, -0.260191, -0.217666,
		0.339041, -0.699628, -0.628946,
		34.056168, 29.501539, 42.426517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369335, 29.409624, 42.895966>,  <33.818840, 29.991280, 42.866779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369335, 29.409624, 42.895966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713741, 29.245750, 42.775425>,  <33.920383, 29.147427, 42.703102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713741, 29.245750, 42.775425>,  <33.369335, 29.409624, 42.895966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713741, 29.245750, 42.775425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233273, -0.844661, 0.481799,
		-0.451925, -0.344539, -0.822834,
		0.861015, -0.409683, -0.301352,
		33.972046, 29.122845, 42.685020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120068, 28.750065, 42.789444>,  <33.369335, 29.409624, 42.895966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120068, 28.750065, 42.789444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519398, 28.738401, 42.809464>,  <33.758995, 28.731403, 42.821476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519398, 28.738401, 42.809464>,  <33.120068, 28.750065, 42.789444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519398, 28.738401, 42.809464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049692, -0.875096, 0.481392,
		0.029758, -0.483071, -0.875076,
		0.998321, -0.029159, 0.050046,
		33.818893, 28.729654, 42.824478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327110, 28.153652, 42.492561>,  <33.120068, 28.750065, 42.789444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327110, 28.153652, 42.492561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 28.243372, 42.735416>,  <33.814972, 28.297203, 42.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 28.243372, 42.735416>,  <33.327110, 28.153652, 42.492561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632023, 28.243372, 42.735416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044209, -0.917799, 0.394577,
		0.645733, -0.327620, -0.689706,
		0.762282, 0.224300, 0.607137,
		33.860706, 28.310661, 42.917557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711151, 27.557062, 42.461727>,  <33.327110, 28.153652, 42.492561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711151, 27.557062, 42.461727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822720, 27.763224, 42.785843>,  <33.889660, 27.886921, 42.980312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822720, 27.763224, 42.785843>,  <33.711151, 27.557062, 42.461727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822720, 27.763224, 42.785843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043667, -0.836092, 0.546849,
		0.959321, -0.187910, -0.210697,
		0.278921, 0.515403, 0.810286,
		33.906395, 27.917845, 43.028927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234253, 27.074209, 42.785046>,  <33.711151, 27.557062, 42.461727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234253, 27.074209, 42.785046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161667, 27.345274, 43.070099>,  <34.118114, 27.507912, 43.241131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161667, 27.345274, 43.070099>,  <34.234253, 27.074209, 42.785046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161667, 27.345274, 43.070099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115416, -0.704981, 0.699772,
		0.976602, 0.209232, 0.049715,
		-0.181463, 0.677661, 0.712634,
		34.107227, 27.548573, 43.283890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968773, 26.904516, 43.015110>,  <34.234253, 27.074209, 42.785046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968773, 26.904516, 43.015110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327900, 26.871126, 43.188065>,  <35.543377, 26.851093, 43.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327900, 26.871126, 43.188065>,  <34.968773, 26.904516, 43.015110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327900, 26.871126, 43.188065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439373, 0.103894, -0.892277,
		0.029559, 0.991079, 0.129953,
		0.897818, -0.083473, 0.432382,
		35.597244, 26.846085, 43.317780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446983, 27.503353, 42.850323>,  <34.968773, 26.904516, 43.015110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446983, 27.503353, 42.850323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690453, 27.192965, 42.916527>,  <35.836533, 27.006731, 42.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690453, 27.192965, 42.916527>,  <35.446983, 27.503353, 42.850323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690453, 27.192965, 42.916527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584314, 0.297273, -0.755120,
		0.536748, 0.556328, 0.634351,
		0.608669, -0.775969, 0.165510,
		35.873055, 26.960175, 42.966179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278481, 27.699339, 43.013477>,  <35.446983, 27.503353, 42.850323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278481, 27.699339, 43.013477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222881, 27.340504, 42.845707>,  <36.189522, 27.125202, 42.745045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222881, 27.340504, 42.845707>,  <36.278481, 27.699339, 43.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222881, 27.340504, 42.845707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580828, 0.269185, -0.768231,
		0.802072, -0.350394, 0.483637,
		-0.138996, -0.897086, -0.419424,
		36.181183, 27.071379, 42.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874226, 27.695576, 42.542957>,  <36.278481, 27.699339, 43.013477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874226, 27.695576, 42.542957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659245, 27.375614, 42.436150>,  <36.530254, 27.183638, 42.372066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659245, 27.375614, 42.436150>,  <36.874226, 27.695576, 42.542957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659245, 27.375614, 42.436150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480070, -0.029899, -0.876720,
		0.693308, -0.599384, 0.400079,
		-0.537454, -0.799903, -0.267017,
		36.498009, 27.135643, 42.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334217, 27.307194, 42.278519>,  <36.874226, 27.695576, 42.542957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334217, 27.307194, 42.278519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983795, 27.173214, 42.139759>,  <36.773544, 27.092825, 42.056503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983795, 27.173214, 42.139759>,  <37.334217, 27.307194, 42.278519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983795, 27.173214, 42.139759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361359, 0.020334, -0.932205,
		0.319298, -0.942015, 0.103224,
		-0.876053, -0.334953, -0.346898,
		36.720978, 27.072729, 42.035690>
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
