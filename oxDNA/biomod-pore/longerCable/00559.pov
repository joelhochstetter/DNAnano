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
	<24.499727, 34.654072, 34.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243885, 34.944069, 34.989605>,  <24.090380, 35.118065, 35.050930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243885, 34.944069, 34.989605>,  <24.499727, 34.654072, 34.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243885, 34.944069, 34.989605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705956, 0.422456, 0.568470,
		0.304187, 0.543986, -0.782016,
		-0.639607, 0.724990, 0.255525,
		24.052004, 35.161568, 35.066261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821590, 35.383057, 34.838936>,  <24.499727, 34.654072, 34.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821590, 35.383057, 34.838936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534285, 35.352848, 35.115601>,  <24.361902, 35.334721, 35.281601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534285, 35.352848, 35.115601>,  <24.821590, 35.383057, 34.838936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534285, 35.352848, 35.115601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578926, 0.486529, 0.654320,
		-0.385931, 0.870394, -0.305732,
		-0.718263, -0.075526, 0.691660,
		24.318806, 35.330189, 35.323097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546436, 36.055321, 34.934052>,  <24.821590, 35.383057, 34.838936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546436, 36.055321, 34.934052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520941, 35.843765, 35.272572>,  <24.505644, 35.716831, 35.475681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520941, 35.843765, 35.272572>,  <24.546436, 36.055321, 34.934052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520941, 35.843765, 35.272572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623794, 0.640827, 0.447462,
		-0.778986, 0.556435, 0.289069,
		-0.063741, -0.528886, 0.846296,
		24.501818, 35.685101, 35.526459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509069, 36.600159, 35.413689>,  <24.546436, 36.055321, 34.934052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509069, 36.600159, 35.413689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615622, 36.256672, 35.588799>,  <24.679552, 36.050579, 35.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615622, 36.256672, 35.588799>,  <24.509069, 36.600159, 35.413689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615622, 36.256672, 35.588799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788493, 0.455364, 0.413429,
		-0.554366, 0.235056, 0.798391,
		0.266380, -0.858716, 0.437778,
		24.695536, 35.999058, 35.720131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776169, 36.767601, 36.087418>,  <24.509069, 36.600159, 35.413689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776169, 36.767601, 36.087418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913668, 36.407192, 35.981586>,  <24.996168, 36.190948, 35.918087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913668, 36.407192, 35.981586>,  <24.776169, 36.767601, 36.087418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913668, 36.407192, 35.981586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938920, 0.324881, 0.113499,
		-0.016308, -0.287433, 0.957662,
		0.343749, -0.901019, -0.264578,
		25.016792, 36.136887, 35.902214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404108, 36.573048, 36.361916>,  <24.776169, 36.767601, 36.087418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404108, 36.573048, 36.361916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420551, 36.308220, 36.062592>,  <25.430416, 36.149323, 35.882996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420551, 36.308220, 36.062592>,  <25.404108, 36.573048, 36.361916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420551, 36.308220, 36.062592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995130, 0.094279, -0.028748,
		0.089584, -0.743486, 0.662724,
		0.041107, -0.662072, -0.748312,
		25.432884, 36.109600, 35.838097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013979, 36.145901, 36.488266>,  <25.404108, 36.573048, 36.361916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013979, 36.145901, 36.488266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975969, 36.191620, 36.092709>,  <25.953163, 36.219051, 35.855373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975969, 36.191620, 36.092709>,  <26.013979, 36.145901, 36.488266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975969, 36.191620, 36.092709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960196, 0.272638, -0.060757,
		0.262666, -0.955304, -0.135652,
		-0.095025, 0.114294, -0.988892,
		25.947462, 36.225906, 35.796040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590298, 35.836060, 36.042198>,  <26.013979, 36.145901, 36.488266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590298, 35.836060, 36.042198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444412, 36.138016, 35.824162>,  <26.356882, 36.319191, 35.693340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444412, 36.138016, 35.824162>,  <26.590298, 35.836060, 36.042198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444412, 36.138016, 35.824162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903853, 0.427660, -0.012491,
		0.223685, -0.497239, -0.838283,
		-0.364711, 0.754891, -0.545092,
		26.334999, 36.364483, 35.660633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052561, 35.941055, 35.473621>,  <26.590298, 35.836060, 36.042198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052561, 35.941055, 35.473621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859840, 36.278477, 35.568516>,  <26.744207, 36.480930, 35.625450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859840, 36.278477, 35.568516>,  <27.052561, 35.941055, 35.473621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859840, 36.278477, 35.568516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875899, 0.471599, 0.101957,
		-0.025873, 0.256916, -0.966087,
		-0.481801, 0.843557, 0.237234,
		26.715300, 36.531544, 35.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096300, 36.463860, 34.933624>,  <27.052561, 35.941055, 35.473621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096300, 36.463860, 34.933624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022921, 36.636600, 35.286861>,  <26.978893, 36.740246, 35.498802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022921, 36.636600, 35.286861>,  <27.096300, 36.463860, 34.933624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022921, 36.636600, 35.286861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870200, 0.489217, -0.058470,
		-0.457273, 0.757738, -0.465548,
		-0.183449, 0.431857, 0.883089,
		26.967886, 36.766159, 35.551788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164442, 37.174133, 34.860909>,  <27.096300, 36.463860, 34.933624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164442, 37.174133, 34.860909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248055, 37.084629, 35.241695>,  <27.298222, 37.030926, 35.470169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248055, 37.084629, 35.241695>,  <27.164442, 37.174133, 34.860909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248055, 37.084629, 35.241695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877828, 0.471935, -0.081824,
		-0.430958, 0.852766, 0.295069,
		0.209030, -0.223758, 0.951966,
		27.310764, 37.017502, 35.527287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164371, 37.825039, 35.139595>,  <27.164442, 37.174133, 34.860909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164371, 37.825039, 35.139595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368528, 37.541290, 35.334034>,  <27.491022, 37.371040, 35.450699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368528, 37.541290, 35.334034>,  <27.164371, 37.825039, 35.139595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368528, 37.541290, 35.334034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813413, 0.581663, -0.005238,
		-0.279031, 0.398073, 0.873888,
		0.510394, -0.709370, 0.486099,
		27.521646, 37.328480, 35.479862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303253, 37.957687, 35.785629>,  <27.164371, 37.825039, 35.139595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303253, 37.957687, 35.785629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588110, 37.744061, 35.603367>,  <27.759024, 37.615883, 35.494011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588110, 37.744061, 35.603367>,  <27.303253, 37.957687, 35.785629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588110, 37.744061, 35.603367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528569, 0.835051, -0.152660,
		0.462027, -0.132131, 0.876968,
		0.712142, -0.534071, -0.455657,
		27.801752, 37.583839, 35.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727497, 38.004662, 36.436375>,  <27.303253, 37.957687, 35.785629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727497, 38.004662, 36.436375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092335, 37.845497, 36.396889>,  <28.311237, 37.749996, 36.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092335, 37.845497, 36.396889>,  <27.727497, 38.004662, 36.436375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092335, 37.845497, 36.396889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075096, -0.074557, 0.994385,
		-0.403042, -0.914387, -0.038122,
		0.912095, -0.397916, -0.098717,
		28.365963, 37.726124, 36.367275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890587, 37.429550, 36.878380>,  <27.727497, 38.004662, 36.436375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890587, 37.429550, 36.878380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239843, 37.616985, 36.824635>,  <28.449396, 37.729446, 36.792385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239843, 37.616985, 36.824635>,  <27.890587, 37.429550, 36.878380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239843, 37.616985, 36.824635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111071, 0.077150, 0.990813,
		0.474648, -0.880042, 0.015317,
		0.873140, 0.468587, -0.134366,
		28.501785, 37.757561, 36.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234451, 37.116840, 36.742264>,  <27.890587, 37.429550, 36.878380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234451, 37.116840, 36.742264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229372, 37.126881, 36.342422>,  <27.226324, 37.132904, 36.102516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229372, 37.126881, 36.342422>,  <27.234451, 37.116840, 36.742264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229372, 37.126881, 36.342422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853405, -0.521244, -0.002248,
		-0.521093, 0.853039, 0.028042,
		-0.012699, 0.025102, -0.999604,
		27.225563, 37.134411, 36.042542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595274, 37.380875, 36.645378>,  <27.234451, 37.116840, 36.742264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595274, 37.380875, 36.645378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718531, 37.212463, 36.304138>,  <26.792484, 37.111416, 36.099392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718531, 37.212463, 36.304138>,  <26.595274, 37.380875, 36.645378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718531, 37.212463, 36.304138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936410, -0.292479, -0.193887,
		-0.167884, 0.858600, -0.484377,
		0.308141, -0.421026, -0.853104,
		26.810972, 37.086155, 36.048206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044777, 37.463291, 36.277596>,  <26.595274, 37.380875, 36.645378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044777, 37.463291, 36.277596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238987, 37.200993, 36.046333>,  <26.355513, 37.043613, 35.907578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238987, 37.200993, 36.046333>,  <26.044777, 37.463291, 36.277596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238987, 37.200993, 36.046333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870136, -0.298601, -0.392047,
		0.084444, 0.693423, -0.715566,
		0.485523, -0.655745, -0.578157,
		26.384644, 37.004269, 35.872887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921642, 37.577511, 35.504734>,  <26.044777, 37.463291, 36.277596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921642, 37.577511, 35.504734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024248, 37.195797, 35.566116>,  <26.085812, 36.966770, 35.602947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024248, 37.195797, 35.566116>,  <25.921642, 37.577511, 35.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024248, 37.195797, 35.566116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846054, -0.298453, -0.441722,
		0.467326, -0.016524, -0.883930,
		0.256512, -0.954281, 0.153455,
		26.101202, 36.909512, 35.612152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058069, 37.287971, 34.820686>,  <25.921642, 37.577511, 35.504734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058069, 37.287971, 34.820686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933207, 37.012871, 35.082848>,  <25.858290, 36.847813, 35.240147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933207, 37.012871, 35.082848>,  <26.058069, 37.287971, 34.820686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933207, 37.012871, 35.082848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806389, -0.172937, -0.565535,
		0.502290, -0.705048, -0.500611,
		-0.312155, -0.687750, 0.655408,
		25.839560, 36.806545, 35.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809484, 36.770596, 34.491421>,  <26.058069, 37.287971, 34.820686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809484, 36.770596, 34.491421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613407, 36.795280, 34.839191>,  <25.495762, 36.810089, 35.047855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613407, 36.795280, 34.839191>,  <25.809484, 36.770596, 34.491421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613407, 36.795280, 34.839191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864734, 0.090655, -0.493980,
		-0.109301, -0.993969, 0.008924,
		-0.490191, 0.061710, 0.869427,
		25.466351, 36.813793, 35.100021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174870, 36.233994, 34.128548>,  <25.809484, 36.770596, 34.491421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174870, 36.233994, 34.128548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056887, 35.881958, 33.979717>,  <25.986097, 35.670734, 33.890419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056887, 35.881958, 33.979717>,  <26.174870, 36.233994, 34.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056887, 35.881958, 33.979717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019475, 0.394855, -0.918537,
		0.955311, -0.263685, -0.133606,
		-0.294959, -0.880091, -0.372074,
		25.968399, 35.617931, 33.868095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695189, 35.982483, 33.714901>,  <26.174870, 36.233994, 34.128548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695189, 35.982483, 33.714901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333385, 35.847614, 33.610451>,  <26.116304, 35.766693, 33.547783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333385, 35.847614, 33.610451>,  <26.695189, 35.982483, 33.714901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333385, 35.847614, 33.610451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122584, 0.380907, -0.916451,
		0.408466, -0.860944, -0.303200,
		-0.904505, -0.337172, -0.261125,
		26.062033, 35.746464, 33.532112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831850, 35.679985, 33.035320>,  <26.695189, 35.982483, 33.714901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831850, 35.679985, 33.035320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451090, 35.783646, 33.100712>,  <26.222633, 35.845840, 33.139946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451090, 35.783646, 33.100712>,  <26.831850, 35.679985, 33.035320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451090, 35.783646, 33.100712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052339, 0.663212, -0.746599,
		-0.301902, -0.702132, -0.644876,
		-0.951901, 0.259152, 0.163476,
		26.165520, 35.861393, 33.149754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402111, 35.139400, 32.741043>,  <26.831850, 35.679985, 33.035320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402111, 35.139400, 32.741043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344185, 34.795574, 32.545013>,  <27.309429, 34.589279, 32.427395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344185, 34.795574, 32.545013>,  <27.402111, 35.139400, 32.741043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344185, 34.795574, 32.545013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881100, 0.113336, -0.459148,
		0.450212, -0.498297, 0.740952,
		-0.144815, -0.859567, -0.490074,
		27.300741, 34.537704, 32.397991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774885, 34.517384, 32.980698>,  <27.402111, 35.139400, 32.741043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774885, 34.517384, 32.980698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132004, 34.410892, 32.835346>,  <28.346275, 34.347000, 32.748135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132004, 34.410892, 32.835346>,  <27.774885, 34.517384, 32.980698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132004, 34.410892, 32.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323021, 0.940602, 0.104520,
		0.313966, -0.210692, 0.925761,
		0.892795, -0.266225, -0.363375,
		28.399843, 34.331024, 32.726334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239124, 34.843098, 33.469101>,  <27.774885, 34.517384, 32.980698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239124, 34.843098, 33.469101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370142, 34.770237, 33.098255>,  <28.448753, 34.726521, 32.875748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370142, 34.770237, 33.098255>,  <28.239124, 34.843098, 33.469101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370142, 34.770237, 33.098255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355038, 0.933058, -0.057886,
		0.875593, -0.310200, 0.370288,
		0.327544, -0.182151, -0.927112,
		28.468405, 34.715591, 32.820122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826950, 35.027264, 33.293503>,  <28.239124, 34.843098, 33.469101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826950, 35.027264, 33.293503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666590, 35.037647, 32.927200>,  <28.570374, 35.043877, 32.707420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666590, 35.037647, 32.927200>,  <28.826950, 35.027264, 33.293503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666590, 35.037647, 32.927200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292741, 0.950821, -0.101203,
		0.868090, -0.308651, -0.388785,
		-0.400902, 0.025960, -0.915753,
		28.546320, 35.045437, 32.652473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185513, 35.553967, 33.750877>,  <28.826950, 35.027264, 33.293503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185513, 35.553967, 33.750877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545095, 35.461819, 33.899902>,  <29.760845, 35.406532, 33.989319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545095, 35.461819, 33.899902>,  <29.185513, 35.553967, 33.750877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545095, 35.461819, 33.899902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435452, -0.377728, 0.817131,
		-0.047511, -0.896802, -0.439875,
		0.898957, -0.230366, 0.372567,
		29.814783, 35.392708, 34.011673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085089, 35.215904, 34.311440>,  <29.185513, 35.553967, 33.750877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085089, 35.215904, 34.311440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478802, 35.146835, 34.326267>,  <29.715029, 35.105396, 34.335163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478802, 35.146835, 34.326267>,  <29.085089, 35.215904, 34.311440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478802, 35.146835, 34.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126461, -0.542588, 0.830425,
		-0.123273, -0.822060, -0.555896,
		0.984282, -0.172668, 0.037072,
		29.774086, 35.095036, 34.337387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209078, 34.432838, 34.344147>,  <29.085089, 35.215904, 34.311440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209078, 34.432838, 34.344147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483805, 34.640717, 34.547398>,  <29.648642, 34.765442, 34.669350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483805, 34.640717, 34.547398>,  <29.209078, 34.432838, 34.344147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483805, 34.640717, 34.547398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033424, -0.720949, 0.692182,
		0.726061, -0.458419, -0.512531,
		0.686818, 0.519697, 0.508130,
		29.689850, 34.796627, 34.699837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718859, 33.924747, 34.546219>,  <29.209078, 34.432838, 34.344147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718859, 33.924747, 34.546219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754137, 34.199207, 34.835060>,  <29.775305, 34.363884, 35.008366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754137, 34.199207, 34.835060>,  <29.718859, 33.924747, 34.546219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754137, 34.199207, 34.835060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121638, -0.712079, 0.691482,
		0.988648, -0.148820, 0.020660,
		0.088195, 0.686145, 0.722098,
		29.780596, 34.405052, 35.051689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193964, 33.719971, 34.990242>,  <29.718859, 33.924747, 34.546219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193964, 33.719971, 34.990242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983797, 33.991249, 35.195763>,  <29.857697, 34.154015, 35.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983797, 33.991249, 35.195763>,  <30.193964, 33.719971, 34.990242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983797, 33.991249, 35.195763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072220, -0.637239, 0.767275,
		0.847773, 0.366034, 0.383797,
		-0.525419, 0.678192, 0.513799,
		29.826172, 34.194706, 35.349903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543453, 33.754253, 35.745766>,  <30.193964, 33.719971, 34.990242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543453, 33.754253, 35.745766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161928, 33.874176, 35.738255>,  <29.933012, 33.946129, 35.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161928, 33.874176, 35.738255>,  <30.543453, 33.754253, 35.745766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161928, 33.874176, 35.738255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226622, -0.677137, 0.700092,
		0.197179, 0.672013, 0.713806,
		-0.953815, 0.299807, -0.018776,
		29.875784, 33.964119, 35.732620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340778, 33.904388, 36.529903>,  <30.543453, 33.754253, 35.745766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340778, 33.904388, 36.529903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008120, 33.835503, 36.318733>,  <29.808523, 33.794170, 36.192032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008120, 33.835503, 36.318733>,  <30.340778, 33.904388, 36.529903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008120, 33.835503, 36.318733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322322, -0.624444, 0.711462,
		-0.452184, 0.761848, 0.463808,
		-0.831648, -0.172216, -0.527924,
		29.758625, 33.783836, 36.160355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900629, 33.718037, 37.131622>,  <30.340778, 33.904388, 36.529903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900629, 33.718037, 37.131622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704754, 33.641224, 36.791428>,  <29.587229, 33.595135, 36.587311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704754, 33.641224, 36.791428>,  <29.900629, 33.718037, 37.131622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704754, 33.641224, 36.791428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592353, -0.642492, 0.486129,
		-0.639786, 0.741840, 0.200867,
		-0.489686, -0.192034, -0.850488,
		29.557848, 33.583614, 36.536282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227417, 33.752071, 37.370476>,  <29.900629, 33.718037, 37.131622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227417, 33.752071, 37.370476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244963, 33.527714, 37.039783>,  <29.255489, 33.393101, 36.841370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244963, 33.527714, 37.039783>,  <29.227417, 33.752071, 37.370476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244963, 33.527714, 37.039783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461033, -0.745504, 0.481323,
		-0.886298, 0.360036, -0.291289,
		0.043864, -0.560890, -0.826728,
		29.258121, 33.359447, 36.791763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510712, 33.506031, 37.129589>,  <29.227417, 33.752071, 37.370476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510712, 33.506031, 37.129589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816250, 33.255569, 37.067013>,  <28.999573, 33.105293, 37.029469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816250, 33.255569, 37.067013>,  <28.510712, 33.506031, 37.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816250, 33.255569, 37.067013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390529, -0.641394, 0.660380,
		-0.513837, -0.443334, -0.734457,
		0.763845, -0.626154, -0.156437,
		29.045403, 33.067722, 37.020081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151716, 32.804935, 36.918816>,  <28.510712, 33.506031, 37.129589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151716, 32.804935, 36.918816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517565, 32.749619, 37.070786>,  <28.737074, 32.716431, 37.161968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517565, 32.749619, 37.070786>,  <28.151716, 32.804935, 36.918816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517565, 32.749619, 37.070786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361634, -0.700016, 0.615791,
		0.180795, -0.700609, -0.690261,
		0.914622, -0.138290, 0.379924,
		28.791952, 32.708130, 37.184761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461443, 32.068111, 36.871288>,  <28.151716, 32.804935, 36.918816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461443, 32.068111, 36.871288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622885, 32.260326, 37.182720>,  <28.719749, 32.375656, 37.369579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622885, 32.260326, 37.182720>,  <28.461443, 32.068111, 36.871288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622885, 32.260326, 37.182720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133427, -0.810955, 0.569693,
		0.905152, -0.333814, -0.263188,
		0.403605, 0.480542, 0.778577,
		28.743967, 32.404488, 37.416294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121597, 31.775450, 37.032421>,  <28.461443, 32.068111, 36.871288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121597, 31.775450, 37.032421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941963, 31.948883, 37.344913>,  <28.834183, 32.052944, 37.532410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941963, 31.948883, 37.344913>,  <29.121597, 31.775450, 37.032421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941963, 31.948883, 37.344913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033395, -0.865610, 0.499605,
		0.892864, 0.250455, 0.374254,
		-0.449087, 0.433581, 0.781235,
		28.807238, 32.078957, 37.579285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775383, 32.130074, 36.815750>,  <29.121597, 31.775450, 37.032421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775383, 32.130074, 36.815750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414881, 32.301792, 36.792290>,  <29.198580, 32.404823, 36.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414881, 32.301792, 36.792290>,  <29.775383, 32.130074, 36.815750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414881, 32.301792, 36.792290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395811, 0.760670, -0.514505,
		-0.176263, -0.486915, -0.855480,
		-0.901258, 0.429296, -0.058648,
		29.144503, 32.430580, 36.774696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617651, 32.302715, 36.099945>,  <29.775383, 32.130074, 36.815750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617651, 32.302715, 36.099945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362164, 32.526253, 36.311501>,  <29.208870, 32.660378, 36.438435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362164, 32.526253, 36.311501>,  <29.617651, 32.302715, 36.099945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362164, 32.526253, 36.311501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235301, 0.796309, -0.557248,
		-0.732578, -0.231477, -0.640116,
		-0.638720, 0.558848, 0.528892,
		29.170547, 32.693909, 36.470169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112532, 32.708469, 35.684929>,  <29.617651, 32.302715, 36.099945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112532, 32.708469, 35.684929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148241, 32.909344, 36.028984>,  <29.169666, 33.029869, 36.235416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148241, 32.909344, 36.028984>,  <29.112532, 32.708469, 35.684929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148241, 32.909344, 36.028984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071327, 0.858146, -0.508427,
		-0.993450, 0.106739, 0.040788,
		0.089271, 0.502188, 0.860139,
		29.175022, 33.060001, 36.287025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839581, 33.276031, 35.526226>,  <29.112532, 32.708469, 35.684929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839581, 33.276031, 35.526226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006153, 33.394035, 35.870216>,  <29.106096, 33.464840, 36.076611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006153, 33.394035, 35.870216>,  <28.839581, 33.276031, 35.526226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006153, 33.394035, 35.870216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143282, 0.912775, -0.382508,
		-0.897805, 0.282507, 0.337840,
		0.416433, 0.295011, 0.859972,
		29.131083, 33.482540, 36.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583609, 33.942139, 35.644722>,  <28.839581, 33.276031, 35.526226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583609, 33.942139, 35.644722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946924, 33.904697, 35.807819>,  <29.164913, 33.882233, 35.905678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946924, 33.904697, 35.807819>,  <28.583609, 33.942139, 35.644722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946924, 33.904697, 35.807819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228585, 0.927333, -0.296314,
		-0.350375, 0.362342, 0.863682,
		0.908288, -0.093603, 0.407740,
		29.219410, 33.876617, 35.930141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778952, 34.617821, 35.794918>,  <28.583609, 33.942139, 35.644722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778952, 34.617821, 35.794918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114920, 34.400837, 35.801453>,  <29.316500, 34.270645, 35.805374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114920, 34.400837, 35.801453>,  <28.778952, 34.617821, 35.794918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114920, 34.400837, 35.801453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504438, 0.769235, -0.392198,
		0.200190, 0.337653, 0.919736,
		0.839920, -0.542464, 0.016332,
		29.366896, 34.238098, 35.806351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362160, 35.027241, 36.190094>,  <28.778952, 34.617821, 35.794918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362160, 35.027241, 36.190094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478539, 34.775269, 35.902054>,  <29.548367, 34.624084, 35.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478539, 34.775269, 35.902054>,  <29.362160, 35.027241, 36.190094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478539, 34.775269, 35.902054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474316, 0.748622, -0.463239,
		0.830888, -0.206776, 0.516594,
		0.290947, -0.629928, -0.720098,
		29.565823, 34.586288, 35.686024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683475, 35.445038, 35.806305>,  <29.362160, 35.027241, 36.190094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683475, 35.445038, 35.806305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731985, 35.104225, 35.602604>,  <29.761091, 34.899738, 35.480385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731985, 35.104225, 35.602604>,  <29.683475, 35.445038, 35.806305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731985, 35.104225, 35.602604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597744, 0.472270, -0.647814,
		0.792461, -0.225837, 0.566571,
		0.121275, -0.852032, -0.509248,
		29.768368, 34.848614, 35.449829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442259, 35.417278, 35.656921>,  <29.683475, 35.445038, 35.806305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442259, 35.417278, 35.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191391, 35.212769, 35.421886>,  <30.040871, 35.090065, 35.280865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191391, 35.212769, 35.421886>,  <30.442259, 35.417278, 35.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191391, 35.212769, 35.421886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442182, 0.387322, -0.808985,
		0.641196, -0.767192, -0.016842,
		-0.627170, -0.511270, -0.587588,
		30.003241, 35.059387, 35.245609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816425, 35.530132, 35.014263>,  <30.442259, 35.417278, 35.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816425, 35.530132, 35.014263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471048, 35.362633, 34.901752>,  <30.263823, 35.262135, 34.834244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471048, 35.362633, 34.901752>,  <30.816425, 35.530132, 35.014263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471048, 35.362633, 34.901752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089952, 0.420854, -0.902657,
		0.496363, -0.804694, -0.325716,
		-0.863442, -0.418747, -0.281280,
		30.212015, 35.237007, 34.817368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108267, 35.973244, 35.423061>,  <30.816425, 35.530132, 35.014263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108267, 35.973244, 35.423061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480564, 36.062939, 35.538601>,  <31.703943, 36.116756, 35.607925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480564, 36.062939, 35.538601>,  <31.108267, 35.973244, 35.423061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480564, 36.062939, 35.538601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305077, -0.911670, -0.275291,
		0.201605, 0.344347, -0.916941,
		0.930744, 0.224237, 0.288849,
		31.759787, 36.130211, 35.625256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719944, 35.841667, 34.916943>,  <31.108267, 35.973244, 35.423061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719944, 35.841667, 34.916943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796114, 35.795418, 35.306889>,  <31.841816, 35.767670, 35.540855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796114, 35.795418, 35.306889>,  <31.719944, 35.841667, 34.916943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796114, 35.795418, 35.306889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160184, -0.976072, -0.147055,
		0.968545, 0.184161, -0.167349,
		0.190426, -0.115623, 0.974869,
		31.853241, 35.760731, 35.599350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254559, 36.245537, 35.149170>,  <31.719944, 35.841667, 34.916943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254559, 36.245537, 35.149170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096287, 36.587311, 35.283852>,  <32.001324, 36.792377, 35.364662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096287, 36.587311, 35.283852>,  <32.254559, 36.245537, 35.149170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096287, 36.587311, 35.283852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044198, -0.383920, 0.922308,
		0.917324, 0.350058, 0.189674,
		-0.395681, 0.854438, 0.336707,
		31.977583, 36.843643, 35.384865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865128, 36.084198, 34.743145>,  <32.254559, 36.245537, 35.149170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865128, 36.084198, 34.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213802, 35.888432, 34.753239>,  <33.423008, 35.770969, 34.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213802, 35.888432, 34.753239>,  <32.865128, 36.084198, 34.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213802, 35.888432, 34.753239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484309, -0.852424, 0.197024,
		-0.074920, -0.183962, -0.980074,
		0.871684, -0.489419, 0.025231,
		33.475307, 35.741604, 34.760807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013554, 35.533150, 34.342587>,  <32.865128, 36.084198, 34.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013554, 35.533150, 34.342587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235912, 35.446526, 34.663605>,  <33.369328, 35.394550, 34.856216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235912, 35.446526, 34.663605>,  <33.013554, 35.533150, 34.342587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235912, 35.446526, 34.663605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548363, -0.821129, 0.158256,
		0.624724, -0.528062, -0.575214,
		0.555893, -0.216560, 0.802548,
		33.402679, 35.381557, 34.904369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360203, 34.824718, 34.335651>,  <33.013554, 35.533150, 34.342587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360203, 34.824718, 34.335651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353916, 34.911812, 34.726006>,  <33.350143, 34.964066, 34.960217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353916, 34.911812, 34.726006>,  <33.360203, 34.824718, 34.335651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353916, 34.911812, 34.726006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616663, -0.770388, 0.161951,
		0.787070, -0.599246, 0.146373,
		-0.015715, 0.217730, 0.975883,
		33.349201, 34.977131, 35.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466038, 34.240326, 34.701748>,  <33.360203, 34.824718, 34.335651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466038, 34.240326, 34.701748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199310, 34.463848, 34.898964>,  <33.039272, 34.597961, 35.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199310, 34.463848, 34.898964>,  <33.466038, 34.240326, 34.701748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199310, 34.463848, 34.898964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653596, -0.756373, -0.026695,
		0.358003, -0.340049, 0.869598,
		-0.666818, 0.558808, 0.493038,
		32.999264, 34.631489, 35.046875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801247, 34.504181, 35.321060>,  <33.466038, 34.240326, 34.701748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801247, 34.504181, 35.321060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176342, 34.392509, 35.238403>,  <34.401398, 34.325504, 35.188808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176342, 34.392509, 35.238403>,  <33.801247, 34.504181, 35.321060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176342, 34.392509, 35.238403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236963, -0.079226, -0.968283,
		0.253955, 0.956964, -0.140449,
		0.937740, -0.279181, -0.206645,
		34.457664, 34.308754, 35.176411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945595, 34.859962, 34.778316>,  <33.801247, 34.504181, 35.321060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945595, 34.859962, 34.778316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196468, 34.548420, 34.779980>,  <34.346992, 34.361492, 34.780979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196468, 34.548420, 34.779980>,  <33.945595, 34.859962, 34.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196468, 34.548420, 34.779980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037528, 0.024883, -0.998986,
		0.777967, 0.626703, 0.044836,
		0.627183, -0.778861, 0.004161,
		34.384624, 34.314762, 34.781227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325718, 35.053909, 34.283672>,  <33.945595, 34.859962, 34.778316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325718, 35.053909, 34.283672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380466, 34.660004, 34.326588>,  <34.413315, 34.423660, 34.352337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380466, 34.660004, 34.326588>,  <34.325718, 35.053909, 34.283672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380466, 34.660004, 34.326588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016769, -0.110598, -0.993724,
		0.990447, 0.134215, -0.031652,
		0.136874, -0.984761, 0.107291,
		34.421528, 34.364574, 34.358776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007984, 34.655388, 33.996914>,  <34.325718, 35.053909, 34.283672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007984, 34.655388, 33.996914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691807, 34.417522, 33.938160>,  <34.502098, 34.274803, 33.902908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691807, 34.417522, 33.938160>,  <35.007984, 34.655388, 33.996914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691807, 34.417522, 33.938160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005673, 0.232680, -0.972537,
		0.612504, -0.769572, -0.180548,
		-0.790447, -0.594659, -0.146883,
		34.454674, 34.239124, 33.894096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243092, 34.279396, 33.551891>,  <35.007984, 34.655388, 33.996914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243092, 34.279396, 33.551891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844917, 34.307449, 33.525997>,  <34.606014, 34.324284, 33.510460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844917, 34.307449, 33.525997>,  <35.243092, 34.279396, 33.551891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844917, 34.307449, 33.525997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081114, 0.264124, -0.961072,
		-0.050308, -0.961935, -0.268607,
		-0.995434, 0.070137, -0.064739,
		34.546288, 34.328491, 33.506577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142677, 34.055408, 32.884937>,  <35.243092, 34.279396, 33.551891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142677, 34.055408, 32.884937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767921, 34.180054, 32.948364>,  <34.543068, 34.254841, 32.986420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767921, 34.180054, 32.948364>,  <35.142677, 34.055408, 32.884937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767921, 34.180054, 32.948364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071869, 0.272206, -0.959551,
		-0.342172, -0.910385, -0.232630,
		-0.936885, 0.311613, 0.158570,
		34.486855, 34.273537, 32.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710625, 33.732025, 32.300190>,  <35.142677, 34.055408, 32.884937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710625, 33.732025, 32.300190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498474, 34.032539, 32.457298>,  <34.371181, 34.212849, 32.551563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498474, 34.032539, 32.457298>,  <34.710625, 33.732025, 32.300190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498474, 34.032539, 32.457298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157752, 0.367755, -0.916445,
		-0.832953, -0.548026, -0.076534,
		-0.530381, 0.751282, 0.392774,
		34.339359, 34.257923, 32.575130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056889, 33.773552, 31.941565>,  <34.710625, 33.732025, 32.300190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056889, 33.773552, 31.941565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165462, 34.127438, 32.093147>,  <34.230606, 34.339767, 32.184097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165462, 34.127438, 32.093147>,  <34.056889, 33.773552, 31.941565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165462, 34.127438, 32.093147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140034, 0.425850, -0.893891,
		-0.952216, 0.189564, 0.239480,
		0.271432, 0.884713, 0.378956,
		34.246891, 34.392853, 32.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632347, 34.356186, 31.601318>,  <34.056889, 33.773552, 31.941565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632347, 34.356186, 31.601318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940704, 34.544132, 31.773338>,  <34.125721, 34.656902, 31.876551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940704, 34.544132, 31.773338>,  <33.632347, 34.356186, 31.601318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940704, 34.544132, 31.773338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002853, 0.677697, -0.735336,
		-0.636955, 0.565640, 0.523774,
		0.770896, 0.469870, 0.430048,
		34.171974, 34.685093, 31.902353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143543, 34.798672, 31.268955>,  <33.632347, 34.356186, 31.601318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143543, 34.798672, 31.268955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785183, 34.954624, 31.183773>,  <32.570168, 35.048195, 31.132664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785183, 34.954624, 31.183773>,  <33.143543, 34.798672, 31.268955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785183, 34.954624, 31.183773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030467, -0.424316, -0.905001,
		-0.443208, -0.817280, 0.368267,
		-0.895901, 0.389884, -0.212960,
		32.516411, 35.071587, 31.119886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719547, 34.244946, 30.997656>,  <33.143543, 34.798672, 31.268955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719547, 34.244946, 30.997656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566063, 34.586784, 30.857695>,  <32.473972, 34.791889, 30.773718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566063, 34.586784, 30.857695>,  <32.719547, 34.244946, 30.997656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566063, 34.586784, 30.857695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029869, -0.367223, -0.929653,
		-0.922971, -0.367167, 0.115381,
		-0.383708, 0.854596, -0.349903,
		32.450951, 34.843163, 30.752724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196457, 34.010067, 30.423981>,  <32.719547, 34.244946, 30.997656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196457, 34.010067, 30.423981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287792, 34.391724, 30.346544>,  <32.342594, 34.620716, 30.300083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287792, 34.391724, 30.346544>,  <32.196457, 34.010067, 30.423981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287792, 34.391724, 30.346544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, -0.214905, -0.973958,
		-0.970896, 0.208405, -0.118016,
		0.228340, 0.954140, -0.193592,
		32.356293, 34.677967, 30.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976870, 34.102116, 29.823120>,  <32.196457, 34.010067, 30.423981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976870, 34.102116, 29.823120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209969, 34.427048, 29.832228>,  <32.349827, 34.622009, 29.837692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209969, 34.427048, 29.832228>,  <31.976870, 34.102116, 29.823120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209969, 34.427048, 29.832228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101734, -0.045125, -0.993788,
		-0.806260, 0.581445, -0.108938,
		0.582748, 0.812334, 0.022770,
		32.384792, 34.670750, 29.839058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774487, 34.513237, 29.280706>,  <31.976870, 34.102116, 29.823120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774487, 34.513237, 29.280706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148460, 34.641655, 29.341145>,  <32.372845, 34.718704, 29.377407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148460, 34.641655, 29.341145>,  <31.774487, 34.513237, 29.280706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148460, 34.641655, 29.341145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145191, 0.042409, -0.988494,
		-0.323754, 0.946116, -0.006963,
		0.934934, 0.321040, 0.151098,
		32.428940, 34.737968, 29.386475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878922, 34.999992, 28.812975>,  <31.774487, 34.513237, 29.280706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878922, 34.999992, 28.812975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235950, 34.855877, 28.921427>,  <32.450169, 34.769409, 28.986498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235950, 34.855877, 28.921427>,  <31.878922, 34.999992, 28.812975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235950, 34.855877, 28.921427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248475, -0.108756, -0.962514,
		0.376269, 0.926479, -0.007550,
		0.892570, -0.360288, 0.271128,
		32.503723, 34.747791, 29.002766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366970, 35.396870, 28.499323>,  <31.878922, 34.999992, 28.812975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366970, 35.396870, 28.499323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540062, 35.043270, 28.570076>,  <32.643917, 34.831108, 28.612528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540062, 35.043270, 28.570076>,  <32.366970, 35.396870, 28.499323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540062, 35.043270, 28.570076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385753, 0.004224, -0.922593,
		0.814827, 0.467463, 0.342834,
		0.432726, -0.884002, 0.176883,
		32.669880, 34.778069, 28.623140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992165, 35.474518, 28.127678>,  <32.366970, 35.396870, 28.499323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992165, 35.474518, 28.127678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941059, 35.081585, 28.182369>,  <32.910397, 34.845825, 28.215183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941059, 35.081585, 28.182369>,  <32.992165, 35.474518, 28.127678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941059, 35.081585, 28.182369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348253, -0.173513, -0.921202,
		0.928653, -0.070080, 0.364270,
		-0.127764, -0.982335, 0.136728,
		32.902729, 34.786884, 28.223387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502064, 35.142384, 27.827402>,  <32.992165, 35.474518, 28.127678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502064, 35.142384, 27.827402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217907, 34.861053, 27.817034>,  <33.047413, 34.692253, 27.810812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217907, 34.861053, 27.817034>,  <33.502064, 35.142384, 27.827402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217907, 34.861053, 27.817034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187324, -0.153446, -0.970239,
		0.678418, -0.694107, 0.240757,
		-0.710393, -0.703328, -0.025922,
		33.004787, 34.650055, 27.809258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610466, 34.959858, 27.177359>,  <33.502064, 35.142384, 27.827402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610466, 34.959858, 27.177359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300053, 34.743298, 27.306763>,  <33.113804, 34.613361, 27.384405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300053, 34.743298, 27.306763>,  <33.610466, 34.959858, 27.177359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300053, 34.743298, 27.306763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002449, -0.510354, -0.859961,
		0.630685, -0.668152, 0.394727,
		-0.776035, -0.541398, 0.323508,
		33.067242, 34.580879, 27.403814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812302, 34.138783, 27.111847>,  <33.610466, 34.959858, 27.177359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812302, 34.138783, 27.111847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425781, 34.241550, 27.105480>,  <33.193867, 34.303211, 27.101660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425781, 34.241550, 27.105480>,  <33.812302, 34.138783, 27.111847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425781, 34.241550, 27.105480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086820, -0.383507, -0.919448,
		-0.242323, -0.887084, 0.392890,
		-0.966303, 0.256914, -0.015915,
		33.135891, 34.318626, 27.100706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432693, 33.549343, 26.876328>,  <33.812302, 34.138783, 27.111847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432693, 33.549343, 26.876328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220261, 33.876919, 26.789333>,  <33.092800, 34.073463, 26.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220261, 33.876919, 26.789333>,  <33.432693, 33.549343, 26.876328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220261, 33.876919, 26.789333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283798, -0.413764, -0.865019,
		-0.798383, -0.397671, 0.452154,
		-0.531078, 0.818936, -0.217485,
		33.060936, 34.122601, 26.724089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911453, 33.202206, 26.427153>,  <33.432693, 33.549343, 26.876328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911453, 33.202206, 26.427153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867584, 33.598301, 26.392742>,  <32.841263, 33.835957, 26.372095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867584, 33.598301, 26.392742>,  <32.911453, 33.202206, 26.427153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867584, 33.598301, 26.392742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270810, -0.113045, -0.955972,
		-0.956365, -0.081548, 0.280565,
		-0.109674, 0.990238, -0.086028,
		32.834682, 33.895370, 26.366934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219604, 33.306427, 26.213991>,  <32.911453, 33.202206, 26.427153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219604, 33.306427, 26.213991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405224, 33.641758, 26.099541>,  <32.516594, 33.842957, 26.030870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405224, 33.641758, 26.099541>,  <32.219604, 33.306427, 26.213991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405224, 33.641758, 26.099541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433176, -0.066988, -0.898816,
		-0.772668, 0.541038, 0.332057,
		0.464049, 0.838326, -0.286124,
		32.544437, 33.893257, 26.013704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735466, 33.798935, 25.890532>,  <32.219604, 33.306427, 26.213991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735466, 33.798935, 25.890532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101894, 33.893742, 25.761143>,  <32.321751, 33.950626, 25.683510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101894, 33.893742, 25.761143>,  <31.735466, 33.798935, 25.890532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101894, 33.893742, 25.761143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357133, 0.115311, -0.926908,
		-0.182394, 0.964638, 0.190280,
		0.916072, 0.237017, -0.323472,
		32.376717, 33.964848, 25.664101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648012, 34.259018, 25.400879>,  <31.735466, 33.798935, 25.890532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648012, 34.259018, 25.400879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021103, 34.162762, 25.293465>,  <32.244957, 34.105007, 25.229015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021103, 34.162762, 25.293465>,  <31.648012, 34.259018, 25.400879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021103, 34.162762, 25.293465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273163, 0.014574, -0.961857,
		0.235373, 0.970506, -0.052140,
		0.932728, -0.240637, -0.268536,
		32.300922, 34.090569, 25.212904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972889, 34.796688, 24.906197>,  <31.648012, 34.259018, 25.400879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972889, 34.796688, 24.906197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126175, 34.431568, 24.849701>,  <32.218147, 34.212498, 24.815804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126175, 34.431568, 24.849701>,  <31.972889, 34.796688, 24.906197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126175, 34.431568, 24.849701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109971, 0.106734, -0.988187,
		0.917088, 0.394223, -0.059479,
		0.383217, -0.912796, -0.141238,
		32.241138, 34.157730, 24.807329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295284, 34.843700, 24.189104>,  <31.972889, 34.796688, 24.906197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295284, 34.843700, 24.189104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321907, 34.451298, 24.261988>,  <32.337879, 34.215858, 24.305717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321907, 34.451298, 24.261988>,  <32.295284, 34.843700, 24.189104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321907, 34.451298, 24.261988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155060, -0.190565, -0.969351,
		0.985660, 0.036263, -0.164798,
		0.066557, -0.981005, 0.182209,
		32.341873, 34.156998, 24.316650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683937, 34.510643, 23.677675>,  <32.295284, 34.843700, 24.189104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683937, 34.510643, 23.677675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473095, 34.205284, 23.827015>,  <32.346592, 34.022068, 23.916618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473095, 34.205284, 23.827015>,  <32.683937, 34.510643, 23.677675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473095, 34.205284, 23.827015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212287, -0.307122, -0.927691,
		0.822860, -0.568244, -0.000175,
		-0.527101, -0.763397, 0.373349,
		32.314964, 33.976265, 23.939020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906475, 34.145725, 23.266367>,  <32.683937, 34.510643, 23.677675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906475, 34.145725, 23.266367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577957, 33.963394, 23.403593>,  <32.380844, 33.853996, 23.485929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577957, 33.963394, 23.403593>,  <32.906475, 34.145725, 23.266367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577957, 33.963394, 23.403593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238288, -0.272289, -0.932243,
		0.518351, -0.847399, 0.115013,
		-0.821298, -0.455823, 0.343066,
		32.331566, 33.826649, 23.506514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946411, 33.483891, 23.016933>,  <32.906475, 34.145725, 23.266367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946411, 33.483891, 23.016933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558529, 33.541080, 23.096151>,  <32.325798, 33.575394, 23.143682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558529, 33.541080, 23.096151>,  <32.946411, 33.483891, 23.016933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558529, 33.541080, 23.096151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241005, -0.428095, -0.871006,
		-0.039751, -0.892352, 0.449586,
		-0.969709, 0.142976, 0.198044,
		32.267616, 33.583973, 23.155565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477455, 32.880390, 22.770042>,  <32.946411, 33.483891, 23.016933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477455, 32.880390, 22.770042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212273, 33.178402, 22.799498>,  <32.053165, 33.357208, 22.817171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212273, 33.178402, 22.799498>,  <32.477455, 32.880390, 22.770042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212273, 33.178402, 22.799498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391730, -0.261384, -0.882171,
		-0.637997, -0.613684, 0.465136,
		-0.662954, 0.745031, 0.073636,
		32.013386, 33.401913, 22.821589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850096, 32.590424, 22.417440>,  <32.477455, 32.880390, 22.770042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850096, 32.590424, 22.417440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810293, 32.987686, 22.441868>,  <31.786411, 33.226044, 22.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810293, 32.987686, 22.441868>,  <31.850096, 32.590424, 22.417440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810293, 32.987686, 22.441868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464601, 0.007900, -0.885485,
		-0.879911, -0.116485, 0.460637,
		-0.099507, 0.993161, 0.061071,
		31.780441, 33.285633, 22.460190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167786, 32.700283, 22.164057>,  <31.850096, 32.590424, 22.417440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167786, 32.700283, 22.164057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359596, 33.051285, 22.166609>,  <31.474682, 33.261887, 22.168140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359596, 33.051285, 22.166609>,  <31.167786, 32.700283, 22.164057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359596, 33.051285, 22.166609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339476, 0.192205, -0.920768,
		-0.809204, 0.439367, 0.390059,
		0.479527, 0.877504, 0.006378,
		31.503454, 33.314537, 22.168522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586494, 33.187603, 22.013741>,  <31.167786, 32.700283, 22.164057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586494, 33.187603, 22.013741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959124, 33.298405, 21.919559>,  <31.182701, 33.364887, 21.863050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959124, 33.298405, 21.919559>,  <30.586494, 33.187603, 22.013741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959124, 33.298405, 21.919559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310091, 0.267355, -0.912341,
		-0.189771, 0.922925, 0.334957,
		0.931574, 0.277003, -0.235454,
		31.238596, 33.381504, 21.848923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339096, 33.659721, 21.631718>,  <30.586494, 33.187603, 22.013741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339096, 33.659721, 21.631718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724377, 33.597797, 21.543831>,  <30.955545, 33.560642, 21.491098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724377, 33.597797, 21.543831>,  <30.339096, 33.659721, 21.631718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724377, 33.597797, 21.543831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234408, -0.083875, -0.968513,
		0.131511, 0.984377, -0.117078,
		0.963202, -0.154814, -0.219715,
		31.013338, 33.551353, 21.477917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502882, 34.166927, 21.106514>,  <30.339096, 33.659721, 21.631718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502882, 34.166927, 21.106514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774477, 33.874706, 21.077469>,  <30.937433, 33.699375, 21.060041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774477, 33.874706, 21.077469>,  <30.502882, 34.166927, 21.106514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774477, 33.874706, 21.077469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257042, -0.143915, -0.955624,
		0.687682, 0.667521, -0.285499,
		0.678987, -0.730551, -0.072613,
		30.978172, 33.655540, 21.055685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939856, 34.409489, 20.644848>,  <30.502882, 34.166927, 21.106514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939856, 34.409489, 20.644848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005854, 34.015167, 20.657253>,  <31.045452, 33.778572, 20.664698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005854, 34.015167, 20.657253>,  <30.939856, 34.409489, 20.644848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005854, 34.015167, 20.657253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190332, -0.062679, -0.979717,
		0.967755, 0.155744, -0.197972,
		0.164994, -0.985807, 0.031015,
		31.055351, 33.719425, 20.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511908, 34.231819, 20.188461>,  <30.939856, 34.409489, 20.644848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511908, 34.231819, 20.188461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271687, 33.915527, 20.235920>,  <31.127554, 33.725750, 20.264395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271687, 33.915527, 20.235920>,  <31.511908, 34.231819, 20.188461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271687, 33.915527, 20.235920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118027, -0.059094, -0.991251,
		0.790827, -0.609301, -0.057839,
		-0.600552, -0.790734, 0.118647,
		31.091520, 33.678307, 20.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765751, 33.800903, 19.755110>,  <31.511908, 34.231819, 20.188461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765751, 33.800903, 19.755110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399405, 33.655479, 19.823240>,  <31.179596, 33.568226, 19.864119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399405, 33.655479, 19.823240>,  <31.765751, 33.800903, 19.755110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399405, 33.655479, 19.823240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125645, -0.143382, -0.981659,
		0.381315, -0.920470, 0.085639,
		-0.915867, -0.363562, 0.170326,
		31.124645, 33.546410, 19.874338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729750, 33.232750, 19.196583>,  <31.765751, 33.800903, 19.755110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729750, 33.232750, 19.196583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362066, 33.282990, 19.345867>,  <31.141457, 33.313133, 19.435438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362066, 33.282990, 19.345867>,  <31.729750, 33.232750, 19.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362066, 33.282990, 19.345867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389346, -0.148131, -0.909103,
		-0.058895, -0.980960, 0.185062,
		-0.919207, 0.125594, 0.373208,
		31.086304, 33.320667, 19.457830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335203, 32.612808, 19.018099>,  <31.729750, 33.232750, 19.196583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335203, 32.612808, 19.018099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102787, 32.934330, 19.069162>,  <30.963337, 33.127243, 19.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102787, 32.934330, 19.069162>,  <31.335203, 32.612808, 19.018099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102787, 32.934330, 19.069162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361492, -0.114348, -0.925337,
		-0.729188, -0.583806, 0.357008,
		-0.581041, 0.803800, 0.127660,
		30.928474, 33.175468, 19.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612343, 32.525276, 18.736139>,  <31.335203, 32.612808, 19.018099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612343, 32.525276, 18.736139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610682, 32.925224, 18.729958>,  <30.609684, 33.165195, 18.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610682, 32.925224, 18.729958>,  <30.612343, 32.525276, 18.736139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610682, 32.925224, 18.729958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469237, -0.015595, -0.882934,
		-0.883062, 0.003585, 0.469242,
		-0.004152, 0.999872, -0.015453,
		30.609436, 33.225185, 18.725321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968092, 32.739754, 18.632195>,  <30.612343, 32.525276, 18.736139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968092, 32.739754, 18.632195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183315, 33.056190, 18.515804>,  <30.312449, 33.246052, 18.445971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183315, 33.056190, 18.515804>,  <29.968092, 32.739754, 18.632195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183315, 33.056190, 18.515804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589941, 0.106866, -0.800344,
		-0.602051, 0.602288, 0.524198,
		0.538056, 0.791094, -0.290976,
		30.344732, 33.293518, 18.428513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446121, 33.198643, 18.382830>,  <29.968092, 32.739754, 18.632195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446121, 33.198643, 18.382830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785837, 33.346909, 18.232464>,  <29.989666, 33.435867, 18.142244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785837, 33.346909, 18.232464>,  <29.446121, 33.198643, 18.382830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785837, 33.346909, 18.232464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463044, 0.181006, -0.867656,
		-0.253570, 0.910956, 0.325363,
		0.849289, 0.370669, -0.375915,
		30.040625, 33.458111, 18.119690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181286, 33.660007, 17.842335>,  <29.446121, 33.198643, 18.382830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181286, 33.660007, 17.842335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554920, 33.562950, 17.737562>,  <29.779100, 33.504715, 17.674698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554920, 33.562950, 17.737562>,  <29.181286, 33.660007, 17.842335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554920, 33.562950, 17.737562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273519, -0.014733, -0.961754,
		0.229508, 0.970003, -0.080130,
		0.934084, -0.242647, -0.261932,
		29.835146, 33.490154, 17.658983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343271, 34.065254, 17.245842>,  <29.181286, 33.660007, 17.842335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343271, 34.065254, 17.245842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590536, 33.750999, 17.235649>,  <29.738895, 33.562447, 17.229534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590536, 33.750999, 17.235649>,  <29.343271, 34.065254, 17.245842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590536, 33.750999, 17.235649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126182, -0.067182, -0.989729,
		0.775858, 0.615027, -0.140663,
		0.618161, -0.785639, -0.025482,
		29.775984, 33.515308, 17.228004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898489, 34.322716, 16.770926>,  <29.343271, 34.065254, 17.245842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898489, 34.322716, 16.770926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898752, 33.922714, 16.770861>,  <29.898911, 33.682713, 16.770823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898752, 33.922714, 16.770861>,  <29.898489, 34.322716, 16.770926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898752, 33.922714, 16.770861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049491, 0.000129, -0.998774,
		0.998774, 0.000667, -0.049491,
		0.000660, -0.999999, -0.000161,
		29.898951, 33.622715, 16.770813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121058, 34.264423, 16.172506>,  <29.898489, 34.322716, 16.770926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121058, 34.264423, 16.172506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004351, 33.889046, 16.246473>,  <29.934326, 33.663818, 16.290854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004351, 33.889046, 16.246473>,  <30.121058, 34.264423, 16.172506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004351, 33.889046, 16.246473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290979, -0.097083, -0.951791,
		0.911155, -0.331508, -0.244742,
		-0.291766, -0.938444, 0.184919,
		29.916821, 33.607513, 16.301949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417976, 33.832684, 15.619488>,  <30.121058, 34.264423, 16.172506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417976, 33.832684, 15.619488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088001, 33.656151, 15.760741>,  <29.890017, 33.550232, 15.845493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088001, 33.656151, 15.760741>,  <30.417976, 33.832684, 15.619488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088001, 33.656151, 15.760741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300586, -0.186556, -0.935332,
		0.478669, -0.877739, 0.021240,
		-0.824939, -0.441329, 0.353134,
		29.840519, 33.523750, 15.866681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339104, 33.266647, 15.184021>,  <30.417976, 33.832684, 15.619488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339104, 33.266647, 15.184021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986790, 33.314335, 15.367327>,  <29.775402, 33.342945, 15.477310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986790, 33.314335, 15.367327>,  <30.339104, 33.266647, 15.184021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986790, 33.314335, 15.367327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471540, -0.132478, -0.871837,
		-0.043226, -0.983991, 0.172899,
		-0.880784, 0.119214, 0.458264,
		29.722555, 33.350101, 15.504806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812653, 32.754734, 14.888094>,  <30.339104, 33.266647, 15.184021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812653, 32.754734, 14.888094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595781, 33.050457, 15.047825>,  <29.465658, 33.227890, 15.143663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595781, 33.050457, 15.047825>,  <29.812653, 32.754734, 14.888094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595781, 33.050457, 15.047825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486896, 0.110900, -0.866391,
		-0.684818, -0.664168, 0.299841,
		-0.542177, 0.739312, 0.399327,
		29.433128, 33.272251, 15.167623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962786, 32.592690, 14.906207>,  <29.812653, 32.754734, 14.888094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962786, 32.592690, 14.906207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097172, 32.968899, 14.886038>,  <29.177803, 33.194626, 14.873937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097172, 32.968899, 14.886038>,  <28.962786, 32.592690, 14.906207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097172, 32.968899, 14.886038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519466, 0.140369, -0.842883,
		-0.785674, 0.309372, 0.535729,
		0.335964, 0.940524, -0.050424,
		29.197962, 33.251057, 14.870911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502634, 33.126415, 14.927042>,  <28.962786, 32.592690, 14.906207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502634, 33.126415, 14.927042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795994, 33.232555, 14.676694>,  <28.972010, 33.296242, 14.526485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795994, 33.232555, 14.676694>,  <28.502634, 33.126415, 14.927042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795994, 33.232555, 14.676694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667511, 0.106851, -0.736893,
		-0.128661, 0.958213, 0.255490,
		0.733400, 0.265352, -0.625870,
		29.016014, 33.312160, 14.488933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406574, 33.843231, 14.631573>,  <28.502634, 33.126415, 14.927042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406574, 33.843231, 14.631573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635151, 33.621872, 14.389184>,  <28.772297, 33.489056, 14.243751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635151, 33.621872, 14.389184>,  <28.406574, 33.843231, 14.631573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635151, 33.621872, 14.389184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639306, 0.162772, -0.751527,
		0.514530, 0.816856, -0.260777,
		0.571443, -0.553399, -0.605972,
		28.806583, 33.455853, 14.207393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579140, 33.862778, 14.462976>,  <28.406574, 33.843231, 14.631573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579140, 33.862778, 14.462976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781097, 33.996197, 14.781430>,  <27.902271, 34.076248, 14.972503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781097, 33.996197, 14.781430>,  <27.579140, 33.862778, 14.462976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781097, 33.996197, 14.781430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192260, 0.855700, -0.480430,
		-0.841499, 0.395630, 0.367908,
		0.504892, 0.333547, 0.796135,
		27.932566, 34.096260, 15.020270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764101, 34.444202, 14.062984>,  <27.579140, 33.862778, 14.462976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764101, 34.444202, 14.062984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899927, 34.413685, 14.437978>,  <27.981422, 34.395374, 14.662973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899927, 34.413685, 14.437978>,  <27.764101, 34.444202, 14.062984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899927, 34.413685, 14.437978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552752, 0.822621, -0.133266,
		-0.761025, 0.563448, 0.321508,
		0.339567, -0.076296, 0.937482,
		28.001797, 34.390797, 14.719222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760525, 34.976231, 14.480460>,  <27.764101, 34.444202, 14.062984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760525, 34.976231, 14.480460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084124, 34.826866, 14.662047>,  <28.278282, 34.737247, 14.771000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084124, 34.826866, 14.662047>,  <27.760525, 34.976231, 14.480460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084124, 34.826866, 14.662047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430629, 0.902174, -0.025317,
		-0.400104, 0.215973, 0.890658,
		0.808996, -0.373414, 0.453968,
		28.326822, 34.714844, 14.798238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012678, 35.406815, 15.064687>,  <27.760525, 34.976231, 14.480460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012678, 35.406815, 15.064687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314484, 35.225262, 14.875077>,  <28.495567, 35.116329, 14.761312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314484, 35.225262, 14.875077>,  <28.012678, 35.406815, 15.064687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314484, 35.225262, 14.875077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404725, 0.890388, -0.208346,
		0.516630, -0.034650, 0.855507,
		0.754514, -0.453883, -0.474025,
		28.540838, 35.089096, 14.732870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373926, 35.498711, 15.473234>,  <28.012678, 35.406815, 15.064687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373926, 35.498711, 15.473234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264057, 35.878529, 15.412688>,  <27.198135, 36.106419, 15.376361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264057, 35.878529, 15.412688>,  <27.373926, 35.498711, 15.473234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264057, 35.878529, 15.412688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301394, -0.234510, -0.924212,
		-0.913081, -0.208235, 0.350602,
		-0.274673, 0.949549, -0.151365,
		27.181656, 36.163395, 15.367279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068619, 35.198223, 14.886815>,  <27.373926, 35.498711, 15.473234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068619, 35.198223, 14.886815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896492, 34.840157, 14.840322>,  <26.793217, 34.625317, 14.812426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896492, 34.840157, 14.840322>,  <27.068619, 35.198223, 14.886815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896492, 34.840157, 14.840322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216067, -0.227166, 0.949584,
		-0.876437, 0.383508, 0.291169,
		-0.430317, -0.895163, -0.116233,
		26.767397, 34.571606, 14.805451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381344, 35.143784, 15.164079>,  <27.068619, 35.198223, 14.886815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381344, 35.143784, 15.164079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578354, 34.796242, 15.184080>,  <26.696560, 34.587715, 15.196081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578354, 34.796242, 15.184080>,  <26.381344, 35.143784, 15.164079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578354, 34.796242, 15.184080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016817, 0.047943, 0.998708,
		-0.870134, -0.492732, 0.009001,
		0.492527, -0.868859, 0.050003,
		26.726112, 34.535583, 15.199081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017387, 34.541458, 15.683779>,  <26.381344, 35.143784, 15.164079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017387, 34.541458, 15.683779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413149, 34.567211, 15.631720>,  <26.650606, 34.582664, 15.600484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413149, 34.567211, 15.631720>,  <26.017387, 34.541458, 15.683779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413149, 34.567211, 15.631720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135261, -0.082709, 0.987352,
		0.052810, -0.994492, -0.090542,
		0.989402, 0.064389, -0.130148,
		26.709969, 34.586529, 15.592675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292059, 33.967953, 15.938925>,  <26.017387, 34.541458, 15.683779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292059, 33.967953, 15.938925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578724, 34.246483, 15.954572>,  <26.750723, 34.413601, 15.963960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578724, 34.246483, 15.954572>,  <26.292059, 33.967953, 15.938925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578724, 34.246483, 15.954572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171137, -0.229955, 0.958036,
		0.676095, -0.679896, -0.283967,
		0.716664, 0.696321, 0.039116,
		26.793724, 34.455379, 15.966307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643120, 33.679535, 16.444353>,  <26.292059, 33.967953, 15.938925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643120, 33.679535, 16.444353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812212, 34.040344, 16.409367>,  <26.913668, 34.256832, 16.388374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812212, 34.040344, 16.409367>,  <26.643120, 33.679535, 16.444353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812212, 34.040344, 16.409367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367129, -0.082209, 0.926530,
		0.828563, -0.423782, -0.365912,
		0.422728, 0.902026, -0.087467,
		26.939030, 34.310951, 16.383127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503922, 33.687263, 16.613289>,  <26.643120, 33.679535, 16.444353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503922, 33.687263, 16.613289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322227, 34.036278, 16.685236>,  <27.213211, 34.245686, 16.728405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322227, 34.036278, 16.685236>,  <27.503922, 33.687263, 16.613289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322227, 34.036278, 16.685236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364285, -0.002336, 0.931284,
		0.812999, 0.488545, -0.316791,
		-0.454234, 0.872536, 0.179869,
		27.185957, 34.298038, 16.739197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911476, 34.021179, 16.985945>,  <27.503922, 33.687263, 16.613289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911476, 34.021179, 16.985945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604912, 34.261345, 17.077267>,  <27.420973, 34.405445, 17.132061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604912, 34.261345, 17.077267>,  <27.911476, 34.021179, 16.985945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604912, 34.261345, 17.077267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302791, 0.024223, 0.952749,
		0.566511, 0.799325, -0.200364,
		-0.766409, 0.600411, 0.228306,
		27.374989, 34.441467, 17.145758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266951, 34.504761, 17.304691>,  <27.911476, 34.021179, 16.985945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266951, 34.504761, 17.304691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884726, 34.578648, 17.396584>,  <27.655390, 34.622982, 17.451719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884726, 34.578648, 17.396584>,  <28.266951, 34.504761, 17.304691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884726, 34.578648, 17.396584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254086, 0.120974, 0.959586,
		0.149464, 0.975317, -0.162534,
		-0.955563, 0.184721, 0.229733,
		27.598057, 34.634064, 17.465504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116535, 35.251743, 17.395460>,  <28.266951, 34.504761, 17.304691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116535, 35.251743, 17.395460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855574, 35.028759, 17.600832>,  <27.698997, 34.894970, 17.724054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855574, 35.028759, 17.600832>,  <28.116535, 35.251743, 17.395460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855574, 35.028759, 17.600832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412734, 0.306843, 0.857612,
		-0.635626, 0.771418, 0.029897,
		-0.652404, -0.557459, 0.513428,
		27.659853, 34.861523, 17.754860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135590, 35.491688, 18.075205>,  <28.116535, 35.251743, 17.395460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135590, 35.491688, 18.075205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905987, 35.170273, 18.138248>,  <27.768225, 34.977425, 18.176075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905987, 35.170273, 18.138248>,  <28.135590, 35.491688, 18.075205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905987, 35.170273, 18.138248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021133, 0.177877, 0.983826,
		-0.818577, 0.568054, -0.085122,
		-0.574008, -0.803539, 0.157611,
		27.733784, 34.929211, 18.185532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401360, 35.685589, 18.499865>,  <28.135590, 35.491688, 18.075205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401360, 35.685589, 18.499865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552351, 35.318752, 18.551159>,  <27.642946, 35.098648, 18.581936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552351, 35.318752, 18.551159>,  <27.401360, 35.685589, 18.499865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552351, 35.318752, 18.551159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108856, 0.181470, 0.977353,
		-0.919597, -0.354972, 0.168333,
		0.377481, -0.917095, 0.128238,
		27.665596, 35.043625, 18.589630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154184, 35.562729, 19.124531>,  <27.401360, 35.685589, 18.499865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154184, 35.562729, 19.124531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444143, 35.297630, 19.049393>,  <27.618118, 35.138569, 19.004311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444143, 35.297630, 19.049393>,  <27.154184, 35.562729, 19.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444143, 35.297630, 19.049393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328391, 0.092766, 0.939976,
		-0.605542, -0.743074, 0.284887,
		0.724899, -0.662749, -0.187845,
		27.661613, 35.098804, 18.993040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119497, 35.171856, 19.647676>,  <27.154184, 35.562729, 19.124531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119497, 35.171856, 19.647676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484575, 35.081371, 19.511551>,  <27.703623, 35.027081, 19.429874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484575, 35.081371, 19.511551>,  <27.119497, 35.171856, 19.647676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484575, 35.081371, 19.511551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376087, 0.139271, 0.916058,
		-0.159829, -0.964070, 0.212188,
		0.912695, -0.226214, -0.340315,
		27.758385, 35.013508, 19.409456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394609, 34.802723, 20.114944>,  <27.119497, 35.171856, 19.647676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394609, 34.802723, 20.114944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721598, 34.916485, 19.914604>,  <27.917791, 34.984741, 19.794399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721598, 34.916485, 19.914604>,  <27.394609, 34.802723, 20.114944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721598, 34.916485, 19.914604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529839, -0.030346, 0.847555,
		0.225852, -0.958223, -0.175497,
		0.817472, 0.284407, -0.500851,
		27.966839, 35.001808, 19.764349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963968, 34.434811, 20.548887>,  <27.394609, 34.802723, 20.114944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963968, 34.434811, 20.548887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134701, 34.721851, 20.328754>,  <28.237141, 34.894077, 20.196674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134701, 34.721851, 20.328754>,  <27.963968, 34.434811, 20.548887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134701, 34.721851, 20.328754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420368, 0.381367, 0.823316,
		0.800691, -0.582758, -0.138878,
		0.426831, 0.717602, -0.550330,
		28.262751, 34.937130, 20.163656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660820, 34.309658, 20.692944>,  <27.963968, 34.434811, 20.548887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660820, 34.309658, 20.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587736, 34.685497, 20.577169>,  <28.543886, 34.910999, 20.507706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587736, 34.685497, 20.577169>,  <28.660820, 34.309658, 20.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587736, 34.685497, 20.577169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577971, 0.340799, 0.741489,
		0.795341, -0.031808, -0.605328,
		-0.182709, 0.939598, -0.289436,
		28.532923, 34.967377, 20.490339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274767, 34.660957, 20.894049>,  <28.660820, 34.309658, 20.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274767, 34.660957, 20.894049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035772, 34.973042, 20.819986>,  <28.892376, 35.160294, 20.775549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035772, 34.973042, 20.819986>,  <29.274767, 34.660957, 20.894049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035772, 34.973042, 20.819986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272702, 0.414841, 0.868067,
		0.754086, 0.468164, -0.460626,
		-0.597485, 0.780211, -0.185156,
		28.856527, 35.207104, 20.764439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682798, 35.184273, 21.050686>,  <29.274767, 34.660957, 20.894049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682798, 35.184273, 21.050686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304579, 35.314430, 21.053532>,  <29.077646, 35.392525, 21.055239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304579, 35.314430, 21.053532>,  <29.682798, 35.184273, 21.050686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304579, 35.314430, 21.053532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206819, 0.583818, 0.785101,
		0.251317, 0.743824, -0.619327,
		-0.945551, 0.325398, 0.007113,
		29.020914, 35.412048, 21.055666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767435, 35.776798, 21.378462>,  <29.682798, 35.184273, 21.050686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767435, 35.776798, 21.378462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370567, 35.735180, 21.406111>,  <29.132446, 35.710209, 21.422701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370567, 35.735180, 21.406111>,  <29.767435, 35.776798, 21.378462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370567, 35.735180, 21.406111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033130, 0.314373, 0.948721,
		-0.120440, 0.943580, -0.308464,
		-0.992168, -0.104045, 0.069124,
		29.072918, 35.703968, 21.426847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548498, 36.413631, 21.612211>,  <29.767435, 35.776798, 21.378462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548498, 36.413631, 21.612211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288969, 36.124065, 21.705997>,  <29.133251, 35.950325, 21.762270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288969, 36.124065, 21.705997>,  <29.548498, 36.413631, 21.612211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288969, 36.124065, 21.705997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090469, 0.232556, 0.968366,
		-0.755540, 0.649512, -0.085396,
		-0.648825, -0.723914, 0.234466,
		29.094322, 35.906891, 21.776337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165575, 36.711269, 22.159767>,  <29.548498, 36.413631, 21.612211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165575, 36.711269, 22.159767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100267, 36.319130, 22.204044>,  <29.061083, 36.083847, 22.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100267, 36.319130, 22.204044>,  <29.165575, 36.711269, 22.159767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100267, 36.319130, 22.204044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073476, 0.123969, 0.989562,
		-0.983842, 0.153432, -0.092272,
		-0.163269, -0.980352, 0.110693,
		29.051287, 36.025024, 22.237251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607861, 36.661980, 22.588476>,  <29.165575, 36.711269, 22.159767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607861, 36.661980, 22.588476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783319, 36.303738, 22.618107>,  <28.888594, 36.088795, 22.635885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783319, 36.303738, 22.618107>,  <28.607861, 36.661980, 22.588476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783319, 36.303738, 22.618107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191085, -0.012410, 0.981495,
		-0.878109, -0.444684, -0.176579,
		0.438646, -0.895602, 0.074075,
		28.914913, 36.035057, 22.640329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167517, 36.248657, 22.978443>,  <28.607861, 36.661980, 22.588476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167517, 36.248657, 22.978443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503351, 36.036804, 23.026739>,  <28.704853, 35.909691, 23.055717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503351, 36.036804, 23.026739>,  <28.167517, 36.248657, 22.978443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503351, 36.036804, 23.026739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202348, -0.098646, 0.974333,
		-0.504130, -0.842470, -0.189993,
		0.839588, -0.529635, 0.120742,
		28.755228, 35.877914, 23.062962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031416, 35.681839, 23.491976>,  <28.167517, 36.248657, 22.978443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031416, 35.681839, 23.491976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431049, 35.681938, 23.474848>,  <28.670830, 35.681999, 23.464571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431049, 35.681938, 23.474848>,  <28.031416, 35.681839, 23.491976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431049, 35.681938, 23.474848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041739, -0.229055, 0.972518,
		-0.009562, -0.973414, -0.228855,
		0.999083, 0.000253, -0.042819,
		28.730774, 35.682014, 23.462002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320940, 35.075043, 23.728384>,  <28.031416, 35.681839, 23.491976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320940, 35.075043, 23.728384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600025, 35.355362, 23.787815>,  <28.767477, 35.523556, 23.823475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600025, 35.355362, 23.787815>,  <28.320940, 35.075043, 23.728384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600025, 35.355362, 23.787815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133195, -0.330691, 0.934293,
		0.703887, -0.632077, -0.324070,
		0.697712, 0.700801, 0.148579,
		28.809340, 35.565601, 23.832388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842375, 34.731144, 24.167685>,  <28.320940, 35.075043, 23.728384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842375, 34.731144, 24.167685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903578, 35.124012, 24.211390>,  <28.940300, 35.359734, 24.237612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903578, 35.124012, 24.211390>,  <28.842375, 34.731144, 24.167685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903578, 35.124012, 24.211390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148644, -0.132180, 0.980017,
		0.976982, -0.133707, -0.166217,
		0.153006, 0.982166, 0.109263,
		28.949480, 35.418663, 24.244169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570217, 34.855667, 24.413368>,  <28.842375, 34.731144, 24.167685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570217, 34.855667, 24.413368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336884, 35.157806, 24.532816>,  <29.196882, 35.339088, 24.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336884, 35.157806, 24.532816>,  <29.570217, 34.855667, 24.413368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336884, 35.157806, 24.532816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319133, -0.124937, 0.939439,
		0.746909, 0.643307, -0.168175,
		-0.583336, 0.755346, 0.298617,
		29.161882, 35.384411, 24.622400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044937, 35.164219, 24.801804>,  <29.570217, 34.855667, 24.413368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044937, 35.164219, 24.801804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686558, 35.304207, 24.911201>,  <29.471531, 35.388199, 24.976841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686558, 35.304207, 24.911201>,  <30.044937, 35.164219, 24.801804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686558, 35.304207, 24.911201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354143, 0.191244, 0.915428,
		0.268066, 0.917032, -0.295283,
		-0.895948, 0.349968, 0.273494,
		29.417774, 35.409199, 24.993250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214766, 35.622181, 25.235201>,  <30.044937, 35.164219, 24.801804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214766, 35.622181, 25.235201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828320, 35.546829, 25.305786>,  <29.596453, 35.501617, 25.348137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828320, 35.546829, 25.305786>,  <30.214766, 35.622181, 25.235201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828320, 35.546829, 25.305786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164661, 0.076688, 0.983364,
		-0.198777, 0.979098, -0.043071,
		-0.966113, -0.188378, 0.176463,
		29.538486, 35.490314, 25.358725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993620, 36.156624, 25.724091>,  <30.214766, 35.622181, 25.235201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993620, 36.156624, 25.724091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723549, 35.862026, 25.740658>,  <29.561506, 35.685268, 25.750599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723549, 35.862026, 25.740658>,  <29.993620, 36.156624, 25.724091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723549, 35.862026, 25.740658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137763, -0.070733, 0.987936,
		-0.724678, 0.672737, 0.149219,
		-0.675176, -0.736493, 0.041420,
		29.520996, 35.641079, 25.753084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740009, 36.320786, 26.379732>,  <29.993620, 36.156624, 25.724091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740009, 36.320786, 26.379732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622879, 35.943089, 26.319517>,  <29.552601, 35.716469, 26.283388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622879, 35.943089, 26.319517>,  <29.740009, 36.320786, 26.379732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622879, 35.943089, 26.319517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027065, -0.149191, 0.988438,
		-0.955782, 0.293515, 0.018131,
		-0.292827, -0.944241, -0.150538,
		29.535030, 35.659817, 26.274355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084402, 36.238293, 26.666220>,  <29.740009, 36.320786, 26.379732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084402, 36.238293, 26.666220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246801, 35.873466, 26.643217>,  <29.344242, 35.654572, 26.629416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246801, 35.873466, 26.643217>,  <29.084402, 36.238293, 26.666220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246801, 35.873466, 26.643217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024345, -0.073700, 0.996983,
		-0.913549, -0.403375, -0.052126,
		0.406000, -0.912062, -0.057508,
		29.368601, 35.599850, 26.625965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610498, 35.715248, 26.931664>,  <29.084402, 36.238293, 26.666220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610498, 35.715248, 26.931664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980457, 35.564816, 26.954042>,  <29.202433, 35.474556, 26.967470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980457, 35.564816, 26.954042>,  <28.610498, 35.715248, 26.931664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980457, 35.564816, 26.954042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137123, -0.192678, 0.971634,
		-0.354636, -0.906331, -0.229777,
		0.924895, -0.376084, 0.055948,
		29.257925, 35.451992, 26.970827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581623, 35.171707, 27.371027>,  <28.610498, 35.715248, 26.931664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581623, 35.171707, 27.371027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978958, 35.210247, 27.345730>,  <29.217360, 35.233372, 27.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978958, 35.210247, 27.345730>,  <28.581623, 35.171707, 27.371027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978958, 35.210247, 27.345730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093205, -0.348795, 0.932553,
		0.067791, -0.932233, -0.355451,
		0.993337, 0.096348, -0.063243,
		29.276958, 35.239151, 27.326757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869719, 34.603737, 27.789452>,  <28.581623, 35.171707, 27.371027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869719, 34.603737, 27.789452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174477, 34.861923, 27.767933>,  <29.357332, 35.016834, 27.755022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174477, 34.861923, 27.767933>,  <28.869719, 34.603737, 27.789452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174477, 34.861923, 27.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211884, -0.169895, 0.962414,
		0.612062, -0.744658, -0.266205,
		0.761896, 0.645461, -0.053794,
		29.403046, 35.055561, 27.751795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288576, 34.380123, 28.333235>,  <28.869719, 34.603737, 27.789452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288576, 34.380123, 28.333235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447697, 34.738506, 28.254234>,  <29.543169, 34.953537, 28.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447697, 34.738506, 28.254234>,  <29.288576, 34.380123, 28.333235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447697, 34.738506, 28.254234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376792, 0.036736, 0.925569,
		0.836530, -0.442610, -0.322977,
		0.397801, 0.895961, -0.197503,
		29.567038, 35.007294, 28.194983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040802, 34.418186, 28.607550>,  <29.288576, 34.380123, 28.333235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040802, 34.418186, 28.607550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885286, 34.786304, 28.590134>,  <29.791977, 35.007175, 28.579683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885286, 34.786304, 28.590134>,  <30.040802, 34.418186, 28.607550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885286, 34.786304, 28.590134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431524, 0.223649, 0.873939,
		0.814021, 0.320989, -0.484082,
		-0.388789, 0.920297, -0.043541,
		29.768650, 35.062393, 28.577072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571688, 34.874832, 28.915154>,  <30.040802, 34.418186, 28.607550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571688, 34.874832, 28.915154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217918, 35.061474, 28.911741>,  <30.005657, 35.173458, 28.909693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217918, 35.061474, 28.911741>,  <30.571688, 34.874832, 28.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217918, 35.061474, 28.911741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244775, 0.479367, 0.842788,
		0.397340, 0.743294, -0.538178,
		-0.884424, 0.466606, -0.008532,
		29.952591, 35.201454, 28.909182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699446, 35.580204, 28.930061>,  <30.571688, 34.874832, 28.915154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699446, 35.580204, 28.930061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319855, 35.567318, 29.055540>,  <30.092100, 35.559586, 29.130827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319855, 35.567318, 29.055540>,  <30.699446, 35.580204, 28.930061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319855, 35.567318, 29.055540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246482, 0.544724, 0.801575,
		-0.196702, 0.837996, -0.508990,
		-0.948976, -0.032215, 0.313699,
		30.035162, 35.557655, 29.149651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549768, 36.207302, 29.291962>,  <30.699446, 35.580204, 28.930061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549768, 36.207302, 29.291962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227993, 35.998562, 29.405487>,  <30.034927, 35.873318, 29.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227993, 35.998562, 29.405487>,  <30.549768, 36.207302, 29.291962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227993, 35.998562, 29.405487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222954, 0.708083, 0.670007,
		-0.550605, 0.475704, -0.685959,
		-0.804441, -0.521847, 0.283814,
		29.986660, 35.842007, 29.490631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092791, 36.681015, 29.236153>,  <30.549768, 36.207302, 29.291962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092791, 36.681015, 29.236153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992052, 36.403656, 29.506197>,  <29.931608, 36.237240, 29.668224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992052, 36.403656, 29.506197>,  <30.092791, 36.681015, 29.236153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992052, 36.403656, 29.506197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166011, 0.718212, 0.675731,
		-0.953422, 0.058105, -0.295991,
		-0.251848, -0.693394, 0.675112,
		29.916498, 36.195637, 29.708731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437574, 36.908691, 29.612421>,  <30.092791, 36.681015, 29.236153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437574, 36.908691, 29.612421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623863, 36.635033, 29.836937>,  <29.735638, 36.470837, 29.971647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623863, 36.635033, 29.836937>,  <29.437574, 36.908691, 29.612421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623863, 36.635033, 29.836937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116492, 0.581359, 0.805264,
		-0.877229, -0.440416, 0.191055,
		0.465724, -0.684145, 0.561290,
		29.763580, 36.429790, 30.005323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798830, 36.899803, 29.870745>,  <29.437574, 36.908691, 29.612421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798830, 36.899803, 29.870745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038445, 37.217434, 29.829573>,  <29.182213, 37.408012, 29.804869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038445, 37.217434, 29.829573>,  <28.798830, 36.899803, 29.870745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038445, 37.217434, 29.829573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523405, 0.291039, -0.800839,
		-0.605973, 0.533606, 0.589967,
		0.599037, 0.794079, -0.102930,
		29.218155, 37.455658, 29.798693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383205, 37.423740, 29.566877>,  <28.798830, 36.899803, 29.870745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383205, 37.423740, 29.566877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749134, 37.551525, 29.468052>,  <28.968691, 37.628197, 29.408756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749134, 37.551525, 29.468052>,  <28.383205, 37.423740, 29.566877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749134, 37.551525, 29.468052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373871, 0.438612, -0.817215,
		-0.152706, 0.839977, 0.520691,
		0.914823, 0.319465, -0.247064,
		29.023581, 37.647366, 29.393932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186836, 38.155659, 29.263359>,  <28.383205, 37.423740, 29.566877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186836, 38.155659, 29.263359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558559, 38.055626, 29.154659>,  <28.781593, 37.995605, 29.089439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558559, 38.055626, 29.154659>,  <28.186836, 38.155659, 29.263359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558559, 38.055626, 29.154659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134511, 0.456086, -0.879711,
		0.343940, 0.854076, 0.390206,
		0.929307, -0.250081, -0.271749,
		28.837351, 37.980602, 29.073135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419487, 38.727043, 29.022097>,  <28.186836, 38.155659, 29.263359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419487, 38.727043, 29.022097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654642, 38.445988, 28.861753>,  <28.795734, 38.277355, 28.765549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654642, 38.445988, 28.861753>,  <28.419487, 38.727043, 29.022097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654642, 38.445988, 28.861753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169451, 0.377575, -0.910343,
		0.790995, 0.603105, 0.102909,
		0.587888, -0.702639, -0.400856,
		28.831009, 38.235195, 28.741497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770819, 38.964138, 28.495539>,  <28.419487, 38.727043, 29.022097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770819, 38.964138, 28.495539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892347, 38.600300, 28.382174>,  <28.965265, 38.381996, 28.314154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892347, 38.600300, 28.382174>,  <28.770819, 38.964138, 28.495539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892347, 38.600300, 28.382174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126868, 0.256199, -0.958262,
		0.944244, 0.327096, -0.037561,
		0.303821, -0.909599, -0.283413,
		28.983494, 38.327419, 28.297150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091742, 39.086128, 27.927216>,  <28.770819, 38.964138, 28.495539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091742, 39.086128, 27.927216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956484, 38.709805, 27.917934>,  <28.875328, 38.484009, 27.912365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956484, 38.709805, 27.917934>,  <29.091742, 39.086128, 27.927216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956484, 38.709805, 27.917934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254846, 0.115275, -0.960086,
		0.905931, -0.318736, -0.278740,
		-0.338145, -0.940808, -0.023203,
		28.855040, 38.427563, 27.910975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506483, 38.748180, 27.481627>,  <29.091742, 39.086128, 27.927216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506483, 38.748180, 27.481627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146053, 38.579479, 27.522003>,  <28.929796, 38.478256, 27.546228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146053, 38.579479, 27.522003>,  <29.506483, 38.748180, 27.481627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146053, 38.579479, 27.522003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114529, 0.006934, -0.993396,
		0.418272, -0.906682, -0.054551,
		-0.901072, -0.421757, 0.100941,
		28.875732, 38.452953, 27.552286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445185, 38.387512, 26.825012>,  <29.506483, 38.748180, 27.481627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445185, 38.387512, 26.825012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068165, 38.365555, 26.956823>,  <28.841953, 38.352383, 27.035910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068165, 38.365555, 26.956823>,  <29.445185, 38.387512, 26.825012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068165, 38.365555, 26.956823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327237, -0.046787, -0.943783,
		0.067221, -0.997396, 0.026137,
		-0.942548, -0.054889, 0.329529,
		28.785400, 38.349087, 27.055681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252386, 37.993809, 26.365690>,  <29.445185, 38.387512, 26.825012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252386, 37.993809, 26.365690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923328, 38.175846, 26.502012>,  <28.725893, 38.285069, 26.583805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923328, 38.175846, 26.502012>,  <29.252386, 37.993809, 26.365690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923328, 38.175846, 26.502012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270629, 0.213733, -0.938658,
		-0.500014, -0.864414, -0.052666,
		-0.822646, 0.455089, 0.340805,
		28.676535, 38.312374, 26.604254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726665, 37.733635, 25.950869>,  <29.252386, 37.993809, 26.365690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726665, 37.733635, 25.950869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614681, 38.079834, 26.117016>,  <28.547491, 38.287556, 26.216703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614681, 38.079834, 26.117016>,  <28.726665, 37.733635, 25.950869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614681, 38.079834, 26.117016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262610, 0.347123, -0.900301,
		-0.923394, -0.361130, 0.130108,
		-0.279963, 0.865500, 0.415368,
		28.530693, 38.339485, 26.241627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056295, 37.812725, 25.656385>,  <28.726665, 37.733635, 25.950869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056295, 37.812725, 25.656385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190939, 38.162884, 25.795172>,  <28.271725, 38.372978, 25.878443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190939, 38.162884, 25.795172>,  <28.056295, 37.812725, 25.656385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190939, 38.162884, 25.795172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349512, 0.458293, -0.817196,
		-0.874378, 0.153806, 0.460224,
		0.336607, 0.875392, 0.346965,
		28.291922, 38.425503, 25.899261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506504, 38.321236, 25.706053>,  <28.056295, 37.812725, 25.656385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506504, 38.321236, 25.706053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842697, 38.535355, 25.672485>,  <28.044413, 38.663826, 25.652346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842697, 38.535355, 25.672485>,  <27.506504, 38.321236, 25.706053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842697, 38.535355, 25.672485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369453, 0.452882, -0.811420,
		-0.396347, 0.712989, 0.578408,
		0.840484, 0.535298, -0.083917,
		28.094843, 38.695946, 25.647310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325460, 38.898037, 25.417025>,  <27.506504, 38.321236, 25.706053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325460, 38.898037, 25.417025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719828, 38.868546, 25.356985>,  <27.956448, 38.850849, 25.320961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719828, 38.868546, 25.356985>,  <27.325460, 38.898037, 25.417025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719828, 38.868546, 25.356985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123026, 0.288176, -0.949642,
		0.113275, 0.954735, 0.275047,
		0.985918, -0.073733, -0.150100,
		28.015602, 38.846424, 25.311954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455952, 39.463188, 24.917770>,  <27.325460, 38.898037, 25.417025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455952, 39.463188, 24.917770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796886, 39.256641, 24.884577>,  <28.001448, 39.132713, 24.864660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796886, 39.256641, 24.884577>,  <27.455952, 39.463188, 24.917770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796886, 39.256641, 24.884577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015375, 0.133860, -0.990881,
		0.522770, 0.845839, 0.106154,
		0.852335, -0.516371, -0.082983,
		28.052588, 39.101730, 24.859682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969929, 39.869205, 24.577108>,  <27.455952, 39.463188, 24.917770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969929, 39.869205, 24.577108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091543, 39.493317, 24.514507>,  <28.164513, 39.267784, 24.476948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091543, 39.493317, 24.514507>,  <27.969929, 39.869205, 24.577108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091543, 39.493317, 24.514507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143364, 0.117274, -0.982697,
		0.941811, 0.321213, -0.099066,
		0.304037, -0.939718, -0.156500,
		28.182755, 39.211403, 24.467558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214571, 39.896488, 23.889263>,  <27.969929, 39.869205, 24.577108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214571, 39.896488, 23.889263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187956, 39.501133, 23.943893>,  <28.171988, 39.263920, 23.976671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187956, 39.501133, 23.943893>,  <28.214571, 39.896488, 23.889263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187956, 39.501133, 23.943893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076044, -0.131458, -0.988401,
		0.994882, -0.076151, -0.066414,
		-0.066537, -0.988393, 0.136576,
		28.167995, 39.204617, 23.984865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702768, 39.676353, 23.417236>,  <28.214571, 39.896488, 23.889263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702768, 39.676353, 23.417236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445154, 39.382317, 23.501953>,  <28.290585, 39.205894, 23.552784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445154, 39.382317, 23.501953>,  <28.702768, 39.676353, 23.417236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445154, 39.382317, 23.501953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213120, -0.093485, -0.972543,
		0.734709, -0.671490, -0.096455,
		-0.644036, -0.735093, 0.211792,
		28.251944, 39.161789, 23.565491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919264, 39.249306, 22.884007>,  <28.702768, 39.676353, 23.417236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919264, 39.249306, 22.884007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562592, 39.114285, 23.004650>,  <28.348589, 39.033272, 23.077036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562592, 39.114285, 23.004650>,  <28.919264, 39.249306, 22.884007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562592, 39.114285, 23.004650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197360, -0.309735, -0.930115,
		0.407380, -0.888889, 0.209565,
		-0.891679, -0.337551, 0.301611,
		28.295088, 39.013020, 23.095133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940723, 38.473289, 22.690916>,  <28.919264, 39.249306, 22.884007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940723, 38.473289, 22.690916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565701, 38.606361, 22.731522>,  <28.340687, 38.686207, 22.755886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565701, 38.606361, 22.731522>,  <28.940723, 38.473289, 22.690916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565701, 38.606361, 22.731522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273060, -0.523195, -0.807283,
		-0.215457, -0.784595, 0.581369,
		-0.937559, 0.332683, 0.101515,
		28.284433, 38.706165, 22.761976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579561, 37.886311, 22.635725>,  <28.940723, 38.473289, 22.690916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579561, 37.886311, 22.635725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309868, 38.176655, 22.581261>,  <28.148052, 38.350861, 22.548582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309868, 38.176655, 22.581261>,  <28.579561, 37.886311, 22.635725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309868, 38.176655, 22.581261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279199, -0.421210, -0.862920,
		-0.683710, -0.543792, 0.486652,
		-0.674232, 0.725860, -0.136159,
		28.107597, 38.394413, 22.540413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920830, 37.581551, 22.428461>,  <28.579561, 37.886311, 22.635725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920830, 37.581551, 22.428461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924532, 37.952805, 22.279613>,  <27.926752, 38.175556, 22.190304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924532, 37.952805, 22.279613>,  <27.920830, 37.581551, 22.428461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924532, 37.952805, 22.279613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076146, -0.370401, -0.925746,
		-0.997054, 0.036902, 0.067247,
		0.009253, 0.928138, -0.372120,
		27.927307, 38.231247, 22.167978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759903, 37.404510, 21.850452>,  <27.920830, 37.581551, 22.428461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759903, 37.404510, 21.850452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792488, 37.797993, 21.786339>,  <27.812040, 38.034081, 21.747869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792488, 37.797993, 21.786339>,  <27.759903, 37.404510, 21.850452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792488, 37.797993, 21.786339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016997, -0.159425, -0.987064,
		-0.996531, 0.083135, 0.003732,
		0.081465, 0.983703, -0.160285,
		27.816927, 38.093105, 21.738253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168375, 37.716942, 21.538239>,  <27.759903, 37.404510, 21.850452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168375, 37.716942, 21.538239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496754, 37.916046, 21.426321>,  <27.693781, 38.035507, 21.359171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496754, 37.916046, 21.426321>,  <27.168375, 37.716942, 21.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496754, 37.916046, 21.426321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196354, -0.214031, -0.956889,
		-0.536185, 0.840492, -0.077971,
		0.820945, 0.497760, -0.279794,
		27.743038, 38.065372, 21.342382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044859, 38.178871, 20.863134>,  <27.168375, 37.716942, 21.538239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044859, 38.178871, 20.863134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440022, 38.124680, 20.893301>,  <27.677118, 38.092163, 20.911402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440022, 38.124680, 20.893301>,  <27.044859, 38.178871, 20.863134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440022, 38.124680, 20.893301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058189, -0.126907, -0.990206,
		0.143722, 0.982619, -0.117489,
		0.987906, -0.135478, 0.075417,
		27.736393, 38.084038, 20.915926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191772, 38.563599, 20.219292>,  <27.044859, 38.178871, 20.863134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191772, 38.563599, 20.219292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491194, 38.315948, 20.314243>,  <27.670847, 38.167358, 20.371214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491194, 38.315948, 20.314243>,  <27.191772, 38.563599, 20.219292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491194, 38.315948, 20.314243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190801, -0.141731, -0.971343,
		0.635030, 0.772393, 0.012038,
		0.748553, -0.619129, 0.237377,
		27.715759, 38.130211, 20.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702501, 38.740891, 19.740534>,  <27.191772, 38.563599, 20.219292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702501, 38.740891, 19.740534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826796, 38.384430, 19.872770>,  <27.901373, 38.170555, 19.952112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826796, 38.384430, 19.872770>,  <27.702501, 38.740891, 19.740534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826796, 38.384430, 19.872770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346060, -0.217870, -0.912565,
		0.885261, 0.397971, 0.240692,
		0.310735, -0.891152, 0.330593,
		27.920015, 38.117085, 19.971949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399023, 38.648499, 19.685398>,  <27.702501, 38.740891, 19.740534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399023, 38.648499, 19.685398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303802, 38.260899, 19.711826>,  <28.246670, 38.028339, 19.727682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303802, 38.260899, 19.711826>,  <28.399023, 38.648499, 19.685398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303802, 38.260899, 19.711826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407656, -0.161426, -0.898754,
		0.881560, -0.187016, 0.433447,
		-0.238051, -0.969003, 0.066068,
		28.232388, 37.970200, 19.731647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998177, 38.206814, 19.459352>,  <28.399023, 38.648499, 19.685398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998177, 38.206814, 19.459352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670574, 37.981106, 19.417732>,  <28.474012, 37.845680, 19.392761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670574, 37.981106, 19.417732>,  <28.998177, 38.206814, 19.459352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670574, 37.981106, 19.417732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296868, -0.261535, -0.918405,
		0.491020, -0.783067, 0.381714,
		-0.819005, -0.564274, -0.104049,
		28.424873, 37.811825, 19.386518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254286, 37.657688, 19.061062>,  <28.998177, 38.206814, 19.459352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254286, 37.657688, 19.061062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858091, 37.639896, 19.008972>,  <28.620375, 37.629223, 18.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858091, 37.639896, 19.008972>,  <29.254286, 37.657688, 19.061062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858091, 37.639896, 19.008972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136910, -0.223163, -0.965118,
		0.013865, -0.973766, 0.227130,
		-0.990487, -0.044478, -0.130224,
		28.560946, 37.626553, 18.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090734, 37.024227, 18.586248>,  <29.254286, 37.657688, 19.061062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090734, 37.024227, 18.586248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775568, 37.268459, 18.554298>,  <28.586468, 37.414997, 18.535128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775568, 37.268459, 18.554298>,  <29.090734, 37.024227, 18.586248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775568, 37.268459, 18.554298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085381, -0.236785, -0.967803,
		-0.609832, -0.755730, 0.238699,
		-0.787918, 0.610578, -0.079874,
		28.539192, 37.451633, 18.530336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750383, 36.660763, 18.058826>,  <29.090734, 37.024227, 18.586248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750383, 36.660763, 18.058826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527483, 36.992546, 18.074165>,  <28.393742, 37.191616, 18.083368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527483, 36.992546, 18.074165>,  <28.750383, 36.660763, 18.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527483, 36.992546, 18.074165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065249, 0.002298, -0.997866,
		-0.827775, -0.558566, 0.052840,
		-0.557253, 0.829457, 0.038348,
		28.360308, 37.241383, 18.085670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084318, 36.604973, 17.757456>,  <28.750383, 36.660763, 18.058826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084318, 36.604973, 17.757456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203020, 36.986729, 17.744331>,  <28.274240, 37.215782, 17.736456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203020, 36.986729, 17.744331>,  <28.084318, 36.604973, 17.757456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203020, 36.986729, 17.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012819, -0.030376, -0.999456,
		-0.954868, 0.297014, 0.003220,
		0.296755, 0.954390, -0.032812,
		28.292046, 37.273045, 17.734488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707836, 36.880424, 17.247845>,  <28.084318, 36.604973, 17.757456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707836, 36.880424, 17.247845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973505, 37.178902, 17.266035>,  <28.132906, 37.357990, 17.276949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973505, 37.178902, 17.266035>,  <27.707836, 36.880424, 17.247845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973505, 37.178902, 17.266035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166085, 0.206591, -0.964228,
		-0.728899, 0.632859, 0.261144,
		0.664171, 0.746197, 0.045476,
		28.172756, 37.402760, 17.279678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485783, 37.544113, 16.915535>,  <27.707836, 36.880424, 17.247845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485783, 37.544113, 16.915535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884562, 37.575138, 16.911976>,  <28.123829, 37.593754, 16.909840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884562, 37.575138, 16.911976>,  <27.485783, 37.544113, 16.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884562, 37.575138, 16.911976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027688, 0.244701, -0.969203,
		-0.072996, 0.966491, 0.246102,
		0.996948, 0.077562, -0.008898,
		28.183645, 37.598408, 16.909307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711353, 38.241852, 16.627157>,  <27.485783, 37.544113, 16.915535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711353, 38.241852, 16.627157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028223, 38.002548, 16.578913>,  <28.218344, 37.858967, 16.549967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028223, 38.002548, 16.578913>,  <27.711353, 38.241852, 16.627157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028223, 38.002548, 16.578913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018325, 0.220855, -0.975134,
		0.610021, 0.770265, 0.185918,
		0.792173, -0.598260, -0.120611,
		28.265875, 37.823071, 16.542728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210022, 38.595474, 16.289207>,  <27.711353, 38.241852, 16.627157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210022, 38.595474, 16.289207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346582, 38.228470, 16.207609>,  <28.428518, 38.008266, 16.158649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346582, 38.228470, 16.207609>,  <28.210022, 38.595474, 16.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346582, 38.228470, 16.207609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084141, 0.186330, -0.978878,
		0.936144, 0.351355, -0.013587,
		0.341402, -0.917513, -0.203995,
		28.449003, 37.953217, 16.146410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571487, 38.713760, 15.672888>,  <28.210022, 38.595474, 16.289207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571487, 38.713760, 15.672888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516272, 38.317642, 15.666419>,  <28.483141, 38.079971, 15.662538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516272, 38.317642, 15.666419>,  <28.571487, 38.713760, 15.672888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516272, 38.317642, 15.666419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232593, 0.048285, -0.971375,
		0.962728, -0.130328, -0.237001,
		-0.138041, -0.990294, -0.016172,
		28.474859, 38.020554, 15.661568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917500, 38.559708, 15.108230>,  <28.571487, 38.713760, 15.672888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917500, 38.559708, 15.108230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654638, 38.268723, 15.187172>,  <28.496922, 38.094131, 15.234537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654638, 38.268723, 15.187172>,  <28.917500, 38.559708, 15.108230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654638, 38.268723, 15.187172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215615, -0.069467, -0.974004,
		0.722263, -0.682621, -0.111202,
		-0.657151, -0.727464, 0.197357,
		28.457493, 38.050484, 15.246379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748699, 38.558884, 15.212334>,  <28.917500, 38.559708, 15.108230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748699, 38.558884, 15.212334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145367, 38.508877, 15.199916>,  <30.383368, 38.478874, 15.192466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145367, 38.508877, 15.199916>,  <29.748699, 38.558884, 15.212334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145367, 38.508877, 15.199916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031999, 0.005635, 0.999472,
		-0.124778, -0.992138, 0.009588,
		0.991669, -0.125019, -0.031044,
		30.442867, 38.471371, 15.190602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866058, 38.060295, 15.805912>,  <29.748699, 38.558884, 15.212334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866058, 38.060295, 15.805912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219507, 38.225555, 15.717802>,  <30.431576, 38.324711, 15.664936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219507, 38.225555, 15.717802>,  <29.866058, 38.060295, 15.805912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219507, 38.225555, 15.717802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196858, 0.099022, 0.975418,
		0.424806, -0.905263, 0.006166,
		0.883621, 0.413149, -0.220274,
		30.484594, 38.349499, 15.651720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353035, 37.615009, 16.145973>,  <29.866058, 38.060295, 15.805912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353035, 37.615009, 16.145973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530226, 37.969334, 16.090672>,  <30.636539, 38.181927, 16.057491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530226, 37.969334, 16.090672>,  <30.353035, 37.615009, 16.145973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530226, 37.969334, 16.090672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307000, -0.004989, 0.951697,
		0.842332, -0.464022, -0.274153,
		0.442976, 0.885810, -0.138252,
		30.663118, 38.235077, 16.049196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962658, 37.571629, 16.529530>,  <30.353035, 37.615009, 16.145973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962658, 37.571629, 16.529530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894674, 37.962955, 16.482172>,  <30.853884, 38.197750, 16.453758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894674, 37.962955, 16.482172>,  <30.962658, 37.571629, 16.529530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894674, 37.962955, 16.482172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326268, 0.169228, 0.930006,
		0.929873, 0.119435, -0.347954,
		-0.169959, 0.978313, -0.118393,
		30.843687, 38.256451, 16.446653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578255, 37.992142, 16.781811>,  <30.962658, 37.571629, 16.529530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578255, 37.992142, 16.781811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276522, 38.254635, 16.789200>,  <31.095482, 38.412132, 16.793633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276522, 38.254635, 16.789200>,  <31.578255, 37.992142, 16.781811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276522, 38.254635, 16.789200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347355, 0.375091, 0.859448,
		0.557070, 0.654726, -0.510889,
		-0.754332, 0.656233, 0.018470,
		31.050222, 38.451504, 16.794741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910772, 38.685871, 16.942953>,  <31.578255, 37.992142, 16.781811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910772, 38.685871, 16.942953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522020, 38.672249, 17.036156>,  <31.288769, 38.664074, 17.092077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522020, 38.672249, 17.036156>,  <31.910772, 38.685871, 16.942953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522020, 38.672249, 17.036156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201116, 0.394647, 0.896552,
		-0.122486, 0.918202, -0.376700,
		-0.971879, -0.034055, 0.233004,
		31.230457, 38.662033, 17.106056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898531, 39.280582, 17.459633>,  <31.910772, 38.685871, 16.942953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898531, 39.280582, 17.459633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553062, 39.080292, 17.482758>,  <31.345781, 38.960117, 17.496634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553062, 39.080292, 17.482758>,  <31.898531, 39.280582, 17.459633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553062, 39.080292, 17.482758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010195, 0.097320, 0.995201,
		-0.503949, 0.860118, -0.078948,
		-0.863673, -0.500725, 0.057813,
		31.293961, 38.930073, 17.500101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469538, 39.604698, 17.918144>,  <31.898531, 39.280582, 17.459633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469538, 39.604698, 17.918144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288013, 39.248497, 17.931215>,  <31.179100, 39.034779, 17.939058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288013, 39.248497, 17.931215>,  <31.469538, 39.604698, 17.918144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288013, 39.248497, 17.931215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097930, 0.086289, 0.991445,
		-0.885701, 0.446727, -0.126365,
		-0.453810, -0.890499, 0.032678,
		31.151871, 38.981346, 17.941019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867752, 39.673843, 18.239132>,  <31.469538, 39.604698, 17.918144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867752, 39.673843, 18.239132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982218, 39.297741, 18.312923>,  <31.050898, 39.072079, 18.357199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982218, 39.297741, 18.312923>,  <30.867752, 39.673843, 18.239132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982218, 39.297741, 18.312923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272793, 0.104615, 0.956368,
		-0.918528, -0.324002, -0.226557,
		0.286164, -0.940255, 0.184477,
		31.068068, 39.015663, 18.368267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437572, 39.507290, 18.821850>,  <30.867752, 39.673843, 18.239132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437572, 39.507290, 18.821850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707464, 39.212315, 18.809660>,  <30.869400, 39.035332, 18.802347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707464, 39.212315, 18.809660>,  <30.437572, 39.507290, 18.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707464, 39.212315, 18.809660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247794, -0.265228, 0.931801,
		-0.695226, -0.621161, -0.361690,
		0.674729, -0.737437, -0.030473,
		30.909883, 38.991085, 18.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210274, 39.121117, 19.292618>,  <30.437572, 39.507290, 18.821850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210274, 39.121117, 19.292618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584446, 38.981598, 19.269583>,  <30.808949, 38.897888, 19.255762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584446, 38.981598, 19.269583>,  <30.210274, 39.121117, 19.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584446, 38.981598, 19.269583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005636, -0.177593, 0.984088,
		-0.353472, -0.920219, -0.168091,
		0.935428, -0.348795, -0.057588,
		30.865074, 38.876961, 19.252306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200188, 38.637684, 19.806293>,  <30.210274, 39.121117, 19.292618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200188, 38.637684, 19.806293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574717, 38.754646, 19.728523>,  <30.799435, 38.824821, 19.681860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574717, 38.754646, 19.728523>,  <30.200188, 38.637684, 19.806293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574717, 38.754646, 19.728523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180238, 0.074985, 0.980761,
		0.301358, -0.953350, 0.017508,
		0.936321, 0.292405, -0.194428,
		30.855614, 38.842369, 19.670195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629107, 38.237488, 20.200825>,  <30.200188, 38.637684, 19.806293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629107, 38.237488, 20.200825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861860, 38.549915, 20.110195>,  <31.001513, 38.737373, 20.055819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861860, 38.549915, 20.110195>,  <30.629107, 38.237488, 20.200825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861860, 38.549915, 20.110195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193634, 0.137524, 0.971387,
		0.789883, -0.609108, -0.071219,
		0.581885, 0.781073, -0.226572,
		31.036427, 38.784237, 20.042223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374245, 38.110310, 20.423889>,  <30.629107, 38.237488, 20.200825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374245, 38.110310, 20.423889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331648, 38.506905, 20.393944>,  <31.306089, 38.744862, 20.375977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331648, 38.506905, 20.393944>,  <31.374245, 38.110310, 20.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331648, 38.506905, 20.393944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121634, 0.087716, 0.988691,
		0.986846, 0.096183, -0.129940,
		-0.106493, 0.991491, -0.074863,
		31.299700, 38.804352, 20.371485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950302, 38.415985, 20.751902>,  <31.374245, 38.110310, 20.423889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950302, 38.415985, 20.751902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663862, 38.694454, 20.731716>,  <31.491997, 38.861534, 20.719604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663862, 38.694454, 20.731716>,  <31.950302, 38.415985, 20.751902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663862, 38.694454, 20.731716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070240, 0.143803, 0.987110,
		0.694452, 0.703327, -0.151877,
		-0.716102, 0.696169, -0.050463,
		31.449032, 38.903305, 20.716578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108456, 38.977448, 21.158865>,  <31.950302, 38.415985, 20.751902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108456, 38.977448, 21.158865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725986, 39.085804, 21.114410>,  <31.496506, 39.150818, 21.087738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725986, 39.085804, 21.114410>,  <32.108456, 38.977448, 21.158865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725986, 39.085804, 21.114410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056358, 0.202194, 0.977723,
		0.287326, 0.941136, -0.178065,
		-0.956173, 0.270890, -0.111136,
		31.439135, 39.167072, 21.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046371, 39.603573, 21.506393>,  <32.108456, 38.977448, 21.158865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046371, 39.603573, 21.506393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698576, 39.406616, 21.490681>,  <31.489899, 39.288441, 21.481253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698576, 39.406616, 21.490681>,  <32.046371, 39.603573, 21.506393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698576, 39.406616, 21.490681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086929, 0.074248, 0.993444,
		-0.486247, 0.867201, -0.107361,
		-0.869487, -0.492392, -0.039282,
		31.437731, 39.258900, 21.478895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673546, 39.878944, 22.021542>,  <32.046371, 39.603573, 21.506393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673546, 39.878944, 22.021542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435785, 39.568752, 21.936392>,  <31.293129, 39.382637, 21.885302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435785, 39.568752, 21.936392>,  <31.673546, 39.878944, 22.021542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435785, 39.568752, 21.936392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456262, 0.107233, 0.883361,
		-0.662202, 0.622198, -0.417562,
		-0.594402, -0.775481, -0.212875,
		31.257465, 39.336109, 21.872530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069635, 40.104893, 22.365286>,  <31.673546, 39.878944, 22.021542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069635, 40.104893, 22.365286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044558, 39.707977, 22.322519>,  <31.029510, 39.469830, 22.296860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044558, 39.707977, 22.322519>,  <31.069635, 40.104893, 22.365286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044558, 39.707977, 22.322519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419374, -0.071016, 0.905032,
		-0.905646, 0.101577, -0.411688,
		-0.062694, -0.992290, -0.106914,
		31.025749, 39.410290, 22.290445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419447, 39.947136, 22.636894>,  <31.069635, 40.104893, 22.365286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419447, 39.947136, 22.636894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631704, 39.608238, 22.646656>,  <30.759060, 39.404900, 22.652514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631704, 39.608238, 22.646656>,  <30.419447, 39.947136, 22.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631704, 39.608238, 22.646656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373482, -0.207880, 0.904045,
		-0.760873, -0.488841, -0.426740,
		0.530645, -0.847243, 0.024403,
		30.790897, 39.354065, 22.653976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997747, 39.443466, 22.915176>,  <30.419447, 39.947136, 22.636894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997747, 39.443466, 22.915176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360620, 39.286240, 22.975206>,  <30.578344, 39.191906, 23.011225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360620, 39.286240, 22.975206>,  <29.997747, 39.443466, 22.915176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360620, 39.286240, 22.975206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293574, -0.335840, 0.895000,
		-0.301385, -0.855989, -0.420060,
		0.907183, -0.393058, 0.150079,
		30.632774, 39.168320, 23.020229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943447, 38.783539, 23.207561>,  <29.997747, 39.443466, 22.915176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943447, 38.783539, 23.207561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315451, 38.876202, 23.321699>,  <30.538652, 38.931801, 23.390182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315451, 38.876202, 23.321699>,  <29.943447, 38.783539, 23.207561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315451, 38.876202, 23.321699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219361, -0.273075, 0.936649,
		0.294904, -0.933683, -0.203145,
		0.930007, 0.231659, 0.285345,
		30.594452, 38.945698, 23.407303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189528, 38.244469, 23.652981>,  <29.943447, 38.783539, 23.207561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189528, 38.244469, 23.652981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453140, 38.534039, 23.734575>,  <30.611309, 38.707779, 23.783533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453140, 38.534039, 23.734575>,  <30.189528, 38.244469, 23.652981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453140, 38.534039, 23.734575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068058, -0.327507, 0.942395,
		0.749028, -0.607187, -0.265107,
		0.659034, 0.723922, 0.203988,
		30.650850, 38.751217, 23.795773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549902, 37.960869, 24.216114>,  <30.189528, 38.244469, 23.652981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549902, 37.960869, 24.216114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632301, 38.348518, 24.270315>,  <30.681742, 38.581108, 24.302835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632301, 38.348518, 24.270315>,  <30.549902, 37.960869, 24.216114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632301, 38.348518, 24.270315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224022, -0.181499, 0.957534,
		0.952564, -0.166895, -0.254494,
		0.205998, 0.969125, 0.135501,
		30.694101, 38.639256, 24.310966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065023, 38.018970, 24.690168>,  <30.549902, 37.960869, 24.216114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065023, 38.018970, 24.690168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934555, 38.396915, 24.701777>,  <30.856274, 38.623684, 24.708742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934555, 38.396915, 24.701777>,  <31.065023, 38.018970, 24.690168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934555, 38.396915, 24.701777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083726, -0.001703, 0.996487,
		0.941596, 0.327455, -0.078554,
		-0.326171, 0.944865, 0.029020,
		30.836704, 38.680374, 24.710482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557081, 38.408672, 25.004440>,  <31.065023, 38.018970, 24.690168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557081, 38.408672, 25.004440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218815, 38.618122, 25.045750>,  <31.015854, 38.743793, 25.070536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218815, 38.618122, 25.045750>,  <31.557081, 38.408672, 25.004440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218815, 38.618122, 25.045750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196053, 0.124808, 0.972618,
		0.496397, 0.842758, -0.208204,
		-0.845667, 0.523624, 0.103271,
		30.965115, 38.775208, 25.076731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681322, 39.097897, 25.344646>,  <31.557081, 38.408672, 25.004440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681322, 39.097897, 25.344646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292295, 39.023952, 25.401123>,  <31.058880, 38.979584, 25.435009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292295, 39.023952, 25.401123>,  <31.681322, 39.097897, 25.344646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292295, 39.023952, 25.401123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119520, 0.123591, 0.985109,
		-0.199562, 0.974962, -0.098106,
		-0.972569, -0.184865, 0.141192,
		31.000525, 38.968494, 25.443481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449446, 39.613556, 25.745848>,  <31.681322, 39.097897, 25.344646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449446, 39.613556, 25.745848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166059, 39.336548, 25.800241>,  <30.996029, 39.170341, 25.832878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166059, 39.336548, 25.800241>,  <31.449446, 39.613556, 25.745848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166059, 39.336548, 25.800241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081483, 0.111131, 0.990460,
		-0.701028, 0.712785, -0.022304,
		-0.708464, -0.692522, 0.135985,
		30.953520, 39.128792, 25.841038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994177, 39.841488, 26.139633>,  <31.449446, 39.613556, 25.745848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994177, 39.841488, 26.139633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887800, 39.459137, 26.189562>,  <30.823975, 39.229729, 26.219519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887800, 39.459137, 26.189562>,  <30.994177, 39.841488, 26.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887800, 39.459137, 26.189562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162426, 0.083201, 0.983207,
		-0.950207, 0.281750, 0.133132,
		-0.265942, -0.955874, 0.124822,
		30.808018, 39.172375, 26.227009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458557, 39.826832, 26.696861>,  <30.994177, 39.841488, 26.139633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458557, 39.826832, 26.696861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616650, 39.459919, 26.677301>,  <30.711504, 39.239773, 26.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616650, 39.459919, 26.677301>,  <30.458557, 39.826832, 26.696861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616650, 39.459919, 26.677301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308080, 0.082215, 0.947802,
		-0.865378, -0.389665, 0.315089,
		0.395230, -0.917280, -0.048901,
		30.735218, 39.184734, 26.662630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217640, 39.401604, 27.261824>,  <30.458557, 39.826832, 26.696861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217640, 39.401604, 27.261824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571802, 39.261635, 27.139439>,  <30.784300, 39.177654, 27.066008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571802, 39.261635, 27.139439>,  <30.217640, 39.401604, 27.261824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571802, 39.261635, 27.139439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360139, 0.100282, 0.927493,
		-0.293866, -0.931396, 0.214810,
		0.885405, -0.349921, -0.305962,
		30.837423, 39.156658, 27.047649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478100, 38.981571, 27.782183>,  <30.217640, 39.401604, 27.261824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478100, 38.981571, 27.782183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804071, 39.059975, 27.564020>,  <30.999655, 39.107018, 27.433123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804071, 39.059975, 27.564020>,  <30.478100, 38.981571, 27.782183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804071, 39.059975, 27.564020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525091, 0.148582, 0.837975,
		0.245289, -0.969280, 0.018161,
		0.814931, 0.196010, -0.545406,
		31.048552, 39.118778, 27.400398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993616, 38.605087, 28.132616>,  <30.478100, 38.981571, 27.782183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993616, 38.605087, 28.132616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212269, 38.873505, 27.932259>,  <31.343460, 39.034554, 27.812044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212269, 38.873505, 27.932259>,  <30.993616, 38.605087, 28.132616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212269, 38.873505, 27.932259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591431, 0.114064, 0.798248,
		0.592793, -0.732592, -0.334525,
		0.546632, 0.671043, -0.500893,
		31.376259, 39.074818, 27.781990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666937, 38.449142, 28.329779>,  <30.993616, 38.605087, 28.132616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666937, 38.449142, 28.329779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696152, 38.824352, 28.194260>,  <31.713680, 39.049477, 28.112947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696152, 38.824352, 28.194260>,  <31.666937, 38.449142, 28.329779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696152, 38.824352, 28.194260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581390, 0.235969, 0.778655,
		0.810340, -0.253846, -0.528121,
		0.073038, 0.938020, -0.338798,
		31.718063, 39.105759, 28.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324371, 38.654022, 28.362692>,  <31.666937, 38.449142, 28.329779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324371, 38.654022, 28.362692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168869, 39.021721, 28.337889>,  <32.075569, 39.242340, 28.323008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168869, 39.021721, 28.337889>,  <32.324371, 38.654022, 28.362692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168869, 39.021721, 28.337889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653490, 0.322555, 0.684770,
		0.649476, 0.225688, -0.726117,
		-0.388757, 0.919251, -0.062007,
		32.052242, 39.297497, 28.319286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905689, 39.124302, 28.359745>,  <32.324371, 38.654022, 28.362692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905689, 39.124302, 28.359745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604855, 39.356312, 28.484926>,  <32.424355, 39.495518, 28.560036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604855, 39.356312, 28.484926>,  <32.905689, 39.124302, 28.359745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604855, 39.356312, 28.484926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642918, 0.541204, 0.541991,
		0.144996, 0.608827, -0.779939,
		-0.752085, 0.580024, 0.312954,
		32.379230, 39.530319, 28.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114967, 39.815430, 28.329466>,  <32.905689, 39.124302, 28.359745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114967, 39.815430, 28.329466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806252, 39.839531, 28.582674>,  <32.621021, 39.853992, 28.734598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806252, 39.839531, 28.582674>,  <33.114967, 39.815430, 28.329466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806252, 39.839531, 28.582674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568690, 0.510784, 0.644742,
		-0.284491, 0.857596, -0.428479,
		-0.771788, 0.060248, 0.633020,
		32.574715, 39.857605, 28.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127899, 40.484753, 28.515869>,  <33.114967, 39.815430, 28.329466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127899, 40.484753, 28.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917789, 40.298534, 28.800787>,  <32.791725, 40.186806, 28.971737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917789, 40.298534, 28.800787>,  <33.127899, 40.484753, 28.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917789, 40.298534, 28.800787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631192, 0.348230, 0.693061,
		-0.570691, 0.813637, 0.110933,
		-0.525270, -0.465544, 0.712293,
		32.760208, 40.158871, 29.014475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979397, 40.972355, 28.931118>,  <33.127899, 40.484753, 28.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979397, 40.972355, 28.931118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949081, 40.640648, 29.152596>,  <32.930893, 40.441624, 29.285482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949081, 40.640648, 29.152596>,  <32.979397, 40.972355, 28.931118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949081, 40.640648, 29.152596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733160, 0.330014, 0.594615,
		-0.675820, 0.451011, 0.582972,
		-0.075789, -0.829265, 0.553693,
		32.926346, 40.391869, 29.318703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199715, 41.198833, 29.597778>,  <32.979397, 40.972355, 28.931118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199715, 41.198833, 29.597778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231182, 40.805031, 29.660458>,  <33.250061, 40.568748, 29.698065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231182, 40.805031, 29.660458>,  <33.199715, 41.198833, 29.597778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231182, 40.805031, 29.660458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674211, 0.168326, 0.719101,
		-0.734337, 0.049077, 0.677008,
		0.078666, -0.984509, 0.156696,
		33.254784, 40.509678, 29.707466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187809, 41.032661, 30.428633>,  <33.199715, 41.198833, 29.597778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187809, 41.032661, 30.428633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364132, 40.763943, 30.190514>,  <33.469925, 40.602711, 30.047642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364132, 40.763943, 30.190514>,  <33.187809, 41.032661, 30.428633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364132, 40.763943, 30.190514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766923, -0.062719, 0.638667,
		-0.466392, -0.738074, 0.487571,
		0.440803, -0.671799, -0.595298,
		33.496372, 40.562405, 30.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422997, 40.528393, 30.949392>,  <33.187809, 41.032661, 30.428633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422997, 40.528393, 30.949392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623905, 40.532810, 30.603537>,  <33.744450, 40.535461, 30.396023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623905, 40.532810, 30.603537>,  <33.422997, 40.528393, 30.949392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623905, 40.532810, 30.603537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862235, 0.069200, 0.501759,
		0.065366, -0.997542, 0.025250,
		0.502273, 0.011026, -0.864639,
		33.774586, 40.536121, 30.344145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051956, 40.015823, 30.935358>,  <33.422997, 40.528393, 30.949392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051956, 40.015823, 30.935358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116764, 40.311707, 30.674107>,  <34.155651, 40.489239, 30.517355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116764, 40.311707, 30.674107>,  <34.051956, 40.015823, 30.935358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116764, 40.311707, 30.674107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907585, 0.148103, 0.392881,
		0.387349, -0.656426, -0.647353,
		0.162022, 0.739710, -0.653129,
		34.165371, 40.533619, 30.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603409, 39.864807, 31.490377>,  <34.051956, 40.015823, 30.935358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603409, 39.864807, 31.490377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803387, 39.526672, 31.565712>,  <33.923374, 39.323792, 31.610912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803387, 39.526672, 31.565712>,  <33.603409, 39.864807, 31.490377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803387, 39.526672, 31.565712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519416, 0.466674, 0.715837,
		-0.693011, -0.260053, 0.672390,
		0.499943, -0.845333, 0.188334,
		33.953369, 39.273071, 31.622211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703217, 39.565762, 32.209614>,  <33.603409, 39.864807, 31.490377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703217, 39.565762, 32.209614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029060, 39.504608, 31.985813>,  <34.224567, 39.467915, 31.851534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029060, 39.504608, 31.985813>,  <33.703217, 39.565762, 32.209614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029060, 39.504608, 31.985813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510183, 0.647741, 0.565813,
		0.275907, -0.746363, 0.605654,
		0.814609, -0.152883, -0.559498,
		34.273441, 39.458744, 31.817963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228790, 39.302483, 32.634308>,  <33.703217, 39.565762, 32.209614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228790, 39.302483, 32.634308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376385, 39.541779, 32.349785>,  <34.464943, 39.685356, 32.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376385, 39.541779, 32.349785>,  <34.228790, 39.302483, 32.634308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376385, 39.541779, 32.349785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609310, 0.422215, 0.671176,
		0.701849, -0.681060, -0.208723,
		0.368985, 0.598241, -0.711307,
		34.487080, 39.721252, 32.136395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858387, 38.652344, 32.667072>,  <34.228790, 39.302483, 32.634308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858387, 38.652344, 32.667072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088085, 38.328625, 32.617641>,  <34.225906, 38.134392, 32.587982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088085, 38.328625, 32.617641>,  <33.858387, 38.652344, 32.667072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088085, 38.328625, 32.617641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729745, 0.574421, -0.370827,
		0.371094, 0.122769, 0.920444,
		0.574248, -0.809301, -0.123574,
		34.260361, 38.085835, 32.580570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580093, 38.768814, 33.050491>,  <33.858387, 38.652344, 32.667072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580093, 38.768814, 33.050491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584309, 38.510822, 32.744843>,  <34.586838, 38.356026, 32.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584309, 38.510822, 32.744843>,  <34.580093, 38.768814, 33.050491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584309, 38.510822, 32.744843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920344, 0.305039, -0.244779,
		0.390966, -0.700677, 0.596822,
		0.010543, -0.644983, -0.764124,
		34.587471, 38.317326, 32.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210785, 38.292316, 33.002495>,  <34.580093, 38.768814, 33.050491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210785, 38.292316, 33.002495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065945, 38.316956, 32.630455>,  <34.979038, 38.331738, 32.407230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065945, 38.316956, 32.630455>,  <35.210785, 38.292316, 33.002495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065945, 38.316956, 32.630455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908417, 0.246988, -0.337306,
		0.208947, -0.967059, -0.145390,
		-0.362104, 0.061596, -0.930100,
		34.957314, 38.335434, 32.351425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276230, 37.742012, 32.541607>,  <35.210785, 38.292316, 33.002495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276230, 37.742012, 32.541607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008625, 37.488274, 32.696541>,  <34.848061, 37.336029, 32.789501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008625, 37.488274, 32.696541>,  <35.276230, 37.742012, 32.541607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008625, 37.488274, 32.696541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343434, -0.726000, -0.595799,
		0.659145, -0.265576, 0.703560,
		-0.669015, -0.634345, 0.387331,
		34.807922, 37.297970, 32.812740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582554, 37.101734, 32.738964>,  <35.276230, 37.742012, 32.541607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582554, 37.101734, 32.738964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200832, 37.026657, 32.645939>,  <34.971802, 36.981613, 32.590122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200832, 37.026657, 32.645939>,  <35.582554, 37.101734, 32.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200832, 37.026657, 32.645939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288126, -0.784445, -0.549208,
		-0.079352, -0.591116, 0.802674,
		-0.954299, -0.187690, -0.232563,
		34.914543, 36.970348, 32.576168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380844, 36.329212, 32.819901>,  <35.582554, 37.101734, 32.738964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380844, 36.329212, 32.819901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149315, 36.472370, 32.526814>,  <35.010395, 36.558266, 32.350964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149315, 36.472370, 32.526814>,  <35.380844, 36.329212, 32.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149315, 36.472370, 32.526814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161162, -0.830610, -0.533024,
		-0.799365, -0.426615, 0.423102,
		-0.578828, 0.357893, -0.732715,
		34.975666, 36.579739, 32.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793053, 36.011417, 32.645771>,  <35.380844, 36.329212, 32.819901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793053, 36.011417, 32.645771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877956, 36.143456, 32.277863>,  <34.928898, 36.222679, 32.057117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877956, 36.143456, 32.277863>,  <34.793053, 36.011417, 32.645771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877956, 36.143456, 32.277863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207248, -0.935016, -0.287738,
		-0.954985, -0.129547, -0.266874,
		0.212255, 0.330095, -0.919775,
		34.941631, 36.242485, 32.001930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278469, 35.784378, 32.044300>,  <34.793053, 36.011417, 32.645771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278469, 35.784378, 32.044300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659496, 35.835320, 31.933741>,  <34.888111, 35.865883, 31.867405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659496, 35.835320, 31.933741>,  <34.278469, 35.784378, 32.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659496, 35.835320, 31.933741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080755, -0.981446, -0.173903,
		-0.293419, 0.143333, -0.945178,
		0.952567, 0.127354, -0.276400,
		34.945267, 35.873528, 31.850821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178898, 35.367336, 32.684475>,  <34.278469, 35.784378, 32.044300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178898, 35.367336, 32.684475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999527, 35.031441, 32.561993>,  <33.891907, 34.829903, 32.488503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999527, 35.031441, 32.561993>,  <34.178898, 35.367336, 32.684475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999527, 35.031441, 32.561993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329263, -0.473681, 0.816831,
		-0.830965, 0.265463, 0.488903,
		-0.448423, -0.839736, -0.306205,
		33.865002, 34.779522, 32.470131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576271, 35.103188, 33.134892>,  <34.178898, 35.367336, 32.684475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576271, 35.103188, 33.134892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 34.827145, 32.951855>,  <33.935104, 34.661518, 32.842033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 34.827145, 32.951855>,  <33.576271, 35.103188, 33.134892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800541, 34.827145, 32.951855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230415, -0.400767, 0.886732,
		-0.795331, -0.602605, -0.065688,
		0.560675, -0.690111, -0.457592,
		33.968742, 34.620113, 32.814575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195515, 34.551228, 33.302090>,  <33.576271, 35.103188, 33.134892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195515, 34.551228, 33.302090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576939, 34.478653, 33.205929>,  <33.805794, 34.435108, 33.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576939, 34.478653, 33.205929>,  <33.195515, 34.551228, 33.302090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576939, 34.478653, 33.205929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155437, -0.387226, 0.908788,
		-0.257979, -0.903956, -0.341043,
		0.953565, -0.181437, -0.240405,
		33.863007, 34.424221, 33.133808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355091, 33.851009, 33.514660>,  <33.195515, 34.551228, 33.302090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355091, 33.851009, 33.514660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731892, 33.973839, 33.460487>,  <33.957973, 34.047535, 33.427986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731892, 33.973839, 33.460487>,  <33.355091, 33.851009, 33.514660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731892, 33.973839, 33.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288818, -0.536194, 0.793146,
		0.170939, -0.786258, -0.593784,
		0.942000, 0.307075, -0.135429,
		34.014492, 34.065960, 33.419857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681816, 33.236050, 33.641495>,  <33.355091, 33.851009, 33.514660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681816, 33.236050, 33.641495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931217, 33.546429, 33.679749>,  <34.080856, 33.732658, 33.702702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931217, 33.546429, 33.679749>,  <33.681816, 33.236050, 33.641495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931217, 33.546429, 33.679749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344726, -0.382640, 0.857176,
		0.701719, -0.501485, -0.506067,
		0.623502, 0.775951, 0.095631,
		34.118267, 33.779213, 33.708439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397175, 33.015629, 33.901073>,  <33.681816, 33.236050, 33.641495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397175, 33.015629, 33.901073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415920, 33.407841, 33.977356>,  <34.427166, 33.643166, 34.023125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415920, 33.407841, 33.977356>,  <34.397175, 33.015629, 33.901073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415920, 33.407841, 33.977356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458278, -0.190744, 0.868100,
		0.887573, 0.046719, -0.458292,
		0.046860, 0.980528, 0.190709,
		34.429977, 33.702000, 34.034569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623074, 33.076809, 34.621414>,  <34.397175, 33.015629, 33.901073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623074, 33.076809, 34.621414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618164, 33.463440, 34.518982>,  <34.615219, 33.695419, 34.457523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618164, 33.463440, 34.518982>,  <34.623074, 33.076809, 34.621414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618164, 33.463440, 34.518982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183675, 0.253925, 0.949624,
		0.982911, -0.035377, -0.180654,
		-0.012278, 0.966577, -0.256083,
		34.614479, 33.753414, 34.442158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197155, 33.324390, 34.911114>,  <34.623074, 33.076809, 34.621414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197155, 33.324390, 34.911114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944237, 33.629913, 34.859283>,  <34.792484, 33.813229, 34.828186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944237, 33.629913, 34.859283>,  <35.197155, 33.324390, 34.911114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944237, 33.629913, 34.859283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207523, 0.328124, 0.921558,
		0.746413, 0.555811, -0.365981,
		-0.632299, 0.763812, -0.129572,
		34.754547, 33.859058, 34.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637352, 33.829433, 35.032619>,  <35.197155, 33.324390, 34.911114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637352, 33.829433, 35.032619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262344, 33.962566, 35.073181>,  <35.037338, 34.042446, 35.097519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262344, 33.962566, 35.073181>,  <35.637352, 33.829433, 35.032619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262344, 33.962566, 35.073181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232237, 0.381569, 0.894690,
		0.259089, 0.862338, -0.435024,
		-0.937518, 0.332833, 0.101406,
		34.981091, 34.062416, 35.103603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630032, 34.488136, 35.263554>,  <35.637352, 33.829433, 35.032619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630032, 34.488136, 35.263554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298908, 34.316032, 35.407558>,  <35.100235, 34.212769, 35.493961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298908, 34.316032, 35.407558>,  <35.630032, 34.488136, 35.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298908, 34.316032, 35.407558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241792, 0.305440, 0.921001,
		-0.506236, 0.849459, -0.148810,
		-0.827805, -0.430263, 0.360017,
		35.050568, 34.186954, 35.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328262, 35.028206, 35.754601>,  <35.630032, 34.488136, 35.263554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328262, 35.028206, 35.754601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215992, 34.653141, 35.836578>,  <35.148628, 34.428101, 35.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215992, 34.653141, 35.836578>,  <35.328262, 35.028206, 35.754601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215992, 34.653141, 35.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447971, 0.060868, 0.891974,
		-0.848848, 0.342167, 0.402962,
		-0.280676, -0.937666, 0.204948,
		35.131790, 34.371841, 35.898064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248249, 35.014347, 36.401604>,  <35.328262, 35.028206, 35.754601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248249, 35.014347, 36.401604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323471, 34.634411, 36.301647>,  <35.368603, 34.406448, 36.241673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323471, 34.634411, 36.301647>,  <35.248249, 35.014347, 36.401604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323471, 34.634411, 36.301647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642416, -0.073501, 0.762823,
		-0.742924, -0.303988, 0.596368,
		0.188055, -0.949836, -0.249892,
		35.379887, 34.349461, 36.226681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287670, 34.622757, 36.987926>,  <35.248249, 35.014347, 36.401604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287670, 34.622757, 36.987926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515923, 34.463314, 36.700733>,  <35.652874, 34.367649, 36.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515923, 34.463314, 36.700733>,  <35.287670, 34.622757, 36.987926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515923, 34.463314, 36.700733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751830, -0.098130, 0.652014,
		-0.330353, -0.911857, 0.243689,
		0.570630, -0.398607, -0.717979,
		35.687111, 34.343731, 36.485340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648586, 33.978821, 37.118912>,  <35.287670, 34.622757, 36.987926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648586, 33.978821, 37.118912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918289, 34.147057, 36.876099>,  <36.080109, 34.247997, 36.730412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918289, 34.147057, 36.876099>,  <35.648586, 33.978821, 37.118912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918289, 34.147057, 36.876099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686397, -0.053638, 0.725246,
		0.272469, -0.905665, -0.324855,
		0.674255, 0.420587, -0.607031,
		36.120567, 34.273232, 36.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339436, 33.684425, 37.206329>,  <35.648586, 33.978821, 37.118912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339436, 33.684425, 37.206329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524380, 33.938137, 36.958485>,  <36.635345, 34.090363, 36.809780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524380, 33.938137, 36.958485>,  <36.339436, 33.684425, 37.206329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524380, 33.938137, 36.958485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875205, -0.214347, 0.433673,
		0.142257, -0.742798, -0.654228,
		0.462363, 0.634276, -0.619608,
		36.663090, 34.128422, 36.772602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750504, 33.365509, 36.802872>,  <36.339436, 33.684425, 37.206329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750504, 33.365509, 36.802872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867855, 33.736519, 36.895500>,  <36.938267, 33.959126, 36.951077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867855, 33.736519, 36.895500>,  <36.750504, 33.365509, 36.802872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867855, 33.736519, 36.895500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788464, -0.371736, 0.490037,
		0.540605, 0.038817, -0.840381,
		0.293378, 0.927527, 0.231568,
		36.955868, 34.014778, 36.964970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316475, 33.879662, 36.536938>,  <36.750504, 33.365509, 36.802872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316475, 33.879662, 36.536938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495270, 33.623493, 36.786758>,  <37.602547, 33.469791, 36.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495270, 33.623493, 36.786758>,  <37.316475, 33.879662, 36.536938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495270, 33.623493, 36.786758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212419, -0.602219, -0.769552,
		0.868953, 0.476648, -0.133148,
		0.446990, -0.640421, 0.624548,
		37.629368, 33.431366, 36.974121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110870, 33.673492, 36.398319>,  <37.316475, 33.879662, 36.536938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110870, 33.673492, 36.398319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885010, 33.378887, 36.547298>,  <37.749493, 33.202122, 36.636684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885010, 33.378887, 36.547298>,  <38.110870, 33.673492, 36.398319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885010, 33.378887, 36.547298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098821, -0.508353, -0.855460,
		0.819393, -0.446230, 0.359825,
		-0.564650, -0.736516, 0.372444,
		37.715614, 33.157932, 36.659031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334496, 33.200569, 35.959896>,  <38.110870, 33.673492, 36.398319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334496, 33.200569, 35.959896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991737, 33.026291, 36.070091>,  <37.786083, 32.921722, 36.136208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991737, 33.026291, 36.070091>,  <38.334496, 33.200569, 35.959896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991737, 33.026291, 36.070091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123781, -0.692698, -0.710527,
		0.500401, -0.574751, 0.647504,
		-0.856900, -0.435696, 0.275484,
		37.734669, 32.895580, 36.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406540, 32.525276, 36.065353>,  <38.334496, 33.200569, 35.959896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406540, 32.525276, 36.065353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027668, 32.589600, 35.954365>,  <37.800346, 32.628193, 35.887772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027668, 32.589600, 35.954365>,  <38.406540, 32.525276, 36.065353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027668, 32.589600, 35.954365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091738, -0.693195, -0.714888,
		-0.307300, -0.702582, 0.641829,
		-0.947180, 0.160805, -0.277473,
		37.743515, 32.637840, 35.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214195, 32.495239, 36.800507>,  <38.406540, 32.525276, 36.065353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214195, 32.495239, 36.800507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405354, 32.206310, 36.600563>,  <38.520050, 32.032951, 36.480598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405354, 32.206310, 36.600563>,  <38.214195, 32.495239, 36.800507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405354, 32.206310, 36.600563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683672, -0.051439, 0.727974,
		-0.551547, -0.689637, 0.469251,
		0.477900, -0.722325, -0.499857,
		38.548725, 31.989613, 36.450607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439865, 31.745302, 37.142052>,  <38.214195, 32.495239, 36.800507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439865, 31.745302, 37.142052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698093, 31.806803, 36.842827>,  <38.853031, 31.843704, 36.663292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698093, 31.806803, 36.842827>,  <38.439865, 31.745302, 37.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698093, 31.806803, 36.842827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750227, -0.310854, 0.583549,
		-0.142815, -0.937939, -0.316028,
		0.645572, 0.153753, -0.748062,
		38.891766, 31.852928, 36.618408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952381, 31.288273, 37.115604>,  <38.439865, 31.745302, 37.142052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952381, 31.288273, 37.115604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120743, 31.532743, 36.847485>,  <39.221760, 31.679426, 36.686611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120743, 31.532743, 36.847485>,  <38.952381, 31.288273, 37.115604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120743, 31.532743, 36.847485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899546, -0.186012, 0.395244,
		0.116881, -0.769325, -0.628076,
		0.420900, 0.611179, -0.670301,
		39.247013, 31.716097, 36.646393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568081, 31.039671, 36.728134>,  <38.952381, 31.288273, 37.115604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568081, 31.039671, 36.728134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614708, 31.436880, 36.735291>,  <39.642685, 31.675205, 36.739586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614708, 31.436880, 36.735291>,  <39.568081, 31.039671, 36.728134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614708, 31.436880, 36.735291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895851, -0.112902, 0.429773,
		0.428794, -0.034070, -0.902760,
		0.116565, 0.993022, 0.017890,
		39.649677, 31.734787, 36.740658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191414, 31.584040, 36.840687>,  <39.568081, 31.039671, 36.728134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191414, 31.584040, 36.840687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002033, 31.705439, 36.509937>,  <39.888405, 31.778278, 36.311485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002033, 31.705439, 36.509937>,  <40.191414, 31.584040, 36.840687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002033, 31.705439, 36.509937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426279, 0.900454, 0.086424,
		0.770795, -0.311563, -0.555701,
		-0.473456, 0.303499, -0.826878,
		39.859997, 31.796488, 36.261875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559727, 32.134304, 36.461102>,  <40.191414, 31.584040, 36.840687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559727, 32.134304, 36.461102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184067, 32.212948, 36.348434>,  <39.958672, 32.260132, 36.280834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184067, 32.212948, 36.348434>,  <40.559727, 32.134304, 36.461102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184067, 32.212948, 36.348434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204696, 0.978825, 0.000713,
		0.275841, -0.056986, -0.959513,
		-0.939154, 0.196605, -0.281665,
		39.902321, 32.271931, 36.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511295, 32.811890, 36.073879>,  <40.559727, 32.134304, 36.461102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511295, 32.811890, 36.073879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136803, 32.764606, 36.206242>,  <39.912106, 32.736237, 36.285660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136803, 32.764606, 36.206242>,  <40.511295, 32.811890, 36.073879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136803, 32.764606, 36.206242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157477, 0.983000, -0.094399,
		-0.314120, -0.140489, -0.938931,
		-0.936232, -0.118207, 0.330904,
		39.855934, 32.729145, 36.305511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089085, 32.789272, 35.576477>,  <40.511295, 32.811890, 36.073879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089085, 32.789272, 35.576477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144993, 33.128494, 35.372025>,  <41.178539, 33.332027, 35.249352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144993, 33.128494, 35.372025>,  <41.089085, 32.789272, 35.576477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144993, 33.128494, 35.372025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022498, 0.518789, 0.854606,
		0.989928, -0.107949, 0.091591,
		0.139770, 0.848059, -0.511135,
		41.186924, 33.382912, 35.218685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781105, 33.185932, 35.881409>,  <41.089085, 32.789272, 35.576477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781105, 33.185932, 35.881409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492050, 33.412952, 35.723583>,  <41.318615, 33.549164, 35.628887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492050, 33.412952, 35.723583>,  <41.781105, 33.185932, 35.881409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492050, 33.412952, 35.723583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006332, 0.576230, 0.817263,
		0.691194, 0.588090, -0.420001,
		-0.722642, 0.567547, -0.394563,
		41.275257, 33.583218, 35.605213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975376, 33.947090, 35.811470>,  <41.781105, 33.185932, 35.881409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975376, 33.947090, 35.811470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578808, 33.920433, 35.856445>,  <41.340866, 33.904438, 35.883430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578808, 33.920433, 35.856445>,  <41.975376, 33.947090, 35.811470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578808, 33.920433, 35.856445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079841, 0.372324, 0.924662,
		-0.103490, 0.925707, -0.363808,
		-0.991421, -0.066647, 0.112441,
		41.281380, 33.900440, 35.890179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769684, 34.544762, 36.097050>,  <41.975376, 33.947090, 35.811470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769684, 34.544762, 36.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503685, 34.267303, 36.207787>,  <41.344086, 34.100830, 36.274227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503685, 34.267303, 36.207787>,  <41.769684, 34.544762, 36.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503685, 34.267303, 36.207787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120614, 0.266071, 0.956378,
		-0.737046, 0.669375, -0.093272,
		-0.664993, -0.693645, 0.276843,
		41.304188, 34.059212, 36.290840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386406, 34.948933, 36.049259>,  <41.769684, 34.544762, 36.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386406, 34.948933, 36.049259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240479, 34.670708, 36.296841>,  <42.152924, 34.503773, 36.445389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240479, 34.670708, 36.296841>,  <42.386406, 34.948933, 36.049259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240479, 34.670708, 36.296841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916810, -0.384294, 0.108521,
		0.162377, 0.607053, 0.777895,
		-0.364818, -0.695561, 0.618953,
		42.131035, 34.462040, 36.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075005, 35.516243, 35.646309>,  <42.386406, 34.948933, 36.049259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075005, 35.516243, 35.646309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367916, 35.770054, 35.547398>,  <42.543663, 35.922340, 35.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367916, 35.770054, 35.547398>,  <42.075005, 35.516243, 35.646309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367916, 35.770054, 35.547398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282571, 0.613479, 0.737426,
		0.619614, -0.470128, 0.628536,
		0.732279, 0.634526, -0.247276,
		42.587601, 35.960411, 35.473213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362923, 35.884014, 36.303150>,  <42.075005, 35.516243, 35.646309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362923, 35.884014, 36.303150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476849, 36.134937, 36.013222>,  <42.545204, 36.285492, 35.839264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476849, 36.134937, 36.013222>,  <42.362923, 35.884014, 36.303150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476849, 36.134937, 36.013222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270261, 0.778015, 0.567144,
		0.919695, 0.034361, 0.391126,
		0.284814, 0.627306, -0.724823,
		42.562294, 36.323128, 35.795776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481575, 36.443035, 36.710838>,  <42.362923, 35.884014, 36.303150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481575, 36.443035, 36.710838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490292, 36.592339, 36.339851>,  <42.495522, 36.681923, 36.117260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490292, 36.592339, 36.339851>,  <42.481575, 36.443035, 36.710838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490292, 36.592339, 36.339851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036912, 0.927359, 0.372348,
		0.999081, 0.026121, 0.033986,
		0.021791, 0.373260, -0.927471,
		42.496830, 36.704315, 36.061611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030666, 36.965763, 36.593651>,  <42.481575, 36.443035, 36.710838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030666, 36.965763, 36.593651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723587, 37.042149, 36.348972>,  <42.539341, 37.087982, 36.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723587, 37.042149, 36.348972>,  <43.030666, 36.965763, 36.593651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723587, 37.042149, 36.348972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059744, 0.971736, 0.228386,
		0.638024, 0.138785, -0.757407,
		-0.767696, 0.190966, -0.611699,
		42.493279, 37.099438, 36.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280930, 37.383194, 36.138348>,  <43.030666, 36.965763, 36.593651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280930, 37.383194, 36.138348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886486, 37.432323, 36.183083>,  <42.649822, 37.461803, 36.209923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886486, 37.432323, 36.183083>,  <43.280930, 37.383194, 36.138348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886486, 37.432323, 36.183083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135959, 0.983597, 0.118542,
		-0.095440, 0.132100, -0.986631,
		-0.986107, 0.122828, 0.111835,
		42.590652, 37.469173, 36.216633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896263, 37.639797, 35.529350>,  <43.280930, 37.383194, 36.138348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896263, 37.639797, 35.529350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832066, 37.520741, 35.152912>,  <42.793549, 37.449306, 34.927052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832066, 37.520741, 35.152912>,  <42.896263, 37.639797, 35.529350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832066, 37.520741, 35.152912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969486, -0.226541, -0.093684,
		-0.185311, -0.927410, 0.324916,
		-0.160490, -0.297641, -0.941091,
		42.783920, 37.431450, 34.870586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073441, 36.971390, 35.433159>,  <42.896263, 37.639797, 35.529350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073441, 36.971390, 35.433159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127819, 37.136959, 35.073116>,  <43.160446, 37.236301, 34.857090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127819, 37.136959, 35.073116>,  <43.073441, 36.971390, 35.433159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127819, 37.136959, 35.073116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899578, -0.432209, -0.062889,
		-0.415064, -0.801163, -0.431114,
		0.135947, 0.413924, -0.900103,
		43.168602, 37.261135, 34.803085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448257, 36.496918, 35.030987>,  <43.073441, 36.971390, 35.433159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448257, 36.496918, 35.030987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549728, 36.869247, 34.925755>,  <43.610611, 37.092644, 34.862614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549728, 36.869247, 34.925755>,  <43.448257, 36.496918, 35.030987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549728, 36.869247, 34.925755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916813, -0.318085, -0.241406,
		-0.308390, -0.179961, -0.934082,
		0.253674, 0.930825, -0.263085,
		43.625832, 37.148495, 34.846828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074772, 36.568363, 34.637596>,  <43.448257, 36.496918, 35.030987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074772, 36.568363, 34.637596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099751, 36.949757, 34.755558>,  <44.114738, 37.178593, 34.826336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099751, 36.949757, 34.755558>,  <44.074772, 36.568363, 34.637596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099751, 36.949757, 34.755558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970869, 0.010458, -0.239382,
		-0.231331, 0.301261, -0.925056,
		0.062442, 0.953484, 0.294905,
		44.118484, 37.235802, 34.844028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241512, 37.070477, 34.033649>,  <44.074772, 36.568363, 34.637596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241512, 37.070477, 34.033649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340328, 37.228119, 34.387745>,  <44.399620, 37.322704, 34.600201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340328, 37.228119, 34.387745>,  <44.241512, 37.070477, 34.033649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340328, 37.228119, 34.387745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881972, 0.286948, -0.373880,
		-0.401367, 0.873121, -0.276703,
		0.247043, 0.394108, 0.885239,
		44.414440, 37.346352, 34.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748131, 37.659687, 33.954556>,  <44.241512, 37.070477, 34.033649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748131, 37.659687, 33.954556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821140, 37.505577, 34.316383>,  <44.864944, 37.413109, 34.533482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821140, 37.505577, 34.316383>,  <44.748131, 37.659687, 33.954556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821140, 37.505577, 34.316383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967280, 0.235264, -0.094974,
		-0.176221, 0.892307, 0.415613,
		0.182525, -0.385278, 0.904569,
		44.875896, 37.389992, 34.587753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258358, 38.069378, 34.442459>,  <44.748131, 37.659687, 33.954556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258358, 38.069378, 34.442459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264797, 37.690441, 34.570389>,  <45.268661, 37.463078, 34.647144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264797, 37.690441, 34.570389>,  <45.258358, 38.069378, 34.442459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264797, 37.690441, 34.570389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983764, 0.072184, 0.164312,
		-0.178745, 0.311984, 0.933122,
		0.016094, -0.947341, 0.319821,
		45.269627, 37.406239, 34.666336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696949, 38.095547, 34.999931>,  <45.258358, 38.069378, 34.442459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696949, 38.095547, 34.999931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674286, 37.713779, 34.882717>,  <45.660690, 37.484718, 34.812389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674286, 37.713779, 34.882717>,  <45.696949, 38.095547, 34.999931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674286, 37.713779, 34.882717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993739, -0.082218, 0.075654,
		-0.096298, -0.286912, 0.953104,
		-0.056656, -0.954422, -0.293033,
		45.657288, 37.427452, 34.794807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234650, 37.656227, 35.350426>,  <45.696949, 38.095547, 34.999931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234650, 37.656227, 35.350426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211781, 37.448948, 35.009087>,  <46.198059, 37.324581, 34.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211781, 37.448948, 35.009087>,  <46.234650, 37.656227, 35.350426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211781, 37.448948, 35.009087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958821, -0.266679, 0.097697,
		-0.278196, -0.812622, 0.512106,
		-0.057177, -0.518196, -0.853348,
		46.194626, 37.293488, 34.753082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296436, 36.968689, 35.490429>,  <46.234650, 37.656227, 35.350426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296436, 36.968689, 35.490429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430370, 37.088238, 35.132980>,  <46.510731, 37.159966, 34.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430370, 37.088238, 35.132980>,  <46.296436, 36.968689, 35.490429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430370, 37.088238, 35.132980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905249, -0.365273, 0.217026,
		-0.261555, -0.881620, -0.392856,
		0.334834, 0.298868, -0.893624,
		46.530819, 37.177898, 34.864895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564278, 36.375149, 35.188900>,  <46.296436, 36.968689, 35.490429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564278, 36.375149, 35.188900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768101, 36.687664, 35.044708>,  <46.890396, 36.875172, 34.958195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768101, 36.687664, 35.044708>,  <46.564278, 36.375149, 35.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768101, 36.687664, 35.044708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845880, -0.378131, 0.376171,
		0.157589, -0.496601, -0.853553,
		0.509562, 0.781283, -0.360475,
		46.920971, 36.922050, 34.936565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038418, 36.175842, 34.620975>,  <46.564278, 36.375149, 35.188900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038418, 36.175842, 34.620975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161884, 36.474545, 34.856628>,  <47.235966, 36.653767, 34.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161884, 36.474545, 34.856628>,  <47.038418, 36.175842, 34.620975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161884, 36.474545, 34.856628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804692, -0.535253, 0.256856,
		0.507144, 0.394787, -0.766126,
		0.308668, 0.746758, 0.589132,
		47.254486, 36.698570, 35.033367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795273, 36.249855, 34.456272>,  <47.038418, 36.175842, 34.620975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795273, 36.249855, 34.456272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700985, 36.414394, 34.808460>,  <47.644413, 36.513119, 35.019772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700985, 36.414394, 34.808460>,  <47.795273, 36.249855, 34.456272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700985, 36.414394, 34.808460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835731, -0.376581, 0.399675,
		0.495976, 0.830046, -0.255014,
		-0.235715, 0.411352, 0.880470,
		47.630272, 36.537800, 35.072601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393616, 35.850758, 34.074833>,  <47.795273, 36.249855, 34.456272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393616, 35.850758, 34.074833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603764, 35.663284, 33.790771>,  <47.729855, 35.550800, 33.620335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603764, 35.663284, 33.790771>,  <47.393616, 35.850758, 34.074833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603764, 35.663284, 33.790771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301055, -0.678244, 0.670337,
		-0.795834, -0.565972, -0.215231,
		0.525371, -0.468680, -0.710158,
		47.761375, 35.522682, 33.577724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438976, 35.159100, 34.349396>,  <47.393616, 35.850758, 34.074833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438976, 35.159100, 34.349396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682449, 35.138985, 34.032669>,  <47.828533, 35.126915, 33.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682449, 35.138985, 34.032669>,  <47.438976, 35.159100, 34.349396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682449, 35.138985, 34.032669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339160, -0.885722, 0.316966,
		-0.717266, -0.461485, -0.522074,
		0.608687, -0.050283, -0.791816,
		47.865055, 35.123901, 33.795124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290291, 35.258034, 35.142300>,  <47.438976, 35.159100, 34.349396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290291, 35.258034, 35.142300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687813, 35.290237, 35.111645>,  <47.926327, 35.309559, 35.093250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687813, 35.290237, 35.111645>,  <47.290291, 35.258034, 35.142300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.687813, 35.290237, 35.111645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104841, 0.449916, -0.886895,
		-0.036926, 0.889434, 0.455569,
		0.993803, 0.080511, -0.076636,
		47.985954, 35.314392, 35.088654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.487656, 36.221397, 20.977974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290321, 35.875702, 21.017387>,  <34.171921, 35.668285, 21.041035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.290321, 35.875702, 21.017387>,  <34.487656, 36.221397, 20.977974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290321, 35.875702, 21.017387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059147, 0.079684, 0.995064,
		-0.867824, 0.496731, 0.011806,
		-0.493339, -0.864239, 0.098532,
		34.142319, 35.616432, 21.046947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924175, 36.173649, 21.524799>,  <34.487656, 36.221397, 20.977974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924175, 36.173649, 21.524799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988232, 35.781681, 21.477287>,  <34.026665, 35.546501, 21.448780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988232, 35.781681, 21.477287>,  <33.924175, 36.173649, 21.524799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988232, 35.781681, 21.477287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042974, -0.113296, 0.992631,
		-0.986158, -0.164065, 0.023968,
		0.160141, -0.979922, -0.118779,
		34.036274, 35.487705, 21.441654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405540, 35.743069, 21.934366>,  <33.924175, 36.173649, 21.524799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405540, 35.743069, 21.934366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.730148, 35.514458, 21.885710>,  <33.924911, 35.377289, 21.856516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.730148, 35.514458, 21.885710>,  <33.405540, 35.743069, 21.934366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730148, 35.514458, 21.885710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058357, -0.127859, 0.990074,
		-0.581410, -0.810559, -0.070406,
		0.811515, -0.571530, -0.121640,
		33.973602, 35.342999, 21.849218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186672, 35.180336, 22.560587>,  <33.405540, 35.743069, 21.934366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186672, 35.180336, 22.560587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569916, 35.150799, 22.449898>,  <33.799862, 35.133076, 22.383484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569916, 35.150799, 22.449898>,  <33.186672, 35.180336, 22.560587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569916, 35.150799, 22.449898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223554, -0.411150, 0.883730,
		-0.179027, -0.908572, -0.377420,
		0.958109, -0.073838, -0.276722,
		33.857349, 35.128647, 22.366880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369823, 34.706627, 23.010220>,  <33.186672, 35.180336, 22.560587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369823, 34.706627, 23.010220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735481, 34.813175, 22.887983>,  <33.954876, 34.877102, 22.814642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735481, 34.813175, 22.887983>,  <33.369823, 34.706627, 23.010220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735481, 34.813175, 22.887983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357614, -0.174866, 0.917352,
		0.190915, -0.947877, -0.255110,
		0.914146, 0.266367, -0.305590,
		34.009724, 34.893085, 22.796307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846546, 34.217258, 23.155186>,  <33.369823, 34.706627, 23.010220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846546, 34.217258, 23.155186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 34.569714, 23.144934>,  <34.148727, 34.781189, 23.138783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 34.569714, 23.144934>,  <33.846546, 34.217258, 23.155186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035408, 34.569714, 23.144934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174178, -0.064753, 0.982583,
		0.864135, -0.468397, -0.184049,
		0.472157, 0.881142, -0.025630,
		34.177055, 34.834057, 23.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402599, 34.167324, 23.596840>,  <33.846546, 34.217258, 23.155186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402599, 34.167324, 23.596840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348644, 34.563583, 23.588724>,  <34.316269, 34.801338, 23.583855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348644, 34.563583, 23.588724>,  <34.402599, 34.167324, 23.596840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348644, 34.563583, 23.588724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089641, 0.032591, 0.995441,
		0.986797, 0.132456, -0.093200,
		-0.134890, 0.990653, -0.020287,
		34.308178, 34.860779, 23.582638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894028, 34.495651, 24.127439>,  <34.402599, 34.167324, 23.596840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894028, 34.495651, 24.127439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610153, 34.769772, 24.062063>,  <34.439831, 34.934242, 24.022837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610153, 34.769772, 24.062063>,  <34.894028, 34.495651, 24.127439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610153, 34.769772, 24.062063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069441, 0.298899, 0.951755,
		0.701091, 0.664095, -0.259711,
		-0.709683, 0.685301, -0.163440,
		34.397247, 34.975361, 24.013031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997692, 35.012325, 24.673992>,  <34.894028, 34.495651, 24.127439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997692, 35.012325, 24.673992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637951, 35.116905, 24.533815>,  <34.422108, 35.179653, 24.449709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637951, 35.116905, 24.533815>,  <34.997692, 35.012325, 24.673992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637951, 35.116905, 24.533815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195618, 0.476203, 0.857301,
		0.391025, 0.839567, -0.377129,
		-0.899351, 0.261453, -0.350442,
		34.368145, 35.195339, 24.428682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025421, 35.719639, 24.587715>,  <34.997692, 35.012325, 24.673992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025421, 35.719639, 24.587715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656227, 35.583782, 24.660093>,  <34.434711, 35.502270, 24.703520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656227, 35.583782, 24.660093>,  <35.025421, 35.719639, 24.587715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656227, 35.583782, 24.660093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048017, 0.568160, 0.821516,
		-0.381826, 0.749559, -0.540712,
		-0.922986, -0.339640, 0.180946,
		34.379330, 35.481892, 24.714376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593479, 36.357578, 24.737589>,  <35.025421, 35.719639, 24.587715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593479, 36.357578, 24.737589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.466061, 36.015949, 24.902071>,  <34.389610, 35.810970, 25.000759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.466061, 36.015949, 24.902071>,  <34.593479, 36.357578, 24.737589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466061, 36.015949, 24.902071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140065, 0.471449, 0.870699,
		-0.937503, 0.219761, -0.269803,
		-0.318544, -0.854073, 0.411204,
		34.370499, 35.759727, 25.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950176, 36.550465, 25.139908>,  <34.593479, 36.357578, 24.737589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950176, 36.550465, 25.139908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120964, 36.221745, 25.290821>,  <34.223438, 36.024513, 25.381369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120964, 36.221745, 25.290821>,  <33.950176, 36.550465, 25.139908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120964, 36.221745, 25.290821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037260, 0.400885, 0.915371,
		-0.903499, -0.404892, 0.140544,
		0.426968, -0.821799, 0.377285,
		34.249054, 35.975204, 25.404007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652058, 36.436726, 25.718258>,  <33.950176, 36.550465, 25.139908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652058, 36.436726, 25.718258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965141, 36.201633, 25.800177>,  <34.152992, 36.060577, 25.849327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965141, 36.201633, 25.800177>,  <33.652058, 36.436726, 25.718258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965141, 36.201633, 25.800177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009059, 0.318256, 0.947962,
		-0.622327, -0.743830, 0.243776,
		0.782705, -0.587734, 0.204798,
		34.199951, 36.025314, 25.861616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595894, 36.111012, 26.299635>,  <33.652058, 36.436726, 25.718258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595894, 36.111012, 26.299635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993649, 36.070267, 26.288225>,  <34.232304, 36.045818, 26.281380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993649, 36.070267, 26.288225>,  <33.595894, 36.111012, 26.299635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993649, 36.070267, 26.288225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057811, 0.297475, 0.952978,
		-0.088588, -0.949280, 0.301694,
		0.994389, -0.101863, -0.028526,
		34.291965, 36.039707, 26.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748905, 35.725838, 26.963642>,  <33.595894, 36.111012, 26.299635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748905, 35.725838, 26.963642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082691, 35.898937, 26.827175>,  <34.282963, 36.002796, 26.745295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082691, 35.898937, 26.827175>,  <33.748905, 35.725838, 26.963642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082691, 35.898937, 26.827175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264041, 0.229422, 0.936829,
		0.483680, -0.871835, 0.077183,
		0.834467, 0.432746, -0.341167,
		34.333031, 36.028763, 26.724825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385651, 35.403393, 27.325350>,  <33.748905, 35.725838, 26.963642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385651, 35.403393, 27.325350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481895, 35.771248, 27.201174>,  <34.539642, 35.991962, 27.126667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481895, 35.771248, 27.201174>,  <34.385651, 35.403393, 27.325350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481895, 35.771248, 27.201174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198734, 0.266384, 0.943156,
		0.950058, -0.288630, -0.118668,
		0.240613, 0.919637, -0.310441,
		34.554081, 36.047138, 27.108042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792645, 35.517979, 27.831532>,  <34.385651, 35.403393, 27.325350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792645, 35.517979, 27.831532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786224, 35.877796, 27.656918>,  <34.782372, 36.093685, 27.552149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786224, 35.877796, 27.656918>,  <34.792645, 35.517979, 27.831532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786224, 35.877796, 27.656918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353430, 0.413511, 0.839104,
		0.935323, -0.140815, -0.324564,
		-0.016052, 0.899544, -0.436535,
		34.781410, 36.147659, 27.525957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390537, 35.904434, 28.074661>,  <34.792645, 35.517979, 27.831532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390537, 35.904434, 28.074661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109634, 36.165485, 27.960886>,  <34.941093, 36.322117, 27.892620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109634, 36.165485, 27.960886>,  <35.390537, 35.904434, 28.074661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109634, 36.165485, 27.960886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117871, 0.500613, 0.857609,
		0.702095, 0.568737, -0.428487,
		-0.702260, 0.652629, -0.284440,
		34.898956, 36.361275, 27.875553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575645, 36.504444, 28.427156>,  <35.390537, 35.904434, 28.074661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575645, 36.504444, 28.427156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204304, 36.592842, 28.307615>,  <34.981499, 36.645882, 28.235891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204304, 36.592842, 28.307615>,  <35.575645, 36.504444, 28.427156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204304, 36.592842, 28.307615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064122, 0.696763, 0.714430,
		0.366112, 0.682410, -0.632676,
		-0.928359, 0.220993, -0.298851,
		34.925797, 36.659142, 28.217960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539246, 37.255291, 28.290991>,  <35.575645, 36.504444, 28.427156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539246, 37.255291, 28.290991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156940, 37.160503, 28.360682>,  <34.927555, 37.103630, 28.402496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156940, 37.160503, 28.360682>,  <35.539246, 37.255291, 28.290991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156940, 37.160503, 28.360682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076691, 0.772643, 0.630192,
		-0.283956, 0.588954, -0.756639,
		-0.955765, -0.236974, 0.174229,
		34.870213, 37.089413, 28.412951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244904, 37.936966, 28.363379>,  <35.539246, 37.255291, 28.290991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244904, 37.936966, 28.363379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991085, 37.685085, 28.542633>,  <34.838795, 37.533958, 28.650187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991085, 37.685085, 28.542633>,  <35.244904, 37.936966, 28.363379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991085, 37.685085, 28.542633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027039, 0.561384, 0.827113,
		-0.772410, 0.536960, -0.339199,
		-0.634548, -0.629699, 0.448138,
		34.800720, 37.496174, 28.677074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575909, 38.299057, 28.656429>,  <35.244904, 37.936966, 28.363379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575909, 38.299057, 28.656429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634769, 37.965458, 28.869144>,  <34.670086, 37.765301, 28.996775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.634769, 37.965458, 28.869144>,  <34.575909, 38.299057, 28.656429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634769, 37.965458, 28.869144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076790, 0.545652, 0.834486,
		-0.986128, -0.081962, 0.144337,
		0.147154, -0.833994, 0.531789,
		34.678917, 37.715260, 29.028681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058384, 38.554104, 29.187998>,  <34.575909, 38.299057, 28.656429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058384, 38.554104, 29.187998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110683, 38.930199, 29.062233>,  <34.142063, 39.155857, 28.986774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110683, 38.930199, 29.062233>,  <34.058384, 38.554104, 29.187998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110683, 38.930199, 29.062233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106160, -0.302032, -0.947368,
		-0.985715, 0.157248, 0.060324,
		0.130752, 0.940239, -0.314411,
		34.149910, 39.212269, 28.967909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681717, 38.608105, 28.476030>,  <34.058384, 38.554104, 29.187998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681717, 38.608105, 28.476030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984425, 38.867218, 28.511072>,  <34.166050, 39.022686, 28.532097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984425, 38.867218, 28.511072>,  <33.681717, 38.608105, 28.476030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984425, 38.867218, 28.511072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204456, -0.107274, -0.972980,
		-0.620879, 0.754237, -0.213624,
		0.756774, 0.647780, 0.087604,
		34.211456, 39.061550, 28.537354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598118, 39.070801, 27.959072>,  <33.681717, 38.608105, 28.476030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598118, 39.070801, 27.959072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980961, 39.134918, 28.055609>,  <34.210667, 39.173389, 28.113531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980961, 39.134918, 28.055609>,  <33.598118, 39.070801, 27.959072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980961, 39.134918, 28.055609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243993, 0.003219, -0.969772,
		-0.156227, 0.987064, -0.036030,
		0.957110, 0.160295, 0.241340,
		34.268093, 39.183006, 28.128010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811928, 39.594177, 27.531025>,  <33.598118, 39.070801, 27.959072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811928, 39.594177, 27.531025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156357, 39.425285, 27.644363>,  <34.363014, 39.323952, 27.712366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156357, 39.425285, 27.644363>,  <33.811928, 39.594177, 27.531025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156357, 39.425285, 27.644363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309610, -0.006685, -0.950840,
		0.403363, 0.906466, 0.124969,
		0.861069, -0.422225, 0.283348,
		34.414677, 39.298618, 27.729368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359810, 40.021790, 27.422920>,  <33.811928, 39.594177, 27.531025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359810, 40.021790, 27.422920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549862, 39.670120, 27.408459>,  <34.663895, 39.459118, 27.399782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.549862, 39.670120, 27.408459>,  <34.359810, 40.021790, 27.422920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549862, 39.670120, 27.408459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276242, 0.188049, -0.942511,
		0.835427, 0.437832, 0.332213,
		0.475134, -0.879170, -0.036154,
		34.692402, 39.406368, 27.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912132, 40.126343, 26.928925>,  <34.359810, 40.021790, 27.422920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912132, 40.126343, 26.928925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841759, 39.732914, 26.945122>,  <34.799534, 39.496857, 26.954840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841759, 39.732914, 26.945122>,  <34.912132, 40.126343, 26.928925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841759, 39.732914, 26.945122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122185, -0.062635, -0.990529,
		0.976789, -0.169323, 0.131197,
		-0.175937, -0.983568, 0.040493,
		34.788979, 39.437843, 26.957270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340019, 39.907043, 26.495878>,  <34.912132, 40.126343, 26.928925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340019, 39.907043, 26.495878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078121, 39.606777, 26.531227>,  <34.920982, 39.426617, 26.552437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078121, 39.606777, 26.531227>,  <35.340019, 39.907043, 26.495878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078121, 39.606777, 26.531227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153379, -0.246436, -0.956945,
		0.740124, -0.613001, 0.276490,
		-0.654745, -0.750666, 0.088372,
		34.881699, 39.381577, 26.557739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620052, 39.377033, 26.070442>,  <35.340019, 39.907043, 26.495878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620052, 39.377033, 26.070442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244629, 39.258339, 26.140934>,  <35.019375, 39.187122, 26.183229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244629, 39.258339, 26.140934>,  <35.620052, 39.377033, 26.070442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244629, 39.258339, 26.140934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117520, -0.205335, -0.971610,
		0.324494, -0.932624, 0.157848,
		-0.938559, -0.296731, 0.176232,
		34.963062, 39.169319, 26.193804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526775, 38.711548, 25.762451>,  <35.620052, 39.377033, 26.070442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526775, 38.711548, 25.762451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146355, 38.833908, 25.779984>,  <34.918102, 38.907326, 25.790503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146355, 38.833908, 25.779984>,  <35.526775, 38.711548, 25.762451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146355, 38.833908, 25.779984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141982, -0.306560, -0.941203,
		-0.274472, -0.901360, 0.334987,
		-0.951055, 0.305895, 0.043835,
		34.861038, 38.925678, 25.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076672, 38.200924, 25.384239>,  <35.526775, 38.711548, 25.762451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076672, 38.200924, 25.384239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862068, 38.538467, 25.387550>,  <34.733307, 38.740993, 25.389538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862068, 38.538467, 25.387550>,  <35.076672, 38.200924, 25.384239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862068, 38.538467, 25.387550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077792, -0.039685, -0.996179,
		-0.840304, -0.535099, 0.086936,
		-0.536505, 0.843857, 0.008279,
		34.701118, 38.791626, 25.390034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475224, 38.032745, 24.962835>,  <35.076672, 38.200924, 25.384239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475224, 38.032745, 24.962835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481712, 38.432037, 24.985695>,  <34.485607, 38.671612, 24.999411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481712, 38.432037, 24.985695>,  <34.475224, 38.032745, 24.962835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481712, 38.432037, 24.985695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221734, 0.059325, -0.973301,
		-0.974972, 0.003121, 0.222305,
		0.016226, 0.998234, 0.057148,
		34.486580, 38.731506, 25.002840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803905, 38.226593, 24.722849>,  <34.475224, 38.032745, 24.962835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803905, 38.226593, 24.722849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089100, 38.502117, 24.670391>,  <34.260216, 38.667431, 24.638916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089100, 38.502117, 24.670391>,  <33.803905, 38.226593, 24.722849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089100, 38.502117, 24.670391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317540, 0.150433, -0.936236,
		-0.625158, 0.709165, 0.325980,
		0.712983, 0.688807, -0.131144,
		34.302994, 38.708759, 24.631048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454277, 38.728966, 24.344618>,  <33.803905, 38.226593, 24.722849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454277, 38.728966, 24.344618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838787, 38.833916, 24.310898>,  <34.069492, 38.896885, 24.290667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838787, 38.833916, 24.310898>,  <33.454277, 38.728966, 24.344618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838787, 38.833916, 24.310898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117142, 0.112134, -0.986764,
		-0.249452, 0.958428, 0.138527,
		0.961276, 0.262378, -0.084300,
		34.127171, 38.912628, 24.285608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499870, 39.253139, 23.814066>,  <33.454277, 38.728966, 24.344618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499870, 39.253139, 23.814066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873558, 39.111462, 23.830894>,  <34.097771, 39.026455, 23.840992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.873558, 39.111462, 23.830894>,  <33.499870, 39.253139, 23.814066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873558, 39.111462, 23.830894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038528, -0.017056, -0.999112,
		0.354601, 0.935015, -0.002288,
		0.934224, -0.354198, 0.042072,
		34.153824, 39.005203, 23.843515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922832, 39.643833, 23.358662>,  <33.499870, 39.253139, 23.814066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922832, 39.643833, 23.358662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096188, 39.285816, 23.400764>,  <34.200199, 39.071007, 23.426025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.096188, 39.285816, 23.400764>,  <33.922832, 39.643833, 23.358662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096188, 39.285816, 23.400764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011958, -0.122494, -0.992397,
		0.901129, 0.428833, -0.063790,
		0.433386, -0.895041, 0.105255,
		34.226204, 39.017303, 23.432341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340340, 39.697037, 22.824064>,  <33.922832, 39.643833, 23.358662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340340, 39.697037, 22.824064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354843, 39.305832, 22.906214>,  <34.363544, 39.071110, 22.955503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354843, 39.305832, 22.906214>,  <34.340340, 39.697037, 22.824064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354843, 39.305832, 22.906214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015975, -0.204916, -0.978649,
		0.999215, 0.038770, 0.008192,
		0.036264, -0.978011, 0.205375,
		34.365723, 39.012428, 22.967827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833332, 39.471375, 22.352406>,  <34.340340, 39.697037, 22.824064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833332, 39.471375, 22.352406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627861, 39.142441, 22.450304>,  <34.504578, 38.945080, 22.509043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627861, 39.142441, 22.450304>,  <34.833332, 39.471375, 22.352406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627861, 39.142441, 22.450304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085921, -0.234521, -0.968306,
		0.853671, -0.518424, 0.049811,
		-0.513676, -0.822336, 0.244747,
		34.473759, 38.895741, 22.523727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050381, 39.023392, 21.887802>,  <34.833332, 39.471375, 22.352406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050381, 39.023392, 21.887802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719517, 38.837837, 22.014683>,  <34.521000, 38.726505, 22.090811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719517, 38.837837, 22.014683>,  <35.050381, 39.023392, 21.887802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719517, 38.837837, 22.014683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230214, -0.235202, -0.944289,
		0.512649, -0.854102, 0.087756,
		-0.827159, -0.463886, 0.317203,
		34.471371, 38.698669, 22.109844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.002354, 38.160172, 21.760635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615685, 38.258617, 21.788828>,  <34.383682, 38.317684, 21.805744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615685, 38.258617, 21.788828>,  <35.002354, 38.160172, 21.760635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615685, 38.258617, 21.788828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179589, -0.455705, -0.871826,
		-0.182453, -0.855429, 0.484718,
		-0.966674, 0.246118, 0.070481,
		34.325684, 38.332451, 21.809973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655975, 37.520466, 21.533171>,  <35.002354, 38.160172, 21.760635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655975, 37.520466, 21.533171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416615, 37.839947, 21.507915>,  <34.272999, 38.031635, 21.492762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416615, 37.839947, 21.507915>,  <34.655975, 37.520466, 21.533171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416615, 37.839947, 21.507915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453971, -0.402941, -0.794700,
		-0.660173, -0.446884, 0.603710,
		-0.598399, 0.798707, -0.063138,
		34.237095, 38.079559, 21.488974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011974, 37.201000, 21.310911>,  <34.655975, 37.520466, 21.533171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011974, 37.201000, 21.310911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987091, 37.592461, 21.232550>,  <33.972160, 37.827335, 21.185532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987091, 37.592461, 21.232550>,  <34.011974, 37.201000, 21.310911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987091, 37.592461, 21.232550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526444, -0.198936, -0.826609,
		-0.847931, 0.051709, 0.527579,
		-0.062211, 0.978647, -0.195906,
		33.968430, 37.886055, 21.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208630, 37.383339, 21.204758>,  <34.011974, 37.201000, 21.310911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208630, 37.383339, 21.204758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429531, 37.662388, 21.022184>,  <33.562073, 37.829819, 20.912640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429531, 37.662388, 21.022184>,  <33.208630, 37.383339, 21.204758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429531, 37.662388, 21.022184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536430, -0.121742, -0.835118,
		-0.638166, 0.706044, 0.306994,
		0.552256, 0.697625, -0.456435,
		33.595207, 37.871674, 20.885254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716133, 37.666832, 20.747869>,  <33.208630, 37.383339, 21.204758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716133, 37.666832, 20.747869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090107, 37.738670, 20.625465>,  <33.314491, 37.781773, 20.552023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090107, 37.738670, 20.625465>,  <32.716133, 37.666832, 20.747869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090107, 37.738670, 20.625465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277953, -0.165350, -0.946257,
		-0.220540, 0.969746, -0.104673,
		0.934936, 0.179593, -0.306010,
		33.370586, 37.792549, 20.533663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590725, 37.778084, 19.963974>,  <32.716133, 37.666832, 20.747869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590725, 37.778084, 19.963974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988583, 37.742233, 19.984545>,  <33.227299, 37.720722, 19.996887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988583, 37.742233, 19.984545>,  <32.590725, 37.778084, 19.963974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988583, 37.742233, 19.984545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044449, -0.078171, -0.995949,
		0.093282, 0.992903, -0.073768,
		0.994647, -0.089625, 0.051426,
		33.286976, 37.715347, 19.999973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858120, 38.316841, 19.537439>,  <32.590725, 37.778084, 19.963974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858120, 38.316841, 19.537439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154686, 38.050823, 19.573261>,  <33.332626, 37.891212, 19.594755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154686, 38.050823, 19.573261>,  <32.858120, 38.316841, 19.537439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154686, 38.050823, 19.573261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147670, 0.031510, -0.988534,
		0.654598, 0.746139, 0.121569,
		0.741414, -0.665044, 0.089556,
		33.377110, 37.851311, 19.600128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482956, 38.566628, 19.128008>,  <32.858120, 38.316841, 19.537439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482956, 38.566628, 19.128008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516003, 38.171764, 19.182692>,  <33.535831, 37.934845, 19.215502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516003, 38.171764, 19.182692>,  <33.482956, 38.566628, 19.128008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516003, 38.171764, 19.182692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150098, -0.123289, -0.980954,
		0.985213, 0.101563, 0.137985,
		0.082616, -0.987160, 0.136711,
		33.540787, 37.875618, 19.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167877, 38.334251, 18.842478>,  <33.482956, 38.566628, 19.128008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167877, 38.334251, 18.842478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939800, 38.005894, 18.855221>,  <33.802952, 37.808880, 18.862865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939800, 38.005894, 18.855221>,  <34.167877, 38.334251, 18.842478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939800, 38.005894, 18.855221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153098, -0.144282, -0.977621,
		0.807116, -0.552559, 0.207946,
		-0.570196, -0.820891, 0.031856,
		33.768742, 37.759628, 18.864779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484787, 37.933762, 18.358423>,  <34.167877, 38.334251, 18.842478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484787, 37.933762, 18.358423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125252, 37.764244, 18.403137>,  <33.909531, 37.662533, 18.429966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125252, 37.764244, 18.403137>,  <34.484787, 37.933762, 18.358423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125252, 37.764244, 18.403137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006906, -0.268717, -0.963194,
		0.438231, -0.864982, 0.244459,
		-0.898836, -0.423790, 0.111786,
		33.855602, 37.637108, 18.436672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639988, 37.302464, 18.151724>,  <34.484787, 37.933762, 18.358423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639988, 37.302464, 18.151724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251854, 37.396553, 18.129347>,  <34.018974, 37.453007, 18.115921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251854, 37.396553, 18.129347>,  <34.639988, 37.302464, 18.151724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251854, 37.396553, 18.129347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031612, -0.352804, -0.935163,
		-0.239705, -0.905649, 0.349773,
		-0.970331, 0.235220, -0.055940,
		33.960754, 37.467121, 18.112564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406254, 36.759819, 17.693834>,  <34.639988, 37.302464, 18.151724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406254, 36.759819, 17.693834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105011, 37.022739, 17.704973>,  <33.924263, 37.180492, 17.711657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105011, 37.022739, 17.704973>,  <34.406254, 36.759819, 17.693834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105011, 37.022739, 17.704973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171027, -0.154734, -0.973040,
		-0.635275, -0.737569, 0.228948,
		-0.753110, 0.657305, 0.027845,
		33.879078, 37.219933, 17.713327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869728, 36.331238, 17.445034>,  <34.406254, 36.759819, 17.693834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869728, 36.331238, 17.445034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695839, 36.689930, 17.411831>,  <33.591507, 36.905144, 17.391909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695839, 36.689930, 17.411831>,  <33.869728, 36.331238, 17.445034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695839, 36.689930, 17.411831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371328, -0.262461, -0.890634,
		-0.820445, -0.356356, 0.447080,
		-0.434724, 0.896730, -0.083010,
		33.565422, 36.958950, 17.386929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144878, 36.337055, 17.223345>,  <33.869728, 36.331238, 17.445034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144878, 36.337055, 17.223345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280937, 36.693443, 17.103033>,  <33.362572, 36.907276, 17.030846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280937, 36.693443, 17.103033>,  <33.144878, 36.337055, 17.223345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280937, 36.693443, 17.103033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419931, -0.142273, -0.896335,
		-0.841403, 0.431189, 0.325754,
		0.340144, 0.890974, -0.300779,
		33.382980, 36.960735, 17.012800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579536, 36.609222, 16.913801>,  <33.144878, 36.337055, 17.223345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579536, 36.609222, 16.913801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885143, 36.822102, 16.767904>,  <33.068508, 36.949829, 16.680367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885143, 36.822102, 16.767904>,  <32.579536, 36.609222, 16.913801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885143, 36.822102, 16.767904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266497, -0.254533, -0.929619,
		-0.587582, 0.807451, -0.052638,
		0.764020, 0.532200, -0.364743,
		33.114349, 36.981762, 16.658482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321598, 36.951824, 16.374599>,  <32.579536, 36.609222, 16.913801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321598, 36.951824, 16.374599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716461, 36.958317, 16.311037>,  <32.953381, 36.962212, 16.272900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716461, 36.958317, 16.311037>,  <32.321598, 36.951824, 16.374599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716461, 36.958317, 16.311037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152800, -0.193956, -0.969037,
		-0.046554, 0.980876, -0.188985,
		0.987160, 0.016236, -0.158907,
		33.012608, 36.963188, 16.263365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422207, 37.362251, 15.757783>,  <32.321598, 36.951824, 16.374599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422207, 37.362251, 15.757783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726772, 37.105843, 15.796429>,  <32.909512, 36.951996, 15.819616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726772, 37.105843, 15.796429>,  <32.422207, 37.362251, 15.757783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726772, 37.105843, 15.796429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117175, -0.282671, -0.952033,
		0.637585, 0.713573, -0.290342,
		0.761417, -0.641023, 0.096614,
		32.955196, 36.913536, 15.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690891, 37.469990, 15.141129>,  <32.422207, 37.362251, 15.757783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690891, 37.469990, 15.141129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852234, 37.127941, 15.271403>,  <32.949039, 36.922710, 15.349567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852234, 37.127941, 15.271403>,  <32.690891, 37.469990, 15.141129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852234, 37.127941, 15.271403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108823, -0.398224, -0.910810,
		0.908549, 0.331938, -0.253683,
		0.403355, -0.855123, 0.325684,
		32.973240, 36.871403, 15.369108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325081, 37.368866, 14.904864>,  <32.690891, 37.469990, 15.141129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325081, 37.368866, 14.904864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180618, 37.004532, 14.984819>,  <33.093941, 36.785931, 15.032793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180618, 37.004532, 14.984819>,  <33.325081, 37.368866, 14.904864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180618, 37.004532, 14.984819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121188, -0.258382, -0.958411,
		0.924598, -0.321909, 0.203697,
		-0.361153, -0.910831, 0.199889,
		33.072273, 36.731281, 15.044785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712776, 36.912624, 14.538580>,  <33.325081, 37.368866, 14.904864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712776, 36.912624, 14.538580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384132, 36.699089, 14.618553>,  <33.186947, 36.570969, 14.666537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384132, 36.699089, 14.618553>,  <33.712776, 36.912624, 14.538580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384132, 36.699089, 14.618553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000976, -0.352046, -0.935982,
		0.570051, -0.768816, 0.289765,
		-0.821609, -0.533840, 0.199934,
		33.137650, 36.538937, 14.678534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823746, 36.318977, 14.087879>,  <33.712776, 36.912624, 14.538580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823746, 36.318977, 14.087879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449879, 36.277622, 14.223948>,  <33.225559, 36.252811, 14.305589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449879, 36.277622, 14.223948>,  <33.823746, 36.318977, 14.087879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449879, 36.277622, 14.223948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229162, -0.556334, -0.798735,
		0.271826, -0.824502, 0.496293,
		-0.934663, -0.103386, 0.340171,
		33.169479, 36.246605, 14.325998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558559, 35.663464, 14.079665>,  <33.823746, 36.318977, 14.087879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558559, 35.663464, 14.079665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233215, 35.891739, 14.034496>,  <33.038010, 36.028706, 14.007395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233215, 35.891739, 14.034496>,  <33.558559, 35.663464, 14.079665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233215, 35.891739, 14.034496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141266, -0.382046, -0.913282,
		-0.564346, -0.726877, 0.391361,
		-0.813362, 0.570693, -0.112923,
		32.989208, 36.062946, 14.000619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888203, 35.225483, 13.874774>,  <33.558559, 35.663464, 14.079665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888203, 35.225483, 13.874774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896431, 35.603455, 13.744120>,  <32.901367, 35.830238, 13.665727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896431, 35.603455, 13.744120>,  <32.888203, 35.225483, 13.874774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896431, 35.603455, 13.744120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359854, -0.297809, -0.884203,
		-0.932782, 0.135734, 0.333908,
		0.020575, 0.944926, -0.326636,
		32.902603, 35.886932, 13.646129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163506, 35.557419, 13.875267>,  <32.888203, 35.225483, 13.874774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163506, 35.557419, 13.875267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353149, 35.791348, 13.611994>,  <32.466934, 35.931705, 13.454030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353149, 35.791348, 13.611994>,  <32.163506, 35.557419, 13.875267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353149, 35.791348, 13.611994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724922, -0.164988, -0.668780,
		-0.499711, 0.794204, 0.345730,
		0.474107, 0.584824, -0.658182,
		32.495380, 35.966793, 13.414539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093128, 34.870277, 13.583201>,  <32.163506, 35.557419, 13.875267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093128, 34.870277, 13.583201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.094467, 34.471645, 13.550159>,  <32.095272, 34.232468, 13.530333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.094467, 34.471645, 13.550159>,  <32.093128, 34.870277, 13.583201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094467, 34.471645, 13.550159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037502, -0.082674, 0.995871,
		-0.999291, -0.000236, -0.037651,
		0.003347, -0.996577, -0.082607,
		32.095470, 34.172672, 13.525376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502075, 34.517853, 13.875274>,  <32.093128, 34.870277, 13.583201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502075, 34.517853, 13.875274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831982, 34.293449, 13.903625>,  <32.029926, 34.158806, 13.920635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831982, 34.293449, 13.903625>,  <31.502075, 34.517853, 13.875274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831982, 34.293449, 13.903625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149592, -0.095588, 0.984116,
		-0.545327, -0.822270, -0.162761,
		0.824767, -0.561013, 0.070878,
		32.079411, 34.125145, 13.924888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252359, 33.972904, 14.328777>,  <31.502075, 34.517853, 13.875274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252359, 33.972904, 14.328777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652262, 33.966827, 14.335175>,  <31.892204, 33.963181, 14.339013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652262, 33.966827, 14.335175>,  <31.252359, 33.972904, 14.328777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652262, 33.966827, 14.335175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019163, -0.239181, 0.970786,
		-0.010921, -0.970856, -0.239414,
		0.999756, -0.015189, 0.015993,
		31.952188, 33.962269, 14.339972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324224, 33.494667, 14.778650>,  <31.252359, 33.972904, 14.328777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324224, 33.494667, 14.778650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675442, 33.686031, 14.773441>,  <31.886171, 33.800850, 14.770316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675442, 33.686031, 14.773441>,  <31.324224, 33.494667, 14.778650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675442, 33.686031, 14.773441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086189, -0.131302, 0.987589,
		0.470760, -0.868266, -0.156522,
		0.878042, 0.478408, -0.013023,
		31.938854, 33.829552, 14.769534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765194, 33.128559, 15.269144>,  <31.324224, 33.494667, 14.778650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765194, 33.128559, 15.269144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919338, 33.493580, 15.214378>,  <32.011826, 33.712593, 15.181520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919338, 33.493580, 15.214378>,  <31.765194, 33.128559, 15.269144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919338, 33.493580, 15.214378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238778, 0.044707, 0.970044,
		0.891338, -0.406507, -0.200670,
		0.385358, 0.912553, -0.136914,
		32.034946, 33.767345, 15.173305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463093, 33.123997, 15.648456>,  <31.765194, 33.128559, 15.269144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463093, 33.123997, 15.648456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372822, 33.511780, 15.610043>,  <32.318661, 33.744450, 15.586994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372822, 33.511780, 15.610043>,  <32.463093, 33.123997, 15.648456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372822, 33.511780, 15.610043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250633, 0.153034, 0.955910,
		0.941411, 0.191655, -0.277514,
		-0.225674, 0.969458, -0.096033,
		32.305119, 33.802616, 15.581233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933315, 33.443886, 16.075985>,  <32.463093, 33.123997, 15.648456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933315, 33.443886, 16.075985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653397, 33.723351, 16.016430>,  <32.485447, 33.891029, 15.980697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653397, 33.723351, 16.016430>,  <32.933315, 33.443886, 16.075985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653397, 33.723351, 16.016430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175510, 0.370194, 0.912224,
		0.692450, 0.612236, -0.381681,
		-0.699792, 0.698658, -0.148887,
		32.443459, 33.932949, 15.971764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263206, 34.072216, 16.222017>,  <32.933315, 33.443886, 16.075985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263206, 34.072216, 16.222017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871483, 34.128941, 16.279764>,  <32.636448, 34.162975, 16.314413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871483, 34.128941, 16.279764>,  <33.263206, 34.072216, 16.222017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871483, 34.128941, 16.279764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194138, 0.456963, 0.868041,
		0.057128, 0.878108, -0.475039,
		-0.979309, 0.141813, 0.144369,
		32.577690, 34.171486, 16.323074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160297, 34.779747, 16.497349>,  <33.263206, 34.072216, 16.222017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160297, 34.779747, 16.497349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815273, 34.598156, 16.586702>,  <32.608257, 34.489201, 16.640314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815273, 34.598156, 16.586702>,  <33.160297, 34.779747, 16.497349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815273, 34.598156, 16.586702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039592, 0.379589, 0.924308,
		-0.504405, 0.806114, -0.309444,
		-0.862559, -0.453974, 0.223383,
		32.556507, 34.461964, 16.653717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752781, 35.212189, 16.685230>,  <33.160297, 34.779747, 16.497349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752781, 35.212189, 16.685230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615284, 34.888493, 16.875795>,  <32.532787, 34.694275, 16.990135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615284, 34.888493, 16.875795>,  <32.752781, 35.212189, 16.685230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615284, 34.888493, 16.875795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082817, 0.479228, 0.873775,
		-0.935405, 0.339808, -0.097712,
		-0.343741, -0.809241, 0.476414,
		32.512161, 34.645721, 17.018719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587154, 35.415512, 17.285582>,  <32.752781, 35.212189, 16.685230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587154, 35.415512, 17.285582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515465, 35.031929, 17.373470>,  <32.472450, 34.801781, 17.426203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515465, 35.031929, 17.373470>,  <32.587154, 35.415512, 17.285582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515465, 35.031929, 17.373470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007327, 0.222029, 0.975013,
		-0.983781, 0.176356, -0.032766,
		-0.179224, -0.958959, 0.219721,
		32.461697, 34.744240, 17.439386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114323, 35.594959, 17.692745>,  <32.587154, 35.415512, 17.285582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114323, 35.594959, 17.692745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235153, 35.221016, 17.767361>,  <32.307652, 34.996651, 17.812130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235153, 35.221016, 17.767361>,  <32.114323, 35.594959, 17.692745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235153, 35.221016, 17.767361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112139, 0.229168, 0.966906,
		-0.946666, -0.271159, 0.174059,
		0.302074, -0.934855, 0.186538,
		32.325775, 34.940559, 17.823322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838682, 35.340656, 18.385294>,  <32.114323, 35.594959, 17.692745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838682, 35.340656, 18.385294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170910, 35.149117, 18.271555>,  <32.370247, 35.034191, 18.203312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170910, 35.149117, 18.271555>,  <31.838682, 35.340656, 18.385294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170910, 35.149117, 18.271555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379987, 0.114010, 0.917939,
		-0.407137, -0.870462, 0.276651,
		0.830571, -0.478851, -0.284347,
		32.420082, 35.005463, 18.186251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833469, 34.773056, 18.772852>,  <31.838682, 35.340656, 18.385294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833469, 34.773056, 18.772852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216339, 34.803654, 18.661163>,  <32.446060, 34.822010, 18.594151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216339, 34.803654, 18.661163>,  <31.833469, 34.773056, 18.772852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216339, 34.803654, 18.661163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280232, -0.002605, 0.959929,
		0.072703, -0.997067, -0.023930,
		0.957175, 0.076495, -0.279221,
		32.503490, 34.826603, 18.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198746, 34.323975, 19.261454>,  <31.833469, 34.773056, 18.772852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198746, 34.323975, 19.261454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503601, 34.542347, 19.122250>,  <32.686512, 34.673370, 19.038727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503601, 34.542347, 19.122250>,  <32.198746, 34.323975, 19.261454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503601, 34.542347, 19.122250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455749, -0.070619, 0.887302,
		0.459829, -0.834849, -0.302628,
		0.762135, 0.545930, -0.348009,
		32.732243, 34.706127, 19.017847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864128, 34.114174, 19.518539>,  <32.198746, 34.323975, 19.261454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864128, 34.114174, 19.518539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953178, 34.494549, 19.432604>,  <33.006607, 34.722775, 19.381042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953178, 34.494549, 19.432604>,  <32.864128, 34.114174, 19.518539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953178, 34.494549, 19.432604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491244, 0.080926, 0.867254,
		0.842091, -0.298608, -0.449127,
		0.222623, 0.950939, -0.214837,
		33.019966, 34.779831, 19.368153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614422, 34.181656, 19.646484>,  <32.864128, 34.114174, 19.518539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614422, 34.181656, 19.646484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418503, 34.529968, 19.663658>,  <33.300953, 34.738956, 19.673964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418503, 34.529968, 19.663658>,  <33.614422, 34.181656, 19.646484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418503, 34.529968, 19.663658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603150, 0.302879, 0.737885,
		0.629529, 0.387312, -0.673559,
		-0.489799, 0.870777, 0.042936,
		33.271564, 34.791203, 19.676538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144093, 34.618401, 19.754354>,  <33.614422, 34.181656, 19.646484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144093, 34.618401, 19.754354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833385, 34.853813, 19.844030>,  <33.646961, 34.995060, 19.897835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833385, 34.853813, 19.844030>,  <34.144093, 34.618401, 19.754354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833385, 34.853813, 19.844030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520404, 0.399334, 0.754793,
		0.354692, 0.702969, -0.616464,
		-0.776771, 0.588529, 0.224188,
		33.600353, 35.030373, 19.911287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492596, 35.222519, 19.853827>,  <34.144093, 34.618401, 19.754354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492596, 35.222519, 19.853827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151543, 35.250851, 20.060902>,  <33.946911, 35.267849, 20.185146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151543, 35.250851, 20.060902>,  <34.492596, 35.222519, 19.853827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151543, 35.250851, 20.060902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522270, 0.145605, 0.840258,
		-0.015865, 0.986804, -0.161139,
		-0.852632, 0.070828, 0.517688,
		33.895752, 35.272099, 20.216208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579109, 35.777431, 20.255106>,  <34.492596, 35.222519, 19.853827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579109, 35.777431, 20.255106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275101, 35.591808, 20.437103>,  <34.092697, 35.480434, 20.546303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275101, 35.591808, 20.437103>,  <34.579109, 35.777431, 20.255106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275101, 35.591808, 20.437103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439798, 0.148200, 0.885785,
		-0.478487, 0.873319, 0.091457,
		-0.760018, -0.464059, 0.454996,
		34.047096, 35.452591, 20.573603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.192547, 39.687569, 24.602861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.906605, 39.407909, 24.597586>,  <34.735039, 39.240112, 24.594421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.906605, 39.407909, 24.597586>,  <35.192547, 39.687569, 24.602861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906605, 39.407909, 24.597586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150521, 0.135429, 0.979287,
		-0.682884, 0.702030, -0.202048,
		-0.714852, -0.699151, -0.013188,
		34.692150, 39.198162, 24.593630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577850, 40.004745, 24.959566>,  <35.192547, 39.687569, 24.602861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577850, 40.004745, 24.959566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.545135, 39.606220, 24.969925>,  <34.525505, 39.367104, 24.976139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.545135, 39.606220, 24.969925>,  <34.577850, 40.004745, 24.959566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545135, 39.606220, 24.969925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182665, 0.040528, 0.982340,
		-0.979768, 0.075614, -0.185306,
		-0.081789, -0.996313, 0.025896,
		34.520599, 39.307327, 24.977694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015957, 39.908409, 25.402706>,  <34.577850, 40.004745, 24.959566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015957, 39.908409, 25.402706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.200920, 39.553967, 25.390114>,  <34.311897, 39.341301, 25.382559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.200920, 39.553967, 25.390114>,  <34.015957, 39.908409, 25.402706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200920, 39.553967, 25.390114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153481, -0.114961, 0.981442,
		-0.873285, -0.448991, -0.189160,
		0.462404, -0.886110, -0.031482,
		34.339642, 39.288132, 25.380669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707340, 39.457951, 25.852161>,  <34.015957, 39.908409, 25.402706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707340, 39.457951, 25.852161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050274, 39.252911, 25.833353>,  <34.256035, 39.129887, 25.822067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050274, 39.252911, 25.833353>,  <33.707340, 39.457951, 25.852161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050274, 39.252911, 25.833353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004093, -0.084559, 0.996410,
		-0.514739, -0.854452, -0.070397,
		0.857337, -0.512603, -0.047023,
		34.307476, 39.099129, 25.819246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792507, 38.675652, 26.097578>,  <33.707340, 39.457951, 25.852161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792507, 38.675652, 26.097578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154812, 38.836376, 26.151464>,  <34.372192, 38.932812, 26.183796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.154812, 38.836376, 26.151464>,  <33.792507, 38.675652, 26.097578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154812, 38.836376, 26.151464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046035, -0.222708, 0.973798,
		0.421288, -0.888227, -0.183222,
		0.905758, 0.401814, 0.134714,
		34.426540, 38.956921, 26.191879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986801, 38.486782, 26.781958>,  <33.792507, 38.675652, 26.097578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986801, 38.486782, 26.781958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.263519, 38.764931, 26.704113>,  <34.429550, 38.931820, 26.657406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.263519, 38.764931, 26.704113>,  <33.986801, 38.486782, 26.781958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263519, 38.764931, 26.704113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228500, 0.044851, 0.972510,
		0.684986, -0.717248, -0.127865,
		0.691797, 0.695373, -0.194613,
		34.471058, 38.973541, 26.645729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566998, 38.155521, 26.961311>,  <33.986801, 38.486782, 26.781958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566998, 38.155521, 26.961311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.598331, 38.553818, 26.980734>,  <34.617130, 38.792797, 26.992388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.598331, 38.553818, 26.980734>,  <34.566998, 38.155521, 26.961311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598331, 38.553818, 26.980734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149788, -0.059907, 0.986902,
		0.985610, -0.070037, -0.153844,
		0.078336, 0.995744, 0.048555,
		34.621834, 38.852539, 26.995300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190815, 38.181698, 27.437317>,  <34.566998, 38.155521, 26.961311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190815, 38.181698, 27.437317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033707, 38.548985, 27.416916>,  <34.939442, 38.769356, 27.404676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033707, 38.548985, 27.416916>,  <35.190815, 38.181698, 27.437317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033707, 38.548985, 27.416916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001338, 0.056028, 0.998428,
		0.919635, 0.392085, -0.023235,
		-0.392771, 0.918221, -0.051001,
		34.915874, 38.824451, 27.401615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478565, 38.561089, 27.975378>,  <35.190815, 38.181698, 27.437317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478565, 38.561089, 27.975378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.175098, 38.814220, 27.913465>,  <34.993019, 38.966099, 27.876318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.175098, 38.814220, 27.913465>,  <35.478565, 38.561089, 27.975378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175098, 38.814220, 27.913465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135789, 0.078765, 0.987602,
		0.637172, 0.770277, 0.026175,
		-0.758665, 0.632827, -0.154782,
		34.947498, 39.004070, 27.867031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564823, 39.159290, 28.330183>,  <35.478565, 38.561089, 27.975378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564823, 39.159290, 28.330183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169132, 39.178574, 28.274899>,  <34.931717, 39.190144, 28.241728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169132, 39.178574, 28.274899>,  <35.564823, 39.159290, 28.330183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169132, 39.178574, 28.274899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123599, 0.230748, 0.965132,
		0.078418, 0.971819, -0.222304,
		-0.989229, 0.048207, -0.138210,
		34.872364, 39.193035, 28.233435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281796, 39.888115, 28.517103>,  <35.564823, 39.159290, 28.330183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281796, 39.888115, 28.517103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979813, 39.627628, 28.547974>,  <34.798622, 39.471336, 28.566496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979813, 39.627628, 28.547974>,  <35.281796, 39.888115, 28.517103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979813, 39.627628, 28.547974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073788, 0.201297, 0.976747,
		-0.651608, 0.731709, -0.200023,
		-0.754958, -0.651216, 0.077176,
		34.753326, 39.432262, 28.571127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658661, 40.109604, 28.906286>,  <35.281796, 39.888115, 28.517103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658661, 40.109604, 28.906286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.636272, 39.713142, 28.954409>,  <34.622837, 39.475266, 28.983282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.636272, 39.713142, 28.954409>,  <34.658661, 40.109604, 28.906286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636272, 39.713142, 28.954409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156402, 0.127712, 0.979402,
		-0.986106, 0.036004, -0.162167,
		-0.055973, -0.991157, 0.120307,
		34.619480, 39.415794, 28.990501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105877, 40.417877, 29.227764>,  <34.658661, 40.109604, 28.906286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105877, 40.417877, 29.227764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071808, 40.170616, 29.540337>,  <34.051369, 40.022259, 29.727880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071808, 40.170616, 29.540337>,  <34.105877, 40.417877, 29.227764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071808, 40.170616, 29.540337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976295, -0.104851, -0.189352,
		0.198982, -0.779033, -0.594570,
		-0.085171, -0.618153, 0.781429,
		34.046257, 39.985168, 29.774765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725208, 39.902222, 29.037687>,  <34.105877, 40.417877, 29.227764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725208, 39.902222, 29.037687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.677689, 39.922894, 29.434317>,  <33.649178, 39.935299, 29.672295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.677689, 39.922894, 29.434317>,  <33.725208, 39.902222, 29.037687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677689, 39.922894, 29.434317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983891, 0.128225, -0.124563,
		-0.133582, -0.990397, 0.035620,
		-0.118800, 0.051685, 0.991572,
		33.642048, 39.938400, 29.731789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352551, 39.320076, 29.428707>,  <33.725208, 39.902222, 29.037687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352551, 39.320076, 29.428707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.289524, 39.673717, 29.604675>,  <33.251709, 39.885902, 29.710257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.289524, 39.673717, 29.604675>,  <33.352551, 39.320076, 29.428707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289524, 39.673717, 29.604675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928857, 0.018551, -0.369974,
		-0.335257, -0.466921, 0.818283,
		-0.157569, 0.884104, 0.439922,
		33.242252, 39.938950, 29.736652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879166, 39.272648, 29.940796>,  <33.352551, 39.320076, 29.428707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879166, 39.272648, 29.940796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.873230, 39.618675, 29.740221>,  <32.869667, 39.826290, 29.619877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.873230, 39.618675, 29.740221>,  <32.879166, 39.272648, 29.940796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873230, 39.618675, 29.740221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821916, -0.296142, -0.486574,
		-0.569416, 0.404916, 0.715408,
		-0.014841, 0.865068, -0.501435,
		32.868778, 39.878197, 29.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135078, 39.482296, 29.910419>,  <32.879166, 39.272648, 29.940796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135078, 39.482296, 29.910419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.321911, 39.700897, 29.632378>,  <32.434010, 39.832058, 29.465553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.321911, 39.700897, 29.632378>,  <32.135078, 39.482296, 29.910419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321911, 39.700897, 29.632378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794862, -0.084849, -0.600829,
		-0.387331, 0.833150, 0.394761,
		0.467085, 0.546500, -0.695104,
		32.462036, 39.864849, 29.423847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691463, 40.043743, 29.662205>,  <32.135078, 39.482296, 29.910419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691463, 40.043743, 29.662205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.950893, 39.948475, 29.373034>,  <32.106552, 39.891315, 29.199532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.950893, 39.948475, 29.373034>,  <31.691463, 40.043743, 29.662205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950893, 39.948475, 29.373034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760442, -0.161834, -0.628918,
		0.032796, 0.957645, -0.286078,
		0.648577, -0.238172, -0.722926,
		32.145466, 39.877022, 29.156157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412817, 40.290386, 29.064625>,  <31.691463, 40.043743, 29.662205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412817, 40.290386, 29.064625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.696791, 40.060398, 28.901947>,  <31.867176, 39.922405, 28.804340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.696791, 40.060398, 28.901947>,  <31.412817, 40.290386, 29.064625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696791, 40.060398, 28.901947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583980, -0.157830, -0.796277,
		0.393649, 0.802806, -0.447821,
		0.709936, -0.574972, -0.406693,
		31.909771, 39.887905, 28.779940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448004, 40.415661, 28.312243>,  <31.412817, 40.290386, 29.064625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448004, 40.415661, 28.312243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.647863, 40.069256, 28.304567>,  <31.767780, 39.861412, 28.299963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.647863, 40.069256, 28.304567>,  <31.448004, 40.415661, 28.312243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647863, 40.069256, 28.304567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557200, -0.304362, -0.772588,
		0.663233, 0.396714, -0.634618,
		0.499650, -0.866015, -0.019186,
		31.797758, 39.809452, 28.298811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710829, 40.321423, 27.584826>,  <31.448004, 40.415661, 28.312243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710829, 40.321423, 27.584826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.680738, 39.960270, 27.754124>,  <31.662685, 39.743576, 27.855703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.680738, 39.960270, 27.754124>,  <31.710829, 40.321423, 27.584826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680738, 39.960270, 27.754124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270825, -0.389996, -0.880089,
		0.959685, -0.180829, -0.215187,
		-0.075223, -0.902886, 0.423247,
		31.658171, 39.689404, 27.881098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933876, 39.976521, 27.052212>,  <31.710829, 40.321423, 27.584826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933876, 39.976521, 27.052212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.769558, 39.693138, 27.281765>,  <31.670967, 39.523109, 27.419497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.769558, 39.693138, 27.281765>,  <31.933876, 39.976521, 27.052212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769558, 39.693138, 27.281765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183342, -0.552397, -0.813168,
		0.893103, -0.439262, 0.097033,
		-0.410795, -0.708453, 0.573883,
		31.646320, 39.480602, 27.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098572, 39.318562, 26.682236>,  <31.933876, 39.976521, 27.052212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098572, 39.318562, 26.682236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.781693, 39.246883, 26.915581>,  <31.591566, 39.203876, 27.055588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.781693, 39.246883, 26.915581>,  <32.098572, 39.318562, 26.682236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781693, 39.246883, 26.915581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452527, -0.468856, -0.758547,
		0.409442, -0.864906, 0.290335,
		-0.792197, -0.179196, 0.583363,
		31.544033, 39.193123, 27.090590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920935, 38.584682, 26.570351>,  <32.098572, 39.318562, 26.682236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920935, 38.584682, 26.570351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.596920, 38.766235, 26.718857>,  <31.402512, 38.875168, 26.807961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.596920, 38.766235, 26.718857>,  <31.920935, 38.584682, 26.570351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596920, 38.766235, 26.718857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566167, -0.440567, -0.696675,
		-0.152638, -0.774529, 0.613845,
		-0.810035, 0.453878, 0.371265,
		31.353910, 38.902397, 26.830236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370092, 38.039101, 26.509336>,  <31.920935, 38.584682, 26.570351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370092, 38.039101, 26.509336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.165710, 38.378540, 26.564184>,  <31.043081, 38.582203, 26.597094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.165710, 38.378540, 26.564184>,  <31.370092, 38.039101, 26.509336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165710, 38.378540, 26.564184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473692, -0.144849, -0.868697,
		-0.717315, -0.508818, 0.475987,
		-0.510954, 0.848600, 0.137121,
		31.012424, 38.633121, 26.605320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620432, 37.826931, 26.326611>,  <31.370092, 38.039101, 26.509336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620432, 37.826931, 26.326611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.680029, 38.222130, 26.310303>,  <30.715788, 38.459248, 26.300518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.680029, 38.222130, 26.310303>,  <30.620432, 37.826931, 26.326611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680029, 38.222130, 26.310303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376051, 0.018484, -0.926414,
		-0.914541, 0.153361, 0.374292,
		0.148994, 0.987997, -0.040767,
		30.724728, 38.518528, 26.298073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041807, 38.178043, 25.935053>,  <30.620432, 37.826931, 26.326611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041807, 38.178043, 25.935053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.312048, 38.472610, 25.920904>,  <30.474192, 38.649349, 25.912415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.312048, 38.472610, 25.920904>,  <30.041807, 38.178043, 25.935053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312048, 38.472610, 25.920904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243963, 0.178025, -0.953304,
		-0.695733, 0.652683, 0.299933,
		0.675601, 0.736418, -0.035373,
		30.514729, 38.693535, 25.910292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719954, 38.854603, 25.646513>,  <30.041807, 38.178043, 25.935053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719954, 38.854603, 25.646513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.113731, 38.880169, 25.581049>,  <30.349998, 38.895508, 25.541771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.113731, 38.880169, 25.581049>,  <29.719954, 38.854603, 25.646513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113731, 38.880169, 25.581049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174022, 0.226407, -0.958361,
		-0.024199, 0.971934, 0.234007,
		0.984444, 0.063914, -0.163659,
		30.409065, 38.899342, 25.531952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214060, 39.423927, 25.615030>,  <29.719954, 38.854603, 25.646513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214060, 39.423927, 25.615030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.871826, 39.217915, 25.635860>,  <28.666485, 39.094307, 25.648359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.871826, 39.217915, 25.635860>,  <29.214060, 39.423927, 25.615030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871826, 39.217915, 25.635860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035823, 0.159267, 0.986585,
		-0.516421, 0.842242, -0.154716,
		-0.855585, -0.515036, 0.052078,
		28.615150, 39.063404, 25.651484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764168, 39.625187, 26.224154>,  <29.214060, 39.423927, 25.615030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764168, 39.625187, 26.224154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.610010, 39.268230, 26.130251>,  <28.517515, 39.054058, 26.073910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.610010, 39.268230, 26.130251>,  <28.764168, 39.625187, 26.224154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610010, 39.268230, 26.130251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077373, -0.222260, 0.971913,
		-0.919503, 0.392732, 0.016611,
		-0.385393, -0.892392, -0.234755,
		28.494392, 39.000511, 26.059824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160419, 39.464840, 26.773384>,  <28.764168, 39.625187, 26.224154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160419, 39.464840, 26.773384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.218691, 39.105976, 26.606590>,  <28.253654, 38.890656, 26.506514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.218691, 39.105976, 26.606590>,  <28.160419, 39.464840, 26.773384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218691, 39.105976, 26.606590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009957, -0.422789, 0.906173,
		-0.989282, -0.127859, -0.070524,
		0.145679, -0.897163, -0.416984,
		28.262394, 38.836826, 26.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598507, 38.954880, 27.050009>,  <28.160419, 39.464840, 26.773384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598507, 38.954880, 27.050009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.950581, 38.795437, 26.946947>,  <28.161825, 38.699772, 26.885109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.950581, 38.795437, 26.946947>,  <27.598507, 38.954880, 27.050009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950581, 38.795437, 26.946947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000840, -0.541543, 0.840673,
		-0.474631, -0.740164, -0.476323,
		0.880185, -0.398609, -0.257655,
		28.214636, 38.675854, 26.869650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518122, 38.284267, 27.233576>,  <27.598507, 38.954880, 27.050009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518122, 38.284267, 27.233576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.914524, 38.333447, 27.212456>,  <28.152367, 38.362953, 27.199783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.914524, 38.333447, 27.212456>,  <27.518122, 38.284267, 27.233576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914524, 38.333447, 27.212456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093700, -0.355970, 0.929788,
		0.095517, -0.926374, -0.364289,
		0.991007, 0.122945, -0.052800,
		28.211826, 38.370331, 27.196615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792700, 37.790031, 27.645094>,  <27.518122, 38.284267, 27.233576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792700, 37.790031, 27.645094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.134916, 37.991341, 27.596478>,  <28.340246, 38.112125, 27.567308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.134916, 37.991341, 27.596478>,  <27.792700, 37.790031, 27.645094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134916, 37.991341, 27.596478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293470, -0.277997, 0.914655,
		0.426529, -0.818192, -0.385531,
		0.855540, 0.503269, -0.121541,
		28.391579, 38.142323, 27.560015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268652, 37.297577, 27.822979>,  <27.792700, 37.790031, 27.645094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268652, 37.297577, 27.822979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.440107, 37.658325, 27.844511>,  <28.542980, 37.874775, 27.857431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.440107, 37.658325, 27.844511>,  <28.268652, 37.297577, 27.822979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440107, 37.658325, 27.844511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601859, -0.329474, 0.727470,
		0.673820, -0.279423, -0.684025,
		0.428640, 0.901870, 0.053832,
		28.568699, 37.928886, 27.860661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015011, 37.210712, 27.848055>,  <28.268652, 37.297577, 27.822979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015011, 37.210712, 27.848055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.964527, 37.563629, 28.029442>,  <28.934237, 37.775379, 28.138273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.964527, 37.563629, 28.029442>,  <29.015011, 37.210712, 27.848055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964527, 37.563629, 28.029442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498269, -0.338893, 0.798047,
		0.857788, 0.326669, -0.396847,
		-0.126208, 0.882292, 0.453467,
		28.926664, 37.828316, 28.165482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597404, 37.275249, 28.206493>,  <29.015011, 37.210712, 27.848055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597404, 37.275249, 28.206493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.357510, 37.556290, 28.359678>,  <29.213573, 37.724915, 28.451590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.357510, 37.556290, 28.359678>,  <29.597404, 37.275249, 28.206493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357510, 37.556290, 28.359678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307696, -0.239302, 0.920900,
		0.738674, 0.670135, -0.072671,
		-0.599737, 0.702605, 0.382964,
		29.177589, 37.767071, 28.474567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039452, 37.683754, 28.656351>,  <29.597404, 37.275249, 28.206493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039452, 37.683754, 28.656351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.674286, 37.788307, 28.781744>,  <29.455187, 37.851040, 28.856979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.674286, 37.788307, 28.781744>,  <30.039452, 37.683754, 28.656351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674286, 37.788307, 28.781744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271526, -0.184510, 0.944579,
		0.304738, 0.947436, 0.097469,
		-0.912912, 0.261384, 0.313481,
		29.400412, 37.866722, 28.875788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219809, 38.043354, 29.205557>,  <30.039452, 37.683754, 28.656351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219809, 38.043354, 29.205557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.842409, 37.919735, 29.253382>,  <29.615969, 37.845562, 29.282076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.842409, 37.919735, 29.253382>,  <30.219809, 38.043354, 29.205557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842409, 37.919735, 29.253382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159393, -0.106943, 0.981406,
		-0.290517, 0.945014, 0.150161,
		-0.943501, -0.309050, 0.119560,
		29.559359, 37.827019, 29.289249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896378, 38.445179, 29.729300>,  <30.219809, 38.043354, 29.205557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896378, 38.445179, 29.729300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.728958, 38.083660, 29.693609>,  <29.628508, 37.866749, 29.672195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.728958, 38.083660, 29.693609>,  <29.896378, 38.445179, 29.729300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728958, 38.083660, 29.693609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174750, -0.176555, 0.968654,
		-0.891225, 0.389834, 0.231836,
		-0.418546, -0.903802, -0.089226,
		29.603394, 37.812519, 29.666842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.576378, 39.403313, 21.718596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726391, 39.056499, 21.849808>,  <27.816399, 38.848412, 21.928535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726391, 39.056499, 21.849808>,  <27.576378, 39.403313, 21.718596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726391, 39.056499, 21.849808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295234, 0.223720, 0.928863,
		-0.878743, -0.445198, -0.172076,
		0.375031, -0.867034, 0.328029,
		27.838900, 38.796391, 21.948217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194902, 39.383987, 22.347153>,  <27.576378, 39.403313, 21.718596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194902, 39.383987, 22.347153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490671, 39.119766, 22.399195>,  <27.668133, 38.961235, 22.430420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490671, 39.119766, 22.399195>,  <27.194902, 39.383987, 22.347153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490671, 39.119766, 22.399195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006768, 0.185949, 0.982536,
		-0.673206, -0.727391, 0.133024,
		0.739424, -0.660549, 0.130105,
		27.712498, 38.921600, 22.438227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012508, 39.110962, 23.020546>,  <27.194902, 39.383987, 22.347153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012508, 39.110962, 23.020546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377035, 38.976433, 22.925558>,  <27.595751, 38.895718, 22.868565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377035, 38.976433, 22.925558>,  <27.012508, 39.110962, 23.020546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377035, 38.976433, 22.925558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238790, -0.038091, 0.970324,
		-0.335384, -0.940977, 0.045597,
		0.911316, -0.336319, -0.237471,
		27.650431, 38.875538, 22.854317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161400, 38.634033, 23.474609>,  <27.012508, 39.110962, 23.020546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161400, 38.634033, 23.474609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527752, 38.748859, 23.362356>,  <27.747562, 38.817757, 23.295004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527752, 38.748859, 23.362356>,  <27.161400, 38.634033, 23.474609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527752, 38.748859, 23.362356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303920, -0.039091, 0.951895,
		0.262290, -0.957112, -0.123048,
		0.915880, 0.287070, -0.280632,
		27.802517, 38.834980, 23.278166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485701, 38.109852, 23.758297>,  <27.161400, 38.634033, 23.474609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485701, 38.109852, 23.758297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724218, 38.425770, 23.700817>,  <27.867329, 38.615322, 23.666328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724218, 38.425770, 23.700817>,  <27.485701, 38.109852, 23.758297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724218, 38.425770, 23.700817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363960, -0.106431, 0.925314,
		0.715518, -0.604061, -0.350919,
		0.596295, 0.789799, -0.143701,
		27.903107, 38.662708, 23.657707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016727, 37.931305, 24.075693>,  <27.485701, 38.109852, 23.758297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016727, 37.931305, 24.075693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066360, 38.327549, 24.052719>,  <28.096140, 38.565296, 24.038935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066360, 38.327549, 24.052719>,  <28.016727, 37.931305, 24.075693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066360, 38.327549, 24.052719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216874, 0.029408, 0.975756,
		0.968282, -0.133529, -0.211189,
		0.124081, 0.990608, -0.057434,
		28.103584, 38.624733, 24.035488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657551, 38.035255, 24.238190>,  <28.016727, 37.931305, 24.075693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657551, 38.035255, 24.238190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496059, 38.391594, 24.321520>,  <28.399164, 38.605396, 24.371519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496059, 38.391594, 24.321520>,  <28.657551, 38.035255, 24.238190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496059, 38.391594, 24.321520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430417, -0.015985, 0.902489,
		0.807306, 0.454030, -0.376980,
		-0.403731, 0.890843, 0.208327,
		28.374941, 38.658848, 24.384018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107889, 38.371063, 24.677639>,  <28.657551, 38.035255, 24.238190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107889, 38.371063, 24.677639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777494, 38.586216, 24.745077>,  <28.579258, 38.715309, 24.785540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777494, 38.586216, 24.745077>,  <29.107889, 38.371063, 24.677639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777494, 38.586216, 24.745077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212429, 0.019990, 0.976972,
		0.522128, 0.842781, -0.130774,
		-0.825988, 0.537885, 0.168593,
		28.529697, 38.747581, 24.795654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303610, 38.961044, 25.048773>,  <29.107889, 38.371063, 24.677639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303610, 38.961044, 25.048773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914017, 38.915424, 25.127108>,  <28.680262, 38.888054, 25.174109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914017, 38.915424, 25.127108>,  <29.303610, 38.961044, 25.048773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914017, 38.915424, 25.127108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197222, -0.000886, 0.980358,
		-0.111637, 0.993475, 0.023357,
		-0.973982, -0.114051, 0.195836,
		28.621822, 38.881210, 25.185858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838655, 39.477013, 25.254105>,  <29.303610, 38.961044, 25.048773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838655, 39.477013, 25.254105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175350, 39.270554, 25.190765>,  <30.377367, 39.146679, 25.152761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175350, 39.270554, 25.190765>,  <29.838655, 39.477013, 25.254105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175350, 39.270554, 25.190765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038875, 0.350475, -0.935765,
		0.538490, 0.781510, 0.315073,
		0.841735, -0.516148, -0.158346,
		30.427870, 39.115707, 25.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197012, 39.834408, 24.785446>,  <29.838655, 39.477013, 25.254105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197012, 39.834408, 24.785446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397171, 39.488777, 24.763647>,  <30.517267, 39.281399, 24.750568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397171, 39.488777, 24.763647>,  <30.197012, 39.834408, 24.785446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397171, 39.488777, 24.763647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139647, 0.142671, -0.979869,
		0.854460, 0.482714, 0.192058,
		0.500397, -0.864079, -0.054497,
		30.547291, 39.229553, 24.747297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810513, 39.954422, 24.284592>,  <30.197012, 39.834408, 24.785446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810513, 39.954422, 24.284592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800640, 39.554989, 24.303486>,  <30.794716, 39.315331, 24.314821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800640, 39.554989, 24.303486>,  <30.810513, 39.954422, 24.284592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800640, 39.554989, 24.303486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322593, -0.052678, -0.945071,
		0.946216, -0.008090, 0.323435,
		-0.024683, -0.998579, 0.047235,
		30.793236, 39.255417, 24.317656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503654, 39.669674, 24.148802>,  <30.810513, 39.954422, 24.284592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503654, 39.669674, 24.148802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228838, 39.396641, 24.049162>,  <31.063948, 39.232819, 23.989378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228838, 39.396641, 24.049162>,  <31.503654, 39.669674, 24.148802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228838, 39.396641, 24.049162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295391, 0.050836, -0.954023,
		0.663867, -0.729034, 0.166704,
		-0.687041, -0.682587, -0.249098,
		31.022726, 39.191864, 23.974432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823112, 39.308784, 23.602198>,  <31.503654, 39.669674, 24.148802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823112, 39.308784, 23.602198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446714, 39.185028, 23.547346>,  <31.220875, 39.110775, 23.514435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446714, 39.185028, 23.547346>,  <31.823112, 39.308784, 23.602198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446714, 39.185028, 23.547346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188470, -0.142557, -0.971677,
		0.281075, -0.940190, 0.192456,
		-0.940997, -0.309387, -0.137128,
		31.164415, 39.092213, 23.506208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795105, 38.668465, 23.127996>,  <31.823112, 39.308784, 23.602198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795105, 38.668465, 23.127996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424873, 38.817406, 23.100683>,  <31.202734, 38.906769, 23.084295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424873, 38.817406, 23.100683>,  <31.795105, 38.668465, 23.127996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424873, 38.817406, 23.100683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060735, -0.031975, -0.997642,
		-0.373656, -0.927541, 0.006981,
		-0.925577, 0.372351, -0.068282,
		31.147200, 38.929111, 23.080198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558886, 38.321568, 22.677134>,  <31.795105, 38.668465, 23.127996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558886, 38.321568, 22.677134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302328, 38.628284, 22.666908>,  <31.148394, 38.812313, 22.660774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302328, 38.628284, 22.666908>,  <31.558886, 38.321568, 22.677134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302328, 38.628284, 22.666908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038236, -0.001329, -0.999268,
		-0.766260, -0.641899, -0.028466,
		-0.641392, 0.766788, -0.025562,
		31.109911, 38.858322, 22.659239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077372, 38.086029, 22.143747>,  <31.558886, 38.321568, 22.677134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077372, 38.086029, 22.143747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016247, 38.480377, 22.171194>,  <30.979572, 38.716988, 22.187662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016247, 38.480377, 22.171194>,  <31.077372, 38.086029, 22.143747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016247, 38.480377, 22.171194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114861, 0.086679, -0.989593,
		-0.981557, -0.143342, -0.126484,
		-0.152814, 0.985870, 0.068616,
		30.970402, 38.776138, 22.191778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588375, 38.246750, 21.591087>,  <31.077372, 38.086029, 22.143747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588375, 38.246750, 21.591087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792923, 38.571583, 21.703533>,  <30.915651, 38.766483, 21.771000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792923, 38.571583, 21.703533>,  <30.588375, 38.246750, 21.591087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792923, 38.571583, 21.703533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126649, 0.252329, -0.959318,
		-0.849978, 0.526167, 0.026184,
		0.511368, 0.812083, 0.281113,
		30.946333, 38.815208, 21.787867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225410, 38.752613, 21.367647>,  <30.588375, 38.246750, 21.591087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225410, 38.752613, 21.367647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587067, 38.920265, 21.400782>,  <30.804060, 39.020859, 21.420662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587067, 38.920265, 21.400782>,  <30.225410, 38.752613, 21.367647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587067, 38.920265, 21.400782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007181, 0.208767, -0.977939,
		-0.427179, 0.883597, 0.191764,
		0.904139, 0.419132, 0.082836,
		30.858309, 39.046005, 21.425632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173332, 39.392334, 20.926426>,  <30.225410, 38.752613, 21.367647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173332, 39.392334, 20.926426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553699, 39.277660, 20.973017>,  <30.781919, 39.208858, 21.000971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553699, 39.277660, 20.973017>,  <30.173332, 39.392334, 20.926426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553699, 39.277660, 20.973017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154746, 0.114593, -0.981286,
		0.267968, 0.951148, 0.153331,
		0.950919, -0.286681, 0.116479,
		30.838976, 39.191658, 21.007959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568296, 39.877407, 20.613256>,  <30.173332, 39.392334, 20.926426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568296, 39.877407, 20.613256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805399, 39.556145, 20.637211>,  <30.947660, 39.363388, 20.651583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805399, 39.556145, 20.637211>,  <30.568296, 39.877407, 20.613256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805399, 39.556145, 20.637211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233618, 0.100306, -0.967141,
		0.770754, 0.587270, 0.247087,
		0.592757, -0.803152, 0.059886,
		30.983227, 39.315201, 20.655176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297594, 40.028732, 20.330635>,  <30.568296, 39.877407, 20.613256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297594, 40.028732, 20.330635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235321, 39.634731, 20.300896>,  <31.197958, 39.398331, 20.283052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235321, 39.634731, 20.300896>,  <31.297594, 40.028732, 20.330635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235321, 39.634731, 20.300896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261068, 0.031563, -0.964804,
		0.952684, -0.169612, 0.252240,
		-0.155681, -0.985005, -0.074350,
		31.188616, 39.339230, 20.278591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729742, 39.862080, 19.716419>,  <31.297594, 40.028732, 20.330635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729742, 39.862080, 19.716419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522718, 39.533772, 19.813135>,  <31.398504, 39.336784, 19.871164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522718, 39.533772, 19.813135>,  <31.729742, 39.862080, 19.716419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522718, 39.533772, 19.813135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194280, -0.387928, -0.900981,
		0.833299, -0.419335, 0.360236,
		-0.517559, -0.820774, 0.241792,
		31.367451, 39.287540, 19.885674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.377121, 32.476379, 20.706106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265974, 32.860329, 20.690975>,  <31.199286, 33.090698, 20.681896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265974, 32.860329, 20.690975>,  <31.377121, 32.476379, 20.706106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265974, 32.860329, 20.690975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481455, 0.173234, 0.859181,
		0.831259, 0.220526, -0.510272,
		-0.277868, 0.959874, -0.037829,
		31.182613, 33.148293, 20.679626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912609, 32.781403, 21.020428>,  <31.377121, 32.476379, 20.706106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912609, 32.781403, 21.020428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.613247, 33.046654, 21.025370>,  <31.433630, 33.205803, 21.028336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.613247, 33.046654, 21.025370>,  <31.912609, 32.781403, 21.020428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613247, 33.046654, 21.025370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314949, 0.338935, 0.886527,
		0.583689, 0.667375, -0.462511,
		-0.748408, 0.663124, 0.012356,
		31.388725, 33.245590, 21.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253254, 33.416737, 21.182631>,  <31.912609, 32.781403, 21.020428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253254, 33.416737, 21.182631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.861599, 33.437469, 21.261227>,  <31.626606, 33.449909, 21.308384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.861599, 33.437469, 21.261227>,  <32.253254, 33.416737, 21.182631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861599, 33.437469, 21.261227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203204, 0.257211, 0.944749,
		-0.001571, 0.964964, -0.262376,
		-0.979135, 0.051832, 0.196489,
		31.567858, 33.453018, 21.320173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271538, 34.036137, 21.463690>,  <32.253254, 33.416737, 21.182631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271538, 34.036137, 21.463690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.951565, 33.831970, 21.589920>,  <31.759583, 33.709469, 21.665659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.951565, 33.831970, 21.589920>,  <32.271538, 34.036137, 21.463690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951565, 33.831970, 21.589920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160580, 0.324633, 0.932109,
		-0.578210, 0.796297, -0.177721,
		-0.799930, -0.510416, 0.315575,
		31.711586, 33.678844, 21.684593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876530, 34.559502, 21.984673>,  <32.271538, 34.036137, 21.463690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876530, 34.559502, 21.984673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791010, 34.171368, 22.029816>,  <31.739698, 33.938488, 22.056902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791010, 34.171368, 22.029816>,  <31.876530, 34.559502, 21.984673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791010, 34.171368, 22.029816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157684, 0.079733, 0.984265,
		-0.964067, 0.228233, 0.135960,
		-0.213802, -0.970336, 0.112857,
		31.726870, 33.880268, 22.063673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679741, 34.626648, 22.543970>,  <31.876530, 34.559502, 21.984673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679741, 34.626648, 22.543970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669754, 34.227768, 22.515757>,  <31.663761, 33.988441, 22.498829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.669754, 34.227768, 22.515757>,  <31.679741, 34.626648, 22.543970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669754, 34.227768, 22.515757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069269, -0.072113, 0.994988,
		-0.997285, 0.019956, 0.070875,
		-0.024967, -0.997197, -0.070535,
		31.662264, 33.928608, 22.494596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151260, 34.349728, 23.003939>,  <31.679741, 34.626648, 22.543970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151260, 34.349728, 23.003939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423809, 34.063408, 22.942801>,  <31.587337, 33.891617, 22.906116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423809, 34.063408, 22.942801>,  <31.151260, 34.349728, 23.003939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423809, 34.063408, 22.942801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111990, -0.104412, 0.988209,
		-0.723319, -0.690455, 0.009019,
		0.681372, -0.715800, -0.152847,
		31.628222, 33.848667, 22.896946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020231, 33.812443, 23.516407>,  <31.151260, 34.349728, 23.003939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020231, 33.812443, 23.516407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.403635, 33.760437, 23.414936>,  <31.633678, 33.729233, 23.354053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.403635, 33.760437, 23.414936>,  <31.020231, 33.812443, 23.516407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403635, 33.760437, 23.414936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239889, -0.112806, 0.964224,
		-0.153983, -0.985074, -0.076936,
		0.958511, -0.130018, -0.253679,
		31.691189, 33.721432, 23.338833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269106, 33.187138, 23.851156>,  <31.020231, 33.812443, 23.516407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269106, 33.187138, 23.851156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588274, 33.411991, 23.764139>,  <31.779776, 33.546902, 23.711929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588274, 33.411991, 23.764139>,  <31.269106, 33.187138, 23.851156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588274, 33.411991, 23.764139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348311, -0.135458, 0.927540,
		0.491935, -0.815877, -0.303882,
		0.797922, 0.562135, -0.217542,
		31.827650, 33.580631, 23.698877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607180, 33.016064, 24.417728>,  <31.269106, 33.187138, 23.851156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607180, 33.016064, 24.417728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836565, 33.306610, 24.266186>,  <31.974197, 33.480938, 24.175261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836565, 33.306610, 24.266186>,  <31.607180, 33.016064, 24.417728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836565, 33.306610, 24.266186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451606, 0.105549, 0.885952,
		0.683513, -0.679155, -0.267503,
		0.573464, 0.726366, -0.378855,
		32.008606, 33.524521, 24.152529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261822, 32.850384, 24.553173>,  <31.607180, 33.016064, 24.417728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261822, 32.850384, 24.553173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288147, 33.243973, 24.486893>,  <32.303944, 33.480125, 24.447124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.288147, 33.243973, 24.486893>,  <32.261822, 32.850384, 24.553173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288147, 33.243973, 24.486893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374610, 0.129548, 0.918087,
		0.924843, -0.122500, -0.360082,
		0.065817, 0.983977, -0.165701,
		32.307892, 33.539165, 24.437181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976673, 33.123795, 24.589270>,  <32.261822, 32.850384, 24.553173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976673, 33.123795, 24.589270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727348, 33.426624, 24.667578>,  <32.577755, 33.608322, 24.714563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.727348, 33.426624, 24.667578>,  <32.976673, 33.123795, 24.589270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727348, 33.426624, 24.667578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462763, 0.155311, 0.872770,
		0.630346, 0.634601, -0.447153,
		-0.623309, 0.757073, 0.195770,
		32.540356, 33.653748, 24.726309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432503, 33.611973, 24.888363>,  <32.976673, 33.123795, 24.589270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432503, 33.611973, 24.888363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069267, 33.737041, 24.999796>,  <32.851326, 33.812080, 25.066656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069267, 33.737041, 24.999796>,  <33.432503, 33.611973, 24.888363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069267, 33.737041, 24.999796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314220, 0.068984, 0.946841,
		0.276831, 0.947354, -0.160891,
		-0.908092, 0.312670, 0.278581,
		32.796841, 33.830841, 25.083370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495190, 34.359589, 25.115103>,  <33.432503, 33.611973, 24.888363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495190, 34.359589, 25.115103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189827, 34.212856, 25.327761>,  <33.006611, 34.124817, 25.455357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189827, 34.212856, 25.327761>,  <33.495190, 34.359589, 25.115103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189827, 34.212856, 25.327761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456295, 0.276295, 0.845846,
		-0.457171, 0.888312, -0.043544,
		-0.763406, -0.366827, 0.531647,
		32.960804, 34.102810, 25.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140453, 35.084797, 24.742685>,  <33.495190, 34.359589, 25.115103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140453, 35.084797, 24.742685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514824, 35.225349, 24.733070>,  <33.739445, 35.309681, 24.727301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514824, 35.225349, 24.733070>,  <33.140453, 35.084797, 24.742685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514824, 35.225349, 24.733070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064863, -0.239045, -0.968840,
		-0.346182, 0.905200, -0.246520,
		0.935923, 0.351384, -0.024039,
		33.795601, 35.330765, 24.725859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133972, 35.519161, 24.203825>,  <33.140453, 35.084797, 24.742685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133972, 35.519161, 24.203825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514462, 35.410286, 24.261909>,  <33.742756, 35.344959, 24.296761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514462, 35.410286, 24.261909>,  <33.133972, 35.519161, 24.203825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514462, 35.410286, 24.261909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153026, 0.007581, -0.988193,
		0.267872, 0.962214, 0.048863,
		0.951224, -0.272187, 0.145213,
		33.799828, 35.328629, 24.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489437, 35.890579, 23.748663>,  <33.133972, 35.519161, 24.203825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489437, 35.890579, 23.748663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754959, 35.604069, 23.834745>,  <33.914272, 35.432163, 23.886395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754959, 35.604069, 23.834745>,  <33.489437, 35.890579, 23.748663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754959, 35.604069, 23.834745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368135, 0.062447, -0.927673,
		0.651027, 0.695022, 0.305138,
		0.663808, -0.716272, 0.215207,
		33.954102, 35.389187, 23.899307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133701, 36.143631, 23.443184>,  <33.489437, 35.890579, 23.748663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133701, 36.143631, 23.443184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163582, 35.746777, 23.483343>,  <34.181511, 35.508663, 23.507439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.163582, 35.746777, 23.483343>,  <34.133701, 36.143631, 23.443184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163582, 35.746777, 23.483343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243888, -0.079446, -0.966544,
		0.966922, 0.096693, 0.236036,
		0.074706, -0.992138, 0.100400,
		34.185993, 35.449135, 23.513464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764439, 35.995312, 23.029434>,  <34.133701, 36.143631, 23.443184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764439, 35.995312, 23.029434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.582127, 35.640701, 23.061275>,  <34.472740, 35.427937, 23.080379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.582127, 35.640701, 23.061275>,  <34.764439, 35.995312, 23.029434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582127, 35.640701, 23.061275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221234, -0.199457, -0.954606,
		0.862159, -0.417482, 0.287039,
		-0.455782, -0.886525, 0.079602,
		34.445393, 35.374744, 23.085155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080173, 35.551800, 22.577469>,  <34.764439, 35.995312, 23.029434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080173, 35.551800, 22.577469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748848, 35.333729, 22.629118>,  <34.550053, 35.202885, 22.660107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748848, 35.333729, 22.629118>,  <35.080173, 35.551800, 22.577469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748848, 35.333729, 22.629118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052347, -0.154150, -0.986660,
		0.557812, -0.824024, 0.099146,
		-0.828315, -0.545181, 0.129122,
		34.500355, 35.170174, 22.667854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132946, 34.971996, 22.296371>,  <35.080173, 35.551800, 22.577469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132946, 34.971996, 22.296371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740269, 35.048176, 22.296436>,  <34.504662, 35.093884, 22.296474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740269, 35.048176, 22.296436>,  <35.132946, 34.971996, 22.296371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740269, 35.048176, 22.296436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022221, -0.113702, -0.993266,
		-0.189147, -0.975091, 0.115852,
		-0.981697, 0.190447, 0.000161,
		34.445759, 35.105309, 22.296484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916019, 34.536987, 21.761265>,  <35.132946, 34.971996, 22.296371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916019, 34.536987, 21.761265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.604164, 34.787109, 21.774866>,  <34.417049, 34.937183, 21.783028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.604164, 34.787109, 21.774866>,  <34.916019, 34.536987, 21.761265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604164, 34.787109, 21.774866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061772, -0.022756, -0.997831,
		-0.623178, -0.780046, 0.056368,
		-0.779637, 0.625308, 0.034004,
		34.370274, 34.974701, 21.785067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325287, 34.239700, 21.282377>,  <34.916019, 34.536987, 21.761265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325287, 34.239700, 21.282377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235405, 34.626118, 21.333387>,  <34.181477, 34.857967, 21.363993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235405, 34.626118, 21.333387>,  <34.325287, 34.239700, 21.282377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235405, 34.626118, 21.333387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379757, 0.033704, -0.924472,
		-0.897381, -0.256163, 0.359289,
		-0.224706, 0.966046, 0.127525,
		34.167992, 34.915932, 21.371645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529823, 34.375736, 21.105341>,  <34.325287, 34.239700, 21.282377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529823, 34.375736, 21.105341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.705132, 34.735241, 21.100603>,  <33.810318, 34.950943, 21.097761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.705132, 34.735241, 21.100603>,  <33.529823, 34.375736, 21.105341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705132, 34.735241, 21.100603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468441, 0.217144, -0.856395,
		-0.767126, 0.380880, 0.516186,
		0.438270, 0.898766, -0.011842,
		33.836613, 35.004871, 21.097050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020119, 34.930061, 21.181208>,  <33.529823, 34.375736, 21.105341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020119, 34.930061, 21.181208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327774, 35.094494, 20.985479>,  <33.512367, 35.193153, 20.868042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327774, 35.094494, 20.985479>,  <33.020119, 34.930061, 21.181208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327774, 35.094494, 20.985479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576687, 0.116472, -0.808620,
		-0.275414, 0.904129, 0.326647,
		0.769142, 0.411078, -0.489321,
		33.558517, 35.217819, 20.838682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751087, 35.476173, 20.800959>,  <33.020119, 34.930061, 21.181208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751087, 35.476173, 20.800959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096142, 35.436954, 20.602467>,  <33.303173, 35.413422, 20.483372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096142, 35.436954, 20.602467>,  <32.751087, 35.476173, 20.800959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096142, 35.436954, 20.602467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484440, 0.122079, -0.866265,
		0.145515, 0.987666, 0.057812,
		0.862637, -0.098048, -0.496229,
		33.354935, 35.407539, 20.453598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591595, 35.764378, 20.190823>,  <32.751087, 35.476173, 20.800959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591595, 35.764378, 20.190823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.918793, 35.555206, 20.094959>,  <33.115112, 35.429703, 20.037441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.918793, 35.555206, 20.094959>,  <32.591595, 35.764378, 20.190823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918793, 35.555206, 20.094959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353843, -0.128939, -0.926375,
		0.453526, 0.842568, -0.290505,
		0.817991, -0.522928, -0.239660,
		33.164188, 35.398327, 20.023062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934986, 36.096363, 19.627245>,  <32.591595, 35.764378, 20.190823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934986, 36.096363, 19.627245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.005333, 35.702728, 19.637409>,  <33.047543, 35.466549, 19.643507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.005333, 35.702728, 19.637409>,  <32.934986, 36.096363, 19.627245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005333, 35.702728, 19.637409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279194, -0.074616, -0.957331,
		0.943992, 0.161271, -0.287874,
		0.175870, -0.984085, 0.025411,
		33.058094, 35.407501, 19.645033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520805, 36.601124, 19.381500>,  <32.934986, 36.096363, 19.627245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520805, 36.601124, 19.381500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538269, 36.998165, 19.336195>,  <33.548748, 37.236389, 19.309011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538269, 36.998165, 19.336195>,  <33.520805, 36.601124, 19.381500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538269, 36.998165, 19.336195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243867, 0.099355, 0.964706,
		0.968826, -0.069740, -0.237726,
		0.043659, 0.992605, -0.113265,
		33.551365, 37.295948, 19.302216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223385, 36.844021, 19.774214>,  <33.520805, 36.601124, 19.381500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223385, 36.844021, 19.774214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.963814, 37.142521, 19.714878>,  <33.808071, 37.321621, 19.679277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.963814, 37.142521, 19.714878>,  <34.223385, 36.844021, 19.774214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963814, 37.142521, 19.714878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089435, 0.268426, 0.959140,
		0.755578, 0.609143, -0.240929,
		-0.648925, 0.746252, -0.148339,
		33.769135, 37.366398, 19.670376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533386, 37.449371, 20.142282>,  <34.223385, 36.844021, 19.774214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533386, 37.449371, 20.142282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154659, 37.566895, 20.089802>,  <33.927422, 37.637409, 20.058313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154659, 37.566895, 20.089802>,  <34.533386, 37.449371, 20.142282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154659, 37.566895, 20.089802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016324, 0.451081, 0.892334,
		0.321359, 0.842735, -0.431887,
		-0.946817, 0.293809, -0.131203,
		33.870613, 37.655037, 20.050442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560764, 38.176113, 20.147655>,  <34.533386, 37.449371, 20.142282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560764, 38.176113, 20.147655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199013, 38.053596, 20.266508>,  <33.981964, 37.980087, 20.337820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199013, 38.053596, 20.266508>,  <34.560764, 38.176113, 20.147655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199013, 38.053596, 20.266508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140510, 0.443732, 0.885076,
		-0.402939, 0.842192, -0.358264,
		-0.904377, -0.306292, 0.297134,
		33.927700, 37.961708, 20.355648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235592, 38.831909, 20.347101>,  <34.560764, 38.176113, 20.147655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235592, 38.831909, 20.347101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.036888, 38.535568, 20.527929>,  <33.917667, 38.357761, 20.636427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.036888, 38.535568, 20.527929>,  <34.235592, 38.831909, 20.347101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036888, 38.535568, 20.527929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167379, 0.429325, 0.887504,
		-0.851597, 0.516541, -0.089267,
		-0.496757, -0.740854, 0.452070,
		33.887859, 38.313313, 20.663549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973450, 39.169720, 20.922710>,  <34.235592, 38.831909, 20.347101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973450, 39.169720, 20.922710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.931847, 38.779747, 21.001398>,  <33.906883, 38.545765, 21.048611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.931847, 38.779747, 21.001398>,  <33.973450, 39.169720, 20.922710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931847, 38.779747, 21.001398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141167, 0.181318, 0.973240,
		-0.984507, 0.128995, 0.118769,
		-0.104008, -0.974928, 0.196719,
		33.900642, 38.487270, 21.060413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326561, 38.992485, 21.390167>,  <33.973450, 39.169720, 20.922710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326561, 38.992485, 21.390167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.619728, 38.722633, 21.425287>,  <33.795628, 38.560722, 21.446360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.619728, 38.722633, 21.425287>,  <33.326561, 38.992485, 21.390167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619728, 38.722633, 21.425287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141161, 0.277048, 0.950430,
		-0.665516, -0.684189, 0.298285,
		0.732913, -0.674633, 0.087799,
		33.839603, 38.520245, 21.451628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071529, 38.489246, 21.858072>,  <33.326561, 38.992485, 21.390167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071529, 38.489246, 21.858072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471363, 38.480518, 21.865601>,  <33.711262, 38.475281, 21.870117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.471363, 38.480518, 21.865601>,  <33.071529, 38.489246, 21.858072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471363, 38.480518, 21.865601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014115, 0.198607, 0.979978,
		-0.025118, -0.979836, 0.198217,
		0.999585, -0.021817, 0.018819,
		33.771240, 38.473972, 21.871246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308487, 38.193302, 22.389542>,  <33.071529, 38.489246, 21.858072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308487, 38.193302, 22.389542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671078, 38.337032, 22.300837>,  <33.888634, 38.423271, 22.247614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671078, 38.337032, 22.300837>,  <33.308487, 38.193302, 22.389542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671078, 38.337032, 22.300837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202901, 0.089904, 0.975063,
		0.370303, -0.928872, 0.008589,
		0.906481, 0.359326, -0.221760,
		33.943024, 38.444828, 22.234308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855484, 37.768570, 22.798689>,  <33.308487, 38.193302, 22.389542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855484, 37.768570, 22.798689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014072, 38.129555, 22.731306>,  <34.109226, 38.346146, 22.690876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014072, 38.129555, 22.731306>,  <33.855484, 37.768570, 22.798689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014072, 38.129555, 22.731306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285723, 0.053085, 0.956841,
		0.872451, -0.427495, -0.236806,
		0.396474, 0.902458, -0.168459,
		34.133015, 38.400291, 22.680769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421398, 37.762177, 23.208162>,  <33.855484, 37.768570, 22.798689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421398, 37.762177, 23.208162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398315, 38.155121, 23.137009>,  <34.384464, 38.390888, 23.094316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398315, 38.155121, 23.137009>,  <34.421398, 37.762177, 23.208162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398315, 38.155121, 23.137009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367069, 0.186576, 0.911290,
		0.928402, -0.012708, -0.371360,
		-0.057706, 0.982358, -0.177882,
		34.381004, 38.449829, 23.083645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014198, 37.981392, 23.507868>,  <34.421398, 37.762177, 23.208162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014198, 37.981392, 23.507868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743389, 38.275730, 23.502544>,  <34.580906, 38.452332, 23.499350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743389, 38.275730, 23.502544>,  <35.014198, 37.981392, 23.507868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743389, 38.275730, 23.502544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201657, 0.202866, 0.958217,
		0.707799, 0.646048, -0.285733,
		-0.677020, 0.735845, -0.013308,
		34.540283, 38.496483, 23.498552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345352, 38.518192, 23.814852>,  <35.014198, 37.981392, 23.507868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345352, 38.518192, 23.814852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976143, 38.671616, 23.826862>,  <34.754616, 38.763672, 23.834068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976143, 38.671616, 23.826862>,  <35.345352, 38.518192, 23.814852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976143, 38.671616, 23.826862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140467, 0.263320, 0.954427,
		0.358174, 0.885181, -0.296929,
		-0.923028, 0.383560, 0.030024,
		34.699234, 38.786682, 23.835869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398388, 39.229343, 24.097900>,  <35.345352, 38.518192, 23.814852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398388, 39.229343, 24.097900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020912, 39.108257, 24.151291>,  <34.794426, 39.035606, 24.183325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020912, 39.108257, 24.151291>,  <35.398388, 39.229343, 24.097900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020912, 39.108257, 24.151291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047862, 0.274287, 0.960456,
		-0.327354, 0.912760, -0.244353,
		-0.943689, -0.302714, 0.133476,
		34.737804, 39.017445, 24.191334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.149059, 39.130413, 19.427162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762222, 39.050735, 19.490477>,  <31.530121, 39.002930, 19.528465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762222, 39.050735, 19.490477>,  <32.149059, 39.130413, 19.427162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762222, 39.050735, 19.490477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051653, -0.455454, -0.888760,
		0.249128, -0.867688, 0.430177,
		-0.967092, -0.199195, 0.158285,
		31.472095, 38.990978, 19.537962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099136, 38.505913, 19.113672>,  <32.149059, 39.130413, 19.427162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099136, 38.505913, 19.113672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726835, 38.650005, 19.138784>,  <31.503456, 38.736462, 19.153851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726835, 38.650005, 19.138784>,  <32.099136, 38.505913, 19.113672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726835, 38.650005, 19.138784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154655, -0.232239, -0.960285,
		-0.331344, -0.903493, 0.271868,
		-0.930748, 0.360231, 0.062779,
		31.447611, 38.758076, 19.157618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819450, 38.055634, 18.787418>,  <32.099136, 38.505913, 19.113672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819450, 38.055634, 18.787418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536757, 38.338409, 18.776424>,  <31.367140, 38.508076, 18.769829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536757, 38.338409, 18.776424>,  <31.819450, 38.055634, 18.787418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536757, 38.338409, 18.776424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251462, -0.287320, -0.924237,
		-0.661280, -0.646280, 0.380829,
		-0.706736, 0.706944, -0.027484,
		31.324736, 38.550491, 18.768179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362942, 37.741634, 18.412027>,  <31.819450, 38.055634, 18.787418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362942, 37.741634, 18.412027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261385, 38.128506, 18.407896>,  <31.200451, 38.360630, 18.405418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261385, 38.128506, 18.407896>,  <31.362942, 37.741634, 18.412027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261385, 38.128506, 18.407896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402547, -0.115367, -0.908101,
		-0.879486, -0.226401, 0.418625,
		-0.253890, 0.967178, -0.010327,
		31.185219, 38.418659, 18.404799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789944, 37.740349, 18.005907>,  <31.362942, 37.741634, 18.412027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789944, 37.740349, 18.005907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.885317, 38.128811, 18.005857>,  <30.942541, 38.361889, 18.005827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.885317, 38.128811, 18.005857>,  <30.789944, 37.740349, 18.005907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885317, 38.128811, 18.005857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289174, 0.070874, -0.954649,
		-0.927108, 0.227655, 0.297733,
		0.238432, 0.971159, -0.000124,
		30.956846, 38.420158, 18.005821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187819, 38.187660, 17.802269>,  <30.789944, 37.740349, 18.005907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187819, 38.187660, 17.802269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518883, 38.380138, 17.686735>,  <30.717522, 38.495628, 17.617414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518883, 38.380138, 17.686735>,  <30.187819, 38.187660, 17.802269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518883, 38.380138, 17.686735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437661, 0.231230, -0.868899,
		-0.351328, 0.845564, 0.401982,
		0.827661, 0.481200, -0.288833,
		30.767181, 38.524498, 17.600086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029833, 38.884979, 17.456045>,  <30.187819, 38.187660, 17.802269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029833, 38.884979, 17.456045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.402138, 38.800049, 17.336983>,  <30.625521, 38.749092, 17.265545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.402138, 38.800049, 17.336983>,  <30.029833, 38.884979, 17.456045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402138, 38.800049, 17.336983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290120, 0.066560, -0.954673,
		0.222513, 0.974930, 0.000352,
		0.930762, -0.212325, -0.297657,
		30.681366, 38.736351, 17.247686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079077, 39.294796, 16.831762>,  <30.029833, 38.884979, 17.456045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079077, 39.294796, 16.831762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388306, 39.042095, 16.808964>,  <30.573843, 38.890476, 16.795284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388306, 39.042095, 16.808964>,  <30.079077, 39.294796, 16.831762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388306, 39.042095, 16.808964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145768, -0.089486, -0.985264,
		0.617342, 0.769988, -0.161268,
		0.773072, -0.631752, -0.056996,
		30.620228, 38.852570, 16.791864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613392, 39.498516, 16.268986>,  <30.079077, 39.294796, 16.831762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613392, 39.498516, 16.268986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714321, 39.112797, 16.301155>,  <30.774879, 38.881367, 16.320457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714321, 39.112797, 16.301155>,  <30.613392, 39.498516, 16.268986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714321, 39.112797, 16.301155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043264, -0.094273, -0.994606,
		0.966675, 0.247484, -0.065507,
		0.252325, -0.964295, 0.080424,
		30.790018, 38.823509, 16.325283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121986, 39.404446, 15.879867>,  <30.613392, 39.498516, 16.268986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121986, 39.404446, 15.879867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.003429, 39.025532, 15.928544>,  <30.932295, 38.798183, 15.957750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.003429, 39.025532, 15.928544>,  <31.121986, 39.404446, 15.879867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003429, 39.025532, 15.928544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155187, -0.077957, -0.984804,
		0.942374, -0.310773, -0.123900,
		-0.296392, -0.947282, 0.121693,
		30.914513, 38.741348, 15.965052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630693, 38.960350, 15.534060>,  <31.121986, 39.404446, 15.879867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630693, 38.960350, 15.534060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267706, 38.797256, 15.574556>,  <31.049913, 38.699402, 15.598854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267706, 38.797256, 15.574556>,  <31.630693, 38.960350, 15.534060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267706, 38.797256, 15.574556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045536, -0.335019, -0.941110,
		0.417641, -0.849420, 0.322586,
		-0.907470, -0.407736, 0.101239,
		30.995464, 38.674934, 15.604928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699770, 38.388588, 15.177850>,  <31.630693, 38.960350, 15.534060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699770, 38.388588, 15.177850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300653, 38.403118, 15.200088>,  <31.061184, 38.411839, 15.213430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300653, 38.403118, 15.200088>,  <31.699770, 38.388588, 15.177850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300653, 38.403118, 15.200088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064753, -0.346246, -0.935906,
		-0.014749, -0.937440, 0.347834,
		-0.997793, 0.036327, 0.055595,
		31.001316, 38.414017, 15.216766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341490, 37.708485, 14.963192>,  <31.699770, 38.388588, 15.177850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341490, 37.708485, 14.963192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144016, 38.047012, 14.883181>,  <31.025532, 38.250130, 14.835174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144016, 38.047012, 14.883181>,  <31.341490, 37.708485, 14.963192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144016, 38.047012, 14.883181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110287, -0.289086, -0.950929,
		-0.862619, -0.447400, 0.236056,
		-0.493686, 0.846323, -0.200029,
		30.995911, 38.300911, 14.823172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471333, 37.145546, 14.476899>,  <31.341490, 37.708485, 14.963192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471333, 37.145546, 14.476899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280313, 36.956486, 14.773155>,  <31.165703, 36.843048, 14.950909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280313, 36.956486, 14.773155>,  <31.471333, 37.145546, 14.476899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280313, 36.956486, 14.773155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849671, -0.462993, 0.252381,
		0.223622, 0.749824, 0.622702,
		-0.477548, -0.472654, 0.740639,
		31.137049, 36.814690, 14.995347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929129, 36.704853, 14.081454>,  <31.471333, 37.145546, 14.476899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929129, 36.704853, 14.081454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251724, 36.472424, 14.037774>,  <32.445282, 36.332966, 14.011566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251724, 36.472424, 14.037774>,  <31.929129, 36.704853, 14.081454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251724, 36.472424, 14.037774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104960, -0.041052, 0.993629,
		-0.581857, -0.812813, 0.027881,
		0.806490, -0.581076, -0.109199,
		32.493671, 36.298100, 14.005014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918524, 36.217133, 14.556971>,  <31.929129, 36.704853, 14.081454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918524, 36.217133, 14.556971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312004, 36.227798, 14.485839>,  <32.548092, 36.234200, 14.443160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312004, 36.227798, 14.485839>,  <31.918524, 36.217133, 14.556971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312004, 36.227798, 14.485839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171289, 0.161976, 0.971815,
		0.054716, -0.986435, 0.154768,
		0.983701, 0.026664, -0.177828,
		32.607113, 36.235798, 14.432490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200050, 35.778625, 15.102036>,  <31.918524, 36.217133, 14.556971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200050, 35.778625, 15.102036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488049, 36.013306, 14.953772>,  <32.660847, 36.154114, 14.864813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488049, 36.013306, 14.953772>,  <32.200050, 35.778625, 15.102036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488049, 36.013306, 14.953772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291777, 0.228687, 0.928746,
		0.629664, -0.776840, -0.006534,
		0.719993, 0.586704, -0.370660,
		32.704048, 36.189316, 14.842574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730434, 35.606331, 15.532255>,  <32.200050, 35.778625, 15.102036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730434, 35.606331, 15.532255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822685, 35.958145, 15.365769>,  <32.878036, 36.169231, 15.265878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822685, 35.958145, 15.365769>,  <32.730434, 35.606331, 15.532255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822685, 35.958145, 15.365769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457492, 0.279506, 0.844143,
		0.858785, -0.385099, -0.337916,
		0.230628, 0.879531, -0.416215,
		32.891872, 36.222004, 15.240905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469776, 35.707249, 15.605862>,  <32.730434, 35.606331, 15.532255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469776, 35.707249, 15.605862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318390, 36.073933, 15.554616>,  <33.227558, 36.293941, 15.523869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.318390, 36.073933, 15.554616>,  <33.469776, 35.707249, 15.605862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318390, 36.073933, 15.554616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635191, 0.357890, 0.684433,
		0.673276, 0.177654, -0.717732,
		-0.378461, 0.916708, -0.128114,
		33.204853, 36.348946, 15.516182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947189, 36.193729, 15.933735>,  <33.469776, 35.707249, 15.605862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947189, 36.193729, 15.933735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639111, 36.441635, 15.873490>,  <33.454262, 36.590378, 15.837344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639111, 36.441635, 15.873490>,  <33.947189, 36.193729, 15.933735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639111, 36.441635, 15.873490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294391, 0.554927, 0.778068,
		0.565798, 0.554929, -0.609858,
		-0.770199, 0.619766, -0.150611,
		33.408051, 36.627563, 15.828307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283638, 36.916500, 16.006971>,  <33.947189, 36.193729, 15.933735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283638, 36.916500, 16.006971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890854, 36.938564, 16.079309>,  <33.655182, 36.951801, 16.122711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890854, 36.938564, 16.079309>,  <34.283638, 36.916500, 16.006971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890854, 36.938564, 16.079309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179245, 0.575915, 0.797617,
		-0.060154, 0.815647, -0.575415,
		-0.981964, 0.055160, 0.180844,
		33.596264, 36.955112, 16.133562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088936, 37.671623, 16.150291>,  <34.283638, 36.916500, 16.006971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088936, 37.671623, 16.150291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806618, 37.456501, 16.334734>,  <33.637226, 37.327427, 16.445398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806618, 37.456501, 16.334734>,  <34.088936, 37.671623, 16.150291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806618, 37.456501, 16.334734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044504, 0.615952, 0.786525,
		-0.707013, 0.575650, -0.410804,
		-0.705799, -0.537801, 0.461105,
		33.594879, 37.295162, 16.473066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915604, 38.044907, 16.668869>,  <34.088936, 37.671623, 16.150291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915604, 38.044907, 16.668869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742844, 37.698570, 16.769892>,  <33.639187, 37.490768, 16.830505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742844, 37.698570, 16.769892>,  <33.915604, 38.044907, 16.668869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742844, 37.698570, 16.769892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031279, 0.265473, 0.963611,
		-0.901377, 0.424086, -0.087576,
		-0.431903, -0.865838, 0.252556,
		33.613274, 37.438820, 16.845659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324818, 38.185669, 17.096401>,  <33.915604, 38.044907, 16.668869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324818, 38.185669, 17.096401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431854, 37.810493, 17.184637>,  <33.496075, 37.585388, 17.237577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431854, 37.810493, 17.184637>,  <33.324818, 38.185669, 17.096401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431854, 37.810493, 17.184637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065873, 0.210593, 0.975352,
		-0.961279, -0.275523, -0.005433,
		0.267588, -0.937943, 0.220589,
		33.512131, 37.529110, 17.250814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942150, 38.117050, 17.662754>,  <33.324818, 38.185669, 17.096401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942150, 38.117050, 17.662754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216675, 37.826138, 17.665020>,  <33.381390, 37.651588, 17.666380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.216675, 37.826138, 17.665020>,  <32.942150, 38.117050, 17.662754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216675, 37.826138, 17.665020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064045, 0.068192, 0.995615,
		-0.724481, -0.682941, 0.093380,
		0.686313, -0.727284, 0.005665,
		33.422569, 37.607952, 17.666719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682995, 37.679653, 18.084307>,  <32.942150, 38.117050, 17.662754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682995, 37.679653, 18.084307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078430, 37.619583, 18.079437>,  <33.315689, 37.583542, 18.076515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078430, 37.619583, 18.079437>,  <32.682995, 37.679653, 18.084307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078430, 37.619583, 18.079437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015176, 0.018876, 0.999707,
		-0.149901, -0.988479, 0.020940,
		0.988584, -0.150175, -0.012172,
		33.375004, 37.574532, 18.075787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692638, 37.151356, 18.498896>,  <32.682995, 37.679653, 18.084307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692638, 37.151356, 18.498896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076694, 37.262215, 18.484350>,  <33.307129, 37.328732, 18.475622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076694, 37.262215, 18.484350>,  <32.692638, 37.151356, 18.498896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076694, 37.262215, 18.484350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024834, 0.045000, 0.998678,
		0.278418, -0.959773, 0.036324,
		0.960139, 0.277148, -0.036364,
		33.364735, 37.345360, 18.473440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019623, 36.640419, 18.876272>,  <32.692638, 37.151356, 18.498896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019623, 36.640419, 18.876272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229507, 36.980907, 18.872278>,  <33.355438, 37.185200, 18.869883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.229507, 36.980907, 18.872278>,  <33.019623, 36.640419, 18.876272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229507, 36.980907, 18.872278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069610, 0.054594, 0.996079,
		0.848427, -0.521964, 0.087900,
		0.524716, 0.851219, -0.009985,
		33.386921, 37.236275, 18.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319870, 35.946209, 18.985798>,  <33.019623, 36.640419, 18.876272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319870, 35.946209, 18.985798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.200745, 35.590755, 19.125305>,  <33.129269, 35.377483, 19.209009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.200745, 35.590755, 19.125305>,  <33.319870, 35.946209, 18.985798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200745, 35.590755, 19.125305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264292, -0.274316, -0.924608,
		0.917310, -0.367536, -0.153164,
		-0.297812, -0.888632, 0.348770,
		33.111401, 35.324165, 19.229937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647552, 35.468864, 18.520893>,  <33.319870, 35.946209, 18.985798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647552, 35.468864, 18.520893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366924, 35.237587, 18.687506>,  <33.198547, 35.098820, 18.787474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.366924, 35.237587, 18.687506>,  <33.647552, 35.468864, 18.520893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366924, 35.237587, 18.687506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156023, -0.445704, -0.881479,
		0.695314, -0.683404, 0.222480,
		-0.701566, -0.578193, 0.416531,
		33.156456, 35.064129, 18.812466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793301, 34.748970, 18.368689>,  <33.647552, 35.468864, 18.520893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793301, 34.748970, 18.368689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401573, 34.824665, 18.397303>,  <33.166534, 34.870083, 18.414471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401573, 34.824665, 18.397303>,  <33.793301, 34.748970, 18.368689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401573, 34.824665, 18.397303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144754, -0.408436, -0.901236,
		-0.141330, -0.892955, 0.427383,
		-0.979322, 0.189237, 0.071534,
		33.107777, 34.881435, 18.418762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501511, 34.362469, 17.967409>,  <33.793301, 34.748970, 18.368689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501511, 34.362469, 17.967409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164066, 34.567307, 18.032005>,  <32.961597, 34.690208, 18.070763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164066, 34.567307, 18.032005>,  <33.501511, 34.362469, 17.967409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164066, 34.567307, 18.032005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345264, -0.286998, -0.893546,
		-0.411229, -0.809565, 0.418922,
		-0.843613, 0.512091, 0.161492,
		32.910984, 34.720932, 18.080454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986992, 33.835938, 17.919870>,  <33.501511, 34.362469, 17.967409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986992, 33.835938, 17.919870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783325, 34.177227, 17.874687>,  <32.661125, 34.382000, 17.847578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783325, 34.177227, 17.874687>,  <32.986992, 33.835938, 17.919870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783325, 34.177227, 17.874687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417865, -0.359809, -0.834222,
		-0.752419, -0.377560, 0.539735,
		-0.509170, 0.853221, -0.112958,
		32.630573, 34.433193, 17.840799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365463, 33.475880, 17.848166>,  <32.986992, 33.835938, 17.919870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365463, 33.475880, 17.848166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387474, 33.854012, 17.719593>,  <32.400681, 34.080891, 17.642448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387474, 33.854012, 17.719593>,  <32.365463, 33.475880, 17.848166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387474, 33.854012, 17.719593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385031, -0.276934, -0.880374,
		-0.921262, 0.172204, 0.348744,
		0.055025, 0.945333, -0.321432,
		32.403980, 34.137611, 17.623163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794861, 33.543945, 17.396559>,  <32.365463, 33.475880, 17.848166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794861, 33.543945, 17.396559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.023499, 33.854816, 17.291273>,  <32.160679, 34.041340, 17.228102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.023499, 33.854816, 17.291273>,  <31.794861, 33.543945, 17.396559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023499, 33.854816, 17.291273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131500, -0.229871, -0.964296,
		-0.809932, 0.585797, -0.029194,
		0.571593, 0.777175, -0.263213,
		32.194977, 34.087971, 17.212309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231619, 33.856487, 17.721870>,  <31.794861, 33.543945, 17.396559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231619, 33.856487, 17.721870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857216, 33.786694, 17.844147>,  <30.632574, 33.744816, 17.917513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857216, 33.786694, 17.844147>,  <31.231619, 33.856487, 17.721870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857216, 33.786694, 17.844147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259451, 0.244864, 0.934198,
		-0.237857, 0.953727, -0.183924,
		-0.936007, -0.174486, 0.305689,
		30.576414, 33.734348, 17.935854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006521, 34.384979, 18.178928>,  <31.231619, 33.856487, 17.721870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006521, 34.384979, 18.178928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825901, 34.035473, 18.251181>,  <30.717529, 33.825768, 18.294533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825901, 34.035473, 18.251181>,  <31.006521, 34.384979, 18.178928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825901, 34.035473, 18.251181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243630, 0.074011, 0.967040,
		-0.858339, 0.480675, 0.179457,
		-0.451551, -0.873770, 0.180633,
		30.690435, 33.773342, 18.305370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710604, 34.486320, 18.818401>,  <31.006521, 34.384979, 18.178928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710604, 34.486320, 18.818401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668907, 34.089828, 18.785904>,  <30.643888, 33.851933, 18.766405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668907, 34.089828, 18.785904>,  <30.710604, 34.486320, 18.818401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668907, 34.089828, 18.785904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114575, -0.093116, 0.989041,
		-0.987930, 0.093792, 0.123276,
		-0.104243, -0.991228, -0.081246,
		30.637634, 33.792461, 18.761530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242718, 34.226902, 19.385046>,  <30.710604, 34.486320, 18.818401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242718, 34.226902, 19.385046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.416542, 33.884010, 19.274548>,  <30.520836, 33.678276, 19.208248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.416542, 33.884010, 19.274548>,  <30.242718, 34.226902, 19.385046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416542, 33.884010, 19.274548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091319, -0.263203, 0.960409,
		-0.896001, -0.442582, -0.036096,
		0.434560, -0.857231, -0.276246,
		30.546909, 33.626842, 19.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823118, 33.609875, 19.652170>,  <30.242718, 34.226902, 19.385046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823118, 33.609875, 19.652170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208658, 33.514061, 19.605490>,  <30.439981, 33.456573, 19.577482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208658, 33.514061, 19.605490>,  <29.823118, 33.609875, 19.652170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208658, 33.514061, 19.605490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087028, -0.130946, 0.987562,
		-0.251842, -0.962015, -0.105365,
		0.963847, -0.239540, -0.116700,
		30.497812, 33.442200, 19.570480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966503, 33.030029, 20.142939>,  <29.823118, 33.609875, 19.652170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966503, 33.030029, 20.142939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330448, 33.174221, 20.060757>,  <30.548815, 33.260735, 20.011448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330448, 33.174221, 20.060757>,  <29.966503, 33.030029, 20.142939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330448, 33.174221, 20.060757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268148, -0.133001, 0.954153,
		0.316625, -0.923237, -0.217673,
		0.909860, 0.360477, -0.205453,
		30.603407, 33.282364, 19.999121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466362, 32.572411, 20.539183>,  <29.966503, 33.030029, 20.142939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466362, 32.572411, 20.539183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641169, 32.918594, 20.441200>,  <30.746054, 33.126305, 20.382412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641169, 32.918594, 20.441200>,  <30.466362, 32.572411, 20.539183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641169, 32.918594, 20.441200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416026, 0.046961, 0.908140,
		0.797458, -0.498780, -0.339529,
		0.437017, 0.865456, -0.244955,
		30.772274, 33.178230, 20.367714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.643555, 37.098198, 15.515223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931419, 37.355053, 15.409586>,  <28.104137, 37.509167, 15.346204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931419, 37.355053, 15.409586>,  <27.643555, 37.098198, 15.515223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931419, 37.355053, 15.409586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518514, -0.244079, 0.819493,
		0.461770, -0.726693, -0.508612,
		0.719661, 0.642140, -0.264092,
		28.147318, 37.547695, 15.330359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416164, 36.775146, 15.442102>,  <27.643555, 37.098198, 15.515223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416164, 36.775146, 15.442102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398481, 37.163429, 15.536570>,  <28.387871, 37.396400, 15.593249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398481, 37.163429, 15.536570>,  <28.416164, 36.775146, 15.442102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398481, 37.163429, 15.536570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505674, -0.182135, 0.843280,
		0.861591, 0.156705, -0.482809,
		-0.044210, 0.970706, 0.236167,
		28.385218, 37.454639, 15.607420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910849, 36.734768, 16.009668>,  <28.416164, 36.775146, 15.442102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910849, 36.734768, 16.009668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770975, 37.106670, 16.055767>,  <28.687052, 37.329811, 16.083426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770975, 37.106670, 16.055767>,  <28.910849, 36.734768, 16.009668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770975, 37.106670, 16.055767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335739, 0.009519, 0.941907,
		0.874643, 0.368062, -0.315483,
		-0.349683, 0.929752, 0.115247,
		28.666071, 37.385597, 16.090342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322132, 37.066841, 16.464870>,  <28.910849, 36.734768, 16.009668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322132, 37.066841, 16.464870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004744, 37.309986, 16.476858>,  <28.814310, 37.455875, 16.484051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004744, 37.309986, 16.476858>,  <29.322132, 37.066841, 16.464870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004744, 37.309986, 16.476858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182886, 0.191184, 0.964366,
		0.580477, 0.770679, -0.262869,
		-0.793473, 0.607867, 0.029969,
		28.766701, 37.492348, 16.485849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496830, 37.677013, 16.946636>,  <29.322132, 37.066841, 16.464870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496830, 37.677013, 16.946636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098352, 37.646736, 16.929371>,  <28.859266, 37.628571, 16.919012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098352, 37.646736, 16.929371>,  <29.496830, 37.677013, 16.946636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098352, 37.646736, 16.929371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051499, 0.111877, 0.992387,
		-0.070292, 0.990834, -0.115350,
		-0.996196, -0.075698, -0.043163,
		28.799494, 37.624027, 16.916422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153362, 38.210247, 17.370493>,  <29.496830, 37.677013, 16.946636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153362, 38.210247, 17.370493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847010, 37.954098, 17.347334>,  <28.663198, 37.800407, 17.333439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847010, 37.954098, 17.347334>,  <29.153362, 38.210247, 17.370493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847010, 37.954098, 17.347334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099160, 0.028665, 0.994659,
		-0.635290, 0.767532, -0.085453,
		-0.765881, -0.640370, -0.057898,
		28.617245, 37.761986, 17.329964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585964, 38.552692, 17.842083>,  <29.153362, 38.210247, 17.370493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585964, 38.552692, 17.842083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477087, 38.170036, 17.800596>,  <28.411760, 37.940445, 17.775703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477087, 38.170036, 17.800596>,  <28.585964, 38.552692, 17.842083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477087, 38.170036, 17.800596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301432, -0.017591, 0.953325,
		-0.913811, 0.290752, -0.283572,
		-0.272193, -0.956637, -0.103716,
		28.395430, 37.883045, 17.769482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875069, 38.518719, 18.113600>,  <28.585964, 38.552692, 17.842083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875069, 38.518719, 18.113600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007500, 38.141357, 18.105753>,  <28.086958, 37.914940, 18.101044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007500, 38.141357, 18.105753>,  <27.875069, 38.518719, 18.113600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007500, 38.141357, 18.105753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220727, -0.097644, 0.970436,
		-0.917425, -0.316958, -0.240562,
		0.331077, -0.943400, -0.019619,
		28.106823, 37.858337, 18.099867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426411, 38.093121, 18.500635>,  <27.875069, 38.518719, 18.113600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426411, 38.093121, 18.500635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773495, 37.894367, 18.506144>,  <27.981745, 37.775116, 18.509449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773495, 37.894367, 18.506144>,  <27.426411, 38.093121, 18.500635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773495, 37.894367, 18.506144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163046, -0.258334, 0.952197,
		-0.469575, -0.828474, -0.305173,
		0.867707, -0.496885, 0.013772,
		28.033808, 37.745300, 18.510275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245787, 37.422367, 18.788376>,  <27.426411, 38.093121, 18.500635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245787, 37.422367, 18.788376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631136, 37.501793, 18.860476>,  <27.862345, 37.549446, 18.903736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631136, 37.501793, 18.860476>,  <27.245787, 37.422367, 18.788376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631136, 37.501793, 18.860476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151893, -0.149918, 0.976961,
		0.221010, -0.968554, -0.114267,
		0.963371, 0.198562, 0.180250,
		27.920147, 37.561359, 18.914551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404825, 37.032051, 19.344784>,  <27.245787, 37.422367, 18.788376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404825, 37.032051, 19.344784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726360, 37.269695, 19.356630>,  <27.919281, 37.412281, 19.363739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726360, 37.269695, 19.356630>,  <27.404825, 37.032051, 19.344784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726360, 37.269695, 19.356630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015359, -0.029043, 0.999460,
		0.594653, -0.803857, -0.014221,
		0.803836, 0.594113, 0.029617,
		27.967512, 37.447929, 19.365515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931799, 36.762039, 19.826630>,  <27.404825, 37.032051, 19.344784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931799, 36.762039, 19.826630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990677, 37.156013, 19.790323>,  <28.026003, 37.392399, 19.768539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990677, 37.156013, 19.790323>,  <27.931799, 36.762039, 19.826630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990677, 37.156013, 19.790323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008429, 0.090512, 0.995860,
		0.989072, -0.147351, 0.005021,
		0.147195, 0.984934, -0.090765,
		28.034836, 37.451492, 19.763094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483318, 36.163990, 19.985807>,  <27.931799, 36.762039, 19.826630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483318, 36.163990, 19.985807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527971, 35.796860, 20.138193>,  <28.554762, 35.576580, 20.229626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527971, 35.796860, 20.138193>,  <28.483318, 36.163990, 19.985807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527971, 35.796860, 20.138193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295041, -0.396687, -0.869247,
		0.948941, -0.015366, -0.315079,
		0.111631, -0.917825, 0.380966,
		28.561460, 35.521511, 20.252483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816927, 35.871403, 19.422113>,  <28.483318, 36.163990, 19.985807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816927, 35.871403, 19.422113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640274, 35.598515, 19.655195>,  <28.534283, 35.434784, 19.795044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640274, 35.598515, 19.655195>,  <28.816927, 35.871403, 19.422113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640274, 35.598515, 19.655195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363980, -0.457390, -0.811365,
		0.820049, -0.570416, -0.046315,
		-0.441632, -0.682216, 0.582703,
		28.507784, 35.393848, 19.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119755, 35.249226, 19.226849>,  <28.816927, 35.871403, 19.422113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119755, 35.249226, 19.226849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758257, 35.177219, 19.382200>,  <28.541357, 35.134018, 19.475412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758257, 35.177219, 19.382200>,  <29.119755, 35.249226, 19.226849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758257, 35.177219, 19.382200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325011, -0.301915, -0.896223,
		0.278588, -0.936186, 0.214348,
		-0.903746, -0.180011, 0.388381,
		28.487133, 35.123215, 19.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856163, 34.724281, 18.881037>,  <29.119755, 35.249226, 19.226849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856163, 34.724281, 18.881037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510284, 34.824932, 19.054926>,  <28.302757, 34.885323, 19.159260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510284, 34.824932, 19.054926>,  <28.856163, 34.724281, 18.881037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510284, 34.824932, 19.054926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501338, -0.378863, -0.777897,
		-0.031041, -0.890587, 0.453753,
		-0.864695, 0.251630, 0.434725,
		28.250875, 34.900421, 19.185343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537487, 34.094971, 18.767385>,  <28.856163, 34.724281, 18.881037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537487, 34.094971, 18.767385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286381, 34.401573, 18.821602>,  <28.135717, 34.585537, 18.854132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286381, 34.401573, 18.821602>,  <28.537487, 34.094971, 18.767385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286381, 34.401573, 18.821602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470530, -0.234962, -0.850526,
		-0.620090, -0.597708, 0.508167,
		-0.627766, 0.766510, 0.135542,
		28.098051, 34.631527, 18.862265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845955, 33.734943, 18.799393>,  <28.537487, 34.094971, 18.767385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845955, 33.734943, 18.799393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796947, 34.125397, 18.727676>,  <27.767542, 34.359669, 18.684647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796947, 34.125397, 18.727676>,  <27.845955, 33.734943, 18.799393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796947, 34.125397, 18.727676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396344, -0.213743, -0.892874,
		-0.909890, -0.038334, 0.413074,
		-0.122519, 0.976138, -0.179289,
		27.760191, 34.418240, 18.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173388, 33.795437, 18.470793>,  <27.845955, 33.734943, 18.799393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173388, 33.795437, 18.470793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335548, 34.154015, 18.399187>,  <27.432844, 34.369160, 18.356224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335548, 34.154015, 18.399187>,  <27.173388, 33.795437, 18.470793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335548, 34.154015, 18.399187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520298, 0.065258, -0.851488,
		-0.751625, 0.438334, 0.492871,
		0.405400, 0.896440, -0.179015,
		27.457169, 34.422947, 18.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700596, 34.292126, 18.285172>,  <27.173388, 33.795437, 18.470793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700596, 34.292126, 18.285172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032564, 34.423176, 18.104551>,  <27.231745, 34.501804, 17.996180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032564, 34.423176, 18.104551>,  <26.700596, 34.292126, 18.285172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032564, 34.423176, 18.104551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511197, 0.122461, -0.850694,
		-0.223412, 0.936838, 0.269114,
		0.829918, 0.327625, -0.451550,
		27.281540, 34.521461, 17.969086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424223, 34.821529, 17.905153>,  <26.700596, 34.292126, 18.285172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424223, 34.821529, 17.905153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786343, 34.734104, 17.759462>,  <27.003614, 34.681648, 17.672047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786343, 34.734104, 17.759462>,  <26.424223, 34.821529, 17.905153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786343, 34.734104, 17.759462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345926, 0.118270, -0.930778,
		0.246512, 0.968629, 0.031463,
		0.905300, -0.218564, -0.364228,
		27.057932, 34.668533, 17.650194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362036, 35.192390, 17.299965>,  <26.424223, 34.821529, 17.905153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362036, 35.192390, 17.299965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686375, 34.961052, 17.264078>,  <26.880978, 34.822250, 17.242546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686375, 34.961052, 17.264078>,  <26.362036, 35.192390, 17.299965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686375, 34.961052, 17.264078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143690, -0.048121, -0.988452,
		0.567346, 0.814374, -0.122121,
		0.810846, -0.578342, -0.089716,
		26.929628, 34.787548, 17.237164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793715, 35.505383, 16.843658>,  <26.362036, 35.192390, 17.299965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793715, 35.505383, 16.843658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900953, 35.120075, 16.837593>,  <26.965296, 34.888889, 16.833954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900953, 35.120075, 16.837593>,  <26.793715, 35.505383, 16.843658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900953, 35.120075, 16.837593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149552, -0.026065, -0.988410,
		0.951713, 0.267258, -0.151047,
		0.268098, -0.963272, -0.015163,
		26.981382, 34.831093, 16.833044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368097, 35.481655, 16.309822>,  <26.793715, 35.505383, 16.843658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368097, 35.481655, 16.309822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245649, 35.102512, 16.345295>,  <27.172180, 34.875027, 16.366579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245649, 35.102512, 16.345295>,  <27.368097, 35.481655, 16.309822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245649, 35.102512, 16.345295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042446, -0.079472, -0.995933,
		0.951047, -0.308638, -0.015904,
		-0.306118, -0.947854, 0.088682,
		27.153814, 34.818157, 16.371899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862535, 35.176781, 15.873721>,  <27.368097, 35.481655, 16.309822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862535, 35.176781, 15.873721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530865, 34.955750, 15.907494>,  <27.331863, 34.823132, 15.927757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530865, 34.955750, 15.907494>,  <27.862535, 35.176781, 15.873721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530865, 34.955750, 15.907494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016790, -0.175595, -0.984319,
		0.558736, -0.814756, 0.154877,
		-0.829176, -0.552575, 0.084431,
		27.282112, 34.789978, 15.932823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992735, 34.619076, 15.495207>,  <27.862535, 35.176781, 15.873721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992735, 34.619076, 15.495207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593565, 34.611130, 15.519692>,  <27.354063, 34.606361, 15.534384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593565, 34.611130, 15.519692>,  <27.992735, 34.619076, 15.495207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593565, 34.611130, 15.519692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056234, -0.193418, -0.979504,
		0.031296, -0.980915, 0.191900,
		-0.997927, -0.019864, 0.061214,
		27.294188, 34.605171, 15.538056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597298, 34.091621, 15.638518>,  <27.992735, 34.619076, 15.495207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597298, 34.091621, 15.638518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857763, 33.819824, 15.503300>,  <29.014042, 33.656746, 15.422169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857763, 33.819824, 15.503300>,  <28.597298, 34.091621, 15.638518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857763, 33.819824, 15.503300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253141, -0.225456, 0.940792,
		-0.715476, -0.698183, 0.025198,
		0.651164, -0.679492, -0.338047,
		29.053112, 33.615978, 15.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599939, 33.515610, 16.116285>,  <28.597298, 34.091621, 15.638518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599939, 33.515610, 16.116285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942455, 33.441135, 15.923578>,  <29.147964, 33.396450, 15.807954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942455, 33.441135, 15.923578>,  <28.599939, 33.515610, 16.116285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942455, 33.441135, 15.923578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419139, -0.294568, 0.858809,
		-0.301796, -0.937321, -0.174207,
		0.856296, -0.186168, -0.481767,
		29.199343, 33.385281, 15.779047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858618, 32.787315, 16.232927>,  <28.599939, 33.515610, 16.116285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858618, 32.787315, 16.232927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.149376, 33.047909, 16.146032>,  <29.323832, 33.204266, 16.093895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.149376, 33.047909, 16.146032>,  <28.858618, 32.787315, 16.232927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149376, 33.047909, 16.146032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513114, -0.304981, 0.802310,
		0.456440, -0.694661, -0.555975,
		0.726895, 0.651485, -0.217235,
		29.367445, 33.243355, 16.080862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399448, 32.482357, 16.602573>,  <28.858618, 32.787315, 16.232927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399448, 32.482357, 16.602573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577745, 32.826248, 16.502829>,  <29.684723, 33.032581, 16.442982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577745, 32.826248, 16.502829>,  <29.399448, 32.482357, 16.602573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577745, 32.826248, 16.502829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452600, 0.023890, 0.891393,
		0.772314, -0.510192, -0.378464,
		0.445740, 0.859729, -0.249364,
		29.711468, 33.084167, 16.428019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020411, 32.340496, 16.844938>,  <29.399448, 32.482357, 16.602573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020411, 32.340496, 16.844938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996487, 32.738068, 16.808008>,  <29.982132, 32.976612, 16.785851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996487, 32.738068, 16.808008>,  <30.020411, 32.340496, 16.844938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996487, 32.738068, 16.808008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481188, 0.109745, 0.869721,
		0.874575, 0.007592, -0.484832,
		-0.059811, 0.993931, -0.092327,
		29.978544, 33.036247, 16.780310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715361, 32.634926, 17.111540>,  <30.020411, 32.340496, 16.844938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715361, 32.634926, 17.111540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423164, 32.906963, 17.136366>,  <30.247847, 33.070187, 17.151260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423164, 32.906963, 17.136366>,  <30.715361, 32.634926, 17.111540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423164, 32.906963, 17.136366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440327, 0.399584, 0.804018,
		0.522011, 0.614656, -0.591357,
		-0.730491, 0.680097, 0.062063,
		30.204018, 33.110992, 17.154985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026945, 33.188564, 17.214865>,  <30.715361, 32.634926, 17.111540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026945, 33.188564, 17.214865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658392, 33.276073, 17.343359>,  <30.437260, 33.328579, 17.420456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658392, 33.276073, 17.343359>,  <31.026945, 33.188564, 17.214865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658392, 33.276073, 17.343359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385729, 0.413444, 0.824789,
		0.047632, 0.883856, -0.465328,
		-0.921382, 0.218777, 0.321236,
		30.381977, 33.341705, 17.439730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390276, 33.915062, 16.927319>,  <31.026945, 33.188564, 17.214865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390276, 33.915062, 16.927319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749502, 34.074661, 16.853260>,  <31.965038, 34.170422, 16.808825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749502, 34.074661, 16.853260>,  <31.390276, 33.915062, 16.927319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749502, 34.074661, 16.853260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160151, -0.095431, -0.982469,
		-0.409670, 0.911973, -0.021804,
		0.898066, 0.398996, -0.185148,
		32.018921, 34.194359, 16.797716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269884, 34.381168, 16.382259>,  <31.390276, 33.915062, 16.927319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269884, 34.381168, 16.382259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664021, 34.324928, 16.343607>,  <31.900501, 34.291183, 16.320415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664021, 34.324928, 16.343607>,  <31.269884, 34.381168, 16.382259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664021, 34.324928, 16.343607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091827, 0.040279, -0.994960,
		0.143780, 0.989247, 0.026778,
		0.985340, -0.140597, -0.096631,
		31.959623, 34.282749, 16.314617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564837, 34.874874, 15.904741>,  <31.269884, 34.381168, 16.382259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564837, 34.874874, 15.904741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813179, 34.561409, 15.912826>,  <31.962185, 34.373329, 15.917676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.813179, 34.561409, 15.912826>,  <31.564837, 34.874874, 15.904741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813179, 34.561409, 15.912826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083013, 0.040086, -0.995742,
		0.779517, 0.619890, 0.089942,
		0.620856, -0.783664, 0.020211,
		31.999435, 34.326309, 15.918889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091877, 35.063866, 15.538770>,  <31.564837, 34.874874, 15.904741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091877, 35.063866, 15.538770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118324, 34.664753, 15.541997>,  <32.134193, 34.425285, 15.543933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118324, 34.664753, 15.541997>,  <32.091877, 35.063866, 15.538770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118324, 34.664753, 15.541997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123899, 0.000187, -0.992295,
		0.990089, 0.066613, 0.123636,
		0.066123, -0.997779, 0.008068,
		32.138161, 34.365417, 15.544417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626041, 34.989017, 15.012741>,  <32.091877, 35.063866, 15.538770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626041, 34.989017, 15.012741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.456276, 34.629978, 15.060405>,  <32.354416, 34.414555, 15.089003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.456276, 34.629978, 15.060405>,  <32.626041, 34.989017, 15.012741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456276, 34.629978, 15.060405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119456, -0.185952, -0.975270,
		0.897555, -0.399681, 0.186143,
		-0.424411, -0.897595, 0.119158,
		32.328953, 34.360699, 15.096152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051891, 34.499138, 14.705393>,  <32.626041, 34.989017, 15.012741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051891, 34.499138, 14.705393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703499, 34.302910, 14.716191>,  <32.494465, 34.185173, 14.722671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703499, 34.302910, 14.716191>,  <33.051891, 34.499138, 14.705393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703499, 34.302910, 14.716191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127788, -0.279252, -0.951677,
		0.474406, -0.825443, 0.305913,
		-0.870982, -0.490573, 0.026997,
		32.442204, 34.155739, 14.724290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260178, 33.854401, 14.334736>,  <33.051891, 34.499138, 14.705393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260178, 33.854401, 14.334736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860504, 33.862301, 14.348875>,  <32.620701, 33.867043, 14.357359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860504, 33.862301, 14.348875>,  <33.260178, 33.854401, 14.334736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860504, 33.862301, 14.348875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038141, -0.165988, -0.985390,
		-0.013593, -0.985930, 0.166605,
		-0.999180, 0.019749, 0.035349,
		32.560749, 33.868225, 14.359480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073494, 33.297466, 14.018640>,  <33.260178, 33.854401, 14.334736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073494, 33.297466, 14.018640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779331, 33.566158, 13.982958>,  <32.602833, 33.727375, 13.961549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779331, 33.566158, 13.982958>,  <33.073494, 33.297466, 14.018640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779331, 33.566158, 13.982958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066138, -0.059861, -0.996013,
		-0.674392, -0.738373, -0.000404,
		-0.735406, 0.671730, -0.089204,
		32.558708, 33.767677, 13.956197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608566, 33.022430, 13.617612>,  <33.073494, 33.297466, 14.018640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608566, 33.022430, 13.617612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.556919, 33.417854, 13.586418>,  <32.525928, 33.655109, 13.567702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.556919, 33.417854, 13.586418>,  <32.608566, 33.022430, 13.617612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556919, 33.417854, 13.586418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032070, -0.082763, -0.996053,
		-0.991110, -0.126111, 0.042390,
		-0.129121, 0.988557, -0.077983,
		32.518181, 33.714420, 13.563024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.640930, 36.580177, 29.607166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629189, 36.948704, 29.452084>,  <34.622143, 37.169819, 29.359034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629189, 36.948704, 29.452084>,  <34.640930, 36.580177, 29.607166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629189, 36.948704, 29.452084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333266, -0.374701, -0.865178,
		-0.942376, 0.103814, 0.318042,
		-0.029353, 0.921316, -0.387707,
		34.620384, 37.225098, 29.335772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928986, 36.747204, 29.316622>,  <34.640930, 36.580177, 29.607166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928986, 36.747204, 29.316622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199554, 36.958435, 29.111261>,  <34.361897, 37.085175, 28.988045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199554, 36.958435, 29.111261>,  <33.928986, 36.747204, 29.316622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199554, 36.958435, 29.111261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282613, -0.457606, -0.843046,
		-0.680131, 0.715352, -0.160295,
		0.676426, 0.528080, -0.513399,
		34.402481, 37.116859, 28.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633831, 36.810867, 28.661495>,  <33.928986, 36.747204, 29.316622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633831, 36.810867, 28.661495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017876, 36.892788, 28.585352>,  <34.248302, 36.941940, 28.539667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017876, 36.892788, 28.585352>,  <33.633831, 36.810867, 28.661495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017876, 36.892788, 28.585352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060377, -0.512891, -0.856328,
		-0.273007, 0.833667, -0.480070,
		0.960116, 0.204798, -0.190357,
		34.305912, 36.954227, 28.528244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613079, 36.791252, 27.979620>,  <33.633831, 36.810867, 28.661495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613079, 36.791252, 27.979620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002575, 36.757721, 28.064291>,  <34.236271, 36.737602, 28.115093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002575, 36.757721, 28.064291>,  <33.613079, 36.791252, 27.979620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002575, 36.757721, 28.064291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151828, -0.453722, -0.878114,
		0.169657, 0.887191, -0.429079,
		0.973738, -0.083832, 0.211678,
		34.294697, 36.732571, 28.127794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011337, 37.217903, 27.483242>,  <33.613079, 36.791252, 27.979620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011337, 37.217903, 27.483242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263565, 36.930443, 27.600492>,  <34.414902, 36.757965, 27.670843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263565, 36.930443, 27.600492>,  <34.011337, 37.217903, 27.483242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263565, 36.930443, 27.600492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045129, -0.410985, -0.910525,
		0.774817, 0.560923, -0.291587,
		0.630572, -0.718649, 0.293124,
		34.452736, 36.714848, 27.688429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594955, 37.308506, 26.999365>,  <34.011337, 37.217903, 27.483242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594955, 37.308506, 26.999365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670788, 36.947403, 27.153814>,  <34.716286, 36.730740, 27.246483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670788, 36.947403, 27.153814>,  <34.594955, 37.308506, 26.999365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670788, 36.947403, 27.153814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059600, -0.403109, -0.913209,
		0.980054, 0.150116, -0.130226,
		0.189582, -0.902756, 0.386122,
		34.727661, 36.676575, 27.269651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227581, 37.074028, 26.619862>,  <34.594955, 37.308506, 26.999365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227581, 37.074028, 26.619862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014328, 36.769505, 26.767467>,  <34.886375, 36.586792, 26.856031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014328, 36.769505, 26.767467>,  <35.227581, 37.074028, 26.619862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014328, 36.769505, 26.767467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151541, -0.515053, -0.843656,
		0.832347, -0.393862, 0.389963,
		-0.533136, -0.761310, 0.369017,
		34.854385, 36.541111, 26.878172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514256, 36.489872, 26.289440>,  <35.227581, 37.074028, 26.619862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514256, 36.489872, 26.289440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161488, 36.347912, 26.413544>,  <34.949825, 36.262733, 26.488007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161488, 36.347912, 26.413544>,  <35.514256, 36.489872, 26.289440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161488, 36.347912, 26.413544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032595, -0.610678, -0.791208,
		0.470272, -0.707894, 0.527001,
		-0.881920, -0.354905, 0.310259,
		34.896912, 36.241440, 26.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538754, 35.864761, 26.239994>,  <35.514256, 36.489872, 26.289440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538754, 35.864761, 26.239994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143288, 35.924427, 26.246931>,  <34.906010, 35.960228, 26.251093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143288, 35.924427, 26.246931>,  <35.538754, 35.864761, 26.239994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143288, 35.924427, 26.246931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112611, -0.660011, -0.742768,
		-0.099349, -0.736298, 0.669324,
		-0.988660, 0.149167, 0.017343,
		34.846691, 35.969177, 26.252134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254528, 35.301914, 26.100283>,  <35.538754, 35.864761, 26.239994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254528, 35.301914, 26.100283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955338, 35.549622, 26.004753>,  <34.775822, 35.698246, 25.947435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955338, 35.549622, 26.004753>,  <35.254528, 35.301914, 26.100283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955338, 35.549622, 26.004753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269856, -0.612484, -0.742995,
		-0.606360, -0.491319, 0.625247,
		-0.748001, 0.619249, -0.238801,
		34.730946, 35.735401, 25.933107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720753, 34.813145, 25.807880>,  <35.254528, 35.301914, 26.100283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720753, 34.813145, 25.807880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570751, 35.161583, 25.681028>,  <34.480751, 35.370644, 25.604918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570751, 35.161583, 25.681028>,  <34.720753, 34.813145, 25.807880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570751, 35.161583, 25.681028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, -0.421736, -0.874306,
		-0.895347, -0.251670, 0.367446,
		-0.375002, 0.871092, -0.317132,
		34.458252, 35.422909, 25.585888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981857, 34.666592, 25.664576>,  <34.720753, 34.813145, 25.807880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981857, 34.666592, 25.664576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108040, 34.989822, 25.465576>,  <34.183750, 35.183762, 25.346176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108040, 34.989822, 25.465576>,  <33.981857, 34.666592, 25.664576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108040, 34.989822, 25.465576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298678, -0.413069, -0.860328,
		-0.900710, 0.419988, 0.111049,
		0.315457, 0.808074, -0.497497,
		34.202679, 35.232246, 25.316328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233265, 34.949074, 25.679852>,  <33.981857, 34.666592, 25.664576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233265, 34.949074, 25.679852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018036, 34.625496, 25.774582>,  <32.888897, 34.431351, 25.831419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018036, 34.625496, 25.774582>,  <33.233265, 34.949074, 25.679852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018036, 34.625496, 25.774582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134366, 0.359691, 0.923346,
		-0.832119, 0.465007, -0.302235,
		-0.538074, -0.808944, 0.236824,
		32.856613, 34.382812, 25.845629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712608, 35.141109, 26.139383>,  <33.233265, 34.949074, 25.679852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712608, 35.141109, 26.139383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714699, 34.746258, 26.203327>,  <32.715954, 34.509346, 26.241693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714699, 34.746258, 26.203327>,  <32.712608, 35.141109, 26.139383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714699, 34.746258, 26.203327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107429, 0.158382, 0.981516,
		-0.994199, -0.022301, -0.105219,
		0.005224, -0.987126, 0.159859,
		32.716267, 34.450119, 26.251286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162739, 34.993366, 26.611864>,  <32.712608, 35.141109, 26.139383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162739, 34.993366, 26.611864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444626, 34.710510, 26.634951>,  <32.613758, 34.540798, 26.648804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444626, 34.710510, 26.634951>,  <32.162739, 34.993366, 26.611864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444626, 34.710510, 26.634951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023516, 0.058028, 0.998038,
		-0.709101, -0.704690, 0.024264,
		0.704715, -0.707139, 0.057719,
		32.656040, 34.498367, 26.652266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882210, 34.610458, 27.156605>,  <32.162739, 34.993366, 26.611864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882210, 34.610458, 27.156605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263988, 34.493427, 27.133171>,  <32.493057, 34.423210, 27.119112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263988, 34.493427, 27.133171>,  <31.882210, 34.610458, 27.156605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263988, 34.493427, 27.133171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041561, -0.064063, 0.997080,
		-0.295475, -0.954094, -0.048985,
		0.954446, -0.292577, -0.058582,
		32.550323, 34.405655, 27.115597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961418, 34.035770, 27.599125>,  <31.882210, 34.610458, 27.156605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961418, 34.035770, 27.599125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320618, 34.204788, 27.550055>,  <32.536137, 34.306198, 27.520613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320618, 34.204788, 27.550055>,  <31.961418, 34.035770, 27.599125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320618, 34.204788, 27.550055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168100, -0.071819, 0.983150,
		0.406617, -0.903491, -0.135524,
		0.898000, 0.422547, -0.122674,
		32.590019, 34.331551, 27.513252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371159, 33.656258, 28.070095>,  <31.961418, 34.035770, 27.599125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371159, 33.656258, 28.070095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636238, 33.949261, 28.007774>,  <32.795284, 34.125061, 27.970381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636238, 33.949261, 28.007774>,  <32.371159, 33.656258, 28.070095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636238, 33.949261, 28.007774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060525, 0.154978, 0.986062,
		0.746441, -0.662887, 0.058368,
		0.662694, 0.732504, -0.155803,
		32.835045, 34.169010, 27.961033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886944, 33.499283, 28.508299>,  <32.371159, 33.656258, 28.070095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886944, 33.499283, 28.508299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882275, 33.889900, 28.422297>,  <32.879475, 34.124271, 28.370695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882275, 33.889900, 28.422297>,  <32.886944, 33.499283, 28.508299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882275, 33.889900, 28.422297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025603, 0.214656, 0.976354,
		0.999604, 0.016899, 0.022498,
		-0.011671, 0.976543, -0.215004,
		32.878773, 34.182865, 28.357796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459106, 33.779522, 28.863476>,  <32.886944, 33.499283, 28.508299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459106, 33.779522, 28.863476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216789, 34.091949, 28.802881>,  <33.071400, 34.279404, 28.766525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216789, 34.091949, 28.802881>,  <33.459106, 33.779522, 28.863476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216789, 34.091949, 28.802881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042352, 0.158470, 0.986455,
		0.794491, 0.604007, -0.062921,
		-0.605797, 0.781065, -0.151484,
		33.035049, 34.326267, 28.757437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740395, 34.312443, 29.314707>,  <33.459106, 33.779522, 28.863476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740395, 34.312443, 29.314707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372421, 34.446911, 29.233999>,  <33.151638, 34.527592, 29.185575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372421, 34.446911, 29.233999>,  <33.740395, 34.312443, 29.314707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372421, 34.446911, 29.233999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126380, 0.232902, 0.964253,
		0.371148, 0.912549, -0.171769,
		-0.919934, 0.336172, -0.201769,
		33.096439, 34.547764, 29.173470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671291, 35.006062, 29.679079>,  <33.740395, 34.312443, 29.314707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671291, 35.006062, 29.679079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293816, 34.891350, 29.613102>,  <33.067329, 34.822521, 29.573515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293816, 34.891350, 29.613102>,  <33.671291, 35.006062, 29.679079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293816, 34.891350, 29.613102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266046, 0.361488, 0.893614,
		-0.196647, 0.887176, -0.417430,
		-0.943689, -0.286782, -0.164944,
		33.010708, 34.805317, 29.563620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231995, 35.562550, 29.963537>,  <33.671291, 35.006062, 29.679079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231995, 35.562550, 29.963537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953320, 35.282486, 29.901045>,  <32.786114, 35.114449, 29.863548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953320, 35.282486, 29.901045>,  <33.231995, 35.562550, 29.963537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953320, 35.282486, 29.901045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461767, 0.271017, 0.844584,
		-0.549001, 0.660551, -0.512123,
		-0.696684, -0.700159, -0.156232,
		32.744316, 35.072437, 29.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600803, 35.959343, 29.982662>,  <33.231995, 35.562550, 29.963537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600803, 35.959343, 29.982662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.555225, 35.573597, 30.078173>,  <32.527878, 35.342148, 30.135479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.555225, 35.573597, 30.078173>,  <32.600803, 35.959343, 29.982662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555225, 35.573597, 30.078173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319160, 0.263136, 0.910437,
		-0.940826, 0.027530, -0.337770,
		-0.113944, -0.964366, 0.238778,
		32.521042, 35.284286, 30.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866426, 35.856285, 30.250801>,  <32.600803, 35.959343, 29.982662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866426, 35.856285, 30.250801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087997, 35.561115, 30.405012>,  <32.220940, 35.384014, 30.497540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087997, 35.561115, 30.405012>,  <31.866426, 35.856285, 30.250801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087997, 35.561115, 30.405012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368309, 0.198096, 0.908354,
		-0.746670, -0.645153, -0.162054,
		0.553925, -0.737926, 0.385527,
		32.254173, 35.339737, 30.520670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400457, 35.702183, 30.890259>,  <31.866426, 35.856285, 30.250801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400457, 35.702183, 30.890259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757154, 35.530788, 30.948483>,  <31.971172, 35.427952, 30.983418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757154, 35.530788, 30.948483>,  <31.400457, 35.702183, 30.890259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757154, 35.530788, 30.948483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076894, 0.173506, 0.981826,
		-0.445958, -0.886731, 0.121775,
		0.891745, -0.428490, 0.145561,
		32.024677, 35.402241, 30.992151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989176, 36.068810, 31.540665>,  <31.400457, 35.702183, 30.890259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989176, 36.068810, 31.540665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.639709, 35.922714, 31.669230>,  <30.430029, 35.835056, 31.746368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.639709, 35.922714, 31.669230>,  <30.989176, 36.068810, 31.540665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639709, 35.922714, 31.669230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167072, -0.395227, -0.903262,
		0.456938, -0.842849, 0.284276,
		-0.873668, -0.365240, 0.321411,
		30.377609, 35.813141, 31.765654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783421, 35.424053, 31.215523>,  <30.989176, 36.068810, 31.540665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783421, 35.424053, 31.215523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432001, 35.570271, 31.338507>,  <30.221149, 35.658001, 31.412296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432001, 35.570271, 31.338507>,  <30.783421, 35.424053, 31.215523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432001, 35.570271, 31.338507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372494, -0.121397, -0.920060,
		-0.298996, -0.922845, 0.242815,
		-0.878550, 0.365541, 0.307457,
		30.168436, 35.679932, 31.430744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182764, 35.685608, 30.902199>,  <30.783421, 35.424053, 31.215523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182764, 35.685608, 30.902199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996563, 35.923893, 30.640379>,  <29.884842, 36.066864, 30.483288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996563, 35.923893, 30.640379>,  <30.182764, 35.685608, 30.902199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996563, 35.923893, 30.640379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081562, -0.765292, -0.638494,
		-0.881280, -0.243835, 0.404834,
		-0.465504, 0.595711, -0.654549,
		29.856911, 36.102608, 30.444014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666296, 35.283077, 30.636059>,  <30.182764, 35.685608, 30.902199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666296, 35.283077, 30.636059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719532, 35.569595, 30.362062>,  <29.751474, 35.741505, 30.197664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719532, 35.569595, 30.362062>,  <29.666296, 35.283077, 30.636059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719532, 35.569595, 30.362062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163963, -0.665702, -0.727981,
		-0.977447, 0.209200, 0.028848,
		0.133090, 0.716293, -0.684990,
		29.759459, 35.784485, 30.156565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055387, 35.247559, 30.116583>,  <29.666296, 35.283077, 30.636059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055387, 35.247559, 30.116583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345903, 35.429871, 29.910761>,  <29.520214, 35.539257, 29.787268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345903, 35.429871, 29.910761>,  <29.055387, 35.247559, 30.116583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345903, 35.429871, 29.910761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365272, -0.378225, -0.850601,
		-0.582304, 0.805736, -0.108218,
		0.726291, 0.455779, -0.514555,
		29.563791, 35.566605, 29.756395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777519, 35.503761, 29.534084>,  <29.055387, 35.247559, 30.116583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777519, 35.503761, 29.534084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163630, 35.517105, 29.430445>,  <29.395296, 35.525112, 29.368261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163630, 35.517105, 29.430445>,  <28.777519, 35.503761, 29.534084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163630, 35.517105, 29.430445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255891, -0.078863, -0.963484,
		-0.052573, 0.996327, -0.067589,
		0.965275, 0.033358, -0.259097,
		29.453213, 35.527111, 29.352716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856586, 35.908504, 28.930559>,  <28.777519, 35.503761, 29.534084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856586, 35.908504, 28.930559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.196196, 35.697182, 28.927483>,  <29.399961, 35.570389, 28.925636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.196196, 35.697182, 28.927483>,  <28.856586, 35.908504, 28.930559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196196, 35.697182, 28.927483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046023, -0.059442, -0.997170,
		0.526351, 0.846972, -0.074782,
		0.849021, -0.528303, -0.007692,
		29.450901, 35.538692, 28.925175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321091, 36.297325, 28.478441>,  <28.856586, 35.908504, 28.930559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321091, 36.297325, 28.478441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449331, 35.919907, 28.511763>,  <29.526276, 35.693455, 28.531755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449331, 35.919907, 28.511763>,  <29.321091, 36.297325, 28.478441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449331, 35.919907, 28.511763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083874, -0.059321, -0.994709,
		0.943494, 0.325890, 0.060121,
		0.320599, -0.943545, 0.083303,
		29.545511, 35.636845, 28.536753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974644, 36.212635, 28.105427>,  <29.321091, 36.297325, 28.478441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974644, 36.212635, 28.105427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826296, 35.842445, 28.136290>,  <29.737288, 35.620331, 28.154806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.826296, 35.842445, 28.136290>,  <29.974644, 36.212635, 28.105427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826296, 35.842445, 28.136290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172518, -0.150291, -0.973473,
		0.912520, -0.347722, 0.215400,
		-0.370871, -0.925474, 0.077155,
		29.715034, 35.564804, 28.159435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397486, 35.822674, 27.758932>,  <29.974644, 36.212635, 28.105427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397486, 35.822674, 27.758932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072243, 35.589836, 27.760931>,  <29.877096, 35.450134, 27.762131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072243, 35.589836, 27.760931>,  <30.397486, 35.822674, 27.758932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072243, 35.589836, 27.760931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122385, -0.179336, -0.976146,
		0.569100, -0.793102, 0.217059,
		-0.813109, -0.582090, 0.004996,
		29.828310, 35.415211, 27.762430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547972, 35.417961, 27.261316>,  <30.397486, 35.822674, 27.758932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547972, 35.417961, 27.261316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154232, 35.360580, 27.302258>,  <29.917988, 35.326153, 27.326822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154232, 35.360580, 27.302258>,  <30.547972, 35.417961, 27.261316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154232, 35.360580, 27.302258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084291, -0.126781, -0.988343,
		0.154761, -0.981502, 0.112705,
		-0.984350, -0.143457, 0.102352,
		29.858927, 35.317543, 27.332964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423992, 34.905796, 26.839561>,  <30.547972, 35.417961, 27.261316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423992, 34.905796, 26.839561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071625, 35.084057, 26.903282>,  <29.860205, 35.191013, 26.941515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071625, 35.084057, 26.903282>,  <30.423992, 34.905796, 26.839561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071625, 35.084057, 26.903282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283362, -0.227055, -0.931747,
		-0.379065, -0.865933, 0.326298,
		-0.880917, 0.445653, 0.159304,
		29.807350, 35.217754, 26.951073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980175, 34.437561, 26.567776>,  <30.423992, 34.905796, 26.839561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980175, 34.437561, 26.567776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789038, 34.788326, 26.588509>,  <29.674355, 34.998787, 26.600948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789038, 34.788326, 26.588509>,  <29.980175, 34.437561, 26.567776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789038, 34.788326, 26.588509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351167, -0.136604, -0.926294,
		-0.805201, -0.460825, 0.373219,
		-0.477842, 0.876915, 0.051832,
		29.645685, 35.051399, 26.604059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299131, 34.372456, 26.124876>,  <29.980175, 34.437561, 26.567776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299131, 34.372456, 26.124876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.373158, 34.763008, 26.169483>,  <29.417574, 34.997337, 26.196247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.373158, 34.763008, 26.169483>,  <29.299131, 34.372456, 26.124876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373158, 34.763008, 26.169483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413184, 0.180270, -0.892626,
		-0.891644, 0.119117, 0.436786,
		0.185066, 0.976378, 0.111520,
		29.428677, 35.055920, 26.202940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791903, 34.595673, 25.738701>,  <29.299131, 34.372456, 26.124876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791903, 34.595673, 25.738701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004004, 34.933056, 25.773136>,  <29.131264, 35.135487, 25.793797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004004, 34.933056, 25.773136>,  <28.791903, 34.595673, 25.738701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004004, 34.933056, 25.773136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326576, 0.296892, -0.897331,
		-0.782419, 0.447699, 0.432881,
		0.530253, 0.843458, 0.086086,
		29.163080, 35.186092, 25.798962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308472, 35.229019, 25.595270>,  <28.791903, 34.595673, 25.738701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308472, 35.229019, 25.595270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695255, 35.300472, 25.522514>,  <28.927324, 35.343346, 25.478861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.695255, 35.300472, 25.522514>,  <28.308472, 35.229019, 25.595270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695255, 35.300472, 25.522514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228805, 0.293427, -0.928197,
		-0.112438, 0.939143, 0.324604,
		0.966957, 0.178635, -0.181888,
		28.985342, 35.354061, 25.467947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276825, 35.949001, 25.333632>,  <28.308472, 35.229019, 25.595270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276825, 35.949001, 25.333632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618498, 35.769176, 25.229122>,  <28.823502, 35.661282, 25.166416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618498, 35.769176, 25.229122>,  <28.276825, 35.949001, 25.333632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618498, 35.769176, 25.229122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194355, 0.190010, -0.962352,
		0.482281, 0.872806, 0.074929,
		0.854184, -0.449562, -0.261272,
		28.874754, 35.634308, 25.150740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482683, 36.460529, 24.924999>,  <28.276825, 35.949001, 25.333632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482683, 36.460529, 24.924999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.691341, 36.133492, 24.827486>,  <28.816536, 35.937271, 24.768978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.691341, 36.133492, 24.827486>,  <28.482683, 36.460529, 24.924999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691341, 36.133492, 24.827486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021741, 0.298387, -0.954197,
		0.852884, 0.492454, 0.173427,
		0.521647, -0.817590, -0.243783,
		28.847836, 35.888214, 24.754351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026596, 36.722366, 24.432617>,  <28.482683, 36.460529, 24.924999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026596, 36.722366, 24.432617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021072, 36.326138, 24.378096>,  <29.017757, 36.088402, 24.345383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021072, 36.326138, 24.378096>,  <29.026596, 36.722366, 24.432617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021072, 36.326138, 24.378096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225185, 0.129735, -0.965640,
		0.974218, -0.044030, 0.221270,
		-0.013811, -0.990571, -0.136305,
		29.016930, 36.028965, 24.337204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682896, 36.465858, 24.059811>,  <29.026596, 36.722366, 24.432617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682896, 36.465858, 24.059811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402779, 36.190037, 23.985933>,  <29.234709, 36.024544, 23.941607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402779, 36.190037, 23.985933>,  <29.682896, 36.465858, 24.059811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402779, 36.190037, 23.985933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239594, 0.016677, -0.970730,
		0.672447, -0.724046, 0.153534,
		-0.700293, -0.689550, -0.184691,
		29.192690, 35.983173, 23.930527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008362, 35.920647, 23.617693>,  <29.682896, 36.465858, 24.059811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008362, 35.920647, 23.617693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.615320, 35.871014, 23.562424>,  <29.379496, 35.841232, 23.529263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.615320, 35.871014, 23.562424>,  <30.008362, 35.920647, 23.617693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615320, 35.871014, 23.562424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133804, 0.042910, -0.990078,
		0.128784, -0.991343, -0.025560,
		-0.982604, -0.124086, -0.138172,
		29.320539, 35.833786, 23.520971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850927, 35.273506, 23.288649>,  <30.008362, 35.920647, 23.617693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850927, 35.273506, 23.288649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.532751, 35.504200, 23.214193>,  <29.341845, 35.642616, 23.169519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.532751, 35.504200, 23.214193>,  <29.850927, 35.273506, 23.288649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532751, 35.504200, 23.214193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014330, -0.289162, -0.957173,
		-0.605860, -0.764043, 0.221747,
		-0.795442, 0.576735, -0.186141,
		29.294119, 35.677219, 23.158352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607773, 34.922573, 22.711023>,  <29.850927, 35.273506, 23.288649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607773, 34.922573, 22.711023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379152, 35.250793, 22.708982>,  <29.241980, 35.447727, 22.707758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379152, 35.250793, 22.708982>,  <29.607773, 34.922573, 22.711023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379152, 35.250793, 22.708982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233310, -0.168464, -0.957699,
		-0.786701, -0.546182, 0.287728,
		-0.571549, 0.820552, -0.005101,
		29.207687, 35.496960, 22.707453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925179, 34.764679, 22.435856>,  <29.607773, 34.922573, 22.711023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925179, 34.764679, 22.435856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.981783, 35.154621, 22.367004>,  <29.015745, 35.388588, 22.325693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.981783, 35.154621, 22.367004>,  <28.925179, 34.764679, 22.435856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981783, 35.154621, 22.367004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184588, -0.144845, -0.972084,
		-0.972575, 0.169332, 0.159450,
		0.141509, 0.974857, -0.172129,
		29.024235, 35.447079, 22.315365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265207, 34.955830, 22.100994>,  <28.925179, 34.764679, 22.435856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265207, 34.955830, 22.100994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.527498, 35.240799, 22.001019>,  <28.684874, 35.411781, 21.941032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.527498, 35.240799, 22.001019>,  <28.265207, 34.955830, 22.100994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527498, 35.240799, 22.001019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302029, -0.055879, -0.951660,
		-0.691954, 0.699518, 0.178532,
		0.655727, 0.712427, -0.249941,
		28.724216, 35.454529, 21.926037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862583, 35.372845, 21.633633>,  <28.265207, 34.955830, 22.100994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862583, 35.372845, 21.633633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235487, 35.487579, 21.545435>,  <28.459229, 35.556419, 21.492516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235487, 35.487579, 21.545435>,  <27.862583, 35.372845, 21.633633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235487, 35.487579, 21.545435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244549, 0.050461, -0.968323,
		-0.266621, 0.956650, 0.117187,
		0.932260, 0.286834, -0.220494,
		28.515165, 35.573631, 21.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781672, 35.840611, 21.121830>,  <27.862583, 35.372845, 21.633633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781672, 35.840611, 21.121830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158936, 35.711037, 21.092119>,  <28.385294, 35.633293, 21.074293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158936, 35.711037, 21.092119>,  <27.781672, 35.840611, 21.121830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158936, 35.711037, 21.092119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154518, -0.229541, -0.960955,
		0.294237, 0.917811, -0.266548,
		0.943159, -0.323935, -0.074279,
		28.441883, 35.613857, 21.069836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095837, 36.197754, 20.589237>,  <27.781672, 35.840611, 21.121830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095837, 36.197754, 20.589237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.330257, 35.877213, 20.637199>,  <28.470911, 35.684887, 20.665976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.330257, 35.877213, 20.637199>,  <28.095837, 36.197754, 20.589237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330257, 35.877213, 20.637199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115638, -0.229183, -0.966490,
		0.801978, 0.552550, -0.226980,
		0.586054, -0.801351, 0.119905,
		28.506073, 35.636806, 20.673170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376299, 36.970760, 20.355556>,  <28.095837, 36.197754, 20.589237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376299, 36.970760, 20.355556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284260, 37.340870, 20.234947>,  <28.229036, 37.562935, 20.162580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284260, 37.340870, 20.234947>,  <28.376299, 36.970760, 20.355556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284260, 37.340870, 20.234947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062023, 0.323152, 0.944312,
		0.971189, 0.198584, -0.131745,
		-0.230099, 0.925277, -0.301525,
		28.215231, 37.618454, 20.144489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836870, 37.474697, 20.653215>,  <28.376299, 36.970760, 20.355556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836870, 37.474697, 20.653215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.512108, 37.698532, 20.586668>,  <28.317251, 37.832832, 20.546740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.512108, 37.698532, 20.586668>,  <28.836870, 37.474697, 20.653215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512108, 37.698532, 20.586668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172458, 0.502161, 0.847404,
		0.557737, 0.659319, -0.504211,
		-0.811904, 0.559583, -0.166368,
		28.268538, 37.866405, 20.536758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006573, 38.165497, 20.879803>,  <28.836870, 37.474697, 20.653215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006573, 38.165497, 20.879803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.606623, 38.171619, 20.881348>,  <28.366653, 38.175293, 20.882275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.606623, 38.171619, 20.881348>,  <29.006573, 38.165497, 20.879803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606623, 38.171619, 20.881348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010431, 0.456853, 0.889481,
		0.011854, 0.889410, -0.456956,
		-0.999875, 0.015311, 0.003862,
		28.306660, 38.176212, 20.882505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813972, 38.826363, 21.179823>,  <29.006573, 38.165497, 20.879803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813972, 38.826363, 21.179823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.481270, 38.605507, 21.202879>,  <28.281649, 38.472992, 21.216713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.481270, 38.605507, 21.202879>,  <28.813972, 38.826363, 21.179823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481270, 38.605507, 21.202879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220168, 0.423402, 0.878782,
		-0.509615, 0.718242, -0.473731,
		-0.831756, -0.552141, 0.057638,
		28.231743, 38.439865, 21.220171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299551, 39.245659, 21.359596>,  <28.813972, 38.826363, 21.179823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299551, 39.245659, 21.359596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152618, 38.897198, 21.489923>,  <28.064459, 38.688122, 21.568119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152618, 38.897198, 21.489923>,  <28.299551, 39.245659, 21.359596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152618, 38.897198, 21.489923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098144, 0.384656, 0.917827,
		-0.924897, 0.305171, -0.226796,
		-0.367333, -0.871154, 0.325817,
		28.042418, 38.635853, 21.587669>
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
