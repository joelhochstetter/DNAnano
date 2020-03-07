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
	<3.790403, 3.620454, 1.121177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691515, 3.846146, 1.436272>,  <3.632182, 3.981560, 1.625328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691515, 3.846146, 1.436272>,  <3.790403, 3.620454, 1.121177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.691515, 3.846146, 1.436272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211324, -0.824798, 0.524453,
		0.945635, -0.036812, 0.323142,
		-0.247220, 0.564228, 0.787737,
		3.617349, 4.015414, 1.672593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.167406, 3.386676, 1.584750>,  <3.790403, 3.620454, 1.121177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.167406, 3.386676, 1.584750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834296, 3.525137, 1.757568>,  <3.634430, 3.608214, 1.861259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834296, 3.525137, 1.757568>,  <4.167406, 3.386676, 1.584750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.834296, 3.525137, 1.757568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008595, -0.772235, 0.635279,
		0.553545, 0.532758, 0.640122,
		-0.832775, 0.346154, 0.432046,
		3.584464, 3.628983, 1.887182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.268866, 3.257839, 2.374805>,  <4.167406, 3.386676, 1.584750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.268866, 3.257839, 2.374805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.876775, 3.291866, 2.303345>,  <3.641520, 3.312283, 2.260468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.876775, 3.291866, 2.303345>,  <4.268866, 3.257839, 2.374805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.876775, 3.291866, 2.303345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184492, -0.719280, 0.669775,
		-0.071524, 0.689492, 0.720753,
		-0.980228, 0.085068, -0.178652,
		3.582706, 3.317387, 2.249749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891911, 3.255363, 2.950154>,  <4.268866, 3.257839, 2.374805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891911, 3.255363, 2.950154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595686, 3.147598, 2.703907>,  <3.417951, 3.082939, 2.556159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595686, 3.147598, 2.703907>,  <3.891911, 3.255363, 2.950154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.595686, 3.147598, 2.703907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222201, -0.766407, 0.602699,
		-0.634188, 0.583127, 0.507709,
		-0.740562, -0.269412, -0.615618,
		3.373518, 3.066775, 2.519222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.404512, 2.961629, 3.365626>,  <3.891911, 3.255363, 2.950154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.404512, 2.961629, 3.365626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247191, 2.837873, 3.019310>,  <3.152799, 2.763620, 2.811520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.247191, 2.837873, 3.019310>,  <3.404512, 2.961629, 3.365626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247191, 2.837873, 3.019310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398846, -0.791046, 0.463863,
		-0.828394, 0.527755, 0.187721,
		-0.393301, -0.309389, -0.865790,
		3.129201, 2.745057, 2.759573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652997, 2.967260, 3.432103>,  <3.404512, 2.961629, 3.365626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652997, 2.967260, 3.432103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733900, 2.715721, 3.131798>,  <2.782442, 2.564798, 2.951615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.733900, 2.715721, 3.131798>,  <2.652997, 2.967260, 3.432103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733900, 2.715721, 3.131798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620427, -0.675421, 0.398594,
		-0.757735, 0.385174, -0.526762,
		0.202258, -0.628846, -0.750763,
		2.794578, 2.527067, 2.906569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.041743, 2.796187, 3.192948>,  <2.652997, 2.967260, 3.432103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.041743, 2.796187, 3.192948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289264, 2.500786, 3.085842>,  <2.437776, 2.323545, 3.021579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.289264, 2.500786, 3.085842>,  <2.041743, 2.796187, 3.192948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.289264, 2.500786, 3.085842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652445, -0.673010, 0.348386,
		-0.437493, -0.040880, -0.898292,
		0.618802, -0.738503, -0.267765,
		2.474904, 2.279235, 3.005512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.572926, 2.376963, 2.878599>,  <2.041743, 2.796187, 3.192948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.572926, 2.376963, 2.878599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890387, 2.157616, 2.983982>,  <2.080863, 2.026007, 3.047212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.890387, 2.157616, 2.983982>,  <1.572926, 2.376963, 2.878599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.890387, 2.157616, 2.983982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591744, -0.796376, 0.124995,
		0.141269, -0.255103, -0.956538,
		0.793651, -0.548368, 0.263459,
		2.128482, 1.993105, 3.063020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.611254, 1.076693, 3.961862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.801659, 0.913937, 3.650002>,  <1.915901, 0.816283, 3.462885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.801659, 0.913937, 3.650002>,  <1.611254, 1.076693, 3.961862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.801659, 0.913937, 3.650002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564269, 0.821295, -0.084113,
		0.674547, -0.399894, 0.620541,
		0.476011, -0.406890, -0.779650,
		1.944462, 0.791870, 3.416106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.151500, 1.303035, 4.099558>,  <1.611254, 1.076693, 3.961862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.151500, 1.303035, 4.099558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.166618, 1.205006, 3.712051>,  <2.175689, 1.146188, 3.479547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.166618, 1.205006, 3.712051>,  <2.151500, 1.303035, 4.099558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166618, 1.205006, 3.712051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648093, 0.743932, -0.162911,
		0.760623, -0.621694, 0.186949,
		0.037796, -0.245074, -0.968767,
		2.177957, 1.131483, 3.421421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.788278, 1.365761, 3.882568>,  <2.151500, 1.303035, 4.099558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.788278, 1.365761, 3.882568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575863, 1.383739, 3.544106>,  <2.448414, 1.394526, 3.341028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.575863, 1.383739, 3.544106>,  <2.788278, 1.365761, 3.882568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.575863, 1.383739, 3.544106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633529, 0.684206, -0.361252,
		0.562708, -0.727902, -0.391814,
		-0.531038, 0.044946, -0.846155,
		2.416552, 1.397223, 3.290259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.164122, 1.249108, 3.196934>,  <2.788278, 1.365761, 3.882568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.164122, 1.249108, 3.196934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.845047, 1.482689, 3.136673>,  <2.653602, 1.622837, 3.100517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.845047, 1.482689, 3.136673>,  <3.164122, 1.249108, 3.196934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.845047, 1.482689, 3.136673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533434, 0.566674, -0.627957,
		-0.281326, -0.581276, -0.763528,
		-0.797687, 0.583952, -0.150652,
		2.605741, 1.657874, 3.091477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.124399, 1.305793, 2.468574>,  <3.164122, 1.249108, 3.196934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.124399, 1.305793, 2.468574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897686, 1.602451, 2.612083>,  <2.761658, 1.780446, 2.698189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897686, 1.602451, 2.612083>,  <3.124399, 1.305793, 2.468574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.897686, 1.602451, 2.612083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463766, 0.647136, -0.605092,
		-0.680939, -0.176569, -0.710735,
		-0.566783, 0.741646, 0.358774,
		2.727651, 1.824945, 2.719716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.107162, 1.796164, 1.908700>,  <3.124399, 1.305793, 2.468574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.107162, 1.796164, 1.908700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.997494, 2.014603, 2.225334>,  <2.931693, 2.145666, 2.415315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.997494, 2.014603, 2.225334>,  <3.107162, 1.796164, 1.908700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.997494, 2.014603, 2.225334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385552, 0.816498, -0.429745,
		-0.881011, 0.187374, -0.434409,
		-0.274171, 0.546098, 0.791586,
		2.915242, 2.178432, 2.462810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.568430, 2.279512, 1.698477>,  <3.107162, 1.796164, 1.908700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.568430, 2.279512, 1.698477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758656, 2.436405, 2.013435>,  <2.872791, 2.530541, 2.202410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.758656, 2.436405, 2.013435>,  <2.568430, 2.279512, 1.698477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.758656, 2.436405, 2.013435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228213, 0.809437, -0.541046,
		-0.849564, 0.436996, 0.295426,
		0.475563, 0.392233, 0.787396,
		2.901325, 2.554075, 2.249654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338444, 2.927085, 1.780282>,  <2.568430, 2.279512, 1.698477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338444, 2.927085, 1.780282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678837, 2.953491, 1.988693>,  <2.883073, 2.969335, 2.113740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678837, 2.953491, 1.988693>,  <2.338444, 2.927085, 1.780282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.678837, 2.953491, 1.988693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260799, 0.807991, -0.528332,
		-0.455865, 0.585485, 0.670369,
		0.850983, 0.066016, 0.521028,
		2.934132, 2.973296, 2.145002>
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
