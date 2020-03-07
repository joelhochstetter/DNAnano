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
	<5.762599, 3.464373, -1.276412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.831470, 3.727020, -0.982689>,  <5.872793, 3.884609, -0.806455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.831470, 3.727020, -0.982689>,  <5.762599, 3.464373, -1.276412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.831470, 3.727020, -0.982689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852381, -0.274339, 0.445179,
		0.493762, -0.702559, 0.512455,
		0.172178, 0.656619, 0.734306,
		5.883124, 3.924006, -0.762397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.761415, 3.124757, -0.555846>,  <5.762599, 3.464373, -1.276412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.761415, 3.124757, -0.555846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.660736, 3.511726, -0.544952>,  <5.600328, 3.743908, -0.538416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.660736, 3.511726, -0.544952>,  <5.761415, 3.124757, -0.555846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.660736, 3.511726, -0.544952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835460, -0.231396, 0.498461,
		0.488524, 0.102709, 0.866484,
		-0.251698, 0.967423, 0.027234,
		5.585227, 3.801953, -0.536782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.254728, 2.985950, -0.135834>,  <5.761415, 3.124757, -0.555846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.254728, 2.985950, -0.135834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.253914, 3.383385, -0.181061>,  <5.253425, 3.621845, -0.208197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.253914, 3.383385, -0.181061>,  <5.254728, 2.985950, -0.135834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.253914, 3.383385, -0.181061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748371, 0.073482, 0.659197,
		0.663277, 0.085958, 0.743421,
		-0.002036, 0.993586, -0.113067,
		5.253303, 3.681460, -0.214981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.210134, 3.381908, 0.525599>,  <5.254728, 2.985950, -0.135834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.210134, 3.381908, 0.525599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.026611, 3.641174, 0.282494>,  <4.916498, 3.796734, 0.136630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.026611, 3.641174, 0.282494>,  <5.210134, 3.381908, 0.525599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.026611, 3.641174, 0.282494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835025, -0.080745, 0.544254,
		0.303694, 0.757206, 0.578281,
		-0.458806, 0.648166, -0.607765,
		4.888969, 3.835624, 0.100164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.933418, 3.964503, 0.917468>,  <5.210134, 3.381908, 0.525599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.933418, 3.964503, 0.917468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.718433, 3.873367, 0.592697>,  <4.589442, 3.818686, 0.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.718433, 3.873367, 0.592697>,  <4.933418, 3.964503, 0.917468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.718433, 3.873367, 0.592697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824503, -0.060110, 0.562656,
		-0.177000, 0.971841, -0.155547,
		-0.537462, -0.227839, -0.811926,
		4.557195, 3.805016, 0.349119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.388943, 4.435584, 0.912287>,  <4.933418, 3.964503, 0.917468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.388943, 4.435584, 0.912287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.282852, 4.126221, 0.681984>,  <4.219198, 3.940603, 0.543802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.282852, 4.126221, 0.681984>,  <4.388943, 4.435584, 0.912287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.282852, 4.126221, 0.681984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887428, -0.037671, 0.459404,
		-0.376996, 0.632789, -0.676352,
		-0.265227, -0.773407, -0.575757,
		4.203284, 3.894199, 0.509257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.782998, 4.526913, 0.697684>,  <4.388943, 4.435584, 0.912287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.782998, 4.526913, 0.697684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.811531, 4.127937, 0.695610>,  <3.828651, 3.888552, 0.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.811531, 4.127937, 0.695610>,  <3.782998, 4.526913, 0.697684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.811531, 4.127937, 0.695610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833654, -0.062473, 0.548742,
		-0.547661, -0.034821, -0.835976,
		0.071334, -0.997439, -0.005186,
		3.832931, 3.828706, 0.694054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.163068, 4.246695, 0.509500>,  <3.782998, 4.526913, 0.697684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.163068, 4.246695, 0.509500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.334141, 3.940941, 0.702499>,  <3.436784, 3.757488, 0.818299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.334141, 3.940941, 0.702499>,  <3.163068, 4.246695, 0.509500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.334141, 3.940941, 0.702499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881665, -0.235011, 0.409191,
		-0.199385, -0.600408, -0.774439,
		0.427683, -0.764382, 0.482501,
		3.462445, 3.711625, 0.847249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.820507, 3.953798, 1.912628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.796409, 3.558640, 1.855453>,  <2.781950, 3.321544, 1.821149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.796409, 3.558640, 1.855453>,  <2.820507, 3.953798, 1.912628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.796409, 3.558640, 1.855453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741895, 0.051485, -0.668536,
		0.667804, -0.146319, 0.729814,
		-0.060245, -0.987897, -0.142935,
		2.778335, 3.262270, 1.812573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.477675, 3.848387, 1.924486>,  <2.820507, 3.953798, 1.912628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.477675, 3.848387, 1.924486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.282260, 3.545792, 1.750565>,  <3.165011, 3.364234, 1.646212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.282260, 3.545792, 1.750565>,  <3.477675, 3.848387, 1.924486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.282260, 3.545792, 1.750565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757328, -0.120146, -0.641888,
		0.433342, -0.642875, 0.631607,
		-0.488538, -0.756490, -0.434803,
		3.135698, 3.318845, 1.620124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.833303, 3.276510, 1.937742>,  <3.477675, 3.848387, 1.924486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.833303, 3.276510, 1.937742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601796, 3.283035, 1.611610>,  <3.462892, 3.286950, 1.415931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601796, 3.283035, 1.611610>,  <3.833303, 3.276510, 1.937742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.601796, 3.283035, 1.611610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813494, -0.058387, -0.578635,
		-0.057004, -0.998162, 0.020579,
		-0.578773, 0.016244, -0.815327,
		3.428166, 3.287929, 1.367012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.057495, 2.748571, 1.469106>,  <3.833303, 3.276510, 1.937742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.057495, 2.748571, 1.469106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877266, 3.040604, 1.263596>,  <3.769129, 3.215823, 1.140289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.877266, 3.040604, 1.263596>,  <4.057495, 2.748571, 1.469106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.877266, 3.040604, 1.263596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727242, -0.033624, -0.685557,
		-0.517788, -0.682532, -0.515796,
		-0.450572, 0.730082, -0.513776,
		3.742095, 3.259628, 1.109463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.072422, 2.530220, 0.732387>,  <4.057495, 2.748571, 1.469106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.072422, 2.530220, 0.732387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.000087, 2.923569, 0.725716>,  <3.956686, 3.159578, 0.721713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.000087, 2.923569, 0.725716>,  <4.072422, 2.530220, 0.732387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.000087, 2.923569, 0.725716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692404, 0.115251, -0.712246,
		-0.698480, -0.140349, -0.701732,
		-0.180838, 0.983371, -0.016677,
		3.945835, 3.218580, 0.720712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.961097, 2.722168, -0.015784>,  <4.072422, 2.530220, 0.732387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.961097, 2.722168, -0.015784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.017436, 3.079422, 0.155083>,  <4.051239, 3.293774, 0.257603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.017436, 3.079422, 0.155083>,  <3.961097, 2.722168, -0.015784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.017436, 3.079422, 0.155083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623810, 0.254984, -0.738813,
		-0.768780, 0.370531, -0.521232,
		0.140848, 0.893135, 0.427168,
		4.059690, 3.347363, 0.283233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.899683, 3.238409, -0.625285>,  <3.961097, 2.722168, -0.015784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.899683, 3.238409, -0.625285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.118855, 3.393372, -0.328720>,  <4.250357, 3.486349, -0.150781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.118855, 3.393372, -0.328720>,  <3.899683, 3.238409, -0.625285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118855, 3.393372, -0.328720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629803, 0.392280, -0.670421,
		-0.550566, 0.834286, -0.029048,
		0.547928, 0.387406, 0.741412,
		4.283233, 3.509593, -0.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.028753, 3.956604, -0.673049>,  <3.899683, 3.238409, -0.625285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.028753, 3.956604, -0.673049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.334933, 3.776001, -0.489647>,  <4.518641, 3.667639, -0.379606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.334933, 3.776001, -0.489647>,  <4.028753, 3.956604, -0.673049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.334933, 3.776001, -0.489647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615526, 0.305953, -0.726306,
		0.187652, 0.838173, 0.512106,
		0.765451, -0.451507, 0.458505,
		4.564569, 3.640549, -0.352096>
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
