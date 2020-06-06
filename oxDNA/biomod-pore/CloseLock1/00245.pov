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
	<24.009609, 34.995792, 35.017323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209541, 34.753811, 34.769386>,  <24.329500, 34.608624, 34.620625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209541, 34.753811, 34.769386>,  <24.009609, 34.995792, 35.017323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209541, 34.753811, 34.769386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727139, 0.681909, -0.079175,
		0.470572, -0.411137, 0.780723,
		0.499831, -0.604952, -0.619841,
		24.359491, 34.572327, 34.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700089, 34.807083, 35.240582>,  <24.009609, 34.995792, 35.017323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700089, 34.807083, 35.240582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715944, 34.768085, 34.842804>,  <24.725458, 34.744686, 34.604137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715944, 34.768085, 34.842804>,  <24.700089, 34.807083, 35.240582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715944, 34.768085, 34.842804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938931, 0.344085, 0.003694,
		0.341814, -0.933863, 0.105179,
		0.039640, -0.097493, -0.994447,
		24.727837, 34.738838, 34.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273514, 34.361065, 34.970058>,  <24.700089, 34.807083, 35.240582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273514, 34.361065, 34.970058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164003, 34.661278, 34.729477>,  <25.098297, 34.841408, 34.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164003, 34.661278, 34.729477>,  <25.273514, 34.361065, 34.970058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164003, 34.661278, 34.729477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959938, 0.252043, -0.122443,
		0.059695, -0.610879, -0.789470,
		-0.273778, 0.750534, -0.601452,
		25.081869, 34.886436, 34.549042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596825, 34.088482, 34.202354>,  <25.273514, 34.361065, 34.970058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596825, 34.088482, 34.202354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526457, 33.805859, 34.476532>,  <25.484236, 33.636284, 34.641037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526457, 33.805859, 34.476532>,  <25.596825, 34.088482, 34.202354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526457, 33.805859, 34.476532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427841, -0.681978, -0.593176,
		0.886569, 0.188912, 0.422264,
		-0.175917, -0.706554, 0.685445,
		25.473682, 33.593891, 34.682167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204382, 33.695911, 34.342796>,  <25.596825, 34.088482, 34.202354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204382, 33.695911, 34.342796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895809, 33.451355, 34.413330>,  <25.710667, 33.304623, 34.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895809, 33.451355, 34.413330>,  <26.204382, 33.695911, 34.342796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895809, 33.451355, 34.413330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434347, -0.708474, -0.556244,
		0.465013, -0.352512, 0.812095,
		-0.771430, -0.611392, 0.176337,
		25.664379, 33.267937, 34.466232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254196, 34.296776, 33.911114>,  <26.204382, 33.695911, 34.342796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254196, 34.296776, 33.911114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634727, 34.419838, 33.903950>,  <26.863047, 34.493675, 33.899651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634727, 34.419838, 33.903950>,  <26.254196, 34.296776, 33.911114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634727, 34.419838, 33.903950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117870, 0.309549, -0.943550,
		-0.284743, 0.899738, 0.330746,
		0.951330, 0.307654, -0.017911,
		26.920126, 34.512135, 33.898575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281897, 34.735207, 33.323441>,  <26.254196, 34.296776, 33.911114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281897, 34.735207, 33.323441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662302, 34.741909, 33.446918>,  <26.890545, 34.745930, 33.521004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662302, 34.741909, 33.446918>,  <26.281897, 34.735207, 33.323441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662302, 34.741909, 33.446918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296340, 0.235041, -0.925710,
		-0.088066, 0.971841, 0.218562,
		0.951014, 0.016755, 0.308694,
		26.947607, 34.746937, 33.539528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530424, 35.324818, 33.018658>,  <26.281897, 34.735207, 33.323441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530424, 35.324818, 33.018658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853827, 35.103462, 33.098740>,  <27.047867, 34.970650, 33.146790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853827, 35.103462, 33.098740>,  <26.530424, 35.324818, 33.018658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853827, 35.103462, 33.098740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332738, 0.149270, -0.931130,
		0.485393, 0.819439, 0.304819,
		0.808504, -0.553389, 0.200204,
		27.096378, 34.937447, 33.158802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210674, 35.723347, 32.845551>,  <26.530424, 35.324818, 33.018658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210674, 35.723347, 32.845551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283768, 35.330120, 32.840080>,  <27.327623, 35.094185, 32.836796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283768, 35.330120, 32.840080>,  <27.210674, 35.723347, 32.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283768, 35.330120, 32.840080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317181, 0.072115, -0.945619,
		0.930594, 0.168457, 0.324988,
		0.182733, -0.983067, -0.013678,
		27.338587, 35.035198, 32.835976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878355, 35.648365, 32.534081>,  <27.210674, 35.723347, 32.845551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878355, 35.648365, 32.534081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711809, 35.285534, 32.509274>,  <27.611881, 35.067833, 32.494389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711809, 35.285534, 32.509274>,  <27.878355, 35.648365, 32.534081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711809, 35.285534, 32.509274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331223, -0.087802, -0.939458,
		0.846719, -0.411699, 0.337003,
		-0.416363, -0.907080, -0.062021,
		27.586901, 35.013409, 32.490665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328693, 35.352814, 32.021366>,  <27.878355, 35.648365, 32.534081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328693, 35.352814, 32.021366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026934, 35.090248, 32.022102>,  <27.845879, 34.932709, 32.022545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026934, 35.090248, 32.022102>,  <28.328693, 35.352814, 32.021366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026934, 35.090248, 32.022102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153372, -0.178988, -0.971823,
		0.638249, -0.732858, 0.235704,
		-0.754397, -0.656416, 0.001839,
		27.800615, 34.893322, 32.022655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542084, 34.677902, 31.673622>,  <28.328693, 35.352814, 32.021366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542084, 34.677902, 31.673622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145346, 34.722973, 31.649786>,  <27.907303, 34.750015, 31.635485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145346, 34.722973, 31.649786>,  <28.542084, 34.677902, 31.673622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145346, 34.722973, 31.649786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029836, -0.249270, -0.967974,
		-0.123921, -0.961857, 0.243875,
		-0.991843, 0.112676, -0.059588,
		27.847794, 34.756775, 31.631910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315069, 34.106541, 31.369976>,  <28.542084, 34.677902, 31.673622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315069, 34.106541, 31.369976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048162, 34.399998, 31.318552>,  <27.888020, 34.576073, 31.287699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048162, 34.399998, 31.318552>,  <28.315069, 34.106541, 31.369976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048162, 34.399998, 31.318552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097769, -0.084836, -0.991587,
		-0.738376, -0.674220, -0.015119,
		-0.667265, 0.733642, -0.128559,
		27.847982, 34.620090, 31.279984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949278, 33.867008, 30.850737>,  <28.315069, 34.106541, 31.369976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949278, 33.867008, 30.850737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837860, 34.250729, 30.832161>,  <27.771009, 34.480961, 30.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837860, 34.250729, 30.832161>,  <27.949278, 33.867008, 30.850737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837860, 34.250729, 30.832161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177787, 0.003983, -0.984061,
		-0.943824, -0.282362, -0.171661,
		-0.278545, 0.959300, -0.046441,
		27.754297, 34.538517, 30.818228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490768, 33.925133, 30.374392>,  <27.949278, 33.867008, 30.850737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490768, 33.925133, 30.374392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630573, 34.299126, 30.398569>,  <27.714457, 34.523521, 30.413076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630573, 34.299126, 30.398569>,  <27.490768, 33.925133, 30.374392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630573, 34.299126, 30.398569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012893, 0.059707, -0.998133,
		-0.936844, 0.349638, 0.008813,
		0.349511, 0.934981, 0.060444,
		27.735426, 34.579620, 30.416702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226891, 34.208786, 29.802761>,  <27.490768, 33.925133, 30.374392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226891, 34.208786, 29.802761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529957, 34.438911, 29.926018>,  <27.711798, 34.576988, 29.999971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529957, 34.438911, 29.926018>,  <27.226891, 34.208786, 29.802761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529957, 34.438911, 29.926018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234397, 0.200769, -0.951183,
		-0.609096, 0.792908, 0.017264,
		0.757667, 0.575315, 0.308143,
		27.757257, 34.611507, 30.018461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153215, 34.848152, 29.401861>,  <27.226891, 34.208786, 29.802761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153215, 34.848152, 29.401861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534729, 34.806072, 29.514450>,  <27.763638, 34.780827, 29.582003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534729, 34.806072, 29.514450>,  <27.153215, 34.848152, 29.401861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534729, 34.806072, 29.514450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298010, 0.211169, -0.930912,
		0.038491, 0.971772, 0.232760,
		0.953786, -0.105197, 0.281470,
		27.820866, 34.774513, 29.598890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425934, 35.423191, 29.043308>,  <27.153215, 34.848152, 29.401861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425934, 35.423191, 29.043308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737408, 35.191952, 29.140839>,  <27.924292, 35.053207, 29.199358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737408, 35.191952, 29.140839>,  <27.425934, 35.423191, 29.043308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737408, 35.191952, 29.140839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421353, 0.193893, -0.885927,
		0.464875, 0.792597, 0.394565,
		0.778686, -0.578097, 0.243827,
		27.971014, 35.018524, 29.213987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014576, 35.774899, 28.880695>,  <27.425934, 35.423191, 29.043308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014576, 35.774899, 28.880695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152098, 35.399292, 28.883318>,  <28.234612, 35.173927, 28.884892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152098, 35.399292, 28.883318>,  <28.014576, 35.774899, 28.880695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152098, 35.399292, 28.883318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437223, 0.153896, -0.886088,
		0.831043, 0.307510, 0.463471,
		0.343807, -0.939018, 0.006556,
		28.255239, 35.117588, 28.885284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600918, 35.761414, 28.557631>,  <28.014576, 35.774899, 28.880695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600918, 35.761414, 28.557631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531605, 35.367889, 28.539339>,  <28.490017, 35.131775, 28.528364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531605, 35.367889, 28.539339>,  <28.600918, 35.761414, 28.557631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531605, 35.367889, 28.539339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430620, -0.033928, -0.901896,
		0.885742, -0.175975, 0.429527,
		-0.173284, -0.983810, -0.045727,
		28.479620, 35.072746, 28.525621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229395, 35.526981, 28.398603>,  <28.600918, 35.761414, 28.557631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229395, 35.526981, 28.398603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984747, 35.227768, 28.295561>,  <28.837957, 35.048241, 28.233736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984747, 35.227768, 28.295561>,  <29.229395, 35.526981, 28.398603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984747, 35.227768, 28.295561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289248, 0.091643, -0.952857,
		0.736381, -0.657298, 0.160318,
		-0.611619, -0.748038, -0.257606,
		28.801262, 35.003357, 28.218279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692282, 35.006191, 27.981077>,  <29.229395, 35.526981, 28.398603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692282, 35.006191, 27.981077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306543, 34.925404, 27.912672>,  <29.075100, 34.876930, 27.871630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306543, 34.925404, 27.912672>,  <29.692282, 35.006191, 27.981077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306543, 34.925404, 27.912672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231969, -0.334058, -0.913562,
		0.127380, -0.920660, 0.368998,
		-0.964346, -0.201966, -0.171012,
		29.017239, 34.864815, 27.861368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743700, 34.290829, 27.727629>,  <29.692282, 35.006191, 27.981077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743700, 34.290829, 27.727629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430504, 34.514595, 27.618828>,  <29.242586, 34.648853, 27.553547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430504, 34.514595, 27.618828>,  <29.743700, 34.290829, 27.727629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430504, 34.514595, 27.618828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173686, -0.223263, -0.959159,
		-0.597295, -0.798254, 0.077650,
		-0.782989, 0.559414, -0.272000,
		29.195606, 34.682419, 27.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714314, 34.096416, 27.046667>,  <29.743700, 34.290829, 27.727629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714314, 34.096416, 27.046667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445555, 34.390461, 27.082806>,  <29.284300, 34.566887, 27.104488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445555, 34.390461, 27.082806>,  <29.714314, 34.096416, 27.046667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445555, 34.390461, 27.082806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104650, 0.214986, -0.970994,
		-0.733216, -0.642952, -0.221378,
		-0.671895, 0.735115, 0.090347,
		29.243986, 34.610996, 27.109909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144279, 33.935581, 26.572113>,  <29.714314, 34.096416, 27.046667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144279, 33.935581, 26.572113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159698, 34.329861, 26.637741>,  <29.168949, 34.566429, 26.677118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159698, 34.329861, 26.637741>,  <29.144279, 33.935581, 26.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159698, 34.329861, 26.637741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074479, 0.160901, -0.984156,
		-0.996477, 0.050156, -0.067211,
		0.038548, 0.985695, 0.164070,
		29.171263, 34.625568, 26.686962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577618, 34.239677, 26.240744>,  <29.144279, 33.935581, 26.572113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577618, 34.239677, 26.240744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905964, 34.466717, 26.266062>,  <29.102972, 34.602940, 26.281252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905964, 34.466717, 26.266062>,  <28.577618, 34.239677, 26.240744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905964, 34.466717, 26.266062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098444, -0.031457, -0.994645,
		-0.562570, 0.822703, -0.081699,
		0.820868, 0.567600, 0.063293,
		29.152224, 34.636997, 26.285049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657709, 34.709000, 25.517151>,  <28.577618, 34.239677, 26.240744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657709, 34.709000, 25.517151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000004, 34.720440, 25.723801>,  <29.205379, 34.727303, 25.847790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000004, 34.720440, 25.723801>,  <28.657709, 34.709000, 25.517151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000004, 34.720440, 25.723801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509649, 0.125751, -0.851143,
		-0.089306, 0.991650, 0.093035,
		0.855735, 0.028597, 0.516623,
		29.256725, 34.729019, 25.878788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947084, 35.401020, 25.504545>,  <28.657709, 34.709000, 25.517151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947084, 35.401020, 25.504545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234949, 35.126022, 25.543402>,  <29.407669, 34.961025, 25.566715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234949, 35.126022, 25.543402>,  <28.947084, 35.401020, 25.504545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234949, 35.126022, 25.543402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397525, 0.293274, -0.869462,
		0.569260, 0.664337, 0.484355,
		0.719664, -0.687494, 0.097141,
		29.450848, 34.919773, 25.572544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696161, 35.729782, 25.374733>,  <28.947084, 35.401020, 25.504545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696161, 35.729782, 25.374733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686319, 35.334858, 25.311974>,  <29.680414, 35.097904, 25.274319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686319, 35.334858, 25.311974>,  <29.696161, 35.729782, 25.374733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686319, 35.334858, 25.311974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560731, 0.116303, -0.819789,
		0.827632, -0.108148, 0.550753,
		-0.024605, -0.987308, -0.156898,
		29.678938, 35.038666, 25.264904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304382, 35.560074, 25.302664>,  <29.696161, 35.729782, 25.374733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304382, 35.560074, 25.302664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085012, 35.282436, 25.116129>,  <29.953390, 35.115856, 25.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085012, 35.282436, 25.116129>,  <30.304382, 35.560074, 25.302664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085012, 35.282436, 25.116129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593718, 0.069497, -0.801667,
		0.588839, -0.716525, 0.373981,
		-0.548424, -0.694091, -0.466336,
		29.920485, 35.074207, 24.976229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740499, 35.037460, 25.085735>,  <30.304382, 35.560074, 25.302664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740499, 35.037460, 25.085735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414217, 35.054688, 24.854992>,  <30.218447, 35.065025, 24.716545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414217, 35.054688, 24.854992>,  <30.740499, 35.037460, 25.085735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414217, 35.054688, 24.854992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577403, 0.120979, -0.807446,
		0.035011, -0.991720, -0.123553,
		-0.815708, 0.043071, -0.576858,
		30.169504, 35.067608, 24.681934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252172, 35.399311, 25.413542>,  <30.740499, 35.037460, 25.085735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252172, 35.399311, 25.413542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438511, 35.050350, 25.354340>,  <31.550314, 34.840973, 25.318819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438511, 35.050350, 25.354340>,  <31.252172, 35.399311, 25.413542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438511, 35.050350, 25.354340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881203, 0.472587, -0.012009,
		0.080422, -0.124828, 0.988914,
		0.465848, -0.872399, -0.148006,
		31.578266, 34.788631, 25.309938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859156, 35.342960, 25.919176>,  <31.252172, 35.399311, 25.413542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859156, 35.342960, 25.919176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898062, 35.078884, 25.621267>,  <31.921406, 34.920437, 25.442522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898062, 35.078884, 25.621267>,  <31.859156, 35.342960, 25.919176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898062, 35.078884, 25.621267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850985, 0.443219, -0.281748,
		0.516105, -0.606387, 0.604921,
		0.097265, -0.660190, -0.744774,
		31.927240, 34.880829, 25.397835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483904, 35.585945, 26.497812>,  <31.859156, 35.342960, 25.919176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483904, 35.585945, 26.497812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849224, 35.708427, 26.605230>,  <32.068417, 35.781918, 26.669682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849224, 35.708427, 26.605230>,  <31.483904, 35.585945, 26.497812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849224, 35.708427, 26.605230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149691, -0.360839, 0.920536,
		0.378779, -0.880926, -0.283718,
		0.913301, 0.306210, 0.268545,
		32.123215, 35.800289, 26.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867090, 34.946365, 26.829416>,  <31.483904, 35.585945, 26.497812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867090, 34.946365, 26.829416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941479, 35.312134, 26.973219>,  <31.986111, 35.531597, 27.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941479, 35.312134, 26.973219>,  <31.867090, 34.946365, 26.829416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941479, 35.312134, 26.973219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371870, -0.273170, 0.887181,
		0.909466, -0.298679, 0.289246,
		0.185969, 0.914423, 0.359509,
		31.997269, 35.586460, 27.081072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368065, 34.923306, 27.379890>,  <31.867090, 34.946365, 26.829416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368065, 34.923306, 27.379890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105759, 35.218918, 27.441597>,  <31.948376, 35.396286, 27.478621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105759, 35.218918, 27.441597>,  <32.368065, 34.923306, 27.379890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105759, 35.218918, 27.441597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166110, -0.340566, 0.925431,
		0.736463, 0.581241, 0.346093,
		-0.655766, 0.739035, 0.154265,
		31.909029, 35.440628, 27.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517727, 35.369896, 27.960232>,  <32.368065, 34.923306, 27.379890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517727, 35.369896, 27.960232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121304, 35.408264, 27.923140>,  <31.883450, 35.431286, 27.900885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121304, 35.408264, 27.923140>,  <32.517727, 35.369896, 27.960232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121304, 35.408264, 27.923140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106686, -0.152402, 0.982543,
		0.080112, 0.983653, 0.161273,
		-0.991060, 0.095919, -0.092733,
		31.823986, 35.437038, 27.895319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349270, 35.810432, 28.496058>,  <32.517727, 35.369896, 27.960232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349270, 35.810432, 28.496058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026039, 35.602337, 28.385527>,  <31.832100, 35.477478, 28.319208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026039, 35.602337, 28.385527>,  <32.349270, 35.810432, 28.496058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026039, 35.602337, 28.385527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386150, 0.113576, 0.915417,
		-0.444853, 0.846434, -0.292670,
		-0.808080, -0.520241, -0.276326,
		31.783615, 35.446266, 28.302629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763359, 36.140991, 28.849014>,  <32.349270, 35.810432, 28.496058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763359, 36.140991, 28.849014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641800, 35.773663, 28.747566>,  <31.568865, 35.553265, 28.686697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641800, 35.773663, 28.747566>,  <31.763359, 36.140991, 28.849014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641800, 35.773663, 28.747566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412371, -0.113189, 0.903957,
		-0.858834, 0.379298, -0.344293,
		-0.303899, -0.918325, -0.253622,
		31.550631, 35.498165, 28.671480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230354, 36.096809, 29.284342>,  <31.763359, 36.140991, 28.849014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230354, 36.096809, 29.284342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278887, 35.717735, 29.166243>,  <31.308006, 35.490292, 29.095383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278887, 35.717735, 29.166243>,  <31.230354, 36.096809, 29.284342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278887, 35.717735, 29.166243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285619, -0.318197, 0.903976,
		-0.950631, -0.025353, -0.309285,
		0.121332, -0.947686, -0.295247,
		31.315287, 35.433430, 29.077669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546419, 35.762054, 29.432934>,  <31.230354, 36.096809, 29.284342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546419, 35.762054, 29.432934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838335, 35.489975, 29.405399>,  <31.013485, 35.326729, 29.388880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838335, 35.489975, 29.405399>,  <30.546419, 35.762054, 29.432934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838335, 35.489975, 29.405399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383599, -0.490737, 0.782323,
		-0.565916, -0.544524, -0.619058,
		0.729788, -0.680199, -0.068837,
		31.057272, 35.285915, 29.384748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128624, 35.110092, 29.595697>,  <30.546419, 35.762054, 29.432934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128624, 35.110092, 29.595697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516891, 35.032242, 29.652164>,  <30.749851, 34.985531, 29.686045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516891, 35.032242, 29.652164>,  <30.128624, 35.110092, 29.595697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516891, 35.032242, 29.652164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212388, -0.418927, 0.882831,
		-0.112679, -0.886917, -0.447974,
		0.970667, -0.194621, 0.141167,
		30.808092, 34.973854, 29.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100052, 34.503540, 29.850351>,  <30.128624, 35.110092, 29.595697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100052, 34.503540, 29.850351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476175, 34.591614, 29.954151>,  <30.701849, 34.644459, 30.016430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476175, 34.591614, 29.954151>,  <30.100052, 34.503540, 29.850351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476175, 34.591614, 29.954151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139879, -0.445075, 0.884501,
		0.310246, -0.868003, -0.387709,
		0.940309, 0.220181, 0.259498,
		30.758268, 34.657669, 30.032000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271929, 33.932407, 30.233112>,  <30.100052, 34.503540, 29.850351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271929, 33.932407, 30.233112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525927, 34.213230, 30.362045>,  <30.678326, 34.381721, 30.439405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525927, 34.213230, 30.362045>,  <30.271929, 33.932407, 30.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525927, 34.213230, 30.362045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182020, -0.269533, 0.945632,
		0.750765, -0.659144, -0.043364,
		0.634996, 0.702055, 0.322334,
		30.716425, 34.423847, 30.458746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581047, 33.720818, 30.819527>,  <30.271929, 33.932407, 30.233112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581047, 33.720818, 30.819527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661663, 34.108597, 30.875452>,  <30.710033, 34.341267, 30.909008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661663, 34.108597, 30.875452>,  <30.581047, 33.720818, 30.819527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661663, 34.108597, 30.875452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045664, -0.133288, 0.990025,
		0.978415, -0.205913, 0.017407,
		0.201539, 0.969450, 0.139814,
		30.722124, 34.399433, 30.917397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038788, 33.761238, 31.382412>,  <30.581047, 33.720818, 30.819527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038788, 33.761238, 31.382412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862877, 34.118511, 31.344833>,  <30.757330, 34.332874, 31.322287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862877, 34.118511, 31.344833>,  <31.038788, 33.761238, 31.382412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862877, 34.118511, 31.344833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236905, -0.014471, 0.971425,
		0.866298, 0.449467, 0.217963,
		-0.439778, 0.893180, -0.093945,
		30.730944, 34.386467, 31.316650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402210, 34.171165, 31.848164>,  <31.038788, 33.761238, 31.382412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402210, 34.171165, 31.848164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039789, 34.330070, 31.789848>,  <30.822336, 34.425415, 31.754860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039789, 34.330070, 31.789848>,  <31.402210, 34.171165, 31.848164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039789, 34.330070, 31.789848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115470, 0.099340, 0.988331,
		0.407110, 0.912312, -0.044135,
		-0.906051, 0.397263, -0.145787,
		30.767975, 34.449249, 31.746113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419855, 34.542961, 32.383881>,  <31.402210, 34.171165, 31.848164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419855, 34.542961, 32.383881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045593, 34.543449, 32.242714>,  <30.821037, 34.543743, 32.158012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045593, 34.543449, 32.242714>,  <31.419855, 34.542961, 32.383881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045593, 34.543449, 32.242714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351975, 0.069886, 0.933397,
		0.025803, 0.997554, -0.064960,
		-0.935654, 0.001220, -0.352918,
		30.764896, 34.543816, 32.136837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092930, 35.185558, 32.548153>,  <31.419855, 34.542961, 32.383881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092930, 35.185558, 32.548153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829165, 34.886799, 32.513931>,  <30.670906, 34.707542, 32.493397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829165, 34.886799, 32.513931>,  <31.092930, 35.185558, 32.548153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829165, 34.886799, 32.513931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378694, 0.231698, 0.896051,
		-0.649434, 0.623267, -0.435630,
		-0.659413, -0.746897, -0.085555,
		30.631340, 34.662731, 32.488266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561491, 35.515720, 32.677132>,  <31.092930, 35.185558, 32.548153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561491, 35.515720, 32.677132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460682, 35.132114, 32.728928>,  <30.400196, 34.901951, 32.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460682, 35.132114, 32.728928>,  <30.561491, 35.515720, 32.677132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460682, 35.132114, 32.728928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536176, 0.249772, 0.806306,
		-0.805605, 0.133781, -0.577152,
		-0.252024, -0.959019, 0.129487,
		30.385075, 34.844410, 32.767773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902681, 35.609768, 32.831886>,  <30.561491, 35.515720, 32.677132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902681, 35.609768, 32.831886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997604, 35.235626, 32.936806>,  <30.054558, 35.011143, 32.999756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997604, 35.235626, 32.936806>,  <29.902681, 35.609768, 32.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997604, 35.235626, 32.936806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603319, 0.069714, 0.794447,
		-0.761374, -0.346777, -0.547773,
		0.237309, -0.935353, 0.262296,
		30.068796, 34.955021, 33.015495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276804, 35.256470, 33.182232>,  <29.902681, 35.609768, 32.831886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276804, 35.256470, 33.182232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557775, 35.000122, 33.306087>,  <29.726358, 34.846313, 33.380402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557775, 35.000122, 33.306087>,  <29.276804, 35.256470, 33.182232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557775, 35.000122, 33.306087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542041, -0.199723, 0.816274,
		-0.461285, -0.741212, -0.487670,
		0.702431, -0.640871, 0.309638,
		29.768505, 34.807861, 33.398979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887194, 34.747334, 33.429729>,  <29.276804, 35.256470, 33.182232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887194, 34.747334, 33.429729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245258, 34.681248, 33.595325>,  <29.460098, 34.641598, 33.694683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245258, 34.681248, 33.595325>,  <28.887194, 34.747334, 33.429729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245258, 34.681248, 33.595325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435749, -0.128815, 0.890803,
		-0.093834, -0.977811, -0.187297,
		0.895164, -0.165202, 0.413993,
		29.513807, 34.631683, 33.719524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885757, 34.078335, 33.801327>,  <28.887194, 34.747334, 33.429729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885757, 34.078335, 33.801327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130535, 34.349495, 33.964287>,  <29.277401, 34.512192, 34.062065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130535, 34.349495, 33.964287>,  <28.885757, 34.078335, 33.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130535, 34.349495, 33.964287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400541, -0.178539, 0.898716,
		0.681975, -0.713147, 0.162270,
		0.611945, 0.677898, 0.407404,
		29.314119, 34.552864, 34.086510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078686, 33.698906, 34.434059>,  <28.885757, 34.078335, 33.801327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078686, 33.698906, 34.434059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126289, 34.094940, 34.463921>,  <29.154852, 34.332561, 34.481838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126289, 34.094940, 34.463921>,  <29.078686, 33.698906, 34.434059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126289, 34.094940, 34.463921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405207, -0.020211, 0.914002,
		0.906446, -0.139026, 0.398783,
		0.119011, 0.990082, 0.074655,
		29.161993, 34.391964, 34.486317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338966, 33.775463, 35.064903>,  <29.078686, 33.698906, 34.434059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338966, 33.775463, 35.064903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225550, 34.151974, 34.991573>,  <29.157499, 34.377880, 34.947575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225550, 34.151974, 34.991573>,  <29.338966, 33.775463, 35.064903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225550, 34.151974, 34.991573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305532, 0.092536, 0.947675,
		0.908986, 0.324717, 0.261351,
		-0.283541, 0.941274, -0.183325,
		29.140488, 34.434357, 34.936577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715597, 34.154583, 35.482555>,  <29.338966, 33.775463, 35.064903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715597, 34.154583, 35.482555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405277, 34.388657, 35.388157>,  <29.219086, 34.529102, 35.331520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405277, 34.388657, 35.388157>,  <29.715597, 34.154583, 35.482555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405277, 34.388657, 35.388157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315414, -0.035734, 0.948281,
		0.546490, 0.810109, 0.212299,
		-0.775798, 0.585188, -0.235992,
		29.172539, 34.564213, 35.317360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340237, 34.575726, 36.003036>,  <29.715597, 34.154583, 35.482555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340237, 34.575726, 36.003036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410799, 34.550121, 36.395931>,  <29.453136, 34.534760, 36.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410799, 34.550121, 36.395931>,  <29.340237, 34.575726, 36.003036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410799, 34.550121, 36.395931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976608, -0.113272, -0.182777,
		0.122958, 0.991500, 0.042529,
		0.176406, -0.064009, 0.982234,
		29.463720, 34.530918, 36.690601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898031, 34.922745, 36.233021>,  <29.340237, 34.575726, 36.003036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898031, 34.922745, 36.233021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865728, 34.635311, 36.509315>,  <29.846346, 34.462852, 36.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865728, 34.635311, 36.509315>,  <29.898031, 34.922745, 36.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865728, 34.635311, 36.509315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959704, -0.243198, -0.140797,
		0.269161, 0.651534, 0.709264,
		-0.080757, -0.718580, 0.690739,
		29.841501, 34.419739, 36.716537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352236, 35.651440, 36.109230>,  <29.898031, 34.922745, 36.233021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352236, 35.651440, 36.109230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488377, 35.993050, 35.951847>,  <30.570061, 36.198013, 35.857418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488377, 35.993050, 35.951847>,  <30.352236, 35.651440, 36.109230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488377, 35.993050, 35.951847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214369, 0.477890, 0.851861,
		0.915537, -0.205586, 0.345726,
		0.340350, 0.854023, -0.393455,
		30.590481, 36.249256, 35.833809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122250, 35.907047, 36.202740>,  <30.352236, 35.651440, 36.109230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122250, 35.907047, 36.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825930, 36.174019, 36.233070>,  <30.648138, 36.334202, 36.251270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825930, 36.174019, 36.233070>,  <31.122250, 35.907047, 36.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825930, 36.174019, 36.233070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150120, 0.054465, 0.987166,
		0.654735, 0.742678, -0.140543,
		-0.740801, 0.667431, 0.075831,
		30.603689, 36.374249, 36.255821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349499, 36.598633, 36.377361>,  <31.122250, 35.907047, 36.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349499, 36.598633, 36.377361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003473, 36.469650, 36.531078>,  <30.795858, 36.392262, 36.623310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003473, 36.469650, 36.531078>,  <31.349499, 36.598633, 36.377361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003473, 36.469650, 36.531078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390015, 0.049496, 0.919478,
		-0.315515, 0.945288, 0.082947,
		-0.865066, -0.322460, 0.384293,
		30.743954, 36.372913, 36.646366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994905, 37.039150, 36.828865>,  <31.349499, 36.598633, 36.377361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994905, 37.039150, 36.828865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905388, 36.673824, 36.964962>,  <30.851677, 36.454628, 37.046619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905388, 36.673824, 36.964962>,  <30.994905, 37.039150, 36.828865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905388, 36.673824, 36.964962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337189, 0.254986, 0.906248,
		-0.914450, 0.317539, 0.250897,
		-0.223794, -0.913319, 0.340243,
		30.838249, 36.399830, 37.067036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658154, 36.998455, 37.620602>,  <30.994905, 37.039150, 36.828865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658154, 36.998455, 37.620602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865227, 36.660980, 37.563747>,  <30.989471, 36.458496, 37.529636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865227, 36.660980, 37.563747>,  <30.658154, 36.998455, 37.620602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865227, 36.660980, 37.563747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416895, 0.103677, 0.903023,
		-0.747129, -0.526735, 0.405399,
		0.517684, -0.843683, -0.142133,
		31.020533, 36.407875, 37.521107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605663, 36.692879, 38.218971>,  <30.658154, 36.998455, 37.620602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605663, 36.692879, 38.218971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932621, 36.542095, 38.044724>,  <31.128796, 36.451626, 37.940174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932621, 36.542095, 38.044724>,  <30.605663, 36.692879, 38.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932621, 36.542095, 38.044724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530322, 0.197042, 0.824580,
		-0.225001, -0.905026, 0.360973,
		0.817394, -0.376963, -0.435621,
		31.177839, 36.429005, 37.914036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833010, 36.151726, 38.619244>,  <30.605663, 36.692879, 38.218971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833010, 36.151726, 38.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141790, 36.294868, 38.409088>,  <31.327059, 36.380753, 38.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141790, 36.294868, 38.409088>,  <30.833010, 36.151726, 38.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141790, 36.294868, 38.409088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569025, -0.020563, 0.822063,
		0.283373, -0.933552, -0.219501,
		0.771952, 0.357851, -0.525388,
		31.373377, 36.402225, 38.251472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358122, 35.870388, 38.979111>,  <30.833010, 36.151726, 38.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358122, 35.870388, 38.979111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537874, 36.145172, 38.750675>,  <31.645725, 36.310043, 38.613613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537874, 36.145172, 38.750675>,  <31.358122, 35.870388, 38.979111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537874, 36.145172, 38.750675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683203, 0.147598, 0.715156,
		0.575577, -0.711545, -0.403007,
		0.449382, 0.686963, -0.571084,
		31.672689, 36.351261, 38.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038082, 35.723133, 38.964672>,  <31.358122, 35.870388, 38.979111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038082, 35.723133, 38.964672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032219, 36.106693, 38.851326>,  <32.028702, 36.336830, 38.783318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032219, 36.106693, 38.851326>,  <32.038082, 35.723133, 38.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032219, 36.106693, 38.851326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649255, 0.224648, 0.726637,
		0.760430, -0.173326, -0.625863,
		-0.014654, 0.958901, -0.283362,
		32.027824, 36.394363, 38.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790188, 35.934654, 38.958473>,  <32.038082, 35.723133, 38.964672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790188, 35.934654, 38.958473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555889, 36.255344, 39.006039>,  <32.415310, 36.447758, 39.034580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555889, 36.255344, 39.006039>,  <32.790188, 35.934654, 38.958473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555889, 36.255344, 39.006039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606847, 0.336565, 0.720042,
		0.537253, 0.493924, -0.683665,
		-0.585743, 0.801726, 0.118916,
		32.380165, 36.495861, 39.041714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215336, 36.484196, 39.013115>,  <32.790188, 35.934654, 38.958473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215336, 36.484196, 39.013115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880947, 36.632996, 39.174488>,  <32.680313, 36.722275, 39.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880947, 36.632996, 39.174488>,  <33.215336, 36.484196, 39.013115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880947, 36.632996, 39.174488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544178, 0.467083, 0.696924,
		0.070821, 0.802151, -0.592907,
		-0.835975, 0.372004, 0.403434,
		32.630154, 36.744598, 39.295517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388615, 37.236069, 39.197319>,  <33.215336, 36.484196, 39.013115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388615, 37.236069, 39.197319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081982, 37.112942, 39.422745>,  <32.898003, 37.039066, 39.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081982, 37.112942, 39.422745>,  <33.388615, 37.236069, 39.197319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081982, 37.112942, 39.422745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439464, 0.388424, 0.809937,
		-0.468209, 0.868550, -0.162486,
		-0.766584, -0.307813, 0.563560,
		32.852005, 37.020599, 39.591812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376144, 37.736942, 39.764439>,  <33.388615, 37.236069, 39.197319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376144, 37.736942, 39.764439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134262, 37.441250, 39.883011>,  <32.989132, 37.263836, 39.954155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134262, 37.441250, 39.883011>,  <33.376144, 37.736942, 39.764439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134262, 37.441250, 39.883011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290423, 0.141897, 0.946319,
		-0.741609, 0.658335, 0.128883,
		-0.604707, -0.739230, 0.296428,
		32.952850, 37.219482, 39.971939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105835, 37.977577, 40.384575>,  <33.376144, 37.736942, 39.764439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105835, 37.977577, 40.384575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016529, 37.587795, 40.394367>,  <32.962944, 37.353928, 40.400242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016529, 37.587795, 40.394367>,  <33.105835, 37.977577, 40.384575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016529, 37.587795, 40.394367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229175, -0.028066, 0.972980,
		-0.947434, 0.222842, 0.229586,
		-0.223265, -0.974450, 0.024479,
		32.949551, 37.295460, 40.401711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528454, 37.880337, 40.894802>,  <33.105835, 37.977577, 40.384575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528454, 37.880337, 40.894802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761940, 37.560192, 40.840107>,  <32.902031, 37.368103, 40.807289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761940, 37.560192, 40.840107>,  <32.528454, 37.880337, 40.894802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761940, 37.560192, 40.840107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112141, -0.087321, 0.989848,
		-0.804179, -0.593120, 0.038783,
		0.583712, -0.800364, -0.136735,
		32.937054, 37.320084, 40.799088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406387, 37.508327, 41.490471>,  <32.528454, 37.880337, 40.894802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406387, 37.508327, 41.490471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725990, 37.302883, 41.365379>,  <32.917751, 37.179615, 41.290325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725990, 37.302883, 41.365379>,  <32.406387, 37.508327, 41.490471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725990, 37.302883, 41.365379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281487, -0.140095, 0.949283,
		-0.531373, -0.846509, 0.032638,
		0.799004, -0.513611, -0.312725,
		32.965691, 37.148800, 41.271561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372166, 36.946724, 41.846432>,  <32.406387, 37.508327, 41.490471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372166, 36.946724, 41.846432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755630, 36.935497, 41.733173>,  <32.985710, 36.928761, 41.665218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755630, 36.935497, 41.733173>,  <32.372166, 36.946724, 41.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755630, 36.935497, 41.733173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240069, -0.454361, 0.857860,
		-0.152731, -0.890375, -0.428841,
		0.958666, -0.028071, -0.283146,
		33.043232, 36.927074, 41.648228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609921, 36.327995, 42.149963>,  <32.372166, 36.946724, 41.846432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609921, 36.327995, 42.149963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961449, 36.510883, 42.095367>,  <33.172367, 36.620617, 42.062611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961449, 36.510883, 42.095367>,  <32.609921, 36.327995, 42.149963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961449, 36.510883, 42.095367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290375, -0.285483, 0.913335,
		0.378628, -0.842289, -0.383653,
		0.878819, 0.457218, -0.136488,
		33.225094, 36.648048, 42.054420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117970, 35.789406, 42.265484>,  <32.609921, 36.327995, 42.149963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117970, 35.789406, 42.265484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294491, 36.146996, 42.296646>,  <33.400402, 36.361549, 42.315342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294491, 36.146996, 42.296646>,  <33.117970, 35.789406, 42.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294491, 36.146996, 42.296646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338533, -0.246256, 0.908159,
		0.831054, -0.374396, -0.411311,
		0.441299, 0.893972, 0.077906,
		33.426880, 36.415188, 42.320019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739807, 35.641148, 42.614754>,  <33.117970, 35.789406, 42.265484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739807, 35.641148, 42.614754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693703, 36.033470, 42.677658>,  <33.666039, 36.268864, 42.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693703, 36.033470, 42.677658>,  <33.739807, 35.641148, 42.614754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693703, 36.033470, 42.677658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416364, -0.096031, 0.904112,
		0.901862, 0.169689, -0.397304,
		-0.115265, 0.980808, 0.157259,
		33.659122, 36.327713, 42.724834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317856, 35.770695, 42.901169>,  <33.739807, 35.641148, 42.614754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317856, 35.770695, 42.901169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049004, 36.053829, 42.988075>,  <33.887691, 36.223709, 43.040218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049004, 36.053829, 42.988075>,  <34.317856, 35.770695, 42.901169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049004, 36.053829, 42.988075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291162, -0.017127, 0.956520,
		0.680781, 0.706169, -0.194584,
		-0.672132, 0.707836, 0.217270,
		33.847363, 36.266178, 43.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664383, 36.230179, 43.238667>,  <34.317856, 35.770695, 42.901169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664383, 36.230179, 43.238667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286568, 36.307930, 43.344547>,  <34.059879, 36.354580, 43.408077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286568, 36.307930, 43.344547>,  <34.664383, 36.230179, 43.238667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286568, 36.307930, 43.344547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244464, -0.122050, 0.961946,
		0.219284, 0.973305, 0.067764,
		-0.944538, 0.194374, 0.264702,
		34.003208, 36.366241, 43.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728870, 36.520157, 43.911083>,  <34.664383, 36.230179, 43.238667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728870, 36.520157, 43.911083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335766, 36.450584, 43.886044>,  <34.099903, 36.408840, 43.871021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335766, 36.450584, 43.886044>,  <34.728870, 36.520157, 43.911083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335766, 36.450584, 43.886044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051055, -0.070073, 0.996234,
		-0.177664, 0.982261, 0.059985,
		-0.982766, -0.173932, -0.062599,
		34.040936, 36.398403, 43.867264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371880, 36.965153, 44.297646>,  <34.728870, 36.520157, 43.911083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371880, 36.965153, 44.297646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109512, 36.666405, 44.253906>,  <33.952091, 36.487156, 44.227661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109512, 36.666405, 44.253906>,  <34.371880, 36.965153, 44.297646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109512, 36.666405, 44.253906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264716, 0.091929, 0.959935,
		-0.706896, 0.658582, -0.258007,
		-0.655914, -0.746872, -0.109352,
		33.912739, 36.442345, 44.221100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767410, 37.168674, 44.649918>,  <34.371880, 36.965153, 44.297646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767410, 37.168674, 44.649918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721920, 36.772312, 44.621140>,  <33.694626, 36.534496, 44.603874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721920, 36.772312, 44.621140>,  <33.767410, 37.168674, 44.649918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721920, 36.772312, 44.621140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428683, -0.016385, 0.903307,
		-0.896268, 0.133575, -0.422920,
		-0.113730, -0.990903, -0.071947,
		33.687801, 36.475040, 44.599556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138981, 37.049561, 44.893024>,  <33.767410, 37.168674, 44.649918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138981, 37.049561, 44.893024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341129, 36.706268, 44.928894>,  <33.462418, 36.500294, 44.950417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341129, 36.706268, 44.928894>,  <33.138981, 37.049561, 44.893024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341129, 36.706268, 44.928894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310145, -0.083675, 0.947000,
		-0.805240, -0.506398, -0.308463,
		0.505369, -0.858231, 0.089678,
		33.492741, 36.448799, 44.955799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739388, 36.651733, 45.292774>,  <33.138981, 37.049561, 44.893024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739388, 36.651733, 45.292774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082809, 36.447132, 45.306915>,  <33.288864, 36.324371, 45.315399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082809, 36.447132, 45.306915>,  <32.739388, 36.651733, 45.292774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082809, 36.447132, 45.306915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153741, -0.191043, 0.969467,
		-0.489128, -0.837777, -0.242659,
		0.858555, -0.511500, 0.035357,
		33.340378, 36.293682, 45.317524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601215, 35.981606, 45.508472>,  <32.739388, 36.651733, 45.292774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601215, 35.981606, 45.508472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978966, 36.073151, 45.602940>,  <33.205616, 36.128078, 45.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978966, 36.073151, 45.602940>,  <32.601215, 35.981606, 45.508472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978966, 36.073151, 45.602940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228999, -0.057775, 0.971711,
		0.236034, -0.971743, -0.002152,
		0.944377, 0.228864, 0.236165,
		33.262280, 36.141811, 45.673790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787609, 35.449261, 46.042194>,  <32.601215, 35.981606, 45.508472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787609, 35.449261, 46.042194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068817, 35.732063, 46.072922>,  <33.237541, 35.901745, 46.091358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068817, 35.732063, 46.072922>,  <32.787609, 35.449261, 46.042194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068817, 35.732063, 46.072922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059018, -0.049643, 0.997022,
		0.708719, -0.705458, 0.006826,
		0.703018, 0.707011, 0.076817,
		33.279724, 35.944168, 46.095966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289661, 35.168751, 46.475716>,  <32.787609, 35.449261, 46.042194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289661, 35.168751, 46.475716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323589, 35.567268, 46.481430>,  <33.343945, 35.806377, 46.484859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323589, 35.567268, 46.481430>,  <33.289661, 35.168751, 46.475716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323589, 35.567268, 46.481430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094270, -0.006251, 0.995527,
		0.991927, -0.085786, 0.093391,
		0.084818, 0.996294, 0.014287,
		33.349033, 35.866158, 46.485718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873322, 35.426968, 46.886486>,  <33.289661, 35.168751, 46.475716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873322, 35.426968, 46.886486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676918, 35.775337, 46.878395>,  <33.559078, 35.984360, 46.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676918, 35.775337, 46.878395>,  <33.873322, 35.426968, 46.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676918, 35.775337, 46.878395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202166, 0.136504, 0.969792,
		0.847374, 0.472083, -0.243095,
		-0.491005, 0.870922, -0.020231,
		33.529617, 36.036613, 46.872326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336842, 35.917583, 47.190968>,  <33.873322, 35.426968, 46.886486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336842, 35.917583, 47.190968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971634, 36.076706, 47.227074>,  <33.752510, 36.172180, 47.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971634, 36.076706, 47.227074>,  <34.336842, 35.917583, 47.190968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971634, 36.076706, 47.227074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140078, 0.097934, 0.985285,
		0.383113, 0.912227, -0.145140,
		-0.913018, 0.397807, 0.090263,
		33.697727, 36.196049, 47.254154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434582, 36.468098, 47.647797>,  <34.336842, 35.917583, 47.190968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434582, 36.468098, 47.647797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045067, 36.377167, 47.650780>,  <33.811356, 36.322609, 47.652569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045067, 36.377167, 47.650780>,  <34.434582, 36.468098, 47.647797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045067, 36.377167, 47.650780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011697, -0.017290, 0.999782,
		-0.227149, 0.973665, 0.019496,
		-0.973790, -0.227327, 0.007461,
		33.752930, 36.308968, 47.653019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242790, 36.788410, 48.171967>,  <34.434582, 36.468098, 47.647797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242790, 36.788410, 48.171967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930660, 36.548985, 48.099514>,  <33.743382, 36.405331, 48.056042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930660, 36.548985, 48.099514>,  <34.242790, 36.788410, 48.171967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930660, 36.548985, 48.099514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269543, 0.060560, 0.961082,
		-0.564301, 0.798782, -0.208596,
		-0.780327, -0.598565, -0.181132,
		33.696564, 36.369415, 48.045174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640263, 37.067745, 48.546909>,  <34.242790, 36.788410, 48.171967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640263, 37.067745, 48.546909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559410, 36.681110, 48.483849>,  <33.510899, 36.449131, 48.446011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559410, 36.681110, 48.483849>,  <33.640263, 37.067745, 48.546909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559410, 36.681110, 48.483849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076539, -0.144890, 0.986483,
		-0.976363, 0.211465, -0.044695,
		-0.202130, -0.966586, -0.157651,
		33.498772, 36.391136, 48.436554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144817, 36.950306, 49.033333>,  <33.640263, 37.067745, 48.546909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144817, 36.950306, 49.033333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278885, 36.583893, 48.945206>,  <33.359325, 36.364044, 48.892330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278885, 36.583893, 48.945206>,  <33.144817, 36.950306, 49.033333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278885, 36.583893, 48.945206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178767, -0.291430, 0.939740,
		-0.925042, -0.275587, -0.261435,
		0.335170, -0.916035, -0.220319,
		33.379436, 36.309082, 48.879108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727509, 36.546124, 49.404175>,  <33.144817, 36.950306, 49.033333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727509, 36.546124, 49.404175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021660, 36.302555, 49.285225>,  <33.198151, 36.156414, 49.213856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021660, 36.302555, 49.285225>,  <32.727509, 36.546124, 49.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021660, 36.302555, 49.285225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077115, -0.360787, 0.929455,
		-0.673251, -0.706437, -0.218360,
		0.735382, -0.608917, -0.297377,
		33.242275, 36.119881, 49.196011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505733, 35.841267, 49.460663>,  <32.727509, 36.546124, 49.404175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505733, 35.841267, 49.460663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901119, 35.878387, 49.508553>,  <33.138351, 35.900658, 49.537289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901119, 35.878387, 49.508553>,  <32.505733, 35.841267, 49.460663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901119, 35.878387, 49.508553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100071, -0.193317, 0.976020,
		0.113718, -0.976738, -0.181800,
		0.988460, 0.092798, 0.119727,
		33.197659, 35.906227, 49.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836872, 35.180645, 49.710705>,  <32.505733, 35.841267, 49.460663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836872, 35.180645, 49.710705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011852, 35.519234, 49.832104>,  <33.116840, 35.722389, 49.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011852, 35.519234, 49.832104>,  <32.836872, 35.180645, 49.710705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011852, 35.519234, 49.832104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115797, -0.281670, 0.952498,
		0.891753, -0.451819, -0.025199,
		0.437455, 0.846476, 0.303499,
		33.143089, 35.773178, 49.923153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215282, 34.955032, 49.206123>,  <32.836872, 35.180645, 49.710705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215282, 34.955032, 49.206123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368687, 35.211601, 49.471905>,  <33.460728, 35.365543, 49.631374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368687, 35.211601, 49.471905>,  <33.215282, 34.955032, 49.206123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368687, 35.211601, 49.471905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046314, -0.705207, 0.707487,
		0.922375, -0.302102, -0.240747,
		0.383510, 0.641419, 0.664456,
		33.483738, 35.404026, 49.671242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643993, 34.558712, 49.578884>,  <33.215282, 34.955032, 49.206123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643993, 34.558712, 49.578884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574432, 34.875595, 49.812866>,  <33.532696, 35.065723, 49.953255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574432, 34.875595, 49.812866>,  <33.643993, 34.558712, 49.578884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574432, 34.875595, 49.812866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051414, -0.600498, 0.797972,
		0.983420, 0.108693, 0.145158,
		-0.173901, 0.792204, 0.584954,
		33.522263, 35.113255, 49.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193684, 34.528793, 50.038506>,  <33.643993, 34.558712, 49.578884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193684, 34.528793, 50.038506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901855, 34.753757, 50.194157>,  <33.726757, 34.888737, 50.287548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901855, 34.753757, 50.194157>,  <34.193684, 34.528793, 50.038506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901855, 34.753757, 50.194157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021112, -0.587229, 0.809145,
		0.683575, 0.582117, 0.440301,
		-0.729575, 0.562407, 0.389125,
		33.682983, 34.922478, 50.310894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329845, 34.509411, 50.847569>,  <34.193684, 34.528793, 50.038506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329845, 34.509411, 50.847569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964626, 34.672253, 50.837753>,  <33.745495, 34.769958, 50.831863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964626, 34.672253, 50.837753>,  <34.329845, 34.509411, 50.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964626, 34.672253, 50.837753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256334, -0.526023, 0.810921,
		0.317224, 0.746702, 0.584642,
		-0.913051, 0.407107, -0.024538,
		33.690712, 34.794384, 50.830391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096748, 34.672390, 51.564949>,  <34.329845, 34.509411, 50.847569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096748, 34.672390, 51.564949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748661, 34.653713, 51.368771>,  <33.539810, 34.642506, 51.251064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748661, 34.653713, 51.368771>,  <34.096748, 34.672390, 51.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748661, 34.653713, 51.368771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431790, -0.407067, 0.804894,
		-0.237229, 0.912204, 0.334075,
		-0.870218, -0.046694, -0.490449,
		33.487595, 34.639706, 51.221638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469254, 34.991680, 51.973907>,  <34.096748, 34.672390, 51.564949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469254, 34.991680, 51.973907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310040, 34.725857, 51.720951>,  <33.214512, 34.566360, 51.569176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310040, 34.725857, 51.720951>,  <33.469254, 34.991680, 51.973907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310040, 34.725857, 51.720951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463820, -0.448968, 0.763740,
		-0.791478, 0.597314, -0.129532,
		-0.398037, -0.664563, -0.632394,
		33.190628, 34.526489, 51.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821701, 34.902233, 52.188614>,  <33.469254, 34.991680, 51.973907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821701, 34.902233, 52.188614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893452, 34.576183, 51.968288>,  <32.936501, 34.380554, 51.836094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893452, 34.576183, 51.968288>,  <32.821701, 34.902233, 52.188614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893452, 34.576183, 51.968288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399367, -0.572018, 0.716451,
		-0.899072, 0.091461, -0.428141,
		0.179376, -0.815126, -0.550812,
		32.947266, 34.331646, 51.803043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170353, 34.619030, 52.056644>,  <32.821701, 34.902233, 52.188614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170353, 34.619030, 52.056644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446579, 34.332134, 52.019375>,  <32.612316, 34.159996, 51.997013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446579, 34.332134, 52.019375>,  <32.170353, 34.619030, 52.056644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446579, 34.332134, 52.019375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517339, -0.579862, 0.629381,
		-0.505449, -0.386425, -0.771490,
		0.690566, -0.717242, -0.093178,
		32.653748, 34.116962, 51.991421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863749, 34.050949, 51.788418>,  <32.170353, 34.619030, 52.056644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863749, 34.050949, 51.788418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190071, 33.924660, 51.982235>,  <32.385864, 33.848885, 52.098526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190071, 33.924660, 51.982235>,  <31.863749, 34.050949, 51.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190071, 33.924660, 51.982235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547127, -0.692813, 0.469747,
		0.187385, -0.648328, -0.737942,
		0.815806, -0.315724, 0.484541,
		32.434814, 33.829941, 52.127598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939779, 33.274548, 51.659218>,  <31.863749, 34.050949, 51.788418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939779, 33.274548, 51.659218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077900, 33.420681, 52.005005>,  <32.160774, 33.508362, 52.212475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077900, 33.420681, 52.005005>,  <31.939779, 33.274548, 51.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077900, 33.420681, 52.005005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588754, -0.632993, 0.502681,
		0.730845, -0.682534, -0.003483,
		0.345302, 0.365331, 0.864465,
		32.181492, 33.530281, 52.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265995, 32.743839, 52.073132>,  <31.939779, 33.274548, 51.659218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265995, 32.743839, 52.073132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118183, 33.031052, 52.309055>,  <32.029495, 33.203377, 52.450611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118183, 33.031052, 52.309055>,  <32.265995, 32.743839, 52.073132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118183, 33.031052, 52.309055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489955, -0.689898, 0.532902,
		0.789550, -0.092057, 0.606742,
		-0.369533, 0.718029, 0.589813,
		32.007324, 33.246460, 52.486000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503498, 32.631844, 52.756859>,  <32.265995, 32.743839, 52.073132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503498, 32.631844, 52.756859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141361, 32.799973, 52.732590>,  <31.924078, 32.900848, 52.718029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141361, 32.799973, 52.732590>,  <32.503498, 32.631844, 52.756859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141361, 32.799973, 52.732590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382556, -0.745154, 0.546257,
		0.184395, 0.517760, 0.835418,
		-0.905345, 0.420321, -0.060669,
		31.869759, 32.926067, 52.714390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301632, 32.793701, 53.383144>,  <32.503498, 32.631844, 52.756859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301632, 32.793701, 53.383144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992271, 32.714542, 53.142250>,  <31.806656, 32.667049, 52.997711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992271, 32.714542, 53.142250>,  <32.301632, 32.793701, 53.383144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992271, 32.714542, 53.142250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293833, -0.729895, 0.617184,
		-0.561708, 0.654287, 0.506353,
		-0.773399, -0.197894, -0.602239,
		31.760252, 32.655174, 52.961578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729475, 32.239803, 53.373905>,  <32.301632, 32.793701, 53.383144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729475, 32.239803, 53.373905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815157, 31.885714, 53.539070>,  <31.866566, 31.673260, 53.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815157, 31.885714, 53.539070>,  <31.729475, 32.239803, 53.373905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815157, 31.885714, 53.539070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976789, -0.194169, 0.090452,
		0.000105, -0.422705, -0.906268,
		0.214204, -0.885223, 0.412914,
		31.879417, 31.620148, 53.662945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456371, 32.007706, 53.325043>,  <31.729475, 32.239803, 53.373905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456371, 32.007706, 53.325043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392277, 31.618309, 53.390335>,  <32.353821, 31.384672, 53.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392277, 31.618309, 53.390335>,  <32.456371, 32.007706, 53.325043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392277, 31.618309, 53.390335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303730, -0.205969, -0.930228,
		0.939188, -0.099476, 0.328681,
		-0.160234, -0.973489, 0.163230,
		32.344208, 31.326262, 53.439304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075287, 31.597290, 53.110104>,  <32.456371, 32.007706, 53.325043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075287, 31.597290, 53.110104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745636, 31.371027, 53.098507>,  <32.547844, 31.235270, 53.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745636, 31.371027, 53.098507>,  <33.075287, 31.597290, 53.110104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745636, 31.371027, 53.098507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237972, -0.299353, -0.923990,
		0.513982, -0.768388, 0.381317,
		-0.824131, -0.565657, -0.028993,
		32.498398, 31.201330, 53.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059471, 30.966068, 52.927486>,  <33.075287, 31.597290, 53.110104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059471, 30.966068, 52.927486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.021267, 52.824074>,  <32.447571, 31.054386, 52.762024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.021267, 52.824074>,  <33.059471, 30.966068, 52.927486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677032, 31.021267, 52.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234896, -0.166656, -0.957627,
		-0.175256, -0.976308, 0.126918,
		-0.956091, 0.138017, -0.258538,
		32.390205, 31.062666, 52.746513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040112, 30.692249, 52.354370>,  <33.059471, 30.966068, 52.927486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040112, 30.692249, 52.354370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741577, 30.955959, 52.317837>,  <32.562458, 31.114185, 52.295918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741577, 30.955959, 52.317837>,  <33.040112, 30.692249, 52.354370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741577, 30.955959, 52.317837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108449, -0.255855, -0.960613,
		-0.656678, -0.707031, 0.262451,
		-0.746332, 0.659276, -0.091337,
		32.517677, 31.153742, 52.290436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505997, 30.519814, 51.816166>,  <33.040112, 30.692249, 52.354370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505997, 30.519814, 51.816166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548615, 30.915138, 51.859779>,  <32.574184, 31.152332, 51.885948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548615, 30.915138, 51.859779>,  <32.505997, 30.519814, 51.816166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548615, 30.915138, 51.859779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034186, 0.105956, -0.993783,
		-0.993720, 0.109611, -0.022497,
		0.106546, 0.988311, 0.109038,
		32.580578, 31.211632, 51.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051319, 30.914743, 51.418240>,  <32.505997, 30.519814, 51.816166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051319, 30.914743, 51.418240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364937, 31.152563, 51.489559>,  <32.553108, 31.295256, 51.532352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364937, 31.152563, 51.489559>,  <32.051319, 30.914743, 51.418240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364937, 31.152563, 51.489559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043921, 0.233388, -0.971391,
		-0.619154, 0.769440, 0.156872,
		0.784040, 0.594551, 0.178297,
		32.600147, 31.330929, 51.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947760, 31.573524, 51.104565>,  <32.051319, 30.914743, 51.418240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947760, 31.573524, 51.104565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344666, 31.547941, 51.147118>,  <32.582809, 31.532591, 51.172649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344666, 31.547941, 51.147118>,  <31.947760, 31.573524, 51.104565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344666, 31.547941, 51.147118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117053, 0.196855, -0.973420,
		0.041318, 0.978344, 0.202819,
		0.992266, -0.063960, 0.106384,
		32.642345, 31.528753, 51.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105618, 32.062836, 50.658520>,  <31.947760, 31.573524, 51.104565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105618, 32.062836, 50.658520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450790, 31.875557, 50.734566>,  <32.657894, 31.763191, 50.780193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450790, 31.875557, 50.734566>,  <32.105618, 32.062836, 50.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450790, 31.875557, 50.734566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385497, 0.366700, -0.846713,
		0.326710, 0.803945, 0.496924,
		0.862933, -0.468192, 0.190113,
		32.709671, 31.735100, 50.791599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648342, 32.520718, 50.451298>,  <32.105618, 32.062836, 50.658520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648342, 32.520718, 50.451298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812523, 32.156094, 50.441685>,  <32.911034, 31.937319, 50.435917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812523, 32.156094, 50.441685>,  <32.648342, 32.520718, 50.451298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812523, 32.156094, 50.441685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395598, 0.201747, -0.895991,
		0.821602, 0.358257, 0.443421,
		0.410454, -0.911565, -0.024030,
		32.935658, 31.882624, 50.434475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236095, 32.696598, 50.260258>,  <32.648342, 32.520718, 50.451298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236095, 32.696598, 50.260258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193047, 32.304493, 50.193920>,  <33.167217, 32.069229, 50.154118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193047, 32.304493, 50.193920>,  <33.236095, 32.696598, 50.260258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193047, 32.304493, 50.193920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306087, 0.126038, -0.943623,
		0.945901, -0.152312, 0.286482,
		-0.107618, -0.980263, -0.165840,
		33.160763, 32.010414, 50.144169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947380, 32.294399, 50.208111>,  <33.236095, 32.696598, 50.260258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947380, 32.294399, 50.208111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681202, 32.088722, 49.991673>,  <33.521496, 31.965317, 49.861809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681202, 32.088722, 49.991673>,  <33.947380, 32.294399, 50.208111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681202, 32.088722, 49.991673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543828, 0.162577, -0.823298,
		0.511301, -0.842127, 0.171443,
		-0.665449, -0.514189, -0.541099,
		33.481567, 31.934465, 49.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328629, 32.091480, 49.532803>,  <33.947380, 32.294399, 50.208111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328629, 32.091480, 49.532803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951729, 32.007484, 49.428436>,  <33.725590, 31.957088, 49.365818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951729, 32.007484, 49.428436>,  <34.328629, 32.091480, 49.532803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951729, 32.007484, 49.428436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264367, 0.011956, -0.964348,
		0.205621, -0.977631, 0.044248,
		-0.942248, -0.209988, -0.260912,
		33.669056, 31.944489, 49.350163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436867, 31.663200, 49.006073>,  <34.328629, 32.091480, 49.532803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436867, 31.663200, 49.006073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055077, 31.777054, 48.970390>,  <33.826000, 31.845366, 48.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055077, 31.777054, 48.970390>,  <34.436867, 31.663200, 49.006073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055077, 31.777054, 48.970390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109830, 0.057315, -0.992297,
		-0.277329, -0.956921, -0.085968,
		-0.954477, 0.284634, -0.089203,
		33.768734, 31.862444, 48.943630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092556, 31.281567, 48.363579>,  <34.436867, 31.663200, 49.006073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092556, 31.281567, 48.363579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870750, 31.611103, 48.410568>,  <33.737667, 31.808825, 48.438763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870750, 31.611103, 48.410568>,  <34.092556, 31.281567, 48.363579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870750, 31.611103, 48.410568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114880, 0.064028, -0.991314,
		-0.824207, -0.563193, 0.059139,
		-0.554514, 0.823841, 0.117472,
		33.704395, 31.858255, 48.445808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555389, 31.153839, 47.921898>,  <34.092556, 31.281567, 48.363579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555389, 31.153839, 47.921898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532047, 31.547039, 47.991535>,  <33.518044, 31.782959, 48.033318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532047, 31.547039, 47.991535>,  <33.555389, 31.153839, 47.921898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532047, 31.547039, 47.991535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267804, 0.152585, -0.951314,
		-0.961704, -0.102138, 0.254347,
		-0.058356, 0.982998, 0.174094,
		33.514542, 31.841938, 48.043762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852100, 31.340122, 47.741119>,  <33.555389, 31.153839, 47.921898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852100, 31.340122, 47.741119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066265, 31.677057, 47.716469>,  <33.194763, 31.879219, 47.701679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066265, 31.677057, 47.716469>,  <32.852100, 31.340122, 47.741119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066265, 31.677057, 47.716469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406228, 0.192861, -0.893187,
		-0.740479, 0.503263, 0.445442,
		0.535416, 0.842337, -0.061630,
		33.226891, 31.929758, 47.697979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350327, 31.815069, 47.405209>,  <32.852100, 31.340122, 47.741119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350327, 31.815069, 47.405209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719742, 31.956902, 47.346760>,  <32.941391, 32.042000, 47.311691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719742, 31.956902, 47.346760>,  <32.350327, 31.815069, 47.405209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719742, 31.956902, 47.346760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218020, 0.171958, -0.960676,
		-0.315508, 0.919078, 0.236115,
		0.923538, 0.354579, -0.146123,
		32.996803, 32.063274, 47.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329994, 32.497696, 47.140965>,  <32.350327, 31.815069, 47.405209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329994, 32.497696, 47.140965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680882, 32.346863, 47.022106>,  <32.891415, 32.256363, 46.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680882, 32.346863, 47.022106>,  <32.329994, 32.497696, 47.140965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680882, 32.346863, 47.022106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221664, 0.230889, -0.947394,
		0.425853, 0.896938, 0.118955,
		0.877219, -0.377083, -0.297144,
		32.944046, 32.233738, 46.932964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543209, 33.057560, 46.706173>,  <32.329994, 32.497696, 47.140965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543209, 33.057560, 46.706173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779381, 32.759823, 46.581371>,  <32.921082, 32.581181, 46.506493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779381, 32.759823, 46.581371>,  <32.543209, 33.057560, 46.706173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779381, 32.759823, 46.581371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218888, 0.224406, -0.949594,
		0.776842, 0.628960, -0.030433,
		0.590428, -0.744346, -0.312000,
		32.956509, 32.536518, 46.487770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062717, 33.317364, 46.145760>,  <32.543209, 33.057560, 46.706173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062717, 33.317364, 46.145760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997246, 32.923660, 46.119083>,  <32.957962, 32.687439, 46.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997246, 32.923660, 46.119083>,  <33.062717, 33.317364, 46.145760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997246, 32.923660, 46.119083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109808, 0.085362, -0.990281,
		0.980383, -0.154766, -0.122051,
		-0.163680, -0.984256, -0.066693,
		32.948143, 32.628384, 46.099075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256905, 33.221344, 45.536175>,  <33.062717, 33.317364, 46.145760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256905, 33.221344, 45.536175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109470, 32.852524, 45.583443>,  <33.021011, 32.631229, 45.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109470, 32.852524, 45.583443>,  <33.256905, 33.221344, 45.536175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109470, 32.852524, 45.583443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164468, -0.060433, -0.984529,
		0.914931, -0.382314, -0.129374,
		-0.368581, -0.922054, 0.118171,
		32.998898, 32.575909, 45.618893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649105, 32.770119, 45.084312>,  <33.256905, 33.221344, 45.536175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649105, 32.770119, 45.084312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310917, 32.571991, 45.164150>,  <33.108006, 32.453114, 45.212051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310917, 32.571991, 45.164150>,  <33.649105, 32.770119, 45.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310917, 32.571991, 45.164150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233061, 0.005964, -0.972444,
		0.480481, -0.868689, -0.120483,
		-0.845470, -0.495321, 0.199592,
		33.057274, 32.423393, 45.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610722, 32.186924, 44.589283>,  <33.649105, 32.770119, 45.084312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610722, 32.186924, 44.589283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247803, 32.293400, 44.719486>,  <33.030052, 32.357285, 44.797607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247803, 32.293400, 44.719486>,  <33.610722, 32.186924, 44.589283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247803, 32.293400, 44.719486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345644, -0.031294, -0.937844,
		-0.239461, -0.963412, 0.120401,
		-0.907297, 0.266193, 0.325504,
		32.975613, 32.373257, 44.817139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099712, 31.830444, 44.177971>,  <33.610722, 32.186924, 44.589283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099712, 31.830444, 44.177971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889832, 32.133034, 44.334141>,  <32.763901, 32.314587, 44.427841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889832, 32.133034, 44.334141>,  <33.099712, 31.830444, 44.177971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889832, 32.133034, 44.334141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417948, 0.170625, -0.892304,
		-0.741622, -0.631372, 0.226640,
		-0.524706, 0.756476, 0.390420,
		32.732418, 32.359978, 44.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346004, 31.745478, 43.972775>,  <33.099712, 31.830444, 44.177971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346004, 31.745478, 43.972775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398914, 32.132233, 44.060074>,  <32.430660, 32.364285, 44.112453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398914, 32.132233, 44.060074>,  <32.346004, 31.745478, 43.972775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398914, 32.132233, 44.060074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397637, 0.253452, -0.881843,
		-0.907959, 0.029860, 0.417995,
		0.132273, 0.966887, 0.218250,
		32.438595, 32.422298, 44.125549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683205, 32.059212, 43.853958>,  <32.346004, 31.745478, 43.972775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683205, 32.059212, 43.853958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965849, 32.341385, 43.831806>,  <32.135437, 32.510689, 43.818516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965849, 32.341385, 43.831806>,  <31.683205, 32.059212, 43.853958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965849, 32.341385, 43.831806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352701, 0.283276, -0.891828,
		-0.613437, 0.649707, 0.448972,
		0.706609, 0.705433, -0.055380,
		32.177834, 32.553017, 43.815193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407896, 32.514988, 43.411396>,  <31.683205, 32.059212, 43.853958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407896, 32.514988, 43.411396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761303, 32.701141, 43.432617>,  <31.973347, 32.812832, 43.445351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761303, 32.701141, 43.432617>,  <31.407896, 32.514988, 43.411396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761303, 32.701141, 43.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198972, 0.475437, -0.856954,
		-0.424036, 0.746578, 0.512655,
		0.883518, 0.465383, 0.053054,
		32.026360, 32.840755, 43.448532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302633, 33.264618, 43.365891>,  <31.407896, 32.514988, 43.411396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302633, 33.264618, 43.365891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679976, 33.179771, 43.263840>,  <31.906380, 33.128864, 43.202610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679976, 33.179771, 43.263840>,  <31.302633, 33.264618, 43.365891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679976, 33.179771, 43.263840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145600, 0.426280, -0.892797,
		0.298133, 0.879370, 0.371249,
		0.943354, -0.212118, -0.255124,
		31.962982, 33.116135, 43.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463295, 33.829472, 43.098431>,  <31.302633, 33.264618, 43.365891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463295, 33.829472, 43.098431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725124, 33.571354, 42.940884>,  <31.882221, 33.416485, 42.846355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725124, 33.571354, 42.940884>,  <31.463295, 33.829472, 43.098431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725124, 33.571354, 42.940884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206333, 0.348720, -0.914233,
		0.727297, 0.679700, 0.095118,
		0.654573, -0.645293, -0.393867,
		31.921495, 33.377766, 42.822723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837042, 34.246464, 42.584694>,  <31.463295, 33.829472, 43.098431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837042, 34.246464, 42.584694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867813, 33.859283, 42.489067>,  <31.886276, 33.626976, 42.431690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867813, 33.859283, 42.489067>,  <31.837042, 34.246464, 42.584694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867813, 33.859283, 42.489067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072449, 0.244569, -0.966921,
		0.994401, 0.057066, 0.088942,
		0.076930, -0.967951, -0.239065,
		31.890892, 33.568897, 42.417347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175987, 34.222572, 41.965725>,  <31.837042, 34.246464, 42.584694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175987, 34.222572, 41.965725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045849, 33.844383, 41.971836>,  <31.967766, 33.617470, 41.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045849, 33.844383, 41.971836>,  <32.175987, 34.222572, 41.965725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045849, 33.844383, 41.971836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069343, 0.007739, -0.997563,
		0.943049, -0.325613, -0.068080,
		-0.325346, -0.945471, 0.015281,
		31.948244, 33.560741, 41.976421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577225, 33.818802, 41.478466>,  <32.175987, 34.222572, 41.965725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577225, 33.818802, 41.478466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221279, 33.639729, 41.513618>,  <32.007713, 33.532284, 41.534710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221279, 33.639729, 41.513618>,  <32.577225, 33.818802, 41.478466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221279, 33.639729, 41.513618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142050, 0.088819, -0.985867,
		0.433554, -0.889768, -0.142631,
		-0.889861, -0.447687, 0.087884,
		31.954321, 33.505421, 41.539982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587460, 33.301697, 40.937199>,  <32.577225, 33.818802, 41.478466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587460, 33.301697, 40.937199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204247, 33.363010, 41.034092>,  <31.974318, 33.399799, 41.092228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204247, 33.363010, 41.034092>,  <32.587460, 33.301697, 40.937199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204247, 33.363010, 41.034092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258019, -0.092945, -0.961659,
		-0.124894, -0.983801, 0.128595,
		-0.958033, 0.153285, 0.242232,
		31.916836, 33.408993, 41.106762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316826, 32.774422, 40.556133>,  <32.587460, 33.301697, 40.937199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316826, 32.774422, 40.556133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020348, 33.027657, 40.645428>,  <31.842461, 33.179596, 40.699005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020348, 33.027657, 40.645428>,  <32.316826, 32.774422, 40.556133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020348, 33.027657, 40.645428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322573, -0.044261, -0.945509,
		-0.588706, -0.772817, 0.237021,
		-0.741196, 0.633083, 0.223233,
		31.797989, 33.217583, 40.712399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768654, 32.539364, 40.207935>,  <32.316826, 32.774422, 40.556133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768654, 32.539364, 40.207935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656475, 32.919716, 40.260349>,  <31.589169, 33.147926, 40.291798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656475, 32.919716, 40.260349>,  <31.768654, 32.539364, 40.207935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656475, 32.919716, 40.260349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376386, 0.016641, -0.926314,
		-0.882997, -0.309100, 0.353232,
		-0.280446, 0.950884, 0.131035,
		31.572342, 33.204983, 40.299660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238131, 32.514954, 39.885044>,  <31.768654, 32.539364, 40.207935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238131, 32.514954, 39.885044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301859, 32.909508, 39.901325>,  <31.340096, 33.146240, 39.911095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301859, 32.909508, 39.901325>,  <31.238131, 32.514954, 39.885044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301859, 32.909508, 39.901325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227356, 0.076779, -0.970780,
		-0.960690, 0.145414, 0.236494,
		0.159323, 0.986387, 0.040700,
		31.349655, 33.205425, 39.913536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699533, 32.923431, 39.518814>,  <31.238131, 32.514954, 39.885044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699533, 32.923431, 39.518814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019234, 33.163815, 39.516216>,  <31.211054, 33.308044, 39.514656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019234, 33.163815, 39.516216>,  <30.699533, 32.923431, 39.518814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019234, 33.163815, 39.516216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101194, 0.123918, -0.987119,
		-0.592416, 0.789614, 0.159856,
		0.799252, 0.600961, -0.006493,
		31.259008, 33.344105, 39.514267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492817, 33.420914, 39.105049>,  <30.699533, 32.923431, 39.518814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492817, 33.420914, 39.105049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892046, 33.443657, 39.115013>,  <31.131582, 33.457302, 39.120991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892046, 33.443657, 39.115013>,  <30.492817, 33.420914, 39.105049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892046, 33.443657, 39.115013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007475, 0.288309, -0.957508,
		-0.061626, 0.955848, 0.287328,
		0.998071, 0.056859, 0.024913,
		31.191467, 33.460716, 39.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585915, 33.997562, 38.820351>,  <30.492817, 33.420914, 39.105049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585915, 33.997562, 38.820351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943129, 33.820507, 38.787945>,  <31.157457, 33.714275, 38.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943129, 33.820507, 38.787945>,  <30.585915, 33.997562, 38.820351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943129, 33.820507, 38.787945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111241, 0.391602, -0.913386,
		0.436022, 0.806673, 0.398954,
		0.893034, -0.442636, -0.081012,
		31.211039, 33.687717, 38.763641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960245, 34.486629, 38.499886>,  <30.585915, 33.997562, 38.820351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960245, 34.486629, 38.499886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206724, 34.172195, 38.480408>,  <31.354612, 33.983536, 38.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206724, 34.172195, 38.480408>,  <30.960245, 34.486629, 38.499886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206724, 34.172195, 38.480408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385238, 0.354751, -0.851906,
		0.686945, 0.506183, 0.521426,
		0.616197, -0.786085, -0.048694,
		31.391582, 33.936371, 38.465801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659092, 34.760513, 38.421326>,  <30.960245, 34.486629, 38.499886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659092, 34.760513, 38.421326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619989, 34.390228, 38.275173>,  <31.596527, 34.168056, 38.187481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619989, 34.390228, 38.275173>,  <31.659092, 34.760513, 38.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619989, 34.390228, 38.275173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379547, 0.304717, -0.873551,
		0.919993, -0.224076, 0.321562,
		-0.097757, -0.925709, -0.365385,
		31.590662, 34.112514, 38.165558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268101, 34.608582, 38.084019>,  <31.659092, 34.760513, 38.421326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268101, 34.608582, 38.084019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020451, 34.339767, 37.921513>,  <31.871861, 34.178478, 37.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020451, 34.339767, 37.921513>,  <32.268101, 34.608582, 38.084019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020451, 34.339767, 37.921513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262082, 0.310849, -0.913611,
		0.740266, -0.672116, -0.016327,
		-0.619128, -0.672036, -0.406261,
		31.834711, 34.138157, 37.799633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611408, 34.121971, 37.765980>,  <32.268101, 34.608582, 38.084019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611408, 34.121971, 37.765980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253456, 34.139008, 37.588272>,  <32.038685, 34.149231, 37.481647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253456, 34.139008, 37.588272>,  <32.611408, 34.121971, 37.765980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253456, 34.139008, 37.588272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412108, 0.461025, -0.785890,
		0.171347, -0.886364, -0.430114,
		-0.894878, 0.042593, -0.444273,
		31.984993, 34.151787, 37.454990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263130, 34.526264, 38.104946>,  <32.611408, 34.121971, 37.765980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263130, 34.526264, 38.104946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654572, 34.513393, 38.023655>,  <33.889435, 34.505669, 37.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654572, 34.513393, 38.023655>,  <33.263130, 34.526264, 38.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654572, 34.513393, 38.023655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091123, -0.817783, 0.568267,
		-0.184487, -0.574626, -0.797351,
		0.978602, -0.032181, -0.203233,
		33.948151, 34.503738, 37.962685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393394, 33.802876, 37.998341>,  <33.263130, 34.526264, 38.104946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393394, 33.802876, 37.998341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750179, 33.976643, 38.048443>,  <33.964249, 34.080902, 38.078503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750179, 33.976643, 38.048443>,  <33.393394, 33.802876, 37.998341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750179, 33.976643, 38.048443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313027, -0.793284, 0.522221,
		0.326227, -0.426591, -0.843561,
		0.891959, 0.434420, 0.125256,
		34.017765, 34.106968, 38.086021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973206, 33.360756, 37.709099>,  <33.393394, 33.802876, 37.998341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973206, 33.360756, 37.709099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125141, 33.599445, 37.991840>,  <34.216305, 33.742661, 38.161484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125141, 33.599445, 37.991840>,  <33.973206, 33.360756, 37.709099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125141, 33.599445, 37.991840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389397, -0.796267, 0.462957,
		0.839100, 0.099395, -0.534819,
		0.379843, 0.596724, 0.706852,
		34.239094, 33.778461, 38.203896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462986, 32.962704, 38.050285>,  <33.973206, 33.360756, 37.709099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462986, 32.962704, 38.050285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452885, 33.251801, 38.326550>,  <34.446823, 33.425259, 38.492310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452885, 33.251801, 38.326550>,  <34.462986, 32.962704, 38.050285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452885, 33.251801, 38.326550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426191, -0.617166, 0.661413,
		0.904280, 0.311056, -0.292439,
		-0.025253, 0.722738, 0.690661,
		34.445309, 33.468620, 38.533749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124435, 33.021381, 38.472630>,  <34.462986, 32.962704, 38.050285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124435, 33.021381, 38.472630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865532, 33.222057, 38.702190>,  <34.710190, 33.342461, 38.839928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865532, 33.222057, 38.702190>,  <35.124435, 33.021381, 38.472630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865532, 33.222057, 38.702190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374265, -0.446732, 0.812623,
		0.664063, 0.740771, 0.101388,
		-0.647260, 0.501687, 0.573903,
		34.671352, 33.372562, 38.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498672, 33.184795, 39.033478>,  <35.124435, 33.021381, 38.472630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498672, 33.184795, 39.033478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122654, 33.165016, 39.168457>,  <34.897041, 33.153149, 39.249443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122654, 33.165016, 39.168457>,  <35.498672, 33.184795, 39.033478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122654, 33.165016, 39.168457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334988, -0.319591, 0.886366,
		0.064017, 0.946265, 0.316994,
		-0.940045, -0.049447, 0.337447,
		34.840641, 33.150181, 39.269691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590847, 33.312130, 39.668602>,  <35.498672, 33.184795, 39.033478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590847, 33.312130, 39.668602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220139, 33.169106, 39.714634>,  <34.997715, 33.083290, 39.742252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220139, 33.169106, 39.714634>,  <35.590847, 33.312130, 39.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220139, 33.169106, 39.714634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239762, -0.327270, 0.914007,
		-0.289149, 0.874669, 0.389034,
		-0.926772, -0.357559, 0.115083,
		34.942108, 33.061836, 39.749157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417255, 33.381168, 40.359810>,  <35.590847, 33.312130, 39.668602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417255, 33.381168, 40.359810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157745, 33.102425, 40.237514>,  <35.002041, 32.935177, 40.164139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157745, 33.102425, 40.237514>,  <35.417255, 33.381168, 40.359810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157745, 33.102425, 40.237514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082971, -0.464151, 0.881862,
		-0.756446, 0.546760, 0.358948,
		-0.648773, -0.696862, -0.305740,
		34.963112, 32.893368, 40.145794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856705, 33.336689, 40.854706>,  <35.417255, 33.381168, 40.359810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856705, 33.336689, 40.854706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817764, 32.991989, 40.655544>,  <34.794399, 32.785168, 40.536049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817764, 32.991989, 40.655544>,  <34.856705, 33.336689, 40.854706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817764, 32.991989, 40.655544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035375, -0.502958, 0.863586,
		-0.994621, 0.066458, 0.079448,
		-0.097351, -0.861752, -0.497902,
		34.788559, 32.733463, 40.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535763, 32.974747, 41.351227>,  <34.856705, 33.336689, 40.854706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535763, 32.974747, 41.351227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670391, 32.708118, 41.085175>,  <34.751167, 32.548141, 40.925541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670391, 32.708118, 41.085175>,  <34.535763, 32.974747, 41.351227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670391, 32.708118, 41.085175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085967, -0.681642, 0.726618,
		-0.937725, -0.301739, -0.172119,
		0.336572, -0.666572, -0.665132,
		34.771362, 32.508148, 40.885635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160526, 32.413517, 41.453541>,  <34.535763, 32.974747, 41.351227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160526, 32.413517, 41.453541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495804, 32.248486, 41.310875>,  <34.696972, 32.149467, 41.225277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495804, 32.248486, 41.310875>,  <34.160526, 32.413517, 41.453541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495804, 32.248486, 41.310875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072516, -0.732488, 0.676907,
		-0.540528, -0.541516, -0.643886,
		0.838195, -0.412580, -0.356661,
		34.747261, 32.124710, 41.203876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282776, 31.737110, 41.817619>,  <34.160526, 32.413517, 41.453541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282776, 31.737110, 41.817619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651379, 31.815300, 41.683388>,  <34.872540, 31.862213, 41.602848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651379, 31.815300, 41.683388>,  <34.282776, 31.737110, 41.817619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651379, 31.815300, 41.683388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386155, -0.369198, 0.845327,
		0.041343, -0.908561, -0.415701,
		0.921507, 0.195474, -0.335581,
		34.927830, 31.873941, 41.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616196, 31.131975, 42.012909>,  <34.282776, 31.737110, 41.817619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616196, 31.131975, 42.012909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905041, 31.402214, 41.953419>,  <35.078346, 31.564358, 41.917725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905041, 31.402214, 41.953419>,  <34.616196, 31.131975, 42.012909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905041, 31.402214, 41.953419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429282, -0.269043, 0.862167,
		0.542467, -0.686426, -0.484302,
		0.722113, 0.675600, -0.148724,
		35.121674, 31.604895, 41.908802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389732, 30.885750, 42.089802>,  <34.616196, 31.131975, 42.012909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389732, 30.885750, 42.089802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335545, 31.271339, 42.181370>,  <35.303032, 31.502693, 42.236309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335545, 31.271339, 42.181370>,  <35.389732, 30.885750, 42.089802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335545, 31.271339, 42.181370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259631, -0.188433, 0.947145,
		0.956158, 0.187746, -0.224750,
		-0.135473, 0.963973, 0.228917,
		35.294903, 31.560532, 42.250046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919277, 31.057344, 42.604435>,  <35.389732, 30.885750, 42.089802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919277, 31.057344, 42.604435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670631, 31.367992, 42.645351>,  <35.521446, 31.554380, 42.669903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670631, 31.367992, 42.645351>,  <35.919277, 31.057344, 42.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670631, 31.367992, 42.645351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020389, -0.114499, 0.993214,
		0.783060, 0.619479, 0.055340,
		-0.621611, 0.776618, 0.102290,
		35.484146, 31.600979, 42.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232418, 31.439037, 43.116699>,  <35.919277, 31.057344, 42.604435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232418, 31.439037, 43.116699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854977, 31.571295, 43.109875>,  <35.628513, 31.650650, 43.105782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854977, 31.571295, 43.109875>,  <36.232418, 31.439037, 43.116699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854977, 31.571295, 43.109875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016589, 0.004246, 0.999853,
		0.330669, 0.943745, 0.001479,
		-0.943601, 0.330645, -0.017060,
		35.571896, 31.670488, 43.104755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194653, 31.854378, 43.661736>,  <36.232418, 31.439037, 43.116699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194653, 31.854378, 43.661736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804867, 31.797335, 43.592358>,  <35.570995, 31.763109, 43.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804867, 31.797335, 43.592358>,  <36.194653, 31.854378, 43.661736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804867, 31.797335, 43.592358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198402, 0.185158, 0.962472,
		-0.105140, 0.972307, -0.208723,
		-0.974465, -0.142605, -0.173440,
		35.512527, 31.754553, 43.540325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810516, 32.509972, 43.880974>,  <36.194653, 31.854378, 43.661736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810516, 32.509972, 43.880974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563637, 32.195797, 43.862411>,  <35.415508, 32.007294, 43.851273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563637, 32.195797, 43.862411>,  <35.810516, 32.509972, 43.880974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563637, 32.195797, 43.862411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225716, 0.120248, 0.966743,
		-0.753735, 0.607149, -0.251503,
		-0.617200, -0.785437, -0.046408,
		35.378475, 31.960165, 43.848488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163982, 32.663475, 44.219021>,  <35.810516, 32.509972, 43.880974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163982, 32.663475, 44.219021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172150, 32.263557, 44.218658>,  <35.177052, 32.023609, 44.218441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172150, 32.263557, 44.218658>,  <35.163982, 32.663475, 44.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172150, 32.263557, 44.218658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079639, -0.002530, 0.996821,
		-0.996615, -0.020280, -0.079674,
		0.020417, -0.999791, -0.000906,
		35.178276, 31.963619, 44.218388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641785, 32.361057, 44.590500>,  <35.163982, 32.663475, 44.219021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641785, 32.361057, 44.590500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878445, 32.038578, 44.589844>,  <35.020439, 31.845091, 44.589451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878445, 32.038578, 44.589844>,  <34.641785, 32.361057, 44.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878445, 32.038578, 44.589844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138308, 0.099497, 0.985379,
		-0.794243, -0.583225, 0.170371,
		0.591649, -0.806194, -0.001640,
		35.055939, 31.796721, 44.589352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504772, 32.027592, 45.268456>,  <34.641785, 32.361057, 44.590500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504772, 32.027592, 45.268456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848026, 31.866966, 45.140488>,  <35.053978, 31.770590, 45.063709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848026, 31.866966, 45.140488>,  <34.504772, 32.027592, 45.268456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848026, 31.866966, 45.140488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363169, 0.034310, 0.931091,
		-0.362920, -0.915187, 0.175280,
		0.858136, -0.401568, -0.319915,
		35.105469, 31.746496, 45.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614265, 31.461569, 45.744892>,  <34.504772, 32.027592, 45.268456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614265, 31.461569, 45.744892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 31.566418, 45.598053>,  <35.185455, 31.629328, 45.509949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 31.566418, 45.598053>,  <34.614265, 31.461569, 45.744892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971260, 31.566418, 45.598053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331026, 0.172224, 0.927772,
		0.306412, -0.949543, 0.066938,
		0.892487, 0.262123, -0.367095,
		35.239006, 31.645054, 45.487926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103527, 31.148859, 46.170521>,  <34.614265, 31.461569, 45.744892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103527, 31.148859, 46.170521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309826, 31.443401, 45.995346>,  <35.433605, 31.620127, 45.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309826, 31.443401, 45.995346>,  <35.103527, 31.148859, 46.170521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309826, 31.443401, 45.995346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345258, 0.289185, 0.892843,
		0.784093, -0.611682, -0.105087,
		0.515746, 0.736354, -0.437936,
		35.464550, 31.664309, 45.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732677, 31.204271, 46.579414>,  <35.103527, 31.148859, 46.170521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732677, 31.204271, 46.579414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660786, 31.537632, 46.370365>,  <35.617649, 31.737648, 46.244934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660786, 31.537632, 46.370365>,  <35.732677, 31.204271, 46.579414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660786, 31.537632, 46.370365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237966, 0.552332, 0.798938,
		0.954499, 0.019229, -0.297594,
		-0.179733, 0.833402, -0.522625,
		35.606865, 31.787653, 46.213577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297665, 31.577459, 46.728802>,  <35.732677, 31.204271, 46.579414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297665, 31.577459, 46.728802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030472, 31.844597, 46.597481>,  <35.870155, 32.004879, 46.518688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030472, 31.844597, 46.597481>,  <36.297665, 31.577459, 46.728802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030472, 31.844597, 46.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189925, 0.579546, 0.792499,
		0.719532, 0.467024, -0.513968,
		-0.667984, 0.667844, -0.328303,
		35.830078, 32.044949, 46.498989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575794, 32.194160, 46.814743>,  <36.297665, 31.577459, 46.728802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575794, 32.194160, 46.814743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186901, 32.283878, 46.788040>,  <35.953564, 32.337708, 46.772018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186901, 32.283878, 46.788040>,  <36.575794, 32.194160, 46.814743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186901, 32.283878, 46.788040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103326, 0.667377, 0.737518,
		0.209971, 0.710141, -0.672021,
		-0.972233, 0.224294, -0.066754,
		35.895233, 32.351166, 46.768013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539963, 33.026409, 46.906445>,  <36.575794, 32.194160, 46.814743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539963, 33.026409, 46.906445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159126, 32.922253, 46.970589>,  <35.930622, 32.859760, 47.009075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159126, 32.922253, 46.970589>,  <36.539963, 33.026409, 46.906445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159126, 32.922253, 46.970589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047816, 0.391183, 0.919070,
		-0.302046, 0.882708, -0.359992,
		-0.952093, -0.260388, 0.160363,
		35.873497, 32.844135, 47.018696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111080, 33.644279, 47.150345>,  <36.539963, 33.026409, 46.906445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111080, 33.644279, 47.150345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997456, 33.276337, 47.258549>,  <35.929279, 33.055573, 47.323471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997456, 33.276337, 47.258549>,  <36.111080, 33.644279, 47.150345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997456, 33.276337, 47.258549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154559, 0.322369, 0.933911,
		-0.946266, 0.223481, -0.233745,
		-0.284064, -0.919856, 0.270506,
		35.912235, 33.000381, 47.339699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621857, 33.892117, 47.579418>,  <36.111080, 33.644279, 47.150345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621857, 33.892117, 47.579418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663601, 33.506664, 47.677826>,  <35.688648, 33.275394, 47.736870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663601, 33.506664, 47.677826>,  <35.621857, 33.892117, 47.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663601, 33.506664, 47.677826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062704, 0.240504, 0.968621,
		-0.992561, -0.116516, -0.035323,
		0.104365, -0.963630, 0.246021,
		35.694912, 33.217575, 47.751633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109058, 33.760521, 48.153378>,  <35.621857, 33.892117, 47.579418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109058, 33.760521, 48.153378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381023, 33.468971, 48.185520>,  <35.544205, 33.294041, 48.204807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381023, 33.468971, 48.185520>,  <35.109058, 33.760521, 48.153378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381023, 33.468971, 48.185520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017755, 0.125921, 0.991881,
		-0.733076, -0.672968, 0.098557,
		0.679915, -0.728874, 0.080361,
		35.584999, 33.250309, 48.209629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865494, 33.354252, 48.815636>,  <35.109058, 33.760521, 48.153378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865494, 33.354252, 48.815636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228401, 33.210587, 48.728123>,  <35.446144, 33.124386, 48.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228401, 33.210587, 48.728123>,  <34.865494, 33.354252, 48.815636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228401, 33.210587, 48.728123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224926, -0.025156, 0.974051,
		-0.355351, -0.932934, 0.057963,
		0.907267, -0.359167, -0.218780,
		35.500580, 33.102837, 48.662487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926636, 32.761452, 49.254654>,  <34.865494, 33.354252, 48.815636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926636, 32.761452, 49.254654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284790, 32.897552, 49.139751>,  <35.499683, 32.979214, 49.070812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284790, 32.897552, 49.139751>,  <34.926636, 32.761452, 49.254654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284790, 32.897552, 49.139751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310724, -0.015335, 0.950376,
		0.318964, -0.940208, -0.119456,
		0.895384, 0.340254, -0.287254,
		35.553406, 32.999630, 49.053574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383907, 32.324692, 49.394611>,  <34.926636, 32.761452, 49.254654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383907, 32.324692, 49.394611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609406, 32.654167, 49.419041>,  <35.744705, 32.851852, 49.433697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609406, 32.654167, 49.419041>,  <35.383907, 32.324692, 49.394611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609406, 32.654167, 49.419041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282723, -0.261915, 0.922750,
		0.776055, -0.502928, -0.380529,
		0.563744, 0.823689, 0.061071,
		35.778530, 32.901276, 49.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127357, 32.038589, 49.728928>,  <35.383907, 32.324692, 49.394611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127357, 32.038589, 49.728928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113529, 32.437042, 49.761246>,  <36.105232, 32.676113, 49.780636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113529, 32.437042, 49.761246>,  <36.127357, 32.038589, 49.728928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113529, 32.437042, 49.761246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262931, -0.068929, 0.962349,
		0.964195, 0.054517, -0.259531,
		-0.034575, 0.996131, 0.080795,
		36.103157, 32.735882, 49.785484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699883, 32.253918, 50.220631>,  <36.127357, 32.038589, 49.728928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699883, 32.253918, 50.220631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464184, 32.577061, 50.225594>,  <36.322765, 32.770947, 50.228573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464184, 32.577061, 50.225594>,  <36.699883, 32.253918, 50.220631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464184, 32.577061, 50.225594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104526, 0.060990, 0.992650,
		0.801166, 0.586210, -0.120380,
		-0.589243, 0.807860, 0.012411,
		36.287411, 32.819420, 50.229317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122608, 32.790138, 50.584736>,  <36.699883, 32.253918, 50.220631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122608, 32.790138, 50.584736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737247, 32.894386, 50.609814>,  <36.506031, 32.956936, 50.624859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737247, 32.894386, 50.609814>,  <37.122608, 32.790138, 50.584736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737247, 32.894386, 50.609814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068328, 0.012601, 0.997583,
		0.259197, 0.965360, -0.029947,
		-0.963405, 0.260616, 0.062695,
		36.448227, 32.972572, 50.628624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031803, 33.356045, 50.977924>,  <37.122608, 32.790138, 50.584736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031803, 33.356045, 50.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684078, 33.163071, 51.020927>,  <36.475445, 33.047287, 51.046730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684078, 33.163071, 51.020927>,  <37.031803, 33.356045, 50.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684078, 33.163071, 51.020927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135044, -0.022597, 0.990582,
		-0.475464, 0.875639, 0.084794,
		-0.869308, -0.482437, 0.107506,
		36.423286, 33.018341, 51.053181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847046, 33.693298, 51.556240>,  <37.031803, 33.356045, 50.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847046, 33.693298, 51.556240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632328, 33.356030, 51.544125>,  <36.503498, 33.153667, 51.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632328, 33.356030, 51.544125>,  <36.847046, 33.693298, 51.556240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632328, 33.356030, 51.544125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019360, -0.048198, 0.998650,
		-0.843489, 0.535486, 0.042197,
		-0.536797, -0.843168, -0.030288,
		36.471291, 33.103081, 51.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332859, 34.345596, 51.600082>,  <36.847046, 33.693298, 51.556240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332859, 34.345596, 51.600082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676876, 34.505745, 51.473568>,  <37.883286, 34.601833, 51.397659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676876, 34.505745, 51.473568>,  <37.332859, 34.345596, 51.600082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676876, 34.505745, 51.473568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336369, -0.021201, -0.941492,
		-0.383649, 0.916109, 0.116438,
		0.860040, 0.400368, -0.316284,
		37.934887, 34.625854, 51.378681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182560, 34.816570, 51.016415>,  <37.332859, 34.345596, 51.600082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182560, 34.816570, 51.016415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569305, 34.723961, 50.973370>,  <37.801353, 34.668396, 50.947544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569305, 34.723961, 50.973370>,  <37.182560, 34.816570, 51.016415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569305, 34.723961, 50.973370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128710, -0.077998, -0.988610,
		0.220491, 0.969698, -0.105213,
		0.966860, -0.231522, -0.107612,
		37.859364, 34.654503, 50.941086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517815, 35.361362, 50.646931>,  <37.182560, 34.816570, 51.016415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517815, 35.361362, 50.646931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744358, 35.041290, 50.567982>,  <37.880283, 34.849247, 50.520611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744358, 35.041290, 50.567982>,  <37.517815, 35.361362, 50.646931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744358, 35.041290, 50.567982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201118, 0.098060, -0.974647,
		0.799246, 0.591691, -0.105394,
		0.566354, -0.800179, -0.197374,
		37.914265, 34.801235, 50.508770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808327, 35.518909, 50.033810>,  <37.517815, 35.361362, 50.646931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808327, 35.518909, 50.033810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896038, 35.129429, 50.058552>,  <37.948666, 34.895741, 50.073395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896038, 35.129429, 50.058552>,  <37.808327, 35.518909, 50.033810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896038, 35.129429, 50.058552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033675, -0.070911, -0.996914,
		0.975081, 0.216520, -0.048338,
		0.219280, -0.973700, 0.061852,
		37.961823, 34.837318, 50.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532707, 35.384083, 49.729321>,  <37.808327, 35.518909, 50.033810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532707, 35.384083, 49.729321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327736, 35.041058, 49.711411>,  <38.204754, 34.835243, 49.700665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327736, 35.041058, 49.711411>,  <38.532707, 35.384083, 49.729321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327736, 35.041058, 49.711411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067525, 0.011741, -0.997648,
		0.856070, -0.514249, 0.051890,
		-0.512430, -0.857560, -0.044776,
		38.174007, 34.783791, 49.697979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904110, 34.978268, 49.274189>,  <38.532707, 35.384083, 49.729321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904110, 34.978268, 49.274189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541538, 34.810688, 49.295586>,  <38.323994, 34.710140, 49.308426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541538, 34.810688, 49.295586>,  <38.904110, 34.978268, 49.274189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541538, 34.810688, 49.295586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012203, -0.152588, -0.988215,
		0.422177, -0.895096, 0.143423,
		-0.906431, -0.418952, 0.053496,
		38.269608, 34.685001, 49.311634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888519, 34.674244, 48.555832>,  <38.904110, 34.978268, 49.274189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888519, 34.674244, 48.555832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505478, 34.668999, 48.670952>,  <38.275654, 34.665852, 48.740025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505478, 34.668999, 48.670952>,  <38.888519, 34.674244, 48.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505478, 34.668999, 48.670952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254868, -0.427183, -0.867501,
		0.134318, -0.904070, 0.405729,
		-0.957602, -0.013114, 0.287797,
		38.218197, 34.665066, 48.757290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673237, 33.928978, 48.544918>,  <38.888519, 34.674244, 48.555832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673237, 33.928978, 48.544918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375149, 34.191376, 48.497047>,  <38.196297, 34.348816, 48.468327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375149, 34.191376, 48.497047>,  <38.673237, 33.928978, 48.544918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375149, 34.191376, 48.497047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250467, -0.441693, -0.861495,
		-0.617997, -0.612025, 0.493461,
		-0.745215, 0.655997, -0.119673,
		38.151585, 34.388176, 48.461147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374741, 33.546673, 48.087135>,  <38.673237, 33.928978, 48.544918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374741, 33.546673, 48.087135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194157, 33.903503, 48.094913>,  <38.085804, 34.117603, 48.099583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194157, 33.903503, 48.094913>,  <38.374741, 33.546673, 48.087135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194157, 33.903503, 48.094913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163620, -0.061340, -0.984615,
		-0.877160, -0.447700, 0.173655,
		-0.451464, 0.892078, 0.019448,
		38.058716, 34.171127, 48.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754856, 33.446724, 47.597946>,  <38.374741, 33.546673, 48.087135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754856, 33.446724, 47.597946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846287, 33.836124, 47.600460>,  <37.901146, 34.069767, 47.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846287, 33.836124, 47.600460>,  <37.754856, 33.446724, 47.597946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846287, 33.836124, 47.600460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124971, 0.035745, -0.991516,
		-0.965471, 0.225854, 0.129830,
		0.228579, 0.973505, 0.006285,
		37.914860, 34.128178, 47.602345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238861, 33.628407, 47.198441>,  <37.754856, 33.446724, 47.597946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238861, 33.628407, 47.198441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500492, 33.930920, 47.204334>,  <37.657471, 34.112427, 47.207870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500492, 33.930920, 47.204334>,  <37.238861, 33.628407, 47.198441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500492, 33.930920, 47.204334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142854, 0.142629, -0.979413,
		-0.742813, 0.638510, 0.201329,
		0.654080, 0.756281, 0.014732,
		37.696716, 34.157803, 47.208755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963993, 34.159298, 46.901798>,  <37.238861, 33.628407, 47.198441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963993, 34.159298, 46.901798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350155, 34.251095, 46.852264>,  <37.581852, 34.306171, 46.822544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350155, 34.251095, 46.852264>,  <36.963993, 34.159298, 46.901798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350155, 34.251095, 46.852264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133904, 0.028759, -0.990577,
		-0.223768, 0.972886, 0.058494,
		0.965400, 0.229492, -0.123838,
		37.639774, 34.319942, 46.815113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920219, 34.778320, 46.428230>,  <36.963993, 34.159298, 46.901798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920219, 34.778320, 46.428230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297817, 34.646358, 46.430614>,  <37.524376, 34.567181, 46.432045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297817, 34.646358, 46.430614>,  <36.920219, 34.778320, 46.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297817, 34.646358, 46.430614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077437, 0.203941, -0.975916,
		0.320747, 0.921720, 0.218067,
		0.943994, -0.329908, 0.005962,
		37.581017, 34.547386, 46.432404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201462, 35.271420, 46.091770>,  <36.920219, 34.778320, 46.428230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201462, 35.271420, 46.091770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392124, 34.920761, 46.065582>,  <37.506523, 34.710365, 46.049870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392124, 34.920761, 46.065582>,  <37.201462, 35.271420, 46.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392124, 34.920761, 46.065582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096872, 0.126404, -0.987237,
		0.873734, 0.464235, 0.145174,
		0.476660, -0.876646, -0.065472,
		37.535122, 34.657768, 46.045940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751698, 35.334053, 45.650249>,  <37.201462, 35.271420, 46.091770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751698, 35.334053, 45.650249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682072, 34.940170, 45.647442>,  <37.640297, 34.703838, 45.645760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682072, 34.940170, 45.647442>,  <37.751698, 35.334053, 45.650249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682072, 34.940170, 45.647442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118598, -0.013890, -0.992846,
		0.977566, -0.173653, 0.119203,
		-0.174066, -0.984709, -0.007017,
		37.629852, 34.644756, 45.645336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205906, 35.013939, 45.087250>,  <37.751698, 35.334053, 45.650249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205906, 35.013939, 45.087250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948654, 34.716179, 45.159088>,  <37.794304, 34.537525, 45.202190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948654, 34.716179, 45.159088>,  <38.205906, 35.013939, 45.087250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948654, 34.716179, 45.159088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005131, -0.238722, -0.971075,
		0.765739, -0.623607, 0.157348,
		-0.643131, -0.744397, 0.179599,
		37.755714, 34.492859, 45.212967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388180, 34.484707, 44.595325>,  <38.205906, 35.013939, 45.087250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388180, 34.484707, 44.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021404, 34.374306, 44.710590>,  <37.801338, 34.308064, 44.779747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021404, 34.374306, 44.710590>,  <38.388180, 34.484707, 44.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021404, 34.374306, 44.710590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160329, -0.406459, -0.899492,
		0.365391, -0.870983, 0.328448,
		-0.916943, -0.276006, 0.288161,
		37.746323, 34.291504, 44.797039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266056, 33.892334, 44.201794>,  <38.388180, 34.484707, 44.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266056, 33.892334, 44.201794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903526, 34.023705, 44.308163>,  <37.686008, 34.102528, 44.371983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903526, 34.023705, 44.308163>,  <38.266056, 33.892334, 44.201794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903526, 34.023705, 44.308163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369178, -0.309140, -0.876436,
		-0.205637, -0.892507, 0.401428,
		-0.906323, 0.328426, 0.265923,
		37.631630, 34.122234, 44.387939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787846, 33.358761, 44.078125>,  <38.266056, 33.892334, 44.201794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787846, 33.358761, 44.078125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559776, 33.686977, 44.094215>,  <37.422935, 33.883907, 44.103870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559776, 33.686977, 44.094215>,  <37.787846, 33.358761, 44.078125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559776, 33.686977, 44.094215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472246, -0.287300, -0.833332,
		-0.672226, -0.494139, 0.551307,
		-0.570172, 0.820540, 0.040225,
		37.388725, 33.933140, 44.106281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072609, 33.081486, 43.842026>,  <37.787846, 33.358761, 44.078125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072609, 33.081486, 43.842026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062561, 33.476471, 43.779697>,  <37.056530, 33.713463, 43.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062561, 33.476471, 43.779697>,  <37.072609, 33.081486, 43.842026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062561, 33.476471, 43.779697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305834, -0.155987, -0.939220,
		-0.951753, 0.024057, 0.305920,
		-0.025124, 0.987466, -0.155818,
		37.055023, 33.772713, 43.732952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497448, 33.255054, 43.527603>,  <37.072609, 33.081486, 43.842026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497448, 33.255054, 43.527603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716461, 33.576187, 43.433235>,  <36.847870, 33.768867, 43.376614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716461, 33.576187, 43.433235>,  <36.497448, 33.255054, 43.527603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716461, 33.576187, 43.433235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295156, -0.078525, -0.952217,
		-0.782999, 0.591007, 0.193966,
		0.547536, 0.802835, -0.235925,
		36.880722, 33.817039, 43.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031219, 33.621754, 43.130753>,  <36.497448, 33.255054, 43.527603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031219, 33.621754, 43.130753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388050, 33.780304, 43.043953>,  <36.602146, 33.875435, 42.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388050, 33.780304, 43.043953>,  <36.031219, 33.621754, 43.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388050, 33.780304, 43.043953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151256, -0.190587, -0.969948,
		-0.425824, 0.898087, -0.110063,
		0.892074, 0.396380, -0.216998,
		36.655674, 33.899220, 42.978855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880875, 34.048668, 42.545155>,  <36.031219, 33.621754, 43.130753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880875, 34.048668, 42.545155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275742, 33.984879, 42.548534>,  <36.512661, 33.946606, 42.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275742, 33.984879, 42.548534>,  <35.880875, 34.048668, 42.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275742, 33.984879, 42.548534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025247, -0.208063, -0.977790,
		0.157692, 0.965027, -0.209419,
		0.987166, -0.159477, 0.008446,
		36.571892, 33.937035, 42.551067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101788, 34.263054, 41.913280>,  <35.880875, 34.048668, 42.545155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101788, 34.263054, 41.913280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453445, 34.105602, 42.020737>,  <36.664440, 34.011131, 42.085209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453445, 34.105602, 42.020737>,  <36.101788, 34.263054, 41.913280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453445, 34.105602, 42.020737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136528, -0.332041, -0.933332,
		0.456582, 0.857209, -0.238171,
		0.879143, -0.393626, 0.268637,
		36.717190, 33.987514, 42.101326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650688, 34.516731, 41.432117>,  <36.101788, 34.263054, 41.913280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650688, 34.516731, 41.432117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785622, 34.175827, 41.592045>,  <36.866581, 33.971283, 41.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785622, 34.175827, 41.592045>,  <36.650688, 34.516731, 41.432117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785622, 34.175827, 41.592045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232364, -0.336193, -0.912678,
		0.912257, 0.400780, 0.084626,
		0.337333, -0.852261, 0.399822,
		36.886822, 33.920147, 41.711990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184116, 34.360031, 41.016197>,  <36.650688, 34.516731, 41.432117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184116, 34.360031, 41.016197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068295, 34.023735, 41.199196>,  <36.998802, 33.821957, 41.308994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068295, 34.023735, 41.199196>,  <37.184116, 34.360031, 41.016197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068295, 34.023735, 41.199196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232118, -0.525385, -0.818591,
		0.928589, -0.130836, 0.347282,
		-0.289558, -0.840745, 0.457497,
		36.981426, 33.771511, 41.336445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758202, 33.897877, 41.238712>,  <37.184116, 34.360031, 41.016197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758202, 33.897877, 41.238712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450794, 33.655106, 41.157696>,  <37.266350, 33.509445, 41.109085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450794, 33.655106, 41.157696>,  <37.758202, 33.897877, 41.238712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450794, 33.655106, 41.157696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517506, -0.403477, -0.754582,
		0.376255, -0.684725, 0.624167,
		-0.768518, -0.606925, -0.202539,
		37.220238, 33.473026, 41.096935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986450, 33.204540, 41.252254>,  <37.758202, 33.897877, 41.238712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986450, 33.204540, 41.252254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672371, 33.233616, 41.006268>,  <37.483925, 33.251060, 40.858677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672371, 33.233616, 41.006268>,  <37.986450, 33.204540, 41.252254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672371, 33.233616, 41.006268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533421, -0.425016, -0.731316,
		-0.314531, -0.902262, 0.294945,
		-0.785195, 0.072692, -0.614966,
		37.436813, 33.255424, 40.821777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889900, 32.595131, 40.918381>,  <37.986450, 33.204540, 41.252254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889900, 32.595131, 40.918381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725723, 32.858673, 40.666210>,  <37.627216, 33.016800, 40.514908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725723, 32.858673, 40.666210>,  <37.889900, 32.595131, 40.918381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725723, 32.858673, 40.666210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501661, -0.414182, -0.759467,
		-0.761495, -0.627978, -0.160527,
		-0.410442, 0.658860, -0.630429,
		37.602592, 33.056332, 40.477081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943638, 32.233776, 40.271042>,  <37.889900, 32.595131, 40.918381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943638, 32.233776, 40.271042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800789, 32.585361, 40.144623>,  <37.715080, 32.796314, 40.068771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800789, 32.585361, 40.144623>,  <37.943638, 32.233776, 40.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800789, 32.585361, 40.144623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367372, -0.178913, -0.912703,
		-0.858777, -0.442057, -0.259012,
		-0.357127, 0.878962, -0.316046,
		37.693649, 32.849049, 40.049809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569241, 32.145851, 39.576023>,  <37.943638, 32.233776, 40.271042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569241, 32.145851, 39.576023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709190, 32.519512, 39.604164>,  <37.793159, 32.743710, 39.621048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709190, 32.519512, 39.604164>,  <37.569241, 32.145851, 39.576023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709190, 32.519512, 39.604164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368529, -0.068202, -0.927111,
		-0.861262, 0.350304, -0.368123,
		0.349878, 0.934150, 0.070357,
		37.814156, 32.799759, 39.625271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489918, 32.410072, 38.829731>,  <37.569241, 32.145851, 39.576023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489918, 32.410072, 38.829731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724068, 32.664131, 39.031296>,  <37.864555, 32.816566, 39.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724068, 32.664131, 39.031296>,  <37.489918, 32.410072, 38.829731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724068, 32.664131, 39.031296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533657, 0.166060, -0.829237,
		-0.610369, 0.754327, -0.241745,
		0.585372, 0.635149, 0.503910,
		37.899681, 32.854675, 39.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515072, 32.953079, 38.446224>,  <37.489918, 32.410072, 38.829731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515072, 32.953079, 38.446224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844196, 32.990204, 38.670498>,  <38.041672, 33.012478, 38.805061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844196, 32.990204, 38.670498>,  <37.515072, 32.953079, 38.446224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844196, 32.990204, 38.670498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541872, 0.169332, -0.823226,
		-0.171350, 0.981179, 0.089035,
		0.822809, 0.092814, 0.560688,
		38.091038, 33.018047, 38.838703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818726, 33.393719, 38.163780>,  <37.515072, 32.953079, 38.446224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818726, 33.393719, 38.163780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122135, 33.256611, 38.385468>,  <38.304180, 33.174347, 38.518478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122135, 33.256611, 38.385468>,  <37.818726, 33.393719, 38.163780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122135, 33.256611, 38.385468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632647, 0.183459, -0.752396,
		0.156219, 0.921333, 0.356007,
		0.758520, -0.342765, 0.554219,
		38.349689, 33.153782, 38.551735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422817, 33.908485, 38.138813>,  <37.818726, 33.393719, 38.163780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422817, 33.908485, 38.138813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602409, 33.559353, 38.215317>,  <38.710167, 33.349873, 38.261219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602409, 33.559353, 38.215317>,  <38.422817, 33.908485, 38.138813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602409, 33.559353, 38.215317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620609, 0.150616, -0.769518,
		0.642852, 0.464200, 0.609311,
		0.448983, -0.872830, 0.191263,
		38.737103, 33.297504, 38.272697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154037, 34.069382, 38.180836>,  <38.422817, 33.908485, 38.138813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154037, 34.069382, 38.180836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111980, 33.675537, 38.124992>,  <39.086746, 33.439232, 38.091488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111980, 33.675537, 38.124992>,  <39.154037, 34.069382, 38.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111980, 33.675537, 38.124992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664448, 0.034897, -0.746519,
		0.739901, -0.171250, 0.650553,
		-0.105139, -0.984609, -0.139607,
		39.080441, 33.380154, 38.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838600, 33.838554, 38.103333>,  <39.154037, 34.069382, 38.180836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838600, 33.838554, 38.103333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633148, 33.540794, 37.932663>,  <39.509876, 33.362137, 37.830261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633148, 33.540794, 37.932663>,  <39.838600, 33.838554, 38.103333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633148, 33.540794, 37.932663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699036, -0.074692, -0.711175,
		0.497530, -0.663542, 0.558727,
		-0.513627, -0.744401, -0.426678,
		39.479061, 33.317474, 37.804661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350140, 33.322083, 38.024036>,  <39.838600, 33.838554, 38.103333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350140, 33.322083, 38.024036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050457, 33.267422, 37.764801>,  <39.870647, 33.234627, 37.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050457, 33.267422, 37.764801>,  <40.350140, 33.322083, 38.024036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050457, 33.267422, 37.764801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661434, -0.103374, -0.742846,
		0.034514, -0.985211, 0.167833,
		-0.749209, -0.136649, -0.648084,
		39.825695, 33.226429, 37.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643959, 32.840496, 37.613106>,  <40.350140, 33.322083, 38.024036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643959, 32.840496, 37.613106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348392, 33.012730, 37.405804>,  <40.171051, 33.116070, 37.281422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348392, 33.012730, 37.405804>,  <40.643959, 32.840496, 37.613106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348392, 33.012730, 37.405804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550794, -0.057027, -0.832690,
		-0.388099, -0.900746, -0.195026,
		-0.738921, 0.430586, -0.518258,
		40.126717, 33.141907, 37.250328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665485, 32.478546, 37.031334>,  <40.643959, 32.840496, 37.613106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665485, 32.478546, 37.031334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467285, 32.818626, 36.960186>,  <40.348366, 33.022675, 36.917496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467285, 32.818626, 36.960186>,  <40.665485, 32.478546, 37.031334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467285, 32.818626, 36.960186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474804, 0.093639, -0.875096,
		-0.727353, -0.518062, -0.450077,
		-0.495499, 0.850202, -0.177870,
		40.318634, 33.073689, 36.906826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247005, 32.518597, 36.435062>,  <40.665485, 32.478546, 37.031334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247005, 32.518597, 36.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366417, 32.896793, 36.487118>,  <40.438065, 33.123711, 36.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366417, 32.896793, 36.487118>,  <40.247005, 32.518597, 36.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366417, 32.896793, 36.487118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422121, -0.008509, -0.906500,
		-0.855978, 0.325545, -0.401650,
		0.298524, 0.945488, 0.130135,
		40.455975, 33.180439, 36.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917130, 32.800297, 35.911201>,  <40.247005, 32.518597, 36.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917130, 32.800297, 35.911201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249069, 32.995617, 36.019207>,  <40.448235, 33.112808, 36.084011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249069, 32.995617, 36.019207>,  <39.917130, 32.800297, 35.911201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249069, 32.995617, 36.019207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259573, 0.090527, -0.961471,
		-0.493929, 0.867969, -0.051625,
		0.829853, 0.488298, 0.270015,
		40.498024, 33.142105, 36.100212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 33.448494, 35.463669>,  <39.917130, 32.800297, 35.911201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106110, 33.448494, 35.463669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460648, 33.385925, 35.637985>,  <40.673370, 33.348385, 35.742577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460648, 33.385925, 35.637985>,  <40.106110, 33.448494, 35.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460648, 33.385925, 35.637985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455376, 0.124198, -0.881594,
		0.083776, 0.979850, 0.181314,
		0.886349, -0.156423, 0.435795,
		40.726551, 33.338997, 35.768723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598953, 34.044117, 35.208607>,  <40.106110, 33.448494, 35.463669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598953, 34.044117, 35.208607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800388, 33.718182, 35.323452>,  <40.921249, 33.522621, 35.392357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800388, 33.718182, 35.323452>,  <40.598953, 34.044117, 35.208607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800388, 33.718182, 35.323452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614619, 0.104345, -0.781892,
		0.607161, 0.570213, 0.553365,
		0.503586, -0.814843, 0.287110,
		40.951466, 33.473728, 35.409584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470974, 34.117561, 35.042244>,  <40.598953, 34.044117, 35.208607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470974, 34.117561, 35.042244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287434, 33.762199, 35.036720>,  <41.177307, 33.548981, 35.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287434, 33.762199, 35.036720>,  <41.470974, 34.117561, 35.042244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287434, 33.762199, 35.036720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270984, -0.125131, -0.954416,
		0.846179, -0.441679, 0.298161,
		-0.458855, -0.888404, -0.013805,
		41.149776, 33.495678, 35.032578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133495, 33.844517, 34.995956>,  <41.470974, 34.117561, 35.042244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133495, 33.844517, 34.995956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863907, 34.027939, 34.764267>,  <41.702156, 34.137993, 34.625252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863907, 34.027939, 34.764267>,  <42.133495, 33.844517, 34.995956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863907, 34.027939, 34.764267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061502, -0.746498, -0.662539,
		-0.736182, -0.482163, 0.474926,
		-0.673983, 0.458541, -0.579212,
		41.661716, 34.165504, 34.590500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636654, 33.314274, 34.816574>,  <42.133495, 33.844517, 34.995956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636654, 33.314274, 34.816574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701855, 33.615078, 34.561104>,  <41.740974, 33.795563, 34.407822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701855, 33.615078, 34.561104>,  <41.636654, 33.314274, 34.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701855, 33.615078, 34.561104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201076, -0.659069, -0.724705,
		-0.965918, -0.010290, -0.258644,
		0.163007, 0.752012, -0.638675,
		41.750755, 33.840683, 34.369503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293560, 33.060555, 34.165356>,  <41.636654, 33.314274, 34.816574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293560, 33.060555, 34.165356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585079, 33.326656, 34.100487>,  <41.759991, 33.486317, 34.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585079, 33.326656, 34.100487>,  <41.293560, 33.060555, 34.165356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585079, 33.326656, 34.100487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370531, -0.582318, -0.723611,
		-0.575817, 0.467276, -0.670886,
		0.728795, 0.665252, -0.162169,
		41.803719, 33.526234, 34.051838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337242, 33.188076, 33.509415>,  <41.293560, 33.060555, 34.165356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337242, 33.188076, 33.509415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711254, 33.275669, 33.620956>,  <41.935661, 33.328224, 33.687881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711254, 33.275669, 33.620956>,  <41.337242, 33.188076, 33.509415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711254, 33.275669, 33.620956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353646, -0.519703, -0.777717,
		-0.025386, 0.825806, -0.563382,
		0.935035, 0.218981, 0.278850,
		41.991764, 33.341362, 33.704613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494545, 33.467129, 32.949677>,  <41.337242, 33.188076, 33.509415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494545, 33.467129, 32.949677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822910, 33.359295, 33.151043>,  <42.019928, 33.294594, 33.271862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822910, 33.359295, 33.151043>,  <41.494545, 33.467129, 32.949677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822910, 33.359295, 33.151043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339059, -0.479252, -0.809541,
		0.459503, 0.835250, -0.302018,
		0.820911, -0.269585, 0.503417,
		42.069183, 33.278419, 33.302067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036877, 33.516243, 32.436214>,  <41.494545, 33.467129, 32.949677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036877, 33.516243, 32.436214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173969, 33.303387, 32.745888>,  <42.256226, 33.175674, 32.931694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173969, 33.303387, 32.745888>,  <42.036877, 33.516243, 32.436214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173969, 33.303387, 32.745888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400313, -0.662809, -0.632799,
		0.849874, 0.526795, -0.014141,
		0.342729, -0.532139, 0.774187,
		42.276787, 33.143745, 32.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599079, 33.304970, 32.174213>,  <42.036877, 33.516243, 32.436214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599079, 33.304970, 32.174213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517387, 33.042370, 32.464676>,  <42.468372, 32.884811, 32.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517387, 33.042370, 32.464676>,  <42.599079, 33.304970, 32.174213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517387, 33.042370, 32.464676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318243, -0.746022, -0.584955,
		0.925749, 0.111627, 0.361287,
		-0.204231, -0.656499, 0.726153,
		42.456120, 32.845421, 32.682522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298691, 32.908882, 32.295700>,  <42.599079, 33.304970, 32.174213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298691, 32.908882, 32.295700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969315, 32.707314, 32.400021>,  <42.771690, 32.586372, 32.462612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969315, 32.707314, 32.400021>,  <43.298691, 32.908882, 32.295700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969315, 32.707314, 32.400021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191936, -0.679917, -0.707724,
		0.533957, -0.532710, 0.656590,
		-0.823438, -0.503917, 0.260800,
		42.722282, 32.556137, 32.478260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492462, 32.234325, 32.021355>,  <43.298691, 32.908882, 32.295700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492462, 32.234325, 32.021355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114300, 32.160294, 32.128654>,  <42.887402, 32.115875, 32.193035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114300, 32.160294, 32.128654>,  <43.492462, 32.234325, 32.021355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114300, 32.160294, 32.128654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015998, -0.848466, -0.529008,
		0.325508, -0.495835, 0.805104,
		-0.945404, -0.185077, 0.268250,
		42.830677, 32.104771, 32.209129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403919, 31.587446, 32.464317>,  <43.492462, 32.234325, 32.021355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403919, 31.587446, 32.464317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045162, 31.647406, 32.297886>,  <42.829910, 31.683382, 32.198029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045162, 31.647406, 32.297886>,  <43.403919, 31.587446, 32.464317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045162, 31.647406, 32.297886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099377, -0.848435, -0.519887,
		-0.430943, -0.507630, 0.746057,
		-0.896890, 0.149900, -0.416074,
		42.776096, 31.692375, 32.173065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093067, 30.953974, 32.447624>,  <43.403919, 31.587446, 32.464317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093067, 30.953974, 32.447624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890396, 31.162632, 32.173061>,  <42.768791, 31.287827, 32.008324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890396, 31.162632, 32.173061>,  <43.093067, 30.953974, 32.447624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890396, 31.162632, 32.173061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002594, -0.795252, -0.606273,
		-0.862130, -0.308967, 0.401585,
		-0.506680, 0.521645, -0.686413,
		42.738392, 31.319126, 31.967138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567421, 30.545111, 32.092937>,  <43.093067, 30.953974, 32.447624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567421, 30.545111, 32.092937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588406, 30.852259, 31.837555>,  <42.600998, 31.036547, 31.684326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588406, 30.852259, 31.837555>,  <42.567421, 30.545111, 32.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588406, 30.852259, 31.837555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027615, -0.637975, -0.769561,
		-0.998241, 0.058004, -0.012266,
		0.052463, 0.767869, -0.638455,
		42.604145, 31.082619, 31.646019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220482, 30.323938, 31.531546>,  <42.567421, 30.545111, 32.092937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220482, 30.323938, 31.531546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441463, 30.621775, 31.381674>,  <42.574051, 30.800476, 31.291750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441463, 30.621775, 31.381674>,  <42.220482, 30.323938, 31.531546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441463, 30.621775, 31.381674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153653, -0.532767, -0.832196,
		-0.819261, 0.402177, -0.408736,
		0.552451, 0.744589, -0.374679,
		42.607201, 30.845152, 31.269270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889347, 30.488098, 30.905146>,  <42.220482, 30.323938, 31.531546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889347, 30.488098, 30.905146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265797, 30.623178, 30.898891>,  <42.491665, 30.704227, 30.895140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265797, 30.623178, 30.898891>,  <41.889347, 30.488098, 30.905146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265797, 30.623178, 30.898891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166387, -0.502964, -0.848141,
		-0.294284, 0.795603, -0.529540,
		0.941123, 0.337703, -0.015636,
		42.548134, 30.724489, 30.894201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981415, 30.717371, 30.212299>,  <41.889347, 30.488098, 30.905146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981415, 30.717371, 30.212299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343765, 30.657473, 30.370773>,  <42.561176, 30.621534, 30.465858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343765, 30.657473, 30.370773>,  <41.981415, 30.717371, 30.212299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343765, 30.657473, 30.370773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225984, -0.620251, -0.751146,
		0.358215, 0.769978, -0.528031,
		0.905877, -0.149745, 0.396186,
		42.615528, 30.612549, 30.489630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325470, 30.675495, 29.583986>,  <41.981415, 30.717371, 30.212299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325470, 30.675495, 29.583986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578838, 30.530420, 29.857405>,  <42.730858, 30.443375, 30.021456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578838, 30.530420, 29.857405>,  <42.325470, 30.675495, 29.583986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578838, 30.530420, 29.857405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374499, -0.629324, -0.680956,
		0.677147, 0.687319, -0.262801,
		0.633421, -0.362688, 0.683546,
		42.768864, 30.421614, 30.062468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937080, 30.676208, 29.197893>,  <42.325470, 30.675495, 29.583986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937080, 30.676208, 29.197893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996689, 30.426870, 29.504940>,  <43.032452, 30.277267, 29.689167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996689, 30.426870, 29.504940>,  <42.937080, 30.676208, 29.197893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996689, 30.426870, 29.504940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289799, -0.714667, -0.636606,
		0.945415, 0.317320, 0.074147,
		0.149018, -0.623345, 0.767616,
		43.041393, 30.239866, 29.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652641, 30.485750, 29.239494>,  <42.937080, 30.676208, 29.197893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652641, 30.485750, 29.239494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458588, 30.194954, 29.433867>,  <43.342155, 30.020475, 29.550489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458588, 30.194954, 29.433867>,  <43.652641, 30.485750, 29.239494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458588, 30.194954, 29.433867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407014, -0.679572, -0.610346,
		0.773939, -0.098322, 0.625580,
		-0.485137, -0.726991, 0.485929,
		43.313046, 29.976856, 29.579645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168896, 30.003603, 29.446608>,  <43.652641, 30.485750, 29.239494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168896, 30.003603, 29.446608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824207, 29.801077, 29.433462>,  <43.617393, 29.679562, 29.425575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824207, 29.801077, 29.433462>,  <44.168896, 30.003603, 29.446608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824207, 29.801077, 29.433462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385554, -0.611331, -0.691102,
		0.329826, -0.608208, 0.722009,
		-0.861721, -0.506317, -0.032865,
		43.565689, 29.649181, 29.423603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348667, 29.200405, 29.408340>,  <44.168896, 30.003603, 29.446608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348667, 29.200405, 29.408340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966637, 29.181604, 29.291298>,  <43.737419, 29.170324, 29.221071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966637, 29.181604, 29.291298>,  <44.348667, 29.200405, 29.408340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966637, 29.181604, 29.291298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219372, -0.775980, -0.591380,
		-0.199260, -0.629003, 0.751432,
		-0.955077, -0.047004, -0.292607,
		43.680115, 29.167503, 29.203516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143360, 28.511152, 29.508602>,  <44.348667, 29.200405, 29.408340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143360, 28.511152, 29.508602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880718, 28.658806, 29.245510>,  <43.723133, 28.747398, 29.087654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880718, 28.658806, 29.245510>,  <44.143360, 28.511152, 29.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880718, 28.658806, 29.245510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067658, -0.839708, -0.538807,
		-0.751193, -0.398285, 0.526383,
		-0.656607, 0.369134, -0.657729,
		43.683735, 28.769547, 29.048191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970097, 27.863939, 29.292831>,  <44.143360, 28.511152, 29.508602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970097, 27.863939, 29.292831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810413, 28.121389, 29.031641>,  <43.714603, 28.275860, 28.874928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810413, 28.121389, 29.031641>,  <43.970097, 27.863939, 29.292831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810413, 28.121389, 29.031641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186548, -0.640270, -0.745154,
		-0.897681, -0.419284, 0.135534,
		-0.399209, 0.643627, -0.652975,
		43.690651, 28.314478, 28.835749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486427, 27.478481, 28.978174>,  <43.970097, 27.863939, 29.292831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486427, 27.478481, 28.978174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539654, 27.792536, 28.736233>,  <43.571590, 27.980968, 28.591068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539654, 27.792536, 28.736233>,  <43.486427, 27.478481, 28.978174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539654, 27.792536, 28.736233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228138, -0.618161, -0.752217,
		-0.964492, -0.037892, -0.261379,
		0.133071, 0.785138, -0.604856,
		43.579575, 28.028078, 28.554775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030884, 27.482077, 28.422718>,  <43.486427, 27.478481, 28.978174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030884, 27.482077, 28.422718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361805, 27.678741, 28.314028>,  <43.560360, 27.796740, 28.248814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361805, 27.678741, 28.314028>,  <43.030884, 27.482077, 28.422718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361805, 27.678741, 28.314028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210683, -0.719968, -0.661255,
		-0.520749, 0.489812, -0.699217,
		0.827305, 0.491661, -0.271728,
		43.609997, 27.826241, 28.232510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987217, 27.896772, 27.755869>,  <43.030884, 27.482077, 28.422718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987217, 27.896772, 27.755869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337681, 27.728409, 27.849829>,  <43.547958, 27.627390, 27.906204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337681, 27.728409, 27.849829>,  <42.987217, 27.896772, 27.755869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337681, 27.728409, 27.849829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019485, -0.455998, -0.889767,
		0.481627, 0.784155, -0.391326,
		0.876160, -0.420911, 0.234900,
		43.600529, 27.602135, 27.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603455, 28.236885, 27.338833>,  <42.987217, 27.896772, 27.755869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603455, 28.236885, 27.338833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552074, 27.854897, 27.445810>,  <43.521248, 27.625704, 27.509996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552074, 27.854897, 27.445810>,  <43.603455, 28.236885, 27.338833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552074, 27.854897, 27.445810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533727, -0.160725, -0.830243,
		0.835845, -0.249387, -0.489050,
		-0.128449, -0.954973, 0.267446,
		43.513538, 27.568405, 27.526045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873829, 27.680779, 26.759470>,  <43.603455, 28.236885, 27.338833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873829, 27.680779, 26.759470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553249, 27.597677, 26.983799>,  <43.360901, 27.547815, 27.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553249, 27.597677, 26.983799>,  <43.873829, 27.680779, 26.759470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553249, 27.597677, 26.983799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580231, 0.042811, -0.813326,
		0.144963, -0.977244, -0.154856,
		-0.801448, -0.207755, 0.560821,
		43.312817, 27.535351, 27.152044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853882, 28.329376, 26.323257>,  <43.873829, 27.680779, 26.759470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853882, 28.329376, 26.323257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821785, 28.349873, 25.925074>,  <43.802528, 28.362171, 25.686163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821785, 28.349873, 25.925074>,  <43.853882, 28.329376, 26.323257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821785, 28.349873, 25.925074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313604, 0.949261, 0.023586,
		0.946157, -0.310286, -0.092242,
		-0.080243, 0.051243, -0.995457,
		43.797710, 28.365246, 25.626436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625019, 28.560783, 25.902670>,  <43.853882, 28.329376, 26.323257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625019, 28.560783, 25.902670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266167, 28.658278, 25.755289>,  <44.050858, 28.716774, 25.666861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266167, 28.658278, 25.755289>,  <44.625019, 28.560783, 25.902670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266167, 28.658278, 25.755289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269748, 0.962725, -0.019940,
		0.349856, -0.117278, -0.929433,
		-0.897127, 0.243736, -0.368451,
		43.997028, 28.731398, 25.644754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003338, 29.167530, 25.824793>,  <44.625019, 28.560783, 25.902670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003338, 29.167530, 25.824793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612038, 29.158712, 25.742289>,  <44.377258, 29.153421, 25.692785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612038, 29.158712, 25.742289>,  <45.003338, 29.167530, 25.824793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612038, 29.158712, 25.742289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018997, 0.999679, -0.016750,
		0.206564, -0.012467, -0.978354,
		-0.978249, -0.022046, -0.206261,
		44.318562, 29.152098, 25.680410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648552, 29.404436, 26.099691>,  <45.003338, 29.167530, 25.824793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648552, 29.404436, 26.099691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011311, 29.508324, 25.966970>,  <46.228966, 29.570656, 25.887339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011311, 29.508324, 25.966970>,  <45.648552, 29.404436, 26.099691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011311, 29.508324, 25.966970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062937, 0.862109, 0.502800,
		0.416634, -0.435103, 0.798187,
		0.906893, 0.259719, -0.331800,
		46.283379, 29.586239, 25.867430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541790, 29.844244, 26.698965>,  <45.648552, 29.404436, 26.099691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541790, 29.844244, 26.698965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638706, 30.227871, 26.640337>,  <45.696857, 30.458048, 26.605160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638706, 30.227871, 26.640337>,  <45.541790, 29.844244, 26.698965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638706, 30.227871, 26.640337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073947, 0.168888, 0.982858,
		0.967382, -0.227297, 0.111840,
		0.242289, 0.959069, -0.146571,
		45.711391, 30.515591, 26.596365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004845, 29.934532, 27.149387>,  <45.541790, 29.844244, 26.698965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004845, 29.934532, 27.149387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812477, 30.270741, 27.049595>,  <45.697056, 30.472466, 26.989719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812477, 30.270741, 27.049595>,  <46.004845, 29.934532, 27.149387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812477, 30.270741, 27.049595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017549, 0.293718, 0.955731,
		0.876590, 0.455251, -0.156004,
		-0.480919, 0.840522, -0.249481,
		45.668201, 30.522898, 26.974751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370739, 30.497786, 27.376724>,  <46.004845, 29.934532, 27.149387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370739, 30.497786, 27.376724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977081, 30.567057, 27.361395>,  <45.740887, 30.608620, 27.352198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977081, 30.567057, 27.361395>,  <46.370739, 30.497786, 27.376724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977081, 30.567057, 27.361395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020047, 0.323293, 0.946087,
		0.176231, 0.930318, -0.321638,
		-0.984145, 0.173178, -0.038324,
		45.681839, 30.619011, 27.349897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248840, 31.276226, 27.647827>,  <46.370739, 30.497786, 27.376724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248840, 31.276226, 27.647827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906918, 31.068811, 27.656059>,  <45.701763, 30.944363, 27.660997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906918, 31.068811, 27.656059>,  <46.248840, 31.276226, 27.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906918, 31.068811, 27.656059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250802, 0.447516, 0.858387,
		-0.454313, 0.728595, -0.512590,
		-0.854808, -0.518536, 0.020579,
		45.650475, 30.913250, 27.662233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666016, 31.750458, 27.557680>,  <46.248840, 31.276226, 27.647827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666016, 31.750458, 27.557680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532497, 31.428623, 27.754137>,  <45.452389, 31.235521, 27.872011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532497, 31.428623, 27.754137>,  <45.666016, 31.750458, 27.557680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532497, 31.428623, 27.754137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228550, 0.574555, 0.785908,
		-0.914520, 0.150081, -0.375671,
		-0.333793, -0.804588, 0.491141,
		45.432358, 31.187246, 27.901480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133717, 32.089470, 27.918186>,  <45.666016, 31.750458, 27.557680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133717, 32.089470, 27.918186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249748, 31.757202, 28.108280>,  <45.319366, 31.557842, 28.222336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249748, 31.757202, 28.108280>,  <45.133717, 32.089470, 27.918186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249748, 31.757202, 28.108280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108717, 0.464769, 0.878732,
		-0.950808, -0.306565, 0.044511,
		0.290076, -0.830667, 0.475236,
		45.336769, 31.508001, 28.250851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552368, 32.083126, 28.372240>,  <45.133717, 32.089470, 27.918186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552368, 32.083126, 28.372240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848755, 31.851950, 28.509029>,  <45.026588, 31.713243, 28.591103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848755, 31.851950, 28.509029>,  <44.552368, 32.083126, 28.372240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848755, 31.851950, 28.509029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266486, 0.214370, 0.939697,
		-0.616398, -0.787420, 0.004829,
		0.740971, -0.577941, 0.341974,
		45.071045, 31.678568, 28.611622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170071, 31.958052, 28.863884>,  <44.552368, 32.083126, 28.372240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170071, 31.958052, 28.863884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546761, 31.851988, 28.946686>,  <44.772774, 31.788349, 28.996367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546761, 31.851988, 28.946686>,  <44.170071, 31.958052, 28.863884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546761, 31.851988, 28.946686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101347, 0.363128, 0.926211,
		-0.320764, -0.893212, 0.315092,
		0.941721, -0.265162, 0.207003,
		44.829277, 31.772440, 29.008787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120247, 31.561731, 29.437386>,  <44.170071, 31.958052, 28.863884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120247, 31.561731, 29.437386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486313, 31.721239, 29.413845>,  <44.705952, 31.816944, 29.399721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486313, 31.721239, 29.413845>,  <44.120247, 31.561731, 29.437386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486313, 31.721239, 29.413845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084960, 0.333541, 0.938899,
		0.394039, -0.854242, 0.339123,
		0.915159, 0.398775, -0.058852,
		44.760860, 31.840870, 29.396191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532909, 31.206257, 29.937963>,  <44.120247, 31.561731, 29.437386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532909, 31.206257, 29.937963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710407, 31.560194, 29.881193>,  <44.816906, 31.772556, 29.847132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710407, 31.560194, 29.881193>,  <44.532909, 31.206257, 29.937963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710407, 31.560194, 29.881193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097768, 0.205227, 0.973819,
		0.890804, -0.418252, 0.177578,
		0.443746, 0.884843, -0.141925,
		44.843533, 31.825647, 29.838615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868465, 31.291599, 30.531073>,  <44.532909, 31.206257, 29.937963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868465, 31.291599, 30.531073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875061, 31.656296, 30.366901>,  <44.879021, 31.875114, 30.268398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875061, 31.656296, 30.366901>,  <44.868465, 31.291599, 30.531073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875061, 31.656296, 30.366901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112072, 0.409584, 0.905362,
		0.993563, 0.031065, 0.108937,
		0.016493, 0.911743, -0.410429,
		44.880009, 31.929819, 30.243773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386982, 31.584211, 30.982286>,  <44.868465, 31.291599, 30.531073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386982, 31.584211, 30.982286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208347, 31.890511, 30.797165>,  <45.101166, 32.074291, 30.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208347, 31.890511, 30.797165>,  <45.386982, 31.584211, 30.982286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208347, 31.890511, 30.797165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080260, 0.549451, 0.831662,
		0.891132, 0.334267, -0.306838,
		-0.446590, 0.765747, -0.462805,
		45.074371, 32.120235, 30.658323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869526, 32.214596, 31.141699>,  <45.386982, 31.584211, 30.982286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869526, 32.214596, 31.141699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490471, 32.306252, 31.052725>,  <45.263039, 32.361244, 30.999340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490471, 32.306252, 31.052725>,  <45.869526, 32.214596, 31.141699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490471, 32.306252, 31.052725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045775, 0.591877, 0.804727,
		0.316050, 0.772772, -0.550396,
		-0.947638, 0.229139, -0.222436,
		45.206181, 32.374992, 30.985994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856777, 32.994061, 31.333836>,  <45.869526, 32.214596, 31.141699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856777, 32.994061, 31.333836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483017, 32.854122, 31.307013>,  <45.258759, 32.770157, 31.290918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483017, 32.854122, 31.307013>,  <45.856777, 32.994061, 31.333836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483017, 32.854122, 31.307013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259397, 0.539251, 0.801200,
		-0.244139, 0.766038, -0.594628,
		-0.934403, -0.349849, -0.067055,
		45.202698, 32.749168, 31.286896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423439, 33.596481, 31.478062>,  <45.856777, 32.994061, 31.333836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423439, 33.596481, 31.478062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187283, 33.275375, 31.511547>,  <45.045589, 33.082714, 31.531639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187283, 33.275375, 31.511547>,  <45.423439, 33.596481, 31.478062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187283, 33.275375, 31.511547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398387, 0.380049, 0.834776,
		-0.701942, 0.459496, -0.544188,
		-0.590394, -0.802762, 0.083714,
		45.010162, 33.034546, 31.536661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848198, 33.833817, 31.760258>,  <45.423439, 33.596481, 31.478062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848198, 33.833817, 31.760258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803566, 33.443851, 31.837299>,  <44.776787, 33.209873, 31.883524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803566, 33.443851, 31.837299>,  <44.848198, 33.833817, 31.760258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803566, 33.443851, 31.837299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325033, 0.218958, 0.920006,
		-0.939097, 0.040056, -0.341311,
		-0.111584, -0.974912, 0.192603,
		44.770092, 33.151379, 31.895081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150322, 33.754753, 32.035789>,  <44.848198, 33.833817, 31.760258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150322, 33.754753, 32.035789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397652, 33.474674, 32.178558>,  <44.546051, 33.306625, 32.264221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397652, 33.474674, 32.178558>,  <44.150322, 33.754753, 32.035789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397652, 33.474674, 32.178558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198617, 0.300186, 0.932974,
		-0.760409, -0.647775, 0.046542,
		0.618328, -0.700197, 0.356923,
		44.583149, 33.264614, 32.285637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726650, 33.417191, 32.538399>,  <44.150322, 33.754753, 32.035789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726650, 33.417191, 32.538399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108944, 33.332687, 32.620319>,  <44.338318, 33.281986, 32.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108944, 33.332687, 32.620319>,  <43.726650, 33.417191, 32.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108944, 33.332687, 32.620319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153339, 0.236454, 0.959467,
		-0.251126, -0.948398, 0.193592,
		0.955732, -0.211262, 0.204806,
		44.395664, 33.269310, 32.681763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730881, 33.211399, 33.218063>,  <43.726650, 33.417191, 32.538399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730881, 33.211399, 33.218063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121113, 33.288761, 33.176407>,  <44.355251, 33.335178, 33.151413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121113, 33.288761, 33.176407>,  <43.730881, 33.211399, 33.218063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121113, 33.288761, 33.176407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065553, 0.196176, 0.978375,
		0.209673, -0.961302, 0.178704,
		0.975571, 0.193424, -0.104150,
		44.413784, 33.346783, 33.145164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986191, 32.899120, 33.783333>,  <43.730881, 33.211399, 33.218063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986191, 32.899120, 33.783333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249950, 33.172047, 33.657078>,  <44.408207, 33.335804, 33.581326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249950, 33.172047, 33.657078>,  <43.986191, 32.899120, 33.783333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249950, 33.172047, 33.657078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128940, 0.310982, 0.941629,
		0.740649, -0.661611, 0.117084,
		0.659403, 0.682320, -0.315637,
		44.447773, 33.376743, 33.562386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470734, 33.018627, 34.363602>,  <43.986191, 32.899120, 33.783333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470734, 33.018627, 34.363602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545208, 33.347553, 34.148521>,  <44.589893, 33.544910, 34.019474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545208, 33.347553, 34.148521>,  <44.470734, 33.018627, 34.363602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545208, 33.347553, 34.148521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085670, 0.531602, 0.842650,
		0.978772, -0.202957, 0.028530,
		0.186188, 0.822319, -0.537704,
		44.601063, 33.594250, 33.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917866, 33.500721, 34.799923>,  <44.470734, 33.018627, 34.363602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917866, 33.500721, 34.799923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786610, 33.734550, 34.503113>,  <44.707855, 33.874847, 34.325027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786610, 33.734550, 34.503113>,  <44.917866, 33.500721, 34.799923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786610, 33.734550, 34.503113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121967, 0.752721, 0.646944,
		0.936724, 0.302787, -0.175696,
		-0.328136, 0.584578, -0.742021,
		44.688168, 33.909924, 34.280506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365597, 34.141018, 34.711430>,  <44.917866, 33.500721, 34.799923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365597, 34.141018, 34.711430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992859, 34.232273, 34.598564>,  <44.769215, 34.287025, 34.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992859, 34.232273, 34.598564>,  <45.365597, 34.141018, 34.711430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992859, 34.232273, 34.598564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008943, 0.762943, 0.646404,
		0.362749, 0.604871, -0.708904,
		-0.931844, 0.228142, -0.282166,
		44.713306, 34.300716, 34.513916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870762, 34.663750, 34.900589>,  <45.365597, 34.141018, 34.711430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870762, 34.663750, 34.900589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133636, 34.844238, 35.142086>,  <46.291363, 34.952530, 35.286983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133636, 34.844238, 35.142086>,  <45.870762, 34.663750, 34.900589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133636, 34.844238, 35.142086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751008, -0.324059, -0.575302,
		-0.063941, 0.831497, -0.551838,
		0.657189, 0.451220, 0.603740,
		46.330791, 34.979603, 35.323208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294590, 35.015087, 34.462009>,  <45.870762, 34.663750, 34.900589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294590, 35.015087, 34.462009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470531, 34.889900, 34.798717>,  <46.576096, 34.814789, 35.000744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470531, 34.889900, 34.798717>,  <46.294590, 35.015087, 34.462009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470531, 34.889900, 34.798717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815833, -0.252587, -0.520208,
		0.375428, 0.915561, 0.144227,
		0.439852, -0.312966, 0.841773,
		46.602486, 34.796009, 35.051250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880959, 35.347321, 34.652126>,  <46.294590, 35.015087, 34.462009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880959, 35.347321, 34.652126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935654, 34.973164, 34.782566>,  <46.968472, 34.748669, 34.860832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935654, 34.973164, 34.782566>,  <46.880959, 35.347321, 34.652126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935654, 34.973164, 34.782566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831001, -0.070877, -0.551738,
		0.539205, 0.346433, 0.767621,
		0.136734, -0.935393, 0.326104,
		46.976673, 34.692547, 34.880398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462936, 35.313679, 35.083736>,  <46.880959, 35.347321, 34.652126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462936, 35.313679, 35.083736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399593, 34.948376, 34.933594>,  <47.361588, 34.729195, 34.843510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399593, 34.948376, 34.933594>,  <47.462936, 35.313679, 35.083736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399593, 34.948376, 34.933594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967996, -0.068629, -0.241400,
		0.194699, -0.401571, 0.894893,
		-0.158355, -0.913253, -0.375357,
		47.352085, 34.674400, 34.820988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.265553, 39.174091, 45.874035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866508, 39.162010, 45.898888>,  <35.627083, 39.154762, 45.913799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866508, 39.162010, 45.898888>,  <36.265553, 39.174091, 45.874035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866508, 39.162010, 45.898888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055251, -0.191057, -0.980023,
		0.041472, -0.981114, 0.188931,
		-0.997611, -0.030205, 0.062131,
		35.567226, 39.152950, 45.917526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015038, 38.530571, 45.629250>,  <36.265553, 39.174091, 45.874035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015038, 38.530571, 45.629250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695194, 38.766026, 45.581688>,  <35.503288, 38.907299, 45.553150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695194, 38.766026, 45.581688>,  <36.015038, 38.530571, 45.629250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695194, 38.766026, 45.581688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006018, -0.205849, -0.978565,
		-0.600497, -0.781750, 0.168140,
		-0.799604, 0.588637, -0.118908,
		35.455315, 38.942616, 45.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539791, 38.124435, 45.220280>,  <36.015038, 38.530571, 45.629250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539791, 38.124435, 45.220280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410839, 38.501804, 45.189243>,  <35.333466, 38.728226, 45.170620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410839, 38.501804, 45.189243>,  <35.539791, 38.124435, 45.220280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410839, 38.501804, 45.189243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114130, -0.120108, -0.986179,
		-0.939704, -0.309072, 0.146393,
		-0.322383, 0.943424, -0.077592,
		35.314125, 38.784832, 45.165966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779045, 38.056767, 45.022984>,  <35.539791, 38.124435, 45.220280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779045, 38.056767, 45.022984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930229, 38.410072, 44.911999>,  <35.020939, 38.622055, 44.845409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930229, 38.410072, 44.911999>,  <34.779045, 38.056767, 45.022984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930229, 38.410072, 44.911999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142121, -0.240784, -0.960117,
		-0.914847, 0.402322, 0.034523,
		0.377964, 0.883266, -0.277459,
		35.043617, 38.675053, 44.828762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403469, 38.353951, 44.469090>,  <34.779045, 38.056767, 45.022984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403469, 38.353951, 44.469090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754227, 38.538280, 44.414402>,  <34.964680, 38.648880, 44.381588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754227, 38.538280, 44.414402>,  <34.403469, 38.353951, 44.469090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754227, 38.538280, 44.414402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114354, -0.076263, -0.990509,
		-0.466882, 0.884206, -0.014177,
		0.876895, 0.460829, -0.136718,
		35.017296, 38.676529, 44.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309090, 38.891453, 43.890331>,  <34.403469, 38.353951, 44.469090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309090, 38.891453, 43.890331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701660, 38.825344, 43.929283>,  <34.937202, 38.785679, 43.952656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701660, 38.825344, 43.929283>,  <34.309090, 38.891453, 43.890331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701660, 38.825344, 43.929283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093955, -0.028435, -0.995170,
		0.167244, 0.985838, -0.012378,
		0.981428, -0.165274, 0.097380,
		34.996090, 38.775761, 43.958496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528572, 39.368267, 43.370338>,  <34.309090, 38.891453, 43.890331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528572, 39.368267, 43.370338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864639, 39.168583, 43.455105>,  <35.066280, 39.048775, 43.505966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864639, 39.168583, 43.455105>,  <34.528572, 39.368267, 43.370338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864639, 39.168583, 43.455105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093009, -0.252332, -0.963160,
		0.534289, 0.828928, -0.165572,
		0.840170, -0.499206, 0.211916,
		35.116692, 39.018822, 43.518681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078159, 39.573921, 42.799343>,  <34.528572, 39.368267, 43.370338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078159, 39.573921, 42.799343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168880, 39.217323, 42.956215>,  <35.223312, 39.003365, 43.050339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168880, 39.217323, 42.956215>,  <35.078159, 39.573921, 42.799343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168880, 39.217323, 42.956215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211824, -0.347881, -0.913296,
		0.950627, 0.290209, 0.109939,
		0.226801, -0.891492, 0.392179,
		35.236919, 38.949875, 43.073868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732365, 39.418312, 42.480644>,  <35.078159, 39.573921, 42.799343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732365, 39.418312, 42.480644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625916, 39.058273, 42.618629>,  <35.562046, 38.842251, 42.701420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625916, 39.058273, 42.618629>,  <35.732365, 39.418312, 42.480644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625916, 39.058273, 42.618629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157848, -0.393733, -0.905571,
		0.950927, -0.186542, 0.246860,
		-0.266124, -0.900098, 0.344966,
		35.546078, 38.788242, 42.722118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298824, 38.883945, 42.237164>,  <35.732365, 39.418312, 42.480644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298824, 38.883945, 42.237164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951286, 38.710163, 42.332119>,  <35.742764, 38.605896, 42.389091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951286, 38.710163, 42.332119>,  <36.298824, 38.883945, 42.237164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951286, 38.710163, 42.332119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088634, -0.608251, -0.788780,
		0.487081, -0.664289, 0.566985,
		-0.868847, -0.434454, 0.237389,
		35.690632, 38.579826, 42.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522499, 38.257568, 42.302097>,  <36.298824, 38.883945, 42.237164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522499, 38.257568, 42.302097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126175, 38.259544, 42.248043>,  <35.888378, 38.260731, 42.215611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126175, 38.259544, 42.248043>,  <36.522499, 38.257568, 42.302097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126175, 38.259544, 42.248043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097475, -0.666585, -0.739028,
		-0.093733, -0.745413, 0.659980,
		-0.990814, 0.004940, -0.135140,
		35.828930, 38.261024, 42.207500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324493, 37.570843, 42.365284>,  <36.522499, 38.257568, 42.302097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324493, 37.570843, 42.365284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049244, 37.778080, 42.162086>,  <35.884094, 37.902420, 42.040169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049244, 37.778080, 42.162086>,  <36.324493, 37.570843, 42.365284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049244, 37.778080, 42.162086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156854, -0.577347, -0.801291,
		-0.708432, -0.631073, 0.316025,
		-0.688129, 0.518090, -0.507997,
		35.842804, 37.933506, 42.009686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095455, 37.177101, 41.859341>,  <36.324493, 37.570843, 42.365284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095455, 37.177101, 41.859341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942650, 37.512245, 41.703365>,  <35.850967, 37.713333, 41.609779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942650, 37.512245, 41.703365>,  <36.095455, 37.177101, 41.859341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942650, 37.512245, 41.703365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171545, -0.350316, -0.920788,
		-0.908097, -0.418643, -0.009907,
		-0.382011, 0.837864, -0.389937,
		35.828045, 37.763603, 41.586384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743916, 36.907974, 41.354786>,  <36.095455, 37.177101, 41.859341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743916, 36.907974, 41.354786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763966, 37.293736, 41.250923>,  <35.775997, 37.525192, 41.188606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763966, 37.293736, 41.250923>,  <35.743916, 36.907974, 41.354786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763966, 37.293736, 41.250923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118089, -0.263882, -0.957299,
		-0.991737, 0.017321, -0.127112,
		0.050124, 0.964399, -0.259656,
		35.779003, 37.583054, 41.173027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434155, 36.923935, 40.707108>,  <35.743916, 36.907974, 41.354786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434155, 36.923935, 40.707108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679882, 37.239326, 40.719242>,  <35.827320, 37.428562, 40.726524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679882, 37.239326, 40.719242>,  <35.434155, 36.923935, 40.707108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679882, 37.239326, 40.719242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325019, -0.217819, -0.920281,
		-0.719010, 0.575207, -0.390079,
		0.614319, 0.788474, 0.030339,
		35.864178, 37.475868, 40.728344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360779, 37.208950, 40.007881>,  <35.434155, 36.923935, 40.707108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360779, 37.208950, 40.007881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689739, 37.388397, 40.147820>,  <35.887115, 37.496063, 40.231785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689739, 37.388397, 40.147820>,  <35.360779, 37.208950, 40.007881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689739, 37.388397, 40.147820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430464, -0.088639, -0.898245,
		-0.371955, 0.889319, -0.266010,
		0.822405, 0.448615, 0.349850,
		35.936462, 37.522980, 40.252773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663231, 37.680363, 39.471352>,  <35.360779, 37.208950, 40.007881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663231, 37.680363, 39.471352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949684, 37.596298, 39.737579>,  <36.121555, 37.545860, 39.897316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949684, 37.596298, 39.737579>,  <35.663231, 37.680363, 39.471352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949684, 37.596298, 39.737579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653852, -0.131611, -0.745088,
		0.244181, 0.968769, 0.043160,
		0.716138, -0.210157, 0.665568,
		36.164524, 37.533253, 39.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260567, 38.008801, 39.273022>,  <35.663231, 37.680363, 39.471352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260567, 38.008801, 39.273022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431152, 37.736961, 39.511776>,  <36.533504, 37.573856, 39.655029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431152, 37.736961, 39.511776>,  <36.260567, 38.008801, 39.273022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431152, 37.736961, 39.511776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711251, -0.155720, -0.685473,
		0.558793, 0.716868, 0.416954,
		0.426466, -0.679597, 0.596888,
		36.559093, 37.533081, 39.690842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941559, 38.165615, 39.196712>,  <36.260567, 38.008801, 39.273022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941559, 38.165615, 39.196712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959785, 37.802345, 39.363152>,  <36.970722, 37.584381, 39.463013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959785, 37.802345, 39.363152>,  <36.941559, 38.165615, 39.196712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959785, 37.802345, 39.363152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641273, -0.292782, -0.709258,
		0.765958, 0.299148, 0.569050,
		0.045566, -0.908179, 0.416095,
		36.973454, 37.529892, 39.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695988, 37.988323, 39.268238>,  <36.941559, 38.165615, 39.196712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695988, 37.988323, 39.268238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486069, 37.647938, 39.276737>,  <37.360119, 37.443707, 39.281837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486069, 37.647938, 39.276737>,  <37.695988, 37.988323, 39.268238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486069, 37.647938, 39.276737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606642, -0.391399, -0.691948,
		0.597137, -0.350245, 0.721634,
		-0.524799, -0.850961, 0.021246,
		37.328629, 37.392651, 39.283112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147530, 37.418106, 39.366169>,  <37.695988, 37.988323, 39.268238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147530, 37.418106, 39.366169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820820, 37.293163, 39.172131>,  <37.624794, 37.218197, 39.055706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820820, 37.293163, 39.172131>,  <38.147530, 37.418106, 39.366169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820820, 37.293163, 39.172131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575054, -0.509055, -0.640450,
		-0.046895, -0.802059, 0.595401,
		-0.816770, -0.312354, -0.485099,
		37.575790, 37.199459, 39.026600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356926, 36.761196, 39.207333>,  <38.147530, 37.418106, 39.366169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356926, 36.761196, 39.207333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057831, 36.831486, 38.951202>,  <37.878376, 36.873661, 38.797523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057831, 36.831486, 38.951202>,  <38.356926, 36.761196, 39.207333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057831, 36.831486, 38.951202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462338, -0.554379, -0.692031,
		-0.476586, -0.813503, 0.333286,
		-0.747736, 0.175721, -0.640322,
		37.833511, 36.884201, 38.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399055, 36.135334, 38.836094>,  <38.356926, 36.761196, 39.207333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399055, 36.135334, 38.836094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738560, 35.974709, 38.698490>,  <38.942265, 35.878334, 38.615929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738560, 35.974709, 38.698490>,  <38.399055, 36.135334, 38.836094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738560, 35.974709, 38.698490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433171, 0.154929, 0.887896,
		-0.303251, -0.902631, 0.305445,
		0.848765, -0.401566, -0.344011,
		38.993191, 35.854240, 38.595287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550194, 35.633595, 39.343109>,  <38.399055, 36.135334, 38.836094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550194, 35.633595, 39.343109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898918, 35.684696, 39.153954>,  <39.108150, 35.715359, 39.040459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898918, 35.684696, 39.153954>,  <38.550194, 35.633595, 39.343109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898918, 35.684696, 39.153954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482553, -0.058033, 0.873942,
		0.084208, -0.990106, -0.112243,
		0.871809, 0.127757, -0.472892,
		39.160461, 35.723022, 39.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206642, 35.041241, 39.513161>,  <38.550194, 35.633595, 39.343109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206642, 35.041241, 39.513161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359859, 35.388828, 39.387833>,  <39.451790, 35.597382, 39.312637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359859, 35.388828, 39.387833>,  <39.206642, 35.041241, 39.513161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359859, 35.388828, 39.387833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571920, 0.043260, 0.819168,
		0.725389, -0.492965, -0.480412,
		0.383038, 0.868973, -0.313317,
		39.474770, 35.649521, 39.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789848, 35.012775, 40.013165>,  <39.206642, 35.041241, 39.513161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789848, 35.012775, 40.013165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769054, 35.372280, 39.839024>,  <39.756580, 35.587982, 39.734539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769054, 35.372280, 39.839024>,  <39.789848, 35.012775, 40.013165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769054, 35.372280, 39.839024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439985, 0.411958, 0.797937,
		0.896499, -0.150068, -0.416855,
		-0.051982, 0.898760, -0.435348,
		39.753460, 35.641907, 39.708420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384880, 35.240082, 40.225609>,  <39.789848, 35.012775, 40.013165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384880, 35.240082, 40.225609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159962, 35.559708, 40.140461>,  <40.025009, 35.751484, 40.089371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159962, 35.559708, 40.140461>,  <40.384880, 35.240082, 40.225609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159962, 35.559708, 40.140461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446458, 0.510032, 0.735216,
		0.696058, 0.318372, -0.643539,
		-0.562298, 0.799066, -0.212872,
		39.991272, 35.799427, 40.076599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825768, 35.982140, 40.179943>,  <40.384880, 35.240082, 40.225609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825768, 35.982140, 40.179943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442944, 36.061264, 40.264702>,  <40.213249, 36.108738, 40.315559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442944, 36.061264, 40.264702>,  <40.825768, 35.982140, 40.179943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442944, 36.061264, 40.264702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287958, 0.564697, 0.773432,
		0.033335, 0.801241, -0.597412,
		-0.957063, 0.197812, 0.211900,
		40.155827, 36.120609, 40.328270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747959, 36.718189, 40.317726>,  <40.825768, 35.982140, 40.179943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747959, 36.718189, 40.317726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397640, 36.603458, 40.473007>,  <40.187447, 36.534618, 40.566177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397640, 36.603458, 40.473007>,  <40.747959, 36.718189, 40.317726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397640, 36.603458, 40.473007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101485, 0.676876, 0.729068,
		-0.471886, 0.677914, -0.563699,
		-0.875799, -0.286829, 0.388206,
		40.134899, 36.517410, 40.589470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418667, 37.342113, 40.597092>,  <40.747959, 36.718189, 40.317726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418667, 37.342113, 40.597092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188046, 37.056652, 40.756226>,  <40.049671, 36.885376, 40.851707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188046, 37.056652, 40.756226>,  <40.418667, 37.342113, 40.597092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188046, 37.056652, 40.756226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268077, 0.625192, 0.732987,
		-0.771826, 0.315958, -0.551774,
		-0.576558, -0.713657, 0.397838,
		40.015079, 36.842556, 40.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755932, 37.749355, 40.846912>,  <40.418667, 37.342113, 40.597092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755932, 37.749355, 40.846912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.758739, 37.397724, 41.037563>,  <39.760422, 37.186745, 41.151955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.758739, 37.397724, 41.037563>,  <39.755932, 37.749355, 40.846912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758739, 37.397724, 41.037563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349811, 0.444365, 0.824725,
		-0.936794, -0.172515, -0.304394,
		0.007015, -0.879078, 0.476627,
		39.760845, 37.133999, 41.180550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144196, 37.692841, 41.132694>,  <39.755932, 37.749355, 40.846912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144196, 37.692841, 41.132694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389622, 37.454094, 41.339493>,  <39.536877, 37.310844, 41.463570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389622, 37.454094, 41.339493>,  <39.144196, 37.692841, 41.132694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389622, 37.454094, 41.339493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313834, 0.416467, 0.853267,
		-0.724601, -0.685785, 0.068212,
		0.613565, -0.596871, 0.516995,
		39.573692, 37.275032, 41.494591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710979, 37.302559, 41.668091>,  <39.144196, 37.692841, 41.132694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710979, 37.302559, 41.668091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089607, 37.302017, 41.797092>,  <39.316784, 37.301693, 41.874493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089607, 37.302017, 41.797092>,  <38.710979, 37.302559, 41.668091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089607, 37.302017, 41.797092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311931, 0.250086, 0.916600,
		-0.081898, -0.968223, 0.236300,
		0.946569, -0.001359, 0.322500,
		39.373577, 37.301609, 41.893841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664345, 36.914902, 42.201504>,  <38.710979, 37.302559, 41.668091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664345, 36.914902, 42.201504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988762, 37.143307, 42.252342>,  <39.183411, 37.280350, 42.282845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988762, 37.143307, 42.252342>,  <38.664345, 36.914902, 42.201504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988762, 37.143307, 42.252342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443422, 0.458379, 0.770237,
		0.381559, -0.681051, 0.624965,
		0.811042, 0.571015, 0.127095,
		39.232075, 37.314613, 42.290470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841888, 36.816986, 42.899364>,  <38.664345, 36.914902, 42.201504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841888, 36.816986, 42.899364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038715, 37.144154, 42.780117>,  <39.156811, 37.340454, 42.708569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038715, 37.144154, 42.780117>,  <38.841888, 36.816986, 42.899364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038715, 37.144154, 42.780117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158951, 0.421099, 0.892979,
		0.855923, -0.392021, 0.337219,
		0.492068, 0.817922, -0.298116,
		39.186337, 37.389530, 42.690681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233818, 37.075653, 43.509953>,  <38.841888, 36.816986, 42.899364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233818, 37.075653, 43.509953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216717, 37.398853, 43.274902>,  <39.206455, 37.592773, 43.133873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216717, 37.398853, 43.274902>,  <39.233818, 37.075653, 43.509953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216717, 37.398853, 43.274902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187068, 0.571289, 0.799146,
		0.981416, 0.144095, 0.126725,
		-0.042756, 0.808001, -0.587628,
		39.203892, 37.641254, 43.098614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686398, 37.571995, 43.829838>,  <39.233818, 37.075653, 43.509953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686398, 37.571995, 43.829838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431572, 37.769520, 43.593094>,  <39.278675, 37.888035, 43.451046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431572, 37.769520, 43.593094>,  <39.686398, 37.571995, 43.829838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431572, 37.769520, 43.593094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180780, 0.650705, 0.737497,
		0.749309, 0.576831, -0.325272,
		-0.637067, 0.493810, -0.591859,
		39.240452, 37.917664, 43.415535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795490, 38.171768, 44.031883>,  <39.686398, 37.571995, 43.829838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795490, 38.171768, 44.031883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443020, 38.204746, 43.845669>,  <39.231537, 38.224533, 43.733940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443020, 38.204746, 43.845669>,  <39.795490, 38.171768, 44.031883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443020, 38.204746, 43.845669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324102, 0.611562, 0.721769,
		0.344210, 0.786890, -0.512176,
		-0.881180, 0.082443, -0.465538,
		39.178665, 38.229481, 43.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563683, 38.891144, 44.226345>,  <39.795490, 38.171768, 44.031883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563683, 38.891144, 44.226345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240765, 38.693626, 44.097073>,  <39.047012, 38.575115, 44.019508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240765, 38.693626, 44.097073>,  <39.563683, 38.891144, 44.226345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240765, 38.693626, 44.097073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532970, 0.374882, 0.758555,
		-0.253413, 0.784623, -0.565816,
		-0.807294, -0.493791, -0.323181,
		38.998577, 38.545490, 44.000118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948193, 39.292221, 44.339638>,  <39.563683, 38.891144, 44.226345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948193, 39.292221, 44.339638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798042, 38.921558, 44.347591>,  <38.707951, 38.699162, 44.352364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798042, 38.921558, 44.347591>,  <38.948193, 39.292221, 44.339638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798042, 38.921558, 44.347591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592607, 0.256445, 0.763579,
		-0.712678, 0.274843, -0.645408,
		-0.375376, -0.926659, 0.019888,
		38.685429, 38.643562, 44.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.061832, 39.312565, 44.524021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172668, 38.933041, 44.584656>,  <38.239170, 38.705326, 44.621037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172668, 38.933041, 44.584656>,  <38.061832, 39.312565, 44.524021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172668, 38.933041, 44.584656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508502, -0.010945, 0.860991,
		-0.815258, -0.315656, -0.485505,
		0.277091, -0.948811, 0.151589,
		38.255795, 38.648399, 44.630131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555626, 39.057213, 44.968307>,  <38.061832, 39.312565, 44.524021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555626, 39.057213, 44.968307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816605, 38.756050, 45.002846>,  <37.973190, 38.575352, 45.023567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816605, 38.756050, 45.002846>,  <37.555626, 39.057213, 44.968307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816605, 38.756050, 45.002846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312780, -0.163753, 0.935603,
		-0.690280, -0.637434, -0.342332,
		0.652444, -0.752903, 0.086341,
		38.012337, 38.530178, 45.028748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166058, 38.523739, 45.275623>,  <37.555626, 39.057213, 44.968307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166058, 38.523739, 45.275623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551945, 38.440399, 45.340012>,  <37.783478, 38.390396, 45.378643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551945, 38.440399, 45.340012>,  <37.166058, 38.523739, 45.275623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551945, 38.440399, 45.340012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197370, -0.167642, 0.965889,
		-0.174291, -0.963573, -0.202855,
		0.964711, -0.208383, 0.160962,
		37.841362, 38.377895, 45.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147079, 37.946873, 45.689178>,  <37.166058, 38.523739, 45.275623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147079, 37.946873, 45.689178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511742, 38.102757, 45.741348>,  <37.730537, 38.196285, 45.772648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511742, 38.102757, 45.741348>,  <37.147079, 37.946873, 45.689178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511742, 38.102757, 45.741348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023399, -0.267619, 0.963241,
		0.410288, -0.881196, -0.234857,
		0.911656, 0.389710, 0.130420,
		37.785240, 38.219669, 45.780476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565929, 37.417442, 46.028492>,  <37.147079, 37.946873, 45.689178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565929, 37.417442, 46.028492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724522, 37.775513, 46.109947>,  <37.819679, 37.990353, 46.158821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724522, 37.775513, 46.109947>,  <37.565929, 37.417442, 46.028492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724522, 37.775513, 46.109947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065669, -0.193596, 0.978881,
		0.915690, -0.401483, -0.017973,
		0.396484, 0.895171, 0.203639,
		37.843468, 38.044064, 46.171040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999191, 37.372829, 46.615875>,  <37.565929, 37.417442, 46.028492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999191, 37.372829, 46.615875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946049, 37.769283, 46.615860>,  <37.914162, 38.007156, 46.615852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946049, 37.769283, 46.615860>,  <37.999191, 37.372829, 46.615875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946049, 37.769283, 46.615860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100723, -0.013463, 0.994823,
		0.986004, 0.132176, 0.101619,
		-0.132860, 0.991135, -0.000038,
		37.906193, 38.066624, 46.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502350, 37.682491, 47.129631>,  <37.999191, 37.372829, 46.615875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502350, 37.682491, 47.129631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216320, 37.959068, 47.088493>,  <38.044704, 38.125015, 47.063808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216320, 37.959068, 47.088493>,  <38.502350, 37.682491, 47.129631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216320, 37.959068, 47.088493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158502, -0.017076, 0.987211,
		0.680846, 0.722228, 0.121806,
		-0.715071, 0.691445, -0.102849,
		38.001801, 38.166500, 47.057640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690418, 38.170574, 47.594460>,  <38.502350, 37.682491, 47.129631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690418, 38.170574, 47.594460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302891, 38.243114, 47.526928>,  <38.070374, 38.286640, 47.486408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302891, 38.243114, 47.526928>,  <38.690418, 38.170574, 47.594460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302891, 38.243114, 47.526928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114732, 0.275594, 0.954403,
		0.219609, 0.944013, -0.246194,
		-0.968818, 0.181350, -0.168831,
		38.012245, 38.297520, 47.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542931, 38.764713, 47.934940>,  <38.690418, 38.170574, 47.594460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542931, 38.764713, 47.934940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178867, 38.605801, 47.887997>,  <37.960430, 38.510452, 47.859833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178867, 38.605801, 47.887997>,  <38.542931, 38.764713, 47.934940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178867, 38.605801, 47.887997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184107, 0.134149, 0.973709,
		-0.371095, 0.907838, -0.195240,
		-0.910161, -0.397283, -0.117357,
		37.905819, 38.486614, 47.852791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011032, 39.297371, 48.284454>,  <38.542931, 38.764713, 47.934940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011032, 39.297371, 48.284454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820724, 38.946625, 48.256897>,  <37.706539, 38.736176, 48.240364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820724, 38.946625, 48.256897>,  <38.011032, 39.297371, 48.284454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820724, 38.946625, 48.256897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207626, 0.035854, 0.977551,
		-0.854715, 0.479390, -0.199120,
		-0.475767, -0.876869, -0.068889,
		37.677994, 38.683563, 48.236229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592644, 39.386845, 48.861568>,  <38.011032, 39.297371, 48.284454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592644, 39.386845, 48.861568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566380, 38.999615, 48.764812>,  <37.550621, 38.767277, 48.706757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566380, 38.999615, 48.764812>,  <37.592644, 39.386845, 48.861568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566380, 38.999615, 48.764812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093401, -0.235390, 0.967403,
		-0.993461, 0.086117, -0.074963,
		-0.065664, -0.968078, -0.241894,
		37.546680, 38.709190, 48.692245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019760, 39.254219, 49.113239>,  <37.592644, 39.386845, 48.861568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019760, 39.254219, 49.113239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206112, 38.906132, 49.049137>,  <37.317921, 38.697281, 49.010674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206112, 38.906132, 49.049137>,  <37.019760, 39.254219, 49.113239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206112, 38.906132, 49.049137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142136, -0.252358, 0.957138,
		-0.873359, -0.423131, -0.241257,
		0.465877, -0.870216, -0.160258,
		37.345875, 38.645065, 49.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653111, 38.781647, 49.524822>,  <37.019760, 39.254219, 49.113239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653111, 38.781647, 49.524822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015762, 38.619461, 49.478149>,  <37.233353, 38.522148, 49.450146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015762, 38.619461, 49.478149>,  <36.653111, 38.781647, 49.524822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015762, 38.619461, 49.478149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044451, -0.366804, 0.929236,
		-0.419576, -0.837287, -0.350579,
		0.906631, -0.405469, -0.116684,
		37.287754, 38.497822, 49.443146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611244, 38.157341, 49.825199>,  <36.653111, 38.781647, 49.524822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611244, 38.157341, 49.825199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001675, 38.243477, 49.813179>,  <37.235931, 38.295158, 49.805965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001675, 38.243477, 49.813179>,  <36.611244, 38.157341, 49.825199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001675, 38.243477, 49.813179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121319, -0.424704, 0.897167,
		0.180430, -0.879350, -0.440668,
		0.976077, 0.215337, -0.030052,
		37.294498, 38.308079, 49.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025471, 37.527374, 50.047852>,  <36.611244, 38.157341, 49.825199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025471, 37.527374, 50.047852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286819, 37.825172, 50.102730>,  <37.443630, 38.003853, 50.135658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286819, 37.825172, 50.102730>,  <37.025471, 37.527374, 50.047852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286819, 37.825172, 50.102730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202805, -0.346743, 0.915773,
		0.729366, -0.570516, -0.377540,
		0.653373, 0.744500, 0.137199,
		37.482830, 38.048523, 50.143890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545536, 37.191597, 50.335659>,  <37.025471, 37.527374, 50.047852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545536, 37.191597, 50.335659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637848, 37.570473, 50.424721>,  <37.693233, 37.797798, 50.478157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637848, 37.570473, 50.424721>,  <37.545536, 37.191597, 50.335659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637848, 37.570473, 50.424721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155856, -0.261862, 0.952438,
		0.960442, -0.185101, -0.208057,
		0.230780, 0.947188, 0.222654,
		37.707081, 37.854630, 50.491516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288216, 37.300716, 50.561119>,  <37.545536, 37.191597, 50.335659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288216, 37.300716, 50.561119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086056, 37.617237, 50.698757>,  <37.964760, 37.807152, 50.781342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086056, 37.617237, 50.698757>,  <38.288216, 37.300716, 50.561119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086056, 37.617237, 50.698757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125030, -0.327410, 0.936574,
		0.853777, 0.516369, 0.066537,
		-0.505403, 0.791306, 0.344097,
		37.934437, 37.854630, 50.801987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773319, 37.687096, 50.931194>,  <38.288216, 37.300716, 50.561119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773319, 37.687096, 50.931194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400719, 37.766247, 51.053276>,  <38.177158, 37.813736, 51.126526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400719, 37.766247, 51.053276>,  <38.773319, 37.687096, 50.931194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400719, 37.766247, 51.053276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207266, -0.400766, 0.892428,
		0.298905, 0.894557, 0.332301,
		-0.931503, 0.197876, 0.305202,
		38.121269, 37.825611, 51.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874805, 37.862507, 51.628082>,  <38.773319, 37.687096, 50.931194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874805, 37.862507, 51.628082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478447, 37.811108, 51.611977>,  <38.240631, 37.780270, 51.602314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478447, 37.811108, 51.611977>,  <38.874805, 37.862507, 51.628082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478447, 37.811108, 51.611977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011206, -0.219262, 0.975602,
		-0.134191, 0.967167, 0.215825,
		-0.990892, -0.128498, -0.040261,
		38.181179, 37.772556, 51.599899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614334, 38.102924, 52.383232>,  <38.874805, 37.862507, 51.628082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614334, 38.102924, 52.383232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313026, 37.890823, 52.227581>,  <38.132244, 37.763561, 52.134190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313026, 37.890823, 52.227581>,  <38.614334, 38.102924, 52.383232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313026, 37.890823, 52.227581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205522, -0.372248, 0.905092,
		-0.624780, 0.761751, 0.171424,
		-0.753267, -0.530252, -0.389130,
		38.087048, 37.731747, 52.110844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126480, 38.139294, 52.921234>,  <38.614334, 38.102924, 52.383232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126480, 38.139294, 52.921234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000065, 37.849144, 52.676632>,  <37.924213, 37.675053, 52.529869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000065, 37.849144, 52.676632>,  <38.126480, 38.139294, 52.921234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000065, 37.849144, 52.676632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260800, -0.553293, 0.791107,
		-0.912196, 0.409505, -0.014315,
		-0.316042, -0.725378, -0.611510,
		37.905251, 37.631531, 52.493179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400410, 37.979134, 53.038979>,  <38.126480, 38.139294, 52.921234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400410, 37.979134, 53.038979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585995, 37.655533, 52.894615>,  <37.697346, 37.461372, 52.807995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585995, 37.655533, 52.894615>,  <37.400410, 37.979134, 53.038979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585995, 37.655533, 52.894615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189522, -0.488631, 0.851658,
		-0.865345, -0.326736, -0.380029,
		0.463961, -0.809001, -0.360911,
		37.725182, 37.412834, 52.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022663, 37.229095, 52.908360>,  <37.400410, 37.979134, 53.038979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022663, 37.229095, 52.908360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392010, 37.237854, 53.061680>,  <37.613617, 37.243107, 53.153671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392010, 37.237854, 53.061680>,  <37.022663, 37.229095, 52.908360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392010, 37.237854, 53.061680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365112, -0.258623, 0.894319,
		0.118709, -0.965730, -0.230810,
		0.923364, 0.021893, 0.383301,
		37.669018, 37.244423, 53.176670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928326, 36.845448, 53.565289>,  <37.022663, 37.229095, 52.908360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928326, 36.845448, 53.565289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303867, 36.982746, 53.576187>,  <37.529190, 37.065125, 53.582726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303867, 36.982746, 53.576187>,  <36.928326, 36.845448, 53.565289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303867, 36.982746, 53.576187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007620, -0.099813, 0.994977,
		0.344242, -0.933927, -0.096325,
		0.938850, 0.343247, 0.027243,
		37.585522, 37.085720, 53.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237057, 36.938789, 53.396530>,  <36.928326, 36.845448, 53.565289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237057, 36.938789, 53.396530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899288, 36.738625, 53.472992>,  <35.696629, 36.618526, 53.518871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899288, 36.738625, 53.472992>,  <36.237057, 36.938789, 53.396530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899288, 36.738625, 53.472992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218281, -0.004447, -0.975876,
		0.489193, -0.865774, -0.105476,
		-0.844419, -0.500415, 0.191157,
		35.645962, 36.588501, 53.530338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150005, 36.275951, 52.909363>,  <36.237057, 36.938789, 53.396530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150005, 36.275951, 52.909363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804222, 36.434868, 53.032566>,  <35.596752, 36.530216, 53.106487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804222, 36.434868, 53.032566>,  <36.150005, 36.275951, 52.909363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804222, 36.434868, 53.032566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278317, 0.131993, -0.951377,
		-0.418627, -0.908151, -0.003530,
		-0.864460, 0.397289, 0.308009,
		35.544884, 36.554054, 53.124969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642872, 36.055374, 52.507015>,  <36.150005, 36.275951, 52.909363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642872, 36.055374, 52.507015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457897, 36.379238, 52.651566>,  <35.346912, 36.573559, 52.738297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457897, 36.379238, 52.651566>,  <35.642872, 36.055374, 52.507015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457897, 36.379238, 52.651566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188714, 0.308355, -0.932365,
		-0.866335, -0.499360, 0.010199,
		-0.462441, 0.809664, 0.361375,
		35.319164, 36.622139, 52.759979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002918, 36.095879, 52.185795>,  <35.642872, 36.055374, 52.507015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002918, 36.095879, 52.185795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071953, 36.473736, 52.297409>,  <35.113373, 36.700451, 52.364376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071953, 36.473736, 52.297409>,  <35.002918, 36.095879, 52.185795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071953, 36.473736, 52.297409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290542, 0.319500, -0.901945,
		-0.941169, 0.074594, 0.329601,
		0.172588, 0.944645, 0.279031,
		35.123730, 36.757130, 52.381119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440632, 36.447762, 51.836262>,  <35.002918, 36.095879, 52.185795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440632, 36.447762, 51.836262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694984, 36.731884, 51.957005>,  <34.847595, 36.902359, 52.029449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694984, 36.731884, 51.957005>,  <34.440632, 36.447762, 51.836262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694984, 36.731884, 51.957005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135049, 0.487486, -0.862623,
		-0.759881, 0.507759, 0.405909,
		0.635879, 0.710309, 0.301859,
		34.885750, 36.944977, 52.047562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077030, 37.112823, 51.921585>,  <34.440632, 36.447762, 51.836262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077030, 37.112823, 51.921585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463665, 37.152401, 51.826996>,  <34.695644, 37.176147, 51.770241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463665, 37.152401, 51.826996>,  <34.077030, 37.112823, 51.921585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463665, 37.152401, 51.826996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249697, 0.154796, -0.955871,
		-0.057976, 0.982979, 0.174331,
		0.966587, 0.098947, -0.236473,
		34.753639, 37.182087, 51.756054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062817, 37.598019, 51.424271>,  <34.077030, 37.112823, 51.921585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062817, 37.598019, 51.424271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436470, 37.465298, 51.371639>,  <34.660660, 37.385666, 51.340061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436470, 37.465298, 51.371639>,  <34.062817, 37.598019, 51.424271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436470, 37.465298, 51.371639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026917, 0.302095, -0.952898,
		0.355919, 0.893671, 0.273265,
		0.934129, -0.331799, -0.131576,
		34.716709, 37.365757, 51.332165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493328, 38.157619, 51.205318>,  <34.062817, 37.598019, 51.424271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493328, 38.157619, 51.205318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657501, 37.820015, 51.067226>,  <34.756004, 37.617451, 50.984371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657501, 37.820015, 51.067226>,  <34.493328, 38.157619, 51.205318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657501, 37.820015, 51.067226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069382, 0.406394, -0.911060,
		0.909249, 0.349973, 0.225356,
		0.410430, -0.844016, -0.345231,
		34.780632, 37.566811, 50.963657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077900, 38.409550, 50.823566>,  <34.493328, 38.157619, 51.205318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077900, 38.409550, 50.823566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041908, 38.031204, 50.698833>,  <35.020313, 37.804195, 50.623993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041908, 38.031204, 50.698833>,  <35.077900, 38.409550, 50.823566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041908, 38.031204, 50.698833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217493, 0.286884, -0.932949,
		0.971906, -0.151763, 0.179908,
		-0.089974, -0.945868, -0.311832,
		35.014915, 37.747444, 50.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690392, 38.153908, 50.500099>,  <35.077900, 38.409550, 50.823566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690392, 38.153908, 50.500099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362125, 37.975014, 50.357841>,  <35.165165, 37.867676, 50.272488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362125, 37.975014, 50.357841>,  <35.690392, 38.153908, 50.500099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362125, 37.975014, 50.357841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258055, 0.265232, -0.929010,
		0.509814, -0.854186, -0.102257,
		-0.820669, -0.447235, -0.355646,
		35.115925, 37.840843, 50.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838795, 37.530796, 49.998753>,  <35.690392, 38.153908, 50.500099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838795, 37.530796, 49.998753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479290, 37.685539, 49.916222>,  <35.263588, 37.778385, 49.866703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479290, 37.685539, 49.916222>,  <35.838795, 37.530796, 49.998753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479290, 37.685539, 49.916222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244751, 0.052246, -0.968177,
		-0.363771, -0.920657, -0.141642,
		-0.898759, 0.386861, -0.206326,
		35.209663, 37.801598, 49.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756123, 37.338505, 49.359879>,  <35.838795, 37.530796, 49.998753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756123, 37.338505, 49.359879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493767, 37.638264, 49.396126>,  <35.336353, 37.818119, 49.417873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493767, 37.638264, 49.396126>,  <35.756123, 37.338505, 49.359879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493767, 37.638264, 49.396126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056082, 0.168095, -0.984174,
		-0.752774, -0.640423, -0.152279,
		-0.655886, 0.749401, 0.090622,
		35.297001, 37.863083, 49.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340954, 37.335262, 48.672153>,  <35.756123, 37.338505, 49.359879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340954, 37.335262, 48.672153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251106, 37.690907, 48.831669>,  <35.197197, 37.904293, 48.927376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251106, 37.690907, 48.831669>,  <35.340954, 37.335262, 48.672153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251106, 37.690907, 48.831669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054038, 0.419980, -0.905923,
		-0.972947, -0.181939, -0.142381,
		-0.224620, 0.889109, 0.398786,
		35.183720, 37.957638, 48.951305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733345, 37.527271, 48.248367>,  <35.340954, 37.335262, 48.672153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733345, 37.527271, 48.248367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909447, 37.845879, 48.414131>,  <35.015106, 38.037045, 48.513588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909447, 37.845879, 48.414131>,  <34.733345, 37.527271, 48.248367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909447, 37.845879, 48.414131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012046, 0.466739, -0.884313,
		-0.897795, 0.384327, 0.215076,
		0.440250, 0.796522, 0.414407,
		35.041523, 38.084835, 48.538452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309689, 38.133934, 48.202961>,  <34.733345, 37.527271, 48.248367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309689, 38.133934, 48.202961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663948, 38.308670, 48.265957>,  <34.876503, 38.413513, 48.303753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663948, 38.308670, 48.265957>,  <34.309689, 38.133934, 48.202961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663948, 38.308670, 48.265957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071018, 0.462576, -0.883731,
		-0.458900, 0.771487, 0.440702,
		0.885645, 0.436842, 0.157487,
		34.929642, 38.439724, 48.313202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272285, 38.831562, 48.002804>,  <34.309689, 38.133934, 48.202961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272285, 38.831562, 48.002804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667835, 38.776272, 48.024792>,  <34.905167, 38.743095, 48.037983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667835, 38.776272, 48.024792>,  <34.272285, 38.831562, 48.002804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667835, 38.776272, 48.024792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121207, 0.534456, -0.836460,
		0.086244, 0.833816, 0.545264,
		0.988873, -0.138229, 0.054971,
		34.964497, 38.734802, 48.041283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629810, 39.441925, 47.857803>,  <34.272285, 38.831562, 48.002804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629810, 39.441925, 47.857803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867546, 39.144722, 47.734703>,  <35.010189, 38.966400, 47.660843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867546, 39.144722, 47.734703>,  <34.629810, 39.441925, 47.857803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867546, 39.144722, 47.734703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106461, 0.451989, -0.885648,
		0.797138, 0.493611, 0.347735,
		0.594338, -0.743003, -0.307748,
		35.045849, 38.921822, 47.642380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917179, 39.793079, 47.380196>,  <34.629810, 39.441925, 47.857803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917179, 39.793079, 47.380196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066296, 39.427551, 47.315742>,  <35.155766, 39.208233, 47.277069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066296, 39.427551, 47.315742>,  <34.917179, 39.793079, 47.380196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066296, 39.427551, 47.315742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019156, 0.166034, -0.985934,
		0.927718, 0.370632, 0.044391,
		0.372789, -0.913819, -0.161132,
		35.178131, 39.153404, 47.267403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436680, 39.899509, 46.893959>,  <34.917179, 39.793079, 47.380196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436680, 39.899509, 46.893959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338505, 39.513344, 46.858776>,  <35.279598, 39.281643, 46.837666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338505, 39.513344, 46.858776>,  <35.436680, 39.899509, 46.893959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338505, 39.513344, 46.858776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196317, 0.039350, -0.979751,
		0.949326, -0.257734, 0.179870,
		-0.245437, -0.965414, -0.087954,
		35.264874, 39.223721, 46.832390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000690, 39.625355, 46.431461>,  <35.436680, 39.899509, 46.893959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000690, 39.625355, 46.431461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677437, 39.390812, 46.409157>,  <35.483486, 39.250084, 46.395775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677437, 39.390812, 46.409157>,  <36.000690, 39.625355, 46.431461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677437, 39.390812, 46.409157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073166, -0.005998, -0.997302,
		0.584443, -0.810028, 0.047748,
		-0.808129, -0.586360, -0.055761,
		35.434998, 39.214905, 46.392429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.923557, 29.001854, 27.693747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793018, 28.716921, 27.942286>,  <43.714695, 28.545961, 28.091410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793018, 28.716921, 27.942286>,  <43.923557, 29.001854, 27.693747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793018, 28.716921, 27.942286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436150, 0.696660, 0.569595,
		-0.838610, -0.085113, -0.538042,
		-0.326352, -0.712335, 0.621348,
		43.695114, 28.503220, 28.128691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253578, 29.150187, 27.905849>,  <43.923557, 29.001854, 27.693747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253578, 29.150187, 27.905849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393280, 28.914709, 28.197456>,  <43.477100, 28.773422, 28.372419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393280, 28.914709, 28.197456>,  <43.253578, 29.150187, 27.905849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393280, 28.914709, 28.197456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470445, 0.562684, 0.679756,
		-0.810372, -0.580369, -0.080427,
		0.349255, -0.588692, 0.729015,
		43.498055, 28.738102, 28.416161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678207, 29.223322, 28.329153>,  <43.253578, 29.150187, 27.905849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678207, 29.223322, 28.329153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989025, 29.088779, 28.541971>,  <43.175514, 29.008055, 28.669662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989025, 29.088779, 28.541971>,  <42.678207, 29.223322, 28.329153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989025, 29.088779, 28.541971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282650, 0.568787, 0.772393,
		-0.562419, -0.750563, 0.346900,
		0.777042, -0.336357, 0.532043,
		43.222137, 28.987873, 28.701584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365097, 29.130585, 28.910238>,  <42.678207, 29.223322, 28.329153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365097, 29.130585, 28.910238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.753372, 29.145136, 29.005272>,  <42.986336, 29.153868, 29.062292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.753372, 29.145136, 29.005272>,  <42.365097, 29.130585, 28.910238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753372, 29.145136, 29.005272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227606, 0.456742, 0.859990,
		-0.077229, -0.888855, 0.451633,
		0.970686, 0.036378, 0.237582,
		43.044579, 29.156050, 29.076546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389759, 29.102495, 29.628300>,  <42.365097, 29.130585, 28.910238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389759, 29.102495, 29.628300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747868, 29.261076, 29.547003>,  <42.962734, 29.356224, 29.498224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747868, 29.261076, 29.547003>,  <42.389759, 29.102495, 29.628300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747868, 29.261076, 29.547003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026460, 0.408074, 0.912565,
		0.444734, -0.822372, 0.354847,
		0.895272, 0.396459, -0.203244,
		43.016449, 29.380013, 29.486031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645287, 29.154953, 30.266596>,  <42.389759, 29.102495, 29.628300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645287, 29.154953, 30.266596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859692, 29.405550, 30.040251>,  <42.988335, 29.555908, 29.904444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859692, 29.405550, 30.040251>,  <42.645287, 29.154953, 30.266596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859692, 29.405550, 30.040251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004971, 0.672618, 0.739973,
		0.844197, -0.393820, 0.363645,
		0.536010, 0.626491, -0.565864,
		43.020496, 29.593496, 29.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178482, 29.398294, 30.742956>,  <42.645287, 29.154953, 30.266596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178482, 29.398294, 30.742956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112270, 29.660143, 30.447912>,  <43.072544, 29.817253, 30.270885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112270, 29.660143, 30.447912>,  <43.178482, 29.398294, 30.742956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112270, 29.660143, 30.447912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156362, 0.721047, 0.675013,
		0.973731, 0.227068, -0.016996,
		-0.165528, 0.654623, -0.737610,
		43.062611, 29.856529, 30.226629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543839, 29.895390, 31.000122>,  <43.178482, 29.398294, 30.742956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543839, 29.895390, 31.000122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329056, 30.074913, 30.714396>,  <43.200188, 30.182627, 30.542959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329056, 30.074913, 30.714396>,  <43.543839, 29.895390, 31.000122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329056, 30.074913, 30.714396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116218, 0.799311, 0.589572,
		0.835566, 0.399591, -0.377037,
		-0.536957, 0.448808, -0.714317,
		43.167969, 30.209555, 30.500101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823723, 30.557980, 30.988491>,  <43.543839, 29.895390, 31.000122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823723, 30.557980, 30.988491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454197, 30.581045, 30.837099>,  <43.232483, 30.594885, 30.746264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454197, 30.581045, 30.837099>,  <43.823723, 30.557980, 30.988491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454197, 30.581045, 30.837099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169521, 0.824787, 0.539434,
		0.343270, 0.562496, -0.752173,
		-0.923812, 0.057662, -0.378479,
		43.177052, 30.598343, 30.723555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754932, 31.224396, 30.906389>,  <43.823723, 30.557980, 30.988491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754932, 31.224396, 30.906389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385590, 31.071468, 30.892286>,  <43.163982, 30.979712, 30.883823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.385590, 31.071468, 30.892286>,  <43.754932, 31.224396, 30.906389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385590, 31.071468, 30.892286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309840, 0.687764, 0.656490,
		-0.226740, 0.617099, -0.753510,
		-0.923357, -0.382321, -0.035259,
		43.108582, 30.956772, 30.881708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261566, 31.792334, 30.746449>,  <43.754932, 31.224396, 30.906389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261566, 31.792334, 30.746449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041172, 31.498459, 30.904764>,  <42.908936, 31.322134, 30.999754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041172, 31.498459, 30.904764>,  <43.261566, 31.792334, 30.746449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041172, 31.498459, 30.904764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385896, 0.644828, 0.659759,
		-0.739932, 0.210785, -0.638804,
		-0.550985, -0.734689, 0.395788,
		42.875877, 31.278051, 31.023500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602501, 32.015198, 30.794546>,  <43.261566, 31.792334, 30.746449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602501, 32.015198, 30.794546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618820, 31.715332, 31.058771>,  <42.628613, 31.535412, 31.217306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618820, 31.715332, 31.058771>,  <42.602501, 32.015198, 30.794546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618820, 31.715332, 31.058771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295175, 0.622562, 0.724768,
		-0.954572, -0.224547, -0.195885,
		0.040794, -0.749663, 0.660560,
		42.631058, 31.490433, 31.256939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042759, 32.077564, 31.164465>,  <42.602501, 32.015198, 30.794546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042759, 32.077564, 31.164465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275608, 31.841246, 31.387926>,  <42.415318, 31.699455, 31.522003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275608, 31.841246, 31.387926>,  <42.042759, 32.077564, 31.164465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275608, 31.841246, 31.387926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180862, 0.575771, 0.797356,
		-0.792733, -0.565197, 0.228315,
		0.582120, -0.590797, 0.558655,
		42.450245, 31.664007, 31.555523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611916, 31.946085, 31.722466>,  <42.042759, 32.077564, 31.164465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611916, 31.946085, 31.722466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980640, 31.865217, 31.854761>,  <42.201874, 31.816696, 31.934139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980640, 31.865217, 31.854761>,  <41.611916, 31.946085, 31.722466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980640, 31.865217, 31.854761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147080, 0.607002, 0.780971,
		-0.358647, -0.768554, 0.529808,
		0.921813, -0.202169, 0.330739,
		42.257183, 31.804567, 31.953983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550201, 31.881758, 32.437035>,  <41.611916, 31.946085, 31.722466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550201, 31.881758, 32.437035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937977, 31.960636, 32.378658>,  <42.170643, 32.007961, 32.343632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937977, 31.960636, 32.378658>,  <41.550201, 31.881758, 32.437035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937977, 31.960636, 32.378658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037103, 0.705900, 0.707339,
		0.242503, -0.680309, 0.691645,
		0.969441, 0.197194, -0.145941,
		42.228809, 32.019794, 32.334877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861858, 31.880722, 33.104656>,  <41.550201, 31.881758, 32.437035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861858, 31.880722, 33.104656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135857, 32.082108, 32.894016>,  <42.300255, 32.202938, 32.767632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135857, 32.082108, 32.894016>,  <41.861858, 31.880722, 33.104656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135857, 32.082108, 32.894016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067774, 0.675634, 0.734116,
		0.725388, -0.538555, 0.428684,
		0.684995, 0.503465, -0.526597,
		42.341354, 32.233147, 32.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395409, 31.951956, 33.549267>,  <41.861858, 31.880722, 33.104656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395409, 31.951956, 33.549267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.405537, 32.242767, 33.274811>,  <42.411613, 32.417255, 33.110138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.405537, 32.242767, 33.274811>,  <42.395409, 31.951956, 33.549267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405537, 32.242767, 33.274811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079085, 0.685667, 0.723606,
		0.996546, 0.035942, 0.074857,
		0.025319, 0.727027, -0.686141,
		42.413132, 32.460876, 33.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937477, 32.416439, 33.828712>,  <42.395409, 31.951956, 33.549267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937477, 32.416439, 33.828712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707134, 32.621548, 33.574013>,  <42.568928, 32.744614, 33.421192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707134, 32.621548, 33.574013>,  <42.937477, 32.416439, 33.828712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707134, 32.621548, 33.574013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023175, 0.788783, 0.614235,
		0.817220, 0.338957, -0.466112,
		-0.575860, 0.512767, -0.636753,
		42.534378, 32.775379, 33.382988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309082, 33.105194, 33.904549>,  <42.937477, 32.416439, 33.828712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309082, 33.105194, 33.904549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941086, 33.130539, 33.749836>,  <42.720287, 33.145744, 33.657009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941086, 33.130539, 33.749836>,  <43.309082, 33.105194, 33.904549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941086, 33.130539, 33.749836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213705, 0.746151, 0.630547,
		0.328546, 0.662756, -0.672914,
		-0.919993, 0.063359, -0.386779,
		42.665089, 33.149548, 33.633801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227440, 33.708935, 33.952530>,  <43.309082, 33.105194, 33.904549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227440, 33.708935, 33.952530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853085, 33.580280, 33.895039>,  <42.628471, 33.503086, 33.860542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853085, 33.580280, 33.895039>,  <43.227440, 33.708935, 33.952530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853085, 33.580280, 33.895039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343858, 0.745274, 0.571252,
		-0.076616, 0.584052, -0.808092,
		-0.935891, -0.321636, -0.143731,
		42.572319, 33.483791, 33.851921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828278, 34.333080, 33.965851>,  <43.227440, 33.708935, 33.952530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828278, 34.333080, 33.965851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539291, 34.060177, 34.010685>,  <42.365898, 33.896435, 34.037586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539291, 34.060177, 34.010685>,  <42.828278, 34.333080, 33.965851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539291, 34.060177, 34.010685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408550, 0.552041, 0.726868,
		-0.557790, 0.479344, -0.677569,
		-0.722466, -0.682261, 0.112087,
		42.322552, 33.855499, 34.044312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542034, 34.498379, 34.030403>,  <42.828278, 34.333080, 33.965851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542034, 34.498379, 34.030403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914490, 34.453716, 34.169266>,  <44.137962, 34.426918, 34.252583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914490, 34.453716, 34.169266>,  <43.542034, 34.498379, 34.030403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914490, 34.453716, 34.169266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243727, -0.517584, -0.820186,
		0.271266, 0.848316, -0.454726,
		0.931135, -0.111660, 0.347160,
		44.193829, 34.420219, 34.273415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040245, 34.682716, 33.453537>,  <43.542034, 34.498379, 34.030403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040245, 34.682716, 33.453537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265247, 34.463974, 33.701580>,  <44.400249, 34.332729, 33.850407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265247, 34.463974, 33.701580>,  <44.040245, 34.682716, 33.453537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265247, 34.463974, 33.701580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323332, -0.544788, -0.773733,
		0.760950, 0.635729, -0.129629,
		0.562504, -0.546859, 0.620108,
		44.433998, 34.299915, 33.887611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773933, 34.587143, 33.167641>,  <44.040245, 34.682716, 33.453537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773933, 34.587143, 33.167641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736015, 34.275066, 33.414970>,  <44.713264, 34.087822, 33.563366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736015, 34.275066, 33.414970>,  <44.773933, 34.587143, 33.167641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736015, 34.275066, 33.414970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246469, -0.620173, -0.744740,
		0.964504, 0.081803, 0.251079,
		-0.094791, -0.780188, 0.618321,
		44.707577, 34.041012, 33.600468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324745, 34.223259, 33.056293>,  <44.773933, 34.587143, 33.167641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324745, 34.223259, 33.056293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080772, 33.967018, 33.242889>,  <44.934387, 33.813274, 33.354847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080772, 33.967018, 33.242889>,  <45.324745, 34.223259, 33.056293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080772, 33.967018, 33.242889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192742, -0.690913, -0.696771,
		0.768658, -0.335069, 0.544880,
		-0.609931, -0.640600, 0.466493,
		44.897793, 33.774837, 33.382839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659874, 33.525604, 33.078045>,  <45.324745, 34.223259, 33.056293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659874, 33.525604, 33.078045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263592, 33.473156, 33.092476>,  <45.025822, 33.441685, 33.101135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263592, 33.473156, 33.092476>,  <45.659874, 33.525604, 33.078045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263592, 33.473156, 33.092476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059544, -0.656727, -0.751774,
		0.122267, -0.742642, 0.658433,
		-0.990710, -0.131123, 0.036076,
		44.966377, 33.433819, 33.103298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513432, 32.787155, 33.057518>,  <45.659874, 33.525604, 33.078045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513432, 32.787155, 33.057518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172775, 32.959606, 32.938293>,  <44.968384, 33.063076, 32.866760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172775, 32.959606, 32.938293>,  <45.513432, 32.787155, 33.057518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172775, 32.959606, 32.938293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024659, -0.535088, -0.844436,
		-0.523548, -0.726505, 0.445071,
		-0.851639, 0.431128, -0.298060,
		44.917286, 33.088947, 32.848873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170753, 32.206772, 32.734165>,  <45.513432, 32.787155, 33.057518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170753, 32.206772, 32.734165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973579, 32.520130, 32.582745>,  <44.855274, 32.708145, 32.491890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973579, 32.520130, 32.582745>,  <45.170753, 32.206772, 32.734165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973579, 32.520130, 32.582745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049202, -0.409292, -0.911076,
		-0.868674, -0.467728, 0.163209,
		-0.492935, 0.783397, -0.378554,
		44.825699, 32.755150, 32.469177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775333, 31.865685, 32.220104>,  <45.170753, 32.206772, 32.734165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775333, 31.865685, 32.220104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767483, 32.257797, 32.141453>,  <44.762772, 32.493065, 32.094261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767483, 32.257797, 32.141453>,  <44.775333, 31.865685, 32.220104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767483, 32.257797, 32.141453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110234, -0.197589, -0.974067,
		-0.993712, 0.002557, 0.111939,
		-0.019628, 0.980282, -0.196628,
		44.761593, 32.551880, 32.082466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165195, 32.049538, 31.798410>,  <44.775333, 31.865685, 32.220104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165195, 32.049538, 31.798410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435791, 32.336906, 31.733629>,  <44.598148, 32.509327, 31.694761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435791, 32.336906, 31.733629>,  <44.165195, 32.049538, 31.798410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435791, 32.336906, 31.733629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046397, -0.261048, -0.964210,
		-0.734987, 0.644767, -0.209930,
		0.676492, 0.718422, -0.161952,
		44.638741, 32.552433, 31.685043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917210, 32.252220, 31.165728>,  <44.165195, 32.049538, 31.798410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917210, 32.252220, 31.165728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272736, 32.431885, 31.202072>,  <44.486053, 32.539684, 31.223879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272736, 32.431885, 31.202072>,  <43.917210, 32.252220, 31.165728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272736, 32.431885, 31.202072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214459, -0.232479, -0.948663,
		-0.404981, 0.862674, -0.302958,
		0.888818, 0.449163, 0.090859,
		44.539383, 32.566635, 31.229330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037926, 32.655449, 30.593100>,  <43.917210, 32.252220, 31.165728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037926, 32.655449, 30.593100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402050, 32.584076, 30.742495>,  <44.620525, 32.541252, 30.832132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402050, 32.584076, 30.742495>,  <44.037926, 32.655449, 30.593100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402050, 32.584076, 30.742495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318378, -0.274780, -0.907266,
		0.264515, 0.944805, -0.193326,
		0.910312, -0.178435, 0.373489,
		44.675144, 32.530544, 30.854542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401455, 33.117847, 30.227835>,  <44.037926, 32.655449, 30.593100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401455, 33.117847, 30.227835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595108, 32.796246, 30.365929>,  <44.711300, 32.603283, 30.448786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595108, 32.796246, 30.365929>,  <44.401455, 33.117847, 30.227835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595108, 32.796246, 30.365929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205773, -0.278875, -0.938022,
		0.850452, 0.525171, 0.030428,
		0.484137, -0.804005, 0.345236,
		44.740349, 32.555042, 30.469500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967064, 33.111286, 29.769190>,  <44.401455, 33.117847, 30.227835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967064, 33.111286, 29.769190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947834, 32.742821, 29.923670>,  <44.936295, 32.521744, 30.016357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947834, 32.742821, 29.923670>,  <44.967064, 33.111286, 29.769190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947834, 32.742821, 29.923670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274644, -0.383935, -0.881570,
		0.960344, 0.063688, 0.271448,
		-0.048073, -0.921161, 0.386201,
		44.933411, 32.466473, 30.039530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661747, 32.799812, 29.596176>,  <44.967064, 33.111286, 29.769190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661747, 32.799812, 29.596176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381775, 32.523609, 29.669157>,  <45.213791, 32.357887, 29.712946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381775, 32.523609, 29.669157>,  <45.661747, 32.799812, 29.596176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381775, 32.523609, 29.669157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262745, -0.486495, -0.833239,
		0.664122, -0.535274, 0.521942,
		-0.699934, -0.690511, 0.182451,
		45.171795, 32.316456, 29.723892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038231, 32.234520, 29.430950>,  <45.661747, 32.799812, 29.596176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038231, 32.234520, 29.430950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653679, 32.124901, 29.420824>,  <45.422947, 32.059132, 29.414749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653679, 32.124901, 29.420824>,  <46.038231, 32.234520, 29.430950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653679, 32.124901, 29.420824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217121, -0.698723, -0.681649,
		0.169116, -0.660822, 0.731241,
		-0.961384, -0.274045, -0.025313,
		45.365265, 32.042686, 29.413231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046947, 31.482632, 29.459364>,  <46.038231, 32.234520, 29.430950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046947, 31.482632, 29.459364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698395, 31.589756, 29.294935>,  <45.489265, 31.654030, 29.196278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698395, 31.589756, 29.294935>,  <46.046947, 31.482632, 29.459364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698395, 31.589756, 29.294935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088466, -0.738366, -0.668572,
		-0.482570, -0.618944, 0.619704,
		-0.871378, 0.267810, -0.411070,
		45.436981, 31.670099, 29.171614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735146, 30.840809, 29.355270>,  <46.046947, 31.482632, 29.459364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735146, 30.840809, 29.355270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539330, 31.086445, 29.107643>,  <45.421841, 31.233826, 28.959066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539330, 31.086445, 29.107643>,  <45.735146, 30.840809, 29.355270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539330, 31.086445, 29.107643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083835, -0.673519, -0.734400,
		-0.867941, -0.411418, 0.278233,
		-0.489540, 0.614091, -0.619066,
		45.392467, 31.270672, 28.921923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425095, 30.431767, 28.982388>,  <45.735146, 30.840809, 29.355270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425095, 30.431767, 28.982388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343952, 30.753233, 28.758612>,  <45.295265, 30.946112, 28.624346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343952, 30.753233, 28.758612>,  <45.425095, 30.431767, 28.982388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343952, 30.753233, 28.758612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119609, -0.587377, -0.800426,
		-0.971876, -0.095457, 0.215278,
		-0.202855, 0.803664, -0.559441,
		45.283096, 30.994331, 28.590780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911247, 30.144255, 28.424858>,  <45.425095, 30.431767, 28.982388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911247, 30.144255, 28.424858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077194, 30.479322, 28.282763>,  <45.176762, 30.680363, 28.197504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077194, 30.479322, 28.282763>,  <44.911247, 30.144255, 28.424858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077194, 30.479322, 28.282763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047265, -0.370057, -0.927806,
		-0.908655, 0.401703, -0.113931,
		0.414864, 0.837670, -0.355240,
		45.201653, 30.730623, 28.176189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548508, 30.178999, 27.786392>,  <44.911247, 30.144255, 28.424858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548508, 30.178999, 27.786392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874878, 30.406691, 27.745911>,  <45.070702, 30.543306, 27.721621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874878, 30.406691, 27.745911>,  <44.548508, 30.178999, 27.786392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874878, 30.406691, 27.745911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020945, -0.145832, -0.989088,
		-0.577778, 0.809141, -0.107065,
		0.815925, 0.569231, -0.101206,
		45.119656, 30.577459, 27.715549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385723, 30.719349, 27.265310>,  <44.548508, 30.178999, 27.786392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385723, 30.719349, 27.265310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784073, 30.699259, 27.295538>,  <45.023083, 30.687204, 27.313675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784073, 30.699259, 27.295538>,  <44.385723, 30.719349, 27.265310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784073, 30.699259, 27.295538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065272, -0.181998, -0.981130,
		0.063030, 0.982015, -0.177969,
		0.995875, -0.050224, 0.075569,
		45.082836, 30.684191, 27.318209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.356190, 38.039532, 42.447166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028973, 37.811264, 42.418461>,  <39.832642, 37.674305, 42.401237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028973, 37.811264, 42.418461>,  <40.356190, 38.039532, 42.447166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028973, 37.811264, 42.418461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442477, -0.544687, -0.712412,
		0.367460, -0.614536, 0.698082,
		-0.818039, -0.570668, -0.071768,
		39.783562, 37.640064, 42.396931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595730, 37.302738, 42.336430>,  <40.356190, 38.039532, 42.447166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595730, 37.302738, 42.336430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222553, 37.325211, 42.194180>,  <39.998650, 37.338696, 42.108829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222553, 37.325211, 42.194180>,  <40.595730, 37.302738, 42.336430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222553, 37.325211, 42.194180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260987, -0.574888, -0.775493,
		-0.248014, -0.816301, 0.521673,
		-0.932939, 0.056183, -0.355624,
		39.942673, 37.342064, 42.087494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436222, 36.535812, 42.188675>,  <40.595730, 37.302738, 42.336430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436222, 36.535812, 42.188675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157524, 36.745144, 41.992439>,  <39.990307, 36.870743, 41.874699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157524, 36.745144, 41.992439>,  <40.436222, 36.535812, 42.188675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157524, 36.745144, 41.992439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140922, -0.570725, -0.808959,
		-0.703343, -0.632770, 0.323900,
		-0.696742, 0.523331, -0.490586,
		39.948502, 36.902142, 41.845264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768997, 36.139889, 41.980442>,  <40.436222, 36.535812, 42.188675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768997, 36.139889, 41.980442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803631, 36.439854, 41.718102>,  <39.824409, 36.619831, 41.560699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803631, 36.439854, 41.718102>,  <39.768997, 36.139889, 41.980442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803631, 36.439854, 41.718102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160817, -0.639165, -0.752067,
		-0.983179, 0.170589, 0.065256,
		0.086585, 0.749911, -0.655848,
		39.829605, 36.664825, 41.521347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353699, 35.907276, 41.481693>,  <39.768997, 36.139889, 41.980442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353699, 35.907276, 41.481693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538536, 36.200165, 41.281563>,  <39.649437, 36.375896, 41.161484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538536, 36.200165, 41.281563>,  <39.353699, 35.907276, 41.481693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538536, 36.200165, 41.281563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, -0.540221, -0.839833,
		-0.885228, 0.414751, -0.210601,
		0.462092, 0.732218, -0.500327,
		39.677162, 36.419830, 41.131466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956547, 36.120274, 40.918266>,  <39.353699, 35.907276, 41.481693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956547, 36.120274, 40.918266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326801, 36.238113, 40.823261>,  <39.548954, 36.308819, 40.766258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326801, 36.238113, 40.823261>,  <38.956547, 36.120274, 40.918266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326801, 36.238113, 40.823261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084964, -0.449830, -0.889064,
		-0.368759, 0.843127, -0.391347,
		0.925634, 0.294600, -0.237514,
		39.604492, 36.326492, 40.752007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874653, 36.572742, 40.321590>,  <38.956547, 36.120274, 40.918266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874653, 36.572742, 40.321590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249836, 36.434658, 40.334637>,  <39.474945, 36.351807, 40.342464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249836, 36.434658, 40.334637>,  <38.874653, 36.572742, 40.321590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249836, 36.434658, 40.334637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138561, -0.459384, -0.877363,
		0.317861, 0.818410, -0.478716,
		0.937958, -0.345211, 0.032620,
		39.531223, 36.331097, 40.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257908, 36.856754, 39.799919>,  <38.874653, 36.572742, 40.321590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257908, 36.856754, 39.799919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479233, 36.528736, 39.858387>,  <39.612026, 36.331924, 39.893467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479233, 36.528736, 39.858387>,  <39.257908, 36.856754, 39.799919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479233, 36.528736, 39.858387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222886, -0.314841, -0.922603,
		0.802600, 0.477909, -0.356983,
		0.553313, -0.820048, 0.146172,
		39.645226, 36.282722, 39.902237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637566, 36.824482, 39.191216>,  <39.257908, 36.856754, 39.799919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637566, 36.824482, 39.191216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660130, 36.458488, 39.351028>,  <39.673668, 36.238892, 39.446915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660130, 36.458488, 39.351028>,  <39.637566, 36.824482, 39.191216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660130, 36.458488, 39.351028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085388, -0.403125, -0.911153,
		0.994749, 0.017286, -0.100870,
		0.056413, -0.914982, 0.399532,
		39.677052, 36.183994, 39.470886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165104, 36.570862, 38.701370>,  <39.637566, 36.824482, 39.191216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165104, 36.570862, 38.701370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943100, 36.296074, 38.889000>,  <39.809898, 36.131203, 39.001579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943100, 36.296074, 38.889000>,  <40.165104, 36.570862, 38.701370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943100, 36.296074, 38.889000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159237, -0.465734, -0.870480,
		0.816460, -0.557820, 0.149096,
		-0.555010, -0.686971, 0.469079,
		39.776596, 36.089981, 39.029724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271915, 35.933170, 38.351948>,  <40.165104, 36.570862, 38.701370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271915, 35.933170, 38.351948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935863, 35.869328, 38.559296>,  <39.734234, 35.831024, 38.683704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935863, 35.869328, 38.559296>,  <40.271915, 35.933170, 38.351948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935863, 35.869328, 38.559296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449331, -0.330488, -0.829988,
		0.303787, -0.930217, 0.205936,
		-0.840128, -0.159606, 0.518373,
		39.683826, 35.821445, 38.714809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120163, 35.259022, 38.190327>,  <40.271915, 35.933170, 38.351948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120163, 35.259022, 38.190327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780586, 35.446831, 38.287365>,  <39.576839, 35.559517, 38.345589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780586, 35.446831, 38.287365>,  <40.120163, 35.259022, 38.190327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780586, 35.446831, 38.287365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475621, -0.478635, -0.738033,
		-0.230414, -0.741925, 0.629648,
		-0.848937, 0.469526, 0.242591,
		39.525906, 35.587688, 38.360142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439316, 35.267921, 37.523533>,  <40.120163, 35.259022, 38.190327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439316, 35.267921, 37.523533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243660, 34.973362, 37.710495>,  <40.126266, 34.796627, 37.822674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243660, 34.973362, 37.710495>,  <40.439316, 35.267921, 37.523533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243660, 34.973362, 37.710495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804762, 0.174410, -0.567397,
		0.336309, -0.653683, -0.677934,
		-0.489136, -0.736396, 0.467404,
		40.096920, 34.752445, 37.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216125, 34.719101, 37.080105>,  <40.439316, 35.267921, 37.523533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216125, 34.719101, 37.080105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957718, 34.744724, 37.384354>,  <39.802673, 34.760098, 37.566902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957718, 34.744724, 37.384354>,  <40.216125, 34.719101, 37.080105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957718, 34.744724, 37.384354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732942, 0.226255, -0.641565,
		-0.213197, -0.971959, -0.099209,
		-0.646021, 0.064065, 0.760626,
		39.763912, 34.763943, 37.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673969, 34.193607, 36.756638>,  <40.216125, 34.719101, 37.080105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673969, 34.193607, 36.756638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847149, 33.833557, 36.775902>,  <39.951057, 33.617527, 36.787460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847149, 33.833557, 36.775902>,  <39.673969, 34.193607, 36.756638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847149, 33.833557, 36.775902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634965, -0.266614, 0.725077,
		-0.639823, -0.344503, -0.686982,
		0.432950, -0.900131, 0.048162,
		39.977036, 33.563519, 36.790352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155571, 33.683983, 36.584393>,  <39.673969, 34.193607, 36.756638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155571, 33.683983, 36.584393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455158, 33.514877, 36.788475>,  <39.634911, 33.413414, 36.910927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455158, 33.514877, 36.788475>,  <39.155571, 33.683983, 36.584393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455158, 33.514877, 36.788475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651679, -0.330747, 0.682584,
		-0.119819, -0.843729, -0.523225,
		0.748971, -0.422761, 0.510211,
		39.679848, 33.388050, 36.941540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007557, 32.927345, 36.674839>,  <39.155571, 33.683983, 36.584393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007557, 32.927345, 36.674839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251369, 33.035892, 36.972786>,  <39.397659, 33.101021, 37.151554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251369, 33.035892, 36.972786>,  <39.007557, 32.927345, 36.674839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251369, 33.035892, 36.972786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715420, -0.216485, 0.664311,
		0.341529, -0.937812, 0.062191,
		0.609535, 0.271373, 0.744865,
		39.434231, 33.117306, 37.196247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780361, 32.393875, 37.245583>,  <39.007557, 32.927345, 36.674839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780361, 32.393875, 37.245583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993916, 32.679958, 37.425999>,  <39.122047, 32.851608, 37.534248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993916, 32.679958, 37.425999>,  <38.780361, 32.393875, 37.245583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993916, 32.679958, 37.425999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534777, -0.127585, 0.835306,
		0.654963, -0.687168, 0.314361,
		0.533888, 0.715208, 0.451045,
		39.154083, 32.894520, 37.561314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925488, 32.102898, 37.892700>,  <38.780361, 32.393875, 37.245583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925488, 32.102898, 37.892700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998692, 32.488289, 37.970894>,  <39.042614, 32.719524, 38.017811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998692, 32.488289, 37.970894>,  <38.925488, 32.102898, 37.892700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998692, 32.488289, 37.970894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390806, -0.111158, 0.913736,
		0.902096, -0.243620, 0.356190,
		0.183011, 0.963479, 0.195484,
		39.053596, 32.777332, 38.029537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297180, 32.204430, 38.510216>,  <38.925488, 32.102898, 37.892700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297180, 32.204430, 38.510216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106609, 32.554169, 38.473274>,  <38.992268, 32.764011, 38.451111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106609, 32.554169, 38.473274>,  <39.297180, 32.204430, 38.510216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106609, 32.554169, 38.473274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251097, -0.034644, 0.967342,
		0.842596, 0.484058, 0.236052,
		-0.476427, 0.874350, -0.092355,
		38.963680, 32.816475, 38.445568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409798, 32.665020, 39.198792>,  <39.297180, 32.204430, 38.510216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409798, 32.665020, 39.198792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095173, 32.825798, 39.011276>,  <38.906399, 32.922264, 38.898766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095173, 32.825798, 39.011276>,  <39.409798, 32.665020, 39.198792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095173, 32.825798, 39.011276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489451, 0.057071, 0.870161,
		0.376508, 0.913885, 0.151841,
		-0.786561, 0.401941, -0.468790,
		38.859203, 32.946381, 38.870640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122616, 33.158733, 39.611221>,  <39.409798, 32.665020, 39.198792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122616, 33.158733, 39.611221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810852, 33.125477, 39.362835>,  <38.623795, 33.105522, 39.213802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810852, 33.125477, 39.362835>,  <39.122616, 33.158733, 39.611221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810852, 33.125477, 39.362835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621187, 0.231489, 0.748692,
		0.081501, 0.969278, -0.232071,
		-0.779413, -0.083141, -0.620970,
		38.577026, 33.100536, 39.176544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726082, 33.723434, 39.669815>,  <39.122616, 33.158733, 39.611221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726082, 33.723434, 39.669815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479652, 33.433773, 39.545841>,  <38.331795, 33.259975, 39.471455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479652, 33.433773, 39.545841>,  <38.726082, 33.723434, 39.669815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479652, 33.433773, 39.545841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673454, 0.280153, 0.684086,
		-0.408551, 0.630176, -0.660276,
		-0.616073, -0.724149, -0.309938,
		38.294830, 33.216530, 39.452858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042637, 34.076363, 39.588299>,  <38.726082, 33.723434, 39.669815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042637, 34.076363, 39.588299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986336, 33.680927, 39.609791>,  <37.952557, 33.443668, 39.622684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986336, 33.680927, 39.609791>,  <38.042637, 34.076363, 39.588299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986336, 33.680927, 39.609791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651591, 0.133355, 0.746756,
		-0.745398, 0.070096, -0.662924,
		-0.140749, -0.988586, 0.053728,
		37.944111, 33.384350, 39.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333866, 34.105648, 39.781212>,  <38.042637, 34.076363, 39.588299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333866, 34.105648, 39.781212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437469, 33.724621, 39.845119>,  <37.499630, 33.496006, 39.883465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437469, 33.724621, 39.845119>,  <37.333866, 34.105648, 39.781212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437469, 33.724621, 39.845119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544360, -0.007325, 0.838820,
		-0.797864, -0.304234, -0.520438,
		0.259009, -0.952569, 0.159768,
		37.515171, 33.438850, 39.893051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768162, 33.779854, 39.803577>,  <37.333866, 34.105648, 39.781212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768162, 33.779854, 39.803577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048546, 33.563747, 39.989811>,  <37.216774, 33.434082, 40.101551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048546, 33.563747, 39.989811>,  <36.768162, 33.779854, 39.803577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048546, 33.563747, 39.989811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515490, 0.067354, 0.854244,
		-0.492880, -0.838793, -0.231290,
		0.700956, -0.540268, 0.465587,
		37.258831, 33.401669, 40.129486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395641, 33.188202, 40.074749>,  <36.768162, 33.779854, 39.803577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395641, 33.188202, 40.074749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714554, 33.238300, 40.310940>,  <36.905899, 33.268360, 40.452652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714554, 33.238300, 40.310940>,  <36.395641, 33.188202, 40.074749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714554, 33.238300, 40.310940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597270, 0.022268, 0.801731,
		0.087265, -0.991876, 0.092560,
		0.797279, 0.125246, 0.590474,
		36.953739, 33.275875, 40.488083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250427, 32.725597, 40.490181>,  <36.395641, 33.188202, 40.074749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250427, 32.725597, 40.490181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507496, 32.979733, 40.661446>,  <36.661736, 33.132214, 40.764206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507496, 32.979733, 40.661446>,  <36.250427, 32.725597, 40.490181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507496, 32.979733, 40.661446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585557, 0.046936, 0.809271,
		0.494064, -0.770807, 0.402191,
		0.642669, 0.635337, 0.428163,
		36.700298, 33.170334, 40.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107075, 32.292423, 41.160091>,  <36.250427, 32.725597, 40.490181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107075, 32.292423, 41.160091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760025, 32.138050, 41.285492>,  <35.551796, 32.045425, 41.360733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760025, 32.138050, 41.285492>,  <36.107075, 32.292423, 41.160091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760025, 32.138050, 41.285492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421429, 0.236187, -0.875564,
		0.263863, -0.891781, -0.367565,
		-0.867625, -0.385932, 0.313502,
		35.499737, 32.022270, 41.379543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867493, 31.785976, 40.704952>,  <36.107075, 32.292423, 41.160091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867493, 31.785976, 40.704952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521641, 31.902252, 40.868866>,  <35.314129, 31.972017, 40.967213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521641, 31.902252, 40.868866>,  <35.867493, 31.785976, 40.704952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521641, 31.902252, 40.868866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389057, 0.128684, -0.912182,
		-0.317894, -0.948125, 0.001831,
		-0.864627, 0.290689, 0.409782,
		35.262253, 31.989458, 40.991802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288948, 31.456835, 40.201561>,  <35.867493, 31.785976, 40.704952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288948, 31.456835, 40.201561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139210, 31.773596, 40.394539>,  <35.049366, 31.963654, 40.510326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139210, 31.773596, 40.394539>,  <35.288948, 31.456835, 40.201561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139210, 31.773596, 40.394539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302838, 0.387344, -0.870778,
		-0.876446, -0.472072, 0.094820,
		-0.374342, 0.791905, 0.482447,
		35.026909, 32.011166, 40.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648350, 31.557413, 39.948273>,  <35.288948, 31.456835, 40.201561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648350, 31.557413, 39.948273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732323, 31.920168, 40.094418>,  <34.782707, 32.137821, 40.182102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732323, 31.920168, 40.094418>,  <34.648350, 31.557413, 39.948273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732323, 31.920168, 40.094418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355686, 0.418918, -0.835461,
		-0.910724, 0.045434, 0.410509,
		0.209928, 0.906887, 0.365358,
		34.795300, 32.192234, 40.204025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062260, 32.043106, 39.732014>,  <34.648350, 31.557413, 39.948273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062260, 32.043106, 39.732014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342270, 32.306873, 39.841648>,  <34.510277, 32.465134, 39.907429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342270, 32.306873, 39.841648>,  <34.062260, 32.043106, 39.732014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342270, 32.306873, 39.841648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274546, 0.602829, -0.749147,
		-0.659230, 0.449176, 0.603040,
		0.700028, 0.659423, 0.274084,
		34.552277, 32.504700, 39.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725975, 32.625710, 39.662128>,  <34.062260, 32.043106, 39.732014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725975, 32.625710, 39.662128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109623, 32.735874, 39.688148>,  <34.339813, 32.801975, 39.703762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109623, 32.735874, 39.688148>,  <33.725975, 32.625710, 39.662128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109623, 32.735874, 39.688148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149558, 0.688452, -0.709695,
		-0.240243, 0.670955, 0.701500,
		0.959122, 0.275414, 0.065049,
		34.397358, 32.818497, 39.707664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618023, 33.312084, 39.783295>,  <33.725975, 32.625710, 39.662128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618023, 33.312084, 39.783295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988373, 33.271557, 39.637703>,  <34.210583, 33.247242, 39.550346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988373, 33.271557, 39.637703>,  <33.618023, 33.312084, 39.783295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988373, 33.271557, 39.637703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156448, 0.774090, -0.613440,
		0.343907, 0.624916, 0.700863,
		0.925879, -0.101317, -0.363982,
		34.266136, 33.241161, 39.528507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820629, 33.949612, 39.593693>,  <33.618023, 33.312084, 39.783295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820629, 33.949612, 39.593693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102589, 33.765457, 39.377853>,  <34.271763, 33.654964, 39.248352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102589, 33.765457, 39.377853>,  <33.820629, 33.949612, 39.593693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102589, 33.765457, 39.377853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049348, 0.727059, -0.684799,
		0.707590, 0.509342, 0.489784,
		0.704899, -0.460387, -0.539594,
		34.314056, 33.627342, 39.215977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227726, 34.449532, 39.353046>,  <33.820629, 33.949612, 39.593693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227726, 34.449532, 39.353046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290447, 34.135334, 39.113575>,  <34.328079, 33.946815, 38.969891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290447, 34.135334, 39.113575>,  <34.227726, 34.449532, 39.353046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290447, 34.135334, 39.113575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178876, 0.618740, -0.764960,
		0.971297, 0.012856, 0.237523,
		0.156800, -0.785491, -0.598681,
		34.337486, 33.899689, 38.933971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852009, 34.485233, 39.087029>,  <34.227726, 34.449532, 39.353046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852009, 34.485233, 39.087029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638313, 34.272762, 38.823990>,  <34.510094, 34.145279, 38.666168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638313, 34.272762, 38.823990>,  <34.852009, 34.485233, 39.087029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638313, 34.272762, 38.823990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046865, 0.758106, -0.650446,
		0.844031, -0.378315, -0.380119,
		-0.534243, -0.531182, -0.657594,
		34.478039, 34.113407, 38.626713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147789, 34.710278, 38.428444>,  <34.852009, 34.485233, 39.087029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147789, 34.710278, 38.428444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796173, 34.548260, 38.327858>,  <34.585205, 34.451050, 38.267506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796173, 34.548260, 38.327858>,  <35.147789, 34.710278, 38.428444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796173, 34.548260, 38.327858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022261, 0.561748, -0.827009,
		0.476231, -0.721375, -0.502815,
		-0.879039, -0.405040, -0.251464,
		34.532463, 34.426746, 38.252419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153957, 34.553009, 37.722111>,  <35.147789, 34.710278, 38.428444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153957, 34.553009, 37.722111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768852, 34.590904, 37.823387>,  <34.537788, 34.613640, 37.884151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768852, 34.590904, 37.823387>,  <35.153957, 34.553009, 37.722111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768852, 34.590904, 37.823387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142761, 0.617159, -0.773779,
		-0.229568, -0.781114, -0.580655,
		-0.962766, 0.094740, 0.253193,
		34.480022, 34.619328, 37.899345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.307972, 31.335300, 44.705341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939705, 31.457165, 44.802952>,  <35.718742, 31.530283, 44.861519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939705, 31.457165, 44.802952>,  <36.307972, 31.335300, 44.705341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939705, 31.457165, 44.802952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310561, -0.192999, -0.930754,
		-0.236476, -0.932700, 0.272306,
		-0.920669, 0.304669, 0.244020,
		35.663502, 31.548563, 44.876160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816853, 30.763081, 44.438568>,  <36.307972, 31.335300, 44.705341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816853, 30.763081, 44.438568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588856, 31.085285, 44.503395>,  <35.452057, 31.278608, 44.542290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588856, 31.085285, 44.503395>,  <35.816853, 30.763081, 44.438568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588856, 31.085285, 44.503395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344047, -0.054859, -0.937348,
		-0.746154, -0.590036, 0.308403,
		-0.569988, 0.805511, 0.162067,
		35.417858, 31.326939, 44.552013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140900, 30.616329, 44.207024>,  <35.816853, 30.763081, 44.438568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140900, 30.616329, 44.207024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196121, 31.012444, 44.213600>,  <35.229256, 31.250113, 44.217545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196121, 31.012444, 44.213600>,  <35.140900, 30.616329, 44.207024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196121, 31.012444, 44.213600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448379, 0.077294, -0.890495,
		-0.883118, 0.115567, 0.454695,
		0.138058, 0.990288, 0.016442,
		35.237537, 31.309530, 44.218533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562660, 30.927814, 43.876270>,  <35.140900, 30.616329, 44.207024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562660, 30.927814, 43.876270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833744, 31.221745, 43.865383>,  <34.996395, 31.398102, 43.858849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833744, 31.221745, 43.865383>,  <34.562660, 30.927814, 43.876270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833744, 31.221745, 43.865383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144338, 0.096639, -0.984798,
		-0.721022, 0.671339, 0.171556,
		0.677712, 0.734823, -0.027221,
		35.037056, 31.442192, 43.857216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271015, 31.494534, 43.406452>,  <34.562660, 30.927814, 43.876270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271015, 31.494534, 43.406452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665722, 31.551765, 43.436970>,  <34.902546, 31.586105, 43.455280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665722, 31.551765, 43.436970>,  <34.271015, 31.494534, 43.406452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665722, 31.551765, 43.436970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016347, 0.380314, -0.924713,
		-0.161322, 0.913723, 0.372943,
		0.986766, 0.143080, 0.076290,
		34.961750, 31.594690, 43.459858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322636, 32.102024, 43.118061>,  <34.271015, 31.494534, 43.406452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322636, 32.102024, 43.118061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697231, 31.962761, 43.101196>,  <34.921989, 31.879202, 43.091076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697231, 31.962761, 43.101196>,  <34.322636, 32.102024, 43.118061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697231, 31.962761, 43.101196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104987, 0.393022, -0.913516,
		0.334622, 0.851069, 0.404612,
		0.936486, -0.348161, -0.042163,
		34.978176, 31.858313, 43.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606522, 32.648464, 42.572124>,  <34.322636, 32.102024, 43.118061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606522, 32.648464, 42.572124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.858833, 32.343044, 42.627434>,  <35.010220, 32.159794, 42.660622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.858833, 32.343044, 42.627434>,  <34.606522, 32.648464, 42.572124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858833, 32.343044, 42.627434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349990, 0.120907, -0.928918,
		0.692553, 0.634334, 0.343498,
		0.630776, -0.763545, 0.138276,
		35.048065, 32.113979, 42.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217587, 32.861973, 42.416061>,  <34.606522, 32.648464, 42.572124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217587, 32.861973, 42.416061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237347, 32.465824, 42.364326>,  <35.249203, 32.228134, 42.333286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237347, 32.465824, 42.364326>,  <35.217587, 32.861973, 42.416061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237347, 32.465824, 42.364326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305597, 0.138274, -0.942067,
		0.950878, 0.007012, 0.309485,
		0.049399, -0.990369, -0.129339,
		35.252167, 32.168713, 42.325523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769295, 32.714363, 42.038551>,  <35.217587, 32.861973, 42.416061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769295, 32.714363, 42.038551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522823, 32.403866, 41.985214>,  <35.374943, 32.217567, 41.953213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522823, 32.403866, 41.985214>,  <35.769295, 32.714363, 42.038551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522823, 32.403866, 41.985214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069217, 0.115271, -0.990920,
		0.784561, -0.619810, -0.017299,
		-0.616176, -0.776240, -0.133338,
		35.337971, 32.170994, 41.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535038, 32.664612, 41.902287>,  <35.769295, 32.714363, 42.038551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535038, 32.664612, 41.902287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695381, 32.990273, 41.734249>,  <36.791588, 33.185669, 41.633427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695381, 32.990273, 41.734249>,  <36.535038, 32.664612, 41.902287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695381, 32.990273, 41.734249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109495, 0.412685, 0.904269,
		0.909575, -0.408479, 0.076282,
		0.400855, 0.814147, -0.420094,
		36.815639, 33.234516, 41.608219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219440, 32.716869, 42.183567>,  <36.535038, 32.664612, 41.902287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219440, 32.716869, 42.183567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109776, 33.078362, 42.052044>,  <37.043976, 33.295258, 41.973129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109776, 33.078362, 42.052044>,  <37.219440, 32.716869, 42.183567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109776, 33.078362, 42.052044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042755, 0.353024, 0.934637,
		0.960734, 0.242180, -0.135424,
		-0.274159, 0.903727, -0.328807,
		37.027527, 33.349480, 41.953403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659832, 33.155998, 42.586834>,  <37.219440, 32.716869, 42.183567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659832, 33.155998, 42.586834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369686, 33.379887, 42.426552>,  <37.195599, 33.514217, 42.330383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369686, 33.379887, 42.426552>,  <37.659832, 33.155998, 42.586834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369686, 33.379887, 42.426552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050796, 0.536999, 0.842052,
		0.686487, 0.631150, -0.361089,
		-0.725365, 0.559716, -0.400703,
		37.152077, 33.547802, 42.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905083, 33.784267, 42.710949>,  <37.659832, 33.155998, 42.586834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905083, 33.784267, 42.710949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513096, 33.829292, 42.645237>,  <37.277905, 33.856308, 42.605808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513096, 33.829292, 42.645237>,  <37.905083, 33.784267, 42.710949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513096, 33.829292, 42.645237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077160, 0.545873, 0.834307,
		0.183589, 0.830272, -0.526254,
		-0.979970, 0.112564, -0.164280,
		37.219105, 33.863060, 42.595955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832146, 34.460651, 42.786938>,  <37.905083, 33.784267, 42.710949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832146, 34.460651, 42.786938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482548, 34.279373, 42.857075>,  <37.272789, 34.170605, 42.899158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482548, 34.279373, 42.857075>,  <37.832146, 34.460651, 42.786938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482548, 34.279373, 42.857075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028139, 0.407433, 0.912802,
		-0.485117, 0.792851, -0.368847,
		-0.873996, -0.453195, 0.175342,
		37.220348, 34.143414, 42.909676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453381, 34.993343, 43.069229>,  <37.832146, 34.460651, 42.786938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453381, 34.993343, 43.069229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.260796, 34.652348, 43.150669>,  <37.145245, 34.447750, 43.199535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.260796, 34.652348, 43.150669>,  <37.453381, 34.993343, 43.069229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260796, 34.652348, 43.150669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177137, 0.322151, 0.929968,
		-0.858381, 0.411677, -0.306111,
		-0.481461, -0.852491, 0.203604,
		37.116356, 34.396599, 43.211750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987133, 35.052769, 43.558586>,  <37.453381, 34.993343, 43.069229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987133, 35.052769, 43.558586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026215, 34.659794, 43.622177>,  <37.049664, 34.424007, 43.660332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026215, 34.659794, 43.622177>,  <36.987133, 35.052769, 43.558586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026215, 34.659794, 43.622177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015588, 0.158207, 0.987283,
		-0.995093, -0.098939, 0.000144,
		0.097703, -0.982436, 0.158973,
		37.055527, 34.365063, 43.669868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657078, 35.034035, 44.189537>,  <36.987133, 35.052769, 43.558586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657078, 35.034035, 44.189537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830223, 34.674694, 44.159618>,  <36.934109, 34.459091, 44.141666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830223, 34.674694, 44.159618>,  <36.657078, 35.034035, 44.189537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830223, 34.674694, 44.159618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111689, -0.028892, 0.993323,
		-0.894514, -0.438328, 0.087829,
		0.432864, -0.898351, -0.074800,
		36.960083, 34.405190, 44.137177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408691, 34.486637, 44.693512>,  <36.657078, 35.034035, 44.189537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408691, 34.486637, 44.693512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774345, 34.349121, 44.607567>,  <36.993736, 34.266613, 44.556000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774345, 34.349121, 44.607567>,  <36.408691, 34.486637, 44.693512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774345, 34.349121, 44.607567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195852, -0.089552, 0.976536,
		-0.354963, -0.934768, -0.014532,
		0.914136, -0.343788, -0.214864,
		37.048588, 34.245983, 44.543106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514534, 33.954464, 45.041309>,  <36.408691, 34.486637, 44.693512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514534, 33.954464, 45.041309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902428, 34.030514, 44.980038>,  <37.135166, 34.076145, 44.943275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902428, 34.030514, 44.980038>,  <36.514534, 33.954464, 45.041309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902428, 34.030514, 44.980038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184271, -0.158349, 0.970036,
		0.160174, -0.968905, -0.188591,
		0.969736, 0.190127, -0.153178,
		37.193348, 34.087551, 44.934086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938358, 33.465733, 45.436378>,  <36.514534, 33.954464, 45.041309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938358, 33.465733, 45.436378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196598, 33.763798, 45.369518>,  <37.351540, 33.942638, 45.329403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196598, 33.763798, 45.369518>,  <36.938358, 33.465733, 45.436378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196598, 33.763798, 45.369518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252400, -0.001624, 0.967622,
		0.720764, -0.666880, -0.189128,
		0.645595, 0.745163, -0.167150,
		37.390278, 33.987347, 45.319374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537903, 33.306698, 45.762547>,  <36.938358, 33.465733, 45.436378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537903, 33.306698, 45.762547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564373, 33.702293, 45.709602>,  <37.580257, 33.939651, 45.677837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564373, 33.702293, 45.709602>,  <37.537903, 33.306698, 45.762547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564373, 33.702293, 45.709602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481836, 0.084483, 0.872179,
		0.873759, -0.121496, -0.470940,
		0.066180, 0.988990, -0.132359,
		37.584229, 33.998989, 45.669895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198074, 33.509571, 45.998562>,  <37.537903, 33.306698, 45.762547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198074, 33.509571, 45.998562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.998726, 33.855663, 46.020481>,  <37.879116, 34.063320, 46.033630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.998726, 33.855663, 46.020481>,  <38.198074, 33.509571, 45.998562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998726, 33.855663, 46.020481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335627, 0.134274, 0.932376,
		0.799363, 0.483059, -0.357313,
		-0.498370, 0.865231, 0.054794,
		37.849216, 34.115234, 46.036919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689480, 33.932110, 46.350784>,  <38.198074, 33.509571, 45.998562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689480, 33.932110, 46.350784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363514, 34.163826, 46.358120>,  <38.167934, 34.302856, 46.362522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363514, 34.163826, 46.358120>,  <38.689480, 33.932110, 46.350784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363514, 34.163826, 46.358120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240962, 0.309852, 0.919744,
		0.527116, 0.753933, -0.392090,
		-0.814915, 0.579290, 0.018341,
		38.119038, 34.337612, 46.363621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.531033, 36.814651, 47.307613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.894337, 36.647324, 47.304245>,  <33.112320, 36.546928, 47.302223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.894337, 36.647324, 47.304245>,  <32.531033, 36.814651, 47.307613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894337, 36.647324, 47.304245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027628, -0.039879, -0.998823,
		0.417492, 0.907424, -0.047778,
		0.908260, -0.418321, -0.008421,
		33.166817, 36.521828, 47.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915966, 37.171684, 46.810047>,  <32.531033, 36.814651, 47.307613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915966, 37.171684, 46.810047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.106422, 36.821758, 46.845814>,  <33.220695, 36.611805, 46.867275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.106422, 36.821758, 46.845814>,  <32.915966, 37.171684, 46.810047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106422, 36.821758, 46.845814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112528, -0.040235, -0.992834,
		0.872139, 0.482792, 0.079283,
		0.476142, -0.874810, 0.089418,
		33.249264, 36.559315, 46.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531502, 37.223225, 46.467659>,  <32.915966, 37.171684, 46.810047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531502, 37.223225, 46.467659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470722, 36.827919, 46.461342>,  <33.434254, 36.590736, 46.457550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470722, 36.827919, 46.461342>,  <33.531502, 37.223225, 46.467659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470722, 36.827919, 46.461342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461096, -0.056746, -0.885534,
		0.874243, -0.141839, 0.464306,
		-0.151951, -0.988262, -0.015792,
		33.425137, 36.531441, 46.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098766, 36.968681, 46.152576>,  <33.531502, 37.223225, 46.467659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098766, 36.968681, 46.152576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864658, 36.644348, 46.150867>,  <33.724194, 36.449749, 46.149841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864658, 36.644348, 46.150867>,  <34.098766, 36.968681, 46.152576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864658, 36.644348, 46.150867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289170, -0.203797, -0.935333,
		0.757524, -0.548656, 0.353743,
		-0.585267, -0.810829, -0.004274,
		33.689079, 36.401100, 46.149586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494312, 36.421703, 45.895180>,  <34.098766, 36.968681, 46.152576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494312, 36.421703, 45.895180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110798, 36.322922, 45.838974>,  <33.880688, 36.263653, 45.805248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110798, 36.322922, 45.838974>,  <34.494312, 36.421703, 45.895180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110798, 36.322922, 45.838974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185009, -0.167261, -0.968398,
		0.215646, -0.954483, 0.206056,
		-0.958785, -0.246953, -0.140518,
		33.823162, 36.248837, 45.796818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453060, 35.772522, 45.515400>,  <34.494312, 36.421703, 45.895180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453060, 35.772522, 45.515400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104977, 35.959557, 45.453300>,  <33.896126, 36.071777, 45.416042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104977, 35.959557, 45.453300>,  <34.453060, 35.772522, 45.515400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104977, 35.959557, 45.453300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030217, -0.263864, -0.964086,
		-0.491759, -0.843646, 0.215488,
		-0.870207, 0.467587, -0.155250,
		33.843914, 36.099831, 45.406727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094017, 35.331081, 45.133499>,  <34.453060, 35.772522, 45.515400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094017, 35.331081, 45.133499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929779, 35.690338, 45.070568>,  <33.831238, 35.905891, 45.032810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929779, 35.690338, 45.070568>,  <34.094017, 35.331081, 45.133499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929779, 35.690338, 45.070568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109300, -0.219782, -0.969407,
		-0.905243, -0.380837, 0.188409,
		-0.410595, 0.898142, -0.157331,
		33.806599, 35.959782, 45.023369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643345, 35.196651, 44.518280>,  <34.094017, 35.331081, 45.133499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643345, 35.196651, 44.518280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655308, 35.595303, 44.548862>,  <33.662483, 35.834492, 44.567211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655308, 35.595303, 44.548862>,  <33.643345, 35.196651, 44.518280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655308, 35.595303, 44.548862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133549, 0.079788, -0.987825,
		-0.990591, 0.019328, 0.135485,
		0.029903, 0.996624, 0.076456,
		33.664280, 35.894291, 44.571800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032124, 35.506405, 44.195160>,  <33.643345, 35.196651, 44.518280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032124, 35.506405, 44.195160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307522, 35.796463, 44.190487>,  <33.472763, 35.970497, 44.187683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307522, 35.796463, 44.190487>,  <33.032124, 35.506405, 44.195160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307522, 35.796463, 44.190487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136507, 0.113748, -0.984087,
		-0.712274, 0.679138, 0.177303,
		0.688499, 0.725143, -0.011687,
		33.514072, 36.014008, 44.186981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826088, 35.949760, 43.753181>,  <33.032124, 35.506405, 44.195160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826088, 35.949760, 43.753181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190849, 36.102875, 43.812374>,  <33.409706, 36.194744, 43.847889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190849, 36.102875, 43.812374>,  <32.826088, 35.949760, 43.753181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190849, 36.102875, 43.812374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066682, 0.493996, -0.866903,
		-0.404942, 0.780668, 0.476004,
		0.911908, 0.382787, 0.147983,
		33.464420, 36.217712, 43.856770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809174, 36.596863, 43.693058>,  <32.826088, 35.949760, 43.753181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809174, 36.596863, 43.693058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184856, 36.503643, 43.592205>,  <33.410267, 36.447712, 43.531693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184856, 36.503643, 43.592205>,  <32.809174, 36.596863, 43.693058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184856, 36.503643, 43.592205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073398, 0.581079, -0.810530,
		0.335402, 0.779765, 0.528651,
		0.939212, -0.233051, -0.252128,
		33.466621, 36.433727, 43.516567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931549, 37.200130, 43.307774>,  <32.809174, 36.596863, 43.693058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931549, 37.200130, 43.307774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223862, 36.939156, 43.227482>,  <33.399250, 36.782570, 43.179306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223862, 36.939156, 43.227482>,  <32.931549, 37.200130, 43.307774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223862, 36.939156, 43.227482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072716, 0.217979, -0.973241,
		0.678732, 0.725818, 0.111852,
		0.730777, -0.652436, -0.200728,
		33.443096, 36.743423, 43.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463158, 37.608917, 42.956429>,  <32.931549, 37.200130, 43.307774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463158, 37.608917, 42.956429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512440, 37.219639, 42.878754>,  <33.542011, 36.986073, 42.832150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512440, 37.219639, 42.878754>,  <33.463158, 37.608917, 42.956429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512440, 37.219639, 42.878754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130629, 0.209876, -0.968962,
		0.983746, 0.094018, 0.152986,
		0.123208, -0.973197, -0.194183,
		33.549400, 36.927681, 42.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969498, 37.579224, 42.481873>,  <33.463158, 37.608917, 42.956429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969498, 37.579224, 42.481873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789326, 37.224720, 42.438671>,  <33.681225, 37.012020, 42.412750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789326, 37.224720, 42.438671>,  <33.969498, 37.579224, 42.481873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789326, 37.224720, 42.438671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024092, 0.132986, -0.990825,
		0.892488, -0.443693, -0.081252,
		-0.450428, -0.886257, -0.107999,
		33.654198, 36.958843, 42.406273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570080, 37.938324, 42.756107>,  <33.969498, 37.579224, 42.481873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570080, 37.938324, 42.756107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.924278, 38.091354, 42.650639>,  <35.136799, 38.183174, 42.587357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.924278, 38.091354, 42.650639>,  <34.570080, 37.938324, 42.756107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924278, 38.091354, 42.650639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108829, 0.380926, 0.918178,
		0.451714, -0.841743, 0.295675,
		0.885500, 0.382576, -0.263676,
		35.189930, 38.206127, 42.571537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248077, 37.628075, 43.164444>,  <34.570080, 37.938324, 42.756107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248077, 37.628075, 43.164444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321487, 37.996735, 43.027695>,  <35.365532, 38.217930, 42.945644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321487, 37.996735, 43.027695>,  <35.248077, 37.628075, 43.164444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321487, 37.996735, 43.027695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117343, 0.324752, 0.938492,
		0.975986, -0.212354, -0.048549,
		0.183526, 0.921652, -0.341871,
		35.376545, 38.273232, 42.925133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750614, 37.825169, 43.546078>,  <35.248077, 37.628075, 43.164444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750614, 37.825169, 43.546078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581470, 38.156467, 43.398994>,  <35.479984, 38.355247, 43.310745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581470, 38.156467, 43.398994>,  <35.750614, 37.825169, 43.546078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581470, 38.156467, 43.398994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136157, 0.459228, 0.877822,
		0.895910, 0.321127, -0.306958,
		-0.422856, 0.828243, -0.367704,
		35.454613, 38.404942, 43.288685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162334, 38.389462, 43.531776>,  <35.750614, 37.825169, 43.546078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162334, 38.389462, 43.531776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792500, 38.539486, 43.558544>,  <35.570599, 38.629501, 43.574604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792500, 38.539486, 43.558544>,  <36.162334, 38.389462, 43.531776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792500, 38.539486, 43.558544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223953, 0.392953, 0.891871,
		0.308207, 0.839595, -0.447313,
		-0.924583, 0.375058, 0.066918,
		35.515125, 38.652004, 43.578621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285007, 38.864864, 44.054874>,  <36.162334, 38.389462, 43.531776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285007, 38.864864, 44.054874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888733, 38.819092, 44.025375>,  <35.650967, 38.791630, 44.007675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888733, 38.819092, 44.025375>,  <36.285007, 38.864864, 44.054874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888733, 38.819092, 44.025375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101847, 0.263582, 0.959246,
		-0.090329, 0.957826, -0.272782,
		-0.990691, -0.114429, -0.073743,
		35.591526, 38.784763, 44.003254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062904, 39.410500, 44.351948>,  <36.285007, 38.864864, 44.054874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062904, 39.410500, 44.351948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749432, 39.162178, 44.360451>,  <35.561348, 39.013187, 44.365551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749432, 39.162178, 44.360451>,  <36.062904, 39.410500, 44.351948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749432, 39.162178, 44.360451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152436, 0.225374, 0.962273,
		-0.602170, 0.750875, -0.271254,
		-0.783680, -0.620801, 0.021253,
		35.514328, 38.975937, 44.366825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551624, 39.857960, 44.584358>,  <36.062904, 39.410500, 44.351948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551624, 39.857960, 44.584358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 39.497974, 44.651608>,  <35.294182, 39.281982, 44.691956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 39.497974, 44.651608>,  <35.551624, 39.857960, 44.584358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390724, 39.497974, 44.651608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173559, 0.255261, 0.951167,
		-0.898927, 0.353432, -0.258876,
		-0.402254, -0.899960, 0.168120,
		35.270046, 39.227985, 44.702042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896690, 39.998055, 44.912800>,  <35.551624, 39.857960, 44.584358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896690, 39.998055, 44.912800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019196, 39.625847, 44.993145>,  <35.092697, 39.402523, 45.041351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019196, 39.625847, 44.993145>,  <34.896690, 39.998055, 44.912800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019196, 39.625847, 44.993145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179969, 0.150605, 0.972075,
		-0.934782, -0.333856, -0.121340,
		0.306259, -0.930515, 0.200866,
		35.111073, 39.346691, 45.053406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422886, 39.750938, 45.424126>,  <34.896690, 39.998055, 44.912800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422886, 39.750938, 45.424126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726444, 39.492794, 45.458981>,  <34.908577, 39.337910, 45.479893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726444, 39.492794, 45.458981>,  <34.422886, 39.750938, 45.424126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726444, 39.492794, 45.458981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156745, -0.051144, 0.986314,
		-0.632069, -0.762166, -0.139970,
		0.758894, -0.645358, 0.087139,
		34.954113, 39.299187, 45.485123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267632, 39.113880, 45.803368>,  <34.422886, 39.750938, 45.424126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267632, 39.113880, 45.803368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663689, 39.100563, 45.857796>,  <34.901321, 39.092571, 45.890453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663689, 39.100563, 45.857796>,  <34.267632, 39.113880, 45.803368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663689, 39.100563, 45.857796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139745, -0.167567, 0.975906,
		-0.009692, -0.985298, -0.170567,
		0.990140, -0.033294, 0.136067,
		34.960732, 39.090576, 45.898617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288143, 38.585323, 46.256645>,  <34.267632, 39.113880, 45.803368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288143, 38.585323, 46.256645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642567, 38.767632, 46.290512>,  <34.855221, 38.877018, 46.310833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642567, 38.767632, 46.290512>,  <34.288143, 38.585323, 46.256645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642567, 38.767632, 46.290512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118883, 0.046876, 0.991801,
		0.448066, -0.888861, 0.095719,
		0.886060, 0.455772, 0.084667,
		34.908386, 38.904362, 46.315914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810463, 38.081154, 46.522861>,  <34.288143, 38.585323, 46.256645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810463, 38.081154, 46.522861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915367, 38.452896, 46.626793>,  <34.978310, 38.675941, 46.689152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915367, 38.452896, 46.626793>,  <34.810463, 38.081154, 46.522861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915367, 38.452896, 46.626793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080509, -0.289383, 0.953822,
		0.961632, -0.229233, -0.150716,
		0.262262, 0.929360, 0.259825,
		34.994045, 38.731705, 46.704739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438332, 37.930122, 46.988949>,  <34.810463, 38.081154, 46.522861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438332, 37.930122, 46.988949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365391, 38.313271, 47.077705>,  <35.321625, 38.543159, 47.130959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365391, 38.313271, 47.077705>,  <35.438332, 37.930122, 46.988949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365391, 38.313271, 47.077705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425390, -0.126597, 0.896112,
		0.886448, 0.257800, -0.384382,
		-0.182357, 0.957869, 0.221887,
		35.310684, 38.600632, 47.144272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030003, 38.190662, 47.333557>,  <35.438332, 37.930122, 46.988949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030003, 38.190662, 47.333557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711731, 38.402370, 47.451382>,  <35.520767, 38.529396, 47.522076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711731, 38.402370, 47.451382>,  <36.030003, 38.190662, 47.333557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711731, 38.402370, 47.451382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195160, -0.236352, 0.951867,
		0.573417, 0.814866, 0.084768,
		-0.795679, 0.529273, 0.294558,
		35.473026, 38.561153, 47.539749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705925, 38.546440, 47.186947>,  <36.030003, 38.190662, 47.333557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705925, 38.546440, 47.186947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091297, 38.495243, 47.281116>,  <37.322521, 38.464523, 47.337620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091297, 38.495243, 47.281116>,  <36.705925, 38.546440, 47.186947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091297, 38.495243, 47.281116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249968, 0.112715, -0.961671,
		0.096551, 0.985349, 0.140587,
		0.963428, -0.127993, 0.235423,
		37.380325, 38.456844, 47.351742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123421, 39.155384, 46.946556>,  <36.705925, 38.546440, 47.186947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123421, 39.155384, 46.946556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394512, 38.862366, 46.972038>,  <37.557167, 38.686554, 46.987328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394512, 38.862366, 46.972038>,  <37.123421, 39.155384, 46.946556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394512, 38.862366, 46.972038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192816, 0.093438, -0.976776,
		0.709579, 0.674276, 0.204572,
		0.677731, -0.732545, 0.063710,
		37.597832, 38.642601, 46.991150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696735, 39.330639, 46.665405>,  <37.123421, 39.155384, 46.946556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696735, 39.330639, 46.665405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767120, 38.938194, 46.633270>,  <37.809353, 38.702728, 46.613991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767120, 38.938194, 46.633270>,  <37.696735, 39.330639, 46.665405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767120, 38.938194, 46.633270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269104, 0.126444, -0.954775,
		0.946899, 0.146390, 0.286271,
		0.175966, -0.981113, -0.080335,
		37.819912, 38.643860, 46.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203159, 39.297821, 46.242764>,  <37.696735, 39.330639, 46.665405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203159, 39.297821, 46.242764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108276, 38.909512, 46.228195>,  <38.051346, 38.676525, 46.219452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108276, 38.909512, 46.228195>,  <38.203159, 39.297821, 46.242764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108276, 38.909512, 46.228195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424637, -0.069892, -0.902662,
		0.873737, -0.229585, 0.428806,
		-0.237208, -0.970776, -0.036423,
		38.037113, 38.618279, 46.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824638, 38.906197, 46.083904>,  <38.203159, 39.297821, 46.242764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824638, 38.906197, 46.083904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491299, 38.718983, 45.966278>,  <38.291294, 38.606655, 45.895702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491299, 38.718983, 45.966278>,  <38.824638, 38.906197, 46.083904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491299, 38.718983, 45.966278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398155, -0.139260, -0.906686,
		0.383411, -0.872667, 0.302404,
		-0.833347, -0.468037, -0.294063,
		38.241295, 38.578571, 45.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108429, 38.388168, 45.690659>,  <38.824638, 38.906197, 46.083904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108429, 38.388168, 45.690659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717278, 38.377998, 45.607609>,  <38.482586, 38.371895, 45.557781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717278, 38.377998, 45.607609>,  <39.108429, 38.388168, 45.690659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717278, 38.377998, 45.607609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208111, -0.218125, -0.953473,
		-0.021045, -0.975590, 0.218591,
		-0.977879, -0.025425, -0.207621,
		38.423912, 38.370373, 45.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055092, 37.792484, 45.191868>,  <39.108429, 38.388168, 45.690659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055092, 37.792484, 45.191868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 38.011562, 45.144741>,  <38.524952, 38.143009, 45.116463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 38.011562, 45.144741>,  <39.055092, 37.792484, 45.191868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723755, 38.011562, 45.144741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123653, -0.026382, -0.991975,
		-0.546411, -0.836260, -0.045872,
		-0.828338, 0.547698, -0.117821,
		38.475254, 38.175873, 45.109394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671040, 37.435555, 44.742722>,  <39.055092, 37.792484, 45.191868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671040, 37.435555, 44.742722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542973, 37.813675, 44.717751>,  <38.466133, 38.040546, 44.702770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542973, 37.813675, 44.717751>,  <38.671040, 37.435555, 44.742722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542973, 37.813675, 44.717751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167031, -0.008534, -0.985915,
		-0.932519, -0.326088, -0.155162,
		-0.320171, 0.945301, -0.062425,
		38.446922, 38.097263, 44.699024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178959, 37.461922, 44.150387>,  <38.671040, 37.435555, 44.742722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178959, 37.461922, 44.150387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.330231, 37.826859, 44.213135>,  <38.420994, 38.045822, 44.250782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.330231, 37.826859, 44.213135>,  <38.178959, 37.461922, 44.150387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330231, 37.826859, 44.213135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376224, 0.003356, -0.926523,
		-0.845837, 0.409405, -0.341977,
		0.378175, 0.912347, 0.156866,
		38.443684, 38.100563, 44.260193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898109, 37.916664, 43.660702>,  <38.178959, 37.461922, 44.150387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898109, 37.916664, 43.660702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251453, 38.077927, 43.756325>,  <38.463459, 38.174683, 43.813698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251453, 38.077927, 43.756325>,  <37.898109, 37.916664, 43.660702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251453, 38.077927, 43.756325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269423, -0.019422, -0.962826,
		-0.383522, 0.914927, -0.125775,
		0.883358, 0.403152, 0.239054,
		38.516460, 38.198872, 43.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052345, 38.269936, 43.110947>,  <37.898109, 37.916664, 43.660702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052345, 38.269936, 43.110947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411057, 38.248432, 43.286625>,  <38.626286, 38.235531, 43.392033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411057, 38.248432, 43.286625>,  <38.052345, 38.269936, 43.110947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411057, 38.248432, 43.286625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410918, -0.266926, -0.871720,
		0.164094, 0.962216, -0.217285,
		0.896783, -0.053758, 0.439194,
		38.680092, 38.232304, 43.418385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533585, 38.620724, 42.648224>,  <38.052345, 38.269936, 43.110947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533585, 38.620724, 42.648224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776669, 38.404045, 42.880520>,  <38.922520, 38.274036, 43.019897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776669, 38.404045, 42.880520>,  <38.533585, 38.620724, 42.648224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776669, 38.404045, 42.880520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447106, -0.370987, -0.813919,
		0.656345, 0.754275, 0.016746,
		0.607706, -0.541699, 0.580737,
		38.958981, 38.241535, 43.054741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193256, 38.693352, 42.374065>,  <38.533585, 38.620724, 42.648224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193256, 38.693352, 42.374065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206421, 38.361259, 42.596642>,  <39.214321, 38.162003, 42.730186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206421, 38.361259, 42.596642>,  <39.193256, 38.693352, 42.374065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206421, 38.361259, 42.596642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513888, -0.463457, -0.721891,
		0.857226, 0.309707, 0.411395,
		0.032911, -0.830235, 0.556442,
		39.216293, 38.112190, 42.763573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831619, 38.566982, 42.538868>,  <39.193256, 38.693352, 42.374065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831619, 38.566982, 42.538868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669224, 38.204136, 42.583237>,  <39.571785, 37.986427, 42.609859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669224, 38.204136, 42.583237>,  <39.831619, 38.566982, 42.538868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669224, 38.204136, 42.583237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697874, -0.386106, -0.603236,
		0.590037, -0.167495, 0.789811,
		-0.405990, -0.907120, 0.110926,
		39.547428, 37.931999, 42.616516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.325722, 35.866421, 26.895863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219780, 35.491444, 26.805477>,  <29.156214, 35.266457, 26.751245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.219780, 35.491444, 26.805477>,  <29.325722, 35.866421, 26.895863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219780, 35.491444, 26.805477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561643, -0.040514, 0.826387,
		-0.783842, 0.345785, -0.515775,
		-0.264856, -0.937439, -0.225964,
		29.140324, 35.210213, 26.737688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579725, 35.771263, 27.023458>,  <29.325722, 35.866421, 26.895863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579725, 35.771263, 27.023458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.771011, 35.422318, 27.064051>,  <28.885782, 35.212952, 27.088406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.771011, 35.422318, 27.064051>,  <28.579725, 35.771263, 27.023458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771011, 35.422318, 27.064051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456205, -0.148009, 0.877480,
		-0.750459, -0.465918, -0.468755,
		0.478214, -0.872361, 0.101479,
		28.914476, 35.160610, 27.094494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079273, 35.412266, 27.219175>,  <28.579725, 35.771263, 27.023458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079273, 35.412266, 27.219175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397799, 35.190140, 27.315104>,  <28.588913, 35.056866, 27.372660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397799, 35.190140, 27.315104>,  <28.079273, 35.412266, 27.219175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397799, 35.190140, 27.315104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457809, -0.294173, 0.838971,
		-0.395344, -0.777875, -0.488481,
		0.796312, -0.555314, 0.239819,
		28.636692, 35.023544, 27.387049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793428, 34.718269, 27.450624>,  <28.079273, 35.412266, 27.219175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793428, 34.718269, 27.450624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172478, 34.744156, 27.575731>,  <28.399906, 34.759686, 27.650795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172478, 34.744156, 27.575731>,  <27.793428, 34.718269, 27.450624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172478, 34.744156, 27.575731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261989, -0.402620, 0.877074,
		0.182686, -0.913077, -0.364577,
		0.947622, 0.064714, 0.312769,
		28.456764, 34.763569, 27.669561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089708, 34.010288, 27.767855>,  <27.793428, 34.718269, 27.450624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089708, 34.010288, 27.767855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287258, 34.320988, 27.924191>,  <28.405788, 34.507408, 28.017992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287258, 34.320988, 27.924191>,  <28.089708, 34.010288, 27.767855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287258, 34.320988, 27.924191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156011, -0.363032, 0.918623,
		0.855424, -0.514658, -0.058110,
		0.493873, 0.776746, 0.390839,
		28.435419, 34.554012, 28.041443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440376, 33.794159, 28.455057>,  <28.089708, 34.010288, 27.767855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440376, 33.794159, 28.455057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441561, 34.193966, 28.467438>,  <28.442270, 34.433849, 28.474867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441561, 34.193966, 28.467438>,  <28.440376, 33.794159, 28.455057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441561, 34.193966, 28.467438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156167, -0.030110, 0.987272,
		0.987726, -0.007756, 0.156003,
		0.002960, 0.999517, 0.030951,
		28.442450, 34.493820, 28.476723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719172, 33.915558, 29.036654>,  <28.440376, 33.794159, 28.455057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719172, 33.915558, 29.036654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551491, 34.270134, 28.958176>,  <28.450882, 34.482880, 28.911089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.551491, 34.270134, 28.958176>,  <28.719172, 33.915558, 29.036654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551491, 34.270134, 28.958176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388474, 0.020187, 0.921239,
		0.820584, 0.462402, 0.335897,
		-0.419202, 0.886440, -0.196196,
		28.425730, 34.536068, 28.899317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972546, 34.310223, 29.535326>,  <28.719172, 33.915558, 29.036654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972546, 34.310223, 29.535326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646675, 34.518681, 29.433575>,  <28.451153, 34.643757, 29.372524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646675, 34.518681, 29.433575>,  <28.972546, 34.310223, 29.535326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646675, 34.518681, 29.433575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295658, 0.004101, 0.955285,
		0.498889, 0.853455, 0.150741,
		-0.814675, 0.521149, -0.254378,
		28.402273, 34.675026, 29.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985123, 34.658314, 30.132551>,  <28.972546, 34.310223, 29.535326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985123, 34.658314, 30.132551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627008, 34.706944, 29.961119>,  <28.412140, 34.736122, 29.858259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627008, 34.706944, 29.961119>,  <28.985123, 34.658314, 30.132551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627008, 34.706944, 29.961119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421553, 0.079916, 0.903275,
		0.144066, 0.989360, -0.020298,
		-0.895287, 0.121574, -0.428581,
		28.358423, 34.743416, 29.832544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732641, 35.367004, 30.318136>,  <28.985123, 34.658314, 30.132551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732641, 35.367004, 30.318136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406094, 35.165787, 30.204653>,  <28.210165, 35.045055, 30.136562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406094, 35.165787, 30.204653>,  <28.732641, 35.367004, 30.318136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406094, 35.165787, 30.204653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383773, 0.105415, 0.917391,
		-0.431578, 0.857810, -0.279111,
		-0.816369, -0.503041, -0.283709,
		28.161182, 35.014874, 30.119539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160271, 35.746426, 30.500933>,  <28.732641, 35.367004, 30.318136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160271, 35.746426, 30.500933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058359, 35.359890, 30.486631>,  <27.997211, 35.127968, 30.478050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058359, 35.359890, 30.486631>,  <28.160271, 35.746426, 30.500933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058359, 35.359890, 30.486631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461505, 0.089021, 0.882660,
		-0.849765, 0.241382, -0.468650,
		-0.254778, -0.966338, -0.035752,
		27.981926, 35.069988, 30.475906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450815, 35.763222, 30.666815>,  <28.160271, 35.746426, 30.500933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450815, 35.763222, 30.666815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581964, 35.392277, 30.738916>,  <27.660654, 35.169708, 30.782177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581964, 35.392277, 30.738916>,  <27.450815, 35.763222, 30.666815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581964, 35.392277, 30.738916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208033, 0.115244, 0.971309,
		-0.921532, -0.355965, -0.155138,
		0.327873, -0.927366, 0.180254,
		27.680326, 35.114067, 30.792992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944565, 35.537842, 31.086555>,  <27.450815, 35.763222, 30.666815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944565, 35.537842, 31.086555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236969, 35.268261, 31.129293>,  <27.412411, 35.106514, 31.154936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236969, 35.268261, 31.129293>,  <26.944565, 35.537842, 31.086555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236969, 35.268261, 31.129293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216475, -0.080556, 0.972959,
		-0.647120, -0.734370, -0.204781,
		0.731008, -0.673952, 0.106844,
		27.456272, 35.066074, 31.161346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569351, 34.968349, 31.575138>,  <26.944565, 35.537842, 31.086555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569351, 34.968349, 31.575138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956463, 34.870281, 31.598108>,  <27.188730, 34.811440, 31.611891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956463, 34.870281, 31.598108>,  <26.569351, 34.968349, 31.575138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956463, 34.870281, 31.598108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093307, -0.137338, 0.986120,
		-0.233886, -0.959702, -0.155789,
		0.967776, -0.245176, 0.057425,
		27.246796, 34.796730, 31.615335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614025, 34.371407, 31.906567>,  <26.569351, 34.968349, 31.575138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614025, 34.371407, 31.906567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978138, 34.527668, 31.961380>,  <27.196606, 34.621426, 31.994268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978138, 34.527668, 31.961380>,  <26.614025, 34.371407, 31.906567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978138, 34.527668, 31.961380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033916, -0.259526, 0.965140,
		0.412600, -0.883196, -0.222992,
		0.910281, 0.390654, 0.137035,
		27.251223, 34.644863, 32.002491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945234, 33.885101, 32.240612>,  <26.614025, 34.371407, 31.906567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945234, 33.885101, 32.240612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135523, 34.225906, 32.328026>,  <27.249697, 34.430389, 32.380474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135523, 34.225906, 32.328026>,  <26.945234, 33.885101, 32.240612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135523, 34.225906, 32.328026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065458, -0.282052, 0.957163,
		0.877157, -0.441038, -0.189950,
		0.475721, 0.852017, 0.218534,
		27.278240, 34.481510, 32.393585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594080, 33.820042, 32.779606>,  <26.945234, 33.885101, 32.240612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594080, 33.820042, 32.779606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473946, 34.200367, 32.809937>,  <27.401865, 34.428562, 32.828133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473946, 34.200367, 32.809937>,  <27.594080, 33.820042, 32.779606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473946, 34.200367, 32.809937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044179, -0.065543, 0.996871,
		0.952810, 0.302747, -0.022321,
		-0.300336, 0.950815, 0.075825,
		27.383844, 34.485611, 32.832684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148140, 34.125214, 33.228287>,  <27.594080, 33.820042, 32.779606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148140, 34.125214, 33.228287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826506, 34.363010, 33.230461>,  <27.633526, 34.505688, 33.231766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826506, 34.363010, 33.230461>,  <28.148140, 34.125214, 33.228287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826506, 34.363010, 33.230461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050829, -0.077847, 0.995669,
		0.592338, 0.800326, 0.092813,
		-0.804084, 0.594490, 0.005432,
		27.585279, 34.541359, 33.232090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237278, 34.585789, 33.789692>,  <28.148140, 34.125214, 33.228287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237278, 34.585789, 33.789692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846819, 34.628368, 33.714008>,  <27.612543, 34.653915, 33.668598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846819, 34.628368, 33.714008>,  <28.237278, 34.585789, 33.789692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846819, 34.628368, 33.714008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187400, 0.026844, 0.981917,
		0.109603, 0.993956, -0.006255,
		-0.976150, 0.106449, -0.189210,
		27.553974, 34.660301, 33.657246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094652, 35.107838, 34.251514>,  <28.237278, 34.585789, 33.789692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094652, 35.107838, 34.251514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764078, 34.904518, 34.154655>,  <27.565733, 34.782528, 34.096539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764078, 34.904518, 34.154655>,  <28.094652, 35.107838, 34.251514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764078, 34.904518, 34.154655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324247, 0.078080, 0.942744,
		-0.460289, 0.857634, -0.229342,
		-0.826437, -0.508298, -0.242146,
		27.516148, 34.752029, 34.082012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173159, 35.274223, 34.967945>,  <28.094652, 35.107838, 34.251514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173159, 35.274223, 34.967945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486910, 35.061893, 35.096306>,  <28.675161, 34.934498, 35.173321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486910, 35.061893, 35.096306>,  <28.173159, 35.274223, 34.967945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486910, 35.061893, 35.096306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462328, 0.155416, -0.872983,
		0.413523, 0.833112, 0.367318,
		0.784380, -0.530820, 0.320903,
		28.722223, 34.902649, 35.192577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774174, 35.643776, 34.666824>,  <28.173159, 35.274223, 34.967945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774174, 35.643776, 34.666824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908607, 35.282257, 34.772797>,  <28.989267, 35.065346, 34.836380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908607, 35.282257, 34.772797>,  <28.774174, 35.643776, 34.666824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908607, 35.282257, 34.772797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657026, 0.023443, -0.753503,
		0.674806, 0.427311, 0.601699,
		0.336086, -0.903801, 0.264935,
		29.009434, 35.011116, 34.852276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585703, 35.635883, 34.638546>,  <28.774174, 35.643776, 34.666824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585703, 35.635883, 34.638546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449718, 35.260502, 34.614101>,  <29.368128, 35.035275, 34.599434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449718, 35.260502, 34.614101>,  <29.585703, 35.635883, 34.638546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449718, 35.260502, 34.614101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586059, -0.160585, -0.794196,
		0.735500, -0.305814, 0.604580,
		-0.339963, -0.938451, -0.061115,
		29.347729, 34.978966, 34.595768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207146, 35.324062, 34.559959>,  <29.585703, 35.635883, 34.638546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207146, 35.324062, 34.559959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927713, 35.075348, 34.418331>,  <29.760054, 34.926117, 34.333355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927713, 35.075348, 34.418331>,  <30.207146, 35.324062, 34.559959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927713, 35.075348, 34.418331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605656, -0.250352, -0.755318,
		0.381008, -0.742092, 0.551481,
		-0.698580, -0.621791, -0.354066,
		29.718140, 34.888809, 34.312111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633352, 34.664185, 34.390770>,  <30.207146, 35.324062, 34.559959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633352, 34.664185, 34.390770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284599, 34.661510, 34.194901>,  <30.075348, 34.659904, 34.077377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284599, 34.661510, 34.194901>,  <30.633352, 34.664185, 34.390770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284599, 34.661510, 34.194901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483125, -0.175271, -0.857829,
		-0.080086, -0.984497, 0.156048,
		-0.871881, -0.006691, -0.489672,
		30.023035, 34.659504, 34.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616205, 33.972672, 33.885281>,  <30.633352, 34.664185, 34.390770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616205, 33.972672, 33.885281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348154, 34.215210, 33.714035>,  <30.187325, 34.360733, 33.611286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.348154, 34.215210, 33.714035>,  <30.616205, 33.972672, 33.885281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348154, 34.215210, 33.714035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451633, -0.124629, -0.883457,
		-0.589033, -0.785376, -0.190327,
		-0.670125, 0.606343, -0.428112,
		30.147116, 34.397114, 33.585602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377663, 33.686699, 33.288857>,  <30.616205, 33.972672, 33.885281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377663, 33.686699, 33.288857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281052, 34.070606, 33.231583>,  <30.223085, 34.300953, 33.197216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281052, 34.070606, 33.231583>,  <30.377663, 33.686699, 33.288857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281052, 34.070606, 33.231583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226993, -0.087582, -0.969950,
		-0.943471, -0.266774, -0.196708,
		-0.241529, 0.959771, -0.143187,
		30.208593, 34.358536, 33.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000887, 33.613033, 32.782452>,  <30.377663, 33.686699, 33.288857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000887, 33.613033, 32.782452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115356, 33.996304, 32.781315>,  <30.184038, 34.226265, 32.780632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115356, 33.996304, 32.781315>,  <30.000887, 33.613033, 32.782452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115356, 33.996304, 32.781315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313774, -0.096514, -0.944580,
		-0.905346, 0.269421, -0.328270,
		0.286172, 0.958174, -0.002841,
		30.201208, 34.283756, 32.780464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647930, 33.843567, 32.229118>,  <30.000887, 33.613033, 32.782452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647930, 33.843567, 32.229118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951012, 34.091663, 32.310299>,  <30.132860, 34.240520, 32.359005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951012, 34.091663, 32.310299>,  <29.647930, 33.843567, 32.229118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951012, 34.091663, 32.310299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276995, -0.024075, -0.960570,
		-0.590899, 0.784042, -0.190045,
		0.757702, 0.620241, 0.202950,
		30.178322, 34.277737, 32.371185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517593, 34.419090, 31.774561>,  <29.647930, 33.843567, 32.229118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517593, 34.419090, 31.774561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901701, 34.449959, 31.881838>,  <30.132166, 34.468479, 31.946203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901701, 34.449959, 31.881838>,  <29.517593, 34.419090, 31.774561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901701, 34.449959, 31.881838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253435, 0.161221, -0.953823,
		-0.116846, 0.983896, 0.135257,
		0.960270, 0.077172, 0.268192,
		30.189781, 34.473110, 31.962296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663397, 35.057987, 31.421881>,  <29.517593, 34.419090, 31.774561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663397, 35.057987, 31.421881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006758, 34.874092, 31.512905>,  <30.212774, 34.763756, 31.567520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006758, 34.874092, 31.512905>,  <29.663397, 35.057987, 31.421881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006758, 34.874092, 31.512905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409793, 0.347725, -0.843301,
		0.308571, 0.817144, 0.486887,
		0.858402, -0.459742, 0.227562,
		30.264278, 34.736168, 31.581173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242973, 35.616879, 31.281832>,  <29.663397, 35.057987, 31.421881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242973, 35.616879, 31.281832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373287, 35.238888, 31.269890>,  <30.451475, 35.012093, 31.262724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373287, 35.238888, 31.269890>,  <30.242973, 35.616879, 31.281832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373287, 35.238888, 31.269890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387253, 0.162181, -0.907597,
		0.862496, 0.284120, 0.418780,
		0.325785, -0.944973, -0.029854,
		30.471022, 34.955395, 31.260933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826941, 35.674713, 31.021099>,  <30.242973, 35.616879, 31.281832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826941, 35.674713, 31.021099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.779610, 35.278385, 30.994947>,  <30.751211, 35.040588, 30.979258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.779610, 35.278385, 30.994947>,  <30.826941, 35.674713, 31.021099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779610, 35.278385, 30.994947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386322, 0.014717, -0.922246,
		0.914742, -0.134383, 0.381035,
		-0.118326, -0.990820, -0.065377,
		30.744112, 34.981140, 30.975334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438400, 35.466206, 30.742691>,  <30.826941, 35.674713, 31.021099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438400, 35.466206, 30.742691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.227331, 35.138874, 30.651560>,  <31.100691, 34.942474, 30.596882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.227331, 35.138874, 30.651560>,  <31.438400, 35.466206, 30.742691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227331, 35.138874, 30.651560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323204, 0.054617, -0.944752,
		0.785558, -0.572153, 0.235667,
		-0.527672, -0.818326, -0.227827,
		31.069029, 34.893375, 30.583212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930393, 35.002090, 30.411732>,  <31.438400, 35.466206, 30.742691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930393, 35.002090, 30.411732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.560205, 34.921730, 30.283270>,  <31.338093, 34.873512, 30.206192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.560205, 34.921730, 30.283270>,  <31.930393, 35.002090, 30.411732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560205, 34.921730, 30.283270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322416, 0.027332, -0.946203,
		0.198872, -0.979230, 0.039479,
		-0.925472, -0.200902, -0.321155,
		31.282564, 34.861458, 30.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072247, 34.645519, 29.901024>,  <31.930393, 35.002090, 30.411732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072247, 34.645519, 29.901024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.687387, 34.726612, 29.828167>,  <31.456472, 34.775269, 29.784452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.687387, 34.726612, 29.828167>,  <32.072247, 34.645519, 29.901024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687387, 34.726612, 29.828167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203448, 0.089586, -0.974979,
		-0.181339, -0.975128, -0.127440,
		-0.962146, 0.202729, -0.182142,
		31.398743, 34.787430, 29.773523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857405, 34.238064, 29.353628>,  <32.072247, 34.645519, 29.901024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857405, 34.238064, 29.353628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598026, 34.542530, 29.358391>,  <31.442400, 34.725212, 29.361248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598026, 34.542530, 29.358391>,  <31.857405, 34.238064, 29.353628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598026, 34.542530, 29.358391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143440, 0.137529, -0.980056,
		-0.747626, -0.633804, -0.198362,
		-0.648444, 0.761169, 0.011907,
		31.403494, 34.770882, 29.361963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476856, 34.179966, 28.794806>,  <31.857405, 34.238064, 29.353628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476856, 34.179966, 28.794806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423485, 34.564281, 28.892027>,  <31.391462, 34.794872, 28.950359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423485, 34.564281, 28.892027>,  <31.476856, 34.179966, 28.794806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423485, 34.564281, 28.892027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079120, 0.254791, -0.963754,
		-0.987895, -0.109361, -0.110014,
		-0.133428, 0.960792, 0.243054,
		31.383457, 34.852520, 28.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036564, 34.334667, 28.354313>,  <31.476856, 34.179966, 28.794806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036564, 34.334667, 28.354313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193745, 34.684433, 28.468143>,  <31.288054, 34.894295, 28.536442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193745, 34.684433, 28.468143>,  <31.036564, 34.334667, 28.354313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193745, 34.684433, 28.468143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232769, 0.204805, -0.950723,
		-0.889611, 0.439829, -0.123058,
		0.392952, 0.874417, 0.284576,
		31.311630, 34.946758, 28.553516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673227, 34.777809, 27.960131>,  <31.036564, 34.334667, 28.354313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673227, 34.777809, 27.960131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015148, 34.956623, 28.065559>,  <31.220301, 35.063911, 28.128817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015148, 34.956623, 28.065559>,  <30.673227, 34.777809, 27.960131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015148, 34.956623, 28.065559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190557, 0.202032, -0.960662,
		-0.482702, 0.871401, 0.087511,
		0.854802, 0.447038, 0.263573,
		31.271589, 35.090733, 28.144630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550104, 35.477932, 27.829517>,  <30.673227, 34.777809, 27.960131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550104, 35.477932, 27.829517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947977, 35.437901, 27.819798>,  <31.186701, 35.413883, 27.813965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947977, 35.437901, 27.819798>,  <30.550104, 35.477932, 27.829517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947977, 35.437901, 27.819798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022679, 0.443029, -0.896220,
		0.100455, 0.890904, 0.442944,
		0.994683, -0.100075, -0.024300,
		31.246382, 35.407879, 27.812508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133989, 35.729454, 27.434048>,  <30.550104, 35.477932, 27.829517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133989, 35.729454, 27.434048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.841431, 35.936661, 27.611462>,  <30.665895, 36.060986, 27.717911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.841431, 35.936661, 27.611462>,  <31.133989, 35.729454, 27.434048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841431, 35.936661, 27.611462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358658, 0.260986, -0.896242,
		-0.580022, -0.814585, -0.005094,
		-0.731395, 0.518013, 0.443535,
		30.622011, 36.092064, 27.744522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.927197, 34.426773, 46.847843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528599, 34.443504, 46.818840>,  <38.289440, 34.453545, 46.801437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528599, 34.443504, 46.818840>,  <38.927197, 34.426773, 46.847843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528599, 34.443504, 46.818840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058977, 0.263840, 0.962762,
		0.059405, 0.963659, -0.260447,
		-0.996490, 0.041833, -0.072507,
		38.229652, 34.456055, 46.797089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759613, 34.929111, 47.303387>,  <38.927197, 34.426773, 46.847843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759613, 34.929111, 47.303387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427673, 34.708080, 47.272385>,  <38.228508, 34.575462, 47.253784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427673, 34.708080, 47.272385>,  <38.759613, 34.929111, 47.303387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427673, 34.708080, 47.272385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100196, 0.010933, 0.994908,
		-0.548917, 0.833390, -0.064439,
		-0.829850, -0.552578, -0.077501,
		38.178719, 34.542305, 47.249134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300468, 35.327061, 47.685425>,  <38.759613, 34.929111, 47.303387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300468, 35.327061, 47.685425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134941, 34.963474, 47.665257>,  <38.035625, 34.745323, 47.653156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.134941, 34.963474, 47.665257>,  <38.300468, 35.327061, 47.685425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134941, 34.963474, 47.665257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193181, 0.033558, 0.980589,
		-0.889628, 0.415524, -0.189481,
		-0.413817, -0.908963, -0.050417,
		38.010796, 34.690784, 47.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688236, 35.360123, 48.130665>,  <38.300468, 35.327061, 47.685425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688236, 35.360123, 48.130665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788799, 34.974014, 48.102242>,  <37.849136, 34.742352, 48.085190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788799, 34.974014, 48.102242>,  <37.688236, 35.360123, 48.130665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788799, 34.974014, 48.102242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111169, -0.044129, 0.992821,
		-0.961475, -0.257503, 0.096214,
		0.251409, -0.965269, -0.071056,
		37.864223, 34.684433, 48.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098457, 35.027328, 48.403034>,  <37.688236, 35.360123, 48.130665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098457, 35.027328, 48.403034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452873, 34.844994, 48.436836>,  <37.665524, 34.735592, 48.457119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452873, 34.844994, 48.436836>,  <37.098457, 35.027328, 48.403034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452873, 34.844994, 48.436836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052592, 0.082276, 0.995221,
		-0.460615, -0.886251, 0.048926,
		0.886041, -0.455840, 0.084508,
		37.718685, 34.708241, 48.462189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969112, 34.630096, 48.888130>,  <37.098457, 35.027328, 48.403034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969112, 34.630096, 48.888130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367973, 34.643250, 48.860992>,  <37.607288, 34.651142, 48.844707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367973, 34.643250, 48.860992>,  <36.969112, 34.630096, 48.888130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367973, 34.643250, 48.860992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063798, 0.111589, 0.991704,
		0.040182, -0.993210, 0.109174,
		0.997154, 0.032884, -0.067849,
		37.667118, 34.653114, 48.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167290, 34.075752, 49.343212>,  <36.969112, 34.630096, 48.888130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167290, 34.075752, 49.343212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.516598, 34.270641, 49.341660>,  <37.726181, 34.387573, 49.340729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.516598, 34.270641, 49.341660>,  <37.167290, 34.075752, 49.343212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516598, 34.270641, 49.341660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050852, -0.083213, 0.995234,
		0.484579, -0.869303, -0.097444,
		0.873268, 0.487224, -0.003883,
		37.778580, 34.416809, 49.340496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569809, 33.619080, 49.726440>,  <37.167290, 34.075752, 49.343212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569809, 33.619080, 49.726440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728424, 33.986267, 49.722633>,  <37.823593, 34.206581, 49.720348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728424, 33.986267, 49.722633>,  <37.569809, 33.619080, 49.726440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728424, 33.986267, 49.722633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032031, 0.024199, 0.999194,
		0.917459, -0.395915, 0.038999,
		0.396539, 0.917968, -0.009520,
		37.847385, 34.261658, 49.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918297, 33.536171, 50.380070>,  <37.569809, 33.619080, 49.726440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918297, 33.536171, 50.380070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958706, 33.917358, 50.265781>,  <37.982952, 34.146072, 50.197208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958706, 33.917358, 50.265781>,  <37.918297, 33.536171, 50.380070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958706, 33.917358, 50.265781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275354, 0.249194, 0.928484,
		0.956021, -0.172469, -0.237231,
		0.101019, 0.952973, -0.285724,
		37.989010, 34.203251, 50.180065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690350, 33.732334, 50.544704>,  <37.918297, 33.536171, 50.380070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690350, 33.732334, 50.544704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447964, 34.049114, 50.514683>,  <38.302532, 34.239182, 50.496670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.447964, 34.049114, 50.514683>,  <38.690350, 33.732334, 50.544704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447964, 34.049114, 50.514683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323621, 0.331603, 0.886177,
		0.726692, 0.512699, -0.457229,
		-0.605961, 0.791946, -0.075053,
		38.266174, 34.286697, 50.492168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119823, 34.250328, 50.693962>,  <38.690350, 33.732334, 50.544704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119823, 34.250328, 50.693962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749249, 34.380238, 50.770096>,  <38.526901, 34.458183, 50.815777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749249, 34.380238, 50.770096>,  <39.119823, 34.250328, 50.693962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749249, 34.380238, 50.770096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301205, 0.336283, 0.892294,
		0.225791, 0.883988, -0.409371,
		-0.926441, 0.324776, 0.190332,
		38.471317, 34.477669, 50.827194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126617, 34.907959, 51.023777>,  <39.119823, 34.250328, 50.693962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126617, 34.907959, 51.023777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753624, 34.815109, 51.134480>,  <38.529827, 34.759399, 51.200901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753624, 34.815109, 51.134480>,  <39.126617, 34.907959, 51.023777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753624, 34.815109, 51.134480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180540, 0.364099, 0.913694,
		-0.312858, 0.901970, -0.297608,
		-0.932483, -0.232126, 0.276753,
		38.473881, 34.745472, 51.217506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930702, 35.411304, 51.552010>,  <39.126617, 34.907959, 51.023777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930702, 35.411304, 51.552010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694790, 35.095573, 51.620274>,  <38.553242, 34.906136, 51.661232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694790, 35.095573, 51.620274>,  <38.930702, 35.411304, 51.552010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694790, 35.095573, 51.620274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181560, 0.076309, 0.980415,
		-0.786891, 0.609212, 0.098305,
		-0.589779, -0.789327, 0.170655,
		38.517857, 34.858776, 51.671471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371498, 35.526131, 52.002403>,  <38.930702, 35.411304, 51.552010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371498, 35.526131, 52.002403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513378, 35.153416, 52.033291>,  <38.598507, 34.929787, 52.051823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513378, 35.153416, 52.033291>,  <38.371498, 35.526131, 52.002403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513378, 35.153416, 52.033291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057901, 0.104317, 0.992857,
		-0.933185, -0.347696, 0.090953,
		0.354700, -0.931786, 0.077216,
		38.619789, 34.873878, 52.056454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035870, 36.260971, 52.243225>,  <38.371498, 35.526131, 52.002403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035870, 36.260971, 52.243225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951508, 36.616776, 52.405354>,  <37.900890, 36.830257, 52.502628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951508, 36.616776, 52.405354>,  <38.035870, 36.260971, 52.243225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951508, 36.616776, 52.405354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122538, 0.387314, -0.913768,
		-0.969796, -0.242385, 0.027313,
		-0.210905, 0.889515, 0.405317,
		37.888237, 36.883629, 52.526947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637646, 36.522610, 51.768700>,  <38.035870, 36.260971, 52.243225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637646, 36.522610, 51.768700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714828, 36.851673, 51.982616>,  <37.761139, 37.049110, 52.110966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714828, 36.851673, 51.982616>,  <37.637646, 36.522610, 51.768700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714828, 36.851673, 51.982616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143671, 0.562848, -0.813978,
		-0.970631, 0.080231, 0.226800,
		0.192960, 0.822657, 0.534791,
		37.772717, 37.098469, 52.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145267, 36.993126, 51.630005>,  <37.637646, 36.522610, 51.768700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145267, 36.993126, 51.630005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433933, 37.230427, 51.772690>,  <37.607132, 37.372807, 51.858303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433933, 37.230427, 51.772690>,  <37.145267, 36.993126, 51.630005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433933, 37.230427, 51.772690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106185, 0.604076, -0.789821,
		-0.684050, 0.532108, 0.498935,
		0.721665, 0.593257, 0.356716,
		37.650433, 37.408405, 51.879704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923054, 37.699402, 51.735245>,  <37.145267, 36.993126, 51.630005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923054, 37.699402, 51.735245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316422, 37.715298, 51.664471>,  <37.552441, 37.724834, 51.622005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316422, 37.715298, 51.664471>,  <36.923054, 37.699402, 51.735245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316422, 37.715298, 51.664471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161298, 0.637536, -0.753347,
		0.082866, 0.769395, 0.633375,
		0.983421, 0.039736, -0.176932,
		37.611446, 37.727219, 51.611393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992233, 38.398197, 51.524681>,  <36.923054, 37.699402, 51.735245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992233, 38.398197, 51.524681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338890, 38.233231, 51.412361>,  <37.546883, 38.134251, 51.344967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338890, 38.233231, 51.412361>,  <36.992233, 38.398197, 51.524681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338890, 38.233231, 51.412361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083406, 0.674639, -0.733420,
		0.491913, 0.612191, 0.619067,
		0.866640, -0.412413, -0.280803,
		37.598881, 38.109509, 51.328121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266712, 38.890903, 51.233994>,  <36.992233, 38.398197, 51.524681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266712, 38.890903, 51.233994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472271, 38.573170, 51.104416>,  <37.595604, 38.382530, 51.026669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472271, 38.573170, 51.104416>,  <37.266712, 38.890903, 51.233994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472271, 38.573170, 51.104416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031023, 0.360171, -0.932370,
		0.857293, 0.489188, 0.160447,
		0.513893, -0.794337, -0.323948,
		37.626438, 38.334869, 51.007233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792313, 39.177498, 50.832932>,  <37.266712, 38.890903, 51.233994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792313, 39.177498, 50.832932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730915, 38.798046, 50.722263>,  <37.694077, 38.570377, 50.655861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.730915, 38.798046, 50.722263>,  <37.792313, 39.177498, 50.832932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730915, 38.798046, 50.722263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116674, 0.260632, -0.958362,
		0.981237, -0.179384, 0.070674,
		-0.153495, -0.948626, -0.276671,
		37.684868, 38.513458, 50.639263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232948, 39.042927, 50.353870>,  <37.792313, 39.177498, 50.832932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232948, 39.042927, 50.353870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005859, 38.721874, 50.280682>,  <37.869606, 38.529243, 50.236767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005859, 38.721874, 50.280682>,  <38.232948, 39.042927, 50.353870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005859, 38.721874, 50.280682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189113, 0.089162, -0.977899,
		0.801205, -0.589776, 0.101169,
		-0.567721, -0.802629, -0.182971,
		37.835545, 38.481087, 50.225792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547501, 38.578033, 49.869095>,  <38.232948, 39.042927, 50.353870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547501, 38.578033, 49.869095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159458, 38.488590, 49.831383>,  <37.926632, 38.434925, 49.808758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.159458, 38.488590, 49.831383>,  <38.547501, 38.578033, 49.869095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159458, 38.488590, 49.831383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067408, 0.124899, -0.989877,
		0.233122, -0.966643, -0.106093,
		-0.970108, -0.223611, -0.094276,
		37.868427, 38.421509, 49.803101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525852, 38.049805, 49.336292>,  <38.547501, 38.578033, 49.869095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525852, 38.049805, 49.336292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146214, 38.169216, 49.376484>,  <37.918430, 38.240864, 49.400600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146214, 38.169216, 49.376484>,  <38.525852, 38.049805, 49.336292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146214, 38.169216, 49.376484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081809, 0.074428, -0.993865,
		-0.304180, -0.951493, -0.046217,
		-0.949095, 0.298533, 0.100480,
		37.861485, 38.258778, 49.406628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079079, 37.527760, 48.911701>,  <38.525852, 38.049805, 49.336292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079079, 37.527760, 48.911701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861862, 37.860889, 48.954632>,  <37.731533, 38.060768, 48.980389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861862, 37.860889, 48.954632>,  <38.079079, 37.527760, 48.911701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861862, 37.860889, 48.954632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105776, 0.058951, -0.992641,
		-0.833019, -0.550395, 0.056080,
		-0.543038, 0.832821, 0.107326,
		37.698952, 38.110737, 48.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453503, 37.423229, 48.490219>,  <38.079079, 37.527760, 48.911701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453503, 37.423229, 48.490219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472633, 37.818871, 48.545918>,  <37.484112, 38.056255, 48.579338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472633, 37.818871, 48.545918>,  <37.453503, 37.423229, 48.490219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472633, 37.818871, 48.545918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230894, 0.146576, -0.961875,
		-0.971803, 0.013848, 0.235387,
		0.047823, 0.989103, 0.139246,
		37.486980, 38.115601, 48.587692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958698, 37.639355, 48.121185>,  <37.453503, 37.423229, 48.490219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958698, 37.639355, 48.121185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195683, 37.959908, 48.154121>,  <37.337875, 38.152237, 48.173885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195683, 37.959908, 48.154121>,  <36.958698, 37.639355, 48.121185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195683, 37.959908, 48.154121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003706, 0.104923, -0.994473,
		-0.805589, 0.588884, 0.065133,
		0.592464, 0.801378, 0.082343,
		37.373421, 38.200321, 48.178825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719711, 37.968281, 47.632011>,  <36.958698, 37.639355, 48.121185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719711, 37.968281, 47.632011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066628, 38.158268, 47.691631>,  <37.274776, 38.272263, 47.727406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066628, 38.158268, 47.691631>,  <36.719711, 37.968281, 47.632011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066628, 38.158268, 47.691631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051151, 0.212805, -0.975755,
		-0.495173, 0.853884, 0.160268,
		0.867287, 0.474970, 0.149052,
		37.326813, 38.300758, 47.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272091, 38.584400, 47.932198>,  <36.719711, 37.968281, 47.632011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272091, 38.584400, 47.932198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874172, 38.620533, 47.951046>,  <35.635422, 38.642212, 47.962357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874172, 38.620533, 47.951046>,  <36.272091, 38.584400, 47.932198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874172, 38.620533, 47.951046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024138, -0.240357, 0.970384,
		0.098987, 0.966472, 0.236926,
		-0.994796, 0.090336, 0.047120,
		35.575733, 38.647633, 47.965183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088818, 38.936710, 48.580204>,  <36.272091, 38.584400, 47.932198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088818, 38.936710, 48.580204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733284, 38.776291, 48.491539>,  <35.519962, 38.680038, 48.438339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733284, 38.776291, 48.491539>,  <36.088818, 38.936710, 48.580204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733284, 38.776291, 48.491539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113518, -0.275942, 0.954447,
		-0.443948, 0.873507, 0.199740,
		-0.888833, -0.401051, -0.221662,
		35.466633, 38.655975, 48.425041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539234, 39.187176, 49.127934>,  <36.088818, 38.936710, 48.580204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539234, 39.187176, 49.127934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388496, 38.863201, 48.948158>,  <35.298054, 38.668816, 48.840294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388496, 38.863201, 48.948158>,  <35.539234, 39.187176, 49.127934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388496, 38.863201, 48.948158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191211, -0.406738, 0.893310,
		-0.906327, 0.422575, -0.001592,
		-0.376843, -0.809935, -0.449439,
		35.275444, 38.620220, 48.813328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945629, 39.145390, 49.450600>,  <35.539234, 39.187176, 49.127934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945629, 39.145390, 49.450600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007080, 38.784241, 49.289989>,  <35.043953, 38.567551, 49.193623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007080, 38.784241, 49.289989>,  <34.945629, 39.145390, 49.450600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007080, 38.784241, 49.289989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321856, -0.429910, 0.843556,
		-0.934241, -0.000362, -0.356641,
		0.153629, -0.902872, -0.401524,
		35.053169, 38.513378, 49.169533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367458, 38.777309, 49.563393>,  <34.945629, 39.145390, 49.450600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367458, 38.777309, 49.563393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645233, 38.493786, 49.513851>,  <34.811897, 38.323673, 49.484127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645233, 38.493786, 49.513851>,  <34.367458, 38.777309, 49.563393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645233, 38.493786, 49.513851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282941, -0.427257, 0.858718,
		-0.661587, -0.561283, -0.497256,
		0.694440, -0.708811, -0.123858,
		34.853565, 38.281143, 49.476692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919193, 38.149391, 49.692154>,  <34.367458, 38.777309, 49.563393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919193, 38.149391, 49.692154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308025, 38.058525, 49.715675>,  <34.541325, 38.004005, 49.729786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308025, 38.058525, 49.715675>,  <33.919193, 38.149391, 49.692154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308025, 38.058525, 49.715675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190351, -0.616874, 0.763697,
		-0.137212, -0.753567, -0.642892,
		0.972080, -0.227164, 0.058800,
		34.599648, 37.990376, 49.733315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977833, 37.418270, 49.738617>,  <33.919193, 38.149391, 49.692154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977833, 37.418270, 49.738617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318352, 37.560982, 49.892498>,  <34.522663, 37.646610, 49.984825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318352, 37.560982, 49.892498>,  <33.977833, 37.418270, 49.738617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318352, 37.560982, 49.892498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138174, -0.554883, 0.820374,
		0.506161, -0.751539, -0.423073,
		0.851298, 0.356784, 0.384703,
		34.573742, 37.668018, 50.007908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430779, 36.881756, 49.814423>,  <33.977833, 37.418270, 49.738617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430779, 36.881756, 49.814423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506599, 37.142769, 50.107891>,  <34.552094, 37.299377, 50.283974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506599, 37.142769, 50.107891>,  <34.430779, 36.881756, 49.814423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506599, 37.142769, 50.107891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146133, -0.720146, 0.678259,
		0.970934, -0.235782, -0.041152,
		0.189557, 0.652531, 0.733670,
		34.563465, 37.338528, 50.327991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459908, 36.068039, 49.584843>,  <34.430779, 36.881756, 49.814423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459908, 36.068039, 49.584843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068909, 35.983845, 49.579231>,  <33.834309, 35.933327, 49.575863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068909, 35.983845, 49.579231>,  <34.459908, 36.068039, 49.584843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068909, 35.983845, 49.579231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045134, -0.143694, -0.988592,
		0.206068, -0.966979, 0.149960,
		-0.977496, -0.210485, -0.014033,
		33.775661, 35.920700, 49.575020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408264, 35.531029, 49.105640>,  <34.459908, 36.068039, 49.584843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408264, 35.531029, 49.105640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057236, 35.720730, 49.133789>,  <33.846619, 35.834549, 49.150677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057236, 35.720730, 49.133789>,  <34.408264, 35.531029, 49.105640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057236, 35.720730, 49.133789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048830, 0.057602, -0.997145,
		-0.476954, -0.878502, -0.027392,
		-0.877571, 0.474254, 0.070371,
		33.793964, 35.863007, 49.154900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971390, 35.160191, 48.688725>,  <34.408264, 35.531029, 49.105640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971390, 35.160191, 48.688725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796265, 35.516438, 48.737904>,  <33.691189, 35.730186, 48.767410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796265, 35.516438, 48.737904>,  <33.971390, 35.160191, 48.688725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796265, 35.516438, 48.737904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084775, 0.095242, -0.991838,
		-0.895059, -0.444665, 0.033804,
		-0.437816, 0.890619, 0.122944,
		33.664921, 35.783623, 48.774788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349476, 35.085129, 48.295425>,  <33.971390, 35.160191, 48.688725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349476, 35.085129, 48.295425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398842, 35.478756, 48.346615>,  <33.428459, 35.714931, 48.377327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398842, 35.478756, 48.346615>,  <33.349476, 35.085129, 48.295425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398842, 35.478756, 48.346615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225904, 0.153428, -0.961991,
		-0.966301, 0.089812, 0.241240,
		0.123412, 0.984070, 0.127969,
		33.435863, 35.773975, 48.385006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784130, 35.415356, 47.905788>,  <33.349476, 35.085129, 48.295425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784130, 35.415356, 47.905788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062428, 35.701160, 47.935223>,  <33.229404, 35.872643, 47.952881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062428, 35.701160, 47.935223>,  <32.784130, 35.415356, 47.905788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062428, 35.701160, 47.935223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257125, 0.343395, -0.903309,
		-0.670692, 0.609552, 0.422633,
		0.695744, 0.714511, 0.073581,
		33.271152, 35.915512, 47.957298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475704, 36.076431, 47.574886>,  <32.784130, 35.415356, 47.905788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475704, 36.076431, 47.574886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862698, 36.170067, 47.613190>,  <33.094894, 36.226250, 47.636169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862698, 36.170067, 47.613190>,  <32.475704, 36.076431, 47.574886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862698, 36.170067, 47.613190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023978, 0.291999, -0.956118,
		-0.251780, 0.927328, 0.276892,
		0.967487, 0.234092, 0.095755,
		33.152943, 36.240295, 47.641914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.605671, 32.115078, 50.499973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698746, 32.491100, 50.400257>,  <35.754593, 32.716713, 50.340427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698746, 32.491100, 50.400257>,  <35.605671, 32.115078, 50.499973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698746, 32.491100, 50.400257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886868, -0.099900, 0.451093,
		0.399150, -0.326050, -0.856954,
		0.232689, 0.940059, -0.249288,
		35.768551, 32.773117, 50.325470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350552, 32.667763, 51.119553>,  <35.605671, 32.115078, 50.499973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350552, 32.667763, 51.119553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683743, 32.886246, 51.084229>,  <35.883659, 33.017338, 51.063034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.683743, 32.886246, 51.084229>,  <35.350552, 32.667763, 51.119553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683743, 32.886246, 51.084229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138671, 0.051575, -0.988995,
		-0.535645, 0.836059, 0.118705,
		0.832980, 0.546210, -0.088312,
		35.933636, 33.050110, 51.057735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221024, 33.356190, 50.713982>,  <35.350552, 32.667763, 51.119553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221024, 33.356190, 50.713982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602631, 33.242439, 50.676083>,  <35.831596, 33.174191, 50.653343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602631, 33.242439, 50.676083>,  <35.221024, 33.356190, 50.713982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602631, 33.242439, 50.676083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079077, 0.066101, -0.994675,
		0.289122, 0.956432, 0.040574,
		0.954021, -0.284373, -0.094743,
		35.888836, 33.157127, 50.647659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425179, 33.768806, 50.272896>,  <35.221024, 33.356190, 50.713982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425179, 33.768806, 50.272896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.701134, 33.480457, 50.246361>,  <35.866707, 33.307449, 50.230438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.701134, 33.480457, 50.246361>,  <35.425179, 33.768806, 50.272896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701134, 33.480457, 50.246361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113076, 0.197817, -0.973695,
		0.715034, 0.664236, 0.217984,
		0.689884, -0.720874, -0.066337,
		35.908100, 33.264194, 50.226460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002449, 34.039391, 49.894669>,  <35.425179, 33.768806, 50.272896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002449, 34.039391, 49.894669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041512, 33.641975, 49.871521>,  <36.064949, 33.403526, 49.857632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041512, 33.641975, 49.871521>,  <36.002449, 34.039391, 49.894669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041512, 33.641975, 49.871521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036105, 0.061643, -0.997445,
		0.994565, 0.095315, 0.041891,
		0.097654, -0.993537, -0.057866,
		36.070808, 33.343914, 49.854160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474213, 33.918842, 49.287590>,  <36.002449, 34.039391, 49.894669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474213, 33.918842, 49.287590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259815, 33.588676, 49.358467>,  <36.131176, 33.390575, 49.400993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259815, 33.588676, 49.358467>,  <36.474213, 33.918842, 49.287590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259815, 33.588676, 49.358467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183931, -0.090669, -0.978748,
		0.823941, -0.557195, -0.103222,
		-0.535995, -0.825417, 0.177191,
		36.099018, 33.341053, 49.411625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852619, 33.439541, 48.863483>,  <36.474213, 33.918842, 49.287590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852619, 33.439541, 48.863483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.476131, 33.324333, 48.934093>,  <36.250240, 33.255211, 48.976460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.476131, 33.324333, 48.934093>,  <36.852619, 33.439541, 48.863483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476131, 33.324333, 48.934093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123200, -0.193897, -0.973255,
		0.314539, -0.937791, 0.147015,
		-0.941216, -0.288015, 0.176524,
		36.193768, 33.237930, 48.987049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789829, 32.818207, 48.510525>,  <36.852619, 33.439541, 48.863483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789829, 32.818207, 48.510525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401295, 32.893360, 48.568760>,  <36.168175, 32.938454, 48.603703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401295, 32.893360, 48.568760>,  <36.789829, 32.818207, 48.510525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401295, 32.893360, 48.568760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178703, -0.173378, -0.968507,
		-0.156711, -0.966770, 0.201983,
		-0.971343, 0.187871, 0.145594,
		36.109894, 32.949726, 48.612438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458599, 32.285400, 48.380203>,  <36.789829, 32.818207, 48.510525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458599, 32.285400, 48.380203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212967, 32.594166, 48.314411>,  <36.065590, 32.779427, 48.274937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.212967, 32.594166, 48.314411>,  <36.458599, 32.285400, 48.380203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212967, 32.594166, 48.314411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189633, -0.346600, -0.918644,
		-0.766126, -0.532928, 0.359220,
		-0.614077, 0.771917, -0.164478,
		36.028744, 32.825741, 48.265068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882557, 31.987696, 48.116398>,  <36.458599, 32.285400, 48.380203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882557, 31.987696, 48.116398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.827427, 32.367775, 48.004593>,  <35.794350, 32.595821, 47.937511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.827427, 32.367775, 48.004593>,  <35.882557, 31.987696, 48.116398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827427, 32.367775, 48.004593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239612, -0.305812, -0.921447,
		-0.961036, -0.060025, 0.269828,
		-0.137827, 0.950197, -0.279514,
		35.786079, 32.652836, 47.920738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200363, 31.982494, 47.724686>,  <35.882557, 31.987696, 48.116398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200363, 31.982494, 47.724686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431232, 32.292664, 47.622246>,  <35.569756, 32.478764, 47.560780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431232, 32.292664, 47.622246>,  <35.200363, 31.982494, 47.724686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431232, 32.292664, 47.622246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071925, -0.264123, -0.961803,
		-0.813445, 0.573551, -0.096673,
		0.577177, 0.775421, -0.256102,
		35.604385, 32.525291, 47.545414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729618, 32.259701, 47.358265>,  <35.200363, 31.982494, 47.724686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729618, 32.259701, 47.358265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103481, 32.369358, 47.267704>,  <35.327801, 32.435154, 47.213367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103481, 32.369358, 47.267704>,  <34.729618, 32.259701, 47.358265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103481, 32.369358, 47.267704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168525, -0.219116, -0.961034,
		-0.313071, 0.936394, -0.158599,
		0.934658, 0.274144, -0.226405,
		35.383881, 32.451603, 47.199783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139751, 32.648640, 47.053955>,  <34.729618, 32.259701, 47.358265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139751, 32.648640, 47.053955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794334, 32.461681, 47.129684>,  <33.587086, 32.349506, 47.175121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.794334, 32.461681, 47.129684>,  <34.139751, 32.648640, 47.053955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794334, 32.461681, 47.129684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143848, 0.131526, 0.980820,
		-0.483332, 0.874210, -0.046343,
		-0.863538, -0.467395, 0.189324,
		33.535275, 32.321465, 47.186481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013611, 32.977036, 47.638577>,  <34.139751, 32.648640, 47.053955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013611, 32.977036, 47.638577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.777115, 32.654438, 47.639141>,  <33.635220, 32.460880, 47.639481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.777115, 32.654438, 47.639141>,  <34.013611, 32.977036, 47.638577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777115, 32.654438, 47.639141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002527, -0.000100, 0.999997,
		-0.806495, 0.591237, 0.002097,
		-0.591235, -0.806498, 0.001413,
		33.599743, 32.412487, 47.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454678, 33.120365, 48.106441>,  <34.013611, 32.977036, 47.638577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454678, 33.120365, 48.106441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461369, 32.721161, 48.082111>,  <33.465382, 32.481640, 48.067513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461369, 32.721161, 48.082111>,  <33.454678, 33.120365, 48.106441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461369, 32.721161, 48.082111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094732, -0.062144, 0.993561,
		-0.995362, -0.010853, -0.095583,
		0.016723, -0.998008, -0.060827,
		33.466385, 32.421757, 48.063862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989761, 32.915897, 48.589687>,  <33.454678, 33.120365, 48.106441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989761, 32.915897, 48.589687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.198200, 32.578888, 48.535110>,  <33.323261, 32.376682, 48.502365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.198200, 32.578888, 48.535110>,  <32.989761, 32.915897, 48.589687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198200, 32.578888, 48.535110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246109, -0.301396, 0.921190,
		-0.817246, -0.446448, -0.364408,
		0.521095, -0.842523, -0.136440,
		33.354530, 32.326130, 48.494179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613304, 32.354309, 48.814331>,  <32.989761, 32.915897, 48.589687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613304, 32.354309, 48.814331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.971638, 32.177460, 48.832233>,  <33.186638, 32.071350, 48.842976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.971638, 32.177460, 48.832233>,  <32.613304, 32.354309, 48.814331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971638, 32.177460, 48.832233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217650, -0.348726, 0.911602,
		-0.387442, -0.826383, -0.408630,
		0.895833, -0.442132, 0.044752,
		33.240387, 32.044823, 48.845661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497227, 31.580944, 48.956078>,  <32.613304, 32.354309, 48.814331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497227, 31.580944, 48.956078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845470, 31.729912, 49.084660>,  <33.054417, 31.819292, 49.161808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845470, 31.729912, 49.084660>,  <32.497227, 31.580944, 48.956078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845470, 31.729912, 49.084660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134684, -0.448024, 0.883818,
		0.473173, -0.812759, -0.339896,
		0.870613, 0.372421, 0.321458,
		33.106655, 31.841639, 49.181099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658642, 31.073036, 49.322998>,  <32.497227, 31.580944, 48.956078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658642, 31.073036, 49.322998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904434, 31.356585, 49.461514>,  <33.051910, 31.526714, 49.544624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904434, 31.356585, 49.461514>,  <32.658642, 31.073036, 49.322998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904434, 31.356585, 49.461514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171483, -0.308431, 0.935662,
		0.770071, -0.634327, -0.067965,
		0.614478, 0.708872, 0.346290,
		33.088779, 31.569246, 49.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233711, 30.840315, 49.788250>,  <32.658642, 31.073036, 49.322998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233711, 30.840315, 49.788250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148773, 31.217560, 49.890583>,  <33.097813, 31.443907, 49.951984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148773, 31.217560, 49.890583>,  <33.233711, 30.840315, 49.788250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148773, 31.217560, 49.890583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027110, -0.256016, 0.966292,
		0.976819, 0.212120, 0.028796,
		-0.212342, 0.943112, 0.255832,
		33.085072, 31.500494, 49.967331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483864, 30.735023, 50.398979>,  <33.233711, 30.840315, 49.788250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483864, 30.735023, 50.398979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315273, 31.097408, 50.414955>,  <33.214119, 31.314838, 50.424541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315273, 31.097408, 50.414955>,  <33.483864, 30.735023, 50.398979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315273, 31.097408, 50.414955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120804, -0.099742, 0.987653,
		0.898759, 0.411444, 0.151482,
		-0.421473, 0.905961, 0.039939,
		33.188831, 31.369196, 50.426937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865818, 31.128544, 50.873161>,  <33.483864, 30.735023, 50.398979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865818, 31.128544, 50.873161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500385, 31.291067, 50.879852>,  <33.281124, 31.388580, 50.883865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.500385, 31.291067, 50.879852>,  <33.865818, 31.128544, 50.873161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500385, 31.291067, 50.879852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045524, -0.143059, 0.988667,
		0.404094, 0.902469, 0.149193,
		-0.913584, 0.406307, 0.016725,
		33.226311, 31.412958, 50.884869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948891, 31.486128, 51.431751>,  <33.865818, 31.128544, 50.873161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948891, 31.486128, 51.431751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560059, 31.495659, 51.338383>,  <33.326759, 31.501377, 51.282360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560059, 31.495659, 51.338383>,  <33.948891, 31.486128, 51.431751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560059, 31.495659, 51.338383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221254, 0.238071, 0.945711,
		0.078103, 0.970955, -0.226154,
		-0.972084, 0.023825, -0.233422,
		33.268433, 31.502806, 51.268356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643646, 32.118027, 51.792664>,  <33.948891, 31.486128, 51.431751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643646, 32.118027, 51.792664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.328312, 31.882095, 51.722660>,  <33.139111, 31.740536, 51.680656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.328312, 31.882095, 51.722660>,  <33.643646, 32.118027, 51.792664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328312, 31.882095, 51.722660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422066, 0.311492, 0.851371,
		-0.447652, 0.745030, -0.494508,
		-0.788333, -0.589833, -0.175012,
		33.091812, 31.705145, 51.670158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097641, 32.538204, 51.918526>,  <33.643646, 32.118027, 51.792664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097641, 32.538204, 51.918526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933914, 32.179501, 51.985786>,  <32.835678, 31.964277, 52.026142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.933914, 32.179501, 51.985786>,  <33.097641, 32.538204, 51.918526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933914, 32.179501, 51.985786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402509, 0.342879, 0.848776,
		-0.818805, 0.279739, -0.501302,
		-0.409321, -0.896761, 0.168154,
		32.811119, 31.910473, 52.036232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423672, 33.161800, 51.645004>,  <33.097641, 32.538204, 51.918526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423672, 33.161800, 51.645004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119675, 33.416142, 51.698818>,  <32.937275, 33.568748, 51.731106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119675, 33.416142, 51.698818>,  <33.423672, 33.161800, 51.645004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119675, 33.416142, 51.698818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283418, 0.510509, -0.811822,
		-0.584881, -0.578850, -0.568196,
		-0.759992, 0.635856, 0.134531,
		32.891678, 33.606899, 51.739178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164169, 33.275627, 50.994419>,  <33.423672, 33.161800, 51.645004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164169, 33.275627, 50.994419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.091309, 33.579956, 51.243568>,  <33.047592, 33.762554, 51.393059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.091309, 33.579956, 51.243568>,  <33.164169, 33.275627, 50.994419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091309, 33.579956, 51.243568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195641, 0.648849, -0.735336,
		-0.963611, -0.012082, -0.267036,
		-0.182151, 0.760821, 0.622875,
		33.036663, 33.808201, 51.430431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727303, 33.759209, 50.660046>,  <33.164169, 33.275627, 50.994419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727303, 33.759209, 50.660046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896664, 33.989079, 50.940186>,  <32.998280, 34.126999, 51.108269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896664, 33.989079, 50.940186>,  <32.727303, 33.759209, 50.660046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896664, 33.989079, 50.940186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192841, 0.698172, -0.689470,
		-0.885180, 0.426978, 0.184786,
		0.423401, 0.574670, 0.700347,
		33.023685, 34.161480, 51.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395973, 34.383038, 50.623028>,  <32.727303, 33.759209, 50.660046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395973, 34.383038, 50.623028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757484, 34.447769, 50.781521>,  <32.974392, 34.486607, 50.876617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757484, 34.447769, 50.781521>,  <32.395973, 34.383038, 50.623028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757484, 34.447769, 50.781521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156534, 0.736650, -0.657909,
		-0.398349, 0.656627, 0.640437,
		0.903778, 0.161827, 0.396228,
		33.028618, 34.496319, 50.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444260, 35.092773, 50.560898>,  <32.395973, 34.383038, 50.623028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444260, 35.092773, 50.560898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825699, 34.992142, 50.627056>,  <33.054562, 34.931763, 50.666752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825699, 34.992142, 50.627056>,  <32.444260, 35.092773, 50.560898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825699, 34.992142, 50.627056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301075, 0.799120, -0.520347,
		-0.001264, 0.545999, 0.837785,
		0.953600, -0.251579, 0.165396,
		33.111778, 34.916668, 50.676674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797203, 35.719891, 50.793686>,  <32.444260, 35.092773, 50.560898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797203, 35.719891, 50.793686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.085239, 35.470860, 50.671139>,  <33.258060, 35.321442, 50.597610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.085239, 35.470860, 50.671139>,  <32.797203, 35.719891, 50.793686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085239, 35.470860, 50.671139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378580, 0.722540, -0.578458,
		0.581501, 0.300557, 0.755991,
		0.720093, -0.622577, -0.306372,
		33.301266, 35.284088, 50.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484421, 36.128098, 50.785473>,  <32.797203, 35.719891, 50.793686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484421, 36.128098, 50.785473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490372, 35.829063, 50.519875>,  <33.493942, 35.649643, 50.360516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490372, 35.829063, 50.519875>,  <33.484421, 36.128098, 50.785473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490372, 35.829063, 50.519875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291951, 0.638379, -0.712206,
		0.956318, -0.183257, 0.227757,
		0.014878, -0.747589, -0.663995,
		33.494835, 35.604786, 50.320675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123016, 36.158470, 50.400002>,  <33.484421, 36.128098, 50.785473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123016, 36.158470, 50.400002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869694, 35.944527, 50.176270>,  <33.717701, 35.816162, 50.042030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869694, 35.944527, 50.176270>,  <34.123016, 36.158470, 50.400002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869694, 35.944527, 50.176270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289300, 0.506726, -0.812117,
		0.717796, -0.676132, -0.166178,
		-0.633305, -0.534859, -0.559331,
		33.679703, 35.784069, 50.008469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780861, 36.516582, 50.412872>,  <34.123016, 36.158470, 50.400002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780861, 36.516582, 50.412872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.859871, 36.907806, 50.439377>,  <34.907276, 37.142540, 50.455280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.859871, 36.907806, 50.439377>,  <34.780861, 36.516582, 50.412872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859871, 36.907806, 50.439377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006741, -0.066237, 0.997781,
		0.980275, -0.197532, -0.006490,
		0.197523, 0.978056, 0.066262,
		34.919128, 37.201221, 50.459255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394413, 36.516762, 50.695732>,  <34.780861, 36.516582, 50.412872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394413, 36.516762, 50.695732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215336, 36.866062, 50.772690>,  <35.107891, 37.075642, 50.818863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215336, 36.866062, 50.772690>,  <35.394413, 36.516762, 50.695732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215336, 36.866062, 50.772690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328070, -0.039746, 0.943817,
		0.831831, 0.485656, -0.268692,
		-0.447691, 0.873246, 0.192391,
		35.081028, 37.128036, 50.830406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929436, 37.049408, 51.028061>,  <35.394413, 36.516762, 50.695732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929436, 37.049408, 51.028061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.551685, 37.129292, 51.132572>,  <35.325035, 37.177223, 51.195278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.551685, 37.129292, 51.132572>,  <35.929436, 37.049408, 51.028061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551685, 37.129292, 51.132572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288017, 0.118785, 0.950230,
		0.158732, 0.972629, -0.169697,
		-0.944378, 0.199708, 0.261279,
		35.268372, 37.189205, 51.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999187, 37.513451, 51.621147>,  <35.929436, 37.049408, 51.028061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999187, 37.513451, 51.621147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.616470, 37.401180, 51.651505>,  <35.386841, 37.333817, 51.669720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.616470, 37.401180, 51.651505>,  <35.999187, 37.513451, 51.621147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616470, 37.401180, 51.651505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031524, 0.159331, 0.986722,
		-0.289045, 0.946484, -0.143599,
		-0.956796, -0.280680, 0.075890,
		35.329430, 37.316975, 51.674271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691803, 37.984329, 52.160812>,  <35.999187, 37.513451, 51.621147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691803, 37.984329, 52.160812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474205, 37.649334, 52.140053>,  <35.343647, 37.448338, 52.127598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474205, 37.649334, 52.140053>,  <35.691803, 37.984329, 52.160812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474205, 37.649334, 52.140053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004637, -0.058852, 0.998256,
		-0.839078, 0.543284, 0.028132,
		-0.543992, -0.837484, -0.051901,
		35.311008, 37.398090, 52.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127338, 37.960316, 52.766602>,  <35.691803, 37.984329, 52.160812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127338, 37.960316, 52.766602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165890, 37.578930, 52.652325>,  <35.189022, 37.350098, 52.583759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165890, 37.578930, 52.652325>,  <35.127338, 37.960316, 52.766602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165890, 37.578930, 52.652325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061580, -0.292192, 0.954375,
		-0.993438, -0.074391, -0.086876,
		0.096381, -0.953462, -0.285693,
		35.194805, 37.292892, 52.566616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747738, 37.635418, 53.317043>,  <35.127338, 37.960316, 52.766602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747738, 37.635418, 53.317043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907345, 37.310833, 53.146252>,  <35.003109, 37.116081, 53.043777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907345, 37.310833, 53.146252>,  <34.747738, 37.635418, 53.317043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907345, 37.310833, 53.146252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090758, -0.428421, 0.899009,
		-0.912442, -0.397471, -0.097300,
		0.399015, -0.811463, -0.426983,
		35.027050, 37.067394, 53.018158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424633, 37.002247, 53.619770>,  <34.747738, 37.635418, 53.317043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424633, 37.002247, 53.619770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762074, 36.852352, 53.465935>,  <34.964539, 36.762417, 53.373634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762074, 36.852352, 53.465935>,  <34.424633, 37.002247, 53.619770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762074, 36.852352, 53.465935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128024, -0.555200, 0.821805,
		-0.521475, -0.742516, -0.420396,
		0.843607, -0.374730, -0.384583,
		35.015156, 36.739933, 53.350559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385399, 36.298508, 53.801159>,  <34.424633, 37.002247, 53.619770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385399, 36.298508, 53.801159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775276, 36.368698, 53.745773>,  <35.009205, 36.410812, 53.712543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775276, 36.368698, 53.745773>,  <34.385399, 36.298508, 53.801159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775276, 36.368698, 53.745773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215813, -0.577431, 0.787400,
		0.058215, -0.797359, -0.600690,
		0.974698, 0.175475, -0.138465,
		35.067684, 36.421341, 53.704235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.727978, 37.186821, 38.044327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051548, 37.071949, 38.249531>,  <37.245689, 37.003025, 38.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051548, 37.071949, 38.249531>,  <36.727978, 37.186821, 38.044327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051548, 37.071949, 38.249531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494727, 0.138936, 0.857871,
		-0.317634, -0.947748, -0.029685,
		0.808921, -0.287175, 0.513007,
		37.294224, 36.985798, 38.403435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491344, 36.698505, 38.602226>,  <36.727978, 37.186821, 38.044327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491344, 36.698505, 38.602226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846142, 36.847576, 38.711296>,  <37.059021, 36.937019, 38.776737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846142, 36.847576, 38.711296>,  <36.491344, 36.698505, 38.602226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846142, 36.847576, 38.711296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345750, 0.144575, 0.927122,
		0.306098, -0.916628, 0.257092,
		0.886995, 0.372680, 0.272670,
		37.112240, 36.959381, 38.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608147, 36.316616, 39.173950>,  <36.491344, 36.698505, 38.602226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608147, 36.316616, 39.173950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799248, 36.668007, 39.176231>,  <36.913910, 36.878841, 39.177601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799248, 36.668007, 39.176231>,  <36.608147, 36.316616, 39.173950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799248, 36.668007, 39.176231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286305, 0.149566, 0.946393,
		0.830530, -0.453776, 0.322968,
		0.477755, 0.878475, 0.005699,
		36.942574, 36.931549, 39.177940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979141, 36.258324, 39.789883>,  <36.608147, 36.316616, 39.173950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979141, 36.258324, 39.789883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941063, 36.644943, 39.694626>,  <36.918217, 36.876915, 39.637470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941063, 36.644943, 39.694626>,  <36.979141, 36.258324, 39.789883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941063, 36.644943, 39.694626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318432, 0.197097, 0.927229,
		0.943154, 0.164098, 0.289020,
		-0.095191, 0.966553, -0.238147,
		36.912506, 36.934910, 39.623180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160351, 36.560608, 40.439156>,  <36.979141, 36.258324, 39.789883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160351, 36.560608, 40.439156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974289, 36.836853, 40.217640>,  <36.862652, 37.002602, 40.084732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974289, 36.836853, 40.217640>,  <37.160351, 36.560608, 40.439156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974289, 36.836853, 40.217640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425928, 0.373805, 0.823927,
		0.776025, 0.619128, 0.120275,
		-0.465157, 0.690616, -0.553786,
		36.834743, 37.044037, 40.051506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164612, 37.220795, 40.821510>,  <37.160351, 36.560608, 40.439156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164612, 37.220795, 40.821510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864208, 37.251163, 40.559147>,  <36.683964, 37.269386, 40.401730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864208, 37.251163, 40.559147>,  <37.164612, 37.220795, 40.821510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864208, 37.251163, 40.559147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565231, 0.439562, 0.698068,
		0.341311, 0.894997, -0.287204,
		-0.751013, 0.075922, -0.655908,
		36.638905, 37.273941, 40.362373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031578, 37.859673, 40.878155>,  <37.164612, 37.220795, 40.821510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031578, 37.859673, 40.878155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710030, 37.736797, 40.674416>,  <36.517101, 37.663071, 40.552174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710030, 37.736797, 40.674416>,  <37.031578, 37.859673, 40.878155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710030, 37.736797, 40.674416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585179, 0.561902, 0.584663,
		0.106598, 0.768049, -0.631457,
		-0.803867, -0.307191, -0.509344,
		36.468868, 37.644638, 40.521614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682480, 38.461533, 40.771923>,  <37.031578, 37.859673, 40.878155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682480, 38.461533, 40.771923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410606, 38.168499, 40.757206>,  <36.247482, 37.992680, 40.748375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410606, 38.168499, 40.757206>,  <36.682480, 38.461533, 40.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410606, 38.168499, 40.757206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505540, 0.431506, 0.747150,
		-0.531474, 0.526424, -0.663637,
		-0.679680, -0.732585, -0.036794,
		36.206703, 37.948723, 40.746166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052906, 38.801437, 40.934265>,  <36.682480, 38.461533, 40.771923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052906, 38.801437, 40.934265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943081, 38.422028, 40.997414>,  <35.877186, 38.194382, 41.035305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943081, 38.422028, 40.997414>,  <36.052906, 38.801437, 40.934265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943081, 38.422028, 40.997414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466974, 0.275049, 0.840407,
		-0.840567, 0.157018, -0.518451,
		-0.274558, -0.948522, 0.157874,
		35.860714, 38.137470, 41.044777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347233, 38.790810, 41.014774>,  <36.052906, 38.801437, 40.934265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347233, 38.790810, 41.014774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503189, 38.476944, 41.207561>,  <35.596764, 38.288624, 41.323235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503189, 38.476944, 41.207561>,  <35.347233, 38.790810, 41.014774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503189, 38.476944, 41.207561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412504, 0.319116, 0.853232,
		-0.823302, -0.531480, -0.199256,
		0.389890, -0.784661, 0.481967,
		35.620155, 38.241547, 41.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781307, 38.468536, 41.474987>,  <35.347233, 38.790810, 41.014774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781307, 38.468536, 41.474987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111122, 38.301277, 41.627460>,  <35.309010, 38.200924, 41.718945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111122, 38.301277, 41.627460>,  <34.781307, 38.468536, 41.474987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111122, 38.301277, 41.627460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314903, 0.220581, 0.923136,
		-0.470087, -0.881192, 0.050200,
		0.824532, -0.418146, 0.381182,
		35.358482, 38.175835, 41.741814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574554, 38.014431, 41.953754>,  <34.781307, 38.468536, 41.474987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574554, 38.014431, 41.953754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943687, 38.136097, 42.048294>,  <35.165169, 38.209099, 42.105019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943687, 38.136097, 42.048294>,  <34.574554, 38.014431, 41.953754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943687, 38.136097, 42.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330849, 0.311629, 0.890745,
		0.197280, -0.900206, 0.388214,
		0.922832, 0.304166, 0.236354,
		35.220535, 38.227348, 42.119202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318623, 37.262119, 41.896408>,  <34.574554, 38.014431, 41.953754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318623, 37.262119, 41.896408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980705, 37.048378, 41.907654>,  <33.777954, 36.920135, 41.914402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980705, 37.048378, 41.907654>,  <34.318623, 37.262119, 41.896408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980705, 37.048378, 41.907654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321873, 0.465501, -0.824443,
		0.427454, -0.705536, -0.565246,
		-0.844797, -0.534349, 0.028113,
		33.727268, 36.888073, 41.916088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343349, 36.983059, 41.299625>,  <34.318623, 37.262119, 41.896408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343349, 36.983059, 41.299625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958870, 36.960754, 41.407688>,  <33.728184, 36.947372, 41.472527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958870, 36.960754, 41.407688>,  <34.343349, 36.983059, 41.299625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958870, 36.960754, 41.407688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274770, 0.106877, -0.955552,
		0.024410, -0.992707, -0.118052,
		-0.961200, -0.055762, 0.270158,
		33.670509, 36.944023, 41.488735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067757, 36.664879, 40.774872>,  <34.343349, 36.983059, 41.299625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067757, 36.664879, 40.774872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733891, 36.814369, 40.936695>,  <33.533573, 36.904064, 41.033791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733891, 36.814369, 40.936695>,  <34.067757, 36.664879, 40.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733891, 36.814369, 40.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463332, -0.079337, -0.882626,
		-0.297767, -0.924138, 0.239380,
		-0.834660, 0.373730, 0.404559,
		33.483494, 36.926487, 41.058064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578243, 36.166882, 40.702923>,  <34.067757, 36.664879, 40.774872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578243, 36.166882, 40.702923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398983, 36.524174, 40.717373>,  <33.291428, 36.738548, 40.726044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398983, 36.524174, 40.717373>,  <33.578243, 36.166882, 40.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398983, 36.524174, 40.717373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495454, -0.214535, -0.841724,
		-0.744104, -0.395114, 0.538698,
		-0.448146, 0.893230, 0.036124,
		33.264538, 36.792141, 40.728210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907017, 36.022919, 40.439091>,  <33.578243, 36.166882, 40.702923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907017, 36.022919, 40.439091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927814, 36.422260, 40.429417>,  <32.940292, 36.661865, 40.423615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927814, 36.422260, 40.429417>,  <32.907017, 36.022919, 40.439091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927814, 36.422260, 40.429417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543071, 0.007949, -0.839649,
		-0.838075, 0.056793, 0.542590,
		0.051999, 0.998354, -0.024181,
		32.943413, 36.721767, 40.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250465, 36.217247, 40.399803>,  <32.907017, 36.022919, 40.439091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250465, 36.217247, 40.399803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465542, 36.528755, 40.270561>,  <32.594589, 36.715660, 40.193016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465542, 36.528755, 40.270561>,  <32.250465, 36.217247, 40.399803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465542, 36.528755, 40.270561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614020, 0.099065, -0.783049,
		-0.577811, 0.619432, 0.531450,
		0.537694, 0.778775, -0.323102,
		32.626850, 36.762386, 40.173630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720385, 36.711842, 40.205250>,  <32.250465, 36.217247, 40.399803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720385, 36.711842, 40.205250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054455, 36.829975, 40.019665>,  <32.254898, 36.900856, 39.908314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054455, 36.829975, 40.019665>,  <31.720385, 36.711842, 40.205250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054455, 36.829975, 40.019665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507601, 0.089189, -0.856964,
		-0.211712, 0.951221, 0.224402,
		0.835176, 0.295336, -0.463958,
		32.305008, 36.918575, 39.880478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507168, 37.258434, 39.695267>,  <31.720385, 36.711842, 40.205250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507168, 37.258434, 39.695267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861227, 37.109756, 39.583302>,  <32.073662, 37.020550, 39.516121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861227, 37.109756, 39.583302>,  <31.507168, 37.258434, 39.695267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861227, 37.109756, 39.583302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340692, -0.107973, -0.933955,
		0.316922, 0.922055, -0.222205,
		0.885150, -0.371694, -0.279918,
		32.126774, 36.998249, 39.499325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715944, 37.609676, 39.027534>,  <31.507168, 37.258434, 39.695267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715944, 37.609676, 39.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925428, 37.269066, 39.037567>,  <32.051117, 37.064701, 39.043587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925428, 37.269066, 39.037567>,  <31.715944, 37.609676, 39.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925428, 37.269066, 39.037567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377849, -0.258572, -0.889028,
		0.763517, 0.456116, -0.457165,
		0.523710, -0.851527, 0.025082,
		32.082542, 37.013607, 39.045094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948776, 37.645687, 38.418213>,  <31.715944, 37.609676, 39.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948776, 37.645687, 38.418213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997295, 37.265587, 38.532970>,  <32.026405, 37.037525, 38.601826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997295, 37.265587, 38.532970>,  <31.948776, 37.645687, 38.418213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997295, 37.265587, 38.532970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256273, -0.309208, -0.915814,
		0.958963, 0.037565, -0.281031,
		0.121299, -0.950252, 0.286892,
		32.033684, 36.980511, 38.619038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163002, 37.301636, 37.834435>,  <31.948776, 37.645687, 38.418213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163002, 37.301636, 37.834435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023994, 37.005520, 38.064632>,  <31.940590, 36.827850, 38.202751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023994, 37.005520, 38.064632>,  <32.163002, 37.301636, 37.834435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023994, 37.005520, 38.064632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326236, -0.479944, -0.814385,
		0.879090, -0.470764, -0.074719,
		-0.347522, -0.740293, 0.575494,
		31.919737, 36.783432, 38.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368080, 36.686836, 37.569984>,  <32.163002, 37.301636, 37.834435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368080, 36.686836, 37.569984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063423, 36.558495, 37.795181>,  <31.880629, 36.481491, 37.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063423, 36.558495, 37.795181>,  <32.368080, 36.686836, 37.569984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063423, 36.558495, 37.795181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344558, -0.535286, -0.771200,
		0.548801, -0.781360, 0.297143,
		-0.761642, -0.320852, 0.562989,
		31.834930, 36.462238, 37.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317204, 35.965378, 37.432228>,  <32.368080, 36.686836, 37.569984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317204, 35.965378, 37.432228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955898, 36.055542, 37.578270>,  <31.739115, 36.109642, 37.665894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955898, 36.055542, 37.578270>,  <32.317204, 35.965378, 37.432228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955898, 36.055542, 37.578270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422776, -0.322230, -0.847012,
		-0.073277, -0.919434, 0.386357,
		-0.903267, 0.225409, 0.365102,
		31.684917, 36.123165, 37.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831188, 35.431427, 37.285416>,  <32.317204, 35.965378, 37.432228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831188, 35.431427, 37.285416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585007, 35.736561, 37.364712>,  <31.437298, 35.919643, 37.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585007, 35.736561, 37.364712>,  <31.831188, 35.431427, 37.285416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585007, 35.736561, 37.364712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590221, -0.279376, -0.757356,
		-0.522357, -0.583119, 0.622186,
		-0.615453, 0.762837, 0.198236,
		31.400372, 35.965412, 37.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094957, 35.223293, 37.522793>,  <31.831188, 35.431427, 37.285416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094957, 35.223293, 37.522793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090965, 35.596268, 37.378311>,  <31.088570, 35.820053, 37.291622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090965, 35.596268, 37.378311>,  <31.094957, 35.223293, 37.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090965, 35.596268, 37.378311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709329, -0.261210, -0.654692,
		-0.704807, 0.249681, 0.664008,
		-0.009981, 0.932432, -0.361208,
		31.087971, 35.875996, 37.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858265, 34.642773, 37.072308>,  <31.094957, 35.223293, 37.522793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858265, 34.642773, 37.072308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224577, 34.488682, 37.026798>,  <31.444365, 34.396225, 36.999493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224577, 34.488682, 37.026798>,  <30.858265, 34.642773, 37.072308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224577, 34.488682, 37.026798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168465, -0.625482, 0.761834,
		-0.364646, -0.678506, -0.637702,
		0.915780, -0.385230, -0.113775,
		31.499311, 34.373112, 36.992664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821096, 33.942612, 37.026867>,  <30.858265, 34.642773, 37.072308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821096, 33.942612, 37.026867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192747, 34.024258, 37.150192>,  <31.415737, 34.073246, 37.224190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192747, 34.024258, 37.150192>,  <30.821096, 33.942612, 37.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192747, 34.024258, 37.150192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094671, -0.674714, 0.731982,
		0.357435, -0.709293, -0.607571,
		0.929127, 0.204117, 0.308316,
		31.471485, 34.085491, 37.242687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032738, 33.319614, 37.237221>,  <30.821096, 33.942612, 37.026867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032738, 33.319614, 37.237221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276937, 33.566982, 37.435150>,  <31.423458, 33.715401, 37.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276937, 33.566982, 37.435150>,  <31.032738, 33.319614, 37.237221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276937, 33.566982, 37.435150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058504, -0.587844, 0.806856,
		0.789851, -0.521536, -0.322700,
		0.610501, 0.618417, 0.494821,
		31.460089, 33.752506, 37.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497009, 32.911781, 37.592110>,  <31.032738, 33.319614, 37.237221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497009, 32.911781, 37.592110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498056, 33.267273, 37.775478>,  <31.498684, 33.480568, 37.885498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498056, 33.267273, 37.775478>,  <31.497009, 32.911781, 37.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498056, 33.267273, 37.775478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095313, -0.456553, 0.884576,
		0.995444, 0.041379, -0.085903,
		0.002617, 0.888733, 0.458417,
		31.498842, 33.533894, 37.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117458, 32.970734, 38.026264>,  <31.497009, 32.911781, 37.592110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117458, 32.970734, 38.026264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865906, 33.250557, 38.161987>,  <31.714973, 33.418449, 38.243420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865906, 33.250557, 38.161987>,  <32.117458, 32.970734, 38.026264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865906, 33.250557, 38.161987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137721, -0.329273, 0.934137,
		0.765204, 0.634193, 0.110731,
		-0.628884, 0.699556, 0.339303,
		31.677240, 33.460423, 38.263779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370537, 33.047150, 38.658138>,  <32.117458, 32.970734, 38.026264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370537, 33.047150, 38.658138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028851, 33.254429, 38.675049>,  <31.823839, 33.378796, 38.685196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028851, 33.254429, 38.675049>,  <32.370537, 33.047150, 38.658138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028851, 33.254429, 38.675049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042821, -0.010910, 0.999023,
		0.518150, 0.855193, -0.012870,
		-0.854217, 0.518195, 0.042273,
		31.772585, 33.409885, 38.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490486, 33.584827, 39.125252>,  <32.370537, 33.047150, 38.658138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490486, 33.584827, 39.125252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092339, 33.546738, 39.130383>,  <31.853449, 33.523884, 39.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092339, 33.546738, 39.130383>,  <32.490486, 33.584827, 39.125252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092339, 33.546738, 39.130383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003063, 0.164863, 0.986312,
		-0.096035, 0.981709, -0.164392,
		-0.995373, -0.095224, 0.012826,
		31.793726, 33.518169, 39.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230755, 34.177734, 39.384766>,  <32.490486, 33.584827, 39.125252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230755, 34.177734, 39.384766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950455, 33.898006, 39.441193>,  <31.782276, 33.730167, 39.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950455, 33.898006, 39.441193>,  <32.230755, 34.177734, 39.384766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950455, 33.898006, 39.441193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017369, 0.180959, 0.983337,
		-0.713198, 0.691521, -0.114660,
		-0.700747, -0.699323, 0.141070,
		31.740231, 33.688210, 39.483513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859509, 34.440144, 39.902939>,  <32.230755, 34.177734, 39.384766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859509, 34.440144, 39.902939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705027, 34.071274, 39.894527>,  <31.612337, 33.849953, 39.889481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705027, 34.071274, 39.894527>,  <31.859509, 34.440144, 39.902939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705027, 34.071274, 39.894527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068411, 0.005900, 0.997640,
		-0.919873, 0.386731, -0.065365,
		-0.386204, -0.922174, -0.021029,
		31.589165, 33.794621, 39.888218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224823, 34.420307, 40.447533>,  <31.859509, 34.440144, 39.902939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224823, 34.420307, 40.447533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352707, 34.043236, 40.409275>,  <31.429438, 33.816994, 40.386322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352707, 34.043236, 40.409275>,  <31.224823, 34.420307, 40.447533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352707, 34.043236, 40.409275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059178, -0.080877, 0.994966,
		-0.945666, -0.323759, 0.029928,
		0.319709, -0.942676, -0.095642,
		31.448620, 33.760433, 40.380581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837000, 34.094910, 40.926689>,  <31.224823, 34.420307, 40.447533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837000, 34.094910, 40.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141552, 33.842541, 40.867046>,  <31.324284, 33.691120, 40.831261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141552, 33.842541, 40.867046>,  <30.837000, 34.094910, 40.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141552, 33.842541, 40.867046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030209, -0.195213, 0.980296,
		-0.647600, -0.750883, -0.129572,
		0.761381, -0.630925, -0.149103,
		31.369967, 33.653263, 40.822315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619337, 33.544788, 41.369125>,  <30.837000, 34.094910, 40.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619337, 33.544788, 41.369125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009348, 33.498116, 41.293537>,  <31.243355, 33.470112, 41.248184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009348, 33.498116, 41.293537>,  <30.619337, 33.544788, 41.369125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009348, 33.498116, 41.293537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173478, -0.131138, 0.976068,
		-0.138695, -0.984471, -0.107616,
		0.975023, -0.116707, -0.188972,
		31.301855, 33.463112, 41.236847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801748, 32.924339, 41.672203>,  <30.619337, 33.544788, 41.369125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801748, 32.924339, 41.672203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175394, 33.064682, 41.645885>,  <31.399582, 33.148888, 41.630093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175394, 33.064682, 41.645885>,  <30.801748, 32.924339, 41.672203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175394, 33.064682, 41.645885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158356, -0.242084, 0.957246,
		0.319929, -0.904596, -0.281694,
		0.934114, 0.350859, -0.065798,
		31.455627, 33.169941, 41.626144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299660, 32.391392, 41.918518>,  <30.801748, 32.924339, 41.672203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299660, 32.391392, 41.918518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509420, 32.730652, 41.948570>,  <31.635277, 32.934208, 41.966602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509420, 32.730652, 41.948570>,  <31.299660, 32.391392, 41.918518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509420, 32.730652, 41.948570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274032, -0.251654, 0.928211,
		0.806169, -0.466168, -0.364388,
		0.524402, 0.848149, 0.075131,
		31.666740, 32.985096, 41.971111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001873, 32.305077, 42.233334>,  <31.299660, 32.391392, 41.918518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001873, 32.305077, 42.233334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995335, 32.703625, 42.266727>,  <31.991411, 32.942757, 42.286762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995335, 32.703625, 42.266727>,  <32.001873, 32.305077, 42.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995335, 32.703625, 42.266727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309751, -0.074340, 0.947907,
		0.950677, 0.041354, -0.307413,
		-0.016347, 0.996375, 0.083483,
		31.990431, 33.002537, 42.291771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707001, 32.456291, 42.397568>,  <32.001873, 32.305077, 42.233334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707001, 32.456291, 42.397568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484016, 32.761364, 42.528748>,  <32.350224, 32.944408, 42.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484016, 32.761364, 42.528748>,  <32.707001, 32.456291, 42.397568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484016, 32.761364, 42.528748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361583, -0.132538, 0.922871,
		0.747322, 0.633049, -0.201887,
		-0.557465, 0.762681, 0.327949,
		32.316776, 32.990170, 42.627132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156429, 32.803398, 42.768913>,  <32.707001, 32.456291, 42.397568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156429, 32.803398, 42.768913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795727, 32.920036, 42.896538>,  <32.579304, 32.990021, 42.973114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795727, 32.920036, 42.896538>,  <33.156429, 32.803398, 42.768913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795727, 32.920036, 42.896538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272826, -0.188548, 0.943406,
		0.335251, 0.937775, 0.090471,
		-0.901761, 0.291595, 0.319060,
		32.525200, 33.007515, 42.992256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284920, 33.157234, 43.399334>,  <33.156429, 32.803398, 42.768913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284920, 33.157234, 43.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899303, 33.053265, 43.421478>,  <32.667934, 32.990883, 43.434765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899303, 33.053265, 43.421478>,  <33.284920, 33.157234, 43.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899303, 33.053265, 43.421478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130900, -0.283151, 0.950100,
		-0.231279, 0.923182, 0.306994,
		-0.964041, -0.259924, 0.055358,
		32.610092, 32.975288, 43.438084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047897, 33.583096, 43.879620>,  <33.284920, 33.157234, 43.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047897, 33.583096, 43.879620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794579, 33.273746, 43.868069>,  <32.642586, 33.088139, 43.861137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794579, 33.273746, 43.868069>,  <33.047897, 33.583096, 43.879620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794579, 33.273746, 43.868069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049579, -0.077785, 0.995737,
		-0.772317, 0.629167, 0.087604,
		-0.633299, -0.773368, -0.028881,
		32.604588, 33.041737, 43.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600094, 33.657078, 44.447857>,  <33.047897, 33.583096, 43.879620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600094, 33.657078, 44.447857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557991, 33.270100, 44.355797>,  <32.532730, 33.037910, 44.300560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557991, 33.270100, 44.355797>,  <32.600094, 33.657078, 44.447857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557991, 33.270100, 44.355797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081561, -0.239050, 0.967576,
		-0.991094, 0.083075, 0.104069,
		-0.105259, -0.967447, -0.230146,
		32.526413, 32.979866, 44.286755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075680, 33.333752, 45.022785>,  <32.600094, 33.657078, 44.447857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075680, 33.333752, 45.022785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294964, 33.051399, 44.843369>,  <32.426537, 32.881989, 44.735718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294964, 33.051399, 44.843369>,  <32.075680, 33.333752, 45.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294964, 33.051399, 44.843369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160243, -0.437727, 0.884713,
		-0.820843, -0.556888, -0.126855,
		0.548213, -0.705884, -0.448543,
		32.459427, 32.839634, 44.708805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725098, 32.726097, 45.255478>,  <32.075680, 33.333752, 45.022785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725098, 32.726097, 45.255478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091682, 32.630440, 45.127159>,  <32.311634, 32.573044, 45.050167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091682, 32.630440, 45.127159>,  <31.725098, 32.726097, 45.255478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091682, 32.630440, 45.127159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258536, -0.257986, 0.930915,
		-0.305384, -0.936084, -0.174607,
		0.916461, -0.239144, -0.320796,
		32.366619, 32.558697, 45.030922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853165, 32.112381, 45.527653>,  <31.725098, 32.726097, 45.255478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853165, 32.112381, 45.527653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228237, 32.220833, 45.440708>,  <32.453281, 32.285904, 45.388542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228237, 32.220833, 45.440708>,  <31.853165, 32.112381, 45.527653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228237, 32.220833, 45.440708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303565, -0.334668, 0.892101,
		0.169134, -0.902488, -0.396118,
		0.937679, 0.271132, -0.217360,
		32.509541, 32.302174, 45.375500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340057, 31.529852, 45.737694>,  <31.853165, 32.112381, 45.527653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340057, 31.529852, 45.737694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564030, 31.860714, 45.718567>,  <32.698414, 32.059231, 45.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564030, 31.860714, 45.718567>,  <32.340057, 31.529852, 45.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564030, 31.860714, 45.718567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458177, -0.261041, 0.849665,
		0.690323, -0.497666, -0.525150,
		0.559935, 0.827155, -0.047817,
		32.732010, 32.108860, 45.704224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995956, 31.363607, 45.927612>,  <32.340057, 31.529852, 45.737694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995956, 31.363607, 45.927612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990120, 31.760118, 45.980007>,  <32.986618, 31.998024, 46.011444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990120, 31.760118, 45.980007>,  <32.995956, 31.363607, 45.927612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990120, 31.760118, 45.980007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630465, -0.092557, 0.770679,
		0.776080, 0.093831, -0.623614,
		-0.014594, 0.991276, 0.130990,
		32.985741, 32.057503, 46.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602139, 31.468189, 46.098686>,  <32.995956, 31.363607, 45.927612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602139, 31.468189, 46.098686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393719, 31.780224, 46.237232>,  <33.268665, 31.967445, 46.320358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393719, 31.780224, 46.237232>,  <33.602139, 31.468189, 46.098686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393719, 31.780224, 46.237232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589689, 0.035630, 0.806844,
		0.617069, 0.624654, -0.478574,
		-0.521050, 0.780088, 0.346365,
		33.237404, 32.014252, 46.341141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075798, 31.921654, 46.481422>,  <33.602139, 31.468189, 46.098686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075798, 31.921654, 46.481422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710934, 32.022537, 46.610634>,  <33.492016, 32.083069, 46.688160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710934, 32.022537, 46.610634>,  <34.075798, 31.921654, 46.481422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710934, 32.022537, 46.610634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349145, 0.065497, 0.934777,
		0.214604, 0.965453, -0.147803,
		-0.912164, 0.252211, 0.323028,
		33.437286, 32.098202, 46.707542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657124, 32.375061, 46.657215>,  <34.075798, 31.921654, 46.481422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657124, 32.375061, 46.657215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053940, 32.402077, 46.699718>,  <35.292030, 32.418285, 46.725220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053940, 32.402077, 46.699718>,  <34.657124, 32.375061, 46.657215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053940, 32.402077, 46.699718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116271, -0.167674, -0.978962,
		-0.048306, 0.983526, -0.174193,
		0.992042, 0.067543, 0.106256,
		35.351551, 32.422340, 46.731594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873119, 32.860882, 46.180199>,  <34.657124, 32.375061, 46.657215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873119, 32.860882, 46.180199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159592, 32.595726, 46.267517>,  <35.331474, 32.436630, 46.319908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159592, 32.595726, 46.267517>,  <34.873119, 32.860882, 46.180199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159592, 32.595726, 46.267517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096455, -0.215765, -0.971670,
		0.691213, 0.716951, -0.090588,
		0.716185, -0.662893, 0.218293,
		35.374447, 32.396858, 46.333004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376701, 32.952126, 45.703308>,  <34.873119, 32.860882, 46.180199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376701, 32.952126, 45.703308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490009, 32.595291, 45.844124>,  <35.557995, 32.381191, 45.928616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490009, 32.595291, 45.844124>,  <35.376701, 32.952126, 45.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490009, 32.595291, 45.844124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153611, -0.320133, -0.934836,
		0.946657, 0.318893, 0.046349,
		0.283274, -0.892089, 0.352042,
		35.574993, 32.327663, 45.949738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023994, 32.689693, 45.347534>,  <35.376701, 32.952126, 45.703308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023994, 32.689693, 45.347534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 32.362583, 45.496460>,  <35.743103, 32.166317, 45.585815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 32.362583, 45.496460>,  <36.023994, 32.689693, 45.347534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848438, 32.362583, 45.496460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177871, -0.485229, -0.856104,
		0.880757, -0.309516, 0.358422,
		-0.438895, -0.817773, 0.372315,
		35.716770, 32.117252, 45.608154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404510, 31.990105, 44.965031>,  <36.023994, 32.689693, 45.347534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404510, 31.990105, 44.965031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053562, 31.875652, 45.119099>,  <35.842995, 31.806980, 45.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053562, 31.875652, 45.119099>,  <36.404510, 31.990105, 44.965031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053562, 31.875652, 45.119099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244710, -0.423665, -0.872138,
		0.412730, -0.859440, 0.301691,
		-0.877366, -0.286131, 0.385172,
		35.790352, 31.789814, 45.234650>
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
