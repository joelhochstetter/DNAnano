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
	<1.011150, 1.449634, 0.297045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980644, 1.096390, 0.482216>,  <0.962341, 0.884443, 0.593318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.980644, 1.096390, 0.482216>,  <1.011150, 1.449634, 0.297045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980644, 1.096390, 0.482216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950317, -0.204906, -0.234332,
		0.301797, 0.422056, 0.854861,
		-0.076264, -0.883110, 0.462927,
		0.957765, 0.831457, 0.621094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.595923, 1.308675, 0.779278>,  <1.011150, 1.449634, 0.297045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.595923, 1.308675, 0.779278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449963, 0.960960, 0.645897>,  <1.362386, 0.752332, 0.565868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.449963, 0.960960, 0.645897>,  <1.595923, 1.308675, 0.779278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.449963, 0.960960, 0.645897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931009, -0.343890, -0.122317,
		-0.008343, -0.355081, 0.934799,
		-0.364901, -0.869286, -0.333452,
		1.340492, 0.700175, 0.545861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.964542, 0.787608, 1.073070>,  <1.595923, 1.308675, 0.779278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.964542, 0.787608, 1.073070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.822552, 0.568901, 0.769745>,  <1.737358, 0.437677, 0.587750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.822552, 0.568901, 0.769745>,  <1.964542, 0.787608, 1.073070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.822552, 0.568901, 0.769745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808248, -0.587121, 0.044982,
		-0.469816, -0.596937, 0.650338,
		-0.354976, -0.546768, -0.758312,
		1.716059, 0.404871, 0.542251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.058662, -0.031323, 1.210065>,  <1.964542, 0.787608, 1.073070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.058662, -0.031323, 1.210065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.075802, 0.056755, 0.820259>,  <2.086086, 0.109602, 0.586376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.075802, 0.056755, 0.820259>,  <2.058662, -0.031323, 1.210065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.075802, 0.056755, 0.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881098, -0.468157, -0.067041,
		-0.470988, -0.855770, -0.214074,
		0.042849, 0.220196, -0.974514,
		2.088656, 0.122814, 0.527905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.327293, -0.672536, 0.838626>,  <2.058662, -0.031323, 1.210065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.327293, -0.672536, 0.838626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363079, -0.374550, 0.574196>,  <2.384551, -0.195758, 0.415538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.363079, -0.374550, 0.574196>,  <2.327293, -0.672536, 0.838626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363079, -0.374550, 0.574196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855974, -0.396859, -0.331378,
		-0.509219, -0.536217, -0.673177,
		0.089466, 0.744966, -0.661076,
		2.389919, -0.151060, 0.375873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.361609, -0.957130, 0.112606>,  <2.327293, -0.672536, 0.838626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.361609, -0.957130, 0.112606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560913, -0.610893, 0.132553>,  <2.680496, -0.403151, 0.144521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560913, -0.610893, 0.132553>,  <2.361609, -0.957130, 0.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560913, -0.610893, 0.132553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770978, -0.416018, -0.482205,
		-0.396647, 0.278710, -0.874638,
		0.498260, 0.865592, 0.049867,
		2.710391, -0.351216, 0.147513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.555840, -0.751150, -0.527146>,  <2.361609, -0.957130, 0.112606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.555840, -0.751150, -0.527146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826141, -0.545990, -0.315376>,  <2.988322, -0.422894, -0.188314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826141, -0.545990, -0.315376>,  <2.555840, -0.751150, -0.527146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826141, -0.545990, -0.315376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731770, -0.380346, -0.565552,
		-0.088706, 0.769592, -0.632345,
		0.675754, 0.512899, 0.529425,
		3.028867, -0.392120, -0.156549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.011918, -0.551440, -1.010883>,  <2.555840, -0.751150, -0.527146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.011918, -0.551440, -1.010883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216446, -0.490005, -0.672661>,  <3.339163, -0.453145, -0.469728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216446, -0.490005, -0.672661>,  <3.011918, -0.551440, -1.010883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.216446, -0.490005, -0.672661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816361, -0.394237, -0.422057,
		0.268527, 0.906084, -0.326962,
		0.511320, 0.153586, 0.845555,
		3.369842, -0.443930, -0.418994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.088417, 3.623179, -0.553630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.357504, 3.809052, -0.323318>,  <4.518956, 3.920575, -0.185131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.357504, 3.809052, -0.323318>,  <4.088417, 3.623179, -0.553630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.357504, 3.809052, -0.323318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671119, 0.710864, 0.210409,
		-0.311528, -0.527963, 0.790067,
		0.672718, 0.464681, 0.575780,
		4.559319, 3.948456, -0.150585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.879945, 3.607481, 0.183779>,  <4.088417, 3.623179, -0.553630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.879945, 3.607481, 0.183779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062487, 3.934692, 0.043739>,  <4.172012, 4.131019, -0.040285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.062487, 3.934692, 0.043739>,  <3.879945, 3.607481, 0.183779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.062487, 3.934692, 0.043739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786390, 0.554886, 0.271462,
		0.416329, 0.151432, 0.896515,
		0.456355, 0.818028, -0.350100,
		4.199393, 4.180101, -0.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.893171, 4.170626, 0.665913>,  <3.879945, 3.607481, 0.183779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.893171, 4.170626, 0.665913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918781, 4.308701, 0.291374>,  <3.934147, 4.391546, 0.066651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918781, 4.308701, 0.291374>,  <3.893171, 4.170626, 0.665913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.918781, 4.308701, 0.291374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764062, 0.620525, 0.176514,
		0.641958, 0.704126, 0.303474,
		0.064025, 0.345187, -0.936348,
		3.937989, 4.412257, 0.010470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.056835, 4.870078, 0.703195>,  <3.893171, 4.170626, 0.665913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.056835, 4.870078, 0.703195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.835136, 4.781326, 0.382301>,  <3.702117, 4.728076, 0.189765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.835136, 4.781326, 0.382301>,  <4.056835, 4.870078, 0.703195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.835136, 4.781326, 0.382301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779020, 0.477732, 0.406079,
		0.293154, 0.850025, -0.437629,
		-0.554246, -0.221878, -0.802235,
		3.668863, 4.714763, 0.141631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681886, 5.417848, 0.583006>,  <4.056835, 4.870078, 0.703195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681886, 5.417848, 0.583006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.492708, 5.146759, 0.357788>,  <3.379202, 4.984106, 0.222658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.492708, 5.146759, 0.357788>,  <3.681886, 5.417848, 0.583006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.492708, 5.146759, 0.357788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853685, 0.510611, 0.102466,
		0.218052, 0.529123, -0.820050,
		-0.472944, -0.677721, -0.563044,
		3.350825, 4.943443, 0.188875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.262764, 5.816090, 0.105452>,  <3.681886, 5.417848, 0.583006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.262764, 5.816090, 0.105452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.071611, 5.464783, 0.112099>,  <2.956920, 5.253999, 0.116087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.071611, 5.464783, 0.112099>,  <3.262764, 5.816090, 0.105452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.071611, 5.464783, 0.112099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863767, 0.466382, -0.190773,
		0.159799, -0.105521, -0.981494,
		-0.477881, -0.878267, 0.016618,
		2.928247, 5.201303, 0.117084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.706887, 5.858842, -0.402763>,  <3.262764, 5.816090, 0.105452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.706887, 5.858842, -0.402763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600258, 5.566360, -0.151596>,  <2.536280, 5.390872, -0.000896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.600258, 5.566360, -0.151596>,  <2.706887, 5.858842, -0.402763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.600258, 5.566360, -0.151596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898062, 0.424949, 0.113590,
		-0.349890, -0.533630, -0.769946,
		-0.266573, -0.731203, 0.627918,
		2.520286, 5.347000, 0.036779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.028069, 5.730671, -0.600752>,  <2.706887, 5.858842, -0.402763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.028069, 5.730671, -0.600752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.092747, 5.579987, -0.235909>,  <2.131553, 5.489576, -0.017002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.092747, 5.579987, -0.235909>,  <2.028069, 5.730671, -0.600752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.092747, 5.579987, -0.235909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905109, 0.311689, 0.289183,
		-0.393233, -0.872318, -0.290566,
		0.161693, -0.376711, 0.912110,
		2.141255, 5.466973, 0.037724>
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
