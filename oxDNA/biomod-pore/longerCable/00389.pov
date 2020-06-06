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
	<24.294378, 35.267750, 35.129002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440201, 34.972897, 34.901413>,  <24.527695, 34.795982, 34.764858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440201, 34.972897, 34.901413>,  <24.294378, 35.267750, 35.129002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440201, 34.972897, 34.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718454, 0.611373, -0.331733,
		0.592387, -0.287846, 0.752477,
		0.364557, -0.737135, -0.568973,
		24.549568, 34.751755, 34.730721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077713, 35.084869, 35.223816>,  <24.294378, 35.267750, 35.129002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077713, 35.084869, 35.223816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924295, 35.036125, 34.857635>,  <24.832245, 35.006878, 34.637928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924295, 35.036125, 34.857635>,  <25.077713, 35.084869, 35.223816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924295, 35.036125, 34.857635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638143, 0.681573, -0.358094,
		0.667582, -0.721532, -0.183649,
		-0.383547, -0.121862, -0.915446,
		24.809233, 34.999565, 34.583000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829664, 34.591827, 35.758141>,  <25.077713, 35.084869, 35.223816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829664, 34.591827, 35.758141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991646, 34.336864, 36.020355>,  <25.088835, 34.183887, 36.177685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991646, 34.336864, 36.020355>,  <24.829664, 34.591827, 35.758141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991646, 34.336864, 36.020355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199468, -0.761269, -0.616995,
		0.892313, 0.119098, -0.435422,
		0.404956, -0.637406, 0.655534,
		25.113132, 34.145641, 36.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437725, 34.189999, 35.437355>,  <24.829664, 34.591827, 35.758141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437725, 34.189999, 35.437355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287067, 33.976864, 35.740467>,  <25.196672, 33.848984, 35.922333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287067, 33.976864, 35.740467>,  <25.437725, 34.189999, 35.437355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287067, 33.976864, 35.740467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024551, -0.823472, -0.566825,
		0.926034, -0.194886, 0.323236,
		-0.376642, -0.532835, 0.757778,
		25.174074, 33.817013, 35.967800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827566, 33.592335, 35.416958>,  <25.437725, 34.189999, 35.437355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827566, 33.592335, 35.416958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504395, 33.498951, 35.633381>,  <25.310492, 33.442921, 35.763237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504395, 33.498951, 35.633381>,  <25.827566, 33.592335, 35.416958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504395, 33.498951, 35.633381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042394, -0.892766, -0.448522,
		0.587752, -0.385312, 0.711395,
		-0.807930, -0.233461, 0.541060,
		25.262016, 33.428913, 35.795700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979948, 33.073586, 35.897926>,  <25.827566, 33.592335, 35.416958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979948, 33.073586, 35.897926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595007, 33.069447, 35.789280>,  <25.364042, 33.066963, 35.724094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595007, 33.069447, 35.789280>,  <25.979948, 33.073586, 35.897926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595007, 33.069447, 35.789280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128360, -0.898130, -0.420577,
		-0.239593, -0.439607, 0.865645,
		-0.962351, -0.010346, -0.271614,
		25.306301, 33.066341, 35.707794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726315, 32.385292, 36.021328>,  <25.979948, 33.073586, 35.897926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726315, 32.385292, 36.021328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484457, 32.524723, 35.734859>,  <25.339342, 32.608383, 35.562981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484457, 32.524723, 35.734859>,  <25.726315, 32.385292, 36.021328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484457, 32.524723, 35.734859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057378, -0.877751, -0.475670,
		-0.794425, -0.328704, 0.510728,
		-0.604646, 0.348579, -0.716167,
		25.303064, 32.629295, 35.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989887, 32.004578, 35.948292>,  <25.726315, 32.385292, 36.021328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989887, 32.004578, 35.948292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108494, 32.139290, 35.590820>,  <25.179659, 32.220116, 35.376339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108494, 32.139290, 35.590820>,  <24.989887, 32.004578, 35.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108494, 32.139290, 35.590820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013637, -0.934170, -0.356567,
		-0.954930, 0.117916, -0.272405,
		0.296518, 0.336782, -0.893675,
		25.197449, 32.240326, 35.322720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511999, 31.720507, 35.425999>,  <24.989887, 32.004578, 35.948292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511999, 31.720507, 35.425999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856722, 31.815125, 35.246517>,  <25.063557, 31.871895, 35.138828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856722, 31.815125, 35.246517>,  <24.511999, 31.720507, 35.425999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856722, 31.815125, 35.246517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061498, -0.926804, -0.370475,
		-0.503492, 0.291684, -0.813275,
		0.861808, 0.236546, -0.448701,
		25.115265, 31.886087, 35.111908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459311, 31.480181, 34.741539>,  <24.511999, 31.720507, 35.425999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459311, 31.480181, 34.741539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854580, 31.531088, 34.775764>,  <25.091742, 31.561632, 34.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854580, 31.531088, 34.775764>,  <24.459311, 31.480181, 34.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854580, 31.531088, 34.775764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152162, -0.883124, -0.443778,
		0.019082, 0.451548, -0.892043,
		0.988171, 0.127267, 0.085560,
		25.151031, 31.569267, 34.801434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819407, 31.464062, 34.061699>,  <24.459311, 31.480181, 34.741539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819407, 31.464062, 34.061699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069630, 31.346262, 34.350681>,  <25.219765, 31.275581, 34.524071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069630, 31.346262, 34.350681>,  <24.819407, 31.464062, 34.061699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069630, 31.346262, 34.350681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071051, -0.900665, -0.428666,
		0.776934, 0.319488, -0.542495,
		0.625560, -0.294500, 0.722457,
		25.257298, 31.257912, 34.567417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272757, 31.078062, 33.677395>,  <24.819407, 31.464062, 34.061699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272757, 31.078062, 33.677395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234428, 30.937826, 34.050041>,  <25.211432, 30.853685, 34.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234428, 30.937826, 34.050041>,  <25.272757, 31.078062, 33.677395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234428, 30.937826, 34.050041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020094, -0.935049, -0.353948,
		0.995196, -0.052636, 0.082553,
		-0.095821, -0.350589, 0.931615,
		25.205683, 30.832649, 34.329525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823154, 30.907904, 34.179173>,  <25.272757, 31.078062, 33.677395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823154, 30.907904, 34.179173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140539, 30.959425, 33.941238>,  <26.330971, 30.990337, 33.798477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140539, 30.959425, 33.941238>,  <25.823154, 30.907904, 34.179173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140539, 30.959425, 33.941238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278384, 0.945925, -0.166516,
		0.541220, 0.297716, 0.786414,
		0.793463, 0.128803, -0.594833,
		26.378578, 30.998066, 33.762787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343258, 30.654718, 34.707954>,  <25.823154, 30.907904, 34.179173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343258, 30.654718, 34.707954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480154, 30.314695, 34.868088>,  <26.562292, 30.110682, 34.964169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480154, 30.314695, 34.868088>,  <26.343258, 30.654718, 34.707954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480154, 30.314695, 34.868088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410933, 0.518572, 0.749811,
		-0.844988, -0.092105, 0.526794,
		0.342243, -0.850058, 0.400338,
		26.582827, 30.059677, 34.988190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089268, 30.463203, 35.408783>,  <26.343258, 30.654718, 34.707954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089268, 30.463203, 35.408783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473856, 30.379433, 35.337543>,  <26.704609, 30.329170, 35.294800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473856, 30.379433, 35.337543>,  <26.089268, 30.463203, 35.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473856, 30.379433, 35.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274874, 0.721319, 0.635722,
		-0.004675, -0.660180, 0.751092,
		0.961469, -0.209428, -0.178094,
		26.762297, 30.316605, 35.284115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510567, 30.799343, 35.496735>,  <26.089268, 30.463203, 35.408783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510567, 30.799343, 35.496735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632900, 30.782408, 35.116276>,  <25.706301, 30.772247, 34.888000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632900, 30.782408, 35.116276>,  <25.510567, 30.799343, 35.496735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632900, 30.782408, 35.116276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102295, 0.991766, -0.077040,
		0.946573, 0.120859, 0.298987,
		0.305836, -0.042339, -0.951142,
		25.724651, 30.769707, 34.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179045, 31.189255, 35.395599>,  <25.510567, 30.799343, 35.496735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179045, 31.189255, 35.395599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923515, 31.182261, 35.087936>,  <25.770199, 31.178064, 34.903339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923515, 31.182261, 35.087936>,  <26.179045, 31.189255, 35.395599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923515, 31.182261, 35.087936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003803, 0.999801, -0.019571,
		0.769346, -0.009577, -0.638761,
		-0.638822, -0.017486, -0.769156,
		25.731869, 31.177015, 34.857189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453302, 31.675634, 34.909889>,  <26.179045, 31.189255, 35.395599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453302, 31.675634, 34.909889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055889, 31.651358, 34.871510>,  <25.817442, 31.636791, 34.848480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055889, 31.651358, 34.871510>,  <26.453302, 31.675634, 34.909889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055889, 31.651358, 34.871510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077683, 0.979728, 0.184656,
		0.082801, 0.190916, -0.978108,
		-0.993534, -0.060692, -0.095953,
		25.757830, 31.633150, 34.842724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221910, 32.181450, 34.470322>,  <26.453302, 31.675634, 34.909889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221910, 32.181450, 34.470322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879787, 32.091797, 34.657177>,  <25.674513, 32.038006, 34.769291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879787, 32.091797, 34.657177>,  <26.221910, 32.181450, 34.470322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879787, 32.091797, 34.657177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212301, 0.974037, 0.078620,
		-0.472627, -0.031929, -0.880684,
		-0.855309, -0.224128, 0.467134,
		25.623196, 32.024559, 34.797318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619349, 32.637718, 34.117466>,  <26.221910, 32.181450, 34.470322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619349, 32.637718, 34.117466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499393, 32.519665, 34.480335>,  <25.427422, 32.448833, 34.698055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499393, 32.519665, 34.480335>,  <25.619349, 32.637718, 34.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499393, 32.519665, 34.480335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353057, 0.917755, 0.181868,
		-0.886239, -0.265744, -0.379421,
		-0.299885, -0.295136, 0.907173,
		25.409428, 32.431126, 34.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271690, 33.191559, 34.351284>,  <25.619349, 32.637718, 34.117466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271690, 33.191559, 34.351284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144180, 32.910965, 34.606251>,  <25.067675, 32.742607, 34.759232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144180, 32.910965, 34.606251>,  <25.271690, 33.191559, 34.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144180, 32.910965, 34.606251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208052, 0.707887, 0.674989,
		-0.924714, 0.082554, -0.371602,
		-0.318775, -0.701485, 0.637418,
		25.048548, 32.700520, 34.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.531023, 33.175331, 34.617264>,  <25.271690, 33.191559, 34.351284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.531023, 33.175331, 34.617264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768076, 33.024895, 34.902176>,  <24.910309, 32.934631, 35.073124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768076, 33.024895, 34.902176>,  <24.531023, 33.175331, 34.617264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768076, 33.024895, 34.902176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193318, 0.792038, 0.579054,
		-0.781929, -0.480863, 0.396683,
		0.592634, -0.376093, 0.712277,
		24.945866, 32.912067, 35.115860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.094688, 33.287395, 35.206970>,  <24.531023, 33.175331, 34.617264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.094688, 33.287395, 35.206970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456850, 33.219872, 35.362785>,  <24.674147, 33.179356, 35.456276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456850, 33.219872, 35.362785>,  <24.094688, 33.287395, 35.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456850, 33.219872, 35.362785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171164, 0.694521, 0.698816,
		-0.388514, -0.699388, 0.599928,
		0.905406, -0.168814, 0.389540,
		24.728472, 33.169228, 35.479649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.054296, 33.299572, 35.974979>,  <24.094688, 33.287395, 35.206970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.054296, 33.299572, 35.974979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427969, 33.398499, 35.872108>,  <24.652172, 33.457855, 35.810387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427969, 33.398499, 35.872108>,  <24.054296, 33.299572, 35.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427969, 33.398499, 35.872108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078625, 0.845767, 0.527728,
		0.348028, -0.472772, 0.809545,
		0.934181, 0.247314, -0.257179,
		24.708223, 33.472694, 35.794956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266005, 33.061455, 36.638111>,  <24.054296, 33.299572, 35.974979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266005, 33.061455, 36.638111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576799, 33.151524, 36.402966>,  <24.763277, 33.205566, 36.261879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576799, 33.151524, 36.402966>,  <24.266005, 33.061455, 36.638111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576799, 33.151524, 36.402966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284905, 0.706941, 0.647351,
		0.561352, -0.670470, 0.485132,
		0.776990, 0.225175, -0.587863,
		24.809896, 33.219078, 36.226608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811481, 33.062958, 36.975338>,  <24.266005, 33.061455, 36.638111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811481, 33.062958, 36.975338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877699, 33.318577, 36.674881>,  <24.917429, 33.471951, 36.494606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.877699, 33.318577, 36.674881>,  <24.811481, 33.062958, 36.975338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877699, 33.318577, 36.674881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330788, 0.681545, 0.652745,
		0.929072, -0.356525, -0.098565,
		0.165543, 0.639051, -0.751139,
		24.927362, 33.510292, 36.449539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386526, 33.428226, 37.206551>,  <24.811481, 33.062958, 36.975338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386526, 33.428226, 37.206551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298260, 33.626759, 36.870701>,  <25.245300, 33.745876, 36.669193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298260, 33.626759, 36.870701>,  <25.386526, 33.428226, 37.206551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298260, 33.626759, 36.870701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506071, 0.794161, 0.336453,
		0.833786, -0.350665, -0.426420,
		-0.220664, 0.496329, -0.839622,
		25.232061, 33.775658, 36.618813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039156, 33.769051, 36.920570>,  <25.386526, 33.428226, 37.206551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039156, 33.769051, 36.920570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699358, 33.962093, 36.835293>,  <25.495480, 34.077919, 36.784126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699358, 33.962093, 36.835293>,  <26.039156, 33.769051, 36.920570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699358, 33.962093, 36.835293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391105, 0.847239, 0.359476,
		0.354110, 0.221993, -0.908475,
		-0.849496, 0.482603, -0.213193,
		25.444510, 34.106873, 36.771336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217699, 34.432320, 36.751797>,  <26.039156, 33.769051, 36.920570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217699, 34.432320, 36.751797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829845, 34.469379, 36.842331>,  <25.597134, 34.491615, 36.896652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829845, 34.469379, 36.842331>,  <26.217699, 34.432320, 36.751797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829845, 34.469379, 36.842331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144163, 0.964112, 0.222947,
		-0.197554, 0.248806, -0.948192,
		-0.969634, 0.092651, 0.226333,
		25.538956, 34.497173, 36.910233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423092, 35.113239, 36.668076>,  <26.217699, 34.432320, 36.751797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423092, 35.113239, 36.668076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820059, 35.135944, 36.624458>,  <27.058239, 35.149567, 36.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820059, 35.135944, 36.624458>,  <26.423092, 35.113239, 36.668076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820059, 35.135944, 36.624458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119421, 0.655600, -0.745606,
		0.029166, 0.752973, 0.657406,
		0.992415, 0.056761, -0.109042,
		27.117783, 35.152973, 36.591747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507704, 35.790295, 36.487415>,  <26.423092, 35.113239, 36.668076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507704, 35.790295, 36.487415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856113, 35.632599, 36.370186>,  <27.065159, 35.537983, 36.299847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856113, 35.632599, 36.370186>,  <26.507704, 35.790295, 36.487415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856113, 35.632599, 36.370186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115518, 0.744254, -0.657831,
		0.477465, 0.539131, 0.693804,
		0.871024, -0.394239, -0.293076,
		27.117420, 35.514328, 36.282265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014744, 36.260002, 36.547646>,  <26.507704, 35.790295, 36.487415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014744, 36.260002, 36.547646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153812, 36.017513, 36.261536>,  <27.237253, 35.872021, 36.089870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153812, 36.017513, 36.261536>,  <27.014744, 36.260002, 36.547646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153812, 36.017513, 36.261536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014502, 0.766254, -0.642374,
		0.937505, 0.212961, 0.275195,
		0.347670, -0.606220, -0.715278,
		27.258114, 35.835648, 36.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461292, 36.613121, 36.295494>,  <27.014744, 36.260002, 36.547646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461292, 36.613121, 36.295494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403112, 36.352543, 35.997643>,  <27.368204, 36.196198, 35.818932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403112, 36.352543, 35.997643>,  <27.461292, 36.613121, 36.295494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403112, 36.352543, 35.997643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179508, 0.722762, -0.667377,
		0.972944, -0.230737, 0.011812,
		-0.145452, -0.651441, -0.744627,
		27.359476, 36.157112, 35.774254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108589, 36.709534, 35.820507>,  <27.461292, 36.613121, 36.295494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108589, 36.709534, 35.820507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796240, 36.567669, 35.614807>,  <27.608829, 36.482552, 35.491386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796240, 36.567669, 35.614807>,  <28.108589, 36.709534, 35.820507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796240, 36.567669, 35.614807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080073, 0.759589, -0.645456,
		0.619535, -0.545197, -0.564745,
		-0.780875, -0.354662, -0.514247,
		27.561977, 36.461269, 35.460533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272768, 36.555000, 35.154709>,  <28.108589, 36.709534, 35.820507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272768, 36.555000, 35.154709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884171, 36.645508, 35.126408>,  <27.651012, 36.699814, 35.109425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884171, 36.645508, 35.126408>,  <28.272768, 36.555000, 35.154709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884171, 36.645508, 35.126408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167918, 0.446060, -0.879110,
		-0.167354, -0.865929, -0.471338,
		-0.971491, 0.226269, -0.070755,
		27.592724, 36.713390, 35.105183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082937, 36.553013, 34.377647>,  <28.272768, 36.555000, 35.154709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082937, 36.553013, 34.377647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776182, 36.742271, 34.551090>,  <27.592129, 36.855827, 34.655155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776182, 36.742271, 34.551090>,  <28.082937, 36.553013, 34.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776182, 36.742271, 34.551090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200742, 0.464881, -0.862316,
		-0.609579, -0.748342, -0.261531,
		-0.766887, 0.473149, 0.433606,
		27.546116, 36.884216, 34.681171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504034, 36.615868, 33.877953>,  <28.082937, 36.553013, 34.377647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504034, 36.615868, 33.877953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358801, 36.883743, 34.137085>,  <27.271660, 37.044468, 34.292564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358801, 36.883743, 34.137085>,  <27.504034, 36.615868, 33.877953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358801, 36.883743, 34.137085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313729, 0.566810, -0.761775,
		-0.877351, -0.479831, 0.004303,
		-0.363084, 0.669693, 0.647828,
		27.249876, 37.084652, 34.331432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869911, 36.893959, 33.696541>,  <27.504034, 36.615868, 33.877953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869911, 36.893959, 33.696541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049416, 37.177757, 33.913883>,  <27.157118, 37.348034, 34.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049416, 37.177757, 33.913883>,  <26.869911, 36.893959, 33.696541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049416, 37.177757, 33.913883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274669, 0.688090, -0.671631,
		-0.850393, 0.152161, 0.503665,
		0.448763, 0.709492, 0.543354,
		27.184044, 37.390606, 34.076889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398014, 37.460972, 33.515541>,  <26.869911, 36.893959, 33.696541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398014, 37.460972, 33.515541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704964, 37.625252, 33.712502>,  <26.889133, 37.723820, 33.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704964, 37.625252, 33.712502>,  <26.398014, 37.460972, 33.515541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704964, 37.625252, 33.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214578, 0.888153, -0.406375,
		-0.604226, 0.206184, 0.769674,
		0.767376, 0.410698, 0.492403,
		26.935177, 37.748463, 33.860222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261457, 38.148758, 33.122643>,  <26.398014, 37.460972, 33.515541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261457, 38.148758, 33.122643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328691, 38.418732, 33.410034>,  <26.369032, 38.580715, 33.582470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328691, 38.418732, 33.410034>,  <26.261457, 38.148758, 33.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328691, 38.418732, 33.410034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486639, -0.690660, 0.534949,
		0.857281, 0.259725, -0.444537,
		0.168084, 0.674931, 0.718482,
		26.379116, 38.621212, 33.625580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063026, 38.201283, 33.370941>,  <26.261457, 38.148758, 33.122643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063026, 38.201283, 33.370941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772596, 38.261742, 33.639259>,  <26.598339, 38.298016, 33.800251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772596, 38.261742, 33.639259>,  <27.063026, 38.201283, 33.370941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772596, 38.261742, 33.639259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429402, -0.662271, 0.614012,
		0.537058, 0.733860, 0.415954,
		-0.726073, 0.151149, 0.670799,
		26.554775, 38.307087, 33.840500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289030, 38.325970, 34.139713>,  <27.063026, 38.201283, 33.370941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289030, 38.325970, 34.139713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951605, 38.111271, 34.132786>,  <26.749149, 37.982452, 34.128628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951605, 38.111271, 34.132786>,  <27.289030, 38.325970, 34.139713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951605, 38.111271, 34.132786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450839, -0.725332, 0.520229,
		-0.291798, 0.431036, 0.853851,
		-0.843563, -0.536751, -0.017323,
		26.698536, 37.950245, 34.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024471, 38.214046, 34.820278>,  <27.289030, 38.325970, 34.139713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024471, 38.214046, 34.820278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930929, 37.909454, 34.578465>,  <26.874804, 37.726700, 34.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930929, 37.909454, 34.578465>,  <27.024471, 38.214046, 34.820278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930929, 37.909454, 34.578465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422632, -0.639571, 0.642130,
		-0.875611, -0.105330, 0.471393,
		-0.233854, -0.761482, -0.604531,
		26.860773, 37.681011, 34.397106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586437, 37.855541, 35.184547>,  <27.024471, 38.214046, 34.820278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586437, 37.855541, 35.184547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765436, 37.615673, 34.919174>,  <26.872835, 37.471752, 34.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765436, 37.615673, 34.919174>,  <26.586437, 37.855541, 35.184547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765436, 37.615673, 34.919174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104560, -0.701687, 0.704771,
		-0.888151, -0.384752, -0.251303,
		0.447498, -0.599667, -0.663434,
		26.899685, 37.435772, 34.720142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307831, 37.139816, 35.274586>,  <26.586437, 37.855541, 35.184547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307831, 37.139816, 35.274586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662706, 37.100319, 35.094299>,  <26.875631, 37.076622, 34.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662706, 37.100319, 35.094299>,  <26.307831, 37.139816, 35.274586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662706, 37.100319, 35.094299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152475, -0.859217, 0.488361,
		-0.435488, -0.501992, -0.747231,
		0.887187, -0.098741, -0.450720,
		26.928864, 37.070698, 34.959084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363062, 36.492138, 34.932613>,  <26.307831, 37.139816, 35.274586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363062, 36.492138, 34.932613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754732, 36.548813, 34.990765>,  <26.989735, 36.582817, 35.025658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754732, 36.548813, 34.990765>,  <26.363062, 36.492138, 34.932613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754732, 36.548813, 34.990765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046660, -0.854047, 0.518099,
		0.197572, -0.500527, -0.842875,
		0.979177, 0.141690, 0.145381,
		27.048485, 36.591320, 35.034378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614035, 35.950344, 34.678665>,  <26.363062, 36.492138, 34.932613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614035, 35.950344, 34.678665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870951, 36.111145, 34.939697>,  <27.025101, 36.207626, 35.096317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870951, 36.111145, 34.939697>,  <26.614035, 35.950344, 34.678665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870951, 36.111145, 34.939697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095039, -0.886614, 0.452640,
		0.760547, -0.228706, -0.607669,
		0.642289, 0.402006, 0.652576,
		27.063637, 36.231747, 35.135471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128395, 35.490139, 34.695286>,  <26.614035, 35.950344, 34.678665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128395, 35.490139, 34.695286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196909, 35.690830, 35.034447>,  <27.238018, 35.811245, 35.237942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196909, 35.690830, 35.034447>,  <27.128395, 35.490139, 34.695286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196909, 35.690830, 35.034447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269523, -0.851651, 0.449498,
		0.947639, 0.151536, -0.281101,
		0.171284, 0.501725, 0.847900,
		27.248295, 35.841347, 35.288818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662756, 35.074997, 35.078442>,  <27.128395, 35.490139, 34.695286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662756, 35.074997, 35.078442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507536, 35.305054, 35.366505>,  <27.414404, 35.443089, 35.539345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507536, 35.305054, 35.366505>,  <27.662756, 35.074997, 35.078442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507536, 35.305054, 35.366505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210965, -0.705216, 0.676878,
		0.897167, 0.414593, 0.152327,
		-0.388052, 0.575137, 0.720161,
		27.391121, 35.477596, 35.582554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091358, 35.124077, 35.635593>,  <27.662756, 35.074997, 35.078442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091358, 35.124077, 35.635593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730167, 35.188015, 35.795132>,  <27.513453, 35.226379, 35.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730167, 35.188015, 35.795132>,  <28.091358, 35.124077, 35.635593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730167, 35.188015, 35.795132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189857, -0.684286, 0.704065,
		0.385468, 0.711479, 0.587548,
		-0.902978, 0.159845, 0.398850,
		27.459274, 35.235970, 35.914787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104153, 35.252300, 36.437920>,  <28.091358, 35.124077, 35.635593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104153, 35.252300, 36.437920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731539, 35.134933, 36.351994>,  <27.507971, 35.064514, 36.300438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731539, 35.134933, 36.351994>,  <28.104153, 35.252300, 36.437920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731539, 35.134933, 36.351994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031581, -0.653766, 0.756037,
		-0.362276, 0.697492, 0.618273,
		-0.931536, -0.293420, -0.214817,
		27.452078, 35.046909, 36.287548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361202, 35.372814, 37.146584>,  <28.104153, 35.252300, 36.437920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361202, 35.372814, 37.146584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202263, 35.038570, 36.994858>,  <28.106899, 34.838024, 36.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202263, 35.038570, 36.994858>,  <28.361202, 35.372814, 37.146584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202263, 35.038570, 36.994858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568996, 0.099953, -0.816243,
		0.719972, -0.540157, 0.435741,
		-0.397346, -0.835607, -0.379310,
		28.083059, 34.787888, 36.881065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026350, 35.643299, 36.679012>,  <28.361202, 35.372814, 37.146584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026350, 35.643299, 36.679012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328167, 35.719357, 36.930252>,  <29.509256, 35.764992, 37.080997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328167, 35.719357, 36.930252>,  <29.026350, 35.643299, 36.679012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328167, 35.719357, 36.930252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309233, -0.741166, 0.595859,
		0.578829, -0.643830, -0.500441,
		0.754541, 0.190148, 0.628102,
		29.554529, 35.776402, 37.118683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430901, 35.012157, 36.773674>,  <29.026350, 35.643299, 36.679012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430901, 35.012157, 36.773674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456516, 35.245434, 37.097595>,  <29.471886, 35.385399, 37.291950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456516, 35.245434, 37.097595>,  <29.430901, 35.012157, 36.773674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456516, 35.245434, 37.097595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358332, -0.743918, 0.564077,
		0.931395, -0.326303, 0.161336,
		0.064040, 0.583191, 0.809807,
		29.475729, 35.420391, 37.340538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675196, 35.380180, 36.095730>,  <29.430901, 35.012157, 36.773674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675196, 35.380180, 36.095730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066212, 35.457054, 36.130341>,  <30.300821, 35.503178, 36.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066212, 35.457054, 36.130341>,  <29.675196, 35.380180, 36.095730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066212, 35.457054, 36.130341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088292, -0.000646, -0.996094,
		-0.191374, 0.981359, -0.017599,
		0.977538, 0.192181, 0.086523,
		30.359472, 35.514709, 36.156296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822733, 36.138397, 35.870415>,  <29.675196, 35.380180, 36.095730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822733, 36.138397, 35.870415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116386, 35.874130, 35.807716>,  <30.292578, 35.715572, 35.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116386, 35.874130, 35.807716>,  <29.822733, 36.138397, 35.870415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116386, 35.874130, 35.807716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037178, 0.191391, -0.980809,
		0.677987, 0.725872, 0.115944,
		0.734133, -0.660665, -0.156747,
		30.336626, 35.675930, 35.760693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305002, 36.504364, 35.605446>,  <29.822733, 36.138397, 35.870415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305002, 36.504364, 35.605446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334381, 36.127525, 35.474564>,  <30.352009, 35.901424, 35.396034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334381, 36.127525, 35.474564>,  <30.305002, 36.504364, 35.605446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334381, 36.127525, 35.474564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080258, 0.332610, -0.939643,
		0.994064, 0.042753, 0.100040,
		0.073447, -0.942095, -0.327205,
		30.356415, 35.844898, 35.376404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841053, 36.713501, 35.220909>,  <30.305002, 36.504364, 35.605446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841053, 36.713501, 35.220909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489799, 36.644905, 35.042259>,  <30.279047, 36.603748, 34.935070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489799, 36.644905, 35.042259>,  <30.841053, 36.713501, 35.220909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489799, 36.644905, 35.042259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446703, 0.040342, -0.893772,
		0.171292, -0.984359, 0.041179,
		-0.878132, -0.171491, -0.446627,
		30.226360, 36.593460, 34.908272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847567, 36.051140, 34.834339>,  <30.841053, 36.713501, 35.220909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847567, 36.051140, 34.834339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608448, 36.284313, 34.614220>,  <30.464977, 36.424217, 34.482147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608448, 36.284313, 34.614220>,  <30.847567, 36.051140, 34.834339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608448, 36.284313, 34.614220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441731, -0.333308, -0.832934,
		-0.668966, -0.741007, -0.058251,
		-0.597795, 0.582936, -0.550297,
		30.429110, 36.459194, 34.449131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555664, 35.691940, 34.166012>,  <30.847567, 36.051140, 34.834339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555664, 35.691940, 34.166012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619719, 36.078362, 34.084927>,  <30.658152, 36.310215, 34.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619719, 36.078362, 34.084927>,  <30.555664, 35.691940, 34.166012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619719, 36.078362, 34.084927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608228, -0.258314, -0.750555,
		-0.777442, -0.003104, -0.628947,
		0.160136, 0.966056, -0.202712,
		30.667759, 36.368179, 34.024113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373596, 35.904682, 33.388210>,  <30.555664, 35.691940, 34.166012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373596, 35.904682, 33.388210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658840, 36.066059, 33.617546>,  <30.829987, 36.162884, 33.755146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658840, 36.066059, 33.617546>,  <30.373596, 35.904682, 33.388210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658840, 36.066059, 33.617546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670648, -0.154337, -0.725542,
		-0.204224, 0.901897, -0.380624,
		0.713108, 0.403438, 0.573336,
		30.872772, 36.187092, 33.789547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812885, 36.558704, 33.201420>,  <30.373596, 35.904682, 33.388210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812885, 36.558704, 33.201420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032412, 36.293453, 33.405010>,  <31.164127, 36.134300, 33.527164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032412, 36.293453, 33.405010>,  <30.812885, 36.558704, 33.201420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032412, 36.293453, 33.405010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430040, -0.298155, -0.852155,
		0.716845, 0.686557, 0.121540,
		0.548816, -0.663131, 0.508978,
		31.197056, 36.094513, 33.557705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069603, 36.253448, 32.624592>,  <30.812885, 36.558704, 33.201420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069603, 36.253448, 32.624592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275505, 36.113659, 32.937744>,  <31.399046, 36.029785, 33.125633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275505, 36.113659, 32.937744>,  <31.069603, 36.253448, 32.624592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275505, 36.113659, 32.937744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611649, -0.490174, -0.620979,
		0.600761, 0.798498, -0.038564,
		0.514753, -0.349472, 0.782878,
		31.429932, 36.008816, 33.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728689, 36.065865, 32.207428>,  <31.069603, 36.253448, 32.624592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728689, 36.065865, 32.207428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721901, 35.885990, 32.564636>,  <31.717827, 35.778065, 32.778961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721901, 35.885990, 32.564636>,  <31.728689, 36.065865, 32.207428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721901, 35.885990, 32.564636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611172, -0.711533, -0.346682,
		0.791316, 0.539908, 0.286913,
		-0.016971, -0.449688, 0.893024,
		31.716810, 35.751083, 32.832542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430508, 35.813011, 32.498848>,  <31.728689, 36.065865, 32.207428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430508, 35.813011, 32.498848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124756, 35.587276, 32.623581>,  <31.941303, 35.451836, 32.698421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124756, 35.587276, 32.623581>,  <32.430508, 35.813011, 32.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124756, 35.587276, 32.623581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446257, -0.812138, -0.375881,
		0.465375, -0.148159, 0.872625,
		-0.764382, -0.564340, 0.311832,
		31.895441, 35.417973, 32.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730457, 35.221504, 32.805225>,  <32.430508, 35.813011, 32.498848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730457, 35.221504, 32.805225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348042, 35.123108, 32.741383>,  <32.118591, 35.064072, 32.703079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348042, 35.123108, 32.741383>,  <32.730457, 35.221504, 32.805225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348042, 35.123108, 32.741383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288352, -0.887541, -0.359338,
		-0.053262, -0.389565, 0.919457,
		-0.956042, -0.245988, -0.159604,
		32.061230, 35.049313, 32.693501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656532, 34.397083, 32.772388>,  <32.730457, 35.221504, 32.805225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656532, 34.397083, 32.772388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360081, 34.466835, 32.513058>,  <32.182209, 34.508686, 32.357460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360081, 34.466835, 32.513058>,  <32.656532, 34.397083, 32.772388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360081, 34.466835, 32.513058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433787, -0.612657, -0.660666,
		-0.512404, -0.770873, 0.378416,
		-0.741128, 0.174376, -0.648322,
		32.137741, 34.519150, 32.318562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319984, 33.777988, 32.597870>,  <32.656532, 34.397083, 32.772388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319984, 33.777988, 32.597870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282726, 34.048744, 32.305801>,  <32.260372, 34.211197, 32.130562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282726, 34.048744, 32.305801>,  <32.319984, 33.777988, 32.597870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282726, 34.048744, 32.305801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250238, -0.693904, -0.675187,
		-0.963694, -0.245604, -0.104751,
		-0.093142, 0.676886, -0.730171,
		32.254784, 34.251812, 32.086750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019196, 33.378777, 32.062214>,  <32.319984, 33.777988, 32.597870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019196, 33.378777, 32.062214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112907, 33.711765, 31.861378>,  <32.169136, 33.911560, 31.740875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112907, 33.711765, 31.861378>,  <32.019196, 33.378777, 32.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112907, 33.711765, 31.861378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040316, -0.507701, -0.860590,
		-0.971332, 0.221864, -0.085384,
		0.234283, 0.832476, -0.502091,
		32.183193, 33.961510, 31.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380514, 33.510517, 31.703054>,  <32.019196, 33.378777, 32.062214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380514, 33.510517, 31.703054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702967, 33.664448, 31.523251>,  <31.896439, 33.756805, 31.415367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702967, 33.664448, 31.523251>,  <31.380514, 33.510517, 31.703054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702967, 33.664448, 31.523251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180493, -0.563537, -0.806132,
		-0.563537, 0.730982, -0.384826,
		0.806132, 0.384826, -0.449511,
		31.944807, 33.779896, 31.388397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168812, 33.520863, 31.043060>,  <31.380514, 33.510517, 31.703054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168812, 33.520863, 31.043060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556961, 33.595070, 30.981148>,  <31.789850, 33.639595, 30.944000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556961, 33.595070, 30.981148>,  <31.168812, 33.520863, 31.043060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556961, 33.595070, 30.981148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041140, -0.504409, -0.862485,
		-0.238078, 0.843301, -0.481833,
		0.970374, 0.185516, -0.154782,
		31.848074, 33.650726, 30.934713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239693, 33.773209, 30.399338>,  <31.168812, 33.520863, 31.043060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239693, 33.773209, 30.399338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604681, 33.640923, 30.495687>,  <31.823673, 33.561550, 30.553497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604681, 33.640923, 30.495687>,  <31.239693, 33.773209, 30.399338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604681, 33.640923, 30.495687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163254, -0.245534, -0.955542,
		0.375160, 0.911229, -0.170051,
		0.912471, -0.330720, 0.240876,
		31.878422, 33.541706, 30.567949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588949, 34.026882, 29.921310>,  <31.239693, 33.773209, 30.399338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588949, 34.026882, 29.921310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815792, 33.739349, 30.082146>,  <31.951899, 33.566830, 30.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815792, 33.739349, 30.082146>,  <31.588949, 34.026882, 29.921310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815792, 33.739349, 30.082146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196580, -0.355944, -0.913597,
		0.799840, 0.597151, -0.060551,
		0.567108, -0.718829, 0.402086,
		31.985924, 33.523701, 30.202772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154423, 34.071594, 29.422394>,  <31.588949, 34.026882, 29.921310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154423, 34.071594, 29.422394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 33.733433, 29.632626>,  <32.215340, 33.530537, 29.758764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 33.733433, 29.632626>,  <32.154423, 34.071594, 29.422394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192497, 33.733433, 29.632626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318647, -0.474319, -0.820662,
		0.943082, 0.245587, 0.224239,
		0.095183, -0.845405, 0.525577,
		32.221050, 33.479813, 29.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894844, 33.825207, 29.407011>,  <32.154423, 34.071594, 29.422394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894844, 33.825207, 29.407011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661812, 33.506687, 29.472128>,  <32.521992, 33.315575, 29.511198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661812, 33.506687, 29.472128>,  <32.894844, 33.825207, 29.407011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661812, 33.506687, 29.472128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542938, -0.530331, -0.651128,
		0.604829, -0.290948, 0.741304,
		-0.582581, -0.796303, 0.162792,
		32.487038, 33.267796, 29.520966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442345, 33.272163, 29.415504>,  <32.894844, 33.825207, 29.407011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442345, 33.272163, 29.415504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094707, 33.080486, 29.366423>,  <32.886127, 32.965481, 29.336973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094707, 33.080486, 29.366423>,  <33.442345, 33.272163, 29.415504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094707, 33.080486, 29.366423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472710, -0.731500, -0.491380,
		0.145707, -0.485057, 0.862258,
		-0.869089, -0.479195, -0.122707,
		32.833981, 32.936729, 29.329611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551228, 32.600330, 29.413273>,  <33.442345, 33.272163, 29.415504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551228, 32.600330, 29.413273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198658, 32.601837, 29.224346>,  <32.987118, 32.602741, 29.110991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198658, 32.601837, 29.224346>,  <33.551228, 32.600330, 29.413273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198658, 32.601837, 29.224346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294197, -0.777932, -0.555221,
		-0.369522, -0.628338, 0.684577,
		-0.881420, 0.003766, -0.472319,
		32.934231, 32.602966, 29.082651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389862, 31.841038, 29.310196>,  <33.551228, 32.600330, 29.413273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389862, 31.841038, 29.310196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181526, 32.059738, 29.047962>,  <33.056526, 32.190960, 28.890623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181526, 32.059738, 29.047962>,  <33.389862, 31.841038, 29.310196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181526, 32.059738, 29.047962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105698, -0.720757, -0.685082,
		-0.847087, -0.426110, 0.317606,
		-0.520837, 0.546754, -0.655583,
		33.025276, 32.223763, 28.851288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884888, 31.396324, 29.063929>,  <33.389862, 31.841038, 29.310196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884888, 31.396324, 29.063929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965664, 31.676117, 28.789719>,  <33.014130, 31.843992, 28.625193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965664, 31.676117, 28.789719>,  <32.884888, 31.396324, 29.063929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965664, 31.676117, 28.789719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017068, -0.702355, -0.711622,
		-0.979249, 0.132007, -0.153775,
		0.201943, 0.699480, -0.685527,
		33.026245, 31.885962, 28.584061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527134, 31.195145, 28.361286>,  <32.884888, 31.396324, 29.063929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527134, 31.195145, 28.361286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749390, 31.508078, 28.248697>,  <32.882744, 31.695837, 28.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749390, 31.508078, 28.248697>,  <32.527134, 31.195145, 28.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749390, 31.508078, 28.248697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009109, -0.332793, -0.942956,
		-0.831376, 0.526503, -0.177785,
		0.555635, 0.782332, -0.281472,
		32.916080, 31.742777, 28.164255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276337, 31.462263, 27.673656>,  <32.527134, 31.195145, 28.361286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276337, 31.462263, 27.673656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642582, 31.623024, 27.669155>,  <32.862328, 31.719481, 27.666454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642582, 31.623024, 27.669155>,  <32.276337, 31.462263, 27.673656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642582, 31.623024, 27.669155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080055, -0.209663, -0.974491,
		-0.394009, 0.891356, -0.224145,
		0.915614, 0.401902, -0.011251,
		32.917267, 31.743595, 27.665779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382145, 31.985022, 27.063892>,  <32.276337, 31.462263, 27.673656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382145, 31.985022, 27.063892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740990, 31.855614, 27.184238>,  <32.956299, 31.777969, 27.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740990, 31.855614, 27.184238>,  <32.382145, 31.985022, 27.063892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740990, 31.855614, 27.184238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247154, -0.196962, -0.948747,
		0.366197, 0.925495, -0.096739,
		0.897115, -0.323519, 0.300867,
		33.010124, 31.758558, 27.274498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908539, 32.417168, 26.806120>,  <32.382145, 31.985022, 27.063892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908539, 32.417168, 26.806120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065498, 32.053307, 26.860613>,  <33.159672, 31.834990, 26.893309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065498, 32.053307, 26.860613>,  <32.908539, 32.417168, 26.806120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065498, 32.053307, 26.860613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058528, -0.123120, -0.990665,
		0.917933, 0.396705, 0.004929,
		0.392395, -0.909652, 0.136234,
		33.183216, 31.780411, 26.901484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417427, 32.418091, 26.286646>,  <32.908539, 32.417168, 26.806120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417427, 32.418091, 26.286646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398567, 32.037361, 26.407850>,  <33.387253, 31.808924, 26.480572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398567, 32.037361, 26.407850>,  <33.417427, 32.418091, 26.286646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398567, 32.037361, 26.407850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049902, -0.305212, -0.950976,
		0.997641, -0.029715, 0.061888,
		-0.047147, -0.951821, 0.303009,
		33.384422, 31.751816, 26.498753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911182, 32.157986, 25.847467>,  <33.417427, 32.418091, 26.286646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911182, 32.157986, 25.847467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649101, 31.883820, 25.974535>,  <33.491852, 31.719318, 26.050776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649101, 31.883820, 25.974535>,  <33.911182, 32.157986, 25.847467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649101, 31.883820, 25.974535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194812, -0.252985, -0.947653,
		0.729904, -0.682789, 0.032228,
		-0.655201, -0.685418, 0.317670,
		33.452541, 31.678194, 26.069836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058994, 31.699148, 25.390320>,  <33.911182, 32.157986, 25.847467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058994, 31.699148, 25.390320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702518, 31.586346, 25.532446>,  <33.488632, 31.518663, 25.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702518, 31.586346, 25.532446>,  <34.058994, 31.699148, 25.390320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702518, 31.586346, 25.532446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222252, -0.411377, -0.883953,
		0.395450, -0.866741, 0.303938,
		-0.891192, -0.282009, 0.355314,
		33.435162, 31.501743, 25.639040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935276, 31.064068, 24.985973>,  <34.058994, 31.699148, 25.390320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935276, 31.064068, 24.985973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591831, 31.200342, 25.139191>,  <33.385765, 31.282106, 25.231121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591831, 31.200342, 25.139191>,  <33.935276, 31.064068, 24.985973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591831, 31.200342, 25.139191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442650, -0.115858, -0.889179,
		-0.258552, -0.933011, 0.250282,
		-0.858611, 0.340686, 0.383041,
		33.334248, 31.302547, 25.254103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469643, 30.498333, 24.973024>,  <33.935276, 31.064068, 24.985973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469643, 30.498333, 24.973024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255489, 30.834835, 25.003103>,  <33.126999, 31.036737, 25.021151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255489, 30.834835, 25.003103>,  <33.469643, 30.498333, 24.973024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255489, 30.834835, 25.003103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259327, -0.078996, -0.962554,
		-0.803814, -0.534835, 0.260453,
		-0.535382, 0.841256, 0.075198,
		33.094875, 31.087212, 25.025663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701321, 30.320139, 24.787285>,  <33.469643, 30.498333, 24.973024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701321, 30.320139, 24.787285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775131, 30.703169, 24.698740>,  <32.819416, 30.932987, 24.645613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775131, 30.703169, 24.698740>,  <32.701321, 30.320139, 24.787285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775131, 30.703169, 24.698740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123779, -0.200794, -0.971782,
		-0.975002, 0.206718, 0.081477,
		0.184525, 0.957575, -0.221362,
		32.830490, 30.990440, 24.632332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165554, 30.516670, 24.275091>,  <32.701321, 30.320139, 24.787285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165554, 30.516670, 24.275091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440887, 30.802443, 24.224833>,  <32.606087, 30.973906, 24.194677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440887, 30.802443, 24.224833>,  <32.165554, 30.516670, 24.275091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440887, 30.802443, 24.224833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182735, 0.003151, -0.983157,
		-0.702000, 0.699701, 0.132720,
		0.688334, 0.714429, -0.125647,
		32.647388, 31.016771, 24.187138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900965, 30.815538, 23.684477>,  <32.165554, 30.516670, 24.275091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900965, 30.815538, 23.684477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285572, 30.906631, 23.745949>,  <32.516338, 30.961288, 23.782833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285572, 30.906631, 23.745949>,  <31.900965, 30.815538, 23.684477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285572, 30.906631, 23.745949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154951, 0.012401, -0.987844,
		-0.226872, 0.973644, -0.023364,
		0.961519, 0.227734, 0.153681,
		32.574028, 30.974953, 23.792053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091824, 31.308563, 23.240652>,  <31.900965, 30.815538, 23.684477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091824, 31.308563, 23.240652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462185, 31.190428, 23.334871>,  <32.684402, 31.119547, 23.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462185, 31.190428, 23.334871>,  <32.091824, 31.308563, 23.240652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462185, 31.190428, 23.334871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283743, 0.132056, -0.949764,
		0.249397, 0.946222, 0.206072,
		0.925900, -0.295340, 0.235549,
		32.739956, 31.101826, 23.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629814, 31.859697, 23.029539>,  <32.091824, 31.308563, 23.240652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629814, 31.859697, 23.029539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783123, 31.490427, 23.041225>,  <32.875107, 31.268866, 23.048237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783123, 31.490427, 23.041225>,  <32.629814, 31.859697, 23.029539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783123, 31.490427, 23.041225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191329, 0.048411, -0.980332,
		0.903602, 0.381321, 0.195184,
		0.383270, -0.923174, 0.029214,
		32.898106, 31.213474, 23.049990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053165, 31.972866, 22.509569>,  <32.629814, 31.859697, 23.029539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053165, 31.972866, 22.509569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105961, 31.587383, 22.602386>,  <33.137638, 31.356092, 22.658077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105961, 31.587383, 22.602386>,  <33.053165, 31.972866, 22.509569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105961, 31.587383, 22.602386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344221, -0.174965, -0.922442,
		0.929565, 0.201623, 0.308636,
		0.131985, -0.963709, 0.232044,
		33.145557, 31.298271, 22.671999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743111, 31.710533, 22.370972>,  <33.053165, 31.972866, 22.509569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743111, 31.710533, 22.370972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499966, 31.395254, 22.332516>,  <33.354076, 31.206087, 22.309443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499966, 31.395254, 22.332516>,  <33.743111, 31.710533, 22.370972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499966, 31.395254, 22.332516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401108, -0.200310, -0.893861,
		0.685284, -0.581908, 0.437915,
		-0.607864, -0.788200, -0.096139,
		33.317608, 31.158794, 22.303675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023697, 31.157896, 22.051685>,  <33.743111, 31.710533, 22.370972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023697, 31.157896, 22.051685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633282, 31.107740, 21.980558>,  <33.399033, 31.077648, 21.937881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633282, 31.107740, 21.980558>,  <34.023697, 31.157896, 22.051685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633282, 31.107740, 21.980558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201550, -0.213153, -0.956004,
		0.081969, -0.968940, 0.233318,
		-0.976042, -0.125388, -0.177818,
		33.340469, 31.070124, 21.927214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961487, 30.807869, 21.508211>,  <34.023697, 31.157896, 22.051685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961487, 30.807869, 21.508211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579880, 30.927748, 21.505814>,  <33.350914, 30.999674, 21.504375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579880, 30.927748, 21.505814>,  <33.961487, 30.807869, 21.508211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579880, 30.927748, 21.505814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059521, 0.169796, -0.983680,
		-0.293787, -0.938803, -0.179826,
		-0.954016, 0.299696, -0.005994,
		33.293674, 31.017656, 21.504015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735779, 30.463770, 20.963757>,  <33.961487, 30.807869, 21.508211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735779, 30.463770, 20.963757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462135, 30.746069, 21.037413>,  <33.297947, 30.915449, 21.081606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462135, 30.746069, 21.037413>,  <33.735779, 30.463770, 20.963757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462135, 30.746069, 21.037413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090046, 0.168812, -0.981527,
		-0.723797, -0.688056, -0.051936,
		-0.684112, 0.705749, 0.184142,
		33.256901, 30.957794, 21.092655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215397, 30.343260, 20.446852>,  <33.735779, 30.463770, 20.963757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215397, 30.343260, 20.446852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177086, 30.720764, 20.573431>,  <33.154099, 30.947268, 20.649380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177086, 30.720764, 20.573431>,  <33.215397, 30.343260, 20.446852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177086, 30.720764, 20.573431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010256, 0.318830, -0.947756,
		-0.995350, -0.087531, -0.040217,
		-0.095781, 0.943761, 0.316450,
		33.148350, 31.003893, 20.668365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629456, 30.561289, 20.113201>,  <33.215397, 30.343260, 20.446852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629456, 30.561289, 20.113201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861370, 30.866869, 20.226500>,  <33.000519, 31.050217, 20.294479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861370, 30.866869, 20.226500>,  <32.629456, 30.561289, 20.113201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861370, 30.866869, 20.226500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035830, 0.371213, -0.927856,
		-0.813980, 0.527810, 0.242596,
		0.579787, 0.763949, 0.283248,
		33.035305, 31.096054, 20.311474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392551, 31.019667, 19.641874>,  <32.629456, 30.561289, 20.113201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392551, 31.019667, 19.641874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723606, 31.188431, 19.789936>,  <32.922237, 31.289690, 19.878773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723606, 31.188431, 19.789936>,  <32.392551, 31.019667, 19.641874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723606, 31.188431, 19.789936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158342, 0.457193, -0.875158,
		-0.538472, 0.782921, 0.311581,
		0.827632, 0.421912, 0.370155,
		32.971897, 31.315004, 19.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375397, 31.716438, 19.419426>,  <32.392551, 31.019667, 19.641874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375397, 31.716438, 19.419426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765537, 31.655569, 19.483343>,  <32.999622, 31.619047, 19.521694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765537, 31.655569, 19.483343>,  <32.375397, 31.716438, 19.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765537, 31.655569, 19.483343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212176, 0.447934, -0.868526,
		0.060588, 0.881022, 0.469180,
		0.975352, -0.152171, 0.159792,
		33.058144, 31.609919, 19.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701221, 32.304314, 19.298193>,  <32.375397, 31.716438, 19.419426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701221, 32.304314, 19.298193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988720, 32.036137, 19.224529>,  <33.161221, 31.875231, 19.180330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988720, 32.036137, 19.224529>,  <32.701221, 32.304314, 19.298193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988720, 32.036137, 19.224529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133771, 0.393276, -0.909637,
		0.682282, 0.629163, 0.372351,
		0.718747, -0.670439, -0.184161,
		33.204346, 31.835005, 19.169281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080112, 32.732853, 18.876163>,  <32.701221, 32.304314, 19.298193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080112, 32.732853, 18.876163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234367, 32.366879, 18.828529>,  <33.326920, 32.147293, 18.799948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234367, 32.366879, 18.828529>,  <33.080112, 32.732853, 18.876163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234367, 32.366879, 18.828529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340411, 0.261054, -0.903311,
		0.857559, 0.307809, 0.412125,
		0.385634, -0.914934, -0.119088,
		33.350056, 32.092400, 18.792803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632607, 32.849339, 18.529089>,  <33.080112, 32.732853, 18.876163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632607, 32.849339, 18.529089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570690, 32.459373, 18.465099>,  <33.533539, 32.225395, 18.426704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570690, 32.459373, 18.465099>,  <33.632607, 32.849339, 18.529089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570690, 32.459373, 18.465099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185729, 0.130324, -0.973920,
		0.970332, -0.180469, 0.160896,
		-0.154794, -0.974909, -0.159975,
		33.524254, 32.166901, 18.417107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207901, 32.676613, 18.087946>,  <33.632607, 32.849339, 18.529089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207901, 32.676613, 18.087946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916473, 32.404301, 18.057684>,  <33.741619, 32.240913, 18.039528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916473, 32.404301, 18.057684>,  <34.207901, 32.676613, 18.087946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916473, 32.404301, 18.057684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057137, 0.049661, -0.997130,
		0.682588, -0.730798, 0.002716,
		-0.728566, -0.680785, -0.075654,
		33.697903, 32.200066, 18.034988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444229, 32.200588, 17.614481>,  <34.207901, 32.676613, 18.087946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444229, 32.200588, 17.614481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051243, 32.126167, 17.609779>,  <33.815449, 32.081516, 17.606958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051243, 32.126167, 17.609779>,  <34.444229, 32.200588, 17.614481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051243, 32.126167, 17.609779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003163, 0.079672, -0.996816,
		0.186396, -0.979304, -0.078864,
		-0.982470, -0.186052, -0.011753,
		33.756500, 32.070351, 17.606253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301426, 31.624466, 17.066467>,  <34.444229, 32.200588, 17.614481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301426, 31.624466, 17.066467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010136, 31.895885, 17.104939>,  <33.835361, 32.058739, 17.128021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010136, 31.895885, 17.104939>,  <34.301426, 31.624466, 17.066467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010136, 31.895885, 17.104939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061657, 0.074897, -0.995283,
		-0.682553, -0.730726, -0.012705,
		-0.728230, 0.678550, 0.096176,
		33.791668, 32.099449, 17.133791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867645, 31.468290, 16.524332>,  <34.301426, 31.624466, 17.066467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867645, 31.468290, 16.524332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706387, 31.817524, 16.634016>,  <33.609631, 32.027065, 16.699825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706387, 31.817524, 16.634016>,  <33.867645, 31.468290, 16.524332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706387, 31.817524, 16.634016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375703, 0.115315, -0.919538,
		-0.834456, -0.473734, 0.281532,
		-0.403151, 0.873086, 0.274209,
		33.585442, 32.079449, 16.716278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201015, 31.420467, 16.163345>,  <33.867645, 31.468290, 16.524332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201015, 31.420467, 16.163345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253269, 31.811867, 16.227188>,  <33.284622, 32.046707, 16.265493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253269, 31.811867, 16.227188>,  <33.201015, 31.420467, 16.163345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253269, 31.811867, 16.227188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490807, 0.203700, -0.847121,
		-0.861420, 0.032325, 0.506864,
		0.130631, 0.978499, 0.159606,
		33.292458, 32.105415, 16.275070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886711, 31.727289, 15.556280>,  <33.201015, 31.420467, 16.163345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886711, 31.727289, 15.556280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957813, 32.056549, 15.771995>,  <33.000473, 32.254105, 15.901423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957813, 32.056549, 15.771995>,  <32.886711, 31.727289, 15.556280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957813, 32.056549, 15.771995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433615, 0.557459, -0.707967,
		-0.883393, -0.108000, 0.456019,
		0.177752, 0.823150, 0.539286,
		33.011139, 32.303493, 15.933781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258247, 31.978378, 15.735642>,  <32.886711, 31.727289, 15.556280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258247, 31.978378, 15.735642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526928, 32.274063, 15.716105>,  <32.688137, 32.451473, 15.704384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526928, 32.274063, 15.716105>,  <32.258247, 31.978378, 15.735642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526928, 32.274063, 15.716105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586102, 0.489938, -0.645326,
		-0.453102, 0.462092, 0.762344,
		0.671701, 0.739210, -0.048842,
		32.728439, 32.495827, 15.701453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002579, 32.712734, 15.873064>,  <32.258247, 31.978378, 15.735642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002579, 32.712734, 15.873064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310802, 32.732040, 15.618849>,  <32.495735, 32.743626, 15.466320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310802, 32.732040, 15.618849>,  <32.002579, 32.712734, 15.873064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310802, 32.732040, 15.618849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504364, 0.655818, -0.561711,
		0.389686, 0.753375, 0.529691,
		0.770559, 0.048266, -0.635538,
		32.541969, 32.746521, 15.428187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341747, 33.109547, 15.808943>,  <32.002579, 32.712734, 15.873064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341747, 33.109547, 15.808943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175201, 32.991421, 15.464982>,  <31.075274, 32.920547, 15.258605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175201, 32.991421, 15.464982>,  <31.341747, 33.109547, 15.808943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175201, 32.991421, 15.464982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813459, 0.301456, -0.497403,
		0.406111, -0.906596, 0.114708,
		-0.416364, -0.295311, -0.859903,
		31.050293, 32.902828, 15.207011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743673, 33.378548, 15.371343>,  <31.341747, 33.109547, 15.808943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743673, 33.378548, 15.371343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529800, 33.193153, 15.088697>,  <31.401478, 33.081917, 14.919110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529800, 33.193153, 15.088697>,  <31.743673, 33.378548, 15.371343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529800, 33.193153, 15.088697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664011, 0.286773, -0.690544,
		0.522692, -0.838419, 0.154425,
		-0.534680, -0.463481, -0.706613,
		31.369396, 33.054108, 14.876714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220924, 33.435257, 14.786641>,  <31.743673, 33.378548, 15.371343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220924, 33.435257, 14.786641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440125, 33.758591, 14.700583>,  <32.571644, 33.952591, 14.648949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440125, 33.758591, 14.700583>,  <32.220924, 33.435257, 14.786641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440125, 33.758591, 14.700583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196568, 0.125556, 0.972418,
		0.813053, -0.575178, -0.090088,
		0.548002, 0.808336, -0.215145,
		32.604527, 34.001091, 14.636040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630035, 33.682827, 15.348109>,  <32.220924, 33.435257, 14.786641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630035, 33.682827, 15.348109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698372, 34.008064, 15.125509>,  <32.739376, 34.203205, 14.991949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698372, 34.008064, 15.125509>,  <32.630035, 33.682827, 15.348109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698372, 34.008064, 15.125509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410244, 0.454818, 0.790469,
		0.895831, -0.363348, -0.255863,
		0.170844, 0.813092, -0.556501,
		32.749626, 34.251991, 14.958559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363163, 33.856182, 15.291049>,  <32.630035, 33.682827, 15.348109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363163, 33.856182, 15.291049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129036, 34.178036, 15.251121>,  <32.988560, 34.371147, 15.227163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129036, 34.178036, 15.251121>,  <33.363163, 33.856182, 15.291049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129036, 34.178036, 15.251121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433070, 0.414336, 0.800485,
		0.685458, 0.425309, -0.590982,
		-0.585318, 0.804636, -0.099821,
		32.953442, 34.419426, 15.221174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728256, 34.518547, 15.246119>,  <33.363163, 33.856182, 15.291049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728256, 34.518547, 15.246119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359730, 34.609531, 15.372252>,  <33.138615, 34.664124, 15.447931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359730, 34.609531, 15.372252>,  <33.728256, 34.518547, 15.246119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359730, 34.609531, 15.372252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386509, 0.447673, 0.806350,
		0.042248, 0.864783, -0.500365,
		-0.921318, 0.227462, 0.315333,
		33.083336, 34.677769, 15.466851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497204, 35.268936, 15.401238>,  <33.728256, 34.518547, 15.246119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497204, 35.268936, 15.401238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343166, 34.989185, 15.642097>,  <33.250744, 34.821335, 15.786613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343166, 34.989185, 15.642097>,  <33.497204, 35.268936, 15.401238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343166, 34.989185, 15.642097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540273, 0.358131, 0.761477,
		-0.748206, 0.618560, 0.239942,
		-0.385089, -0.699375, 0.602147,
		33.227638, 34.779373, 15.822742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156872, 35.594093, 16.044394>,  <33.497204, 35.268936, 15.401238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156872, 35.594093, 16.044394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287071, 35.222359, 16.114124>,  <33.365192, 34.999317, 16.155962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287071, 35.222359, 16.114124>,  <33.156872, 35.594093, 16.044394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287071, 35.222359, 16.114124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339921, 0.287051, 0.895575,
		-0.882329, -0.232250, 0.409335,
		0.325497, -0.929334, 0.174327,
		33.384720, 34.943558, 16.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016605, 35.542496, 16.776632>,  <33.156872, 35.594093, 16.044394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016605, 35.542496, 16.776632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298943, 35.270115, 16.698566>,  <33.468346, 35.106686, 16.651728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298943, 35.270115, 16.698566>,  <33.016605, 35.542496, 16.776632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298943, 35.270115, 16.698566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400711, 0.156636, 0.902716,
		-0.584137, -0.715380, 0.383425,
		0.705843, -0.680953, -0.195164,
		33.510696, 35.065830, 16.640017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152649, 35.151009, 17.425390>,  <33.016605, 35.542496, 16.776632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152649, 35.151009, 17.425390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475777, 35.124165, 17.191151>,  <33.669651, 35.108059, 17.050608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475777, 35.124165, 17.191151>,  <33.152649, 35.151009, 17.425390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475777, 35.124165, 17.191151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585197, 0.210204, 0.783172,
		0.070533, -0.975351, 0.209082,
		0.807817, -0.067115, -0.585599,
		33.718121, 35.104031, 17.015471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613876, 34.726738, 17.752926>,  <33.152649, 35.151009, 17.425390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613876, 34.726738, 17.752926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852352, 34.925022, 17.500315>,  <33.995438, 35.043991, 17.348747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852352, 34.925022, 17.500315>,  <33.613876, 34.726738, 17.752926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852352, 34.925022, 17.500315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606954, 0.236596, 0.758703,
		0.525512, -0.835641, -0.159815,
		0.596192, 0.495708, -0.631529,
		34.031208, 35.073734, 17.310856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160553, 34.572823, 17.973036>,  <33.613876, 34.726738, 17.752926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160553, 34.572823, 17.973036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257908, 34.887745, 17.746439>,  <34.316322, 35.076698, 17.610481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257908, 34.887745, 17.746439>,  <34.160553, 34.572823, 17.973036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257908, 34.887745, 17.746439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537620, 0.376616, 0.754404,
		0.807296, -0.488170, -0.331607,
		0.243389, 0.787306, -0.566491,
		34.330925, 35.123936, 17.576492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799416, 34.768238, 18.227484>,  <34.160553, 34.572823, 17.973036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799416, 34.768238, 18.227484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694031, 35.095005, 18.022261>,  <34.630798, 35.291065, 17.899126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694031, 35.095005, 18.022261>,  <34.799416, 34.768238, 18.227484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694031, 35.095005, 18.022261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443230, 0.574897, 0.687780,
		0.856817, -0.046199, -0.513547,
		-0.263462, 0.816921, -0.513058,
		34.614994, 35.340080, 17.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393990, 35.061775, 18.012342>,  <34.799416, 34.768238, 18.227484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393990, 35.061775, 18.012342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106312, 35.336098, 18.056936>,  <34.933704, 35.500690, 18.083693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106312, 35.336098, 18.056936>,  <35.393990, 35.061775, 18.012342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106312, 35.336098, 18.056936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520409, 0.425387, 0.740419,
		0.460359, 0.590523, -0.662836,
		-0.719196, 0.685805, 0.111483,
		34.890553, 35.541840, 18.090382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773598, 35.753078, 18.207983>,  <35.393990, 35.061775, 18.012342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773598, 35.753078, 18.207983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392609, 35.809933, 18.315762>,  <35.164017, 35.844044, 18.380428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392609, 35.809933, 18.315762>,  <35.773598, 35.753078, 18.207983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392609, 35.809933, 18.315762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304462, 0.473946, 0.826243,
		-0.010264, 0.869007, -0.494693,
		-0.952469, 0.142135, 0.269445,
		35.106869, 35.852573, 18.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862564, 36.356300, 18.577902>,  <35.773598, 35.753078, 18.207983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862564, 36.356300, 18.577902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500637, 36.216827, 18.675652>,  <35.283482, 36.133144, 18.734301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500637, 36.216827, 18.675652>,  <35.862564, 36.356300, 18.577902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500637, 36.216827, 18.675652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094716, 0.394719, 0.913907,
		-0.415125, 0.850067, -0.324124,
		-0.904821, -0.348686, 0.244373,
		35.229191, 36.112221, 18.748962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661331, 36.823994, 18.946323>,  <35.862564, 36.356300, 18.577902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661331, 36.823994, 18.946323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383865, 36.547909, 19.028730>,  <35.217388, 36.382259, 19.078175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383865, 36.547909, 19.028730>,  <35.661331, 36.823994, 18.946323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383865, 36.547909, 19.028730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043124, 0.325298, 0.944628,
		-0.719010, 0.646366, -0.255411,
		-0.693660, -0.690211, 0.206018,
		35.175766, 36.340847, 19.090536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151852, 37.202850, 19.344254>,  <35.661331, 36.823994, 18.946323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151852, 37.202850, 19.344254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140961, 36.810177, 19.419676>,  <35.134426, 36.574574, 19.464930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140961, 36.810177, 19.419676>,  <35.151852, 37.202850, 19.344254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140961, 36.810177, 19.419676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005998, 0.188782, 0.982001,
		-0.999611, 0.025604, -0.011028,
		-0.027225, -0.981685, 0.188555,
		35.132793, 36.515671, 19.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661213, 37.141151, 19.850365>,  <35.151852, 37.202850, 19.344254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661213, 37.141151, 19.850365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882874, 36.816818, 19.925686>,  <35.015869, 36.622219, 19.970879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882874, 36.816818, 19.925686>,  <34.661213, 37.141151, 19.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882874, 36.816818, 19.925686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232687, 0.066304, 0.970289,
		-0.799231, -0.581505, -0.151928,
		0.554154, -0.810836, 0.188301,
		35.049118, 36.573566, 19.982176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283081, 36.742424, 20.306204>,  <34.661213, 37.141151, 19.850365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283081, 36.742424, 20.306204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637016, 36.564644, 20.362099>,  <34.849377, 36.457973, 20.395636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637016, 36.564644, 20.362099>,  <34.283081, 36.742424, 20.306204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637016, 36.564644, 20.362099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254411, -0.209664, 0.944095,
		-0.390309, -0.870920, -0.298592,
		0.884835, -0.444455, 0.139738,
		34.902466, 36.431309, 20.404020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106850, 36.184620, 20.657217>,  <34.283081, 36.742424, 20.306204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106850, 36.184620, 20.657217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492737, 36.252491, 20.737736>,  <34.724270, 36.293213, 20.786047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492737, 36.252491, 20.737736>,  <34.106850, 36.184620, 20.657217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492737, 36.252491, 20.737736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195540, -0.050154, 0.979412,
		0.176279, -0.984223, -0.015206,
		0.964723, 0.169677, 0.201296,
		34.782154, 36.303394, 20.798124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270206, 35.732960, 21.197500>,  <34.106850, 36.184620, 20.657217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270206, 35.732960, 21.197500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560822, 36.007717, 21.204645>,  <34.735191, 36.172569, 21.208933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560822, 36.007717, 21.204645>,  <34.270206, 35.732960, 21.197500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560822, 36.007717, 21.204645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033532, 0.009479, 0.999393,
		0.686304, -0.726699, 0.029920,
		0.726541, 0.686891, 0.017862,
		34.778786, 36.213783, 21.210003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901791, 35.465366, 21.627996>,  <34.270206, 35.732960, 21.197500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901791, 35.465366, 21.627996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906471, 35.865276, 21.635077>,  <34.909279, 36.105221, 21.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906471, 35.865276, 21.635077>,  <34.901791, 35.465366, 21.627996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906471, 35.865276, 21.635077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072519, -0.018502, 0.997195,
		0.997298, -0.010383, -0.072719,
		0.011699, 0.999775, 0.017699,
		34.909981, 36.165207, 21.640387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388615, 35.586769, 22.191683>,  <34.901791, 35.465366, 21.627996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388615, 35.586769, 22.191683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156212, 35.908653, 22.142918>,  <35.016769, 36.101784, 22.113659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156212, 35.908653, 22.142918>,  <35.388615, 35.586769, 22.191683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156212, 35.908653, 22.142918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082633, 0.090692, 0.992445,
		0.809691, 0.586695, 0.013803,
		-0.581010, 0.804714, -0.121913,
		34.981907, 36.150066, 22.106344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667141, 36.059692, 22.641247>,  <35.388615, 35.586769, 22.191683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667141, 36.059692, 22.641247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305592, 36.216171, 22.571991>,  <35.088661, 36.310059, 22.530437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305592, 36.216171, 22.571991>,  <35.667141, 36.059692, 22.641247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305592, 36.216171, 22.571991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101480, 0.197107, 0.975116,
		0.415587, 0.898953, -0.138462,
		-0.903875, 0.391194, -0.173141,
		35.034428, 36.333530, 22.520048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561882, 36.736259, 22.956684>,  <35.667141, 36.059692, 22.641247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561882, 36.736259, 22.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177837, 36.624466, 22.953320>,  <34.947411, 36.557388, 22.951302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177837, 36.624466, 22.953320>,  <35.561882, 36.736259, 22.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177837, 36.624466, 22.953320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080252, 0.246630, 0.965781,
		-0.267845, 0.927935, -0.259222,
		-0.960114, -0.279483, -0.008410,
		34.889805, 36.540623, 22.950796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223263, 37.225830, 23.468861>,  <35.561882, 36.736259, 22.956684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223263, 37.225830, 23.468861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932896, 36.961708, 23.391880>,  <34.758675, 36.803234, 23.345692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932896, 36.961708, 23.391880>,  <35.223263, 37.225830, 23.468861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932896, 36.961708, 23.391880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248756, -0.008812, 0.968526,
		-0.641222, 0.750942, -0.157859,
		-0.725916, -0.660309, -0.192452,
		34.715122, 36.763615, 23.334145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676491, 37.440029, 23.869160>,  <35.223263, 37.225830, 23.468861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676491, 37.440029, 23.869160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567879, 37.072483, 23.754650>,  <34.502712, 36.851955, 23.685944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567879, 37.072483, 23.754650>,  <34.676491, 37.440029, 23.869160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567879, 37.072483, 23.754650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452736, -0.140532, 0.880500,
		-0.849293, 0.368691, -0.377846,
		-0.271533, -0.918867, -0.286273,
		34.486420, 36.796822, 23.668768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045620, 37.390396, 24.045818>,  <34.676491, 37.440029, 23.869160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045620, 37.390396, 24.045818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149685, 37.004173, 24.047733>,  <34.212124, 36.772442, 24.048882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149685, 37.004173, 24.047733>,  <34.045620, 37.390396, 24.045818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149685, 37.004173, 24.047733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445080, -0.115524, 0.888008,
		-0.856865, -0.233158, -0.459803,
		0.260165, -0.965553, 0.004786,
		34.227734, 36.714508, 24.049170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368103, 36.986382, 24.237955>,  <34.045620, 37.390396, 24.045818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368103, 36.986382, 24.237955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677341, 36.740814, 24.301737>,  <33.862885, 36.593472, 24.340006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677341, 36.740814, 24.301737>,  <33.368103, 36.986382, 24.237955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677341, 36.740814, 24.301737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359571, -0.217088, 0.907514,
		-0.522527, -0.758929, -0.388578,
		0.773094, -0.613922, 0.159454,
		33.909271, 36.556637, 24.349573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130188, 36.441425, 24.421303>,  <33.368103, 36.986382, 24.237955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130188, 36.441425, 24.421303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502930, 36.392181, 24.557823>,  <33.726574, 36.362637, 24.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502930, 36.392181, 24.557823>,  <33.130188, 36.441425, 24.421303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502930, 36.392181, 24.557823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362800, -0.327339, 0.872482,
		0.004311, -0.936853, -0.349697,
		0.931857, -0.123108, 0.341301,
		33.782486, 36.355247, 24.660213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161404, 35.772053, 24.665678>,  <33.130188, 36.441425, 24.421303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161404, 35.772053, 24.665678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442276, 35.991863, 24.846769>,  <33.610802, 36.123749, 24.955423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442276, 35.991863, 24.846769>,  <33.161404, 35.772053, 24.665678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442276, 35.991863, 24.846769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262107, -0.391697, 0.881971,
		0.661996, -0.737969, -0.131010,
		0.702183, 0.549523, 0.452729,
		33.652931, 36.156719, 24.982588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385944, 35.379063, 25.185764>,  <33.161404, 35.772053, 24.665678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385944, 35.379063, 25.185764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506279, 35.737934, 25.315107>,  <33.578480, 35.953259, 25.392714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506279, 35.737934, 25.315107>,  <33.385944, 35.379063, 25.185764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506279, 35.737934, 25.315107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279545, -0.241211, 0.929339,
		0.911784, -0.369974, 0.178237,
		0.300839, 0.897182, 0.323357,
		33.596531, 36.007088, 25.412115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752956, 35.250740, 25.780718>,  <33.385944, 35.379063, 25.185764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752956, 35.250740, 25.780718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708824, 35.644421, 25.836115>,  <33.682346, 35.880627, 25.869352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708824, 35.644421, 25.836115>,  <33.752956, 35.250740, 25.780718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708824, 35.644421, 25.836115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232690, -0.161048, 0.959124,
		0.966273, 0.073593, 0.246781,
		-0.110328, 0.984199, 0.138492,
		33.675724, 35.939682, 25.877663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169830, 35.442955, 26.268301>,  <33.752956, 35.250740, 25.780718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169830, 35.442955, 26.268301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870956, 35.708202, 26.286139>,  <33.691631, 35.867352, 26.296841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870956, 35.708202, 26.286139>,  <34.169830, 35.442955, 26.268301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870956, 35.708202, 26.286139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022906, -0.092751, 0.995426,
		0.664218, 0.742749, 0.084492,
		-0.747188, 0.663115, 0.044593,
		33.646801, 35.907139, 26.299517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298477, 35.884190, 26.843067>,  <34.169830, 35.442955, 26.268301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298477, 35.884190, 26.843067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908646, 35.941093, 26.773830>,  <33.674747, 35.975235, 26.732288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908646, 35.941093, 26.773830>,  <34.298477, 35.884190, 26.843067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908646, 35.941093, 26.773830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161672, 0.088326, 0.982884,
		0.155114, 0.985880, -0.063081,
		-0.974578, 0.142260, -0.173090,
		33.616272, 35.983772, 26.721903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140060, 36.492031, 27.251440>,  <34.298477, 35.884190, 26.843067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140060, 36.492031, 27.251440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792980, 36.305687, 27.182079>,  <33.584732, 36.193882, 27.140463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792980, 36.305687, 27.182079>,  <34.140060, 36.492031, 27.251440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792980, 36.305687, 27.182079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227481, 0.061976, 0.971808,
		-0.441980, 0.882685, -0.159751,
		-0.867701, -0.465860, -0.173402,
		33.532669, 36.165928, 27.130058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483757, 36.983849, 27.534290>,  <34.140060, 36.492031, 27.251440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483757, 36.983849, 27.534290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359756, 36.603561, 27.536867>,  <33.285355, 36.375389, 27.538412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359756, 36.603561, 27.536867>,  <33.483757, 36.983849, 27.534290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359756, 36.603561, 27.536867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234484, 0.083020, 0.968568,
		-0.921366, 0.298750, -0.248664,
		-0.310004, -0.950713, 0.006440,
		33.266754, 36.318348, 27.538799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909271, 36.882023, 27.959135>,  <33.483757, 36.983849, 27.534290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909271, 36.882023, 27.959135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001308, 36.493660, 27.932636>,  <33.056530, 36.260643, 27.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001308, 36.493660, 27.932636>,  <32.909271, 36.882023, 27.959135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001308, 36.493660, 27.932636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256240, -0.126118, 0.958350,
		-0.938827, -0.203538, -0.277805,
		0.230097, -0.970910, -0.066248,
		33.070339, 36.202389, 27.912762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475101, 36.587234, 28.416977>,  <32.909271, 36.882023, 27.959135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475101, 36.587234, 28.416977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744877, 36.293346, 28.387829>,  <32.906742, 36.117012, 28.370340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744877, 36.293346, 28.387829>,  <32.475101, 36.587234, 28.416977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744877, 36.293346, 28.387829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116884, -0.203702, 0.972031,
		-0.729019, -0.647059, -0.223262,
		0.674440, -0.734725, -0.072872,
		32.947208, 36.072929, 28.365967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222244, 36.054893, 28.774902>,  <32.475101, 36.587234, 28.416977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222244, 36.054893, 28.774902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609943, 35.956547, 28.770679>,  <32.842564, 35.897537, 28.768145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609943, 35.956547, 28.770679>,  <32.222244, 36.054893, 28.774902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609943, 35.956547, 28.770679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085481, -0.376592, 0.922427,
		-0.230768, -0.893157, -0.386027,
		0.969247, -0.245865, -0.010557,
		32.900719, 35.882786, 28.767511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273739, 35.450665, 29.164801>,  <32.222244, 36.054893, 28.774902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273739, 35.450665, 29.164801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647614, 35.592850, 29.163456>,  <32.871937, 35.678162, 29.162649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647614, 35.592850, 29.163456>,  <32.273739, 35.450665, 29.164801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647614, 35.592850, 29.163456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158882, -0.409273, 0.898472,
		0.318002, -0.840321, -0.439017,
		0.934683, 0.355468, -0.003362,
		32.928017, 35.699490, 29.162447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797474, 34.871151, 29.278109>,  <32.273739, 35.450665, 29.164801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797474, 34.871151, 29.278109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007015, 35.198372, 29.373075>,  <33.132740, 35.394707, 29.430056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007015, 35.198372, 29.373075>,  <32.797474, 34.871151, 29.278109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007015, 35.198372, 29.373075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319484, -0.447067, 0.835501,
		0.789626, -0.361827, -0.495552,
		0.523851, 0.818054, 0.237418,
		33.164169, 35.443787, 29.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390965, 34.623596, 29.446461>,  <32.797474, 34.871151, 29.278109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390965, 34.623596, 29.446461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411339, 34.977768, 29.631250>,  <33.423565, 35.190269, 29.742125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411339, 34.977768, 29.631250>,  <33.390965, 34.623596, 29.446461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411339, 34.977768, 29.631250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273565, -0.457252, 0.846216,
		0.960503, 0.083273, -0.265516,
		0.050940, 0.885430, 0.461973,
		33.426620, 35.243397, 29.769842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955681, 34.610596, 30.036127>,  <33.390965, 34.623596, 29.446461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955681, 34.610596, 30.036127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761608, 34.941593, 30.149155>,  <33.645164, 35.140194, 30.216972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761608, 34.941593, 30.149155>,  <33.955681, 34.610596, 30.036127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761608, 34.941593, 30.149155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306179, -0.141923, 0.941336,
		0.819055, 0.543238, -0.184503,
		-0.485184, 0.827497, 0.282570,
		33.616055, 35.189842, 30.233925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430119, 35.137394, 30.429535>,  <33.955681, 34.610596, 30.036127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430119, 35.137394, 30.429535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051037, 35.159248, 30.555307>,  <33.823586, 35.172359, 30.630772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051037, 35.159248, 30.555307>,  <34.430119, 35.137394, 30.429535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051037, 35.159248, 30.555307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268268, -0.397309, 0.877598,
		0.172875, 0.916057, 0.361875,
		-0.947706, 0.054635, 0.314433,
		33.766724, 35.175640, 30.649637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142101, 34.886559, 30.441538>,  <34.430119, 35.137394, 30.429535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142101, 34.886559, 30.441538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474789, 35.096390, 30.514257>,  <35.674400, 35.222290, 30.557890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474789, 35.096390, 30.514257>,  <35.142101, 34.886559, 30.441538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474789, 35.096390, 30.514257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027050, 0.365356, -0.930475,
		-0.554532, 0.768979, 0.318065,
		0.831723, 0.524582, 0.181801,
		35.724304, 35.253765, 30.568798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136272, 35.688366, 30.296810>,  <35.142101, 34.886559, 30.441538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136272, 35.688366, 30.296810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508186, 35.549347, 30.248299>,  <35.731335, 35.465935, 30.219193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508186, 35.549347, 30.248299>,  <35.136272, 35.688366, 30.296810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508186, 35.549347, 30.248299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034727, 0.410820, -0.911055,
		0.366455, 0.842876, 0.394044,
		0.929787, -0.347545, -0.121277,
		35.787121, 35.445084, 30.211916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477936, 36.309475, 29.944283>,  <35.136272, 35.688366, 30.296810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477936, 36.309475, 29.944283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745853, 36.015785, 29.899929>,  <35.906605, 35.839573, 29.873318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745853, 36.015785, 29.899929>,  <35.477936, 36.309475, 29.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745853, 36.015785, 29.899929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393272, 0.477424, -0.785750,
		0.629853, 0.482683, 0.608524,
		0.669793, -0.734223, -0.110882,
		35.946793, 35.795517, 29.866665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215523, 36.555462, 30.064081>,  <35.477936, 36.309475, 29.944283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215523, 36.555462, 30.064081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225967, 36.231853, 29.829201>,  <36.232235, 36.037689, 29.688272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225967, 36.231853, 29.829201>,  <36.215523, 36.555462, 30.064081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225967, 36.231853, 29.829201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400522, 0.546659, -0.735355,
		0.915915, -0.215985, 0.338305,
		0.026112, -0.809021, -0.587199,
		36.233803, 35.989147, 29.653042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796532, 36.671444, 29.541130>,  <36.215523, 36.555462, 30.064081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796532, 36.671444, 29.541130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556400, 36.395370, 29.379509>,  <36.412323, 36.229725, 29.282536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556400, 36.395370, 29.379509>,  <36.796532, 36.671444, 29.541130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556400, 36.395370, 29.379509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302244, 0.271961, -0.913611,
		0.740445, -0.670586, 0.045339,
		-0.600324, -0.690183, -0.404053,
		36.376305, 36.188316, 29.258293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181660, 36.541752, 28.946630>,  <36.796532, 36.671444, 29.541130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181660, 36.541752, 28.946630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816956, 36.398994, 28.865322>,  <36.598133, 36.313339, 28.816538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816956, 36.398994, 28.865322>,  <37.181660, 36.541752, 28.946630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816956, 36.398994, 28.865322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179460, 0.098991, -0.978772,
		0.369442, -0.928884, -0.026207,
		-0.911760, -0.356896, -0.203269,
		36.543427, 36.291927, 28.804342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224552, 36.068439, 28.394386>,  <37.181660, 36.541752, 28.946630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224552, 36.068439, 28.394386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829597, 36.128857, 28.375370>,  <36.592625, 36.165108, 28.363960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829597, 36.128857, 28.375370>,  <37.224552, 36.068439, 28.394386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829597, 36.128857, 28.375370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036519, -0.074927, -0.996520,
		-0.154077, -0.985684, 0.068466,
		-0.987384, 0.151041, -0.047540,
		36.533382, 36.174168, 28.361109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947166, 35.552715, 28.008377>,  <37.224552, 36.068439, 28.394386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947166, 35.552715, 28.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688107, 35.856922, 27.989763>,  <36.532673, 36.039448, 27.978596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688107, 35.856922, 27.989763>,  <36.947166, 35.552715, 28.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688107, 35.856922, 27.989763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179281, 0.092748, -0.979416,
		-0.740549, -0.642657, -0.196414,
		-0.647646, 0.760519, -0.046532,
		36.493813, 36.085079, 27.975803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501160, 35.361275, 27.395834>,  <36.947166, 35.552715, 28.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501160, 35.361275, 27.395834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443935, 35.750641, 27.467386>,  <36.409603, 35.984261, 27.510317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443935, 35.750641, 27.467386>,  <36.501160, 35.361275, 27.395834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443935, 35.750641, 27.467386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132465, 0.197945, -0.971221,
		-0.980810, -0.115246, -0.157261,
		-0.143058, 0.973415, 0.178881,
		36.401016, 36.042664, 27.521049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080917, 35.572407, 26.865740>,  <36.501160, 35.361275, 27.395834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080917, 35.572407, 26.865740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243313, 35.912842, 26.998899>,  <36.340752, 36.117104, 27.078796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243313, 35.912842, 26.998899>,  <36.080917, 35.572407, 26.865740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243313, 35.912842, 26.998899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219729, 0.262679, -0.939531,
		-0.887068, 0.454590, -0.080363,
		0.405992, 0.851086, 0.332900,
		36.365112, 36.168167, 27.098770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787689, 36.153160, 26.451490>,  <36.080917, 35.572407, 26.865740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787689, 36.153160, 26.451490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119591, 36.309200, 26.611153>,  <36.318733, 36.402824, 26.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119591, 36.309200, 26.611153>,  <35.787689, 36.153160, 26.451490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119591, 36.309200, 26.611153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197652, 0.463445, -0.863801,
		-0.521956, 0.795639, 0.307442,
		0.829757, 0.390099, 0.399157,
		36.368519, 36.426231, 26.730900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727013, 36.808319, 26.389055>,  <35.787689, 36.153160, 26.451490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727013, 36.808319, 26.389055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121552, 36.742714, 26.394985>,  <36.358276, 36.703350, 26.398542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121552, 36.742714, 26.394985>,  <35.727013, 36.808319, 26.389055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121552, 36.742714, 26.394985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076901, 0.379134, -0.922141,
		0.145620, 0.910691, 0.386570,
		0.986347, -0.164010, 0.014824,
		36.417458, 36.693512, 26.399433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067558, 37.350906, 26.008200>,  <35.727013, 36.808319, 26.389055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067558, 37.350906, 26.008200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373878, 37.099201, 26.061218>,  <36.557671, 36.948177, 26.093029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373878, 37.099201, 26.061218>,  <36.067558, 37.350906, 26.008200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373878, 37.099201, 26.061218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263738, 0.119349, -0.957182,
		0.586505, 0.767970, 0.257360,
		0.765803, -0.629268, 0.132545,
		36.603619, 36.910419, 26.100981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584499, 37.624687, 25.614313>,  <36.067558, 37.350906, 26.008200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584499, 37.624687, 25.614313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685658, 37.241070, 25.665340>,  <36.746353, 37.010899, 25.695957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685658, 37.241070, 25.665340>,  <36.584499, 37.624687, 25.614313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685658, 37.241070, 25.665340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232356, -0.067789, -0.970266,
		0.939177, 0.275018, 0.205696,
		0.252896, -0.959046, 0.127568,
		36.761528, 36.953358, 25.703611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333157, 37.558239, 25.313850>,  <36.584499, 37.624687, 25.614313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333157, 37.558239, 25.313850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159538, 37.197918, 25.308743>,  <37.055367, 36.981724, 25.305677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159538, 37.197918, 25.308743>,  <37.333157, 37.558239, 25.313850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159538, 37.197918, 25.308743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327500, -0.144566, -0.933726,
		0.839256, -0.409460, 0.357760,
		-0.434043, -0.900801, -0.012771,
		37.029324, 36.927677, 25.304911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915333, 37.070457, 25.047194>,  <37.333157, 37.558239, 25.313850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915333, 37.070457, 25.047194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550278, 36.910477, 25.013426>,  <37.331245, 36.814487, 24.993164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550278, 36.910477, 25.013426>,  <37.915333, 37.070457, 25.047194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550278, 36.910477, 25.013426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146518, -0.127269, -0.980987,
		0.381607, -0.907655, 0.174751,
		-0.912639, -0.399956, -0.084421,
		37.276485, 36.790489, 24.988100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064285, 36.502628, 24.620468>,  <37.915333, 37.070457, 25.047194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064285, 36.502628, 24.620468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671021, 36.574585, 24.607616>,  <37.435062, 36.617760, 24.599905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671021, 36.574585, 24.607616>,  <38.064285, 36.502628, 24.620468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671021, 36.574585, 24.607616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002284, -0.187909, -0.982184,
		-0.182689, -0.965578, 0.185156,
		-0.983168, 0.179857, -0.032123,
		37.376072, 36.628551, 24.597979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865856, 35.876434, 24.315191>,  <38.064285, 36.502628, 24.620468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865856, 35.876434, 24.315191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585712, 36.158684, 24.272137>,  <37.417625, 36.328033, 24.246304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585712, 36.158684, 24.272137>,  <37.865856, 35.876434, 24.315191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585712, 36.158684, 24.272137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091309, -0.060992, -0.993953,
		-0.707923, -0.705955, -0.021713,
		-0.700362, 0.705625, -0.107638,
		37.375603, 36.370373, 24.239845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439953, 35.577496, 23.793194>,  <37.865856, 35.876434, 24.315191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439953, 35.577496, 23.793194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389206, 35.974121, 23.803822>,  <37.358757, 36.212097, 23.810198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389206, 35.974121, 23.803822>,  <37.439953, 35.577496, 23.793194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389206, 35.974121, 23.803822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047018, 0.032765, -0.998356,
		-0.990805, -0.125406, -0.050778,
		-0.126864, 0.991564, 0.026568,
		37.351147, 36.271591, 23.811792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808258, 35.638065, 23.454508>,  <37.439953, 35.577496, 23.793194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808258, 35.638065, 23.454508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992714, 35.992828, 23.443583>,  <37.103390, 36.205685, 23.437027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992714, 35.992828, 23.443583>,  <36.808258, 35.638065, 23.454508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992714, 35.992828, 23.443583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013898, -0.037995, -0.999181,
		-0.887217, 0.460385, -0.029848,
		0.461142, 0.886906, -0.027312,
		37.131058, 36.258900, 23.435389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588814, 35.998333, 22.883730>,  <36.808258, 35.638065, 23.454508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588814, 35.998333, 22.883730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939304, 36.181278, 22.944458>,  <37.149597, 36.291046, 22.980894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939304, 36.181278, 22.944458>,  <36.588814, 35.998333, 22.883730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939304, 36.181278, 22.944458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238184, -0.137156, -0.961487,
		-0.418926, 0.878639, -0.229116,
		0.876224, 0.457364, 0.151819,
		37.202171, 36.318489, 22.990004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601261, 36.596317, 22.568075>,  <36.588814, 35.998333, 22.883730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601261, 36.596317, 22.568075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968109, 36.438965, 22.593843>,  <37.188217, 36.344555, 22.609304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968109, 36.438965, 22.593843>,  <36.601261, 36.596317, 22.568075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968109, 36.438965, 22.593843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001669, -0.165400, -0.986225,
		0.398617, 0.904375, -0.152347,
		0.917116, -0.393380, 0.064422,
		37.243244, 36.320950, 22.613171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024414, 36.963135, 22.094940>,  <36.601261, 36.596317, 22.568075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024414, 36.963135, 22.094940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205120, 36.610394, 22.148960>,  <37.313545, 36.398746, 22.181372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205120, 36.610394, 22.148960>,  <37.024414, 36.963135, 22.094940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205120, 36.610394, 22.148960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117065, -0.091473, -0.988903,
		0.884423, 0.462561, 0.061911,
		0.451765, -0.881856, 0.135051,
		37.340649, 36.345837, 22.189476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727894, 37.012066, 21.877470>,  <37.024414, 36.963135, 22.094940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727894, 37.012066, 21.877470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585358, 36.638550, 21.864420>,  <37.499836, 36.414440, 21.856590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585358, 36.638550, 21.864420>,  <37.727894, 37.012066, 21.877470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585358, 36.638550, 21.864420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224294, -0.051592, -0.973155,
		0.907036, -0.354090, 0.227827,
		-0.356338, -0.933787, -0.032625,
		37.478455, 36.358414, 21.854633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156639, 36.624866, 21.356077>,  <37.727894, 37.012066, 21.877470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156639, 36.624866, 21.356077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829384, 36.401196, 21.409687>,  <37.633030, 36.266991, 21.441853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829384, 36.401196, 21.409687>,  <38.156639, 36.624866, 21.356077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829384, 36.401196, 21.409687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148531, -0.430678, -0.890199,
		0.555503, -0.708402, 0.435411,
		-0.818141, -0.559181, 0.134023,
		37.583942, 36.233440, 21.449894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362064, 35.932053, 21.262014>,  <38.156639, 36.624866, 21.356077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362064, 35.932053, 21.262014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971630, 35.981003, 21.190144>,  <37.737370, 36.010372, 21.147020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971630, 35.981003, 21.190144>,  <38.362064, 35.932053, 21.262014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971630, 35.981003, 21.190144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105051, -0.458092, -0.882676,
		-0.190325, -0.880441, 0.434281,
		-0.976084, 0.122374, -0.179678,
		37.678806, 36.017715, 21.136240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285789, 35.259605, 21.035942>,  <38.362064, 35.932053, 21.262014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285789, 35.259605, 21.035942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960270, 35.469540, 20.936115>,  <37.764957, 35.595501, 20.876219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960270, 35.469540, 20.936115>,  <38.285789, 35.259605, 21.035942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960270, 35.469540, 20.936115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001636, -0.431498, -0.902112,
		-0.581151, -0.733725, 0.352010,
		-0.813794, 0.524840, -0.249565,
		37.716133, 35.626991, 20.861246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691196, 34.807972, 20.983433>,  <38.285789, 35.259605, 21.035942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691196, 34.807972, 20.983433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581829, 35.117977, 20.755541>,  <37.516209, 35.303982, 20.618805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581829, 35.117977, 20.755541>,  <37.691196, 34.807972, 20.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581829, 35.117977, 20.755541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136179, -0.617523, -0.774675,
		-0.952207, -0.134224, 0.274382,
		-0.273418, 0.775016, -0.569731,
		37.499805, 35.350483, 20.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983704, 34.622711, 20.694645>,  <37.691196, 34.807972, 20.983433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983704, 34.622711, 20.694645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093628, 34.910374, 20.439365>,  <37.159584, 35.082970, 20.286198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093628, 34.910374, 20.439365>,  <36.983704, 34.622711, 20.694645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093628, 34.910374, 20.439365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049178, -0.652372, -0.756302,
		-0.960239, 0.239227, -0.143914,
		0.274813, 0.719153, -0.638198,
		37.176071, 35.126122, 20.247906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600941, 34.478722, 20.132286>,  <36.983704, 34.622711, 20.694645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600941, 34.478722, 20.132286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872959, 34.736633, 19.992689>,  <37.036171, 34.891380, 19.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872959, 34.736633, 19.992689>,  <36.600941, 34.478722, 20.132286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872959, 34.736633, 19.992689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148339, -0.345158, -0.926748,
		-0.718006, 0.682001, -0.139078,
		0.680047, 0.644779, -0.348993,
		37.076973, 34.930069, 19.887991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419769, 34.601795, 19.450464>,  <36.600941, 34.478722, 20.132286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419769, 34.601795, 19.450464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804234, 34.711983, 19.457233>,  <37.034912, 34.778095, 19.461294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804234, 34.711983, 19.457233>,  <36.419769, 34.601795, 19.450464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804234, 34.711983, 19.457233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156252, -0.492597, -0.856115,
		-0.227502, 0.825508, -0.516508,
		0.961160, 0.275473, 0.016921,
		37.092583, 34.794624, 19.462309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589642, 35.069183, 18.773531>,  <36.419769, 34.601795, 19.450464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589642, 35.069183, 18.773531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920406, 34.892357, 18.912556>,  <37.118866, 34.786263, 18.995972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920406, 34.892357, 18.912556>,  <36.589642, 35.069183, 18.773531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920406, 34.892357, 18.912556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189654, -0.362620, -0.912435,
		0.529390, 0.820417, -0.216014,
		0.826908, -0.442066, 0.347563,
		37.168480, 34.759739, 19.016825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032516, 35.356312, 18.258984>,  <36.589642, 35.069183, 18.773531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032516, 35.356312, 18.258984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197414, 35.054787, 18.463659>,  <37.296352, 34.873871, 18.586466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197414, 35.054787, 18.463659>,  <37.032516, 35.356312, 18.258984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197414, 35.054787, 18.463659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434955, -0.330662, -0.837542,
		0.800544, 0.567833, 0.191560,
		0.412243, -0.753809, 0.511691,
		37.321087, 34.828644, 18.617167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727474, 35.354141, 18.086695>,  <37.032516, 35.356312, 18.258984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727474, 35.354141, 18.086695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632851, 34.996334, 18.238419>,  <37.576077, 34.781651, 18.329453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632851, 34.996334, 18.238419>,  <37.727474, 35.354141, 18.086695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632851, 34.996334, 18.238419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159717, -0.420883, -0.892944,
		0.958399, -0.150654, 0.242435,
		-0.236562, -0.894517, 0.379312,
		37.561882, 34.727978, 18.352213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136829, 34.987724, 17.798450>,  <37.727474, 35.354141, 18.086695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136829, 34.987724, 17.798450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881355, 34.704525, 17.918995>,  <37.728069, 34.534607, 17.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881355, 34.704525, 17.918995>,  <38.136829, 34.987724, 17.798450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881355, 34.704525, 17.918995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163004, -0.507251, -0.846242,
		0.752001, -0.491363, 0.439382,
		-0.638689, -0.707996, 0.301359,
		37.689747, 34.492126, 18.009403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461349, 34.391777, 17.725674>,  <38.136829, 34.987724, 17.798450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461349, 34.391777, 17.725674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085918, 34.254089, 17.735405>,  <37.860661, 34.171478, 17.741243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085918, 34.254089, 17.735405>,  <38.461349, 34.391777, 17.725674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085918, 34.254089, 17.735405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159083, -0.494173, -0.854685,
		0.306218, -0.798316, 0.518577,
		-0.938575, -0.344217, 0.024327,
		37.804344, 34.150826, 17.742702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437798, 33.617985, 17.706173>,  <38.461349, 34.391777, 17.725674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437798, 33.617985, 17.706173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073643, 33.741318, 17.595808>,  <37.855148, 33.815319, 17.529589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073643, 33.741318, 17.595808>,  <38.437798, 33.617985, 17.706173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073643, 33.741318, 17.595808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036683, -0.604067, -0.796088,
		-0.412128, -0.734870, 0.538625,
		-0.910387, 0.308332, -0.275910,
		37.800526, 33.833817, 17.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079273, 33.039185, 17.654104>,  <38.437798, 33.617985, 17.706173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079273, 33.039185, 17.654104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887623, 33.296238, 17.414953>,  <37.772633, 33.450470, 17.271463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887623, 33.296238, 17.414953>,  <38.079273, 33.039185, 17.654104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887623, 33.296238, 17.414953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086146, -0.712290, -0.696578,
		-0.873509, -0.282243, 0.396636,
		-0.479125, 0.642636, -0.597878,
		37.743885, 33.489029, 17.235590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428944, 32.637421, 17.072075>,  <38.079273, 33.039185, 17.654104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428944, 32.637421, 17.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771225, 32.432472, 17.101063>,  <38.976593, 32.309502, 17.118456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771225, 32.432472, 17.101063>,  <38.428944, 32.637421, 17.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771225, 32.432472, 17.101063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133866, -0.083902, 0.987441,
		-0.499857, -0.854655, -0.140385,
		0.855700, -0.512372, 0.072470,
		39.027935, 32.278759, 17.122805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297447, 32.020649, 17.471493>,  <38.428944, 32.637421, 17.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297447, 32.020649, 17.471493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686447, 32.107704, 17.504684>,  <38.919846, 32.159939, 17.524599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686447, 32.107704, 17.504684>,  <38.297447, 32.020649, 17.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686447, 32.107704, 17.504684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101449, 0.075094, 0.992003,
		0.209670, -0.973136, 0.095108,
		0.972495, 0.217642, 0.082979,
		38.978195, 32.172997, 17.529577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496403, 31.598150, 18.099529>,  <38.297447, 32.020649, 17.471493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496403, 31.598150, 18.099529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796654, 31.850029, 18.019482>,  <38.976803, 32.001156, 17.971453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796654, 31.850029, 18.019482>,  <38.496403, 31.598150, 18.099529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796654, 31.850029, 18.019482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134969, 0.150359, 0.979375,
		0.646798, -0.762152, 0.027874,
		0.750623, 0.629696, -0.200119,
		39.021839, 32.038937, 17.959446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001228, 31.418356, 18.528316>,  <38.496403, 31.598150, 18.099529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001228, 31.418356, 18.528316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071358, 31.796509, 18.418398>,  <39.113434, 32.023399, 18.352448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071358, 31.796509, 18.418398>,  <39.001228, 31.418356, 18.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071358, 31.796509, 18.418398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039991, 0.285726, 0.957477,
		0.983699, -0.156875, 0.087900,
		0.175319, 0.945384, -0.274795,
		39.123955, 32.080124, 18.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501007, 31.685411, 19.012997>,  <39.001228, 31.418356, 18.528316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501007, 31.685411, 19.012997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388447, 32.039284, 18.864323>,  <39.320911, 32.251606, 18.775118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388447, 32.039284, 18.864323>,  <39.501007, 31.685411, 19.012997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388447, 32.039284, 18.864323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216473, 0.435878, 0.873585,
		0.934853, 0.165371, -0.314167,
		-0.281405, 0.884682, -0.371683,
		39.304024, 32.304688, 18.752817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941303, 32.176708, 19.361429>,  <39.501007, 31.685411, 19.012997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941303, 32.176708, 19.361429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636421, 32.402672, 19.234985>,  <39.453491, 32.538250, 19.159119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636421, 32.402672, 19.234985>,  <39.941303, 32.176708, 19.361429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636421, 32.402672, 19.234985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000512, 0.487796, 0.872958,
		0.647334, 0.665535, -0.371512,
		-0.762206, 0.564905, -0.316108,
		39.407761, 32.572144, 19.140154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107616, 32.784462, 19.571381>,  <39.941303, 32.176708, 19.361429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107616, 32.784462, 19.571381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709324, 32.766537, 19.539101>,  <39.470348, 32.755783, 19.519733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709324, 32.766537, 19.539101>,  <40.107616, 32.784462, 19.571381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709324, 32.766537, 19.539101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092170, 0.435467, 0.895474,
		-0.004984, 0.899089, -0.437738,
		-0.995731, -0.044809, -0.080698,
		39.410606, 32.753094, 19.514891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891182, 33.395481, 19.820936>,  <40.107616, 32.784462, 19.571381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891182, 33.395481, 19.820936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541862, 33.201027, 19.833773>,  <39.332272, 33.084354, 19.841475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541862, 33.201027, 19.833773>,  <39.891182, 33.395481, 19.820936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541862, 33.201027, 19.833773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206664, 0.429291, 0.879204,
		-0.441189, 0.761171, -0.475364,
		-0.873294, -0.486136, 0.032091,
		39.279873, 33.055187, 19.843401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319214, 33.908356, 20.011723>,  <39.891182, 33.395481, 19.820936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319214, 33.908356, 20.011723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167240, 33.544746, 20.080214>,  <39.076054, 33.326580, 20.121307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167240, 33.544746, 20.080214>,  <39.319214, 33.908356, 20.011723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167240, 33.544746, 20.080214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307376, 0.298659, 0.903506,
		-0.872449, 0.290645, -0.392884,
		-0.379937, -0.909026, 0.171228,
		39.053261, 33.272038, 20.131582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689266, 33.965679, 20.245861>,  <39.319214, 33.908356, 20.011723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689266, 33.965679, 20.245861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773846, 33.593235, 20.364738>,  <38.824593, 33.369770, 20.436066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773846, 33.593235, 20.364738>,  <38.689266, 33.965679, 20.245861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773846, 33.593235, 20.364738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304346, 0.226229, 0.925308,
		-0.928797, -0.286105, -0.235543,
		0.211449, -0.931109, 0.297196,
		38.837280, 33.313904, 20.453897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128391, 33.760902, 20.760899>,  <38.689266, 33.965679, 20.245861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128391, 33.760902, 20.760899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440479, 33.521610, 20.833973>,  <38.627731, 33.378033, 20.877817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440479, 33.521610, 20.833973>,  <38.128391, 33.760902, 20.760899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440479, 33.521610, 20.833973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101057, 0.167667, 0.980650,
		-0.617288, -0.783585, 0.070362,
		0.780220, -0.598233, 0.182685,
		38.674545, 33.342140, 20.888779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936676, 33.395378, 21.371738>,  <38.128391, 33.760902, 20.760899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936676, 33.395378, 21.371738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335487, 33.378742, 21.345806>,  <38.574776, 33.368763, 21.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335487, 33.378742, 21.345806>,  <37.936676, 33.395378, 21.371738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335487, 33.378742, 21.345806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069705, 0.129118, 0.989176,
		-0.032768, -0.990757, 0.131634,
		0.997029, -0.041589, -0.064830,
		38.634598, 33.366264, 21.326357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057995, 32.905243, 21.891190>,  <37.936676, 33.395378, 21.371738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057995, 32.905243, 21.891190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407391, 33.085060, 21.816422>,  <38.617027, 33.192951, 21.771561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407391, 33.085060, 21.816422>,  <38.057995, 32.905243, 21.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407391, 33.085060, 21.816422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237818, -0.058967, 0.969518,
		0.424814, -0.891312, -0.158415,
		0.873485, 0.449539, -0.186920,
		38.669437, 33.219921, 21.760345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484619, 32.597763, 22.333004>,  <38.057995, 32.905243, 21.891190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484619, 32.597763, 22.333004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660767, 32.948711, 22.256800>,  <38.766453, 33.159283, 22.211077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660767, 32.948711, 22.256800>,  <38.484619, 32.597763, 22.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660767, 32.948711, 22.256800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173849, 0.124850, 0.976826,
		0.880827, -0.463280, -0.097551,
		0.440364, 0.877374, -0.190512,
		38.792877, 33.211922, 22.199646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190002, 32.672813, 22.753609>,  <38.484619, 32.597763, 22.333004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190002, 32.672813, 22.753609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116482, 33.058323, 22.676306>,  <39.072369, 33.289631, 22.629923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116482, 33.058323, 22.676306>,  <39.190002, 32.672813, 22.753609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116482, 33.058323, 22.676306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200546, 0.229241, 0.952486,
		0.962287, 0.136315, -0.235418,
		-0.183806, 0.963777, -0.193258,
		39.061340, 33.347458, 22.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674728, 32.971313, 23.164551>,  <39.190002, 32.672813, 22.753609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674728, 32.971313, 23.164551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408131, 33.255417, 23.073935>,  <39.248173, 33.425880, 23.019566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408131, 33.255417, 23.073935>,  <39.674728, 32.971313, 23.164551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408131, 33.255417, 23.073935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146256, 0.422537, 0.894467,
		0.731025, 0.563022, -0.385497,
		-0.666492, 0.710260, -0.226540,
		39.208183, 33.468494, 23.005972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995525, 33.577869, 23.393961>,  <39.674728, 32.971313, 23.164551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995525, 33.577869, 23.393961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605835, 33.661350, 23.359734>,  <39.372021, 33.711441, 23.339197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605835, 33.661350, 23.359734>,  <39.995525, 33.577869, 23.393961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605835, 33.661350, 23.359734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028600, 0.490583, 0.870925,
		0.223747, 0.846032, -0.483909,
		-0.974228, 0.208707, -0.085571,
		39.313568, 33.723961, 23.334063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907215, 34.265671, 23.588709>,  <39.995525, 33.577869, 23.393961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907215, 34.265671, 23.588709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535873, 34.129475, 23.648331>,  <39.313068, 34.047756, 23.684103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535873, 34.129475, 23.648331>,  <39.907215, 34.265671, 23.588709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535873, 34.129475, 23.648331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041057, 0.492500, 0.869343,
		-0.369415, 0.800941, -0.471196,
		-0.928357, -0.340494, 0.149053,
		39.257366, 34.027325, 23.693047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541073, 34.888103, 23.706646>,  <39.907215, 34.265671, 23.588709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541073, 34.888103, 23.706646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303047, 34.601978, 23.853197>,  <39.160233, 34.430305, 23.941128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303047, 34.601978, 23.853197>,  <39.541073, 34.888103, 23.706646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303047, 34.601978, 23.853197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042234, 0.427414, 0.903069,
		-0.802568, 0.552857, -0.224128,
		-0.595064, -0.715308, 0.366379,
		39.124527, 34.387386, 23.963110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983936, 35.203747, 24.100752>,  <39.541073, 34.888103, 23.706646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983936, 35.203747, 24.100752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998981, 34.825871, 24.231073>,  <39.008011, 34.599144, 24.309267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998981, 34.825871, 24.231073>,  <38.983936, 35.203747, 24.100752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998981, 34.825871, 24.231073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083046, 0.321951, 0.943107,
		-0.995836, -0.062532, -0.066342,
		0.037616, -0.944689, 0.325803,
		39.010265, 34.542465, 24.328814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331604, 35.134113, 24.496738>,  <38.983936, 35.203747, 24.100752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331604, 35.134113, 24.496738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596924, 34.856121, 24.607756>,  <38.756115, 34.689323, 24.674366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596924, 34.856121, 24.607756>,  <38.331604, 35.134113, 24.496738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596924, 34.856121, 24.607756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131918, 0.256478, 0.957505,
		-0.736636, -0.671725, 0.078440,
		0.663299, -0.694985, 0.277544,
		38.795914, 34.647625, 24.691019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999062, 34.747288, 25.047304>,  <38.331604, 35.134113, 24.496738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999062, 34.747288, 25.047304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394196, 34.699020, 25.086550>,  <38.631275, 34.670059, 25.110096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394196, 34.699020, 25.086550>,  <37.999062, 34.747288, 25.047304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394196, 34.699020, 25.086550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069868, 0.219287, 0.973156,
		-0.138947, -0.968169, 0.208187,
		0.987832, -0.120672, 0.098113,
		38.690544, 34.662819, 25.115984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127598, 34.378895, 25.659756>,  <37.999062, 34.747288, 25.047304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127598, 34.378895, 25.659756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465302, 34.580166, 25.585957>,  <38.667923, 34.700928, 25.541677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465302, 34.580166, 25.585957>,  <38.127598, 34.378895, 25.659756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465302, 34.580166, 25.585957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028873, 0.301053, 0.953170,
		0.535155, -0.810051, 0.239639,
		0.844260, 0.503175, -0.184499,
		38.718578, 34.731117, 25.530607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516968, 34.187130, 26.103558>,  <38.127598, 34.378895, 25.659756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516968, 34.187130, 26.103558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686806, 34.535912, 26.006058>,  <38.788708, 34.745182, 25.947557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686806, 34.535912, 26.006058>,  <38.516968, 34.187130, 26.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686806, 34.535912, 26.006058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098362, 0.223204, 0.969797,
		0.900026, -0.435743, 0.009003,
		0.424592, 0.871957, -0.243750,
		38.814182, 34.797497, 25.932932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021626, 34.325703, 26.618097>,  <38.516968, 34.187130, 26.103558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021626, 34.325703, 26.618097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 34.696419, 26.469444>,  <38.986843, 34.918846, 26.380253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 34.696419, 26.469444>,  <39.021626, 34.325703, 26.618097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999886, 34.696419, 26.469444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158434, 0.375471, 0.913193,
		0.985873, -0.009246, -0.167242,
		-0.054351, 0.926788, -0.371631,
		38.983582, 34.974457, 26.357954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446308, 34.741455, 27.044516>,  <39.021626, 34.325703, 26.618097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446308, 34.741455, 27.044516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220024, 35.026005, 26.877699>,  <39.084255, 35.196735, 26.777609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220024, 35.026005, 26.877699>,  <39.446308, 34.741455, 27.044516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220024, 35.026005, 26.877699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051106, 0.535019, 0.843293,
		0.823020, 0.455745, -0.339021,
		-0.565709, 0.711372, -0.417040,
		39.050312, 35.239418, 26.752586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910564, 35.323620, 27.007368>,  <39.446308, 34.741455, 27.044516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910564, 35.323620, 27.007368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520405, 35.410706, 27.021196>,  <39.286308, 35.462955, 27.029493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520405, 35.410706, 27.021196>,  <39.910564, 35.323620, 27.007368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520405, 35.410706, 27.021196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119178, 0.388874, 0.913550,
		0.185448, 0.895197, -0.405254,
		-0.975400, 0.217713, 0.034572,
		39.227783, 35.476021, 27.031569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902985, 35.869514, 27.370819>,  <39.910564, 35.323620, 27.007368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902985, 35.869514, 27.370819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512493, 35.783928, 27.357027>,  <39.278198, 35.732574, 27.348751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512493, 35.783928, 27.357027>,  <39.902985, 35.869514, 27.370819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512493, 35.783928, 27.357027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121829, 0.410194, 0.903824,
		-0.179246, 0.886543, -0.426512,
		-0.976232, -0.213969, -0.034481,
		39.219624, 35.719738, 27.346684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597336, 36.512707, 27.489618>,  <39.902985, 35.869514, 27.370819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597336, 36.512707, 27.489618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337379, 36.226723, 27.592749>,  <39.181408, 36.055130, 27.654627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337379, 36.226723, 27.592749>,  <39.597336, 36.512707, 27.489618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337379, 36.226723, 27.592749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121003, 0.432236, 0.893605,
		-0.750336, 0.549545, -0.367418,
		-0.649888, -0.714963, 0.257826,
		39.142414, 36.012234, 27.670097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114784, 36.920044, 27.812941>,  <39.597336, 36.512707, 27.489618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114784, 36.920044, 27.812941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069271, 36.544083, 27.941710>,  <39.041962, 36.318504, 28.018970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069271, 36.544083, 27.941710>,  <39.114784, 36.920044, 27.812941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069271, 36.544083, 27.941710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105115, 0.333596, 0.936838,
		-0.987929, 0.072760, -0.136756,
		-0.113786, -0.939904, 0.321920,
		39.035137, 36.262112, 28.038286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522606, 36.916676, 28.186577>,  <39.114784, 36.920044, 27.812941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522606, 36.916676, 28.186577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718449, 36.595299, 28.322084>,  <38.835953, 36.402473, 28.403389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718449, 36.595299, 28.322084>,  <38.522606, 36.916676, 28.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718449, 36.595299, 28.322084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033349, 0.370981, 0.928041,
		-0.871308, -0.465669, 0.154839,
		0.489602, -0.803446, 0.338768,
		38.865330, 36.354263, 28.423716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219864, 36.795937, 28.941072>,  <38.522606, 36.916676, 28.186577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219864, 36.795937, 28.941072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563797, 36.598186, 28.890045>,  <38.770157, 36.479534, 28.859428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563797, 36.598186, 28.890045>,  <38.219864, 36.795937, 28.941072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563797, 36.598186, 28.890045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306448, 0.299861, 0.903423,
		-0.408380, -0.815888, 0.409332,
		0.859835, -0.494379, -0.127570,
		38.821747, 36.449871, 28.851774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369259, 36.469849, 29.560658>,  <38.219864, 36.795937, 28.941072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369259, 36.469849, 29.560658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721985, 36.491550, 29.373274>,  <38.933620, 36.504574, 29.260843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721985, 36.491550, 29.373274>,  <38.369259, 36.469849, 29.560658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721985, 36.491550, 29.373274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431253, 0.309191, 0.847597,
		0.190831, -0.949451, 0.249252,
		0.881819, 0.054258, -0.468457,
		38.986530, 36.507828, 29.232737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757961, 36.125526, 30.002226>,  <38.369259, 36.469849, 29.560658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757961, 36.125526, 30.002226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995995, 36.355766, 29.777882>,  <39.138813, 36.493912, 29.643274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995995, 36.355766, 29.777882>,  <38.757961, 36.125526, 30.002226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995995, 36.355766, 29.777882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530348, 0.243091, 0.812181,
		0.603831, -0.780765, -0.160609,
		0.595080, 0.575598, -0.560862,
		39.174519, 36.528446, 29.609623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398170, 36.093395, 30.367878>,  <38.757961, 36.125526, 30.002226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398170, 36.093395, 30.367878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466675, 36.408226, 30.130835>,  <39.507778, 36.597126, 29.988609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466675, 36.408226, 30.130835>,  <39.398170, 36.093395, 30.367878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466675, 36.408226, 30.130835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722757, 0.308400, 0.618476,
		0.669547, -0.534230, -0.516048,
		0.171259, 0.787076, -0.592606,
		39.518051, 36.644348, 29.953053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123558, 36.068554, 30.172863>,  <39.398170, 36.093395, 30.367878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123558, 36.068554, 30.172863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006748, 36.447594, 30.121052>,  <39.936661, 36.675018, 30.089966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006748, 36.447594, 30.121052>,  <40.123558, 36.068554, 30.172863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006748, 36.447594, 30.121052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751214, 0.311081, 0.582156,
		0.591945, 0.072701, -0.802693,
		-0.292026, 0.947599, -0.129529,
		39.919140, 36.731873, 30.082193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738316, 36.470894, 30.111128>,  <40.123558, 36.068554, 30.172863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738316, 36.470894, 30.111128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463745, 36.745831, 30.206110>,  <40.299004, 36.910793, 30.263100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463745, 36.745831, 30.206110>,  <40.738316, 36.470894, 30.111128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463745, 36.745831, 30.206110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645317, 0.425212, 0.634634,
		0.335238, 0.588865, -0.735427,
		-0.686427, 0.687337, 0.237458,
		40.257816, 36.952030, 30.277348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091846, 37.113541, 29.991062>,  <40.738316, 36.470894, 30.111128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091846, 37.113541, 29.991062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764122, 37.179504, 30.210709>,  <40.567486, 37.219082, 30.342497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764122, 37.179504, 30.210709>,  <41.091846, 37.113541, 29.991062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764122, 37.179504, 30.210709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571811, 0.305035, 0.761568,
		-0.041908, 0.937954, -0.344218,
		-0.819314, 0.164912, 0.549115,
		40.518326, 37.228977, 30.375443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158676, 37.845409, 30.307224>,  <41.091846, 37.113541, 29.991062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158676, 37.845409, 30.307224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912121, 37.626835, 30.534018>,  <40.764187, 37.495689, 30.670094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912121, 37.626835, 30.534018>,  <41.158676, 37.845409, 30.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912121, 37.626835, 30.534018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489423, 0.298211, 0.819473,
		-0.616871, 0.782610, 0.083624,
		-0.616390, -0.546436, 0.566984,
		40.727203, 37.462906, 30.704113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227451, 38.126125, 30.953175>,  <41.158676, 37.845409, 30.307224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227451, 38.126125, 30.953175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030609, 37.787266, 31.033346>,  <40.912502, 37.583950, 31.081450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030609, 37.787266, 31.033346>,  <41.227451, 38.126125, 30.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030609, 37.787266, 31.033346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263850, 0.074263, 0.961701,
		-0.829587, 0.526143, 0.186975,
		-0.492107, -0.847147, 0.200431,
		40.882977, 37.533123, 31.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706001, 38.265717, 31.566996>,  <41.227451, 38.126125, 30.953175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706001, 38.265717, 31.566996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775005, 37.872097, 31.549601>,  <40.816406, 37.635925, 31.539164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775005, 37.872097, 31.549601>,  <40.706001, 38.265717, 31.566996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775005, 37.872097, 31.549601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210428, -0.006310, 0.977589,
		-0.962268, -0.177795, 0.205983,
		0.172511, -0.984047, -0.043485,
		40.826759, 37.576881, 31.536554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283329, 37.917984, 32.133072>,  <40.706001, 38.265717, 31.566996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283329, 37.917984, 32.133072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585621, 37.669136, 32.051243>,  <40.766994, 37.519829, 32.002144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585621, 37.669136, 32.051243>,  <40.283329, 37.917984, 32.133072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585621, 37.669136, 32.051243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069591, -0.234328, 0.969664,
		-0.651181, -0.747036, -0.133794,
		0.755725, -0.622116, -0.204577,
		40.812340, 37.482502, 31.989870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203823, 37.300869, 32.568256>,  <40.283329, 37.917984, 32.133072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203823, 37.300869, 32.568256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589989, 37.285973, 32.465042>,  <40.821690, 37.277035, 32.403114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589989, 37.285973, 32.465042>,  <40.203823, 37.300869, 32.568256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589989, 37.285973, 32.465042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246442, -0.192518, 0.949844,
		-0.085049, -0.980586, -0.176683,
		0.965419, -0.037241, -0.258031,
		40.879616, 37.274799, 32.387634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414394, 36.807327, 33.024265>,  <40.203823, 37.300869, 32.568256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414394, 36.807327, 33.024265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735855, 36.956512, 32.838776>,  <40.928734, 37.046024, 32.727482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735855, 36.956512, 32.838776>,  <40.414394, 36.807327, 33.024265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735855, 36.956512, 32.838776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566274, -0.239707, 0.788590,
		0.182962, -0.896346, -0.403843,
		0.803653, 0.372967, -0.463720,
		40.976952, 37.068401, 32.699661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034462, 36.349056, 33.089783>,  <40.414394, 36.807327, 33.024265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034462, 36.349056, 33.089783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203617, 36.710476, 33.062157>,  <41.305111, 36.927326, 33.045582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203617, 36.710476, 33.062157>,  <41.034462, 36.349056, 33.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203617, 36.710476, 33.062157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445362, -0.140858, 0.884201,
		0.789188, -0.404677, -0.461972,
		0.422888, 0.903546, -0.069065,
		41.330482, 36.981541, 33.041439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705696, 36.306774, 33.119041>,  <41.034462, 36.349056, 33.089783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705696, 36.306774, 33.119041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658417, 36.687035, 33.233791>,  <41.630051, 36.915192, 33.302643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658417, 36.687035, 33.233791>,  <41.705696, 36.306774, 33.119041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658417, 36.687035, 33.233791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521672, -0.186372, 0.832540,
		0.844918, 0.248060, -0.473898,
		-0.118199, 0.950648, 0.286875,
		41.622955, 36.972229, 33.319855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329491, 36.541325, 33.465965>,  <41.705696, 36.306774, 33.119041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329491, 36.541325, 33.465965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092682, 36.843304, 33.578796>,  <41.950596, 37.024490, 33.646496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092682, 36.843304, 33.578796>,  <42.329491, 36.541325, 33.465965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092682, 36.843304, 33.578796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419672, -0.010026, 0.907620,
		0.688032, 0.655710, -0.310894,
		-0.592019, 0.754946, 0.282081,
		41.915077, 37.069786, 33.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731663, 37.056881, 33.766304>,  <42.329491, 36.541325, 33.465965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731663, 37.056881, 33.766304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361370, 37.111515, 33.907360>,  <42.139194, 37.144295, 33.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361370, 37.111515, 33.907360>,  <42.731663, 37.056881, 33.766304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361370, 37.111515, 33.907360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361256, 0.043635, 0.931445,
		0.111834, 0.989667, -0.089736,
		-0.925736, 0.136585, 0.352643,
		42.083649, 37.152489, 34.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714874, 37.645672, 34.103130>,  <42.731663, 37.056881, 33.766304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714874, 37.645672, 34.103130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400242, 37.450794, 34.254887>,  <42.211464, 37.333866, 34.345940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400242, 37.450794, 34.254887>,  <42.714874, 37.645672, 34.103130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400242, 37.450794, 34.254887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460082, -0.052605, 0.886317,
		-0.411851, 0.871707, 0.265528,
		-0.786577, -0.487195, 0.379391,
		42.164268, 37.304634, 34.368706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526241, 37.948101, 34.702087>,  <42.714874, 37.645672, 34.103130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526241, 37.948101, 34.702087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400482, 37.570137, 34.738529>,  <42.325027, 37.343361, 34.760395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400482, 37.570137, 34.738529>,  <42.526241, 37.948101, 34.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400482, 37.570137, 34.738529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336700, -0.021264, 0.941372,
		-0.887573, 0.326644, 0.324836,
		-0.314401, -0.944908, 0.091107,
		42.306164, 37.286663, 34.765862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111088, 38.248425, 35.325394>,  <42.526241, 37.948101, 34.702087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111088, 38.248425, 35.325394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143673, 37.851692, 35.286140>,  <42.163223, 37.613651, 35.262589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143673, 37.851692, 35.286140>,  <42.111088, 38.248425, 35.325394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143673, 37.851692, 35.286140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002249, -0.098645, 0.995120,
		-0.996674, -0.080843, -0.010267,
		0.081461, -0.991833, -0.098136,
		42.168110, 37.554142, 35.256699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975433, 38.076408, 35.997154>,  <42.111088, 38.248425, 35.325394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975433, 38.076408, 35.997154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118771, 37.729576, 35.858734>,  <42.204773, 37.521477, 35.775681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118771, 37.729576, 35.858734>,  <41.975433, 38.076408, 35.997154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118771, 37.729576, 35.858734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424513, -0.178799, 0.887592,
		-0.831492, -0.464966, 0.304018,
		0.358342, -0.867085, -0.346054,
		42.226273, 37.469452, 35.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909996, 37.614544, 36.581081>,  <41.975433, 38.076408, 35.997154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909996, 37.614544, 36.581081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195938, 37.467472, 36.343159>,  <42.367504, 37.379230, 36.200405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195938, 37.467472, 36.343159>,  <41.909996, 37.614544, 36.581081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195938, 37.467472, 36.343159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591404, -0.135987, 0.794826,
		-0.373126, -0.919957, 0.120235,
		0.714855, -0.367678, -0.594807,
		42.410397, 37.357170, 36.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044498, 36.804161, 36.633671>,  <41.909996, 37.614544, 36.581081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044498, 36.804161, 36.633671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343086, 37.062149, 36.568195>,  <42.522240, 37.216942, 36.528908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343086, 37.062149, 36.568195>,  <42.044498, 36.804161, 36.633671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343086, 37.062149, 36.568195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319875, -0.132100, 0.938205,
		0.583490, -0.752705, -0.304918,
		0.746471, 0.644969, -0.163693,
		42.567028, 37.255638, 36.519089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634789, 36.469360, 37.015110>,  <42.044498, 36.804161, 36.633671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634789, 36.469360, 37.015110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737377, 36.850315, 36.949154>,  <42.798931, 37.078888, 36.909580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737377, 36.850315, 36.949154>,  <42.634789, 36.469360, 37.015110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737377, 36.850315, 36.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405665, 0.048776, 0.912719,
		0.877301, -0.300978, -0.373839,
		0.256474, 0.952383, -0.164888,
		42.814320, 37.136028, 36.899689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382118, 36.521027, 37.248383>,  <42.634789, 36.469360, 37.015110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382118, 36.521027, 37.248383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198460, 36.876369, 37.247398>,  <43.088264, 37.089577, 37.246807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198460, 36.876369, 37.247398>,  <43.382118, 36.521027, 37.248383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198460, 36.876369, 37.247398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463378, 0.241857, 0.852518,
		0.757934, 0.390293, -0.522693,
		-0.459148, 0.888356, -0.002459,
		43.060715, 37.142876, 37.246662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897369, 36.994072, 37.599094>,  <43.382118, 36.521027, 37.248383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897369, 36.994072, 37.599094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550224, 37.192204, 37.614407>,  <43.341938, 37.311081, 37.623592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550224, 37.192204, 37.614407>,  <43.897369, 36.994072, 37.599094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550224, 37.192204, 37.614407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204635, 0.286199, 0.936063,
		0.452700, 0.820209, -0.349743,
		-0.867864, 0.495326, 0.038281,
		43.289864, 37.340801, 37.625893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078880, 37.548103, 37.972675>,  <43.897369, 36.994072, 37.599094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078880, 37.548103, 37.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682632, 37.597809, 37.995441>,  <43.444885, 37.627632, 38.009102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682632, 37.597809, 37.995441>,  <44.078880, 37.548103, 37.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682632, 37.597809, 37.995441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101150, 0.386458, 0.916744,
		0.091920, 0.913898, -0.395400,
		-0.990616, 0.124262, 0.056918,
		43.385448, 37.635086, 38.012516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854774, 38.187031, 38.047852>,  <44.078880, 37.548103, 37.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854774, 38.187031, 38.047852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533520, 37.995716, 38.189957>,  <43.340767, 37.880928, 38.275219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533520, 37.995716, 38.189957>,  <43.854774, 38.187031, 38.047852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533520, 37.995716, 38.189957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169951, 0.387593, 0.906029,
		-0.571035, 0.788046, -0.230007,
		-0.803141, -0.478284, 0.355258,
		43.292576, 37.852230, 38.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404682, 38.768311, 38.421780>,  <43.854774, 38.187031, 38.047852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404682, 38.768311, 38.421780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416023, 38.389194, 38.548832>,  <43.422829, 38.161724, 38.625061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416023, 38.389194, 38.548832>,  <43.404682, 38.768311, 38.421780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416023, 38.389194, 38.548832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117352, 0.318713, 0.940559,
		-0.992685, 0.010607, 0.120261,
		0.028352, -0.947792, 0.317627,
		43.424530, 38.104858, 38.644119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806030, 38.597717, 38.838570>,  <43.404682, 38.768311, 38.421780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806030, 38.597717, 38.838570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117638, 38.368717, 38.940845>,  <43.304600, 38.231316, 39.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117638, 38.368717, 38.940845>,  <42.806030, 38.597717, 38.838570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117638, 38.368717, 38.940845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010217, 0.396146, 0.918131,
		-0.626921, -0.717851, 0.302755,
		0.779016, -0.572502, 0.255687,
		43.351341, 38.196968, 39.017551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549160, 38.316170, 39.486137>,  <42.806030, 38.597717, 38.838570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549160, 38.316170, 39.486137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944317, 38.356594, 39.439045>,  <43.181412, 38.380848, 39.410789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944317, 38.356594, 39.439045>,  <42.549160, 38.316170, 39.486137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944317, 38.356594, 39.439045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083674, 0.291983, 0.952756,
		0.130665, -0.951069, 0.279990,
		0.987889, 0.101064, -0.117732,
		43.240685, 38.386913, 39.403725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978985, 38.122795, 39.941998>,  <42.549160, 38.316170, 39.486137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978985, 38.122795, 39.941998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223621, 38.404640, 39.798061>,  <43.370403, 38.573746, 39.711700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223621, 38.404640, 39.798061>,  <42.978985, 38.122795, 39.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223621, 38.404640, 39.798061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073239, 0.503281, 0.861013,
		0.787780, -0.500231, 0.359406,
		0.611587, 0.704611, -0.359838,
		43.407097, 38.616024, 39.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214272, 37.422771, 39.894741>,  <42.978985, 38.122795, 39.941998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214272, 37.422771, 39.894741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063324, 37.056477, 39.949902>,  <42.972755, 36.836700, 39.982998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063324, 37.056477, 39.949902>,  <43.214272, 37.422771, 39.894741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063324, 37.056477, 39.949902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925846, 0.369869, -0.077499,
		0.019965, -0.156918, -0.987410,
		-0.377373, -0.915737, 0.137898,
		42.950111, 36.781757, 39.991272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626522, 37.459591, 39.265129>,  <43.214272, 37.422771, 39.894741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626522, 37.459591, 39.265129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353718, 37.748398, 39.218578>,  <43.190033, 37.921684, 39.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353718, 37.748398, 39.218578>,  <43.626522, 37.459591, 39.265129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353718, 37.748398, 39.218578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215932, -0.350835, -0.911202,
		-0.698735, -0.596323, 0.395181,
		-0.682014, 0.722021, -0.116375,
		43.149113, 37.965004, 39.183666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895203, 37.145554, 39.272449>,  <43.626522, 37.459591, 39.265129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895203, 37.145554, 39.272449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926685, 37.479568, 39.054634>,  <42.945576, 37.679977, 38.923946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926685, 37.479568, 39.054634>,  <42.895203, 37.145554, 39.272449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926685, 37.479568, 39.054634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498226, -0.440171, -0.747008,
		-0.863468, 0.330095, 0.381393,
		0.078706, 0.835037, -0.544535,
		42.950298, 37.730080, 38.891273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370529, 37.137661, 38.727249>,  <42.895203, 37.145554, 39.272449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370529, 37.137661, 38.727249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639313, 37.405766, 38.601254>,  <42.800583, 37.566628, 38.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639313, 37.405766, 38.601254>,  <42.370529, 37.137661, 38.727249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639313, 37.405766, 38.601254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267154, -0.177309, -0.947201,
		-0.690721, 0.720635, 0.059917,
		0.671963, 0.670259, -0.314991,
		42.840900, 37.606842, 38.506756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100906, 37.556675, 38.292957>,  <42.370529, 37.137661, 38.727249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100906, 37.556675, 38.292957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484520, 37.570484, 38.180489>,  <42.714687, 37.578770, 38.113007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484520, 37.570484, 38.180489>,  <42.100906, 37.556675, 38.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484520, 37.570484, 38.180489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282938, 0.067965, -0.956727,
		-0.013917, 0.997090, 0.074948,
		0.959037, 0.034520, -0.281169,
		42.772232, 37.580841, 38.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170055, 38.032669, 37.726749>,  <42.100906, 37.556675, 38.292957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170055, 38.032669, 37.726749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484467, 37.786694, 37.701424>,  <42.673115, 37.639107, 37.686226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484467, 37.786694, 37.701424>,  <42.170055, 38.032669, 37.726749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484467, 37.786694, 37.701424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141345, -0.079061, -0.986798,
		0.601815, 0.784601, -0.149063,
		0.786028, -0.614940, -0.063319,
		42.720276, 37.602211, 37.682426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609222, 38.360931, 37.187008>,  <42.170055, 38.032669, 37.726749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609222, 38.360931, 37.187008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702946, 37.973598, 37.221478>,  <42.759178, 37.741199, 37.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702946, 37.973598, 37.221478>,  <42.609222, 38.360931, 37.187008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702946, 37.973598, 37.221478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030645, -0.081239, -0.996223,
		0.971680, 0.236063, 0.010640,
		0.234307, -0.968336, 0.086172,
		42.773239, 37.683098, 37.247330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175133, 38.366421, 36.773712>,  <42.609222, 38.360931, 37.187008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175133, 38.366421, 36.773712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055790, 37.985680, 36.801899>,  <42.984184, 37.757236, 36.818810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055790, 37.985680, 36.801899>,  <43.175133, 38.366421, 36.773712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055790, 37.985680, 36.801899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027791, -0.082461, -0.996207,
		0.954050, -0.295266, 0.051056,
		-0.298356, -0.951850, 0.070467,
		42.966282, 37.700123, 36.823040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560020, 38.067959, 36.368053>,  <43.175133, 38.366421, 36.773712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560020, 38.067959, 36.368053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261089, 37.804527, 36.403309>,  <43.081730, 37.646469, 36.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261089, 37.804527, 36.403309>,  <43.560020, 38.067959, 36.368053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261089, 37.804527, 36.403309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009331, -0.143034, -0.989674,
		0.664386, -0.738792, 0.113039,
		-0.747331, -0.658580, 0.088136,
		43.036888, 37.606953, 36.429749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644947, 37.461784, 35.847603>,  <43.560020, 38.067959, 36.368053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644947, 37.461784, 35.847603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363205, 37.254742, 36.041908>,  <43.194160, 37.130516, 36.158493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363205, 37.254742, 36.041908>,  <43.644947, 37.461784, 35.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363205, 37.254742, 36.041908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573066, 0.010790, -0.819438,
		0.418910, -0.855548, -0.304226,
		-0.704351, -0.517612, 0.485765,
		43.151901, 37.099457, 36.187637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398933, 36.855354, 35.474411>,  <43.644947, 37.461784, 35.847603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398933, 36.855354, 35.474411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101875, 37.000862, 35.699322>,  <42.923641, 37.088169, 35.834267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101875, 37.000862, 35.699322>,  <43.398933, 36.855354, 35.474411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101875, 37.000862, 35.699322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626916, -0.082389, -0.774718,
		-0.235498, -0.927836, 0.289242,
		-0.742642, 0.363775, 0.562273,
		42.879082, 37.109993, 35.868004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885403, 36.431614, 35.400948>,  <43.398933, 36.855354, 35.474411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885403, 36.431614, 35.400948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669586, 36.756786, 35.488617>,  <42.540096, 36.951889, 35.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669586, 36.756786, 35.488617>,  <42.885403, 36.431614, 35.400948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669586, 36.756786, 35.488617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546566, -0.140162, -0.825603,
		-0.640441, -0.565237, 0.519945,
		-0.539538, 0.812934, 0.219173,
		42.507725, 37.000668, 35.554367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051777, 36.205509, 35.382153>,  <42.885403, 36.431614, 35.400948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051777, 36.205509, 35.382153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121323, 36.595295, 35.325306>,  <42.163048, 36.829166, 35.291199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121323, 36.595295, 35.325306>,  <42.051777, 36.205509, 35.382153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121323, 36.595295, 35.325306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612413, -0.006026, -0.790515,
		-0.771183, 0.224476, 0.595724,
		0.173862, 0.974461, -0.142119,
		42.173481, 36.887634, 35.282669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484673, 36.396088, 35.134438>,  <42.051777, 36.205509, 35.382153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484673, 36.396088, 35.134438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716988, 36.707989, 35.040909>,  <41.856377, 36.895130, 34.984791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716988, 36.707989, 35.040909>,  <41.484673, 36.396088, 35.134438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716988, 36.707989, 35.040909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419552, 0.040567, -0.906825,
		-0.697614, 0.624771, 0.350707,
		0.580785, 0.779753, -0.233824,
		41.891224, 36.941914, 34.970760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072258, 36.788361, 34.729813>,  <41.484673, 36.396088, 35.134438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072258, 36.788361, 34.729813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432079, 36.938000, 34.639606>,  <41.647972, 37.027782, 34.585484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432079, 36.938000, 34.639606>,  <41.072258, 36.788361, 34.729813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432079, 36.938000, 34.639606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302079, 0.159849, -0.939785,
		-0.315525, 0.913508, 0.256800,
		0.899551, 0.374100, -0.225515,
		41.701946, 37.050228, 34.571953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915276, 37.463955, 34.445934>,  <41.072258, 36.788361, 34.729813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915276, 37.463955, 34.445934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273460, 37.358700, 34.302322>,  <41.488373, 37.295547, 34.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273460, 37.358700, 34.302322>,  <40.915276, 37.463955, 34.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273460, 37.358700, 34.302322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320794, 0.177690, -0.930332,
		0.308602, 0.948253, 0.074702,
		0.895464, -0.263139, -0.359029,
		41.542099, 37.279758, 34.194614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001095, 37.961231, 33.963478>,  <40.915276, 37.463955, 34.445934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001095, 37.961231, 33.963478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275902, 37.683529, 33.877663>,  <41.440784, 37.516907, 33.826172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275902, 37.683529, 33.877663>,  <41.001095, 37.961231, 33.963478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275902, 37.683529, 33.877663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138373, 0.164848, -0.976565,
		0.713349, 0.700599, 0.017187,
		0.687013, -0.694253, -0.214538,
		41.482006, 37.475254, 33.813301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316139, 38.266388, 33.484348>,  <41.001095, 37.961231, 33.963478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316139, 38.266388, 33.484348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433064, 37.884777, 33.457867>,  <41.503216, 37.655811, 33.441978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433064, 37.884777, 33.457867>,  <41.316139, 38.266388, 33.484348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433064, 37.884777, 33.457867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185869, 0.011235, -0.982510,
		0.938087, 0.299503, -0.174040,
		0.292309, -0.954029, -0.066208,
		41.520756, 37.598568, 33.438004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704227, 38.250710, 32.935341>,  <41.316139, 38.266388, 33.484348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704227, 38.250710, 32.935341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623932, 37.863430, 32.995060>,  <41.575756, 37.631062, 33.030891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623932, 37.863430, 32.995060>,  <41.704227, 38.250710, 32.935341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623932, 37.863430, 32.995060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209111, -0.106538, -0.972071,
		0.957067, -0.226350, -0.181076,
		-0.200737, -0.968202, 0.149296,
		41.563709, 37.572968, 33.039848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094902, 37.869358, 32.521194>,  <41.704227, 38.250710, 32.935341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094902, 37.869358, 32.521194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774624, 37.639442, 32.588730>,  <41.582458, 37.501495, 32.629253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774624, 37.639442, 32.588730>,  <42.094902, 37.869358, 32.521194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774624, 37.639442, 32.588730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242994, 0.053996, -0.968524,
		0.547578, -0.816519, -0.182904,
		-0.800695, -0.574787, 0.168842,
		41.534416, 37.467007, 32.639381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140717, 37.375149, 31.992233>,  <42.094902, 37.869358, 32.521194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140717, 37.375149, 31.992233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761635, 37.322525, 32.108547>,  <41.534187, 37.290951, 32.178337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761635, 37.322525, 32.108547>,  <42.140717, 37.375149, 31.992233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761635, 37.322525, 32.108547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262217, -0.198464, -0.944380,
		0.181952, -0.971239, 0.153588,
		-0.947700, -0.131558, 0.290786,
		41.477325, 37.283058, 32.195782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870815, 36.763798, 31.671749>,  <42.140717, 37.375149, 31.992233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870815, 36.763798, 31.671749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574982, 37.015881, 31.766277>,  <41.397480, 37.167130, 31.822994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574982, 37.015881, 31.766277>,  <41.870815, 36.763798, 31.671749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574982, 37.015881, 31.766277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265551, 0.049406, -0.962830,
		-0.618461, -0.774851, 0.130813,
		-0.739587, 0.630210, 0.236318,
		41.353104, 37.204945, 31.837173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279278, 36.340981, 31.475254>,  <41.870815, 36.763798, 31.671749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279278, 36.340981, 31.475254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 36.719322, 31.498148>,  <41.074791, 36.946327, 31.511885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151474, 36.719322, 31.498148>,  <41.279278, 36.340981, 31.475254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151474, 36.719322, 31.498148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254734, -0.027556, -0.966618,
		-0.912701, -0.323427, 0.249746,
		-0.319512, 0.945852, 0.057237,
		41.055622, 37.003078, 31.515320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202984, 35.614094, 31.102777>,  <41.279278, 36.340981, 31.475254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202984, 35.614094, 31.102777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414326, 35.322697, 30.928354>,  <41.541130, 35.147858, 30.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414326, 35.322697, 30.928354>,  <41.202984, 35.614094, 31.102777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414326, 35.322697, 30.928354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798731, 0.600632, -0.035642,
		0.287874, -0.329461, 0.899213,
		0.528353, -0.728489, -0.436057,
		41.572830, 35.104149, 30.797537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864380, 35.434113, 31.519053>,  <41.202984, 35.614094, 31.102777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864380, 35.434113, 31.519053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885250, 35.379810, 31.123304>,  <41.897770, 35.347229, 30.885857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885250, 35.379810, 31.123304>,  <41.864380, 35.434113, 31.519053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885250, 35.379810, 31.123304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743976, 0.666166, -0.052172,
		0.666166, -0.733344, 0.135751,
		0.052172, -0.135751, -0.989368,
		41.900902, 35.339085, 30.826494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474388, 35.243080, 31.432178>,  <41.864380, 35.434113, 31.519053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474388, 35.243080, 31.432178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323170, 35.430885, 31.113020>,  <42.232437, 35.543568, 30.921524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323170, 35.430885, 31.113020>,  <42.474388, 35.243080, 31.432178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323170, 35.430885, 31.113020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800922, 0.598136, -0.027520,
		0.464330, -0.649457, -0.602165,
		-0.378050, 0.469509, -0.797897,
		42.209755, 35.571739, 30.873652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970676, 35.300671, 30.885685>,  <42.474388, 35.243080, 31.432178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970676, 35.300671, 30.885685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707043, 35.600891, 30.866596>,  <42.548862, 35.781025, 30.855143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707043, 35.600891, 30.866596>,  <42.970676, 35.300671, 30.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707043, 35.600891, 30.866596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750859, 0.653105, -0.098313,
		-0.042622, -0.100628, -0.994011,
		-0.659086, 0.750552, -0.047721,
		42.509315, 35.826057, 30.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121281, 35.670105, 30.257877>,  <42.970676, 35.300671, 30.885685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121281, 35.670105, 30.257877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977230, 35.888687, 30.560322>,  <42.890800, 36.019836, 30.741789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977230, 35.888687, 30.560322>,  <43.121281, 35.670105, 30.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977230, 35.888687, 30.560322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864613, 0.499891, 0.050524,
		-0.350364, 0.671937, -0.652492,
		-0.360124, 0.546452, 0.756109,
		42.869194, 36.052624, 30.787155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448128, 36.164417, 30.173485>,  <43.121281, 35.670105, 30.257877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448128, 36.164417, 30.173485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349926, 36.172474, 30.561159>,  <43.291004, 36.177307, 30.793764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349926, 36.172474, 30.561159>,  <43.448128, 36.164417, 30.173485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349926, 36.172474, 30.561159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718481, 0.674958, 0.167976,
		-0.650777, 0.737581, -0.180177,
		-0.245508, 0.020139, 0.969185,
		43.276272, 36.178516, 30.851915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436333, 36.914066, 30.555891>,  <43.448128, 36.164417, 30.173485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436333, 36.914066, 30.555891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536304, 36.598969, 30.781099>,  <43.596287, 36.409908, 30.916224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536304, 36.598969, 30.781099>,  <43.436333, 36.914066, 30.555891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536304, 36.598969, 30.781099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775336, 0.511123, 0.370955,
		-0.579990, 0.343816, 0.738514,
		0.249931, -0.787746, 0.563019,
		43.611282, 36.362644, 30.950005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485302, 37.153233, 31.246389>,  <43.436333, 36.914066, 30.555891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485302, 37.153233, 31.246389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711136, 36.847214, 31.122490>,  <43.846638, 36.663601, 31.048149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711136, 36.847214, 31.122490>,  <43.485302, 37.153233, 31.246389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711136, 36.847214, 31.122490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805148, 0.427920, 0.410636,
		-0.181608, -0.481233, 0.857574,
		0.564585, -0.765048, -0.309750,
		43.880512, 36.617699, 31.029564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894878, 36.831871, 31.885052>,  <43.485302, 37.153233, 31.246389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894878, 36.831871, 31.885052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087563, 36.798340, 31.536125>,  <44.203171, 36.778221, 31.326769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087563, 36.798340, 31.536125>,  <43.894878, 36.831871, 31.885052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087563, 36.798340, 31.536125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782977, 0.488233, 0.385455,
		0.393582, -0.868678, 0.300818,
		0.481706, -0.083825, -0.872315,
		44.232075, 36.773193, 31.274431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623268, 36.547112, 31.988600>,  <43.894878, 36.831871, 31.885052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623268, 36.547112, 31.988600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611378, 36.797249, 31.676687>,  <44.604244, 36.947330, 31.489540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611378, 36.797249, 31.676687>,  <44.623268, 36.547112, 31.988600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611378, 36.797249, 31.676687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677040, 0.586511, 0.444547,
		0.735346, -0.514729, -0.440818,
		-0.029723, 0.625347, -0.779781,
		44.602459, 36.984852, 31.442753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151096, 36.442139, 32.475960>,  <44.623268, 36.547112, 31.988600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151096, 36.442139, 32.475960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966915, 36.227310, 32.758671>,  <44.856407, 36.098415, 32.928299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966915, 36.227310, 32.758671>,  <45.151096, 36.442139, 32.475960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966915, 36.227310, 32.758671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354545, 0.618674, 0.701100,
		-0.813804, 0.573411, -0.094458,
		-0.460457, -0.537068, 0.706779,
		44.828777, 36.066189, 32.970703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781200, 36.387135, 32.732925>,  <45.151096, 36.442139, 32.475960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781200, 36.387135, 32.732925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157948, 36.264812, 32.788582>,  <46.383995, 36.191418, 32.821976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157948, 36.264812, 32.788582>,  <45.781200, 36.387135, 32.732925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157948, 36.264812, 32.788582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302088, 0.952090, 0.047625,
		-0.147043, -0.002823, 0.989126,
		0.941871, -0.305806, 0.139145,
		46.440510, 36.173069, 32.830326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087120, 36.615284, 33.409904>,  <45.781200, 36.387135, 32.732925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087120, 36.615284, 33.409904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352165, 36.580135, 33.112389>,  <46.511192, 36.559044, 32.933880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352165, 36.580135, 33.112389>,  <46.087120, 36.615284, 33.409904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352165, 36.580135, 33.112389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308898, 0.936759, 0.164512,
		0.682295, -0.338763, 0.647852,
		0.662612, -0.087874, -0.743790,
		46.550949, 36.553772, 32.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216137, 35.923767, 33.296219>,  <46.087120, 36.615284, 33.409904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216137, 35.923767, 33.296219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151615, 35.592186, 33.081997>,  <46.112904, 35.393238, 32.953465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151615, 35.592186, 33.081997>,  <46.216137, 35.923767, 33.296219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151615, 35.592186, 33.081997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315027, -0.557522, 0.768067,
		-0.935274, -0.044821, 0.351074,
		-0.161305, -0.828952, -0.535556,
		46.103222, 35.343502, 32.921329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638973, 35.482464, 33.585011>,  <46.216137, 35.923767, 33.296219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638973, 35.482464, 33.585011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909729, 35.271610, 33.379505>,  <46.072182, 35.145100, 33.256203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909729, 35.271610, 33.379505>,  <45.638973, 35.482464, 33.585011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909729, 35.271610, 33.379505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149498, -0.584969, 0.797159,
		-0.720742, -0.616395, -0.317155,
		0.676891, -0.527132, -0.513762,
		46.112797, 35.113472, 33.225376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481678, 34.781013, 33.655010>,  <45.638973, 35.482464, 33.585011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481678, 34.781013, 33.655010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873516, 34.825329, 33.587933>,  <46.108620, 34.851917, 33.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873516, 34.825329, 33.587933>,  <45.481678, 34.781013, 33.655010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873516, 34.825329, 33.587933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200463, -0.598822, 0.775388,
		-0.014517, -0.793183, -0.608811,
		0.979594, 0.110787, -0.167697,
		46.167393, 34.858566, 33.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770687, 34.156071, 33.740757>,  <45.481678, 34.781013, 33.655010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770687, 34.156071, 33.740757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033035, 34.446552, 33.823189>,  <46.190445, 34.620842, 33.872646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033035, 34.446552, 33.823189>,  <45.770687, 34.156071, 33.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033035, 34.446552, 33.823189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381576, -0.554487, 0.739556,
		0.651335, -0.406417, -0.640772,
		0.655867, 0.726202, 0.206078,
		46.229797, 34.664413, 33.885014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442917, 33.879143, 33.680119>,  <45.770687, 34.156071, 33.740757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442917, 33.879143, 33.680119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465347, 34.184082, 33.938015>,  <46.478806, 34.367046, 34.092751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465347, 34.184082, 33.938015>,  <46.442917, 33.879143, 33.680119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465347, 34.184082, 33.938015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479840, -0.586866, 0.652183,
		0.875562, 0.272798, -0.398714,
		0.056077, 0.762345, 0.644737,
		46.482170, 34.412785, 34.131435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.985352, 33.963230, 34.073597>,  <46.442917, 33.879143, 33.680119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.985352, 33.963230, 34.073597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746216, 34.144188, 34.338299>,  <46.602734, 34.252762, 34.497120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746216, 34.144188, 34.338299>,  <46.985352, 33.963230, 34.073597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.746216, 34.144188, 34.338299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292722, -0.645318, 0.705605,
		0.746256, 0.615552, 0.253373,
		-0.597843, 0.452394, 0.661758,
		46.566864, 34.279907, 34.536827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361687, 34.347786, 34.673298>,  <46.985352, 33.963230, 34.073597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361687, 34.347786, 34.673298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009663, 34.164963, 34.724831>,  <46.798447, 34.055271, 34.755749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009663, 34.164963, 34.724831>,  <47.361687, 34.347786, 34.673298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009663, 34.164963, 34.724831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412937, -0.602632, 0.682874,
		-0.234474, 0.654168, 0.719087,
		-0.880059, -0.457054, 0.128829,
		46.745644, 34.027847, 34.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597164, 34.698116, 35.319725>,  <47.361687, 34.347786, 34.673298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597164, 34.698116, 35.319725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658360, 34.894897, 34.976894>,  <47.695076, 35.012966, 34.771194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658360, 34.894897, 34.976894>,  <47.597164, 34.698116, 35.319725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658360, 34.894897, 34.976894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016290, 0.865912, 0.499931,
		0.988093, -0.090446, 0.124462,
		0.152990, 0.491951, -0.857075,
		47.704258, 35.042484, 34.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.697182, 30.722412, 24.258612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298100, 30.703867, 24.238867>,  <36.058651, 30.692739, 24.227020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298100, 30.703867, 24.238867>,  <36.697182, 30.722412, 24.258612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298100, 30.703867, 24.238867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063310, 0.379849, 0.922879,
		-0.024037, 0.923886, -0.381913,
		-0.997704, -0.046362, -0.049360,
		35.998787, 30.689959, 24.224058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505810, 31.291403, 24.585102>,  <36.697182, 30.722412, 24.258612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505810, 31.291403, 24.585102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180725, 31.058397, 24.579691>,  <35.985676, 30.918594, 24.576445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180725, 31.058397, 24.579691>,  <36.505810, 31.291403, 24.585102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180725, 31.058397, 24.579691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198907, 0.255537, 0.946117,
		-0.547670, 0.771607, -0.323544,
		-0.812708, -0.582515, -0.013528,
		35.936913, 30.883642, 24.575632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048336, 31.617275, 24.831909>,  <36.505810, 31.291403, 24.585102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048336, 31.617275, 24.831909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919098, 31.245552, 24.903454>,  <35.841557, 31.022518, 24.946381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919098, 31.245552, 24.903454>,  <36.048336, 31.617275, 24.831909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919098, 31.245552, 24.903454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276332, 0.273404, 0.921353,
		-0.905124, 0.248259, -0.345133,
		-0.323095, -0.929310, 0.178863,
		35.822170, 30.966759, 24.957113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348782, 31.704397, 25.125299>,  <36.048336, 31.617275, 24.831909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348782, 31.704397, 25.125299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472496, 31.334030, 25.212038>,  <35.546726, 31.111811, 25.264080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472496, 31.334030, 25.212038>,  <35.348782, 31.704397, 25.125299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472496, 31.334030, 25.212038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210584, 0.155679, 0.965100,
		-0.927359, -0.344158, -0.146833,
		0.309288, -0.925915, 0.216844,
		35.565281, 31.056255, 25.277092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840794, 31.450867, 25.636683>,  <35.348782, 31.704397, 25.125299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840794, 31.450867, 25.636683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148724, 31.198011, 25.671936>,  <35.333481, 31.046297, 25.693089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148724, 31.198011, 25.671936>,  <34.840794, 31.450867, 25.636683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148724, 31.198011, 25.671936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162271, -0.060299, 0.984902,
		-0.617281, -0.772504, -0.148998,
		0.769826, -0.632140, 0.088133,
		35.379673, 31.008369, 25.698376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584339, 30.933594, 26.024961>,  <34.840794, 31.450867, 25.636683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584339, 30.933594, 26.024961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980541, 30.898884, 26.067621>,  <35.218262, 30.878057, 26.093218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980541, 30.898884, 26.067621>,  <34.584339, 30.933594, 26.024961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980541, 30.898884, 26.067621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111307, -0.050700, 0.992492,
		-0.080715, -0.994937, -0.059877,
		0.990503, -0.086774, 0.106651,
		35.277691, 30.872852, 26.099617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637680, 30.446917, 26.520580>,  <34.584339, 30.933594, 26.024961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637680, 30.446917, 26.520580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994499, 30.627304, 26.532492>,  <35.208591, 30.735537, 26.539639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994499, 30.627304, 26.532492>,  <34.637680, 30.446917, 26.520580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994499, 30.627304, 26.532492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052484, 0.037918, 0.997902,
		0.448892, -0.891735, 0.057493,
		0.892044, 0.450967, 0.029781,
		35.262112, 30.762594, 26.541426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195759, 30.024008, 27.001421>,  <34.637680, 30.446917, 26.520580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195759, 30.024008, 27.001421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291458, 30.412189, 26.988930>,  <35.348877, 30.645100, 26.981436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291458, 30.412189, 26.988930>,  <35.195759, 30.024008, 27.001421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291458, 30.412189, 26.988930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098415, 0.056233, 0.993555,
		0.965958, -0.234633, 0.108961,
		0.239248, 0.970456, -0.031228,
		35.363232, 30.703327, 26.979561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603096, 30.108763, 27.682171>,  <35.195759, 30.024008, 27.001421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603096, 30.108763, 27.682171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578674, 30.484682, 27.547678>,  <35.564022, 30.710234, 27.466982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578674, 30.484682, 27.547678>,  <35.603096, 30.108763, 27.682171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578674, 30.484682, 27.547678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179504, 0.341706, 0.922505,
		0.981861, -0.004030, -0.189561,
		-0.061057, 0.939798, -0.336231,
		35.560356, 30.766621, 27.446808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272266, 30.576132, 27.900023>,  <35.603096, 30.108763, 27.682171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272266, 30.576132, 27.900023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977539, 30.830362, 27.807817>,  <35.800701, 30.982901, 27.752495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977539, 30.830362, 27.807817>,  <36.272266, 30.576132, 27.900023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977539, 30.830362, 27.807817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235952, 0.561251, 0.793299,
		0.633578, 0.530130, -0.563508,
		-0.736821, 0.635578, -0.230511,
		35.756493, 31.021036, 27.738665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619286, 31.233082, 27.905777>,  <36.272266, 30.576132, 27.900023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619286, 31.233082, 27.905777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228611, 31.291878, 27.968369>,  <35.994205, 31.327156, 28.005924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228611, 31.291878, 27.968369>,  <36.619286, 31.233082, 27.905777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228611, 31.291878, 27.968369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213726, 0.596669, 0.773504,
		0.020331, 0.788911, -0.614171,
		-0.976682, 0.146991, 0.156480,
		35.935608, 31.335976, 28.015312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514324, 32.015068, 27.906076>,  <36.619286, 31.233082, 27.905777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514324, 32.015068, 27.906076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197628, 31.855957, 28.091516>,  <36.007610, 31.760490, 28.202780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197628, 31.855957, 28.091516>,  <36.514324, 32.015068, 27.906076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197628, 31.855957, 28.091516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096976, 0.667455, 0.738309,
		-0.603116, 0.629504, -0.489873,
		-0.791736, -0.397780, 0.463600,
		35.960106, 31.736624, 28.230597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257156, 32.615608, 28.298557>,  <36.514324, 32.015068, 27.906076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257156, 32.615608, 28.298557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.117611, 32.293446, 28.490231>,  <36.033886, 32.100147, 28.605234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.117611, 32.293446, 28.490231>,  <36.257156, 32.615608, 28.298557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117611, 32.293446, 28.490231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009686, 0.514377, 0.857509,
		-0.937125, 0.294509, -0.187246,
		-0.348859, -0.805407, 0.479183,
		36.012955, 32.051823, 28.633986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675465, 32.789902, 28.675873>,  <36.257156, 32.615608, 28.298557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675465, 32.789902, 28.675873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845989, 32.467899, 28.840904>,  <35.948303, 32.274696, 28.939922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845989, 32.467899, 28.840904>,  <35.675465, 32.789902, 28.675873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845989, 32.467899, 28.840904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150203, 0.386772, 0.909861,
		-0.892021, -0.449851, 0.043969,
		0.426307, -0.805010, 0.412578,
		35.973881, 32.226395, 28.964678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337982, 32.751225, 29.208876>,  <35.675465, 32.789902, 28.675873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337982, 32.751225, 29.208876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642281, 32.515347, 29.317335>,  <35.824860, 32.373821, 29.382412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642281, 32.515347, 29.317335>,  <35.337982, 32.751225, 29.208876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642281, 32.515347, 29.317335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069604, 0.341235, 0.937397,
		-0.645304, -0.731997, 0.218549,
		0.760748, -0.589694, 0.271151,
		35.870506, 32.338440, 29.398680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119431, 32.451370, 29.896265>,  <35.337982, 32.751225, 29.208876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119431, 32.451370, 29.896265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510883, 32.369122, 29.897032>,  <35.745754, 32.319771, 29.897491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510883, 32.369122, 29.897032>,  <35.119431, 32.451370, 29.896265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510883, 32.369122, 29.897032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066730, 0.326384, 0.942879,
		-0.194506, -0.922601, 0.333131,
		0.978629, -0.205625, 0.001918,
		35.804474, 32.307434, 29.897608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237141, 32.213852, 30.605053>,  <35.119431, 32.451370, 29.896265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237141, 32.213852, 30.605053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583797, 32.370441, 30.481327>,  <35.791794, 32.464394, 30.407091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583797, 32.370441, 30.481327>,  <35.237141, 32.213852, 30.605053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583797, 32.370441, 30.481327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149801, 0.387187, 0.909750,
		0.475906, -0.834766, 0.276910,
		0.866645, 0.391474, -0.309314,
		35.843792, 32.487885, 30.388533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617004, 32.146969, 31.207708>,  <35.237141, 32.213852, 30.605053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617004, 32.146969, 31.207708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813679, 32.409023, 30.978260>,  <35.931683, 32.566257, 30.840591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813679, 32.409023, 30.978260>,  <35.617004, 32.146969, 31.207708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813679, 32.409023, 30.978260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165467, 0.576451, 0.800203,
		0.854907, -0.488363, 0.175029,
		0.491685, 0.655138, -0.573620,
		35.961185, 32.605564, 30.806173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301586, 32.268932, 31.529699>,  <35.617004, 32.146969, 31.207708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301586, 32.268932, 31.529699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258533, 32.583439, 31.286322>,  <36.232700, 32.772141, 31.140295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258533, 32.583439, 31.286322>,  <36.301586, 32.268932, 31.529699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258533, 32.583439, 31.286322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336663, 0.604666, 0.721828,
		0.935453, -0.127149, -0.329788,
		-0.107631, 0.786264, -0.608444,
		36.226246, 32.819317, 31.103788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965576, 32.617485, 31.530369>,  <36.301586, 32.268932, 31.529699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965576, 32.617485, 31.530369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659695, 32.861149, 31.446312>,  <36.476166, 33.007347, 31.395878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659695, 32.861149, 31.446312>,  <36.965576, 32.617485, 31.530369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659695, 32.861149, 31.446312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259658, 0.589756, 0.764699,
		0.589756, 0.530200, -0.609160,
		-0.764699, 0.609160, -0.210142,
		36.430286, 33.043896, 31.383270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185394, 33.338928, 31.573227>,  <36.965576, 32.617485, 31.530369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185394, 33.338928, 31.573227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791702, 33.405495, 31.597214>,  <36.555489, 33.445435, 31.611607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791702, 33.405495, 31.597214>,  <37.185394, 33.338928, 31.573227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791702, 33.405495, 31.597214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153109, 0.631691, 0.759951,
		0.088584, 0.757149, -0.647209,
		-0.984231, 0.166413, 0.059968,
		36.496433, 33.455418, 31.615204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166599, 34.057320, 31.465055>,  <37.185394, 33.338928, 31.573227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166599, 34.057320, 31.465055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847549, 33.913921, 31.659073>,  <36.656120, 33.827881, 31.775484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847549, 33.913921, 31.659073>,  <37.166599, 34.057320, 31.465055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847549, 33.913921, 31.659073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218849, 0.577358, 0.786615,
		-0.562045, 0.733577, -0.382060,
		-0.797628, -0.358499, 0.485043,
		36.608261, 33.806370, 31.804586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941475, 33.870132, 31.546350>,  <37.166599, 34.057320, 31.465055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941475, 33.870132, 31.546350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293926, 34.052780, 31.497185>,  <38.505398, 34.162369, 31.467686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293926, 34.052780, 31.497185>,  <37.941475, 33.870132, 31.546350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293926, 34.052780, 31.497185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034818, -0.321875, -0.946142,
		-0.471589, 0.829395, -0.299513,
		0.881131, 0.456618, -0.122915,
		38.558266, 34.189766, 31.460310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914417, 34.152576, 30.946823>,  <37.941475, 33.870132, 31.546350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914417, 34.152576, 30.946823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311100, 34.152790, 30.998238>,  <38.549110, 34.152916, 31.029087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311100, 34.152790, 30.998238>,  <37.914417, 34.152576, 30.946823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311100, 34.152790, 30.998238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126937, -0.161466, -0.978681,
		0.020235, 0.986878, -0.160194,
		0.991704, 0.000531, 0.128538,
		38.608612, 34.152950, 31.036798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185959, 34.513149, 30.338751>,  <37.914417, 34.152576, 30.946823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185959, 34.513149, 30.338751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485462, 34.283245, 30.470816>,  <38.665165, 34.145302, 30.550055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485462, 34.283245, 30.470816>,  <38.185959, 34.513149, 30.338751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485462, 34.283245, 30.470816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334515, -0.102353, -0.936816,
		0.572236, 0.811897, 0.115627,
		0.748762, -0.574759, 0.330162,
		38.710091, 34.110817, 30.569864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848835, 34.806812, 30.032986>,  <38.185959, 34.513149, 30.338751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848835, 34.806812, 30.032986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.959446, 34.435463, 30.132301>,  <39.025810, 34.212654, 30.191891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.959446, 34.435463, 30.132301>,  <38.848835, 34.806812, 30.032986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959446, 34.435463, 30.132301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358038, -0.140238, -0.923116,
		0.891820, 0.344162, 0.293615,
		0.276526, -0.928378, 0.248290,
		39.042404, 34.156948, 30.206789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527813, 34.712963, 29.686235>,  <38.848835, 34.806812, 30.032986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527813, 34.712963, 29.686235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413292, 34.338760, 29.769039>,  <39.344578, 34.114239, 29.818722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413292, 34.338760, 29.769039>,  <39.527813, 34.712963, 29.686235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413292, 34.338760, 29.769039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302313, -0.293221, -0.906989,
		0.909195, -0.197095, 0.366767,
		-0.286307, -0.935508, 0.207011,
		39.327400, 34.058109, 29.831142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174641, 34.134544, 29.574455>,  <39.527813, 34.712963, 29.686235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174641, 34.134544, 29.574455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809959, 33.970364, 29.567127>,  <39.591152, 33.871857, 29.562731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809959, 33.970364, 29.567127>,  <40.174641, 34.134544, 29.574455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809959, 33.970364, 29.567127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182795, -0.365287, -0.912771,
		0.367955, -0.835522, 0.408060,
		-0.911699, -0.410450, -0.018320,
		39.536449, 33.847229, 29.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205357, 33.475082, 29.286627>,  <40.174641, 34.134544, 29.574455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205357, 33.475082, 29.286627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818649, 33.560875, 29.230970>,  <39.586624, 33.612350, 29.197577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818649, 33.560875, 29.230970>,  <40.205357, 33.475082, 29.286627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818649, 33.560875, 29.230970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037938, -0.417858, -0.907720,
		-0.252827, -0.882832, 0.395835,
		-0.966767, 0.214479, -0.139139,
		39.528618, 33.625217, 29.189228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926525, 32.927353, 28.815784>,  <40.205357, 33.475082, 29.286627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926525, 32.927353, 28.815784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645359, 33.209633, 28.780260>,  <39.476658, 33.379002, 28.758945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645359, 33.209633, 28.780260>,  <39.926525, 32.927353, 28.815784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645359, 33.209633, 28.780260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267892, -0.378341, -0.886054,
		-0.658893, -0.599033, 0.454995,
		-0.702918, 0.705704, -0.088810,
		39.434483, 33.421345, 28.753616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298759, 32.591610, 28.799330>,  <39.926525, 32.927353, 28.815784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298759, 32.591610, 28.799330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250492, 32.945099, 28.618454>,  <39.221531, 33.157192, 28.509928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250492, 32.945099, 28.618454>,  <39.298759, 32.591610, 28.799330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250492, 32.945099, 28.618454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428970, -0.457215, -0.779063,
		-0.895222, 0.099966, 0.434262,
		-0.120671, 0.883720, -0.452191,
		39.214291, 33.210217, 28.482796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633980, 32.541042, 28.497036>,  <39.298759, 32.591610, 28.799330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633980, 32.541042, 28.497036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834335, 32.843086, 28.327839>,  <38.954548, 33.024311, 28.226320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834335, 32.843086, 28.327839>,  <38.633980, 32.541042, 28.497036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834335, 32.843086, 28.327839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355295, -0.266255, -0.896032,
		-0.789224, 0.599100, 0.134921,
		0.500889, 0.755107, -0.422993,
		38.984604, 33.069618, 28.200941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163574, 32.873878, 28.072609>,  <38.633980, 32.541042, 28.497036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163574, 32.873878, 28.072609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533001, 32.959480, 27.945341>,  <38.754658, 33.010841, 27.868980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533001, 32.959480, 27.945341>,  <38.163574, 32.873878, 28.072609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533001, 32.959480, 27.945341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249236, -0.295541, -0.922246,
		-0.291396, 0.931052, -0.219614,
		0.923564, 0.214003, -0.318171,
		38.810070, 33.023682, 27.849890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027283, 33.177601, 27.345072>,  <38.163574, 32.873878, 28.072609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027283, 33.177601, 27.345072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411625, 33.067562, 27.358236>,  <38.642231, 33.001537, 27.366135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411625, 33.067562, 27.358236>,  <38.027283, 33.177601, 27.345072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411625, 33.067562, 27.358236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049724, -0.288079, -0.956315,
		0.272560, 0.917241, -0.290481,
		0.960853, -0.275097, 0.032910,
		38.699883, 32.985031, 27.368109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453854, 33.462059, 26.781023>,  <38.027283, 33.177601, 27.345072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453854, 33.462059, 26.781023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615067, 33.116756, 26.902582>,  <38.711796, 32.909576, 26.975517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615067, 33.116756, 26.902582>,  <38.453854, 33.462059, 26.781023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615067, 33.116756, 26.902582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045062, -0.350375, -0.935525,
		0.914075, 0.363355, -0.180113,
		0.403035, -0.863256, 0.303895,
		38.735977, 32.857780, 26.993752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049442, 33.310768, 26.349037>,  <38.453854, 33.462059, 26.781023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049442, 33.310768, 26.349037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904270, 32.974026, 26.508816>,  <38.817165, 32.771980, 26.604683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904270, 32.974026, 26.508816>,  <39.049442, 33.310768, 26.349037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904270, 32.974026, 26.508816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071665, -0.402186, -0.912749,
		0.929056, -0.359892, 0.085634,
		-0.362932, -0.841858, 0.399445,
		38.795391, 32.721470, 26.628649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470787, 32.835152, 26.123230>,  <39.049442, 33.310768, 26.349037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470787, 32.835152, 26.123230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151402, 32.607422, 26.201536>,  <38.959770, 32.470783, 26.248520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151402, 32.607422, 26.201536>,  <39.470787, 32.835152, 26.123230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151402, 32.607422, 26.201536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118707, -0.467663, -0.875900,
		0.590223, -0.676136, 0.440995,
		-0.798464, -0.569325, 0.195764,
		38.911861, 32.436623, 26.260265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602600, 32.140961, 25.864754>,  <39.470787, 32.835152, 26.123230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602600, 32.140961, 25.864754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210506, 32.087234, 25.922867>,  <38.975250, 32.055000, 25.957735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210506, 32.087234, 25.922867>,  <39.602600, 32.140961, 25.864754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210506, 32.087234, 25.922867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023474, -0.650145, -0.759448,
		0.196460, -0.747845, 0.634139,
		-0.980231, -0.134315, 0.145282,
		38.916435, 32.046940, 25.966452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479015, 31.478268, 25.817076>,  <39.602600, 32.140961, 25.864754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479015, 31.478268, 25.817076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118546, 31.633188, 25.739218>,  <38.902264, 31.726141, 25.692503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118546, 31.633188, 25.739218>,  <39.479015, 31.478268, 25.817076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118546, 31.633188, 25.739218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062125, -0.559810, -0.826289,
		-0.428987, -0.732536, 0.528547,
		-0.901172, 0.387303, -0.194642,
		38.848194, 31.749380, 25.680824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921631, 30.919178, 25.795521>,  <39.479015, 31.478268, 25.817076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921631, 30.919178, 25.795521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786228, 31.231689, 25.585751>,  <38.704987, 31.419195, 25.459888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786228, 31.231689, 25.585751>,  <38.921631, 30.919178, 25.795521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786228, 31.231689, 25.585751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246078, -0.611432, -0.752062,
		-0.908219, -0.125525, 0.399226,
		-0.338502, 0.781278, -0.524425,
		38.684677, 31.466072, 25.428423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.435181, 30.598854, 25.386278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491287, 30.956686, 25.216547>,  <38.524952, 31.171385, 25.114708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491287, 30.956686, 25.216547>,  <38.435181, 30.598854, 25.386278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491287, 30.956686, 25.216547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200169, -0.394092, -0.897008,
		-0.969669, 0.210757, 0.123789,
		0.140266, 0.894580, -0.424326,
		38.533367, 31.225060, 25.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001045, 30.557775, 24.864014>,  <38.435181, 30.598854, 25.386278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001045, 30.557775, 24.864014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219456, 30.872450, 24.748787>,  <38.350502, 31.061255, 24.679651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219456, 30.872450, 24.748787>,  <38.001045, 30.557775, 24.864014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219456, 30.872450, 24.748787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068173, -0.300984, -0.951189,
		-0.834990, 0.539012, -0.110714,
		0.546026, 0.786686, -0.288065,
		38.383263, 31.108456, 24.662367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518700, 30.955446, 24.384634>,  <38.001045, 30.557775, 24.864014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518700, 30.955446, 24.384634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904446, 31.035170, 24.315039>,  <38.135895, 31.083004, 24.273281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904446, 31.035170, 24.315039>,  <37.518700, 30.955446, 24.384634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904446, 31.035170, 24.315039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119826, -0.257283, -0.958878,
		-0.235878, 0.945559, -0.224233,
		0.964367, 0.199310, -0.173990,
		38.193756, 31.094963, 24.262842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499256, 31.367840, 23.826630>,  <37.518700, 30.955446, 24.384634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499256, 31.367840, 23.826630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880840, 31.248894, 23.810980>,  <38.109791, 31.177526, 23.801590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880840, 31.248894, 23.810980>,  <37.499256, 31.367840, 23.826630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880840, 31.248894, 23.810980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107227, -0.216314, -0.970418,
		0.280105, 0.929937, -0.238241,
		0.953962, -0.297365, -0.039123,
		38.167030, 31.159685, 23.799242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705914, 31.646208, 23.226028>,  <37.499256, 31.367840, 23.826630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705914, 31.646208, 23.226028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974751, 31.361202, 23.306648>,  <38.136051, 31.190199, 23.355021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974751, 31.361202, 23.306648>,  <37.705914, 31.646208, 23.226028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974751, 31.361202, 23.306648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051743, -0.226335, -0.972674,
		0.738660, 0.664153, -0.115250,
		0.672090, -0.712512, 0.201550,
		38.176376, 31.147449, 23.367113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321304, 31.768242, 22.773186>,  <37.705914, 31.646208, 23.226028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321304, 31.768242, 22.773186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298965, 31.379465, 22.864582>,  <38.285561, 31.146198, 22.919420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298965, 31.379465, 22.864582>,  <38.321304, 31.768242, 22.773186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298965, 31.379465, 22.864582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003717, -0.228643, -0.973503,
		0.998432, -0.055215, 0.009156,
		-0.055846, -0.971943, 0.228490,
		38.282211, 31.087883, 22.933128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707218, 31.478159, 22.242271>,  <38.321304, 31.768242, 22.773186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707218, 31.478159, 22.242271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490917, 31.185650, 22.408562>,  <38.361137, 31.010143, 22.508335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490917, 31.185650, 22.408562>,  <38.707218, 31.478159, 22.242271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490917, 31.185650, 22.408562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005126, -0.497070, -0.867695,
		0.841169, -0.467074, 0.272538,
		-0.540748, -0.731275, 0.415726,
		38.328693, 30.966267, 22.533279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954334, 30.933863, 21.811291>,  <38.707218, 31.478159, 22.242271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954334, 30.933863, 21.811291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639851, 30.788149, 22.010958>,  <38.451160, 30.700720, 22.130758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639851, 30.788149, 22.010958>,  <38.954334, 30.933863, 21.811291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639851, 30.788149, 22.010958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266269, -0.529231, -0.805615,
		0.557647, -0.766297, 0.319091,
		-0.786213, -0.364285, 0.499166,
		38.403988, 30.678864, 22.160707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030540, 30.176998, 21.932491>,  <38.954334, 30.933863, 21.811291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030540, 30.176998, 21.932491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647778, 30.292463, 21.919863>,  <38.418118, 30.361742, 21.912287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647778, 30.292463, 21.919863>,  <39.030540, 30.176998, 21.932491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647778, 30.292463, 21.919863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111747, -0.466409, -0.877482,
		-0.268019, -0.836145, 0.478569,
		-0.956911, 0.288661, -0.031570,
		38.360706, 30.379063, 21.910391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673279, 29.572371, 21.785290>,  <39.030540, 30.176998, 21.932491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673279, 29.572371, 21.785290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432590, 29.874609, 21.681753>,  <38.288177, 30.055952, 21.619631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432590, 29.874609, 21.681753>,  <38.673279, 29.572371, 21.785290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432590, 29.874609, 21.681753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263970, -0.494003, -0.828420,
		-0.753821, -0.430155, 0.496710,
		-0.601725, 0.755597, -0.258842,
		38.252071, 30.101288, 21.604101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100262, 29.205500, 21.446850>,  <38.673279, 29.572371, 21.785290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100262, 29.205500, 21.446850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066101, 29.581089, 21.313562>,  <38.045605, 29.806442, 21.233589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066101, 29.581089, 21.313562>,  <38.100262, 29.205500, 21.446850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066101, 29.581089, 21.313562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135026, -0.342264, -0.929851,
		-0.987155, -0.034417, 0.156015,
		-0.085401, 0.938973, -0.333220,
		38.040482, 29.862782, 21.213596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489296, 29.260490, 21.047895>,  <38.100262, 29.205500, 21.446850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489296, 29.260490, 21.047895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711559, 29.567917, 20.921055>,  <37.844917, 29.752373, 20.844950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711559, 29.567917, 20.921055>,  <37.489296, 29.260490, 21.047895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711559, 29.567917, 20.921055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218286, -0.233163, -0.947621,
		-0.802246, 0.595770, 0.038209,
		0.555655, 0.768566, -0.317103,
		37.878258, 29.798487, 20.825924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146870, 29.557251, 20.495098>,  <37.489296, 29.260490, 21.047895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146870, 29.557251, 20.495098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507935, 29.718260, 20.434196>,  <37.724571, 29.814865, 20.397655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507935, 29.718260, 20.434196>,  <37.146870, 29.557251, 20.495098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507935, 29.718260, 20.434196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039100, -0.275615, -0.960473,
		-0.428574, 0.872933, -0.233048,
		0.902660, 0.402522, -0.152253,
		37.778732, 29.839016, 20.388521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087063, 29.762550, 19.880556>,  <37.146870, 29.557251, 20.495098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087063, 29.762550, 19.880556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483768, 29.771198, 19.931055>,  <37.721790, 29.776386, 19.961355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483768, 29.771198, 19.931055>,  <37.087063, 29.762550, 19.880556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483768, 29.771198, 19.931055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126118, 0.007347, -0.991988,
		-0.022374, 0.999739, 0.004560,
		0.991763, 0.021620, 0.126249,
		37.781296, 29.777685, 19.968929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279404, 30.378231, 19.485548>,  <37.087063, 29.762550, 19.880556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279404, 30.378231, 19.485548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609669, 30.153250, 19.503117>,  <37.807827, 30.018261, 19.513659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609669, 30.153250, 19.503117>,  <37.279404, 30.378231, 19.485548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609669, 30.153250, 19.503117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160989, 0.160275, -0.973855,
		0.540709, 0.811145, 0.222882,
		0.825661, -0.562454, 0.043923,
		37.857368, 29.984514, 19.516294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848595, 30.843201, 19.258059>,  <37.279404, 30.378231, 19.485548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848595, 30.843201, 19.258059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962505, 30.461346, 19.223261>,  <38.030853, 30.232233, 19.202383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962505, 30.461346, 19.223261>,  <37.848595, 30.843201, 19.258059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962505, 30.461346, 19.223261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185561, 0.143934, -0.972034,
		0.940462, 0.260673, 0.218133,
		0.284780, -0.954637, -0.086994,
		38.047939, 30.174955, 19.197163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381783, 30.908545, 18.718340>,  <37.848595, 30.843201, 19.258059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381783, 30.908545, 18.718340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278500, 30.522146, 18.712902>,  <38.216530, 30.290308, 18.709639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278500, 30.522146, 18.712902>,  <38.381783, 30.908545, 18.718340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278500, 30.522146, 18.712902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291476, -0.064477, -0.954403,
		0.921071, -0.250395, 0.298213,
		-0.258206, -0.965994, -0.013596,
		38.201038, 30.232347, 18.708822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948677, 30.553846, 18.412897>,  <38.381783, 30.908545, 18.718340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948677, 30.553846, 18.412897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634365, 30.310751, 18.366926>,  <38.445778, 30.164894, 18.339344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634365, 30.310751, 18.366926>,  <38.948677, 30.553846, 18.412897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634365, 30.310751, 18.366926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240508, -0.129037, -0.962032,
		0.569833, -0.783585, 0.247560,
		-0.785778, -0.607737, -0.114929,
		38.398632, 30.128429, 18.332447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213348, 29.922033, 18.133961>,  <38.948677, 30.553846, 18.412897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213348, 29.922033, 18.133961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824791, 29.943119, 18.041342>,  <38.591656, 29.955770, 17.985771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824791, 29.943119, 18.041342>,  <39.213348, 29.922033, 18.133961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824791, 29.943119, 18.041342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205075, -0.305415, -0.929874,
		-0.119733, -0.950759, 0.285869,
		-0.971395, 0.052712, -0.231545,
		38.533371, 29.958933, 17.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975273, 29.259182, 17.909159>,  <39.213348, 29.922033, 18.133961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975273, 29.259182, 17.909159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693233, 29.511658, 17.779894>,  <38.524010, 29.663143, 17.702335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693233, 29.511658, 17.779894>,  <38.975273, 29.259182, 17.909159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693233, 29.511658, 17.779894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086148, -0.376108, -0.922562,
		-0.703856, -0.678338, 0.210818,
		-0.705100, 0.631189, -0.323163,
		38.481705, 29.701014, 17.682945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545712, 28.870041, 17.547623>,  <38.975273, 29.259182, 17.909159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545712, 28.870041, 17.547623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509018, 29.248381, 17.423071>,  <38.487003, 29.475384, 17.348341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509018, 29.248381, 17.423071>,  <38.545712, 28.870041, 17.547623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509018, 29.248381, 17.423071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050845, -0.316738, -0.947149,
		-0.994485, -0.071053, 0.077147,
		-0.091733, 0.945848, -0.311378,
		38.481499, 29.532135, 17.329657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044186, 28.844334, 16.942684>,  <38.545712, 28.870041, 17.547623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044186, 28.844334, 16.942684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206718, 29.208345, 16.909840>,  <38.304237, 29.426752, 16.890133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206718, 29.208345, 16.909840>,  <38.044186, 28.844334, 16.942684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206718, 29.208345, 16.909840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019066, -0.098287, -0.994976,
		-0.913526, 0.402726, -0.057288,
		0.406333, 0.910028, -0.082110,
		38.328617, 29.481354, 16.885206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635979, 29.278111, 16.410257>,  <38.044186, 28.844334, 16.942684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635979, 29.278111, 16.410257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015972, 29.401215, 16.431448>,  <38.243969, 29.475077, 16.444162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015972, 29.401215, 16.431448>,  <37.635979, 29.278111, 16.410257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015972, 29.401215, 16.431448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088119, -0.101425, -0.990933,
		-0.299599, 0.946042, -0.123472,
		0.949987, 0.307762, 0.052977,
		38.300968, 29.493544, 16.447342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003166, 28.895735, 16.537189>,  <37.635979, 29.278111, 16.410257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003166, 28.895735, 16.537189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724606, 29.133486, 16.376318>,  <36.557468, 29.276136, 16.279795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724606, 29.133486, 16.376318>,  <37.003166, 28.895735, 16.537189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724606, 29.133486, 16.376318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312144, 0.253754, 0.915519,
		0.646217, 0.763103, 0.008817,
		-0.696397, 0.594376, -0.402178,
		36.515686, 29.311798, 16.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939228, 29.558989, 16.851400>,  <37.003166, 28.895735, 16.537189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939228, 29.558989, 16.851400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572510, 29.445602, 16.738880>,  <36.352478, 29.377571, 16.671368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572510, 29.445602, 16.738880>,  <36.939228, 29.558989, 16.851400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572510, 29.445602, 16.738880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340660, 0.187523, 0.921296,
		-0.208406, 0.940469, -0.268486,
		-0.916798, -0.283466, -0.281299,
		36.297470, 29.360563, 16.654490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532871, 30.102444, 17.008043>,  <36.939228, 29.558989, 16.851400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532871, 30.102444, 17.008043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278915, 29.793932, 16.989948>,  <36.126541, 29.608826, 16.979092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278915, 29.793932, 16.989948>,  <36.532871, 30.102444, 17.008043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278915, 29.793932, 16.989948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433846, 0.307454, 0.846906,
		-0.639291, 0.557318, -0.529815,
		-0.634890, -0.771277, -0.045238,
		36.088448, 29.562550, 16.976377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932724, 30.425413, 17.137726>,  <36.532871, 30.102444, 17.008043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932724, 30.425413, 17.137726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906330, 30.040958, 17.244955>,  <35.890491, 29.810286, 17.309292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906330, 30.040958, 17.244955>,  <35.932724, 30.425413, 17.137726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906330, 30.040958, 17.244955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538474, 0.260482, 0.801371,
		-0.840055, -0.091470, -0.534735,
		-0.065987, -0.961136, 0.268073,
		35.886536, 29.752617, 17.325377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245682, 30.345242, 17.392170>,  <35.932724, 30.425413, 17.137726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245682, 30.345242, 17.392170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446022, 30.037165, 17.550135>,  <35.566227, 29.852318, 17.644913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446022, 30.037165, 17.550135>,  <35.245682, 30.345242, 17.392170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446022, 30.037165, 17.550135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544161, 0.074612, 0.835656,
		-0.673081, -0.633433, -0.381739,
		0.500850, -0.770192, 0.394910,
		35.596275, 29.806107, 17.668608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726990, 29.954987, 17.707644>,  <35.245682, 30.345242, 17.392170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726990, 29.954987, 17.707644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074261, 29.843838, 17.872107>,  <35.282623, 29.777147, 17.970785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074261, 29.843838, 17.872107>,  <34.726990, 29.954987, 17.707644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074261, 29.843838, 17.872107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395381, 0.113384, 0.911492,
		-0.299899, -0.953903, -0.011428,
		0.868179, -0.277874, 0.411159,
		35.334713, 29.760475, 17.995455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531990, 29.699596, 18.391956>,  <34.726990, 29.954987, 17.707644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531990, 29.699596, 18.391956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930214, 29.710333, 18.428038>,  <35.169147, 29.716776, 18.449686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930214, 29.710333, 18.428038>,  <34.531990, 29.699596, 18.391956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930214, 29.710333, 18.428038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089420, -0.029041, 0.995570,
		0.029347, -0.999218, -0.026511,
		0.995561, 0.026846, 0.090203,
		35.228882, 29.718386, 18.455099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641483, 29.227320, 18.944059>,  <34.531990, 29.699596, 18.391956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641483, 29.227320, 18.944059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932480, 29.497433, 18.895472>,  <35.107079, 29.659500, 18.866318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932480, 29.497433, 18.895472>,  <34.641483, 29.227320, 18.944059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932480, 29.497433, 18.895472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003055, 0.173851, 0.984767,
		0.686114, -0.716777, 0.124411,
		0.727487, 0.675283, -0.121472,
		35.150726, 29.700018, 18.859030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983234, 29.107206, 19.605207>,  <34.641483, 29.227320, 18.944059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983234, 29.107206, 19.605207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114578, 29.457354, 19.463268>,  <35.193382, 29.667442, 19.378105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.114578, 29.457354, 19.463268>,  <34.983234, 29.107206, 19.605207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114578, 29.457354, 19.463268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200568, 0.302492, 0.931810,
		0.923014, -0.377137, -0.076245,
		0.328356, 0.875366, -0.354846,
		35.213085, 29.719963, 19.356813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572788, 29.289167, 19.957031>,  <34.983234, 29.107206, 19.605207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572788, 29.289167, 19.957031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463238, 29.642159, 19.804071>,  <35.397507, 29.853952, 19.712296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463238, 29.642159, 19.804071>,  <35.572788, 29.289167, 19.957031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463238, 29.642159, 19.804071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131976, 0.428322, 0.893937,
		0.952668, 0.194356, -0.233771,
		-0.273872, 0.882477, -0.382399,
		35.381077, 29.906902, 19.689352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033440, 29.696056, 20.174194>,  <35.572788, 29.289167, 19.957031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033440, 29.696056, 20.174194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727695, 29.940941, 20.093248>,  <35.544250, 30.087872, 20.044680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727695, 29.940941, 20.093248>,  <36.033440, 29.696056, 20.174194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727695, 29.940941, 20.093248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123669, 0.447218, 0.885834,
		0.632818, 0.652070, -0.417547,
		-0.764361, 0.612209, -0.202367,
		35.498386, 30.124603, 20.032537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240326, 30.343657, 20.224476>,  <36.033440, 29.696056, 20.174194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240326, 30.343657, 20.224476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846687, 30.347984, 20.295395>,  <35.610504, 30.350582, 20.337946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846687, 30.347984, 20.295395>,  <36.240326, 30.343657, 20.224476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846687, 30.347984, 20.295395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170959, 0.328611, 0.928864,
		-0.048211, 0.944403, -0.325235,
		-0.984098, 0.010821, 0.177297,
		35.551456, 30.351231, 20.348583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163280, 30.853100, 20.671497>,  <36.240326, 30.343657, 20.224476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163280, 30.853100, 20.671497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816093, 30.656487, 20.699888>,  <35.607780, 30.538519, 20.716923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816093, 30.656487, 20.699888>,  <36.163280, 30.853100, 20.671497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816093, 30.656487, 20.699888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012549, 0.121162, 0.992553,
		-0.496470, 0.862390, -0.098995,
		-0.867963, -0.491531, 0.070975,
		35.555706, 30.509027, 20.721180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735439, 31.305382, 20.976339>,  <36.163280, 30.853100, 20.671497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735439, 31.305382, 20.976339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621414, 30.927097, 21.038780>,  <35.553001, 30.700127, 21.076244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621414, 30.927097, 21.038780>,  <35.735439, 31.305382, 20.976339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621414, 30.927097, 21.038780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016909, 0.167793, 0.985677,
		-0.958360, 0.278339, -0.063823,
		-0.285061, -0.945713, 0.156100,
		35.535896, 30.643383, 21.085609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344723, 31.344030, 21.493731>,  <35.735439, 31.305382, 20.976339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344723, 31.344030, 21.493731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420940, 30.952610, 21.525045>,  <35.466671, 30.717758, 21.543835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420940, 30.952610, 21.525045>,  <35.344723, 31.344030, 21.493731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420940, 30.952610, 21.525045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000259, 0.079698, 0.996819,
		-0.981679, -0.189954, 0.014933,
		0.190540, -0.978553, 0.078287,
		35.478104, 30.659044, 21.548532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857307, 31.131552, 21.958075>,  <35.344723, 31.344030, 21.493731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857307, 31.131552, 21.958075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122967, 30.833220, 21.937477>,  <35.282360, 30.654221, 21.925117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122967, 30.833220, 21.937477>,  <34.857307, 31.131552, 21.958075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122967, 30.833220, 21.937477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082624, -0.141683, 0.986458,
		-0.743024, -0.650896, -0.155721,
		0.664145, -0.745828, -0.051494,
		35.322208, 30.609470, 21.922029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604752, 30.590200, 22.332876>,  <34.857307, 31.131552, 21.958075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604752, 30.590200, 22.332876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002670, 30.549648, 22.329027>,  <35.241421, 30.525316, 22.326717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002670, 30.549648, 22.329027>,  <34.604752, 30.590200, 22.332876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002670, 30.549648, 22.329027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001497, -0.079945, 0.996798,
		-0.101833, -0.991630, -0.079377,
		0.994801, -0.101388, -0.009625,
		35.301109, 30.519234, 22.326139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690674, 30.031860, 22.764544>,  <34.604752, 30.590200, 22.332876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690674, 30.031860, 22.764544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060207, 30.181370, 22.731501>,  <35.281929, 30.271076, 22.711676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060207, 30.181370, 22.731501>,  <34.690674, 30.031860, 22.764544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060207, 30.181370, 22.731501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170669, -0.209022, 0.962903,
		0.342641, -0.903661, -0.256893,
		0.923834, 0.373774, -0.082607,
		35.337357, 30.293503, 22.706718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252304, 29.560183, 23.087702>,  <34.690674, 30.031860, 22.764544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252304, 29.560183, 23.087702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 29.937687, 23.093586>,  <35.463699, 30.164188, 23.097116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 29.937687, 23.093586>,  <35.252304, 29.560183, 23.087702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384426, 29.937687, 23.093586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396961, -0.153039, 0.904987,
		0.856341, -0.293082, -0.425185,
		0.330306, 0.943760, 0.014711,
		35.483517, 30.220816, 23.098000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962837, 29.471085, 23.408030>,  <35.252304, 29.560183, 23.087702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962837, 29.471085, 23.408030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.836502, 29.847631, 23.455482>,  <35.760700, 30.073561, 23.483953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.836502, 29.847631, 23.455482>,  <35.962837, 29.471085, 23.408030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836502, 29.847631, 23.455482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234456, -0.043722, 0.971143,
		0.919390, 0.334534, -0.206901,
		-0.315834, 0.941369, 0.118631,
		35.741753, 30.130043, 23.491072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379452, 29.684965, 23.903755>,  <35.962837, 29.471085, 23.408030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379452, 29.684965, 23.903755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099308, 29.970236, 23.891897>,  <35.931221, 30.141397, 23.884783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099308, 29.970236, 23.891897>,  <36.379452, 29.684965, 23.903755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099308, 29.970236, 23.891897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040905, 0.081565, 0.995828,
		0.712620, 0.696223, -0.086297,
		-0.700357, 0.713177, -0.029645,
		35.889202, 30.184189, 23.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.975441, 32.743198, 27.326517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588284, 32.843079, 27.315029>,  <39.355988, 32.903008, 27.308136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588284, 32.843079, 27.315029>,  <39.975441, 32.743198, 27.326517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588284, 32.843079, 27.315029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118968, 0.555763, 0.822784,
		0.221414, 0.792953, -0.567628,
		-0.967896, 0.249705, -0.028718,
		39.297916, 32.917992, 27.306414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890984, 33.505680, 27.257618>,  <39.975441, 32.743198, 27.326517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890984, 33.505680, 27.257618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569492, 33.355831, 27.442516>,  <39.376598, 33.265923, 27.553455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.569492, 33.355831, 27.442516>,  <39.890984, 33.505680, 27.257618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569492, 33.355831, 27.442516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252855, 0.488196, 0.835302,
		-0.538589, 0.788241, -0.297654,
		-0.803732, -0.374622, 0.462247,
		39.328373, 33.243446, 27.581190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538506, 34.075596, 27.644915>,  <39.890984, 33.505680, 27.257618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538506, 34.075596, 27.644915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349789, 33.767792, 27.817087>,  <39.236557, 33.583111, 27.920391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349789, 33.767792, 27.817087>,  <39.538506, 34.075596, 27.644915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349789, 33.767792, 27.817087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054258, 0.461914, 0.885263,
		-0.880039, 0.441014, -0.176175,
		-0.471791, -0.769507, 0.430431,
		39.208252, 33.536938, 27.946217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965729, 34.364105, 27.908258>,  <39.538506, 34.075596, 27.644915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965729, 34.364105, 27.908258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027771, 34.024212, 28.109812>,  <39.064995, 33.820278, 28.230743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027771, 34.024212, 28.109812>,  <38.965729, 34.364105, 27.908258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027771, 34.024212, 28.109812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206199, 0.470977, 0.857708,
		-0.966139, -0.236936, -0.102162,
		0.155106, -0.849731, 0.503885,
		39.074303, 33.769291, 28.260977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577282, 34.330910, 28.529554>,  <38.965729, 34.364105, 27.908258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577282, 34.330910, 28.529554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839157, 34.043205, 28.622549>,  <38.996284, 33.870583, 28.678345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839157, 34.043205, 28.622549>,  <38.577282, 34.330910, 28.529554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839157, 34.043205, 28.622549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116759, 0.207646, 0.971211,
		-0.746825, -0.662988, 0.051965,
		0.654691, -0.719257, 0.232485,
		39.035564, 33.827427, 28.692295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287811, 33.977749, 29.114252>,  <38.577282, 34.330910, 28.529554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287811, 33.977749, 29.114252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677891, 33.889217, 29.114668>,  <38.911938, 33.836098, 29.114918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677891, 33.889217, 29.114668>,  <38.287811, 33.977749, 29.114252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677891, 33.889217, 29.114668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019123, 0.088938, 0.995854,
		-0.220502, -0.971136, 0.090965,
		0.975199, -0.221327, 0.001040,
		38.970451, 33.822819, 29.114981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386242, 33.342484, 29.657349>,  <38.287811, 33.977749, 29.114252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386242, 33.342484, 29.657349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765789, 33.462696, 29.618711>,  <38.993519, 33.534824, 29.595530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765789, 33.462696, 29.618711>,  <38.386242, 33.342484, 29.657349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765789, 33.462696, 29.618711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112486, -0.035991, 0.993001,
		0.294953, -0.953092, -0.067957,
		0.948867, 0.300533, -0.096594,
		39.050449, 33.552856, 29.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797737, 32.905304, 30.074347>,  <38.386242, 33.342484, 29.657349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797737, 32.905304, 30.074347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965038, 33.261345, 30.001917>,  <39.065418, 33.474968, 29.958460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965038, 33.261345, 30.001917>,  <38.797737, 32.905304, 30.074347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965038, 33.261345, 30.001917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064645, 0.169672, 0.983378,
		0.906026, -0.423009, 0.013426,
		0.418256, 0.890098, -0.181072,
		39.090515, 33.528374, 29.947596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331623, 32.904549, 30.468046>,  <38.797737, 32.905304, 30.074347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331623, 32.904549, 30.468046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246056, 33.288296, 30.394455>,  <39.194714, 33.518543, 30.350300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246056, 33.288296, 30.394455>,  <39.331623, 32.904549, 30.468046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246056, 33.288296, 30.394455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057173, 0.200312, 0.978063,
		0.975177, 0.198708, -0.097701,
		-0.213919, 0.959370, -0.183979,
		39.181881, 33.576107, 30.339262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655880, 33.350586, 31.008884>,  <39.331623, 32.904549, 30.468046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655880, 33.350586, 31.008884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383617, 33.607910, 30.868681>,  <39.220261, 33.762302, 30.784559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383617, 33.607910, 30.868681>,  <39.655880, 33.350586, 31.008884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383617, 33.607910, 30.868681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072540, 0.416911, 0.906048,
		0.728999, 0.642137, -0.237109,
		-0.680661, 0.643308, -0.350508,
		39.179420, 33.800903, 30.763529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849190, 34.012875, 31.325270>,  <39.655880, 33.350586, 31.008884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849190, 34.012875, 31.325270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464375, 34.073727, 31.234642>,  <39.233486, 34.110237, 31.180265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464375, 34.073727, 31.234642>,  <39.849190, 34.012875, 31.325270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464375, 34.073727, 31.234642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098109, 0.581912, 0.807312,
		0.254664, 0.798895, -0.544897,
		-0.962040, 0.152134, -0.226571,
		39.175762, 34.119366, 31.166670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761639, 34.738300, 31.287943>,  <39.849190, 34.012875, 31.325270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761639, 34.738300, 31.287943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406040, 34.572746, 31.366306>,  <39.192680, 34.473415, 31.413324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406040, 34.572746, 31.366306>,  <39.761639, 34.738300, 31.287943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406040, 34.572746, 31.366306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120957, 0.624889, 0.771287,
		-0.441643, 0.661978, -0.605588,
		-0.889000, -0.413884, 0.195907,
		39.139339, 34.448582, 31.425079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372124, 35.334656, 31.377241>,  <39.761639, 34.738300, 31.287943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372124, 35.334656, 31.377241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177376, 35.022041, 31.533272>,  <39.060528, 34.834473, 31.626890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177376, 35.022041, 31.533272>,  <39.372124, 35.334656, 31.377241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177376, 35.022041, 31.533272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338916, 0.580620, 0.740281,
		-0.805040, 0.228220, -0.547563,
		-0.486873, -0.781534, 0.390075,
		39.031315, 34.787582, 31.650295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849476, 35.903805, 31.321106>,  <39.372124, 35.334656, 31.377241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849476, 35.903805, 31.321106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681190, 36.114201, 31.616764>,  <39.580219, 36.240437, 31.794159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681190, 36.114201, 31.616764>,  <39.849476, 35.903805, 31.321106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681190, 36.114201, 31.616764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681123, 0.721314, -0.125607,
		-0.599222, 0.450603, -0.661733,
		-0.420718, 0.525988, 0.739143,
		39.554974, 36.271996, 31.838507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470249, 36.377098, 31.397655>,  <39.849476, 35.903805, 31.321106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470249, 36.377098, 31.397655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.564156, 36.754280, 31.303240>,  <40.620499, 36.980591, 31.246590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.564156, 36.754280, 31.303240>,  <40.470249, 36.377098, 31.397655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564156, 36.754280, 31.303240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644895, -0.030603, -0.763658,
		-0.727322, 0.331499, 0.600925,
		0.234762, 0.942959, -0.236040,
		40.634583, 37.037167, 31.232428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746975, 36.776154, 31.302654>,  <40.470249, 36.377098, 31.397655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746975, 36.776154, 31.302654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048950, 36.956413, 31.112085>,  <40.230137, 37.064571, 30.997744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048950, 36.956413, 31.112085>,  <39.746975, 36.776154, 31.302654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048950, 36.956413, 31.112085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604744, 0.197375, -0.771575,
		-0.253678, 0.870606, 0.421536,
		0.754938, 0.450653, -0.476425,
		40.275433, 37.091610, 30.969158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467381, 37.447914, 31.098537>,  <39.746975, 36.776154, 31.302654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467381, 37.447914, 31.098537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789757, 37.362659, 30.877621>,  <39.983185, 37.311508, 30.745070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789757, 37.362659, 30.877621>,  <39.467381, 37.447914, 31.098537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789757, 37.362659, 30.877621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574830, -0.058736, -0.816162,
		0.141513, 0.975256, -0.169854,
		0.805944, -0.213134, -0.552294,
		40.031540, 37.298717, 30.711933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333973, 37.862183, 30.519552>,  <39.467381, 37.447914, 31.098537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333973, 37.862183, 30.519552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604897, 37.576946, 30.447165>,  <39.767452, 37.405804, 30.403732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604897, 37.576946, 30.447165>,  <39.333973, 37.862183, 30.519552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604897, 37.576946, 30.447165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493431, -0.257856, -0.830684,
		0.545692, 0.651926, -0.526510,
		0.677308, -0.713094, -0.180971,
		39.808090, 37.363018, 30.392874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442116, 37.892895, 29.809702>,  <39.333973, 37.862183, 30.519552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442116, 37.892895, 29.809702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604561, 37.541225, 29.909403>,  <39.702026, 37.330223, 29.969223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604561, 37.541225, 29.909403>,  <39.442116, 37.892895, 29.809702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604561, 37.541225, 29.909403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415655, -0.420626, -0.806414,
		0.813821, 0.223889, -0.536254,
		0.406110, -0.879174, 0.249254,
		39.726395, 37.277473, 29.984179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557152, 37.626526, 29.147415>,  <39.442116, 37.892895, 29.809702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557152, 37.626526, 29.147415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.592865, 37.308613, 29.387531>,  <39.614292, 37.117867, 29.531601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.592865, 37.308613, 29.387531>,  <39.557152, 37.626526, 29.147415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592865, 37.308613, 29.387531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178406, -0.605712, -0.775425,
		0.979898, -0.037862, -0.195874,
		0.089285, -0.794782, 0.600291,
		39.619652, 37.070179, 29.567619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100887, 37.113823, 28.874140>,  <39.557152, 37.626526, 29.147415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100887, 37.113823, 28.874140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812271, 36.955097, 29.101089>,  <39.639103, 36.859859, 29.237259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812271, 36.955097, 29.101089>,  <40.100887, 37.113823, 28.874140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812271, 36.955097, 29.101089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220831, -0.644771, -0.731781,
		0.656210, -0.653304, 0.377600,
		-0.721542, -0.396817, 0.567375,
		39.595810, 36.836052, 29.271301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104546, 36.469826, 28.566078>,  <40.100887, 37.113823, 28.874140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104546, 36.469826, 28.566078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.764347, 36.487923, 28.775694>,  <39.560230, 36.498779, 28.901463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.764347, 36.487923, 28.775694>,  <40.104546, 36.469826, 28.566078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764347, 36.487923, 28.775694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451371, -0.574285, -0.682979,
		0.270049, -0.817405, 0.508845,
		-0.850493, 0.045240, 0.524038,
		39.509201, 36.501495, 28.932905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936508, 35.735588, 28.705935>,  <40.104546, 36.469826, 28.566078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936508, 35.735588, 28.705935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608471, 35.958817, 28.756542>,  <39.411648, 36.092754, 28.786907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608471, 35.958817, 28.756542>,  <39.936508, 35.735588, 28.705935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608471, 35.958817, 28.756542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481102, -0.552707, -0.680483,
		-0.309832, -0.618924, 0.721759,
		-0.820089, 0.558075, 0.126519,
		39.362446, 36.126240, 28.794498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383621, 35.242764, 28.770060>,  <39.936508, 35.735588, 28.705935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383621, 35.242764, 28.770060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225548, 35.597736, 28.675158>,  <39.130703, 35.810719, 28.618216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.225548, 35.597736, 28.675158>,  <39.383621, 35.242764, 28.770060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225548, 35.597736, 28.675158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379698, -0.392989, -0.837490,
		-0.836455, -0.240878, 0.492260,
		-0.395186, 0.887433, -0.237257,
		39.106991, 35.863968, 28.603981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800114, 35.051872, 28.411949>,  <39.383621, 35.242764, 28.770060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800114, 35.051872, 28.411949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896267, 35.424915, 28.304277>,  <38.953960, 35.648743, 28.239674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896267, 35.424915, 28.304277>,  <38.800114, 35.051872, 28.411949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896267, 35.424915, 28.304277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278348, -0.199438, -0.939546,
		-0.929912, 0.300779, 0.211647,
		0.240385, 0.932607, -0.269181,
		38.968384, 35.704697, 28.223522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239697, 35.210056, 28.068914>,  <38.800114, 35.051872, 28.411949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239697, 35.210056, 28.068914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551144, 35.426445, 27.941723>,  <38.738010, 35.556278, 27.865408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551144, 35.426445, 27.941723>,  <38.239697, 35.210056, 28.068914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551144, 35.426445, 27.941723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199157, -0.267499, -0.942752,
		-0.595059, 0.797369, -0.100541,
		0.778615, 0.540970, -0.317979,
		38.784729, 35.588737, 27.846329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918274, 35.368561, 27.361158>,  <38.239697, 35.210056, 28.068914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918274, 35.368561, 27.361158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305305, 35.469212, 27.369896>,  <38.537525, 35.529602, 27.375139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.305305, 35.469212, 27.369896>,  <37.918274, 35.368561, 27.361158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305305, 35.469212, 27.369896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086473, -0.248770, -0.964695,
		-0.237305, 0.935307, -0.262463,
		0.967579, 0.251623, 0.021844,
		38.595581, 35.544697, 27.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959213, 35.806000, 26.832153>,  <37.918274, 35.368561, 27.361158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959213, 35.806000, 26.832153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341480, 35.702473, 26.888308>,  <38.570839, 35.640354, 26.922001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341480, 35.702473, 26.888308>,  <37.959213, 35.806000, 26.832153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341480, 35.702473, 26.888308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111717, -0.122410, -0.986172,
		0.272428, 0.958137, -0.088069,
		0.955669, -0.258822, 0.140388,
		38.628181, 35.624825, 26.930424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671082, 36.464096, 26.643433>,  <37.959213, 35.806000, 26.832153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671082, 36.464096, 26.643433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284477, 36.539429, 26.573696>,  <37.052517, 36.584629, 26.531855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284477, 36.539429, 26.573696>,  <37.671082, 36.464096, 26.643433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284477, 36.539429, 26.573696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193173, -0.086630, 0.977333,
		0.168961, 0.978277, 0.120109,
		-0.966507, 0.188333, -0.174339,
		36.994526, 36.595928, 26.521395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477432, 36.959091, 27.104370>,  <37.671082, 36.464096, 26.643433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477432, 36.959091, 27.104370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144775, 36.767574, 26.991854>,  <36.945183, 36.652664, 26.924343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144775, 36.767574, 26.991854>,  <37.477432, 36.959091, 27.104370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144775, 36.767574, 26.991854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281305, -0.073510, 0.956799,
		-0.478789, 0.874843, -0.073554,
		-0.831642, -0.478796, -0.281293,
		36.895283, 36.623936, 26.907465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956661, 37.224949, 27.540125>,  <37.477432, 36.959091, 27.104370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956661, 37.224949, 27.540125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783661, 36.894119, 27.396513>,  <36.679863, 36.695621, 27.310347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783661, 36.894119, 27.396513>,  <36.956661, 37.224949, 27.540125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783661, 36.894119, 27.396513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614584, -0.020936, 0.788573,
		-0.659722, 0.561708, -0.499250,
		-0.432496, -0.827070, -0.359029,
		36.653912, 36.646000, 27.288805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196026, 37.266178, 27.639191>,  <36.956661, 37.224949, 27.540125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196026, 37.266178, 27.639191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.284889, 36.876659, 27.619753>,  <36.338207, 36.642948, 27.608089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.284889, 36.876659, 27.619753>,  <36.196026, 37.266178, 27.639191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284889, 36.876659, 27.619753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689603, -0.192163, 0.698227,
		-0.689271, -0.121603, -0.714225,
		0.222154, -0.973800, -0.048595,
		36.351536, 36.584518, 27.605175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572758, 36.995502, 27.832626>,  <36.196026, 37.266178, 27.639191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572758, 36.995502, 27.832626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861134, 36.723557, 27.886339>,  <36.034161, 36.560390, 27.918566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861134, 36.723557, 27.886339>,  <35.572758, 36.995502, 27.832626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861134, 36.723557, 27.886339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416748, -0.270519, 0.867837,
		-0.553687, -0.681618, -0.478360,
		0.720938, -0.679865, 0.134280,
		36.077415, 36.519596, 27.926622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332302, 36.482155, 28.154219>,  <35.572758, 36.995502, 27.832626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332302, 36.482155, 28.154219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.711376, 36.401501, 28.253208>,  <35.938820, 36.353107, 28.312601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.711376, 36.401501, 28.253208>,  <35.332302, 36.482155, 28.154219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711376, 36.401501, 28.253208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296435, -0.268260, 0.916604,
		-0.118432, -0.942008, -0.313997,
		0.947682, -0.201635, 0.247473,
		35.995682, 36.341011, 28.327450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303181, 35.905655, 28.585981>,  <35.332302, 36.482155, 28.154219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303181, 35.905655, 28.585981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.679340, 36.023808, 28.653387>,  <35.905037, 36.094700, 28.693830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.679340, 36.023808, 28.653387>,  <35.303181, 35.905655, 28.585981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679340, 36.023808, 28.653387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020484, -0.445428, 0.895083,
		0.339449, -0.845190, -0.412830,
		0.940401, 0.295378, 0.168513,
		35.961460, 36.112419, 28.703941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679932, 35.278404, 28.677382>,  <35.303181, 35.905655, 28.585981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679932, 35.278404, 28.677382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.898464, 35.562611, 28.854782>,  <36.029583, 35.733135, 28.961222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.898464, 35.562611, 28.854782>,  <35.679932, 35.278404, 28.677382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898464, 35.562611, 28.854782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040599, -0.506422, 0.861329,
		0.836586, -0.488576, -0.247827,
		0.546330, 0.710514, 0.443501,
		36.062363, 35.775764, 28.987833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304459, 34.884468, 28.998947>,  <35.679932, 35.278404, 28.677382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304459, 34.884468, 28.998947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260010, 35.232227, 29.191532>,  <36.233341, 35.440884, 29.307083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260010, 35.232227, 29.191532>,  <36.304459, 34.884468, 28.998947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260010, 35.232227, 29.191532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039676, -0.480196, 0.876263,
		0.993014, 0.116476, 0.018868,
		-0.111124, 0.869393, 0.481463,
		36.226673, 35.493046, 29.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820194, 34.856728, 29.505405>,  <36.304459, 34.884468, 28.998947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820194, 34.856728, 29.505405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.569012, 35.139927, 29.634651>,  <36.418301, 35.309845, 29.712198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.569012, 35.139927, 29.634651>,  <36.820194, 34.856728, 29.505405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569012, 35.139927, 29.634651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105380, -0.334006, 0.936662,
		0.771078, 0.622237, 0.135134,
		-0.627961, 0.707998, 0.323116,
		36.380623, 35.352325, 29.731586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050755, 35.080135, 30.117607>,  <36.820194, 34.856728, 29.505405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050755, 35.080135, 30.117607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663212, 35.178257, 30.131147>,  <36.430687, 35.237129, 30.139271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663212, 35.178257, 30.131147>,  <37.050755, 35.080135, 30.117607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663212, 35.178257, 30.131147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001553, -0.130675, 0.991424,
		0.247624, 0.960599, 0.126224,
		-0.968855, 0.245304, 0.033850,
		36.372555, 35.251850, 30.141302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964893, 35.623951, 30.596786>,  <37.050755, 35.080135, 30.117607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964893, 35.623951, 30.596786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612926, 35.436069, 30.568148>,  <36.401745, 35.323341, 30.550964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.612926, 35.436069, 30.568148>,  <36.964893, 35.623951, 30.596786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612926, 35.436069, 30.568148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113511, 0.061494, 0.991632,
		-0.461370, 0.880680, -0.107426,
		-0.879916, -0.469704, -0.071596,
		36.348953, 35.295158, 30.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.241215, 36.995605, 23.155514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901924, 36.787903, 23.113762>,  <37.698349, 36.663280, 23.088711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901924, 36.787903, 23.113762>,  <38.241215, 36.995605, 23.155514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901924, 36.787903, 23.113762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257061, 0.231305, 0.938306,
		-0.463075, 0.822723, -0.329678,
		-0.848222, -0.519253, -0.104379,
		37.647457, 36.632126, 23.082449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762589, 37.399460, 23.488005>,  <38.241215, 36.995605, 23.155514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762589, 37.399460, 23.488005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560852, 37.054695, 23.467041>,  <37.439812, 36.847836, 23.454464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560852, 37.054695, 23.467041>,  <37.762589, 37.399460, 23.488005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560852, 37.054695, 23.467041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437905, 0.202981, 0.875807,
		-0.744233, 0.464651, -0.479808,
		-0.504337, -0.861915, -0.052408,
		37.409550, 36.796120, 23.451319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117516, 37.570011, 23.792444>,  <37.762589, 37.399460, 23.488005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117516, 37.570011, 23.792444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185177, 37.175968, 23.804808>,  <37.225773, 36.939545, 23.812225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185177, 37.175968, 23.804808>,  <37.117516, 37.570011, 23.792444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185177, 37.175968, 23.804808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363644, -0.033233, 0.930945,
		-0.916052, -0.168708, -0.363849,
		0.169149, -0.985106, 0.030906,
		37.235920, 36.880436, 23.814079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529793, 37.348019, 24.118811>,  <37.117516, 37.570011, 23.792444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529793, 37.348019, 24.118811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791344, 37.047394, 24.153692>,  <36.948273, 36.867020, 24.174622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791344, 37.047394, 24.153692>,  <36.529793, 37.348019, 24.118811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791344, 37.047394, 24.153692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201480, -0.061867, 0.977537,
		-0.729282, -0.656758, -0.191878,
		0.653876, -0.751559, 0.087205,
		36.987507, 36.821926, 24.179853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072426, 36.919331, 24.532387>,  <36.529793, 37.348019, 24.118811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072426, 36.919331, 24.532387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457748, 36.812088, 24.537266>,  <36.688942, 36.747742, 24.540194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457748, 36.812088, 24.537266>,  <36.072426, 36.919331, 24.532387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457748, 36.812088, 24.537266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052660, -0.144252, 0.988139,
		-0.263173, -0.952526, -0.153079,
		0.963310, -0.268113, 0.012197,
		36.746742, 36.731655, 24.540924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163036, 36.138313, 24.853949>,  <36.072426, 36.919331, 24.532387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163036, 36.138313, 24.853949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508266, 36.337402, 24.888279>,  <36.715405, 36.456856, 24.908876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508266, 36.337402, 24.888279>,  <36.163036, 36.138313, 24.853949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508266, 36.337402, 24.888279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068414, -0.053155, 0.996240,
		0.500414, -0.865706, -0.011826,
		0.863079, 0.497723, 0.085826,
		36.767189, 36.486721, 24.914026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583855, 35.715778, 25.307085>,  <36.163036, 36.138313, 24.853949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583855, 35.715778, 25.307085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738064, 36.084381, 25.325821>,  <36.830589, 36.305542, 25.337063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738064, 36.084381, 25.325821>,  <36.583855, 35.715778, 25.307085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738064, 36.084381, 25.325821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048394, -0.030499, 0.998363,
		0.921429, -0.387156, 0.032837,
		0.385521, 0.921509, 0.046839,
		36.853722, 36.360832, 25.339872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002586, 35.690884, 25.855673>,  <36.583855, 35.715778, 25.307085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002586, 35.690884, 25.855673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948399, 36.083740, 25.803436>,  <36.915886, 36.319454, 25.772095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948399, 36.083740, 25.803436>,  <37.002586, 35.690884, 25.855673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948399, 36.083740, 25.803436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067503, 0.140650, 0.987755,
		0.988479, 0.125000, -0.085352,
		-0.135474, 0.982137, -0.130592,
		36.907757, 36.378380, 25.764259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581158, 36.109558, 26.036882>,  <37.002586, 35.690884, 25.855673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581158, 36.109558, 26.036882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262554, 36.347019, 26.082756>,  <37.071392, 36.489498, 26.110279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262554, 36.347019, 26.082756>,  <37.581158, 36.109558, 26.036882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262554, 36.347019, 26.082756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219466, 0.107126, 0.969721,
		0.563395, 0.797557, -0.215614,
		-0.796506, 0.593656, 0.114682,
		37.023602, 36.525116, 26.117161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352921, 36.111328, 26.110500>,  <37.581158, 36.109558, 26.036882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352921, 36.111328, 26.110500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591148, 35.859993, 26.310696>,  <38.734085, 35.709190, 26.430813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591148, 35.859993, 26.310696>,  <38.352921, 36.111328, 26.110500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591148, 35.859993, 26.310696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254957, -0.442972, -0.859519,
		0.761773, 0.639503, -0.103619,
		0.595566, -0.628340, 0.500490,
		38.769817, 35.671490, 26.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013168, 36.177746, 25.850866>,  <38.352921, 36.111328, 26.110500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013168, 36.177746, 25.850866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977226, 35.810528, 26.005327>,  <38.955662, 35.590195, 26.098003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977226, 35.810528, 26.005327>,  <39.013168, 36.177746, 25.850866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977226, 35.810528, 26.005327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108835, -0.394449, -0.912450,
		0.989990, -0.039963, 0.135359,
		-0.089857, -0.918049, 0.386151,
		38.950268, 35.535114, 26.121172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547646, 35.763443, 25.501467>,  <39.013168, 36.177746, 25.850866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547646, 35.763443, 25.501467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313400, 35.481819, 25.662148>,  <39.172852, 35.312847, 25.758556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313400, 35.481819, 25.662148>,  <39.547646, 35.763443, 25.501467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313400, 35.481819, 25.662148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130973, -0.571237, -0.810268,
		0.799941, -0.421891, 0.426735,
		-0.585612, -0.704057, 0.401700,
		39.137718, 35.270603, 25.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935661, 35.163795, 25.510859>,  <39.547646, 35.763443, 25.501467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935661, 35.163795, 25.510859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554619, 35.042179, 25.514822>,  <39.325993, 34.969208, 25.517200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554619, 35.042179, 25.514822>,  <39.935661, 35.163795, 25.510859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554619, 35.042179, 25.514822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223471, -0.721523, -0.655336,
		0.206399, -0.622064, 0.755273,
		-0.952607, -0.304042, 0.009908,
		39.268837, 34.950966, 25.517794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042259, 34.481060, 25.339354>,  <39.935661, 35.163795, 25.510859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042259, 34.481060, 25.339354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662544, 34.569351, 25.249786>,  <39.434715, 34.622326, 25.196047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662544, 34.569351, 25.249786>,  <40.042259, 34.481060, 25.339354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662544, 34.569351, 25.249786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005991, -0.699337, -0.714767,
		-0.314360, -0.679859, 0.662548,
		-0.949285, 0.220725, -0.223916,
		39.377758, 34.635571, 25.182611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723728, 33.818558, 25.173336>,  <40.042259, 34.481060, 25.339354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723728, 33.818558, 25.173336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461708, 34.078705, 25.019485>,  <39.304497, 34.234791, 24.927176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461708, 34.078705, 25.019485>,  <39.723728, 33.818558, 25.173336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461708, 34.078705, 25.019485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072076, -0.560506, -0.825008,
		-0.752140, -0.512699, 0.414035,
		-0.655050, 0.650364, -0.384625,
		39.265194, 34.273815, 24.904099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162090, 33.374020, 24.883375>,  <39.723728, 33.818558, 25.173336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162090, 33.374020, 24.883375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112236, 33.736717, 24.722240>,  <39.082321, 33.954338, 24.625559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112236, 33.736717, 24.722240>,  <39.162090, 33.374020, 24.883375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112236, 33.736717, 24.722240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272129, -0.421674, -0.864949,
		-0.954155, 0.001818, 0.299308,
		-0.124638, 0.906746, -0.402837,
		39.074844, 34.008739, 24.601389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458538, 33.375420, 24.447893>,  <39.162090, 33.374020, 24.883375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458538, 33.375420, 24.447893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646229, 33.690739, 24.288689>,  <38.758842, 33.879929, 24.193165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646229, 33.690739, 24.288689>,  <38.458538, 33.375420, 24.447893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646229, 33.690739, 24.288689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209042, -0.338747, -0.917361,
		-0.857979, 0.513651, 0.005838,
		0.469226, 0.788297, -0.398013,
		38.786995, 33.927227, 24.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033249, 33.661976, 23.844799>,  <38.458538, 33.375420, 24.447893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033249, 33.661976, 23.844799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413376, 33.767475, 23.778675>,  <38.641453, 33.830776, 23.739000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413376, 33.767475, 23.778675>,  <38.033249, 33.661976, 23.844799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413376, 33.767475, 23.778675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122844, -0.170179, -0.977726,
		-0.286009, 0.949460, -0.129324,
		0.950320, 0.263752, -0.165309,
		38.698471, 33.846600, 23.729082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052429, 33.989689, 23.150770>,  <38.033249, 33.661976, 23.844799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052429, 33.989689, 23.150770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443642, 33.923611, 23.201630>,  <38.678368, 33.883965, 23.232145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443642, 33.923611, 23.201630>,  <38.052429, 33.989689, 23.150770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443642, 33.923611, 23.201630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094898, -0.190246, -0.977139,
		0.185609, 0.967738, -0.170390,
		0.978030, -0.165196, 0.127148,
		38.737049, 33.874050, 23.239775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393711, 34.467930, 22.798904>,  <38.052429, 33.989689, 23.150770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393711, 34.467930, 22.798904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650723, 34.165821, 22.850628>,  <38.804932, 33.984558, 22.881662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650723, 34.165821, 22.850628>,  <38.393711, 34.467930, 22.798904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650723, 34.165821, 22.850628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181067, -0.014323, -0.983366,
		0.744560, 0.655257, 0.127551,
		0.642531, -0.755270, 0.129310,
		38.843483, 33.939240, 22.889421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880489, 34.605545, 22.362720>,  <38.393711, 34.467930, 22.798904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880489, 34.605545, 22.362720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921974, 34.215508, 22.441149>,  <38.946865, 33.981487, 22.488205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921974, 34.215508, 22.441149>,  <38.880489, 34.605545, 22.362720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921974, 34.215508, 22.441149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247139, -0.165684, -0.954710,
		0.963414, 0.147473, 0.223799,
		0.103714, -0.975090, 0.196068,
		38.953087, 33.922981, 22.499969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429783, 34.337280, 22.043095>,  <38.880489, 34.605545, 22.362720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429783, 34.337280, 22.043095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217377, 34.000053, 22.077156>,  <39.089931, 33.797718, 22.097593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217377, 34.000053, 22.077156>,  <39.429783, 34.337280, 22.043095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217377, 34.000053, 22.077156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122468, -0.175796, -0.976779,
		0.838463, -0.508261, 0.196600,
		-0.531020, -0.843070, 0.085153,
		39.058071, 33.747131, 22.102701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777683, 33.830147, 21.697247>,  <39.429783, 34.337280, 22.043095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777683, 33.830147, 21.697247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419132, 33.653152, 21.707867>,  <39.204002, 33.546955, 21.714239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419132, 33.653152, 21.707867>,  <39.777683, 33.830147, 21.697247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419132, 33.653152, 21.707867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127212, -0.314157, -0.940810,
		0.424641, -0.839945, 0.337894,
		-0.896380, -0.442490, 0.026552,
		39.150219, 33.520405, 21.715832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.458832, 30.162666, 22.302986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.733273, 30.453657, 22.300440>,  <32.897938, 30.628252, 22.298912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.733273, 30.453657, 22.300440>,  <32.458832, 30.162666, 22.302986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733273, 30.453657, 22.300440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099832, -0.085479, 0.991326,
		0.720623, -0.680786, -0.131273,
		0.686102, 0.727477, -0.006366,
		32.939102, 30.671900, 22.298531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065586, 29.933004, 22.594625>,  <32.458832, 30.162666, 22.302986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065586, 29.933004, 22.594625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103565, 30.328030, 22.644758>,  <33.126354, 30.565044, 22.674839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103565, 30.328030, 22.644758>,  <33.065586, 29.933004, 22.594625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103565, 30.328030, 22.644758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029709, -0.123036, 0.991957,
		0.995039, -0.097907, 0.017658,
		0.094947, 0.987561, 0.125334,
		33.132050, 30.624298, 22.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309910, 30.023291, 23.305645>,  <33.065586, 29.933004, 22.594625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309910, 30.023291, 23.305645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231163, 30.402218, 23.204586>,  <33.183914, 30.629574, 23.143950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231163, 30.402218, 23.204586>,  <33.309910, 30.023291, 23.305645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231163, 30.402218, 23.204586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011376, 0.255468, 0.966750,
		0.980365, 0.193192, -0.039516,
		-0.196864, 0.947319, -0.252649,
		33.172104, 30.686413, 23.128792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860924, 30.562422, 23.592937>,  <33.309910, 30.023291, 23.305645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860924, 30.562422, 23.592937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507065, 30.735998, 23.524704>,  <33.294750, 30.840143, 23.483765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507065, 30.735998, 23.524704>,  <33.860924, 30.562422, 23.592937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507065, 30.735998, 23.524704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082245, 0.214884, 0.973170,
		0.458953, 0.874940, -0.154407,
		-0.884645, 0.433941, -0.170581,
		33.241673, 30.866180, 23.473530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855396, 31.169205, 23.950619>,  <33.860924, 30.562422, 23.592937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855396, 31.169205, 23.950619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459152, 31.142126, 23.903095>,  <33.221405, 31.125879, 23.874580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459152, 31.142126, 23.903095>,  <33.855396, 31.169205, 23.950619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459152, 31.142126, 23.903095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136188, 0.410184, 0.901777,
		-0.012314, 0.909487, -0.415551,
		-0.990607, -0.067697, -0.118810,
		33.161972, 31.121817, 23.867453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620171, 31.925709, 24.144604>,  <33.855396, 31.169205, 23.950619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620171, 31.925709, 24.144604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327766, 31.653456, 24.164040>,  <33.152325, 31.490105, 24.175701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327766, 31.653456, 24.164040>,  <33.620171, 31.925709, 24.144604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327766, 31.653456, 24.164040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229529, 0.312326, 0.921829,
		-0.642603, 0.662715, -0.384539,
		-0.731012, -0.680633, 0.048589,
		33.108463, 31.449266, 24.178616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159641, 32.315441, 24.630571>,  <33.620171, 31.925709, 24.144604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159641, 32.315441, 24.630571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067509, 31.926851, 24.607981>,  <33.012230, 31.693697, 24.594427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.067509, 31.926851, 24.607981>,  <33.159641, 32.315441, 24.630571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067509, 31.926851, 24.607981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115554, -0.030322, 0.992838,
		-0.966228, 0.235204, -0.105274,
		-0.230328, -0.971473, -0.056477,
		32.998409, 31.635410, 24.591038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510891, 32.212528, 24.975096>,  <33.159641, 32.315441, 24.630571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510891, 32.212528, 24.975096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691132, 31.855942, 24.994017>,  <32.799274, 31.641989, 25.005369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691132, 31.855942, 24.994017>,  <32.510891, 32.212528, 24.975096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691132, 31.855942, 24.994017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059063, 0.023100, 0.997987,
		-0.890769, -0.452489, -0.042244,
		0.450602, -0.891471, 0.047303,
		32.826313, 31.588501, 25.008207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132656, 31.789310, 25.511377>,  <32.510891, 32.212528, 24.975096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132656, 31.789310, 25.511377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.498158, 31.639507, 25.448391>,  <32.717457, 31.549625, 25.410599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.498158, 31.639507, 25.448391>,  <32.132656, 31.789310, 25.511377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498158, 31.639507, 25.448391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109831, -0.145446, 0.983251,
		-0.391140, -0.915744, -0.091769,
		0.913754, -0.374510, -0.157467,
		32.772285, 31.527155, 25.401152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232063, 31.236952, 25.949856>,  <32.132656, 31.789310, 25.511377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232063, 31.236952, 25.949856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606026, 31.339914, 25.852121>,  <32.830402, 31.401691, 25.793482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606026, 31.339914, 25.852121>,  <32.232063, 31.236952, 25.949856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606026, 31.339914, 25.852121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287982, -0.147849, 0.946154,
		0.207421, -0.954926, -0.212352,
		0.934903, 0.257405, -0.244334,
		32.886497, 31.417135, 25.778822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584835, 30.805016, 26.408928>,  <32.232063, 31.236952, 25.949856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584835, 30.805016, 26.408928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857410, 31.079506, 26.307156>,  <33.020954, 31.244200, 26.246092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857410, 31.079506, 26.307156>,  <32.584835, 30.805016, 26.408928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857410, 31.079506, 26.307156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376344, -0.030393, 0.925982,
		0.627701, -0.726752, -0.278969,
		0.681438, 0.686227, -0.254431,
		33.061840, 31.285374, 26.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194954, 30.485699, 26.774628>,  <32.584835, 30.805016, 26.408928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194954, 30.485699, 26.774628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.260841, 30.871153, 26.690458>,  <33.300373, 31.102425, 26.639957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.260841, 30.871153, 26.690458>,  <33.194954, 30.485699, 26.774628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260841, 30.871153, 26.690458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420418, 0.124392, 0.898763,
		0.892254, -0.236506, -0.384640,
		0.164716, 0.963634, -0.210421,
		33.310257, 31.160244, 26.627333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865055, 30.736525, 27.152122>,  <33.194954, 30.485699, 26.774628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865055, 30.736525, 27.152122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629105, 31.050169, 27.074957>,  <33.487534, 31.238356, 27.028658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629105, 31.050169, 27.074957>,  <33.865055, 30.736525, 27.152122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629105, 31.050169, 27.074957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022681, 0.222723, 0.974618,
		0.807175, 0.579280, -0.113595,
		-0.589877, 0.784110, -0.192915,
		33.452141, 31.285402, 27.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175365, 31.208391, 27.619118>,  <33.865055, 30.736525, 27.152122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175365, 31.208391, 27.619118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818592, 31.365490, 27.529486>,  <33.604530, 31.459749, 27.475706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818592, 31.365490, 27.529486>,  <34.175365, 31.208391, 27.619118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818592, 31.365490, 27.529486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047685, 0.411098, 0.910343,
		0.449654, 0.822647, -0.347942,
		-0.891929, 0.392747, -0.224080,
		33.551014, 31.483315, 27.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750221, 31.799616, 27.562843>,  <34.175365, 31.208391, 27.619118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750221, 31.799616, 27.562843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073280, 31.575003, 27.634832>,  <35.267117, 31.440235, 27.678026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073280, 31.575003, 27.634832>,  <34.750221, 31.799616, 27.562843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073280, 31.575003, 27.634832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053191, -0.234586, -0.970639,
		0.587263, 0.793506, -0.159594,
		0.807647, -0.561531, 0.179971,
		35.315575, 31.406544, 27.688824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038647, 31.866402, 26.908649>,  <34.750221, 31.799616, 27.562843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038647, 31.866402, 26.908649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201084, 31.556309, 27.102186>,  <35.298546, 31.370253, 27.218307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201084, 31.556309, 27.102186>,  <35.038647, 31.866402, 26.908649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201084, 31.556309, 27.102186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309097, -0.381731, -0.871057,
		0.859970, 0.503283, 0.084605,
		0.406092, -0.775234, 0.483840,
		35.322910, 31.323738, 27.247339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829475, 31.941807, 26.848152>,  <35.038647, 31.866402, 26.908649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829475, 31.941807, 26.848152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691586, 31.567308, 26.875309>,  <35.608852, 31.342609, 26.891603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691586, 31.567308, 26.875309>,  <35.829475, 31.941807, 26.848152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691586, 31.567308, 26.875309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270366, -0.168287, -0.947935,
		0.898927, -0.308417, 0.311141,
		-0.344721, -0.936247, 0.067892,
		35.588169, 31.286434, 26.895676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352955, 31.508408, 26.502674>,  <35.829475, 31.941807, 26.848152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352955, 31.508408, 26.502674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025574, 31.278746, 26.511381>,  <35.829144, 31.140947, 26.516605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025574, 31.278746, 26.511381>,  <36.352955, 31.508408, 26.502674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025574, 31.278746, 26.511381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252959, -0.394087, -0.883576,
		0.515888, -0.717663, 0.467781,
		-0.818456, -0.574156, 0.021766,
		35.780037, 31.106499, 26.517910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551884, 30.820551, 26.363798>,  <36.352955, 31.508408, 26.502674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551884, 30.820551, 26.363798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173149, 30.870108, 26.245039>,  <35.945908, 30.899841, 26.173784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173149, 30.870108, 26.245039>,  <36.551884, 30.820551, 26.363798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173149, 30.870108, 26.245039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248963, -0.302304, -0.920125,
		-0.203750, -0.945126, 0.255389,
		-0.946838, 0.123893, -0.296896,
		35.889099, 30.907276, 26.155970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413960, 30.220409, 25.850080>,  <36.551884, 30.820551, 26.363798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413960, 30.220409, 25.850080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101528, 30.464653, 25.797806>,  <35.914070, 30.611198, 25.766441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101528, 30.464653, 25.797806>,  <36.413960, 30.220409, 25.850080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101528, 30.464653, 25.797806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022287, -0.236418, -0.971396,
		-0.624038, -0.755821, 0.198269,
		-0.781076, 0.610607, -0.130689,
		35.867207, 30.647835, 25.758598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955338, 29.752825, 25.510185>,  <36.413960, 30.220409, 25.850080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955338, 29.752825, 25.510185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844070, 30.127314, 25.424292>,  <35.777309, 30.352007, 25.372755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844070, 30.127314, 25.424292>,  <35.955338, 29.752825, 25.510185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844070, 30.127314, 25.424292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025740, -0.230744, -0.972674,
		-0.960188, -0.265038, 0.088284,
		-0.278166, 0.936223, -0.214735,
		35.760620, 30.408180, 25.359871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331532, 29.749516, 25.101332>,  <35.955338, 29.752825, 25.510185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331532, 29.749516, 25.101332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478432, 30.117470, 25.046291>,  <35.566570, 30.338243, 25.013268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478432, 30.117470, 25.046291>,  <35.331532, 29.749516, 25.101332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478432, 30.117470, 25.046291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032260, -0.135254, -0.990286,
		-0.929563, 0.368122, -0.019996,
		0.367250, 0.919887, -0.137602,
		35.588608, 30.393436, 25.005011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950310, 30.058777, 24.645647>,  <35.331532, 29.749516, 25.101332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950310, 30.058777, 24.645647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262779, 30.307232, 24.620510>,  <35.450260, 30.456305, 24.605427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262779, 30.307232, 24.620510>,  <34.950310, 30.058777, 24.645647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262779, 30.307232, 24.620510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096753, 0.021003, -0.995087,
		-0.616767, 0.783419, 0.076504,
		0.781177, 0.621139, -0.062844,
		35.497131, 30.493574, 24.601656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723564, 30.545126, 24.238146>,  <34.950310, 30.058777, 24.645647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723564, 30.545126, 24.238146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123150, 30.562902, 24.234184>,  <35.362900, 30.573568, 24.231808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123150, 30.562902, 24.234184>,  <34.723564, 30.545126, 24.238146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123150, 30.562902, 24.234184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010729, 0.018344, -0.999774,
		-0.044250, 0.998844, 0.018801,
		0.998963, 0.044442, -0.009905,
		35.422840, 30.576235, 24.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994480, 31.098145, 23.806688>,  <34.723564, 30.545126, 24.238146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994480, 31.098145, 23.806688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.278286, 30.818235, 23.839939>,  <35.448570, 30.650290, 23.859890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.278286, 30.818235, 23.839939>,  <34.994480, 31.098145, 23.806688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278286, 30.818235, 23.839939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180059, 0.065978, -0.981441,
		0.681302, 0.711311, 0.172813,
		0.709511, -0.699774, 0.083127,
		35.491138, 30.608303, 23.864878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584938, 31.431953, 23.499062>,  <34.994480, 31.098145, 23.806688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584938, 31.431953, 23.499062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597076, 31.032257, 23.508863>,  <35.604359, 30.792440, 23.514744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597076, 31.032257, 23.508863>,  <35.584938, 31.431953, 23.499062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597076, 31.032257, 23.508863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240184, -0.016509, -0.970587,
		0.970253, 0.035336, 0.239500,
		0.030343, -0.999239, 0.024505,
		35.606178, 30.732485, 23.516214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169353, 31.330980, 23.059319>,  <35.584938, 31.431953, 23.499062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169353, 31.330980, 23.059319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954975, 30.993742, 23.077000>,  <35.826347, 30.791399, 23.087608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954975, 30.993742, 23.077000>,  <36.169353, 31.330980, 23.059319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954975, 30.993742, 23.077000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109156, -0.121117, -0.986618,
		0.837165, -0.523950, 0.156941,
		-0.535947, -0.843093, 0.044202,
		35.794189, 30.740814, 23.090260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543285, 30.843920, 22.635313>,  <36.169353, 31.330980, 23.059319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543285, 30.843920, 22.635313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170368, 30.700638, 22.655352>,  <35.946617, 30.614668, 22.667374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170368, 30.700638, 22.655352>,  <36.543285, 30.843920, 22.635313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170368, 30.700638, 22.655352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023190, -0.197415, -0.980046,
		0.360948, -0.912532, 0.192356,
		-0.932297, -0.358206, 0.050095,
		35.890678, 30.593176, 22.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190720, 30.364168, 22.608231>,  <36.543285, 30.843920, 22.635313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190720, 30.364168, 22.608231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563133, 30.452246, 22.491821>,  <37.786579, 30.505093, 22.421976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563133, 30.452246, 22.491821>,  <37.190720, 30.364168, 22.608231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563133, 30.452246, 22.491821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254673, 0.179137, 0.950290,
		0.261386, -0.958865, 0.110704,
		0.931031, 0.220199, -0.291021,
		37.842442, 30.518305, 22.404514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581997, 30.056263, 23.123346>,  <37.190720, 30.364168, 22.608231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581997, 30.056263, 23.123346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832287, 30.316175, 22.950718>,  <37.982460, 30.472124, 22.847141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832287, 30.316175, 22.950718>,  <37.581997, 30.056263, 23.123346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832287, 30.316175, 22.950718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265949, 0.342406, 0.901126,
		0.733309, -0.678631, 0.041442,
		0.625723, 0.649783, -0.431571,
		38.020004, 30.511110, 22.821247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200737, 29.889126, 23.460510>,  <37.581997, 30.056263, 23.123346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200737, 29.889126, 23.460510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220974, 30.249210, 23.287510>,  <38.233116, 30.465261, 23.183710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220974, 30.249210, 23.287510>,  <38.200737, 29.889126, 23.460510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220974, 30.249210, 23.287510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407669, 0.376719, 0.831799,
		0.911727, -0.218400, -0.347930,
		0.050593, 0.900213, -0.432500,
		38.236153, 30.519274, 23.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847569, 30.102442, 23.700617>,  <38.200737, 29.889126, 23.460510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847569, 30.102442, 23.700617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670975, 30.434723, 23.564955>,  <38.565018, 30.634090, 23.483557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670975, 30.434723, 23.564955>,  <38.847569, 30.102442, 23.700617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670975, 30.434723, 23.564955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287541, 0.489036, 0.823507,
		0.849947, 0.266046, -0.454763,
		-0.441486, 0.830701, -0.339156,
		38.538528, 30.683933, 23.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382408, 30.598486, 23.863506>,  <38.847569, 30.102442, 23.700617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382408, 30.598486, 23.863506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030273, 30.782137, 23.815832>,  <38.818993, 30.892328, 23.787228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030273, 30.782137, 23.815832>,  <39.382408, 30.598486, 23.863506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030273, 30.782137, 23.815832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112943, 0.446925, 0.887413,
		0.460704, 0.767762, -0.445301,
		-0.880338, 0.459128, -0.119187,
		38.766171, 30.919876, 23.780075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447384, 31.328758, 24.062693>,  <39.382408, 30.598486, 23.863506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447384, 31.328758, 24.062693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055534, 31.266911, 24.113953>,  <38.820423, 31.229803, 24.144709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055534, 31.266911, 24.113953>,  <39.447384, 31.328758, 24.062693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055534, 31.266911, 24.113953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042748, 0.462950, 0.885353,
		-0.196218, 0.872795, -0.446909,
		-0.979628, -0.154618, 0.128149,
		38.761646, 31.220526, 24.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107891, 32.003429, 24.124998>,  <39.447384, 31.328758, 24.062693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107891, 32.003429, 24.124998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877998, 31.721878, 24.291965>,  <38.740063, 31.552946, 24.392145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877998, 31.721878, 24.291965>,  <39.107891, 32.003429, 24.124998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877998, 31.721878, 24.291965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054189, 0.476224, 0.877653,
		-0.816547, 0.527033, -0.235558,
		-0.574730, -0.703880, 0.417418,
		38.705578, 31.510714, 24.417191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620224, 32.460663, 24.538168>,  <39.107891, 32.003429, 24.124998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620224, 32.460663, 24.538168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597286, 32.090660, 24.688408>,  <38.583523, 31.868658, 24.778551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597286, 32.090660, 24.688408>,  <38.620224, 32.460663, 24.538168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597286, 32.090660, 24.688408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110701, 0.379790, 0.918425,
		-0.992198, 0.011087, -0.124177,
		-0.057344, -0.925006, 0.375599,
		38.580082, 31.813158, 24.801088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106842, 32.517525, 24.957033>,  <38.620224, 32.460663, 24.538168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106842, 32.517525, 24.957033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.287918, 32.185402, 25.087057>,  <38.396564, 31.986128, 25.165071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.287918, 32.185402, 25.087057>,  <38.106842, 32.517525, 24.957033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287918, 32.185402, 25.087057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107797, 0.310917, 0.944304,
		-0.885127, -0.462520, 0.051245,
		0.452692, -0.830305, 0.325059,
		38.423725, 31.936310, 25.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683258, 32.195442, 25.367434>,  <38.106842, 32.517525, 24.957033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683258, 32.195442, 25.367434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.042252, 32.054482, 25.473515>,  <38.257648, 31.969906, 25.537163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.042252, 32.054482, 25.473515>,  <37.683258, 32.195442, 25.367434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042252, 32.054482, 25.473515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121430, 0.380629, 0.916720,
		-0.423993, -0.854949, 0.298818,
		0.897488, -0.352397, 0.265201,
		38.311497, 31.948763, 25.553074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625336, 31.900137, 26.062668>,  <37.683258, 32.195442, 25.367434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625336, 31.900137, 26.062668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021004, 31.952795, 26.036713>,  <38.258404, 31.984390, 26.021139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021004, 31.952795, 26.036713>,  <37.625336, 31.900137, 26.062668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021004, 31.952795, 26.036713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057321, 0.060493, 0.996521,
		0.135112, -0.989450, 0.052292,
		0.989171, 0.131645, -0.064890,
		38.317757, 31.992289, 26.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887062, 31.769863, 26.755184>,  <37.625336, 31.900137, 26.062668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887062, 31.769863, 26.755184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196457, 31.958027, 26.585272>,  <38.382092, 32.070927, 26.483324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196457, 31.958027, 26.585272>,  <37.887062, 31.769863, 26.755184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196457, 31.958027, 26.585272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343678, 0.251840, 0.904689,
		0.532551, -0.845750, 0.033124,
		0.773482, 0.470409, -0.424783,
		38.428501, 32.099148, 26.457836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460850, 31.552376, 27.125938>,  <37.887062, 31.769863, 26.755184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460850, 31.552376, 27.125938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579979, 31.894321, 26.955996>,  <38.651459, 32.099491, 26.854029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579979, 31.894321, 26.955996>,  <38.460850, 31.552376, 27.125938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579979, 31.894321, 26.955996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401358, 0.291676, 0.868238,
		0.866148, -0.429103, -0.256239,
		0.297825, 0.854866, -0.424858,
		38.669327, 32.150780, 26.828539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133034, 31.646616, 27.369427>,  <38.460850, 31.552376, 27.125938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133034, 31.646616, 27.369427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013561, 32.016605, 27.275436>,  <38.941879, 32.238598, 27.219042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013561, 32.016605, 27.275436>,  <39.133034, 31.646616, 27.369427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013561, 32.016605, 27.275436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444089, 0.352640, 0.823669,
		0.844735, 0.141661, -0.516096,
		-0.298678, 0.924974, -0.234978,
		38.923958, 32.294098, 27.204943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.881126, 33.125092, 21.420221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486427, 33.180599, 21.386587>,  <39.249607, 33.213905, 21.366407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486427, 33.180599, 21.386587>,  <39.881126, 33.125092, 21.420221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486427, 33.180599, 21.386587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018113, -0.420762, -0.906990,
		-0.161245, -0.896494, 0.412672,
		-0.986749, 0.138772, -0.084084,
		39.190403, 33.222233, 21.361362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612694, 32.515564, 21.144587>,  <39.881126, 33.125092, 21.420221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612694, 32.515564, 21.144587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325581, 32.782532, 21.065256>,  <39.153313, 32.942715, 21.017658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325581, 32.782532, 21.065256>,  <39.612694, 32.515564, 21.144587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325581, 32.782532, 21.065256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102609, -0.383132, -0.917977,
		-0.688664, -0.638559, 0.343490,
		-0.717784, 0.667422, -0.198327,
		39.110245, 32.982758, 21.005758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011982, 32.071709, 20.804525>,  <39.612694, 32.515564, 21.144587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011982, 32.071709, 20.804525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958614, 32.455894, 20.706781>,  <38.926594, 32.686405, 20.648136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958614, 32.455894, 20.706781>,  <39.011982, 32.071709, 20.804525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958614, 32.455894, 20.706781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244259, -0.270826, -0.931124,
		-0.960488, -0.064546, 0.270735,
		-0.133422, 0.960462, -0.244359,
		38.918587, 32.744034, 20.633474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547310, 32.126671, 20.324139>,  <39.011982, 32.071709, 20.804525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547310, 32.126671, 20.324139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687775, 32.495579, 20.259510>,  <38.772053, 32.716923, 20.220734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687775, 32.495579, 20.259510>,  <38.547310, 32.126671, 20.324139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687775, 32.495579, 20.259510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039717, -0.187076, -0.981542,
		-0.935470, 0.338268, -0.102325,
		0.351167, 0.922267, -0.161569,
		38.793125, 32.772259, 20.211039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146774, 32.391724, 19.820501>,  <38.547310, 32.126671, 20.324139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146774, 32.391724, 19.820501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493408, 32.591286, 19.816013>,  <38.701389, 32.711021, 19.813320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493408, 32.591286, 19.816013>,  <38.146774, 32.391724, 19.820501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493408, 32.591286, 19.816013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145306, -0.273776, -0.950754,
		-0.477403, 0.822280, -0.309744,
		0.866586, 0.498901, -0.011219,
		38.753384, 32.740955, 19.812647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165344, 32.927994, 19.332260>,  <38.146774, 32.391724, 19.820501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165344, 32.927994, 19.332260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555588, 32.862423, 19.390661>,  <38.789734, 32.823078, 19.425703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555588, 32.862423, 19.390661>,  <38.165344, 32.927994, 19.332260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555588, 32.862423, 19.390661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121494, -0.150741, -0.981079,
		0.182838, 0.974886, -0.127147,
		0.975607, -0.163931, 0.146004,
		38.848270, 32.813244, 19.434462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413086, 33.285210, 18.774763>,  <38.165344, 32.927994, 19.332260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413086, 33.285210, 18.774763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722145, 33.057713, 18.887583>,  <38.907581, 32.921215, 18.955275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722145, 33.057713, 18.887583>,  <38.413086, 33.285210, 18.774763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722145, 33.057713, 18.887583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126783, -0.297096, -0.946393,
		0.622050, 0.766985, -0.157443,
		0.772645, -0.568742, 0.282049,
		38.953938, 32.887089, 18.972197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898357, 33.477268, 18.380156>,  <38.413086, 33.285210, 18.774763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898357, 33.477268, 18.380156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015358, 33.113659, 18.498898>,  <39.085560, 32.895493, 18.570143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015358, 33.113659, 18.498898>,  <38.898357, 33.477268, 18.380156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015358, 33.113659, 18.498898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199957, -0.245427, -0.948569,
		0.935126, 0.336815, 0.109978,
		0.292500, -0.909022, 0.296854,
		39.103107, 32.840954, 18.587954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517620, 33.309010, 18.077312>,  <38.898357, 33.477268, 18.380156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517620, 33.309010, 18.077312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391129, 32.938622, 18.159847>,  <39.315235, 32.716389, 18.209368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391129, 32.938622, 18.159847>,  <39.517620, 33.309010, 18.077312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391129, 32.938622, 18.159847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208851, -0.280113, -0.936973,
		0.925408, -0.253203, 0.281970,
		-0.316228, -0.925972, 0.206337,
		39.296261, 32.660831, 18.221748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046917, 32.824463, 17.807188>,  <39.517620, 33.309010, 18.077312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046917, 32.824463, 17.807188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717106, 32.600025, 17.836369>,  <39.519218, 32.465363, 17.853878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717106, 32.600025, 17.836369>,  <40.046917, 32.824463, 17.807188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717106, 32.600025, 17.836369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183862, -0.387633, -0.903291,
		0.535109, -0.731379, 0.422780,
		-0.824532, -0.561093, 0.072953,
		39.469746, 32.431698, 17.858253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261787, 32.243214, 17.692347>,  <40.046917, 32.824463, 17.807188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261787, 32.243214, 17.692347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867615, 32.201336, 17.638739>,  <39.631111, 32.176208, 17.606573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867615, 32.201336, 17.638739>,  <40.261787, 32.243214, 17.692347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867615, 32.201336, 17.638739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164918, -0.395867, -0.903378,
		0.041526, -0.912320, 0.407366,
		-0.985433, -0.104695, -0.134020,
		39.571983, 32.169926, 17.598532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079090, 31.517653, 17.393026>,  <40.261787, 32.243214, 17.692347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079090, 31.517653, 17.393026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773743, 31.761217, 17.306770>,  <39.590534, 31.907356, 17.255016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773743, 31.761217, 17.306770>,  <40.079090, 31.517653, 17.393026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773743, 31.761217, 17.306770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020307, -0.311043, -0.950179,
		-0.645647, -0.729713, 0.225075,
		-0.763366, 0.608910, -0.215642,
		39.544731, 31.943890, 17.242077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551121, 31.185995, 17.130344>,  <40.079090, 31.517653, 17.393026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551121, 31.185995, 17.130344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545013, 31.554398, 16.974644>,  <39.541348, 31.775438, 16.881224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545013, 31.554398, 16.974644>,  <39.551121, 31.185995, 17.130344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545013, 31.554398, 16.974644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096663, -0.386115, -0.917372,
		-0.995200, -0.051634, -0.083132,
		-0.015269, 0.921004, -0.389253,
		39.540432, 31.830698, 16.857868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165813, 31.271490, 16.499996>,  <39.551121, 31.185995, 17.130344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165813, 31.271490, 16.499996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.549660, 31.322790, 16.399843>,  <39.779968, 31.353571, 16.339752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.549660, 31.322790, 16.399843>,  <39.165813, 31.271490, 16.499996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549660, 31.322790, 16.399843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235918, 0.117927, 0.964591,
		0.153240, -0.984705, 0.082906,
		0.959614, 0.128255, -0.250381,
		39.837543, 31.361265, 16.324730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841919, 30.691204, 16.856997>,  <39.165813, 31.271490, 16.499996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841919, 30.691204, 16.856997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688286, 30.321951, 16.864054>,  <38.596107, 30.100399, 16.868288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688286, 30.321951, 16.864054>,  <38.841919, 30.691204, 16.856997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688286, 30.321951, 16.864054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533538, 0.237499, 0.811746,
		-0.753538, 0.302363, -0.583744,
		-0.384081, -0.923131, 0.017642,
		38.573063, 30.045012, 16.869347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140793, 30.763702, 17.028326>,  <38.841919, 30.691204, 16.856997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140793, 30.763702, 17.028326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246181, 30.387329, 17.113398>,  <38.309414, 30.161505, 17.164440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246181, 30.387329, 17.113398>,  <38.140793, 30.763702, 17.028326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246181, 30.387329, 17.113398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425725, 0.084424, 0.900906,
		-0.865646, -0.327902, -0.378335,
		0.263468, -0.940932, 0.212677,
		38.325222, 30.105049, 17.177200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571404, 30.505585, 17.302038>,  <38.140793, 30.763702, 17.028326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571404, 30.505585, 17.302038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861263, 30.250362, 17.406170>,  <38.035179, 30.097229, 17.468649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861263, 30.250362, 17.406170>,  <37.571404, 30.505585, 17.302038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861263, 30.250362, 17.406170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352799, -0.018988, 0.935506,
		-0.591962, -0.769756, -0.238865,
		0.724647, -0.638056, 0.260329,
		38.078659, 30.058947, 17.484268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256142, 29.869465, 17.676689>,  <37.571404, 30.505585, 17.302038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256142, 29.869465, 17.676689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645416, 29.880657, 17.768009>,  <37.878983, 29.887373, 17.822802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645416, 29.880657, 17.768009>,  <37.256142, 29.869465, 17.676689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645416, 29.880657, 17.768009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226665, -0.052014, 0.972583,
		0.039090, -0.998254, -0.044277,
		0.973188, 0.027982, 0.228302,
		37.937374, 29.889051, 17.836500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457321, 29.287584, 18.113586>,  <37.256142, 29.869465, 17.676689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457321, 29.287584, 18.113586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749237, 29.553802, 18.176136>,  <37.924389, 29.713533, 18.213667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749237, 29.553802, 18.176136>,  <37.457321, 29.287584, 18.113586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749237, 29.553802, 18.176136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032176, -0.195041, 0.980267,
		0.682911, -0.720424, -0.120925,
		0.729793, 0.665544, 0.156376,
		37.968174, 29.753466, 18.223049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866425, 29.030369, 18.581657>,  <37.457321, 29.287584, 18.113586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866425, 29.030369, 18.581657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974430, 29.411062, 18.640026>,  <38.039234, 29.639479, 18.675047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974430, 29.411062, 18.640026>,  <37.866425, 29.030369, 18.581657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974430, 29.411062, 18.640026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205252, -0.204962, 0.957007,
		0.940726, -0.228450, -0.250687,
		0.270010, 0.951736, 0.145923,
		38.055431, 29.696583, 18.683804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459805, 28.943060, 19.019163>,  <37.866425, 29.030369, 18.581657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459805, 28.943060, 19.019163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310890, 29.310926, 19.069151>,  <38.221542, 29.531647, 19.099144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310890, 29.310926, 19.069151>,  <38.459805, 28.943060, 19.019163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310890, 29.310926, 19.069151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072637, -0.163108, 0.983931,
		0.925272, 0.357225, 0.127524,
		-0.372284, 0.919667, 0.124971,
		38.199203, 29.586826, 19.106642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890659, 29.225754, 19.622309>,  <38.459805, 28.943060, 19.019163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890659, 29.225754, 19.622309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566078, 29.459248, 19.610941>,  <38.371330, 29.599344, 19.604120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566078, 29.459248, 19.610941>,  <38.890659, 29.225754, 19.622309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566078, 29.459248, 19.610941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033917, 0.001512, 0.999424,
		0.583439, 0.811945, 0.018572,
		-0.811449, 0.583733, -0.028421,
		38.322643, 29.634367, 19.602415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057045, 29.712570, 20.083885>,  <38.890659, 29.225754, 19.622309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057045, 29.712570, 20.083885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660397, 29.758913, 20.061043>,  <38.422405, 29.786718, 20.047337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660397, 29.758913, 20.061043>,  <39.057045, 29.712570, 20.083885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660397, 29.758913, 20.061043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019790, 0.300614, 0.953540,
		0.127643, 0.946683, -0.295803,
		-0.991623, 0.115859, -0.057106,
		38.362911, 29.793671, 20.043911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957298, 30.343739, 20.257717>,  <39.057045, 29.712570, 20.083885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957298, 30.343739, 20.257717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592007, 30.186312, 20.299908>,  <38.372833, 30.091856, 20.325222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592007, 30.186312, 20.299908>,  <38.957298, 30.343739, 20.257717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592007, 30.186312, 20.299908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114881, 0.497067, 0.860074,
		-0.390925, 0.773324, -0.499147,
		-0.913225, -0.393567, 0.105476,
		38.318039, 30.068241, 20.331551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442791, 30.872679, 20.344126>,  <38.957298, 30.343739, 20.257717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442791, 30.872679, 20.344126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286133, 30.547331, 20.516195>,  <38.192139, 30.352123, 20.619436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286133, 30.547331, 20.516195>,  <38.442791, 30.872679, 20.344126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286133, 30.547331, 20.516195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140250, 0.514827, 0.845744,
		-0.909366, 0.270897, -0.315703,
		-0.391642, -0.813368, 0.430173,
		38.168640, 30.303320, 20.645247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044727, 31.175779, 20.885151>,  <38.442791, 30.872679, 20.344126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044727, 31.175779, 20.885151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033829, 30.786575, 20.976814>,  <38.027290, 30.553053, 21.031813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033829, 30.786575, 20.976814>,  <38.044727, 31.175779, 20.885151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033829, 30.786575, 20.976814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007355, 0.229042, 0.973389,
		-0.999602, 0.028210, 0.000915,
		-0.027250, -0.973008, 0.229158,
		38.025654, 30.494673, 21.045561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398209, 31.052835, 21.260704>,  <38.044727, 31.175779, 20.885151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398209, 31.052835, 21.260704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659359, 30.766670, 21.360250>,  <37.816048, 30.594971, 21.419979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659359, 30.766670, 21.360250>,  <37.398209, 31.052835, 21.260704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659359, 30.766670, 21.360250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049756, 0.368348, 0.928356,
		-0.755829, -0.593718, 0.276082,
		0.652875, -0.715415, 0.248867,
		37.855221, 30.552046, 21.434910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142174, 30.823431, 21.918007>,  <37.398209, 31.052835, 21.260704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142174, 30.823431, 21.918007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509544, 30.665447, 21.909092>,  <37.729965, 30.570656, 21.903742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509544, 30.665447, 21.909092>,  <37.142174, 30.823431, 21.918007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509544, 30.665447, 21.909092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085239, 0.142560, 0.986109,
		-0.386298, -0.907569, 0.164597,
		0.918427, -0.394962, -0.022289,
		37.785072, 30.546959, 21.902405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534100, 30.388933, 22.008551>,  <37.142174, 30.823431, 21.918007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534100, 30.388933, 22.008551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153099, 30.423691, 22.125299>,  <35.924500, 30.444546, 22.195349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153099, 30.423691, 22.125299>,  <36.534100, 30.388933, 22.008551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153099, 30.423691, 22.125299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295122, -0.499766, -0.814332,
		0.075107, -0.861791, 0.501672,
		-0.952503, 0.086892, 0.291870,
		35.867348, 30.449759, 22.212860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274288, 29.784168, 21.869736>,  <36.534100, 30.388933, 22.008551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274288, 29.784168, 21.869736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952038, 30.020317, 21.889450>,  <35.758690, 30.162006, 21.901279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952038, 30.020317, 21.889450>,  <36.274288, 29.784168, 21.869736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952038, 30.020317, 21.889450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372656, -0.440332, -0.816845,
		-0.460547, -0.676432, 0.574749,
		-0.805620, 0.590379, 0.049283,
		35.710350, 30.197430, 21.904236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667053, 29.356226, 21.684196>,  <36.274288, 29.784168, 21.869736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667053, 29.356226, 21.684196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595444, 29.747034, 21.637924>,  <35.552479, 29.981520, 21.610161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595444, 29.747034, 21.637924>,  <35.667053, 29.356226, 21.684196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595444, 29.747034, 21.637924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211009, -0.152973, -0.965440,
		-0.960950, -0.148429, 0.233546,
		-0.179025, 0.977020, -0.115679,
		35.541737, 30.040140, 21.603220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127125, 29.376476, 21.153906>,  <35.667053, 29.356226, 21.684196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127125, 29.376476, 21.153906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256813, 29.754532, 21.137932>,  <35.334625, 29.981365, 21.128347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256813, 29.754532, 21.137932>,  <35.127125, 29.376476, 21.153906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256813, 29.754532, 21.137932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357787, 0.083438, -0.930068,
		-0.875711, 0.315834, 0.365211,
		0.324220, 0.945138, -0.039934,
		35.354080, 30.038073, 21.125952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469532, 29.748224, 20.853390>,  <35.127125, 29.376476, 21.153906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469532, 29.748224, 20.853390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798470, 29.974524, 20.829144>,  <34.995834, 30.110304, 20.814596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798470, 29.974524, 20.829144>,  <34.469532, 29.748224, 20.853390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798470, 29.974524, 20.829144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189086, 0.171248, -0.966913,
		-0.536649, 0.806599, 0.247800,
		0.822347, 0.565748, -0.060616,
		35.045174, 30.144249, 20.810959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233456, 30.229235, 20.479525>,  <34.469532, 29.748224, 20.853390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233456, 30.229235, 20.479525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629898, 30.221436, 20.426868>,  <34.867764, 30.216757, 20.395275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629898, 30.221436, 20.426868>,  <34.233456, 30.229235, 20.479525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629898, 30.221436, 20.426868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131394, 0.013385, -0.991240,
		0.021088, 0.999720, 0.010705,
		0.991106, -0.019496, -0.131640,
		34.927231, 30.215586, 20.387377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360069, 30.724493, 19.850824>,  <34.233456, 30.229235, 20.479525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360069, 30.724493, 19.850824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709347, 30.540596, 19.915527>,  <34.918915, 30.430258, 19.954350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709347, 30.540596, 19.915527>,  <34.360069, 30.724493, 19.850824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709347, 30.540596, 19.915527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176149, -0.011753, -0.984293,
		0.454423, 0.887974, 0.070720,
		0.873196, -0.459743, 0.161757,
		34.971306, 30.402674, 19.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338902, 31.464615, 19.713451>,  <34.360069, 30.724493, 19.850824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338902, 31.464615, 19.713451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944500, 31.505482, 19.660749>,  <33.707859, 31.530003, 19.629128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944500, 31.505482, 19.660749>,  <34.338902, 31.464615, 19.713451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944500, 31.505482, 19.660749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140848, -0.087552, 0.986152,
		0.089218, 0.990907, 0.100717,
		-0.986003, 0.102168, -0.131756,
		33.648701, 31.536133, 19.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158066, 31.746542, 20.279125>,  <34.338902, 31.464615, 19.713451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158066, 31.746542, 20.279125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792229, 31.633768, 20.163170>,  <33.572727, 31.566103, 20.093596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792229, 31.633768, 20.163170>,  <34.158066, 31.746542, 20.279125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792229, 31.633768, 20.163170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257063, -0.148030, 0.954990,
		-0.312158, 0.947945, 0.062912,
		-0.914591, -0.281935, -0.289890,
		33.517853, 31.549187, 20.076202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782433, 32.079163, 20.728121>,  <34.158066, 31.746542, 20.279125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782433, 32.079163, 20.728121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534214, 31.798929, 20.587208>,  <33.385284, 31.630789, 20.502661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534214, 31.798929, 20.587208>,  <33.782433, 32.079163, 20.728121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534214, 31.798929, 20.587208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405071, -0.098280, 0.908987,
		-0.671448, 0.706766, -0.222801,
		-0.620544, -0.700588, -0.352280,
		33.348049, 31.588753, 20.481524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025269, 32.208641, 21.002413>,  <33.782433, 32.079163, 20.728121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025269, 32.208641, 21.002413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079952, 31.821507, 20.917934>,  <33.112762, 31.589226, 20.867247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.079952, 31.821507, 20.917934>,  <33.025269, 32.208641, 21.002413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079952, 31.821507, 20.917934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403563, -0.249115, 0.880385,
		-0.904681, -0.035122, -0.424639,
		0.136705, -0.967837, -0.211196,
		33.120964, 31.531155, 20.854576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416462, 31.968418, 21.355158>,  <33.025269, 32.208641, 21.002413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416462, 31.968418, 21.355158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659691, 31.661942, 21.272022>,  <32.805626, 31.478056, 21.222141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659691, 31.661942, 21.272022>,  <32.416462, 31.968418, 21.355158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659691, 31.661942, 21.272022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149771, -0.367818, 0.917758,
		-0.779627, -0.526933, -0.338413,
		0.608070, -0.766193, -0.207841,
		32.842113, 31.432083, 21.209669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034836, 31.450788, 21.663031>,  <32.416462, 31.968418, 21.355158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034836, 31.450788, 21.663031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410648, 31.326170, 21.606144>,  <32.636135, 31.251400, 21.572012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410648, 31.326170, 21.606144>,  <32.034836, 31.450788, 21.663031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410648, 31.326170, 21.606144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049706, -0.534919, 0.843440,
		-0.338844, -0.785367, -0.518057,
		0.939529, -0.311545, -0.142217,
		32.692509, 31.232706, 21.563478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115902, 30.743620, 21.879396>,  <32.034836, 31.450788, 21.663031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115902, 30.743620, 21.879396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502254, 30.845404, 21.898653>,  <32.734066, 30.906473, 21.910208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502254, 30.845404, 21.898653>,  <32.115902, 30.743620, 21.879396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502254, 30.845404, 21.898653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026282, -0.281249, 0.959275,
		0.257636, -0.925283, -0.278342,
		0.965885, 0.254459, 0.048141,
		32.792019, 30.921741, 21.913095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.025948, 34.443108, 16.655552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247551, 34.156059, 16.824356>,  <37.380512, 33.983829, 16.925638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247551, 34.156059, 16.824356>,  <37.025948, 34.443108, 16.655552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247551, 34.156059, 16.824356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123960, 0.430154, 0.894204,
		-0.823231, -0.547709, 0.149352,
		0.554009, -0.717623, 0.422010,
		37.413754, 33.940773, 16.950958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581173, 34.141605, 17.251429>,  <37.025948, 34.443108, 16.655552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581173, 34.141605, 17.251429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963490, 34.050377, 17.325670>,  <37.192879, 33.995640, 17.370216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963490, 34.050377, 17.325670>,  <36.581173, 34.141605, 17.251429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963490, 34.050377, 17.325670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120950, 0.270411, 0.955117,
		-0.268024, -0.935340, 0.230871,
		0.955790, -0.228070, 0.185606,
		37.250225, 33.981956, 17.381351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549545, 33.819706, 17.876154>,  <36.581173, 34.141605, 17.251429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549545, 33.819706, 17.876154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935345, 33.918919, 17.839878>,  <37.166824, 33.978447, 17.818113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.935345, 33.918919, 17.839878>,  <36.549545, 33.819706, 17.876154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935345, 33.918919, 17.839878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031029, 0.234589, 0.971599,
		0.262267, -0.939918, 0.218564,
		0.964496, 0.248037, -0.090690,
		37.224693, 33.993328, 17.812672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783115, 33.630482, 18.410349>,  <36.549545, 33.819706, 17.876154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783115, 33.630482, 18.410349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075191, 33.878395, 18.295324>,  <37.250435, 34.027145, 18.226311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075191, 33.878395, 18.295324>,  <36.783115, 33.630482, 18.410349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075191, 33.878395, 18.295324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181746, 0.229517, 0.956185,
		0.658632, -0.750457, 0.054946,
		0.730187, 0.619788, -0.287560,
		37.294247, 34.064331, 18.209057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319134, 33.551430, 18.938963>,  <36.783115, 33.630482, 18.410349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319134, 33.551430, 18.938963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.384983, 33.896656, 18.747961>,  <37.424492, 34.103794, 18.633360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.384983, 33.896656, 18.747961>,  <37.319134, 33.551430, 18.938963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384983, 33.896656, 18.747961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151949, 0.456140, 0.876840,
		0.974582, -0.216908, -0.056049,
		0.164627, 0.863068, -0.477505,
		37.434372, 34.155575, 18.604710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714657, 33.850300, 19.417664>,  <37.319134, 33.551430, 18.938963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714657, 33.850300, 19.417664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614208, 34.147812, 19.169878>,  <37.553940, 34.326317, 19.021208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.614208, 34.147812, 19.169878>,  <37.714657, 33.850300, 19.417664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614208, 34.147812, 19.169878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038114, 0.647072, 0.761476,
		0.967204, 0.167614, -0.190843,
		-0.251123, 0.743777, -0.619462,
		37.538872, 34.370945, 18.984039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294727, 34.332531, 19.520752>,  <37.714657, 33.850300, 19.417664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294727, 34.332531, 19.520752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.946568, 34.461769, 19.372147>,  <37.737671, 34.539310, 19.282984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.946568, 34.461769, 19.372147>,  <38.294727, 34.332531, 19.520752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946568, 34.461769, 19.372147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016682, 0.734779, 0.678102,
		0.492069, 0.596415, -0.634159,
		-0.870396, 0.323094, -0.371511,
		37.685448, 34.558697, 19.260693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359169, 35.046333, 19.546707>,  <38.294727, 34.332531, 19.520752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359169, 35.046333, 19.546707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963200, 34.992111, 19.530354>,  <37.725616, 34.959579, 19.520542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.963200, 34.992111, 19.530354>,  <38.359169, 35.046333, 19.546707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963200, 34.992111, 19.530354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128266, 0.736332, 0.664352,
		-0.059952, 0.662903, -0.746301,
		-0.989926, -0.135554, -0.040884,
		37.666222, 34.951447, 19.518089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045296, 35.690426, 19.486168>,  <38.359169, 35.046333, 19.546707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045296, 35.690426, 19.486168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.737713, 35.461369, 19.599857>,  <37.553162, 35.323936, 19.668072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.737713, 35.461369, 19.599857>,  <38.045296, 35.690426, 19.486168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737713, 35.461369, 19.599857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245000, 0.674610, 0.696330,
		-0.590486, 0.465817, -0.659046,
		-0.768961, -0.572639, 0.284223,
		37.507023, 35.289577, 19.685123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562687, 36.151218, 19.484047>,  <38.045296, 35.690426, 19.486168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562687, 36.151218, 19.484047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448639, 35.837593, 19.704573>,  <37.380211, 35.649418, 19.836887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.448639, 35.837593, 19.704573>,  <37.562687, 36.151218, 19.484047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448639, 35.837593, 19.704573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131574, 0.601759, 0.787766,
		-0.949419, 0.152068, -0.274735,
		-0.285118, -0.784068, 0.551313,
		37.363102, 35.602371, 19.869967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050907, 36.363106, 19.877312>,  <37.562687, 36.151218, 19.484047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050907, 36.363106, 19.877312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199974, 36.064449, 20.097725>,  <37.289413, 35.885254, 20.229973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199974, 36.064449, 20.097725>,  <37.050907, 36.363106, 19.877312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199974, 36.064449, 20.097725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271446, 0.480124, 0.834145,
		-0.887375, -0.460437, -0.023746,
		0.372670, -0.746645, 0.551034,
		37.311775, 35.840454, 20.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662128, 36.332718, 20.531910>,  <37.050907, 36.363106, 19.877312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662128, 36.332718, 20.531910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.972950, 36.100197, 20.628471>,  <37.159443, 35.960686, 20.686409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.972950, 36.100197, 20.628471>,  <36.662128, 36.332718, 20.531910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972950, 36.100197, 20.628471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085731, 0.282208, 0.955515,
		-0.623571, -0.763180, 0.169455,
		0.777052, -0.581304, 0.241405,
		37.206066, 35.925804, 20.700893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039852, 35.913258, 20.549892>,  <36.662128, 36.332718, 20.531910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039852, 35.913258, 20.549892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.691498, 36.104557, 20.504580>,  <35.482483, 36.219337, 20.477392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.691498, 36.104557, 20.504580>,  <36.039852, 35.913258, 20.549892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691498, 36.104557, 20.504580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002975, -0.235621, -0.971841,
		-0.491471, -0.846028, 0.206622,
		-0.870889, 0.478247, -0.113284,
		35.430229, 36.248032, 20.470594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820805, 35.516766, 20.031004>,  <36.039852, 35.913258, 20.549892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820805, 35.516766, 20.031004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562714, 35.821060, 20.002806>,  <35.407860, 36.003635, 19.985888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562714, 35.821060, 20.002806>,  <35.820805, 35.516766, 20.031004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562714, 35.821060, 20.002806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122768, -0.194312, -0.973227,
		-0.754064, -0.619296, 0.218769,
		-0.645225, 0.760733, -0.070493,
		35.369144, 36.049278, 19.981657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319397, 35.232399, 19.644300>,  <35.820805, 35.516766, 20.031004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319397, 35.232399, 19.644300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.242359, 35.623234, 19.608063>,  <35.196136, 35.857735, 19.586321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.242359, 35.623234, 19.608063>,  <35.319397, 35.232399, 19.644300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242359, 35.623234, 19.608063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433891, -0.167600, -0.885239,
		-0.880140, -0.131183, 0.456228,
		-0.192592, 0.977088, -0.090592,
		35.184582, 35.916359, 19.580885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628136, 35.289265, 19.621851>,  <35.319397, 35.232399, 19.644300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628136, 35.289265, 19.621851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778046, 35.608810, 19.433657>,  <34.867992, 35.800537, 19.320740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778046, 35.608810, 19.433657>,  <34.628136, 35.289265, 19.621851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778046, 35.608810, 19.433657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585064, -0.189878, -0.788446,
		-0.719198, 0.570752, 0.396227,
		0.374772, 0.798867, -0.470486,
		34.890476, 35.848469, 19.292511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116592, 35.483658, 19.179970>,  <34.628136, 35.289265, 19.621851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116592, 35.483658, 19.179970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.426739, 35.691544, 19.036469>,  <34.612827, 35.816277, 18.950369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.426739, 35.691544, 19.036469>,  <34.116592, 35.483658, 19.179970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426739, 35.691544, 19.036469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477110, 0.109915, -0.871943,
		-0.413730, 0.847239, 0.333186,
		0.775367, 0.519715, -0.358751,
		34.659348, 35.847458, 18.928843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871986, 36.057983, 18.795837>,  <34.116592, 35.483658, 19.179970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871986, 36.057983, 18.795837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240044, 35.991474, 18.654030>,  <34.460880, 35.951569, 18.568945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240044, 35.991474, 18.654030>,  <33.871986, 36.057983, 18.795837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240044, 35.991474, 18.654030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347675, 0.069594, -0.935029,
		0.180139, 0.983621, 0.006229,
		0.920148, -0.166269, -0.354518,
		34.516087, 35.941593, 18.547674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926891, 36.433968, 18.122322>,  <33.871986, 36.057983, 18.795837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926891, 36.433968, 18.122322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217785, 36.159939, 18.105318>,  <34.392323, 35.995522, 18.095116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217785, 36.159939, 18.105318>,  <33.926891, 36.433968, 18.122322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217785, 36.159939, 18.105318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238026, -0.193616, -0.951765,
		0.643796, 0.702276, -0.303869,
		0.727235, -0.685071, -0.042511,
		34.435955, 35.954418, 18.092566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221951, 36.520542, 17.456030>,  <33.926891, 36.433968, 18.122322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221951, 36.520542, 17.456030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322372, 36.151215, 17.572269>,  <34.382626, 35.929619, 17.642014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322372, 36.151215, 17.572269>,  <34.221951, 36.520542, 17.456030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322372, 36.151215, 17.572269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236807, -0.349675, -0.906449,
		0.938560, 0.158750, -0.306436,
		0.251052, -0.923324, 0.290598,
		34.397690, 35.874218, 17.659449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423225, 36.172947, 16.869762>,  <34.221951, 36.520542, 17.456030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423225, 36.172947, 16.869762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.410854, 35.841217, 17.092930>,  <34.403431, 35.642181, 17.226830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.410854, 35.841217, 17.092930>,  <34.423225, 36.172947, 16.869762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410854, 35.841217, 17.092930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447237, -0.487705, -0.749748,
		0.893880, -0.272711, -0.355818,
		-0.030930, -0.829320, 0.557917,
		34.401577, 35.592422, 17.260305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837330, 35.720039, 16.513979>,  <34.423225, 36.172947, 16.869762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837330, 35.720039, 16.513979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575382, 35.531670, 16.750410>,  <34.418213, 35.418648, 16.892269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575382, 35.531670, 16.750410>,  <34.837330, 35.720039, 16.513979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575382, 35.531670, 16.750410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291956, -0.563754, -0.772621,
		0.697071, -0.678535, 0.231696,
		-0.654870, -0.470926, 0.591078,
		34.378922, 35.390392, 16.927734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833454, 35.057426, 16.332764>,  <34.837330, 35.720039, 16.513979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833454, 35.057426, 16.332764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490345, 35.065674, 16.538208>,  <34.284477, 35.070621, 16.661474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490345, 35.065674, 16.538208>,  <34.833454, 35.057426, 16.332764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490345, 35.065674, 16.538208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485622, -0.360033, -0.796585,
		0.168496, -0.932712, 0.318839,
		-0.857776, 0.020614, 0.513610,
		34.233013, 35.071857, 16.692291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538837, 34.361473, 16.259777>,  <34.833454, 35.057426, 16.332764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538837, 34.361473, 16.259777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.224972, 34.584320, 16.368536>,  <34.036652, 34.718029, 16.433792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.224972, 34.584320, 16.368536>,  <34.538837, 34.361473, 16.259777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224972, 34.584320, 16.368536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573473, -0.485739, -0.659686,
		-0.235449, -0.673558, 0.700631,
		-0.784661, 0.557115, 0.271900,
		33.989574, 34.751453, 16.450106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113289, 33.893330, 16.475500>,  <34.538837, 34.361473, 16.259777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113289, 33.893330, 16.475500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923218, 34.222645, 16.351301>,  <33.809174, 34.420235, 16.276781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923218, 34.222645, 16.351301>,  <34.113289, 33.893330, 16.475500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923218, 34.222645, 16.351301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472730, -0.536499, -0.699068,
		-0.742114, -0.185399, 0.644123,
		-0.475177, 0.823284, -0.310500,
		33.780663, 34.469631, 16.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720577, 33.260811, 16.484886>,  <34.113289, 33.893330, 16.475500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720577, 33.260811, 16.484886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593456, 32.890079, 16.404898>,  <33.517185, 32.667641, 16.356905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.593456, 32.890079, 16.404898>,  <33.720577, 33.260811, 16.484886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593456, 32.890079, 16.404898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054591, -0.192670, 0.979744,
		-0.946584, 0.322282, 0.010635,
		-0.317803, -0.926829, -0.199972,
		33.498116, 32.612030, 16.344906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166870, 33.214439, 17.078972>,  <33.720577, 33.260811, 16.484886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166870, 33.214439, 17.078972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.290276, 32.852909, 16.960365>,  <33.364319, 32.635990, 16.889202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.290276, 32.852909, 16.960365>,  <33.166870, 33.214439, 17.078972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290276, 32.852909, 16.960365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045974, -0.325527, 0.944414,
		-0.950109, -0.277731, -0.141982,
		0.308512, -0.903824, -0.296517,
		33.382828, 32.581760, 16.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666756, 32.767128, 17.375326>,  <33.166870, 33.214439, 17.078972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666756, 32.767128, 17.375326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.991398, 32.553070, 17.281584>,  <33.186184, 32.424637, 17.225338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.991398, 32.553070, 17.281584>,  <32.666756, 32.767128, 17.375326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991398, 32.553070, 17.281584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084041, -0.503925, 0.859649,
		-0.578133, -0.677998, -0.453961,
		0.811603, -0.535143, -0.234356,
		33.234879, 32.392529, 17.211277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505798, 32.071484, 17.496181>,  <32.666756, 32.767128, 17.375326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505798, 32.071484, 17.496181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.904381, 32.074993, 17.529627>,  <33.143532, 32.077099, 17.549694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.904381, 32.074993, 17.529627>,  <32.505798, 32.071484, 17.496181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904381, 32.074993, 17.529627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075556, -0.342779, 0.936373,
		0.036876, -0.939375, -0.340902,
		0.996460, 0.008772, 0.083616,
		33.203320, 32.077625, 17.554712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692921, 31.384651, 17.877712>,  <32.505798, 32.071484, 17.496181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692921, 31.384651, 17.877712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.991600, 31.643421, 17.939581>,  <33.170807, 31.798683, 17.976702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.991600, 31.643421, 17.939581>,  <32.692921, 31.384651, 17.877712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991600, 31.643421, 17.939581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024677, -0.259313, 0.965478,
		0.664701, -0.717108, -0.209594,
		0.746702, 0.646926, 0.154670,
		33.215611, 31.837500, 17.985981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230446, 30.951260, 18.132168>,  <32.692921, 31.384651, 17.877712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230446, 30.951260, 18.132168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331150, 31.321705, 18.244543>,  <33.391575, 31.543972, 18.311968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331150, 31.321705, 18.244543>,  <33.230446, 30.951260, 18.132168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331150, 31.321705, 18.244543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014555, -0.286635, 0.957929,
		0.967679, -0.245262, -0.058685,
		0.251764, 0.926114, 0.280940,
		33.406681, 31.599539, 18.328825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754997, 30.857441, 18.584503>,  <33.230446, 30.951260, 18.132168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754997, 30.857441, 18.584503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.631790, 31.232574, 18.648491>,  <33.557865, 31.457655, 18.686884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.631790, 31.232574, 18.648491>,  <33.754997, 30.857441, 18.584503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631790, 31.232574, 18.648491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086275, -0.139918, 0.986397,
		0.947461, 0.317628, -0.037815,
		-0.308016, 0.937835, 0.159970,
		33.539387, 31.513926, 18.696482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235344, 31.082890, 19.093855>,  <33.754997, 30.857441, 18.584503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235344, 31.082890, 19.093855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.922268, 31.330872, 19.115976>,  <33.734425, 31.479660, 19.129250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.922268, 31.330872, 19.115976>,  <34.235344, 31.082890, 19.093855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922268, 31.330872, 19.115976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004307, -0.083454, 0.996502,
		0.622400, 0.780188, 0.062648,
		-0.782687, 0.619953, 0.055302,
		33.687462, 31.516857, 19.132566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971031, 31.062059, 19.353394>,  <34.235344, 31.082890, 19.093855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971031, 31.062059, 19.353394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.078926, 30.689711, 19.451962>,  <35.143661, 30.466301, 19.511103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.078926, 30.689711, 19.451962>,  <34.971031, 31.062059, 19.353394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078926, 30.689711, 19.451962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293632, -0.164204, -0.941710,
		0.917073, 0.326367, 0.229043,
		0.269734, -0.930871, 0.246419,
		35.159847, 30.410450, 19.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663998, 30.910545, 19.040798>,  <34.971031, 31.062059, 19.353394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663998, 30.910545, 19.040798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.520538, 30.541964, 19.100519>,  <35.434464, 30.320814, 19.136353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.520538, 30.541964, 19.100519>,  <35.663998, 30.910545, 19.040798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520538, 30.541964, 19.100519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382586, -0.290993, -0.876898,
		0.851469, -0.257376, 0.456900,
		-0.358647, -0.921456, 0.149303,
		35.412945, 30.265528, 19.145309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155361, 30.506796, 18.998066>,  <35.663998, 30.910545, 19.040798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155361, 30.506796, 18.998066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.847443, 30.264318, 18.918129>,  <35.662689, 30.118832, 18.870167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.847443, 30.264318, 18.918129>,  <36.155361, 30.506796, 18.998066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847443, 30.264318, 18.918129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445752, -0.286472, -0.848079,
		0.456850, -0.741932, 0.490739,
		-0.769800, -0.606193, -0.199843,
		35.616501, 30.082460, 18.858175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486233, 29.978437, 18.621746>,  <36.155361, 30.506796, 18.998066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486233, 29.978437, 18.621746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102001, 29.880911, 18.568327>,  <35.871460, 29.822395, 18.536276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102001, 29.880911, 18.568327>,  <36.486233, 29.978437, 18.621746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102001, 29.880911, 18.568327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224333, -0.396141, -0.890363,
		0.164181, -0.885227, 0.435222,
		-0.960583, -0.243816, -0.133547,
		35.813828, 29.807766, 18.528263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390099, 29.253572, 18.492590>,  <36.486233, 29.978437, 18.621746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390099, 29.253572, 18.492590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051022, 29.387016, 18.327604>,  <35.847576, 29.467083, 18.228613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051022, 29.387016, 18.327604>,  <36.390099, 29.253572, 18.492590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051022, 29.387016, 18.327604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244416, -0.444458, -0.861811,
		-0.470835, -0.831360, 0.295221,
		-0.847688, 0.333614, -0.412464,
		35.796715, 29.487099, 18.203865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106674, 28.659317, 18.076199>,  <36.390099, 29.253572, 18.492590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106674, 28.659317, 18.076199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941456, 28.998196, 17.942541>,  <35.842323, 29.201523, 17.862347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.941456, 28.998196, 17.942541>,  <36.106674, 28.659317, 18.076199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941456, 28.998196, 17.942541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266603, -0.238351, -0.933870,
		-0.870814, -0.474814, -0.127415,
		-0.413045, 0.847196, -0.334146,
		35.817543, 29.252354, 17.842297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698242, 28.471125, 17.455580>,  <36.106674, 28.659317, 18.076199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698242, 28.471125, 17.455580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748299, 28.866804, 17.425043>,  <35.778332, 29.104212, 17.406721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748299, 28.866804, 17.425043>,  <35.698242, 28.471125, 17.455580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748299, 28.866804, 17.425043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362307, -0.117193, -0.924662,
		-0.923620, 0.088053, -0.373059,
		0.125139, 0.989198, -0.076339,
		35.785839, 29.163563, 17.402142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261250, 28.617218, 16.888683>,  <35.698242, 28.471125, 17.455580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261250, 28.617218, 16.888683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533806, 28.907434, 16.927237>,  <35.697342, 29.081564, 16.950369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533806, 28.907434, 16.927237>,  <35.261250, 28.617218, 16.888683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533806, 28.907434, 16.927237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279890, -0.136624, -0.950261,
		-0.676286, 0.674479, -0.296167,
		0.681395, 0.725542, 0.096383,
		35.738224, 29.125097, 16.956152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156372, 28.990166, 16.254887>,  <35.261250, 28.617218, 16.888683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156372, 28.990166, 16.254887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521660, 29.071188, 16.396313>,  <35.740833, 29.119801, 16.481169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521660, 29.071188, 16.396313>,  <35.156372, 28.990166, 16.254887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521660, 29.071188, 16.396313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369896, -0.048123, -0.927826,
		-0.170919, 0.978088, -0.118870,
		0.913216, 0.202553, 0.353566,
		35.795624, 29.131954, 16.502382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.450756, 33.400349, 32.266594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793362, 33.542713, 32.117085>,  <35.998924, 33.628132, 32.027378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793362, 33.542713, 32.117085>,  <35.450756, 33.400349, 32.266594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793362, 33.542713, 32.117085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113607, -0.576425, -0.809214,
		-0.503461, 0.735568, -0.453284,
		0.856516, 0.355911, -0.373773,
		36.050316, 33.649487, 32.004951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240940, 33.755753, 31.643888>,  <35.450756, 33.400349, 32.266594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240940, 33.755753, 31.643888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627590, 33.654247, 31.629766>,  <35.859581, 33.593342, 31.621294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627590, 33.654247, 31.629766>,  <35.240940, 33.755753, 31.643888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627590, 33.654247, 31.629766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174556, -0.551409, -0.815769,
		0.187549, 0.794701, -0.577300,
		0.966621, -0.253767, -0.035304,
		35.917576, 33.578117, 31.619175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527134, 33.905304, 30.930162>,  <35.240940, 33.755753, 31.643888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527134, 33.905304, 30.930162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766655, 33.625198, 31.085627>,  <35.910370, 33.457134, 31.178905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766655, 33.625198, 31.085627>,  <35.527134, 33.905304, 30.930162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766655, 33.625198, 31.085627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068318, -0.438851, -0.895959,
		0.797974, 0.563059, -0.214946,
		0.598807, -0.700267, 0.388659,
		35.946297, 33.415119, 31.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061920, 33.943630, 30.488569>,  <35.527134, 33.905304, 30.930162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061920, 33.943630, 30.488569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084789, 33.585339, 30.664932>,  <36.098511, 33.370361, 30.770750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084789, 33.585339, 30.664932>,  <36.061920, 33.943630, 30.488569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084789, 33.585339, 30.664932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074208, -0.436593, -0.896593,
		0.995602, 0.083982, 0.041508,
		0.057176, -0.895731, 0.440905,
		36.101944, 33.316620, 30.797203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583775, 33.543205, 30.128071>,  <36.061920, 33.943630, 30.488569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583775, 33.543205, 30.128071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424618, 33.244106, 30.340693>,  <36.329124, 33.064648, 30.468266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424618, 33.244106, 30.340693>,  <36.583775, 33.543205, 30.128071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424618, 33.244106, 30.340693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310654, -0.654980, -0.688836,
		0.863235, -0.108955, 0.492904,
		-0.397895, -0.747750, 0.531554,
		36.305248, 33.019783, 30.500158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036263, 32.900009, 30.024464>,  <36.583775, 33.543205, 30.128071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036263, 32.900009, 30.024464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689804, 32.749561, 30.156115>,  <36.481930, 32.659290, 30.235106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689804, 32.749561, 30.156115>,  <37.036263, 32.900009, 30.024464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689804, 32.749561, 30.156115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050655, -0.721201, -0.690871,
		0.497218, -0.581723, 0.643718,
		-0.866145, -0.376121, 0.329127,
		36.429962, 32.636726, 30.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096931, 32.139988, 29.860680>,  <37.036263, 32.900009, 30.024464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096931, 32.139988, 29.860680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703083, 32.207943, 29.877008>,  <36.466774, 32.248718, 29.886806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703083, 32.207943, 29.877008>,  <37.096931, 32.139988, 29.860680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703083, 32.207943, 29.877008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150775, -0.708060, -0.689869,
		-0.088297, -0.685411, 0.722783,
		-0.984617, 0.169891, 0.040823,
		36.407700, 32.258911, 29.889256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805099, 31.452286, 29.753107>,  <37.096931, 32.139988, 29.860680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805099, 31.452286, 29.753107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518829, 31.716675, 29.662840>,  <36.347069, 31.875307, 29.608681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518829, 31.716675, 29.662840>,  <36.805099, 31.452286, 29.753107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518829, 31.716675, 29.662840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347074, -0.616954, -0.706334,
		-0.606084, -0.427190, 0.670948,
		-0.715683, 0.660966, -0.225659,
		36.304127, 31.914967, 29.595140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166794, 31.116764, 29.645956>,  <36.805099, 31.452286, 29.753107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166794, 31.116764, 29.645956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136143, 31.445847, 29.420645>,  <36.117752, 31.643295, 29.285458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136143, 31.445847, 29.420645>,  <36.166794, 31.116764, 29.645956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136143, 31.445847, 29.420645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347297, -0.551584, -0.758379,
		-0.934619, 0.137511, 0.327992,
		-0.076630, 0.822706, -0.563278,
		36.113155, 31.692657, 29.251661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654106, 30.880537, 29.186388>,  <36.166794, 31.116764, 29.645956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654106, 30.880537, 29.186388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746532, 31.233833, 29.023172>,  <35.801991, 31.445810, 28.925243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746532, 31.233833, 29.023172>,  <35.654106, 30.880537, 29.186388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746532, 31.233833, 29.023172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454190, -0.272963, -0.848058,
		-0.860418, 0.381288, 0.338085,
		0.231069, 0.883239, -0.408039,
		35.815853, 31.498806, 28.900761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012463, 31.106579, 28.829592>,  <35.654106, 30.880537, 29.186388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012463, 31.106579, 28.829592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304001, 31.306602, 28.642519>,  <35.478924, 31.426617, 28.530275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304001, 31.306602, 28.642519>,  <35.012463, 31.106579, 28.829592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304001, 31.306602, 28.642519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363233, -0.296616, -0.883222,
		-0.580386, 0.813608, -0.034548,
		0.728844, 0.500061, -0.467681,
		35.522655, 31.456621, 28.502214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691963, 31.556852, 28.286692>,  <35.012463, 31.106579, 28.829592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691963, 31.556852, 28.286692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073341, 31.469212, 28.203800>,  <35.302166, 31.416626, 28.154066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073341, 31.469212, 28.203800>,  <34.691963, 31.556852, 28.286692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073341, 31.469212, 28.203800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281938, -0.403651, -0.870389,
		0.107057, 0.888290, -0.446631,
		0.953441, -0.219103, -0.207229,
		35.359375, 31.403481, 28.141632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119141, 31.873930, 27.924131>,  <34.691963, 31.556852, 28.286692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119141, 31.873930, 27.924131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733002, 31.868093, 27.819904>,  <33.501320, 31.864592, 27.757368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733002, 31.868093, 27.819904>,  <34.119141, 31.873930, 27.924131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733002, 31.868093, 27.819904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217300, 0.597887, 0.771565,
		0.144534, 0.801448, -0.580337,
		-0.965345, -0.014590, -0.260569,
		33.443398, 31.863716, 27.741734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817734, 32.568932, 27.809576>,  <34.119141, 31.873930, 27.924131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817734, 32.568932, 27.809576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523911, 32.314980, 27.905371>,  <33.347618, 32.162609, 27.962847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523911, 32.314980, 27.905371>,  <33.817734, 32.568932, 27.809576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523911, 32.314980, 27.905371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274120, 0.600508, 0.751165,
		-0.620714, 0.486125, -0.615140,
		-0.734556, -0.634881, 0.239487,
		33.303543, 32.124516, 27.977217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203461, 32.976227, 27.894945>,  <33.817734, 32.568932, 27.809576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203461, 32.976227, 27.894945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142483, 32.641232, 28.104849>,  <33.105896, 32.440235, 28.230791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142483, 32.641232, 28.104849>,  <33.203461, 32.976227, 27.894945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142483, 32.641232, 28.104849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278347, 0.545856, 0.790294,
		-0.948306, -0.025591, -0.316324,
		-0.152443, -0.837488, 0.524761,
		33.096748, 32.389984, 28.262278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418781, 32.885715, 27.937107>,  <33.203461, 32.976227, 27.894945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418781, 32.885715, 27.937107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611702, 32.697014, 28.232359>,  <32.727455, 32.583794, 28.409510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611702, 32.697014, 28.232359>,  <32.418781, 32.885715, 27.937107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611702, 32.697014, 28.232359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574136, 0.466173, 0.673090,
		-0.661628, -0.748419, -0.046015,
		0.482303, -0.471754, 0.738127,
		32.756393, 32.555489, 28.453796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870993, 32.720486, 28.356604>,  <32.418781, 32.885715, 27.937107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870993, 32.720486, 28.356604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173859, 32.671700, 28.613298>,  <32.355579, 32.642429, 28.767315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173859, 32.671700, 28.613298>,  <31.870993, 32.720486, 28.356604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173859, 32.671700, 28.613298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545485, 0.422417, 0.723885,
		-0.359368, -0.898158, 0.253311,
		0.757167, -0.121964, 0.641735,
		32.401009, 32.635109, 28.805819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639566, 32.554844, 28.996662>,  <31.870993, 32.720486, 28.356604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639566, 32.554844, 28.996662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006664, 32.653664, 29.121058>,  <32.226921, 32.712955, 29.195694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006664, 32.653664, 29.121058>,  <31.639566, 32.554844, 28.996662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006664, 32.653664, 29.121058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391860, 0.435580, 0.810380,
		0.064744, -0.865585, 0.496560,
		0.917744, 0.247050, 0.310987,
		32.281986, 32.727779, 29.214354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716337, 32.285385, 29.648987>,  <31.639566, 32.554844, 28.996662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716337, 32.285385, 29.648987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996420, 32.570847, 29.640862>,  <32.164471, 32.742123, 29.635986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996420, 32.570847, 29.640862>,  <31.716337, 32.285385, 29.648987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996420, 32.570847, 29.640862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245957, 0.267842, 0.931539,
		0.670234, -0.647275, 0.363072,
		0.700208, 0.713650, -0.020315,
		32.206482, 32.784943, 29.634768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178204, 32.226200, 30.254311>,  <31.716337, 32.285385, 29.648987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178204, 32.226200, 30.254311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236732, 32.600048, 30.124649>,  <32.271851, 32.824356, 30.046852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236732, 32.600048, 30.124649>,  <32.178204, 32.226200, 30.254311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236732, 32.600048, 30.124649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121083, 0.308294, 0.943554,
		0.981799, -0.177310, -0.068057,
		0.146320, 0.934621, -0.324152,
		32.280628, 32.880436, 30.027403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705360, 32.552078, 30.672281>,  <32.178204, 32.226200, 30.254311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705360, 32.552078, 30.672281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493748, 32.858784, 30.526842>,  <32.366779, 33.042809, 30.439579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493748, 32.858784, 30.526842>,  <32.705360, 32.552078, 30.672281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493748, 32.858784, 30.526842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077404, 0.383077, 0.920468,
		0.845066, 0.515098, -0.143308,
		-0.529029, 0.766764, -0.363596,
		32.335037, 33.088814, 30.417763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032810, 33.063812, 30.955151>,  <32.705360, 32.552078, 30.672281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032810, 33.063812, 30.955151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690777, 33.219807, 30.818478>,  <32.485558, 33.313404, 30.736473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690777, 33.219807, 30.818478>,  <33.032810, 33.063812, 30.955151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690777, 33.219807, 30.818478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045987, 0.599348, 0.799167,
		0.516453, 0.699064, -0.494556,
		-0.855080, 0.389989, -0.341683,
		32.434254, 33.336803, 30.715973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131771, 33.838017, 30.840565>,  <33.032810, 33.063812, 30.955151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131771, 33.838017, 30.840565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738487, 33.772770, 30.873274>,  <32.502518, 33.733624, 30.892899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738487, 33.772770, 30.873274>,  <33.131771, 33.838017, 30.840565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738487, 33.772770, 30.873274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086104, 0.809898, 0.580216,
		-0.160866, 0.563435, -0.810347,
		-0.983213, -0.163112, 0.081771,
		32.443523, 33.723835, 30.897804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887730, 34.463539, 30.739491>,  <33.131771, 33.838017, 30.840565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887730, 34.463539, 30.739491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592613, 34.267506, 30.925173>,  <32.415543, 34.149887, 31.036583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592613, 34.267506, 30.925173>,  <32.887730, 34.463539, 30.739491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592613, 34.267506, 30.925173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176103, 0.803606, 0.568511,
		-0.651656, 0.337694, -0.679197,
		-0.737789, -0.490082, 0.464206,
		32.371277, 34.120480, 31.064434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503674, 34.999004, 31.072020>,  <32.887730, 34.463539, 30.739491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503674, 34.999004, 31.072020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329819, 34.683937, 31.246685>,  <32.225506, 34.494896, 31.351484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329819, 34.683937, 31.246685>,  <32.503674, 34.999004, 31.072020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329819, 34.683937, 31.246685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225207, 0.564508, 0.794112,
		-0.871993, 0.246812, -0.422744,
		-0.434638, -0.787665, 0.436663,
		32.199429, 34.447639, 31.377684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851740, 35.156742, 31.267191>,  <32.503674, 34.999004, 31.072020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851740, 35.156742, 31.267191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992748, 34.874577, 31.513155>,  <32.077354, 34.705276, 31.660734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992748, 34.874577, 31.513155>,  <31.851740, 35.156742, 31.267191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992748, 34.874577, 31.513155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010274, 0.659973, 0.751219,
		-0.935748, -0.258502, 0.239901,
		0.352520, -0.705417, 0.614912,
		32.098503, 34.662952, 31.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275120, 35.653900, 31.547489>,  <31.851740, 35.156742, 31.267191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275120, 35.653900, 31.547489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065548, 35.340996, 31.682283>,  <31.939806, 35.153252, 31.763161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065548, 35.340996, 31.682283>,  <32.275120, 35.653900, 31.547489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065548, 35.340996, 31.682283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396270, -0.126348, -0.909399,
		0.753969, -0.609997, -0.243791,
		-0.523928, -0.782266, 0.336986,
		31.908369, 35.106316, 31.783379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953274, 35.288086, 31.629681>,  <32.275120, 35.653900, 31.547489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953274, 35.288086, 31.629681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269562, 35.385933, 31.405210>,  <33.459335, 35.444641, 31.270529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269562, 35.385933, 31.405210>,  <32.953274, 35.288086, 31.629681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269562, 35.385933, 31.405210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597772, 0.110851, -0.793965,
		-0.132013, 0.963261, 0.233880,
		0.790722, 0.244621, -0.561177,
		33.506779, 35.459320, 31.236856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774670, 35.715691, 31.040394>,  <32.953274, 35.288086, 31.629681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774670, 35.715691, 31.040394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141010, 35.613617, 30.916399>,  <33.360817, 35.552372, 30.842003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141010, 35.613617, 30.916399>,  <32.774670, 35.715691, 31.040394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141010, 35.613617, 30.916399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303405, 0.065808, -0.950586,
		0.262976, 0.964650, -0.017154,
		0.915854, -0.255186, -0.309986,
		33.415768, 35.537060, 30.823402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973179, 36.227306, 30.722193>,  <32.774670, 35.715691, 31.040394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973179, 36.227306, 30.722193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190247, 35.926300, 30.572933>,  <33.320488, 35.745697, 30.483377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190247, 35.926300, 30.572933>,  <32.973179, 36.227306, 30.722193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190247, 35.926300, 30.572933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271228, 0.263460, -0.925756,
		0.794953, 0.603583, -0.061132,
		0.542665, -0.752513, -0.373147,
		33.353046, 35.700546, 30.460989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370075, 36.467449, 30.237589>,  <32.973179, 36.227306, 30.722193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370075, 36.467449, 30.237589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352055, 36.086716, 30.116274>,  <33.341244, 35.858276, 30.043484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352055, 36.086716, 30.116274>,  <33.370075, 36.467449, 30.237589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352055, 36.086716, 30.116274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145956, 0.306610, -0.940578,
		0.988265, 0.001893, -0.152739,
		-0.045050, -0.951833, -0.303288,
		33.338539, 35.801167, 30.025288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851120, 36.460022, 29.751932>,  <33.370075, 36.467449, 30.237589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851120, 36.460022, 29.751932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622051, 36.147186, 29.653635>,  <33.484612, 35.959484, 29.594656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622051, 36.147186, 29.653635>,  <33.851120, 36.460022, 29.751932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622051, 36.147186, 29.653635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024562, 0.316001, -0.948441,
		0.819418, -0.537108, -0.200174,
		-0.572670, -0.782086, -0.245744,
		33.450249, 35.912560, 29.579912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108185, 36.263641, 29.146532>,  <33.851120, 36.460022, 29.751932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108185, 36.263641, 29.146532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750996, 36.083759, 29.138891>,  <33.536682, 35.975830, 29.134306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750996, 36.083759, 29.138891>,  <34.108185, 36.263641, 29.146532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750996, 36.083759, 29.138891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015012, 0.072175, -0.997279,
		0.449856, -0.890258, -0.071202,
		-0.892975, -0.449701, -0.019104,
		33.483105, 35.948849, 29.133160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158371, 35.596836, 28.641962>,  <34.108185, 36.263641, 29.146532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158371, 35.596836, 28.641962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771984, 35.693684, 28.678383>,  <33.540154, 35.751793, 28.700235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771984, 35.693684, 28.678383>,  <34.158371, 35.596836, 28.641962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771984, 35.693684, 28.678383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106405, -0.051089, -0.993010,
		-0.235773, -0.968901, 0.075113,
		-0.965965, 0.242117, 0.091050,
		33.482193, 35.766319, 28.705698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776371, 35.107521, 28.240847>,  <34.158371, 35.596836, 28.641962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776371, 35.107521, 28.240847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525265, 35.416615, 28.278353>,  <33.374603, 35.602070, 28.300856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525265, 35.416615, 28.278353>,  <33.776371, 35.107521, 28.240847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525265, 35.416615, 28.278353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150527, -0.002328, -0.988603,
		-0.763713, -0.634721, 0.117779,
		-0.627762, 0.772738, 0.093765,
		33.336937, 35.648438, 28.306482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395687, 35.015472, 27.682112>,  <33.776371, 35.107521, 28.240847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395687, 35.015472, 27.682112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302170, 35.390926, 27.783541>,  <33.246059, 35.616199, 27.844398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302170, 35.390926, 27.783541>,  <33.395687, 35.015472, 27.682112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302170, 35.390926, 27.783541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172170, 0.216714, -0.960933,
		-0.956921, -0.268317, 0.110939,
		-0.233792, 0.938638, 0.253574,
		33.232033, 35.672516, 27.859613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841637, 35.084633, 27.318718>,  <33.395687, 35.015472, 27.682112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841637, 35.084633, 27.318718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985798, 35.448685, 27.400476>,  <33.072296, 35.667114, 27.449532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985798, 35.448685, 27.400476>,  <32.841637, 35.084633, 27.318718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985798, 35.448685, 27.400476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204650, 0.290931, -0.934600,
		-0.910069, 0.295006, 0.291111,
		0.360406, 0.910127, 0.204394,
		33.093918, 35.721722, 27.461794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383755, 35.560577, 26.923092>,  <32.841637, 35.084633, 27.318718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383755, 35.560577, 26.923092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727390, 35.757877, 26.977764>,  <32.933571, 35.876255, 27.010567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727390, 35.757877, 26.977764>,  <32.383755, 35.560577, 26.923092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727390, 35.757877, 26.977764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052063, 0.181444, -0.982022,
		-0.509179, 0.850756, 0.130196,
		0.859084, 0.493247, 0.136680,
		32.985115, 35.905853, 27.018768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417751, 36.223763, 26.468567>,  <32.383755, 35.560577, 26.923092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417751, 36.223763, 26.468567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802345, 36.167599, 26.563080>,  <33.033100, 36.133900, 26.619787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802345, 36.167599, 26.563080>,  <32.417751, 36.223763, 26.468567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802345, 36.167599, 26.563080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271249, 0.345955, -0.898187,
		0.044368, 0.927686, 0.370716,
		0.961486, -0.140407, 0.236284,
		33.090790, 36.125477, 26.633965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699005, 36.839123, 26.275072>,  <32.417751, 36.223763, 26.468567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699005, 36.839123, 26.275072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988293, 36.562878, 26.276354>,  <33.161865, 36.397133, 26.277122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988293, 36.562878, 26.276354>,  <32.699005, 36.839123, 26.275072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988293, 36.562878, 26.276354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314324, 0.325027, -0.891940,
		0.614942, 0.646076, 0.452142,
		0.723220, -0.690610, 0.003205,
		33.205257, 36.355694, 26.277315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353588, 37.179356, 26.114416>,  <32.699005, 36.839123, 26.275072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353588, 37.179356, 26.114416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451859, 36.803604, 26.018738>,  <33.510822, 36.578156, 25.961330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451859, 36.803604, 26.018738>,  <33.353588, 37.179356, 26.114416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451859, 36.803604, 26.018738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468002, 0.331039, -0.819382,
		0.848892, 0.089357, 0.520959,
		0.245675, -0.939377, -0.239197,
		33.525562, 36.521790, 25.946980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019363, 37.195133, 25.780035>,  <33.353588, 37.179356, 26.114416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019363, 37.195133, 25.780035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901268, 36.825062, 25.684635>,  <33.830410, 36.603020, 25.627396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901268, 36.825062, 25.684635>,  <34.019363, 37.195133, 25.780035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901268, 36.825062, 25.684635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570538, 0.029510, -0.820741,
		0.766369, -0.378386, 0.519137,
		-0.295237, -0.925177, -0.238499,
		33.812698, 36.547508, 25.613085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628464, 36.810577, 25.550098>,  <34.019363, 37.195133, 25.780035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628464, 36.810577, 25.550098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334209, 36.603477, 25.375389>,  <34.157658, 36.479218, 25.270563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334209, 36.603477, 25.375389>,  <34.628464, 36.810577, 25.550098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334209, 36.603477, 25.375389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535341, -0.049319, -0.843195,
		0.415023, -0.854109, 0.313454,
		-0.735639, -0.517750, -0.436771,
		34.113518, 36.448151, 25.244358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014637, 36.250927, 25.148144>,  <34.628464, 36.810577, 25.550098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014637, 36.250927, 25.148144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645126, 36.279961, 24.997753>,  <34.423420, 36.297382, 24.907518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645126, 36.279961, 24.997753>,  <35.014637, 36.250927, 25.148144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645126, 36.279961, 24.997753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376954, -0.000265, -0.926232,
		-0.067332, -0.997362, -0.027117,
		-0.923781, 0.072587, -0.375978,
		34.367992, 36.301735, 24.884960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012680, 35.824257, 24.571129>,  <35.014637, 36.250927, 25.148144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012680, 35.824257, 24.571129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685955, 36.045238, 24.504667>,  <34.489918, 36.177826, 24.464790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685955, 36.045238, 24.504667>,  <35.012680, 35.824257, 24.571129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685955, 36.045238, 24.504667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236072, 0.057292, -0.970045,
		-0.526384, -0.831573, -0.177216,
		-0.816817, 0.552452, -0.166154,
		34.440910, 36.210976, 24.454821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678799, 35.487885, 24.054205>,  <35.012680, 35.824257, 24.571129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678799, 35.487885, 24.054205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541397, 35.863544, 24.053843>,  <34.458958, 36.088940, 24.053625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541397, 35.863544, 24.053843>,  <34.678799, 35.487885, 24.054205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541397, 35.863544, 24.053843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093065, 0.033080, -0.995110,
		-0.934530, -0.341907, -0.098766,
		-0.343502, 0.939152, -0.000905,
		34.438347, 36.145290, 24.053572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220875, 35.519119, 23.552891>,  <34.678799, 35.487885, 24.054205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220875, 35.519119, 23.552891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334579, 35.898670, 23.607782>,  <34.402802, 36.126400, 23.640717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334579, 35.898670, 23.607782>,  <34.220875, 35.519119, 23.552891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334579, 35.898670, 23.607782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001386, 0.142727, -0.989761,
		-0.958747, 0.281538, 0.039256,
		0.284258, 0.948876, 0.137229,
		34.419857, 36.183334, 23.648951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785633, 35.984650, 23.135996>,  <34.220875, 35.519119, 23.552891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785633, 35.984650, 23.135996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125587, 36.186245, 23.197573>,  <34.329559, 36.307201, 23.234520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125587, 36.186245, 23.197573>,  <33.785633, 35.984650, 23.135996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125587, 36.186245, 23.197573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037288, 0.233884, -0.971549,
		-0.525650, 0.831444, 0.179981,
		0.849883, 0.503984, 0.153944,
		34.380554, 36.337440, 23.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648689, 36.417542, 22.690353>,  <33.785633, 35.984650, 23.135996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648689, 36.417542, 22.690353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038509, 36.427639, 22.779451>,  <34.272400, 36.433697, 22.832911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038509, 36.427639, 22.779451>,  <33.648689, 36.417542, 22.690353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038509, 36.427639, 22.779451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208030, 0.268389, -0.940580,
		-0.083523, 0.962980, 0.256308,
		0.974550, 0.025240, 0.222746,
		34.330875, 36.435211, 22.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930840, 36.846478, 22.209949>,  <33.648689, 36.417542, 22.690353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930840, 36.846478, 22.209949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276096, 36.679462, 22.323542>,  <34.483250, 36.579254, 22.391697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276096, 36.679462, 22.323542>,  <33.930840, 36.846478, 22.209949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276096, 36.679462, 22.323542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304666, -0.017873, -0.952291,
		0.402695, 0.908483, 0.111783,
		0.863143, -0.417539, 0.283981,
		34.535038, 36.554199, 22.408735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365505, 37.329720, 21.962748>,  <33.930840, 36.846478, 22.209949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365505, 37.329720, 21.962748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562347, 36.985195, 22.013300>,  <34.680454, 36.778481, 22.043631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562347, 36.985195, 22.013300>,  <34.365505, 37.329720, 21.962748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562347, 36.985195, 22.013300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376889, 0.079934, -0.922803,
		0.784718, 0.501752, 0.363955,
		0.492110, -0.861310, 0.126379,
		34.709980, 36.726803, 22.051214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103951, 37.418289, 21.724724>,  <34.365505, 37.329720, 21.962748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103951, 37.418289, 21.724724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029148, 37.026424, 21.695641>,  <34.984264, 36.791306, 21.678190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029148, 37.026424, 21.695641>,  <35.103951, 37.418289, 21.724724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029148, 37.026424, 21.695641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304604, 0.012537, -0.952397,
		0.933940, -0.200255, 0.296064,
		-0.187010, -0.979664, -0.072707,
		34.973045, 36.732525, 21.673828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679943, 37.122490, 21.403683>,  <35.103951, 37.418289, 21.724724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679943, 37.122490, 21.403683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393532, 36.853325, 21.329388>,  <35.221687, 36.691826, 21.284811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393532, 36.853325, 21.329388>,  <35.679943, 37.122490, 21.403683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393532, 36.853325, 21.329388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400780, -0.178416, -0.898634,
		0.571564, -0.717883, 0.397440,
		-0.716024, -0.672912, -0.185737,
		35.178726, 36.651451, 21.273666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017189, 36.635494, 21.052729>,  <35.679943, 37.122490, 21.403683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017189, 36.635494, 21.052729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633106, 36.571556, 20.961126>,  <35.402657, 36.533195, 20.906164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633106, 36.571556, 20.961126>,  <36.017189, 36.635494, 21.052729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633106, 36.571556, 20.961126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252098, -0.143255, -0.957040,
		0.120168, -0.976693, 0.177851,
		-0.960212, -0.159842, -0.229007,
		35.345043, 36.523605, 20.892424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416904, 36.044395, 21.141998>,  <36.017189, 36.635494, 21.052729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416904, 36.044395, 21.141998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812714, 35.987030, 21.148727>,  <37.050198, 35.952610, 21.152765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812714, 35.987030, 21.148727>,  <36.416904, 36.044395, 21.141998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812714, 35.987030, 21.148727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008039, 0.061622, 0.998067,
		-0.144173, -0.987743, 0.059824,
		0.989520, -0.143413, 0.016824,
		37.109570, 35.944008, 21.153774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611977, 35.424725, 21.557049>,  <36.416904, 36.044395, 21.141998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611977, 35.424725, 21.557049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930027, 35.666676, 21.539598>,  <37.120857, 35.811848, 21.529127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930027, 35.666676, 21.539598>,  <36.611977, 35.424725, 21.557049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930027, 35.666676, 21.539598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081183, -0.034874, 0.996089,
		0.600992, -0.795553, -0.076835,
		0.795121, 0.604880, -0.043627,
		37.168564, 35.848141, 21.526510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100643, 35.098061, 22.007278>,  <36.611977, 35.424725, 21.557049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100643, 35.098061, 22.007278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238316, 35.467346, 21.938900>,  <37.320919, 35.688915, 21.897873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238316, 35.467346, 21.938900>,  <37.100643, 35.098061, 22.007278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238316, 35.467346, 21.938900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245719, 0.087154, 0.965415,
		0.906180, -0.374281, -0.196854,
		0.344181, 0.923210, -0.170945,
		37.341568, 35.744308, 21.887617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841358, 35.145992, 22.300695>,  <37.100643, 35.098061, 22.007278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841358, 35.145992, 22.300695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693943, 35.517437, 22.283419>,  <37.605495, 35.740303, 22.273052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693943, 35.517437, 22.283419>,  <37.841358, 35.145992, 22.300695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693943, 35.517437, 22.283419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075646, 0.076264, 0.994214,
		0.926531, 0.363135, -0.098352,
		-0.368534, 0.928610, -0.043192,
		37.583382, 35.796021, 22.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319725, 35.588558, 22.771873>,  <37.841358, 35.145992, 22.300695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319725, 35.588558, 22.771873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994171, 35.812481, 22.709642>,  <37.798840, 35.946835, 22.672304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994171, 35.812481, 22.709642>,  <38.319725, 35.588558, 22.771873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994171, 35.812481, 22.709642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024734, 0.234138, 0.971889,
		0.580497, 0.794855, -0.176716,
		-0.813887, 0.559808, -0.155577,
		37.750004, 35.980423, 22.662970>
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
