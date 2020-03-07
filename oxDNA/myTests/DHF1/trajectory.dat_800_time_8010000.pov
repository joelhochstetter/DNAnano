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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.980958, 1.269797, 5.238919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254581, 0.982922, 5.292139>,  <2.418756, 0.810796, 5.324071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254581, 0.982922, 5.292139>,  <1.980958, 1.269797, 5.238919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.254581, 0.982922, 5.292139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534510, 0.368738, -0.760481,
		0.496348, 0.591331, 0.635584,
		0.684060, -0.717189, 0.133050,
		2.459799, 0.767765, 5.332054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.702018, 1.497213, 5.539331>,  <1.980958, 1.269797, 5.238919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.702018, 1.497213, 5.539331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703341, 1.196735, 5.275303>,  <2.704134, 1.016448, 5.116886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703341, 1.196735, 5.275303>,  <2.702018, 1.497213, 5.539331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.703341, 1.196735, 5.275303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455380, 0.588793, -0.667796,
		0.890291, -0.298376, 0.344025,
		0.003305, -0.751195, -0.660072,
		2.704332, 0.971377, 5.077281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.393456, 1.306697, 5.325717>,  <2.702018, 1.497213, 5.539331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.393456, 1.306697, 5.325717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.126917, 1.261528, 5.030901>,  <2.966993, 1.234427, 4.854012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.126917, 1.261528, 5.030901>,  <3.393456, 1.306697, 5.325717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.126917, 1.261528, 5.030901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380072, 0.798975, -0.466030,
		0.641501, -0.590667, -0.489478,
		-0.666349, -0.112922, -0.737040,
		2.927012, 1.227651, 4.809789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.678785, 1.445298, 4.580424>,  <3.393456, 1.306697, 5.325717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.678785, 1.445298, 4.580424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294941, 1.556084, 4.560661>,  <3.064635, 1.622555, 4.548803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.294941, 1.556084, 4.560661>,  <3.678785, 1.445298, 4.580424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.294941, 1.556084, 4.560661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281312, 0.946903, -0.155689,
		0.003664, -0.163299, -0.986570,
		-0.959609, 0.276963, -0.049408,
		3.007058, 1.639173, 4.545839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.625314, 1.845897, 4.028337>,  <3.678785, 1.445298, 4.580424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.625314, 1.845897, 4.028337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.333687, 1.937244, 4.286425>,  <3.158710, 1.992053, 4.441277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.333687, 1.937244, 4.286425>,  <3.625314, 1.845897, 4.028337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.333687, 1.937244, 4.286425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165809, 0.973545, -0.157220,
		-0.664053, -0.007641, -0.747646,
		-0.729068, 0.228369, 0.645218,
		3.114966, 2.005755, 4.479990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283045, 2.435958, 3.625207>,  <3.625314, 1.845897, 4.028337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283045, 2.435958, 3.625207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179432, 2.451550, 4.011240>,  <3.117264, 2.460904, 4.242860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179432, 2.451550, 4.011240>,  <3.283045, 2.435958, 3.625207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.179432, 2.451550, 4.011240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129096, 0.991617, -0.005400,
		-0.957202, 0.123189, -0.261893,
		-0.259033, 0.038979, 0.965082,
		3.101722, 2.463243, 4.300765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.793962, 3.013938, 3.687696>,  <3.283045, 2.435958, 3.625207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.793962, 3.013938, 3.687696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.943192, 2.956814, 4.054394>,  <3.032729, 2.922539, 4.274413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.943192, 2.956814, 4.054394>,  <2.793962, 3.013938, 3.687696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.943192, 2.956814, 4.054394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200140, 0.977207, 0.070781,
		-0.905958, 0.157070, 0.393152,
		0.373074, -0.142810, 0.916745,
		3.055114, 2.913971, 4.329417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.417089, 3.530341, 4.133013>,  <2.793962, 3.013938, 3.687696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.417089, 3.530341, 4.133013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.768969, 3.427349, 4.292929>,  <2.980097, 3.365554, 4.388878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.768969, 3.427349, 4.292929>,  <2.417089, 3.530341, 4.133013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.768969, 3.427349, 4.292929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306381, 0.949861, -0.062415,
		-0.363674, 0.177394, 0.914479,
		0.879700, -0.257480, 0.399790,
		3.032879, 3.350105, 4.412866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.736726, 4.468215, 4.087094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866871, 4.354927, 4.447966>,  <3.944958, 4.286954, 4.664488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866871, 4.354927, 4.447966>,  <3.736726, 4.468215, 4.087094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.866871, 4.354927, 4.447966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473127, -0.874833, -0.104008,
		0.818713, -0.393005, -0.418637,
		0.325362, -0.283221, 0.902178,
		3.964479, 4.269961, 4.718619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.094944, 3.776464, 4.086303>,  <3.736726, 4.468215, 4.087094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.094944, 3.776464, 4.086303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.922779, 3.841896, 4.441378>,  <3.819480, 3.881155, 4.654422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.922779, 3.841896, 4.441378>,  <4.094944, 3.776464, 4.086303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.922779, 3.841896, 4.441378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415445, -0.908985, -0.033932,
		0.801343, -0.383389, 0.459197,
		-0.430412, 0.163580, 0.887686,
		3.793655, 3.890970, 4.707684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222676, 3.226928, 4.564052>,  <4.094944, 3.776464, 4.086303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222676, 3.226928, 4.564052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.875961, 3.394730, 4.671902>,  <3.667933, 3.495410, 4.736612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.875961, 3.394730, 4.671902>,  <4.222676, 3.226928, 4.564052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875961, 3.394730, 4.671902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406293, -0.907581, 0.105937,
		0.289148, -0.017722, 0.957120,
		-0.866787, 0.419503, 0.269625,
		3.615925, 3.520581, 4.752789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038422, 2.939708, 5.199615>,  <4.222676, 3.226928, 4.564052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038422, 2.939708, 5.199615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738052, 3.060715, 4.964806>,  <3.557831, 3.133319, 4.823920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738052, 3.060715, 4.964806>,  <4.038422, 2.939708, 5.199615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738052, 3.060715, 4.964806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381410, -0.924334, 0.011556,
		-0.539110, 0.232574, 0.809487,
		-0.750924, 0.302516, -0.587023,
		3.512775, 3.151470, 4.788699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.473880, 2.800400, 5.556713>,  <4.038422, 2.939708, 5.199615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.473880, 2.800400, 5.556713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342896, 2.823547, 5.179477>,  <3.264305, 2.837436, 4.953135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342896, 2.823547, 5.179477>,  <3.473880, 2.800400, 5.556713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.342896, 2.823547, 5.179477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326487, -0.943573, 0.055465,
		-0.886665, 0.326070, 0.327877,
		-0.327461, 0.057868, -0.943091,
		3.244657, 2.840908, 4.896549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792256, 2.545978, 5.580930>,  <3.473880, 2.800400, 5.556713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792256, 2.545978, 5.580930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886497, 2.534889, 5.192348>,  <2.943042, 2.528236, 4.959199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886497, 2.534889, 5.192348>,  <2.792256, 2.545978, 5.580930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886497, 2.534889, 5.192348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445594, -0.891414, -0.082630,
		-0.863676, 0.452342, -0.222374,
		0.235604, -0.027723, -0.971454,
		2.957179, 2.526572, 4.900912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130950, 2.390000, 5.243948>,  <2.792256, 2.545978, 5.580930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130950, 2.390000, 5.243948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431992, 2.261925, 5.013794>,  <2.612616, 2.185080, 4.875701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431992, 2.261925, 5.013794>,  <2.130950, 2.390000, 5.243948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431992, 2.261925, 5.013794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390113, -0.920765, 0.002116,
		-0.530471, 0.222872, -0.817880,
		0.752604, -0.320188, -0.575384,
		2.657773, 2.165868, 4.841178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.804237, 2.113559, 4.614070>,  <2.130950, 2.390000, 5.243948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.804237, 2.113559, 4.614070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.157280, 1.952644, 4.711368>,  <2.369106, 1.856096, 4.769746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.157280, 1.952644, 4.711368>,  <1.804237, 2.113559, 4.614070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.157280, 1.952644, 4.711368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431890, -0.898229, 0.081584,
		0.185669, -0.177062, -0.966528,
		0.882609, -0.402286, 0.243244,
		2.422063, 1.831958, 4.784341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
