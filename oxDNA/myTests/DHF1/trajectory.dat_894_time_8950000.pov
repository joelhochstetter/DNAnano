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
	<1.243336, 1.421022, 2.175505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640190, 1.402668, 2.222084>,  <1.878303, 1.391656, 2.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.640190, 1.402668, 2.222084>,  <1.243336, 1.421022, 2.175505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.640190, 1.402668, 2.222084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010648, 0.957946, 0.286752,
		-0.124708, -0.283257, 0.950901,
		0.992136, -0.045885, 0.116447,
		1.937831, 1.388902, 2.257018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.491518, 1.494428, 2.854374>,  <1.243336, 1.421022, 2.175505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.491518, 1.494428, 2.854374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.773445, 1.616222, 2.598087>,  <1.942602, 1.689299, 2.444315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.773445, 1.616222, 2.598087>,  <1.491518, 1.494428, 2.854374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.773445, 1.616222, 2.598087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038115, 0.918148, 0.394400,
		0.708363, -0.253560, 0.658733,
		0.704818, 0.304486, -0.640718,
		1.984891, 1.707568, 2.405872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.076383, 1.975374, 3.116595>,  <1.491518, 1.494428, 2.854374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.076383, 1.975374, 3.116595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.004929, 2.074013, 2.735590>,  <1.962056, 2.133196, 2.506987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.004929, 2.074013, 2.735590>,  <2.076383, 1.975374, 3.116595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.004929, 2.074013, 2.735590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014400, 0.968635, 0.248071,
		0.983810, 0.030598, -0.176585,
		-0.178637, 0.246597, -0.952512,
		1.951337, 2.147992, 2.449836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.539635, 2.418336, 2.727955>,  <2.076383, 1.975374, 3.116595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.539635, 2.418336, 2.727955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180290, 2.479233, 2.563143>,  <1.964683, 2.515771, 2.464256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180290, 2.479233, 2.563143>,  <2.539635, 2.418336, 2.727955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.180290, 2.479233, 2.563143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002351, 0.939669, 0.342077,
		0.439250, 0.306340, -0.844520,
		-0.898362, 0.152243, -0.412030,
		1.910782, 2.524906, 2.439534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.531830, 3.043442, 2.449317>,  <2.539635, 2.418336, 2.727955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.531830, 3.043442, 2.449317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139755, 2.981621, 2.498873>,  <1.904511, 2.944528, 2.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.139755, 2.981621, 2.498873>,  <2.531830, 3.043442, 2.449317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.139755, 2.981621, 2.498873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108800, 0.942740, 0.315284,
		-0.165524, 0.295557, -0.940876,
		-0.980186, -0.154554, 0.123889,
		1.845699, 2.935255, 2.536040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.133885, 3.714121, 2.040408>,  <2.531830, 3.043442, 2.449317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.133885, 3.714121, 2.040408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.873878, 3.557983, 2.301210>,  <1.717875, 3.464301, 2.457692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.873878, 3.557983, 2.301210>,  <2.133885, 3.714121, 2.040408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.873878, 3.557983, 2.301210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249531, 0.920055, 0.302049,
		-0.717784, 0.033641, -0.695453,
		-0.650016, -0.390343, 0.652006,
		1.678874, 3.440881, 2.496812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.491279, 3.952731, 1.867440>,  <2.133885, 3.714121, 2.040408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.491279, 3.952731, 1.867440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.443382, 3.818317, 2.241123>,  <1.414644, 3.737669, 2.465333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.443382, 3.818317, 2.241123>,  <1.491279, 3.952731, 1.867440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.443382, 3.818317, 2.241123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282988, 0.913494, 0.292312,
		-0.951619, -0.229367, -0.204477,
		-0.119742, -0.336034, 0.934207,
		1.407460, 3.717507, 2.521385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.822867, 4.232350, 2.091587>,  <1.491279, 3.952731, 1.867440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.822867, 4.232350, 2.091587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.999153, 4.129501, 2.435600>,  <1.104925, 4.067792, 2.642009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.999153, 4.129501, 2.435600>,  <0.822867, 4.232350, 2.091587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.999153, 4.129501, 2.435600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371434, 0.819993, 0.435487,
		-0.817195, -0.511371, 0.265879,
		0.440715, -0.257121, 0.860035,
		1.131368, 4.052365, 2.693611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.796818, 5.596717, 2.779279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.563469, 5.456791, 3.072483>,  <1.423459, 5.372835, 3.248405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.563469, 5.456791, 3.072483>,  <1.796818, 5.596717, 2.779279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.563469, 5.456791, 3.072483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168275, -0.934970, -0.312274,
		0.794581, -0.058825, 0.604302,
		-0.583373, -0.349816, 0.733010,
		1.388457, 5.351846, 3.292386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012684, 4.951814, 2.916023>,  <1.796818, 5.596717, 2.779279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012684, 4.951814, 2.916023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.663055, 4.883076, 3.097778>,  <1.453278, 4.841833, 3.206832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.663055, 4.883076, 3.097778>,  <2.012684, 4.951814, 2.916023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.663055, 4.883076, 3.097778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052253, -0.963175, -0.263750,
		0.482980, -0.206793, 0.850862,
		-0.874070, -0.171847, 0.454389,
		1.400834, 4.831522, 3.234095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.024182, 4.485429, 3.553548>,  <2.012684, 4.951814, 2.916023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.024182, 4.485429, 3.553548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666878, 4.442142, 3.379021>,  <1.452495, 4.416170, 3.274305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666878, 4.442142, 3.379021>,  <2.024182, 4.485429, 3.553548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.666878, 4.442142, 3.379021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179683, -0.975638, -0.125879,
		-0.412065, -0.190841, 0.890944,
		-0.893262, -0.108217, -0.436317,
		1.398899, 4.409678, 3.248126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836098, 3.783244, 3.705217>,  <2.024182, 4.485429, 3.553548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836098, 3.783244, 3.705217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572777, 3.862305, 3.414680>,  <1.414784, 3.909741, 3.240359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.572777, 3.862305, 3.414680>,  <1.836098, 3.783244, 3.705217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.572777, 3.862305, 3.414680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046325, -0.952447, -0.301164,
		-0.751326, -0.231905, 0.617842,
		-0.658303, 0.197650, -0.726341,
		1.375286, 3.921600, 3.196778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.211249, 3.302593, 3.768740>,  <1.836098, 3.783244, 3.705217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.211249, 3.302593, 3.768740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.255539, 3.432098, 3.392885>,  <1.282113, 3.509802, 3.167372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.255539, 3.432098, 3.392885>,  <1.211249, 3.302593, 3.768740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.255539, 3.432098, 3.392885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035727, -0.946136, -0.321793,
		-0.993209, 0.002061, -0.116329,
		0.110726, 0.323763, -0.939637,
		1.288757, 3.529227, 3.110994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.816918, 2.909473, 3.355715>,  <1.211249, 3.302593, 3.768740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.816918, 2.909473, 3.355715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069534, 3.066200, 3.088093>,  <1.221104, 3.160237, 2.927519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069534, 3.066200, 3.088093>,  <0.816918, 2.909473, 3.355715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.069534, 3.066200, 3.088093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006897, -0.865721, -0.500480,
		-0.775313, 0.311459, -0.549439,
		0.631540, 0.391818, -0.669056,
		1.258996, 3.183746, 2.887376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.562781, 2.862381, 2.607985>,  <0.816918, 2.909473, 3.355715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.562781, 2.862381, 2.607985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.961990, 2.883022, 2.593647>,  <1.201516, 2.895407, 2.585044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.961990, 2.883022, 2.593647>,  <0.562781, 2.862381, 2.607985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.961990, 2.883022, 2.593647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025823, -0.856964, -0.514728,
		-0.057278, 0.512786, -0.856604,
		0.998024, 0.051602, -0.035844,
		1.261398, 2.898503, 2.582894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776408, 2.568386, 1.932827>,  <0.562781, 2.862381, 2.607985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776408, 2.568386, 1.932827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.126228, 2.534412, 2.123802>,  <1.336120, 2.514028, 2.238387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.126228, 2.534412, 2.123802>,  <0.776408, 2.568386, 1.932827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.126228, 2.534412, 2.123802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215881, -0.813413, -0.540144,
		0.434231, 0.575453, -0.693035,
		0.874551, -0.084935, 0.477438,
		1.388594, 2.508932, 2.267034>
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
