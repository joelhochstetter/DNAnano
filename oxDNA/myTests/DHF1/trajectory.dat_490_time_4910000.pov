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
	<2.431604, 0.554210, 0.500429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.567585, 0.451591, 0.138519>,  <2.649173, 0.390021, -0.078627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.567585, 0.451591, 0.138519>,  <2.431604, 0.554210, 0.500429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.567585, 0.451591, 0.138519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922926, 0.275832, 0.268560,
		0.180668, -0.926337, 0.330542,
		0.339951, -0.256545, -0.904775,
		2.669570, 0.374628, -0.132913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.089365, 0.086370, 0.533663>,  <2.431604, 0.554210, 0.500429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.089365, 0.086370, 0.533663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.048714, 0.352341, 0.237679>,  <3.024323, 0.511923, 0.060088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.048714, 0.352341, 0.237679>,  <3.089365, 0.086370, 0.533663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.048714, 0.352341, 0.237679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938317, 0.311182, 0.150755,
		0.330504, -0.678997, -0.655538,
		-0.101629, 0.664928, -0.739961,
		3.018225, 0.551819, 0.015690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.689125, 0.144099, 0.086666>,  <3.089365, 0.086370, 0.533663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.689125, 0.144099, 0.086666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.512001, 0.494980, 0.012436>,  <3.405727, 0.705508, -0.032102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.512001, 0.494980, 0.012436>,  <3.689125, 0.144099, 0.086666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.512001, 0.494980, 0.012436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893268, 0.449473, -0.006831,
		0.077419, -0.168793, -0.982606,
		-0.442808, 0.877202, -0.185575,
		3.379159, 0.758140, -0.043237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.929597, 0.454107, -0.518142>,  <3.689125, 0.144099, 0.086666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.929597, 0.454107, -0.518142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.809231, 0.707180, -0.232719>,  <3.737012, 0.859024, -0.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.809231, 0.707180, -0.232719>,  <3.929597, 0.454107, -0.518142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.809231, 0.707180, -0.232719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942078, 0.313428, 0.119380,
		-0.148119, 0.708150, -0.690351,
		-0.300914, 0.632682, 0.713557,
		3.718957, 0.896985, -0.018652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.255214, 1.098053, -0.600937>,  <3.929597, 0.454107, -0.518142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.255214, 1.098053, -0.600937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134722, 1.115547, -0.219917>,  <4.062427, 1.126044, 0.008694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134722, 1.115547, -0.219917>,  <4.255214, 1.098053, -0.600937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134722, 1.115547, -0.219917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928605, 0.240459, 0.282617,
		-0.216688, 0.969673, -0.113047,
		-0.301230, 0.043736, 0.952548,
		4.044353, 1.128668, 0.065847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.572412, 1.730448, -0.361001>,  <4.255214, 1.098053, -0.600937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.572412, 1.730448, -0.361001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499874, 1.521229, -0.027885>,  <4.456352, 1.395697, 0.171984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499874, 1.521229, -0.027885>,  <4.572412, 1.730448, -0.361001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499874, 1.521229, -0.027885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926119, 0.194009, 0.323518,
		-0.330784, 0.829929, 0.449222,
		-0.181344, -0.523047, 0.832788,
		4.445471, 1.364315, 0.221951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606227, 2.183750, 0.157180>,  <4.572412, 1.730448, -0.361001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606227, 2.183750, 0.157180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.684559, 1.825523, 0.316986>,  <4.731558, 1.610587, 0.412870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.684559, 1.825523, 0.316986>,  <4.606227, 2.183750, 0.157180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.684559, 1.825523, 0.316986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867262, 0.348322, 0.355708,
		-0.457720, 0.276826, 0.844902,
		0.195829, -0.895566, 0.399514,
		4.743308, 1.556853, 0.436840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.816061, 2.308543, 0.912661>,  <4.606227, 2.183750, 0.157180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.816061, 2.308543, 0.912661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.958619, 1.954540, 0.792831>,  <5.044154, 1.742139, 0.720934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.958619, 1.954540, 0.792831>,  <4.816061, 2.308543, 0.912661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.958619, 1.954540, 0.792831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873351, 0.201607, 0.443410,
		-0.332025, -0.419663, 0.844774,
		0.356395, -0.885007, -0.299574,
		5.065537, 1.689038, 0.702959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.753586, 2.059702, 0.776433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.002346, 1.747589, 0.802963>,  <6.151602, 1.560321, 0.818881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.002346, 1.747589, 0.802963>,  <5.753586, 2.059702, 0.776433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.002346, 1.747589, 0.802963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773194, -0.625257, -0.105948,
		0.124140, 0.014607, -0.992157,
		0.621901, -0.780282, 0.066325,
		6.188916, 1.513505, 0.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.793533, 1.586826, 0.246263>,  <5.753586, 2.059702, 0.776433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.793533, 1.586826, 0.246263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.848598, 1.368008, 0.576546>,  <5.881638, 1.236717, 0.774715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.848598, 1.368008, 0.576546>,  <5.793533, 1.586826, 0.246263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.848598, 1.368008, 0.576546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923470, -0.372304, -0.092694,
		0.358121, -0.749754, -0.556433,
		0.137665, -0.547045, 0.825706,
		5.889898, 1.203894, 0.824257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.703515, 0.922079, 0.053452>,  <5.793533, 1.586826, 0.246263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.703515, 0.922079, 0.053452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.622631, 1.061455, 0.419556>,  <5.574100, 1.145080, 0.639218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.622631, 1.061455, 0.419556>,  <5.703515, 0.922079, 0.053452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.622631, 1.061455, 0.419556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975176, -0.157752, -0.155391,
		0.090240, -0.923961, 0.371689,
		-0.202210, 0.348440, 0.915260,
		5.561968, 1.165987, 0.694134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.440112, 0.460796, 0.535265>,  <5.703515, 0.922079, 0.053452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.440112, 0.460796, 0.535265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.314594, 0.835506, 0.597214>,  <5.239284, 1.060333, 0.634383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.314594, 0.835506, 0.597214>,  <5.440112, 0.460796, 0.535265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.314594, 0.835506, 0.597214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949489, -0.309192, -0.053592,
		-0.002318, -0.163866, 0.986480,
		-0.313793, 0.936776, 0.154872,
		5.220456, 1.116539, 0.643675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.948021, 0.447383, 1.018295>,  <5.440112, 0.460796, 0.535265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.948021, 0.447383, 1.018295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872047, 0.791420, 0.828911>,  <4.826463, 0.997842, 0.715280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.872047, 0.791420, 0.828911>,  <4.948021, 0.447383, 1.018295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.872047, 0.791420, 0.828911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972702, -0.230335, -0.028218,
		-0.133325, 0.455177, 0.880363,
		-0.189935, 0.860093, -0.473461,
		4.815067, 1.049448, 0.686873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.337735, 0.633678, 1.249124>,  <4.948021, 0.447383, 1.018295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.337735, 0.633678, 1.249124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.356186, 0.863617, 0.922340>,  <4.367256, 1.001581, 0.726270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.356186, 0.863617, 0.922340>,  <4.337735, 0.633678, 1.249124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.356186, 0.863617, 0.922340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987940, -0.094756, -0.122455,
		-0.147805, 0.812755, 0.563545,
		0.046126, 0.574848, -0.816959,
		4.370024, 1.036072, 0.677253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.849554, 1.165489, 1.364022>,  <4.337735, 0.633678, 1.249124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.849554, 1.165489, 1.364022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.909481, 1.165680, 0.968536>,  <3.945437, 1.165794, 0.731245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.909481, 1.165680, 0.968536>,  <3.849554, 1.165489, 1.364022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909481, 1.165680, 0.968536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988563, 0.017508, -0.149785,
		0.017239, 0.999846, 0.003094,
		0.149817, 0.000476, -0.988714,
		3.954426, 1.165823, 0.671922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.469650, 1.751837, 1.029956>,  <3.849554, 1.165489, 1.364022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.469650, 1.751837, 1.029956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518494, 1.471432, 0.748909>,  <3.547800, 1.303189, 0.580281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518494, 1.471432, 0.748909>,  <3.469650, 1.751837, 1.029956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.518494, 1.471432, 0.748909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981492, 0.019931, -0.190461,
		0.147520, 0.712870, -0.685605,
		0.122109, -0.701013, -0.702616,
		3.555126, 1.261128, 0.538124>
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
